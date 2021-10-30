.class public abstract Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer;
.super Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;
.source "StdDeserializer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer$1;,
        Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer$StackTraceElementDeserializer;,
        Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer$SqlDateDeserializer;,
        Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer$BigIntegerDeserializer;,
        Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer$BigDecimalDeserializer;,
        Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer$NumberDeserializer;,
        Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer$DoubleDeserializer;,
        Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer$FloatDeserializer;,
        Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer$LongDeserializer;,
        Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer$IntegerDeserializer;,
        Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer$CharacterDeserializer;,
        Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer$ShortDeserializer;,
        Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer$ByteDeserializer;,
        Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer$BooleanDeserializer;,
        Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer$PrimitiveOrWrapperDeserializer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer",
        "<TT;>;"
    }
.end annotation


# instance fields
.field protected final _valueClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/flurry/org/codehaus/jackson/type/JavaType;)V
    .locals 1
    .param p1, "valueType"    # Lcom/flurry/org/codehaus/jackson/type/JavaType;

    .prologue
    .line 39
    .local p0, "this":Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer;, "Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer<TT;>;"
    invoke-direct {p0}, Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;-><init>()V

    .line 40
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer;->_valueClass:Ljava/lang/Class;

    .line 41
    return-void

    .line 40
    :cond_0
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0
.end method

.method protected constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 35
    .local p0, "this":Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer;, "Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer<TT;>;"
    .local p1, "vc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer;->_valueClass:Ljava/lang/Class;

    .line 37
    return-void
.end method

.method protected static final parseDouble(Ljava/lang/String;)D
    .locals 2
    .param p0, "numStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 592
    const-string v0, "2.2250738585072012e-308"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 593
    const-wide/high16 v0, 0x10000000000000L

    .line 595
    :goto_0
    return-wide v0

    :cond_0
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    goto :goto_0
.end method


