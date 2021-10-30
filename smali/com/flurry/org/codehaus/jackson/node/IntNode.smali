.class public final Lcom/flurry/org/codehaus/jackson/node/IntNode;
.super Lcom/flurry/org/codehaus/jackson/node/NumericNode;
.source "IntNode.java"


# static fields
.field private static final CANONICALS:[Lcom/flurry/org/codehaus/jackson/node/IntNode;

.field static final MAX_CANONICAL:I = 0xa

.field static final MIN_CANONICAL:I = -0x1


# instance fields
.field final _value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 24
    const/16 v0, 0xc

    .line 25
    .local v0, "count":I
    new-array v2, v0, [Lcom/flurry/org/codehaus/jackson/node/IntNode;

    sput-object v2, Lcom/flurry/org/codehaus/jackson/node/IntNode;->CANONICALS:[Lcom/flurry/org/codehaus/jackson/node/IntNode;

    .line 26
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 27
    sget-object v2, Lcom/flurry/org/codehaus/jackson/node/IntNode;->CANONICALS:[Lcom/flurry/org/codehaus/jackson/node/IntNode;

    new-instance v3, Lcom/flurry/org/codehaus/jackson/node/IntNode;

    add-int/lit8 v4, v1, -0x1

    invoke-direct {v3, v4}, Lcom/flurry/org/codehaus/jackson/node/IntNode;-><init>(I)V

    aput-object v3, v2, v1

    .line 26
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 29
    :cond_0
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "v"    # I

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/flurry/org/codehaus/jackson/node/NumericNode;-><init>()V

    iput p1, p0, Lcom/flurry/org/codehaus/jackson/node/IntNode;->_value:I

    return-void
.end method

.method public static valueOf(I)Lcom/flurry/org/codehaus/jackson/node/IntNode;
    .locals 2
    .param p0, "i"    # I

    .prologue
    .line 45
    const/16 v0, 0xa

    if-gt p0, v0, :cond_0

    const/4 v0, -0x1

    if-ge p0, v0, :cond_1

    :cond_0
    new-instance v0, Lcom/flurry/org/codehaus/jackson/node/IntNode;

    invoke-direct {v0, p0}, Lcom/flurry/org/codehaus/jackson/node/IntNode;-><init>(I)V

    .line 46
    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/flurry/org/codehaus/jackson/node/IntNode;->CANONICALS:[Lcom/flurry/org/codehaus/jackson/node/IntNode;

    add-int/lit8 v1, p0, 0x1

    aget-object v0, v0, v1

    goto :goto_0
.end method


# virtual methods
.method public asBoolean(Z)Z
    .locals 1
    .param p1, "defaultValue"    # Z

    .prologue
    .line 99
    iget v0, p0, Lcom/flurry/org/codehaus/jackson/node/IntNode;->_value:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public asText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lcom/flurry/org/codehaus/jackson/node/IntNode;->_value:I

    invoke-static {v0}, Lcom/flurry/org/codehaus/jackson/io/NumberOutput;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public asToken()Lcom/flurry/org/codehaus/jackson/JsonToken;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/flurry/org/codehaus/jackson/JsonToken;->VALUE_NUMBER_INT:Lcom/flurry/org/codehaus/jackson/JsonToken;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 112
    if-ne p1, p0, :cond_1

    .line 117
    .end local p1    # "o":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .line 113
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    goto :goto_0

    .line 114
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 115
    goto :goto_0

    .line 117
    :cond_3
    check-cast p1, Lcom/flurry/org/codehaus/jackson/node/IntNode;

    .end local p1    # "o":Ljava/lang/Object;
    iget v2, p1, Lcom/flurry/org/codehaus/jackson/node/IntNode;->_value:I

    iget v3, p0, Lcom/flurry/org/codehaus/jackson/node/IntNode;->_value:I

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public getBigIntegerValue()Ljava/math/BigInteger;
    .locals 2

    .prologue
    .line 90
    iget v0, p0, Lcom/flurry/org/codehaus/jackson/node/IntNode;->_value:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public getDecimalValue()Ljava/math/BigDecimal;
    .locals 2

    .prologue
    .line 87
    iget v0, p0, Lcom/flurry/org/codehaus/jackson/node/IntNode;->_value:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public getDoubleValue()D
    .locals 2

    .prologue
    .line 84
    iget v0, p0, Lcom/flurry/org/codehaus/jackson/node/IntNode;->_value:I

    int-to-double v0, v0

    return-wide v0
.end method

.method public getIntValue()I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lcom/flurry/org/codehaus/jackson/node/IntNode;->_value:I

    return v0
.end method

.method public getLongValue()J
    .locals 2

    .prologue
    .line 81
    iget v0, p0, Lcom/flurry/org/codehaus/jackson/node/IntNode;->_value:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public getNumberType()Lcom/flurry/org/codehaus/jackson/JsonParser$NumberType;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/flurry/org/codehaus/jackson/JsonParser$NumberType;->INT:Lcom/flurry/org/codehaus/jackson/JsonParser$NumberType;

    return-object v0
.end method

.method public getNumberValue()Ljava/lang/Number;
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/flurry/org/codehaus/jackson/node/IntNode;->_value:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 121
    iget v0, p0, Lcom/flurry/org/codehaus/jackson/node/IntNode;->_value:I

    return v0
.end method

.method public isInt()Z
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x1

    return v0
.end method

.method public isIntegralNumber()Z
    .locals 1

    .prologue
    .line 67
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
    .line 106
    iget v0, p0, Lcom/flurry/org/codehaus/jackson/node/IntNode;->_value:I

    invoke-virtual {p1, v0}, Lcom/flurry/org/codehaus/jackson/JsonGenerator;->writeNumber(I)V

    .line 107
    return-void
.end method
