.class public final Lcom/flurry/org/codehaus/jackson/node/DoubleNode;
.super Lcom/flurry/org/codehaus/jackson/node/NumericNode;
.source "DoubleNode.java"


# instance fields
.field protected final _value:D


# direct methods
.method public constructor <init>(D)V
    .locals 1
    .param p1, "v"    # D

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/flurry/org/codehaus/jackson/node/NumericNode;-><init>()V

    iput-wide p1, p0, Lcom/flurry/org/codehaus/jackson/node/DoubleNode;->_value:D

    return-void
.end method

.method public static valueOf(D)Lcom/flurry/org/codehaus/jackson/node/DoubleNode;
    .locals 2
    .param p0, "v"    # D

    .prologue
    .line 28
    new-instance v0, Lcom/flurry/org/codehaus/jackson/node/DoubleNode;

    invoke-direct {v0, p0, p1}, Lcom/flurry/org/codehaus/jackson/node/DoubleNode;-><init>(D)V

    return-object v0
.end method


# virtual methods
.method public asText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 77
    iget-wide v0, p0, Lcom/flurry/org/codehaus/jackson/node/DoubleNode;->_value:D

    invoke-static {v0, v1}, Lcom/flurry/org/codehaus/jackson/io/NumberOutput;->toString(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public asToken()Lcom/flurry/org/codehaus/jackson/JsonToken;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/flurry/org/codehaus/jackson/JsonToken;->VALUE_NUMBER_FLOAT:Lcom/flurry/org/codehaus/jackson/JsonToken;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 90
    if-ne p1, p0, :cond_1

    .line 95
    .end local p1    # "o":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .line 91
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    goto :goto_0

    .line 92
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 93
    goto :goto_0

    .line 95
    :cond_3
    check-cast p1, Lcom/flurry/org/codehaus/jackson/node/DoubleNode;

    .end local p1    # "o":Ljava/lang/Object;
    iget-wide v2, p1, Lcom/flurry/org/codehaus/jackson/node/DoubleNode;->_value:D

    iget-wide v4, p0, Lcom/flurry/org/codehaus/jackson/node/DoubleNode;->_value:D

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public getBigIntegerValue()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/node/DoubleNode;->getDecimalValue()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public getDecimalValue()Ljava/math/BigDecimal;
    .locals 2

    .prologue
    .line 68
    iget-wide v0, p0, Lcom/flurry/org/codehaus/jackson/node/DoubleNode;->_value:D

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public getDoubleValue()D
    .locals 2

    .prologue
    .line 65
    iget-wide v0, p0, Lcom/flurry/org/codehaus/jackson/node/DoubleNode;->_value:D

    return-wide v0
.end method

.method public getIntValue()I
    .locals 2

    .prologue
    .line 59
    iget-wide v0, p0, Lcom/flurry/org/codehaus/jackson/node/DoubleNode;->_value:D

    double-to-int v0, v0

    return v0
.end method

.method public getLongValue()J
    .locals 2

    .prologue
    .line 62
    iget-wide v0, p0, Lcom/flurry/org/codehaus/jackson/node/DoubleNode;->_value:D

    double-to-long v0, v0

    return-wide v0
.end method

.method public getNumberType()Lcom/flurry/org/codehaus/jackson/JsonParser$NumberType;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/flurry/org/codehaus/jackson/JsonParser$NumberType;->DOUBLE:Lcom/flurry/org/codehaus/jackson/JsonParser$NumberType;

    return-object v0
.end method

.method public getNumberValue()Ljava/lang/Number;
    .locals 2

    .prologue
    .line 55
    iget-wide v0, p0, Lcom/flurry/org/codehaus/jackson/node/DoubleNode;->_value:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 6

    .prologue
    .line 102
    iget-wide v2, p0, Lcom/flurry/org/codehaus/jackson/node/DoubleNode;->_value:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    .line 103
    .local v0, "l":J
    long-to-int v2, v0

    const/16 v3, 0x20

    shr-long v4, v0, v3

    long-to-int v3, v4

    xor-int/2addr v2, v3

    return v2
.end method

.method public isDouble()Z
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x1

    return v0
.end method

.method public isFloatingPointNumber()Z
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x1

    return v0
.end method

.method public final serialize(Lcom/flurry/org/codehaus/jackson/JsonGenerator;Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;)V
    .locals 2
    .param p1, "jg"    # Lcom/flurry/org/codehaus/jackson/JsonGenerator;
    .param p2, "provider"    # Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 84
    iget-wide v0, p0, Lcom/flurry/org/codehaus/jackson/node/DoubleNode;->_value:D

    invoke-virtual {p1, v0, v1}, Lcom/flurry/org/codehaus/jackson/JsonGenerator;->writeNumber(D)V

    .line 85
    return-void
.end method