# virtual methods
.method protected final _parseBoolean(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Boolean;
    .locals 4
    .param p1, "jp"    # Lcom/flurry/org/codehaus/jackson/JsonParser;
    .param p2, "ctxt"    # Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 135
    .local p0, "this":Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer;, "Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer<TT;>;"
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getCurrentToken()Lcom/flurry/org/codehaus/jackson/JsonToken;

    move-result-object v0

    .line 136
    .local v0, "t":Lcom/flurry/org/codehaus/jackson/JsonToken;
    sget-object v2, Lcom/flurry/org/codehaus/jackson/JsonToken;->VALUE_TRUE:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-ne v0, v2, :cond_0

    .line 137
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 163
    :goto_0
    return-object v2

    .line 139
    :cond_0
    sget-object v2, Lcom/flurry/org/codehaus/jackson/JsonToken;->VALUE_FALSE:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-ne v0, v2, :cond_1

    .line 140
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    .line 143
    :cond_1
    sget-object v2, Lcom/flurry/org/codehaus/jackson/JsonToken;->VALUE_NUMBER_INT:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-ne v0, v2, :cond_4

    .line 145
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getNumberType()Lcom/flurry/org/codehaus/jackson/JsonParser$NumberType;

    move-result-object v2

    sget-object v3, Lcom/flurry/org/codehaus/jackson/JsonParser$NumberType;->INT:Lcom/flurry/org/codehaus/jackson/JsonParser$NumberType;

    if-ne v2, v3, :cond_3

    .line 146
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getIntValue()I

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_2
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    .line 148
    :cond_3
    invoke-virtual {p0, p1, p2}, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer;->_parseBooleanFromNumber(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_0

    .line 150
    :cond_4
    sget-object v2, Lcom/flurry/org/codehaus/jackson/JsonToken;->VALUE_NULL:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-ne v0, v2, :cond_5

    .line 151
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer;->getNullValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    goto :goto_0

    .line 154
    :cond_5
    sget-object v2, Lcom/flurry/org/codehaus/jackson/JsonToken;->VALUE_STRING:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-ne v0, v2, :cond_9

    .line 155
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 156
    .local v1, "text":Ljava/lang/String;
    const-string v2, "true"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 157
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    .line 159
    :cond_6
    const-string v2, "false"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 160
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    .line 162
    :cond_7
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_8

    .line 163
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer;->getEmptyValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    goto :goto_0

    .line 165
    :cond_8
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer;->_valueClass:Ljava/lang/Class;

    const-string v3, "only \"true\" or \"false\" recognized"

    invoke-virtual {p2, v2, v3}, Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;->weirdStringException(Ljava/lang/Class;Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;

    move-result-object v2

    throw v2

    .line 168
    .end local v1    # "text":Ljava/lang/String;
    :cond_9
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer;->_valueClass:Ljava/lang/Class;

    invoke-virtual {p2, v2, v0}, Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;->mappingException(Ljava/lang/Class;Lcom/flurry/org/codehaus/jackson/JsonToken;)Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;

    move-result-object v2

    throw v2
.end method

.method protected final _parseBooleanFromNumber(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;)Z
    .locals 6
    .param p1, "jp"    # Lcom/flurry/org/codehaus/jackson/JsonParser;
    .param p2, "ctxt"    # Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 174
    .local p0, "this":Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer;, "Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer<TT;>;"
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getNumberType()Lcom/flurry/org/codehaus/jackson/JsonParser$NumberType;

    move-result-object v1

    sget-object v2, Lcom/flurry/org/codehaus/jackson/JsonParser$NumberType;->LONG:Lcom/flurry/org/codehaus/jackson/JsonParser$NumberType;

    if-ne v1, v2, :cond_1

    .line 175
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getLongValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 182
    :goto_1
    return v1

    .line 175
    :cond_0
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    .line 178
    :cond_1
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v0

    .line 179
    .local v0, "str":Ljava/lang/String;
    const-string v1, "0.0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 180
    :cond_2
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_1

    .line 182
    :cond_3
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_1
.end method

.method protected final _parseBooleanPrimitive(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;)Z
    .locals 6
    .param p1, "jp"    # Lcom/flurry/org/codehaus/jackson/JsonParser;
    .param p2, "ctxt"    # Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer;, "Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer<TT;>;"
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 99
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getCurrentToken()Lcom/flurry/org/codehaus/jackson/JsonToken;

    move-result-object v0

    .line 100
    .local v0, "t":Lcom/flurry/org/codehaus/jackson/JsonToken;
    sget-object v4, Lcom/flurry/org/codehaus/jackson/JsonToken;->VALUE_TRUE:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-ne v0, v4, :cond_1

    .line 124
    :cond_0
    :goto_0
    return v2

    .line 103
    :cond_1
    sget-object v4, Lcom/flurry/org/codehaus/jackson/JsonToken;->VALUE_FALSE:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-ne v0, v4, :cond_2

    move v2, v3

    .line 104
    goto :goto_0

    .line 106
    :cond_2
    sget-object v4, Lcom/flurry/org/codehaus/jackson/JsonToken;->VALUE_NULL:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-ne v0, v4, :cond_3

    move v2, v3

    .line 107
    goto :goto_0

    .line 110
    :cond_3
    sget-object v4, Lcom/flurry/org/codehaus/jackson/JsonToken;->VALUE_NUMBER_INT:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-ne v0, v4, :cond_5

    .line 112
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getNumberType()Lcom/flurry/org/codehaus/jackson/JsonParser$NumberType;

    move-result-object v4

    sget-object v5, Lcom/flurry/org/codehaus/jackson/JsonParser$NumberType;->INT:Lcom/flurry/org/codehaus/jackson/JsonParser$NumberType;

    if-ne v4, v5, :cond_4

    .line 113
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getIntValue()I

    move-result v4

    if-nez v4, :cond_0

    move v2, v3

    goto :goto_0

    .line 115
    :cond_4
    invoke-virtual {p0, p1, p2}, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer;->_parseBooleanFromNumber(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;)Z

    move-result v2

    goto :goto_0

    .line 118
    :cond_5
    sget-object v3, Lcom/flurry/org/codehaus/jackson/JsonToken;->VALUE_STRING:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-ne v0, v3, :cond_8

    .line 119
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 120
    .local v1, "text":Ljava/lang/String;
    const-string v3, "true"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 123
    const-string v2, "false"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_7

    .line 124
    :cond_6
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_0

    .line 126
    :cond_7
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer;->_valueClass:Ljava/lang/Class;

    const-string v3, "only \"true\" or \"false\" recognized"

    invoke-virtual {p2, v2, v3}, Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;->weirdStringException(Ljava/lang/Class;Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;

    move-result-object v2

    throw v2

    .line 129
    .end local v1    # "text":Ljava/lang/String;
    :cond_8
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer;->_valueClass:Ljava/lang/Class;

    invoke-virtual {p2, v2, v0}, Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;->mappingException(Ljava/lang/Class;Lcom/flurry/org/codehaus/jackson/JsonToken;)Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;

    move-result-object v2

    throw v2
.end method

.method protected _parseByte(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Byte;
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
    .line 188
    .local p0, "this":Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer;, "Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer<TT;>;"
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getCurrentToken()Lcom/flurry/org/codehaus/jackson/JsonToken;

    move-result-object v2

    .line 189
    .local v2, "t":Lcom/flurry/org/codehaus/jackson/JsonToken;
    sget-object v5, Lcom/flurry/org/codehaus/jackson/JsonToken;->VALUE_NUMBER_INT:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-eq v2, v5, :cond_0

    sget-object v5, Lcom/flurry/org/codehaus/jackson/JsonToken;->VALUE_NUMBER_FLOAT:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-ne v2, v5, :cond_1

    .line 190
    :cond_0
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getByteValue()B

    move-result v5

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    .line 211
    :goto_0
    return-object v5

    .line 192
    :cond_1
    sget-object v5, Lcom/flurry/org/codehaus/jackson/JsonToken;->VALUE_STRING:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-ne v2, v5, :cond_5

    .line 193
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 196
    .local v3, "text":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    .line 197
    .local v1, "len":I
    if-nez v1, :cond_2

    .line 198
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer;->getEmptyValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Byte;

    goto :goto_0

    .line 200
    :cond_2
    invoke-static {v3}, Lcom/flurry/org/codehaus/jackson/io/NumberInput;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 205
    .local v4, "value":I
    const/16 v5, -0x80

    if-lt v4, v5, :cond_3

    const/16 v5, 0x7f

    if-le v4, v5, :cond_4

    .line 206
    :cond_3
    iget-object v5, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer;->_valueClass:Ljava/lang/Class;

    const-string v6, "overflow, value can not be represented as 8-bit value"

    invoke-virtual {p2, v5, v6}, Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;->weirdStringException(Ljava/lang/Class;Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;

    move-result-object v5

    throw v5

    .line 201
    .end local v1    # "len":I
    .end local v4    # "value":I
    :catch_0
    move-exception v0

    .line 202
    .local v0, "iae":Ljava/lang/IllegalArgumentException;
    iget-object v5, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer;->_valueClass:Ljava/lang/Class;

    const-string v6, "not a valid Byte value"

    invoke-virtual {p2, v5, v6}, Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;->weirdStringException(Ljava/lang/Class;Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;

    move-result-object v5

    throw v5

    .line 208
    .end local v0    # "iae":Ljava/lang/IllegalArgumentException;
    .restart local v1    # "len":I
    .restart local v4    # "value":I
    :cond_4
    int-to-byte v5, v4

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    goto :goto_0

    .line 210
    .end local v1    # "len":I
    .end local v3    # "text":Ljava/lang/String;
    .end local v4    # "value":I
    :cond_5
    sget-object v5, Lcom/flurry/org/codehaus/jackson/JsonToken;->VALUE_NULL:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-ne v2, v5, :cond_6

    .line 211
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer;->getNullValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Byte;

    goto :goto_0

    .line 213
    :cond_6
    iget-object v5, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer;->_valueClass:Ljava/lang/Class;

    invoke-virtual {p2, v5, v2}, Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;->mappingException(Ljava/lang/Class;Lcom/flurry/org/codehaus/jackson/JsonToken;)Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;

    move-result-object v5

    throw v5
.end method

.method protected _parseDate(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;)Ljava/util/Date;
    .locals 6
    .param p1, "jp"    # Lcom/flurry/org/codehaus/jackson/JsonParser;
    .param p2, "ctxt"    # Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 558
    .local p0, "this":Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer;, "Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer<TT;>;"
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getCurrentToken()Lcom/flurry/org/codehaus/jackson/JsonToken;

    move-result-object v2

    .line 559
    .local v2, "t":Lcom/flurry/org/codehaus/jackson/JsonToken;
    sget-object v3, Lcom/flurry/org/codehaus/jackson/JsonToken;->VALUE_NUMBER_INT:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-ne v2, v3, :cond_0

    .line 560
    new-instance v3, Ljava/util/Date;

    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getLongValue()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 574
    :goto_0
    return-object v3

    .line 562
    :cond_0
    sget-object v3, Lcom/flurry/org/codehaus/jackson/JsonToken;->VALUE_NULL:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-ne v2, v3, :cond_1

    .line 563
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer;->getNullValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Date;

    goto :goto_0

    .line 565
    :cond_1
    sget-object v3, Lcom/flurry/org/codehaus/jackson/JsonToken;->VALUE_STRING:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-ne v2, v3, :cond_3

    .line 570
    :try_start_0
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 571
    .local v1, "str":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    .line 572
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer;->getEmptyValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Date;

    goto :goto_0

    .line 574
    :cond_2
    invoke-virtual {p2, v1}, Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;->parseDate(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 575
    .end local v1    # "str":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 576
    .local v0, "iae":Ljava/lang/IllegalArgumentException;
    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer;->_valueClass:Ljava/lang/Class;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "not a valid representation (error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v3, v4}, Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;->weirdStringException(Ljava/lang/Class;Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;

    move-result-object v3

    throw v3

    .line 579
    .end local v0    # "iae":Ljava/lang/IllegalArgumentException;
    :cond_3
    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer;->_valueClass:Ljava/lang/Class;

    invoke-virtual {p2, v3, v2}, Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;->mappingException(Ljava/lang/Class;Lcom/flurry/org/codehaus/jackson/JsonToken;)Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;

    move-result-object v3

    throw v3
.end method

.method protected final _parseDouble(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Double;
    .locals 4
    .param p1, "jp"    # Lcom/flurry/org/codehaus/jackson/JsonParser;
    .param p2, "ctxt"    # Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 471
    .local p0, "this":Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer;, "Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer<TT;>;"
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getCurrentToken()Lcom/flurry/org/codehaus/jackson/JsonToken;

    move-result-object v0

    .line 473
    .local v0, "t":Lcom/flurry/org/codehaus/jackson/JsonToken;
    sget-object v2, Lcom/flurry/org/codehaus/jackson/JsonToken;->VALUE_NUMBER_INT:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-eq v0, v2, :cond_0

    sget-object v2, Lcom/flurry/org/codehaus/jackson/JsonToken;->VALUE_NUMBER_FLOAT:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-ne v0, v2, :cond_1

    .line 474
    :cond_0
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getDoubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    .line 504
    :goto_0
    return-object v2

    .line 476
    :cond_1
    sget-object v2, Lcom/flurry/org/codehaus/jackson/JsonToken;->VALUE_STRING:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-ne v0, v2, :cond_6

    .line 477
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 478
    .local v1, "text":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 479
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer;->getEmptyValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    goto :goto_0

    .line 481
    :cond_2
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 499
    :cond_3
    :try_start_0
    invoke-static {v1}, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 483
    :sswitch_0
    const-string v2, "Infinity"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "INF"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 484
    :cond_4
    const-wide/high16 v2, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    goto :goto_0

    .line 488
    :sswitch_1
    const-string v2, "NaN"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 489
    const-wide/high16 v2, 0x7ff8000000000000L    # Double.NaN

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    goto :goto_0

    .line 493
    :sswitch_2
    const-string v2, "-Infinity"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "-INF"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 494
    :cond_5
    const-wide/high16 v2, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    goto :goto_0

    .line 500
    :catch_0
    move-exception v2

    .line 501
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer;->_valueClass:Ljava/lang/Class;

    const-string v3, "not a valid Double value"

    invoke-virtual {p2, v2, v3}, Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;->weirdStringException(Ljava/lang/Class;Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;

    move-result-object v2

    throw v2

    .line 503
    .end local v1    # "text":Ljava/lang/String;
    :cond_6
    sget-object v2, Lcom/flurry/org/codehaus/jackson/JsonToken;->VALUE_NULL:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-ne v0, v2, :cond_7

    .line 504
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer;->getNullValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    goto :goto_0

    .line 507
    :cond_7
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer;->_valueClass:Ljava/lang/Class;

    invoke-virtual {p2, v2, v0}, Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;->mappingException(Ljava/lang/Class;Lcom/flurry/org/codehaus/jackson/JsonToken;)Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;

    move-result-object v2

    throw v2

    .line 481
    :sswitch_data_0
    .sparse-switch
        0x2d -> :sswitch_2
        0x49 -> :sswitch_0
        0x4e -> :sswitch_1
    .end sparse-switch
.end method

.method protected final _parseDoublePrimitive(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;)D
    .locals 5
    .param p1, "jp"    # Lcom/flurry/org/codehaus/jackson/JsonParser;
    .param p2, "ctxt"    # Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer;, "Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer<TT;>;"
    const-wide/16 v2, 0x0

    .line 514
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getCurrentToken()Lcom/flurry/org/codehaus/jackson/JsonToken;

    move-result-object v0

    .line 516
    .local v0, "t":Lcom/flurry/org/codehaus/jackson/JsonToken;
    sget-object v4, Lcom/flurry/org/codehaus/jackson/JsonToken;->VALUE_NUMBER_INT:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-eq v0, v4, :cond_0

    sget-object v4, Lcom/flurry/org/codehaus/jackson/JsonToken;->VALUE_NUMBER_FLOAT:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-ne v0, v4, :cond_2

    .line 517
    :cond_0
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getDoubleValue()D

    move-result-wide v2

    .line 548
    :cond_1
    :goto_0
    return-wide v2

    .line 520
    :cond_2
    sget-object v4, Lcom/flurry/org/codehaus/jackson/JsonToken;->VALUE_STRING:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-ne v0, v4, :cond_6

    .line 521
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 522
    .local v1, "text":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_1

    .line 525
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 543
    :cond_3
    :try_start_0
    invoke-static {v1}, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    goto :goto_0

    .line 527
    :sswitch_0
    const-string v2, "Infinity"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "INF"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 528
    :cond_4
    const-wide/high16 v2, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    goto :goto_0

    .line 532
    :sswitch_1
    const-string v2, "NaN"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 533
    const-wide/high16 v2, 0x7ff8000000000000L    # Double.NaN

    goto :goto_0

    .line 537
    :sswitch_2
    const-string v2, "-Infinity"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "-INF"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 538
    :cond_5
    const-wide/high16 v2, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    goto :goto_0

    .line 544
    :catch_0
    move-exception v2

    .line 545
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer;->_valueClass:Ljava/lang/Class;

    const-string v3, "not a valid double value"

    invoke-virtual {p2, v2, v3}, Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;->weirdStringException(Ljava/lang/Class;Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;

    move-result-object v2

    throw v2

    .line 547
    .end local v1    # "text":Ljava/lang/String;
    :cond_6
    sget-object v4, Lcom/flurry/org/codehaus/jackson/JsonToken;->VALUE_NULL:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-eq v0, v4, :cond_1

    .line 551
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer;->_valueClass:Ljava/lang/Class;

    invoke-virtual {p2, v2, v0}, Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;->mappingException(Ljava/lang/Class;Lcom/flurry/org/codehaus/jackson/JsonToken;)Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;

    move-result-object v2

    throw v2

    .line 525
    :sswitch_data_0
    .sparse-switch
        0x2d -> :sswitch_2
        0x49 -> :sswitch_0
        0x4e -> :sswitch_1
    .end sparse-switch
.end method

.method protected final _parseFloat(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Float;
    .locals 4
    .param p1, "jp"    # Lcom/flurry/org/codehaus/jackson/JsonParser;
    .param p2, "ctxt"    # Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 386
    .local p0, "this":Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer;, "Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer<TT;>;"
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getCurrentToken()Lcom/flurry/org/codehaus/jackson/JsonToken;

    move-result-object v0

    .line 388
    .local v0, "t":Lcom/flurry/org/codehaus/jackson/JsonToken;
    sget-object v2, Lcom/flurry/org/codehaus/jackson/JsonToken;->VALUE_NUMBER_INT:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-eq v0, v2, :cond_0

    sget-object v2, Lcom/flurry/org/codehaus/jackson/JsonToken;->VALUE_NUMBER_FLOAT:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-ne v0, v2, :cond_1

    .line 389
    :cond_0
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getFloatValue()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    .line 420
    :goto_0
    return-object v2

    .line 392
    :cond_1
    sget-object v2, Lcom/flurry/org/codehaus/jackson/JsonToken;->VALUE_STRING:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-ne v0, v2, :cond_6

    .line 393
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 394
    .local v1, "text":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 395
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer;->getEmptyValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    goto :goto_0

    .line 397
    :cond_2
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 415
    :cond_3
    :try_start_0
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 399
    :sswitch_0
    const-string v2, "Infinity"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "INF"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 400
    :cond_4
    const/high16 v2, 0x7f800000    # Float.POSITIVE_INFINITY

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    goto :goto_0

    .line 404
    :sswitch_1
    const-string v2, "NaN"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 405
    const/high16 v2, 0x7fc00000    # Float.NaN

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    goto :goto_0

    .line 409
    :sswitch_2
    const-string v2, "-Infinity"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "-INF"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 410
    :cond_5
    const/high16 v2, -0x800000    # Float.NEGATIVE_INFINITY

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    goto :goto_0

    .line 416
    :catch_0
    move-exception v2

    .line 417
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer;->_valueClass:Ljava/lang/Class;

    const-string v3, "not a valid Float value"

    invoke-virtual {p2, v2, v3}, Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;->weirdStringException(Ljava/lang/Class;Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;

    move-result-object v2

    throw v2

    .line 419
    .end local v1    # "text":Ljava/lang/String;
    :cond_6
    sget-object v2, Lcom/flurry/org/codehaus/jackson/JsonToken;->VALUE_NULL:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-ne v0, v2, :cond_7

    .line 420
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer;->getNullValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    goto :goto_0

    .line 423
    :cond_7
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer;->_valueClass:Ljava/lang/Class;

    invoke-virtual {p2, v2, v0}, Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;->mappingException(Ljava/lang/Class;Lcom/flurry/org/codehaus/jackson/JsonToken;)Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;

    move-result-object v2

    throw v2

    .line 397
    :sswitch_data_0
    .sparse-switch
        0x2d -> :sswitch_2
        0x49 -> :sswitch_0
        0x4e -> :sswitch_1
    .end sparse-switch
.end method

.method protected final _parseFloatPrimitive(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;)F
    .locals 4
    .param p1, "jp"    # Lcom/flurry/org/codehaus/jackson/JsonParser;
    .param p2, "ctxt"    # Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer;, "Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer<TT;>;"
    const/4 v2, 0x0

    .line 429
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getCurrentToken()Lcom/flurry/org/codehaus/jackson/JsonToken;

    move-result-object v0

    .line 431
    .local v0, "t":Lcom/flurry/org/codehaus/jackson/JsonToken;
    sget-object v3, Lcom/flurry/org/codehaus/jackson/JsonToken;->VALUE_NUMBER_INT:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-eq v0, v3, :cond_0

    sget-object v3, Lcom/flurry/org/codehaus/jackson/JsonToken;->VALUE_NUMBER_FLOAT:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-ne v0, v3, :cond_2

    .line 432
    :cond_0
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getFloatValue()F

    move-result v2

    .line 462
    :cond_1
    :goto_0
    return v2

    .line 434
    :cond_2
    sget-object v3, Lcom/flurry/org/codehaus/jackson/JsonToken;->VALUE_STRING:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-ne v0, v3, :cond_6

    .line 435
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 436
    .local v1, "text":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    .line 439
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 457
    :cond_3
    :try_start_0
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 441
    :sswitch_0
    const-string v2, "Infinity"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "INF"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 442
    :cond_4
    const/high16 v2, 0x7f800000    # Float.POSITIVE_INFINITY

    goto :goto_0

    .line 446
    :sswitch_1
    const-string v2, "NaN"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 447
    const/high16 v2, 0x7fc00000    # Float.NaN

    goto :goto_0

    .line 451
    :sswitch_2
    const-string v2, "-Infinity"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "-INF"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 452
    :cond_5
    const/high16 v2, -0x800000    # Float.NEGATIVE_INFINITY

    goto :goto_0

    .line 458
    :catch_0
    move-exception v2

    .line 459
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer;->_valueClass:Ljava/lang/Class;

    const-string v3, "not a valid float value"

    invoke-virtual {p2, v2, v3}, Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;->weirdStringException(Ljava/lang/Class;Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;

    move-result-object v2

    throw v2

    .line 461
    .end local v1    # "text":Ljava/lang/String;
    :cond_6
    sget-object v3, Lcom/flurry/org/codehaus/jackson/JsonToken;->VALUE_NULL:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-eq v0, v3, :cond_1

    .line 465
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer;->_valueClass:Ljava/lang/Class;

    invoke-virtual {p2, v2, v0}, Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;->mappingException(Ljava/lang/Class;Lcom/flurry/org/codehaus/jackson/JsonToken;)Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;

    move-result-object v2

    throw v2

    .line 439
    nop

    :sswitch_data_0
    .sparse-switch
        0x2d -> :sswitch_2
        0x49 -> :sswitch_0
        0x4e -> :sswitch_1
    .end sparse-switch
.end method

.method protected final _parseIntPrimitive(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;)I
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
    .local p0, "this":Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer;, "Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer<TT;>;"
    const/4 v6, 0x0

    .line 261
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getCurrentToken()Lcom/flurry/org/codehaus/jackson/JsonToken;

    move-result-object v4

    .line 264
    .local v4, "t":Lcom/flurry/org/codehaus/jackson/JsonToken;
    sget-object v7, Lcom/flurry/org/codehaus/jackson/JsonToken;->VALUE_NUMBER_INT:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-eq v4, v7, :cond_0

    sget-object v7, Lcom/flurry/org/codehaus/jackson/JsonToken;->VALUE_NUMBER_FLOAT:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-ne v4, v7, :cond_2

    .line 265
    :cond_0
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getIntValue()I

    move-result v6

    .line 291
    :cond_1
    :goto_0
    return v6

    .line 267
    :cond_2
    sget-object v7, Lcom/flurry/org/codehaus/jackson/JsonToken;->VALUE_STRING:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-ne v4, v7, :cond_6

    .line 271
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 273
    .local v5, "text":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v1

    .line 274
    .local v1, "len":I
    const/16 v7, 0x9

    if-le v1, v7, :cond_5

    .line 275
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 276
    .local v2, "l":J
    const-wide/32 v6, -0x80000000

    cmp-long v6, v2, v6

    if-ltz v6, :cond_3

    const-wide/32 v6, 0x7fffffff

    cmp-long v6, v2, v6

    if-lez v6, :cond_4

    .line 277
    :cond_3
    iget-object v6, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer;->_valueClass:Ljava/lang/Class;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Overflow: numeric value ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") out of range of int ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/high16 v8, -0x80000000

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const v8, 0x7fffffff

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v6, v7}, Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;->weirdStringException(Ljava/lang/Class;Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;

    move-result-object v6

    throw v6
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 286
    .end local v1    # "len":I
    .end local v2    # "l":J
    :catch_0
    move-exception v0

    .line 287
    .local v0, "iae":Ljava/lang/IllegalArgumentException;
    iget-object v6, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer;->_valueClass:Ljava/lang/Class;

    const-string v7, "not a valid int value"

    invoke-virtual {p2, v6, v7}, Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;->weirdStringException(Ljava/lang/Class;Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;

    move-result-object v6

    throw v6

    .line 280
    .end local v0    # "iae":Ljava/lang/IllegalArgumentException;
    .restart local v1    # "len":I
    .restart local v2    # "l":J
    :cond_4
    long-to-int v6, v2

    goto :goto_0

    .line 282
    .end local v2    # "l":J
    :cond_5
    if-eqz v1, :cond_1

    .line 285
    :try_start_1
    invoke-static {v5}, Lcom/flurry/org/codehaus/jackson/io/NumberInput;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v6

    goto :goto_0

    .line 290
    .end local v1    # "len":I
    .end local v5    # "text":Ljava/lang/String;
    :cond_6
    sget-object v7, Lcom/flurry/org/codehaus/jackson/JsonToken;->VALUE_NULL:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-eq v4, v7, :cond_1

    .line 294
    iget-object v6, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer;->_valueClass:Ljava/lang/Class;

    invoke-virtual {p2, v6, v4}, Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;->mappingException(Ljava/lang/Class;Lcom/flurry/org/codehaus/jackson/JsonToken;)Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;

    move-result-object v6

    throw v6
.end method

.method protected final _parseInteger(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Integer;
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
    .line 300
    .local p0, "this":Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer;, "Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer<TT;>;"
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getCurrentToken()Lcom/flurry/org/codehaus/jackson/JsonToken;

    move-result-object v4

    .line 301
    .local v4, "t":Lcom/flurry/org/codehaus/jackson/JsonToken;
    sget-object v6, Lcom/flurry/org/codehaus/jackson/JsonToken;->VALUE_NUMBER_INT:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-eq v4, v6, :cond_0

    sget-object v6, Lcom/flurry/org/codehaus/jackson/JsonToken;->VALUE_NUMBER_FLOAT:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-ne v4, v6, :cond_1

    .line 302
    :cond_0
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getIntValue()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 325
    :goto_0
    return-object v6

    .line 304
    :cond_1
    sget-object v6, Lcom/flurry/org/codehaus/jackson/JsonToken;->VALUE_STRING:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-ne v4, v6, :cond_6

    .line 305
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 307
    .local v5, "text":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v1

    .line 308
    .local v1, "len":I
    const/16 v6, 0x9

    if-le v1, v6, :cond_4

    .line 309
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 310
    .local v2, "l":J
    const-wide/32 v6, -0x80000000

    cmp-long v6, v2, v6

    if-ltz v6, :cond_2

    const-wide/32 v6, 0x7fffffff

    cmp-long v6, v2, v6

    if-lez v6, :cond_3

    .line 311
    :cond_2
    iget-object v6, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer;->_valueClass:Ljava/lang/Class;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Overflow: numeric value ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") out of range of Integer ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/high16 v8, -0x80000000

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const v8, 0x7fffffff

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v6, v7}, Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;->weirdStringException(Ljava/lang/Class;Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;

    move-result-object v6

    throw v6
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 320
    .end local v1    # "len":I
    .end local v2    # "l":J
    :catch_0
    move-exception v0

    .line 321
    .local v0, "iae":Ljava/lang/IllegalArgumentException;
    iget-object v6, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer;->_valueClass:Ljava/lang/Class;

    const-string v7, "not a valid Integer value"

    invoke-virtual {p2, v6, v7}, Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;->weirdStringException(Ljava/lang/Class;Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;

    move-result-object v6

    throw v6

    .line 314
    .end local v0    # "iae":Ljava/lang/IllegalArgumentException;
    .restart local v1    # "len":I
    .restart local v2    # "l":J
    :cond_3
    long-to-int v6, v2

    :try_start_1
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_0

    .line 316
    .end local v2    # "l":J
    :cond_4
    if-nez v1, :cond_5

    .line 317
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer;->getEmptyValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    goto :goto_0

    .line 319
    :cond_5
    invoke-static {v5}, Lcom/flurry/org/codehaus/jackson/io/NumberInput;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v6

    goto/16 :goto_0

    .line 324
    .end local v1    # "len":I
    .end local v5    # "text":Ljava/lang/String;
    :cond_6
    sget-object v6, Lcom/flurry/org/codehaus/jackson/JsonToken;->VALUE_NULL:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-ne v4, v6, :cond_7

    .line 325
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer;->getNullValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    goto/16 :goto_0

    .line 328
    :cond_7
    iget-object v6, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer;->_valueClass:Ljava/lang/Class;

    invoke-virtual {p2, v6, v4}, Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;->mappingException(Ljava/lang/Class;Lcom/flurry/org/codehaus/jackson/JsonToken;)Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;

    move-result-object v6

    throw v6
.end method

.method protected final _parseLong(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Long;
    .locals 4
    .param p1, "jp"    # Lcom/flurry/org/codehaus/jackson/JsonParser;
    .param p2, "ctxt"    # Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 334
    .local p0, "this":Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer;, "Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer<TT;>;"
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getCurrentToken()Lcom/flurry/org/codehaus/jackson/JsonToken;

    move-result-object v0

    .line 337
    .local v0, "t":Lcom/flurry/org/codehaus/jackson/JsonToken;
    sget-object v2, Lcom/flurry/org/codehaus/jackson/JsonToken;->VALUE_NUMBER_INT:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-eq v0, v2, :cond_0

    sget-object v2, Lcom/flurry/org/codehaus/jackson/JsonToken;->VALUE_NUMBER_FLOAT:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-ne v0, v2, :cond_1

    .line 338
    :cond_0
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getLongValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 353
    :goto_0
    return-object v2

    .line 341
    :cond_1
    sget-object v2, Lcom/flurry/org/codehaus/jackson/JsonToken;->VALUE_STRING:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-ne v0, v2, :cond_3

    .line 343
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 344
    .local v1, "text":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 345
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer;->getEmptyValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    goto :goto_0

    .line 348
    :cond_2
    :try_start_0
    invoke-static {v1}, Lcom/flurry/org/codehaus/jackson/io/NumberInput;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 349
    :catch_0
    move-exception v2

    .line 350
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer;->_valueClass:Ljava/lang/Class;

    const-string v3, "not a valid Long value"

    invoke-virtual {p2, v2, v3}, Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;->weirdStringException(Ljava/lang/Class;Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;

    move-result-object v2

    throw v2

    .line 352
    .end local v1    # "text":Ljava/lang/String;
    :cond_3
    sget-object v2, Lcom/flurry/org/codehaus/jackson/JsonToken;->VALUE_NULL:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-ne v0, v2, :cond_4

    .line 353
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer;->getNullValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    goto :goto_0

    .line 356
    :cond_4
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer;->_valueClass:Ljava/lang/Class;

    invoke-virtual {p2, v2, v0}, Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;->mappingException(Ljava/lang/Class;Lcom/flurry/org/codehaus/jackson/JsonToken;)Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;

    move-result-object v2

    throw v2
.end method

.method protected final _parseLongPrimitive(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;)J
    .locals 5
    .param p1, "jp"    # Lcom/flurry/org/codehaus/jackson/JsonParser;
    .param p2, "ctxt"    # Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer;, "Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer<TT;>;"
    const-wide/16 v2, 0x0

    .line 362
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getCurrentToken()Lcom/flurry/org/codehaus/jackson/JsonToken;

    move-result-object v0

    .line 363
    .local v0, "t":Lcom/flurry/org/codehaus/jackson/JsonToken;
    sget-object v4, Lcom/flurry/org/codehaus/jackson/JsonToken;->VALUE_NUMBER_INT:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-eq v0, v4, :cond_0

    sget-object v4, Lcom/flurry/org/codehaus/jackson/JsonToken;->VALUE_NUMBER_FLOAT:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-ne v0, v4, :cond_2

    .line 364
    :cond_0
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getLongValue()J

    move-result-wide v2

    .line 377
    :cond_1
    :goto_0
    return-wide v2

    .line 366
    :cond_2
    sget-object v4, Lcom/flurry/org/codehaus/jackson/JsonToken;->VALUE_STRING:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-ne v0, v4, :cond_3

    .line 367
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 368
    .local v1, "text":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_1

    .line 372
    :try_start_0
    invoke-static {v1}, Lcom/flurry/org/codehaus/jackson/io/NumberInput;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    goto :goto_0

    .line 373
    :catch_0
    move-exception v2

    .line 374
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer;->_valueClass:Ljava/lang/Class;

    const-string v3, "not a valid long value"

    invoke-virtual {p2, v2, v3}, Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;->weirdStringException(Ljava/lang/Class;Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;

    move-result-object v2

    throw v2

    .line 376
    .end local v1    # "text":Ljava/lang/String;
    :cond_3
    sget-object v4, Lcom/flurry/org/codehaus/jackson/JsonToken;->VALUE_NULL:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-eq v0, v4, :cond_1

    .line 379
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer;->_valueClass:Ljava/lang/Class;

    invoke-virtual {p2, v2, v0}, Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;->mappingException(Ljava/lang/Class;Lcom/flurry/org/codehaus/jackson/JsonToken;)Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;

    move-result-object v2

    throw v2
.end method

.method protected _parseShort(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Short;
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
    .line 219
    .local p0, "this":Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer;, "Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer<TT;>;"
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getCurrentToken()Lcom/flurry/org/codehaus/jackson/JsonToken;

    move-result-object v2

    .line 220
    .local v2, "t":Lcom/flurry/org/codehaus/jackson/JsonToken;
    sget-object v5, Lcom/flurry/org/codehaus/jackson/JsonToken;->VALUE_NUMBER_INT:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-eq v2, v5, :cond_0

    sget-object v5, Lcom/flurry/org/codehaus/jackson/JsonToken;->VALUE_NUMBER_FLOAT:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-ne v2, v5, :cond_1

    .line 221
    :cond_0
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getShortValue()S

    move-result v5

    invoke-static {v5}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v5

    .line 242
    :goto_0
    return-object v5

    .line 223
    :cond_1
    sget-object v5, Lcom/flurry/org/codehaus/jackson/JsonToken;->VALUE_STRING:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-ne v2, v5, :cond_5

    .line 224
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 227
    .local v3, "text":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    .line 228
    .local v1, "len":I
    if-nez v1, :cond_2

    .line 229
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer;->getEmptyValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Short;

    goto :goto_0

    .line 231
    :cond_2
    invoke-static {v3}, Lcom/flurry/org/codehaus/jackson/io/NumberInput;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 236
    .local v4, "value":I
    const/16 v5, -0x8000

    if-lt v4, v5, :cond_3

    const/16 v5, 0x7fff

    if-le v4, v5, :cond_4

    .line 237
    :cond_3
    iget-object v5, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer;->_valueClass:Ljava/lang/Class;

    const-string v6, "overflow, value can not be represented as 16-bit value"

    invoke-virtual {p2, v5, v6}, Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;->weirdStringException(Ljava/lang/Class;Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;

    move-result-object v5

    throw v5

    .line 232
    .end local v1    # "len":I
    .end local v4    # "value":I
    :catch_0
    move-exception v0

    .line 233
    .local v0, "iae":Ljava/lang/IllegalArgumentException;
    iget-object v5, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer;->_valueClass:Ljava/lang/Class;

    const-string v6, "not a valid Short value"

    invoke-virtual {p2, v5, v6}, Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;->weirdStringException(Ljava/lang/Class;Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;

    move-result-object v5

    throw v5

    .line 239
    .end local v0    # "iae":Ljava/lang/IllegalArgumentException;
    .restart local v1    # "len":I
    .restart local v4    # "value":I
    :cond_4
    int-to-short v5, v4

    invoke-static {v5}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v5

    goto :goto_0

    .line 241
    .end local v1    # "len":I
    .end local v3    # "text":Ljava/lang/String;
    .end local v4    # "value":I
    :cond_5
    sget-object v5, Lcom/flurry/org/codehaus/jackson/JsonToken;->VALUE_NULL:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-ne v2, v5, :cond_6

    .line 242
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer;->getNullValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Short;

    goto :goto_0

    .line 244
    :cond_6
    iget-object v5, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer;->_valueClass:Ljava/lang/Class;

    invoke-virtual {p2, v5, v2}, Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;->mappingException(Ljava/lang/Class;Lcom/flurry/org/codehaus/jackson/JsonToken;)Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;

    move-result-object v5

    throw v5
.end method

.method protected final _parseShortPrimitive(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;)S
    .locals 3
    .param p1, "jp"    # Lcom/flurry/org/codehaus/jackson/JsonParser;
    .param p2, "ctxt"    # Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 250
    .local p0, "this":Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer;, "Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer<TT;>;"
    invoke-virtual {p0, p1, p2}, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer;->_parseIntPrimitive(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;)I

    move-result v0

    .line 252
    .local v0, "value":I
    const/16 v1, -0x8000

    if-lt v0, v1, :cond_0

    const/16 v1, 0x7fff

    if-le v0, v1, :cond_1

    .line 253
    :cond_0
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer;->_valueClass:Ljava/lang/Class;

    const-string v2, "overflow, value can not be represented as 16-bit value"

    invoke-virtual {p2, v1, v2}, Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;->weirdStringException(Ljava/lang/Class;Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;

    move-result-object v1

    throw v1

    .line 255
    :cond_1
    int-to-short v1, v0

    return v1
.end method

.method public deserializeWithType(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;Lcom/flurry/org/codehaus/jackson/map/TypeDeserializer;)Ljava/lang/Object;
    .locals 1
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
    .line 87
    .local p0, "this":Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer;, "Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer<TT;>;"
    invoke-virtual {p3, p1, p2}, Lcom/flurry/org/codehaus/jackson/map/TypeDeserializer;->deserializeTypedFromAny(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected findDeserializer(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/map/DeserializerProvider;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;
    .locals 1
    .param p1, "config"    # Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;
    .param p2, "provider"    # Lcom/flurry/org/codehaus/jackson/map/DeserializerProvider;
    .param p3, "type"    # Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .param p4, "property"    # Lcom/flurry/org/codehaus/jackson/map/BeanProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;",
            "Lcom/flurry/org/codehaus/jackson/map/DeserializerProvider;",
            "Lcom/flurry/org/codehaus/jackson/type/JavaType;",
            "Lcom/flurry/org/codehaus/jackson/map/BeanProperty;",
            ")",
            "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 619
    .local p0, "this":Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer;, "Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer<TT;>;"
    invoke-virtual {p2, p1, p3, p4}, Lcom/flurry/org/codehaus/jackson/map/DeserializerProvider;->findValueDeserializer(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;

    move-result-object v0

    .line 620
    .local v0, "deser":Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer<Ljava/lang/Object;>;"
    return-object v0
.end method

.method public getValueClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 49
    .local p0, "this":Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer;, "Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer<TT;>;"
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer;->_valueClass:Ljava/lang/Class;

    return-object v0
.end method

.method public getValueType()Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .locals 1

    .prologue
    .line 56
    .local p0, "this":Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer;, "Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer<TT;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method protected handleUnknownProperty(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .param p1, "jp"    # Lcom/flurry/org/codehaus/jackson/JsonParser;
    .param p2, "ctxt"    # Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;
    .param p3, "instanceOrClass"    # Ljava/lang/Object;
    .param p4, "propName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 650
    .local p0, "this":Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer;, "Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer<TT;>;"
    if-nez p3, :cond_0

    .line 651
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer;->getValueClass()Ljava/lang/Class;

    move-result-object p3

    .line 654
    .end local p3    # "instanceOrClass":Ljava/lang/Object;
    :cond_0
    invoke-virtual {p2, p1, p0, p3, p4}, Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;->handleUnknownProperty(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 664
    :goto_0
    return-void

    .line 658
    :cond_1
    invoke-virtual {p0, p2, p3, p4}, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer;->reportUnknownProperty(Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;Ljava/lang/String;)V

    .line 663
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->skipChildren()Lcom/flurry/org/codehaus/jackson/JsonParser;

    goto :goto_0
.end method

.method protected isDefaultSerializer(Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 68
    .local p0, "this":Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer;, "Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer<TT;>;"
    .local p1, "deserializer":Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer<*>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/flurry/org/codehaus/jackson/map/annotate/JacksonStdImpl;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected reportUnknownProperty(Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .param p1, "ctxt"    # Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;
    .param p2, "instanceOrClass"    # Ljava/lang/Object;
    .param p3, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 671
    .local p0, "this":Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer;, "Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer<TT;>;"
    sget-object v0, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;->FAIL_ON_UNKNOWN_PROPERTIES:Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;

    invoke-virtual {p1, v0}, Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;->isEnabled(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 672
    invoke-virtual {p1, p2, p3}, Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;->unknownFieldException(Ljava/lang/Object;Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;

    move-result-object v0

    throw v0

    .line 675
    :cond_0
    return-void
.end method
