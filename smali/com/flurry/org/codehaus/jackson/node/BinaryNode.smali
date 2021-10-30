.class public final Lcom/flurry/org/codehaus/jackson/node/BinaryNode;
.super Lcom/flurry/org/codehaus/jackson/node/ValueNode;
.source "BinaryNode.java"


# static fields
.field static final EMPTY_BINARY_NODE:Lcom/flurry/org/codehaus/jackson/node/BinaryNode;


# instance fields
.field final _data:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 16
    new-instance v0, Lcom/flurry/org/codehaus/jackson/node/BinaryNode;

    const/4 v1, 0x0

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lcom/flurry/org/codehaus/jackson/node/BinaryNode;-><init>([B)V

    sput-object v0, Lcom/flurry/org/codehaus/jackson/node/BinaryNode;->EMPTY_BINARY_NODE:Lcom/flurry/org/codehaus/jackson/node/BinaryNode;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0
    .param p1, "data"    # [B

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/flurry/org/codehaus/jackson/node/ValueNode;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/flurry/org/codehaus/jackson/node/BinaryNode;->_data:[B

    .line 29
    return-void
.end method

.method public constructor <init>([BII)V
    .locals 2
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/flurry/org/codehaus/jackson/node/ValueNode;-><init>()V

    .line 33
    if-nez p2, :cond_0

    array-length v0, p1

    if-ne p3, v0, :cond_0

    .line 34
    iput-object p1, p0, Lcom/flurry/org/codehaus/jackson/node/BinaryNode;->_data:[B

    .line 39
    :goto_0
    return-void

    .line 36
    :cond_0
    new-array v0, p3, [B

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/node/BinaryNode;->_data:[B

    .line 37
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/node/BinaryNode;->_data:[B

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static valueOf([B)Lcom/flurry/org/codehaus/jackson/node/BinaryNode;
    .locals 1
    .param p0, "data"    # [B

    .prologue
    .line 43
    if-nez p0, :cond_0

    .line 44
    const/4 v0, 0x0

    .line 49
    :goto_0
    return-object v0

    .line 46
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 47
    sget-object v0, Lcom/flurry/org/codehaus/jackson/node/BinaryNode;->EMPTY_BINARY_NODE:Lcom/flurry/org/codehaus/jackson/node/BinaryNode;

    goto :goto_0

    .line 49
    :cond_1
    new-instance v0, Lcom/flurry/org/codehaus/jackson/node/BinaryNode;

    invoke-direct {v0, p0}, Lcom/flurry/org/codehaus/jackson/node/BinaryNode;-><init>([B)V

    goto :goto_0
.end method

.method public static valueOf([BII)Lcom/flurry/org/codehaus/jackson/node/BinaryNode;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .prologue
    .line 54
    if-nez p0, :cond_0

    .line 55
    const/4 v0, 0x0

    .line 60
    :goto_0
    return-object v0

    .line 57
    :cond_0
    if-nez p2, :cond_1

    .line 58
    sget-object v0, Lcom/flurry/org/codehaus/jackson/node/BinaryNode;->EMPTY_BINARY_NODE:Lcom/flurry/org/codehaus/jackson/node/BinaryNode;

    goto :goto_0

    .line 60
    :cond_1
    new-instance v0, Lcom/flurry/org/codehaus/jackson/node/BinaryNode;

    invoke-direct {v0, p0, p1, p2}, Lcom/flurry/org/codehaus/jackson/node/BinaryNode;-><init>([BII)V

    goto :goto_0
.end method


# virtual methods
.method public asText()Ljava/lang/String;
    .locals 3

    .prologue
    .line 95
    invoke-static {}, Lcom/flurry/org/codehaus/jackson/Base64Variants;->getDefaultVariant()Lcom/flurry/org/codehaus/jackson/Base64Variant;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/node/BinaryNode;->_data:[B

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/flurry/org/codehaus/jackson/Base64Variant;->encode([BZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public asToken()Lcom/flurry/org/codehaus/jackson/JsonToken;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/flurry/org/codehaus/jackson/JsonToken;->VALUE_EMBEDDED_OBJECT:Lcom/flurry/org/codehaus/jackson/JsonToken;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 114
    if-ne p1, p0, :cond_1

    const/4 v0, 0x1

    .line 119
    .end local p1    # "o":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .line 115
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_1
    if-eqz p1, :cond_0

    .line 116
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 119
    check-cast p1, Lcom/flurry/org/codehaus/jackson/node/BinaryNode;

    .end local p1    # "o":Ljava/lang/Object;
    iget-object v0, p1, Lcom/flurry/org/codehaus/jackson/node/BinaryNode;->_data:[B

    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/node/BinaryNode;->_data:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    goto :goto_0
.end method

.method public getBinaryValue()[B
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/node/BinaryNode;->_data:[B

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/node/BinaryNode;->_data:[B

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/node/BinaryNode;->_data:[B

    array-length v0, v0

    goto :goto_0
.end method

.method public isBinary()Z
    .locals 1

    .prologue
    .line 79
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
    .line 108
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/node/BinaryNode;->_data:[B

    invoke-virtual {p1, v0}, Lcom/flurry/org/codehaus/jackson/JsonGenerator;->writeBinary([B)V

    .line 109
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 134
    invoke-static {}, Lcom/flurry/org/codehaus/jackson/Base64Variants;->getDefaultVariant()Lcom/flurry/org/codehaus/jackson/Base64Variant;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/node/BinaryNode;->_data:[B

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/flurry/org/codehaus/jackson/Base64Variant;->encode([BZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
