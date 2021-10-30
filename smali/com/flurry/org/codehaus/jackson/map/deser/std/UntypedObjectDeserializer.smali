.class public Lcom/flurry/org/codehaus/jackson/map/deser/std/UntypedObjectDeserializer;
.super Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer;
.source "UntypedObjectDeserializer.java"


# annotations
.annotation runtime Lcom/flurry/org/codehaus/jackson/map/annotate/JacksonStdImpl;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/org/codehaus/jackson/map/deser/std/UntypedObjectDeserializer$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final NO_OBJECTS:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lcom/flurry/org/codehaus/jackson/map/deser/std/UntypedObjectDeserializer;->NO_OBJECTS:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;
    .locals 2
    .param p1, "jp"    # Lcom/flurry/org/codehaus/jackson/JsonParser;
    .param p2, "ctxt"    # Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 45
    sget-object v0, Lcom/flurry/org/codehaus/jackson/map/deser/std/UntypedObjectDeserializer$1;->$SwitchMap$org$codehaus$jackson$JsonToken:[I

    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getCurrentToken()Lcom/flurry/org/codehaus/jackson/JsonToken;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/org/codehaus/jackson/JsonToken;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 89
    :pswitch_0
    const-class v0, Ljava/lang/Object;

    invoke-virtual {p2, v0}, Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;->mappingException(Ljava/lang/Class;)Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;

    move-result-object v0

    throw v0

    .line 47
    :pswitch_1
    invoke-virtual {p0, p1, p2}, Lcom/flurry/org/codehaus/jackson/map/deser/std/UntypedObjectDeserializer;->mapObject(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    .line 85
    :goto_0
    return-object v0

    .line 51
    :pswitch_2
    invoke-virtual {p0, p1, p2}, Lcom/flurry/org/codehaus/jackson/map/deser/std/UntypedObjectDeserializer;->mapArray(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 55
    :pswitch_3
    invoke-virtual {p0, p1, p2}, Lcom/flurry/org/codehaus/jackson/map/deser/std/UntypedObjectDeserializer;->mapObject(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 57
    :pswitch_4
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getEmbeddedObject()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 59
    :pswitch_5
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 65
    :pswitch_6
    sget-object v0, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;->USE_BIG_INTEGER_FOR_INTS:Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;

    invoke-virtual {p2, v0}, Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;->isEnabled(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getBigIntegerValue()Ljava/math/BigInteger;

    move-result-object v0

    goto :goto_0

    .line 68
    :cond_0
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getNumberValue()Ljava/lang/Number;

    move-result-object v0

    goto :goto_0

    .line 74
    :pswitch_7
    sget-object v0, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;->USE_BIG_DECIMAL_FOR_FLOATS:Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;

    invoke-virtual {p2, v0}, Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;->isEnabled(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 75
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getDecimalValue()Ljava/math/BigDecimal;

    move-result-object v0

    goto :goto_0

    .line 77
    :cond_1
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getDoubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0

    .line 80
    :pswitch_8
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    .line 82
    :pswitch_9
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    .line 85
    :pswitch_a
    const/4 v0, 0x0

    goto :goto_0

    .line 45
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method public deserializeWithType(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;Lcom/flurry/org/codehaus/jackson/map/TypeDeserializer;)Ljava/lang/Object;
    .locals 4
    .param p1, "jp"    # Lcom/flurry/org/codehaus/jackson/JsonParser;
    .param p2, "ctxt"    # Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;
    .param p3, "typeDeserializer"    # Lcom/flurry/org/codehaus/jackson/map/TypeDeserializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 97
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getCurrentToken()Lcom/flurry/org/codehaus/jackson/JsonToken;

    move-result-object v0

    .line 98
    .local v0, "t":Lcom/flurry/org/codehaus/jackson/JsonToken;
    sget-object v1, Lcom/flurry/org/codehaus/jackson/map/deser/std/UntypedObjectDeserializer$1;->$SwitchMap$org$codehaus$jackson$JsonToken:[I

    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/JsonToken;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 138
    :pswitch_0
    const-class v1, Ljava/lang/Object;

    invoke-virtual {p2, v1}, Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;->mappingException(Ljava/lang/Class;)Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;

    move-result-object v1

    throw v1

    .line 106
    :pswitch_1
    invoke-virtual {p3, p1, p2}, Lcom/flurry/org/codehaus/jackson/map/TypeDeserializer;->deserializeTypedFromAny(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v1

    .line 136
    :goto_0
    return-object v1

    .line 112
    :pswitch_2
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 116
    :pswitch_3
    sget-object v1, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;->USE_BIG_INTEGER_FOR_INTS:Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;

    invoke-virtual {p2, v1}, Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;->isEnabled(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 117
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getBigIntegerValue()Ljava/math/BigInteger;

    move-result-object v1

    goto :goto_0

    .line 119
    :cond_0
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getIntValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    .line 123
    :pswitch_4
    sget-object v1, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;->USE_BIG_DECIMAL_FOR_FLOATS:Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;

    invoke-virtual {p2, v1}, Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;->isEnabled(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 124
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getDecimalValue()Ljava/math/BigDecimal;

    move-result-object v1

    goto :goto_0

    .line 126
    :cond_1
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getDoubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    goto :goto_0

    .line 129
    :pswitch_5
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    .line 131
    :pswitch_6
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    .line 133
    :pswitch_7
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getEmbeddedObject()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 136
    :pswitch_8
    const/4 v1, 0x0

    goto :goto_0

    .line 98
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_7
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_8
    .end packed-switch
.end method

.method protected mapArray(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;
    .locals 9
    .param p1, "jp"    # Lcom/flurry/org/codehaus/jackson/JsonParser;
    .param p2, "ctxt"    # Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 153
    sget-object v7, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;->USE_JAVA_ARRAY_FOR_JSON_ARRAY:Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;

    invoke-virtual {p2, v7}, Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;->isEnabled(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 154
    invoke-virtual {p0, p1, p2}, Lcom/flurry/org/codehaus/jackson/map/deser/std/UntypedObjectDeserializer;->mapArrayToArray(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;)[Ljava/lang/Object;

    move-result-object v3

    .line 176
    :goto_0
    return-object v3

    .line 157
    :cond_0
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->nextToken()Lcom/flurry/org/codehaus/jackson/JsonToken;

    move-result-object v7

    sget-object v8, Lcom/flurry/org/codehaus/jackson/JsonToken;->END_ARRAY:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-ne v7, v8, :cond_1

    .line 158
    new-instance v3, Ljava/util/ArrayList;

    const/4 v7, 0x4

    invoke-direct {v3, v7}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_0

    .line 160
    :cond_1
    invoke-virtual {p2}, Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;->leaseObjectBuffer()Lcom/flurry/org/codehaus/jackson/map/util/ObjectBuffer;

    move-result-object v0

    .line 161
    .local v0, "buffer":Lcom/flurry/org/codehaus/jackson/map/util/ObjectBuffer;
    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/map/util/ObjectBuffer;->resetAndStart()[Ljava/lang/Object;

    move-result-object v6

    .line 162
    .local v6, "values":[Ljava/lang/Object;
    const/4 v1, 0x0

    .line 163
    .local v1, "ptr":I
    const/4 v4, 0x0

    .line 165
    .local v4, "totalSize":I
    :goto_1
    invoke-virtual {p0, p1, p2}, Lcom/flurry/org/codehaus/jackson/map/deser/std/UntypedObjectDeserializer;->deserialize(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v5

    .line 166
    .local v5, "value":Ljava/lang/Object;
    add-int/lit8 v4, v4, 0x1

    .line 167
    array-length v7, v6

    if-lt v1, v7, :cond_2

    .line 168
    invoke-virtual {v0, v6}, Lcom/flurry/org/codehaus/jackson/map/util/ObjectBuffer;->appendCompletedChunk([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    .line 169
    const/4 v1, 0x0

    .line 171
    :cond_2
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "ptr":I
    .local v2, "ptr":I
    aput-object v5, v6, v1

    .line 172
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->nextToken()Lcom/flurry/org/codehaus/jackson/JsonToken;

    move-result-object v7

    sget-object v8, Lcom/flurry/org/codehaus/jackson/JsonToken;->END_ARRAY:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-ne v7, v8, :cond_3

    .line 174
    new-instance v3, Ljava/util/ArrayList;

    shr-int/lit8 v7, v4, 0x3

    add-int/2addr v7, v4

    add-int/lit8 v7, v7, 0x1

    invoke-direct {v3, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 175
    .local v3, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    invoke-virtual {v0, v6, v2, v3}, Lcom/flurry/org/codehaus/jackson/map/util/ObjectBuffer;->completeAndClearBuffer([Ljava/lang/Object;ILjava/util/List;)V

    goto :goto_0

    .end local v3    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :cond_3
    move v1, v2

    .end local v2    # "ptr":I
    .restart local v1    # "ptr":I
    goto :goto_1
.end method

.method protected mapArrayToArray(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;)[Ljava/lang/Object;
    .locals 7
    .param p1, "jp"    # Lcom/flurry/org/codehaus/jackson/JsonParser;
    .param p2, "ctxt"    # Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 232
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->nextToken()Lcom/flurry/org/codehaus/jackson/JsonToken;

    move-result-object v5

    sget-object v6, Lcom/flurry/org/codehaus/jackson/JsonToken;->END_ARRAY:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-ne v5, v6, :cond_0

    .line 233
    sget-object v5, Lcom/flurry/org/codehaus/jackson/map/deser/std/UntypedObjectDeserializer;->NO_OBJECTS:[Ljava/lang/Object;

    .line 246
    :goto_0
    return-object v5

    .line 235
    :cond_0
    invoke-virtual {p2}, Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;->leaseObjectBuffer()Lcom/flurry/org/codehaus/jackson/map/util/ObjectBuffer;

    move-result-object v0

    .line 236
    .local v0, "buffer":Lcom/flurry/org/codehaus/jackson/map/util/ObjectBuffer;
    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/map/util/ObjectBuffer;->resetAndStart()[Ljava/lang/Object;

    move-result-object v4

    .line 237
    .local v4, "values":[Ljava/lang/Object;
    const/4 v1, 0x0

    .line 239
    .local v1, "ptr":I
    :goto_1
    invoke-virtual {p0, p1, p2}, Lcom/flurry/org/codehaus/jackson/map/deser/std/UntypedObjectDeserializer;->deserialize(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v3

    .line 240
    .local v3, "value":Ljava/lang/Object;
    array-length v5, v4

    if-lt v1, v5, :cond_1

    .line 241
    invoke-virtual {v0, v4}, Lcom/flurry/org/codehaus/jackson/map/util/ObjectBuffer;->appendCompletedChunk([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    .line 242
    const/4 v1, 0x0

    .line 244
    :cond_1
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "ptr":I
    .local v2, "ptr":I
    aput-object v3, v4, v1

    .line 245
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->nextToken()Lcom/flurry/org/codehaus/jackson/JsonToken;

    move-result-object v5

    sget-object v6, Lcom/flurry/org/codehaus/jackson/JsonToken;->END_ARRAY:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-ne v5, v6, :cond_2

    .line 246
    invoke-virtual {v0, v4, v2}, Lcom/flurry/org/codehaus/jackson/map/util/ObjectBuffer;->completeAndClearBuffer([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    goto :goto_0

    :cond_2
    move v1, v2

    .end local v2    # "ptr":I
    .restart local v1    # "ptr":I
    goto :goto_1
.end method

.method protected mapObject(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;
    .locals 10
    .param p1, "jp"    # Lcom/flurry/org/codehaus/jackson/JsonParser;
    .param p2, "ctxt"    # Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x4

    .line 185
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getCurrentToken()Lcom/flurry/org/codehaus/jackson/JsonToken;

    move-result-object v4

    .line 186
    .local v4, "t":Lcom/flurry/org/codehaus/jackson/JsonToken;
    sget-object v7, Lcom/flurry/org/codehaus/jackson/JsonToken;->START_OBJECT:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-ne v4, v7, :cond_0

    .line 187
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->nextToken()Lcom/flurry/org/codehaus/jackson/JsonToken;

    move-result-object v4

    .line 190
    :cond_0
    sget-object v7, Lcom/flurry/org/codehaus/jackson/JsonToken;->FIELD_NAME:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-eq v4, v7, :cond_1

    .line 192
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3, v9}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 220
    :goto_0
    return-object v3

    .line 194
    :cond_1
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v0

    .line 195
    .local v0, "field1":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->nextToken()Lcom/flurry/org/codehaus/jackson/JsonToken;

    .line 196
    invoke-virtual {p0, p1, p2}, Lcom/flurry/org/codehaus/jackson/map/deser/std/UntypedObjectDeserializer;->deserialize(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v5

    .line 197
    .local v5, "value1":Ljava/lang/Object;
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->nextToken()Lcom/flurry/org/codehaus/jackson/JsonToken;

    move-result-object v7

    sget-object v8, Lcom/flurry/org/codehaus/jackson/JsonToken;->FIELD_NAME:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-eq v7, v8, :cond_2

    .line 198
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3, v9}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 199
    .local v3, "result":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {v3, v0, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 202
    .end local v3    # "result":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_2
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v1

    .line 203
    .local v1, "field2":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->nextToken()Lcom/flurry/org/codehaus/jackson/JsonToken;

    .line 204
    invoke-virtual {p0, p1, p2}, Lcom/flurry/org/codehaus/jackson/map/deser/std/UntypedObjectDeserializer;->deserialize(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v6

    .line 205
    .local v6, "value2":Ljava/lang/Object;
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->nextToken()Lcom/flurry/org/codehaus/jackson/JsonToken;

    move-result-object v7

    sget-object v8, Lcom/flurry/org/codehaus/jackson/JsonToken;->FIELD_NAME:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-eq v7, v8, :cond_3

    .line 206
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3, v9}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 207
    .restart local v3    # "result":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {v3, v0, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    invoke-virtual {v3, v1, v6}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 212
    .end local v3    # "result":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_3
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    .line 213
    .restart local v3    # "result":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {v3, v0, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    invoke-virtual {v3, v1, v6}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    :cond_4
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v2

    .line 217
    .local v2, "fieldName":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->nextToken()Lcom/flurry/org/codehaus/jackson/JsonToken;

    .line 218
    invoke-virtual {p0, p1, p2}, Lcom/flurry/org/codehaus/jackson/map/deser/std/UntypedObjectDeserializer;->deserialize(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v3, v2, v7}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->nextToken()Lcom/flurry/org/codehaus/jackson/JsonToken;

    move-result-object v7

    sget-object v8, Lcom/flurry/org/codehaus/jackson/JsonToken;->END_OBJECT:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-ne v7, v8, :cond_4

    goto :goto_0
.end method
