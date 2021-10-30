.class public final Lcom/flurry/org/codehaus/jackson/node/DecimalNode;
.super Lcom/flurry/org/codehaus/jackson/node/NumericNode;
.source "DecimalNode.java"


# instance fields
.field protected final _value:Ljava/math/BigDecimal;


# direct methods
.method public constructor <init>(Ljava/math/BigDecimal;)V
    .locals 0
    .param p1, "v"    # Ljava/math/BigDecimal;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/flurry/org/codehaus/jackson/node/NumericNode;-><init>()V

    iput-object p1, p0, Lcom/flurry/org/codehaus/jackson/node/DecimalNode;->_value:Ljava/math/BigDecimal;

    return-void
.end method

.method public static valueOf(Ljava/math/BigDecimal;)Lcom/flurry/org/codehaus/jackson/node/DecimalNode;
    .locals 1
    .param p0, "d"    # Ljava/math/BigDecimal;

    .prologue
    .line 27
    new-instance v0, Lcom/flurry/org/codehaus/jackson/node/DecimalNode;

    invoke-direct {v0, p0}, Lcom/flurry/org/codehaus/jackson/node/DecimalNode;-><init>(Ljava/math/BigDecimal;)V

    return-object v0
.end method


# virtual methods
.method public asText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/node/DecimalNode;->_value:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public asToken()Lcom/flurry/org/codehaus/jackson/JsonToken;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/flurry/org/codehaus/jackson/JsonToken;->VALUE_NUMBER_FLOAT:Lcom/flurry/org/codehaus/jackson/JsonToken;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 86
    if-ne p1, p0, :cond_1

    const/4 v0, 0x1

    .line 91
    .end local p1    # "o":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .line 87
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_1
    if-eqz p1, :cond_0

    .line 88
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 91
    check-cast p1, Lcom/flurry/org/codehaus/jackson/node/DecimalNode;

    .end local p1    # "o":Ljava/lang/Object;
    iget-object v0, p1, Lcom/flurry/org/codehaus/jackson/node/DecimalNode;->_value:Ljava/math/BigDecimal;

    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/node/DecimalNode;->_value:Ljava/math/BigDecimal;

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getBigIntegerValue()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/node/DecimalNode;->_value:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public getDecimalValue()Ljava/math/BigDecimal;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/node/DecimalNode;->_value:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public getDoubleValue()D
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/node/DecimalNode;->_value:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public getIntValue()I
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/node/DecimalNode;->_value:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->intValue()I

    move-result v0

    return v0
.end method

.method public getLongValue()J
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/node/DecimalNode;->_value:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getNumberType()Lcom/flurry/org/codehaus/jackson/JsonParser$NumberType;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/flurry/org/codehaus/jackson/JsonParser$NumberType;->BIG_DECIMAL:Lcom/flurry/org/codehaus/jackson/JsonParser$NumberType;

    return-object v0
.end method

.method public getNumberValue()Ljava/lang/Number;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/node/DecimalNode;->_value:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/node/DecimalNode;->_value:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->hashCode()I

    move-result v0

    return v0
.end method

.method public isBigDecimal()Z
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x1

    return v0
.end method

.method public isFloatingPointNumber()Z
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x1

    return v0
.end method

.method public final serialize(Lcom/flurry/org/codehaus/jackson/JsonGenerator;Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;)V
    .locals 1
    .param p1, "jg"    # Lcom/flurry/org/codehaus/jackson/JsonGenerator;
    .param p2, "provider"    # Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 80
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/node/DecimalNode;->_value:Ljava/math/BigDecimal;

    invoke-virtual {p1, v0}, Lcom/flurry/org/codehaus/jackson/JsonGenerator;->writeNumber(Ljava/math/BigDecimal;)V

    .line 81
    return-void
.end method
