.class public abstract Lcom/flurry/org/codehaus/jackson/node/NumericNode;
.super Lcom/flurry/org/codehaus/jackson/node/ValueNode;
.source "NumericNode.java"


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/flurry/org/codehaus/jackson/node/ValueNode;-><init>()V

    return-void
.end method


# virtual methods
.method public asDouble()D
    .locals 2

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/node/NumericNode;->getDoubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public asDouble(D)D
    .locals 2
    .param p1, "defaultValue"    # D

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/node/NumericNode;->getDoubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public asInt()I
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/node/NumericNode;->getIntValue()I

    move-result v0

    return v0
.end method

.method public asInt(I)I
    .locals 1
    .param p1, "defaultValue"    # I

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/node/NumericNode;->getIntValue()I

    move-result v0

    return v0
.end method

.method public asLong()J
    .locals 2

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/node/NumericNode;->getLongValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public asLong(J)J
    .locals 2
    .param p1, "defaultValue"    # J

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/node/NumericNode;->getLongValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public abstract asText()Ljava/lang/String;
.end method

.method public abstract getBigIntegerValue()Ljava/math/BigInteger;
.end method

.method public abstract getDecimalValue()Ljava/math/BigDecimal;
.end method

.method public abstract getDoubleValue()D
.end method

.method public abstract getIntValue()I
.end method

.method public abstract getLongValue()J
.end method

.method public abstract getNumberType()Lcom/flurry/org/codehaus/jackson/JsonParser$NumberType;
.end method

.method public abstract getNumberValue()Ljava/lang/Number;
.end method

.method public final isNumber()Z
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x1

    return v0
.end method
