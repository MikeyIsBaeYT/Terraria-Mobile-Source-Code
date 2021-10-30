.class public Lcom/flurry/org/codehaus/jackson/map/ext/JodaDeserializers$DateMidnightDeserializer;
.super Lcom/flurry/org/codehaus/jackson/map/ext/JodaDeserializers$JodaDeserializer;
.source "JodaDeserializers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/org/codehaus/jackson/map/ext/JodaDeserializers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DateMidnightDeserializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/flurry/org/codehaus/jackson/map/ext/JodaDeserializers$JodaDeserializer",
        "<",
        "Lorg/joda/time/DateMidnight;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 197
    const-class v0, Lorg/joda/time/DateMidnight;

    invoke-direct {p0, v0}, Lcom/flurry/org/codehaus/jackson/map/ext/JodaDeserializers$JodaDeserializer;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic deserialize(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lcom/flurry/org/codehaus/jackson/JsonParser;
    .param p2, "x1"    # Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 194
    invoke-virtual {p0, p1, p2}, Lcom/flurry/org/codehaus/jackson/map/ext/JodaDeserializers$DateMidnightDeserializer;->deserialize(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;)Lorg/joda/time/DateMidnight;

    move-result-object v0

    return-object v0
.end method

.method public deserialize(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;)Lorg/joda/time/DateMidnight;
    .locals 8
    .param p1, "jp"    # Lcom/flurry/org/codehaus/jackson/JsonParser;
    .param p2, "ctxt"    # Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 204
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->isExpectedStartArrayToken()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 205
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->nextToken()Lcom/flurry/org/codehaus/jackson/JsonToken;

    .line 206
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getIntValue()I

    move-result v3

    .line 207
    .local v3, "year":I
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->nextToken()Lcom/flurry/org/codehaus/jackson/JsonToken;

    .line 208
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getIntValue()I

    move-result v2

    .line 209
    .local v2, "month":I
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->nextToken()Lcom/flurry/org/codehaus/jackson/JsonToken;

    .line 210
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getIntValue()I

    move-result v0

    .line 211
    .local v0, "day":I
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->nextToken()Lcom/flurry/org/codehaus/jackson/JsonToken;

    move-result-object v4

    sget-object v5, Lcom/flurry/org/codehaus/jackson/JsonToken;->END_ARRAY:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-eq v4, v5, :cond_0

    .line 212
    sget-object v4, Lcom/flurry/org/codehaus/jackson/JsonToken;->END_ARRAY:Lcom/flurry/org/codehaus/jackson/JsonToken;

    const-string v5, "after DateMidnight ints"

    invoke-virtual {p2, p1, v4, v5}, Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;->wrongTokenException(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/JsonToken;Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;

    move-result-object v4

    throw v4

    .line 214
    :cond_0
    new-instance v4, Lorg/joda/time/DateMidnight;

    invoke-direct {v4, v3, v2, v0}, Lorg/joda/time/DateMidnight;-><init>(III)V

    .line 224
    .end local v0    # "day":I
    .end local v2    # "month":I
    .end local v3    # "year":I
    :goto_0
    return-object v4

    .line 216
    :cond_1
    sget-object v4, Lcom/flurry/org/codehaus/jackson/map/ext/JodaDeserializers$1;->$SwitchMap$org$codehaus$jackson$JsonToken:[I

    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getCurrentToken()Lcom/flurry/org/codehaus/jackson/JsonToken;

    move-result-object v5

    invoke-virtual {v5}, Lcom/flurry/org/codehaus/jackson/JsonToken;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 226
    sget-object v4, Lcom/flurry/org/codehaus/jackson/JsonToken;->START_ARRAY:Lcom/flurry/org/codehaus/jackson/JsonToken;

    const-string v5, "expected JSON Array, Number or String"

    invoke-virtual {p2, p1, v4, v5}, Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;->wrongTokenException(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/JsonToken;Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;

    move-result-object v4

    throw v4

    .line 218
    :pswitch_0
    new-instance v4, Lorg/joda/time/DateMidnight;

    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getLongValue()J

    move-result-wide v6

    invoke-direct {v4, v6, v7}, Lorg/joda/time/DateMidnight;-><init>(J)V

    goto :goto_0

    .line 220
    :pswitch_1
    invoke-virtual {p0, p1}, Lcom/flurry/org/codehaus/jackson/map/ext/JodaDeserializers$DateMidnightDeserializer;->parseLocal(Lcom/flurry/org/codehaus/jackson/JsonParser;)Lorg/joda/time/DateTime;

    move-result-object v1

    .line 221
    .local v1, "local":Lorg/joda/time/DateTime;
    if-nez v1, :cond_2

    .line 222
    const/4 v4, 0x0

    goto :goto_0

    .line 224
    :cond_2
    invoke-virtual {v1}, Lorg/joda/time/DateTime;->toDateMidnight()Lorg/joda/time/DateMidnight;

    move-result-object v4

    goto :goto_0

    .line 216
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
