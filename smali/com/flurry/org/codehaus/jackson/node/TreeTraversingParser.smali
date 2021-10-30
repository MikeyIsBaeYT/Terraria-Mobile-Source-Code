.class public Lcom/flurry/org/codehaus/jackson/node/TreeTraversingParser;
.super Lcom/flurry/org/codehaus/jackson/impl/JsonParserMinimalBase;
.source "TreeTraversingParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/org/codehaus/jackson/node/TreeTraversingParser$1;
    }
.end annotation


# instance fields
.field protected _closed:Z

.field protected _nextToken:Lcom/flurry/org/codehaus/jackson/JsonToken;

.field protected _nodeCursor:Lcom/flurry/org/codehaus/jackson/node/NodeCursor;

.field protected _objectCodec:Lcom/flurry/org/codehaus/jackson/ObjectCodec;

.field protected _startContainer:Z


# direct methods
.method public constructor <init>(Lcom/flurry/org/codehaus/jackson/JsonNode;)V
    .locals 1
    .param p1, "n"    # Lcom/flurry/org/codehaus/jackson/JsonNode;

    .prologue
    .line 66
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/flurry/org/codehaus/jackson/node/TreeTraversingParser;-><init>(Lcom/flurry/org/codehaus/jackson/JsonNode;Lcom/flurry/org/codehaus/jackson/ObjectCodec;)V

    return-void
.end method

.method public constructor <init>(Lcom/flurry/org/codehaus/jackson/JsonNode;Lcom/flurry/org/codehaus/jackson/ObjectCodec;)V
    .locals 2
    .param p1, "n"    # Lcom/flurry/org/codehaus/jackson/JsonNode;
    .param p2, "codec"    # Lcom/flurry/org/codehaus/jackson/ObjectCodec;

    .prologue
    const/4 v1, 0x0

    .line 70
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/flurry/org/codehaus/jackson/impl/JsonParserMinimalBase;-><init>(I)V

    .line 71
    iput-object p2, p0, Lcom/flurry/org/codehaus/jackson/node/TreeTraversingParser;->_objectCodec:Lcom/flurry/org/codehaus/jackson/ObjectCodec;

    .line 72
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonNode;->isArray()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    sget-object v0, Lcom/flurry/org/codehaus/jackson/JsonToken;->START_ARRAY:Lcom/flurry/org/codehaus/jackson/JsonToken;

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/node/TreeTraversingParser;->_nextToken:Lcom/flurry/org/codehaus/jackson/JsonToken;

    .line 74
    new-instance v0, Lcom/flurry/org/codehaus/jackson/node/NodeCursor$Array;

    invoke-direct {v0, p1, v1}, Lcom/flurry/org/codehaus/jackson/node/NodeCursor$Array;-><init>(Lcom/flurry/org/codehaus/jackson/JsonNode;Lcom/flurry/org/codehaus/jackson/node/NodeCursor;)V

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/node/TreeTraversingParser;->_nodeCursor:Lcom/flurry/org/codehaus/jackson/node/NodeCursor;

    .line 81
    :goto_0
    return-void

    .line 75
    :cond_0
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonNode;->isObject()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 76
    sget-object v0, Lcom/flurry/org/codehaus/jackson/JsonToken;->START_OBJECT:Lcom/flurry/org/codehaus/jackson/JsonToken;

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/node/TreeTraversingParser;->_nextToken:Lcom/flurry/org/codehaus/jackson/JsonToken;

    .line 77
    new-instance v0, Lcom/flurry/org/codehaus/jackson/node/NodeCursor$Object;

    invoke-direct {v0, p1, v1}, Lcom/flurry/org/codehaus/jackson/node/NodeCursor$Object;-><init>(Lcom/flurry/org/codehaus/jackson/JsonNode;Lcom/flurry/org/codehaus/jackson/node/NodeCursor;)V

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/node/TreeTraversingParser;->_nodeCursor:Lcom/flurry/org/codehaus/jackson/node/NodeCursor;

    goto :goto_0

    .line 79
    :cond_1
    new-instance v0, Lcom/flurry/org/codehaus/jackson/node/NodeCursor$RootValue;

    invoke-direct {v0, p1, v1}, Lcom/flurry/org/codehaus/jackson/node/NodeCursor$RootValue;-><init>(Lcom/flurry/org/codehaus/jackson/JsonNode;Lcom/flurry/org/codehaus/jackson/node/NodeCursor;)V

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/node/TreeTraversingParser;->_nodeCursor:Lcom/flurry/org/codehaus/jackson/node/NodeCursor;

    goto :goto_0
.end method


# virtual methods
.method protected _handleEOF()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 381
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/node/TreeTraversingParser;->_throwInternal()V

    .line 382
    return-void
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 102
    iget-boolean v0, p0, Lcom/flurry/org/codehaus/jackson/node/TreeTraversingParser;->_closed:Z

    if-nez v0, :cond_0

    .line 103
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/org/codehaus/jackson/node/TreeTraversingParser;->_closed:Z

    .line 104
    iput-object v1, p0, Lcom/flurry/org/codehaus/jackson/node/TreeTraversingParser;->_nodeCursor:Lcom/flurry/org/codehaus/jackson/node/NodeCursor;

    .line 105
    iput-object v1, p0, Lcom/flurry/org/codehaus/jackson/node/TreeTraversingParser;->_currToken:Lcom/flurry/org/codehaus/jackson/JsonToken;

    .line 107
    :cond_0
    return-void
.end method

.method protected currentNode()Lcom/flurry/org/codehaus/jackson/JsonNode;
    .locals 1

    .prologue
    .line 362
    iget-boolean v0, p0, Lcom/flurry/org/codehaus/jackson/node/TreeTraversingParser;->_closed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/node/TreeTraversingParser;->_nodeCursor:Lcom/flurry/org/codehaus/jackson/node/NodeCursor;

    if-nez v0, :cond_1

    .line 363
    :cond_0
    const/4 v0, 0x0

    .line 365
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/node/TreeTraversingParser;->_nodeCursor:Lcom/flurry/org/codehaus/jackson/node/NodeCursor;

    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/node/NodeCursor;->currentNode()Lcom/flurry/org/codehaus/jackson/JsonNode;

    move-result-object v0

    goto :goto_0
.end method

.method protected currentNumericNode()Lcom/flurry/org/codehaus/jackson/JsonNode;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 371
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/node/TreeTraversingParser;->currentNode()Lcom/flurry/org/codehaus/jackson/JsonNode;

    move-result-object v0

    .line 372
    .local v0, "n":Lcom/flurry/org/codehaus/jackson/JsonNode;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/JsonNode;->isNumber()Z

    move-result v2

    if-nez v2, :cond_2

    .line 373
    :cond_0
    if-nez v0, :cond_1

    const/4 v1, 0x0

    .line 374
    .local v1, "t":Lcom/flurry/org/codehaus/jackson/JsonToken;
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Current token ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") not numeric, can not use numeric value accessors"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/flurry/org/codehaus/jackson/node/TreeTraversingParser;->_constructError(Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/JsonParseException;

    move-result-object v2

    throw v2

    .line 373
    .end local v1    # "t":Lcom/flurry/org/codehaus/jackson/JsonToken;
    :cond_1
    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/JsonNode;->asToken()Lcom/flurry/org/codehaus/jackson/JsonToken;

    move-result-object v1

    goto :goto_0

    .line 376
    :cond_2
    return-object v0
.end method

.method public getBigIntegerValue()Ljava/math/BigInteger;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 275
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/node/TreeTraversingParser;->currentNumericNode()Lcom/flurry/org/codehaus/jackson/JsonNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/JsonNode;->getBigIntegerValue()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public getBinaryValue(Lcom/flurry/org/codehaus/jackson/Base64Variant;)[B
    .locals 4
    .param p1, "b64variant"    # Lcom/flurry/org/codehaus/jackson/Base64Variant;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 336
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/node/TreeTraversingParser;->currentNode()Lcom/flurry/org/codehaus/jackson/JsonNode;

    move-result-object v1

    .line 337
    .local v1, "n":Lcom/flurry/org/codehaus/jackson/JsonNode;
    if-eqz v1, :cond_1

    .line 338
    invoke-virtual {v1}, Lcom/flurry/org/codehaus/jackson/JsonNode;->getBinaryValue()[B

    move-result-object v0

    .line 340
    .local v0, "data":[B
    if-eqz v0, :cond_0

    .line 352
    .end local v0    # "data":[B
    .end local v1    # "n":Lcom/flurry/org/codehaus/jackson/JsonNode;
    :goto_0
    return-object v0

    .line 344
    .restart local v0    # "data":[B
    .restart local v1    # "n":Lcom/flurry/org/codehaus/jackson/JsonNode;
    :cond_0
    invoke-virtual {v1}, Lcom/flurry/org/codehaus/jackson/JsonNode;->isPojo()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 345
    check-cast v1, Lcom/flurry/org/codehaus/jackson/node/POJONode;

    .end local v1    # "n":Lcom/flurry/org/codehaus/jackson/JsonNode;
    invoke-virtual {v1}, Lcom/flurry/org/codehaus/jackson/node/POJONode;->getPojo()Ljava/lang/Object;

    move-result-object v2

    .line 346
    .local v2, "ob":Ljava/lang/Object;
    instance-of v3, v2, [B

    if-eqz v3, :cond_1

    .line 347
    check-cast v2, [B

    .end local v2    # "ob":Ljava/lang/Object;
    check-cast v2, [B

    move-object v0, v2

    goto :goto_0

    .line 352
    .end local v0    # "data":[B
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCodec()Lcom/flurry/org/codehaus/jackson/ObjectCodec;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/node/TreeTraversingParser;->_objectCodec:Lcom/flurry/org/codehaus/jackson/ObjectCodec;

    return-object v0
.end method

.method public getCurrentLocation()Lcom/flurry/org/codehaus/jackson/JsonLocation;
    .locals 1

    .prologue
    .line 202
    sget-object v0, Lcom/flurry/org/codehaus/jackson/JsonLocation;->NA:Lcom/flurry/org/codehaus/jackson/JsonLocation;

    return-object v0
.end method

.method public getCurrentName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/node/TreeTraversingParser;->_nodeCursor:Lcom/flurry/org/codehaus/jackson/node/NodeCursor;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/node/TreeTraversingParser;->_nodeCursor:Lcom/flurry/org/codehaus/jackson/node/NodeCursor;

    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/node/NodeCursor;->getCurrentName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getDecimalValue()Ljava/math/BigDecimal;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 280
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/node/TreeTraversingParser;->currentNumericNode()Lcom/flurry/org/codehaus/jackson/JsonNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/JsonNode;->getDecimalValue()Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public getDoubleValue()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 285
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/node/TreeTraversingParser;->currentNumericNode()Lcom/flurry/org/codehaus/jackson/JsonNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/JsonNode;->getDoubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public getEmbeddedObject()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 311
    iget-boolean v1, p0, Lcom/flurry/org/codehaus/jackson/node/TreeTraversingParser;->_closed:Z

    if-nez v1, :cond_1

    .line 312
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/node/TreeTraversingParser;->currentNode()Lcom/flurry/org/codehaus/jackson/JsonNode;

    move-result-object v0

    .line 313
    .local v0, "n":Lcom/flurry/org/codehaus/jackson/JsonNode;
    if-eqz v0, :cond_1

    .line 314
    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/JsonNode;->isPojo()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 315
    check-cast v0, Lcom/flurry/org/codehaus/jackson/node/POJONode;

    .end local v0    # "n":Lcom/flurry/org/codehaus/jackson/JsonNode;
    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/node/POJONode;->getPojo()Ljava/lang/Object;

    move-result-object v1

    .line 322
    :goto_0
    return-object v1

    .line 317
    .restart local v0    # "n":Lcom/flurry/org/codehaus/jackson/JsonNode;
    :cond_0
    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/JsonNode;->isBinary()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 318
    check-cast v0, Lcom/flurry/org/codehaus/jackson/node/BinaryNode;

    .end local v0    # "n":Lcom/flurry/org/codehaus/jackson/JsonNode;
    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/node/BinaryNode;->getBinaryValue()[B

    move-result-object v1

    goto :goto_0

    .line 322
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getFloatValue()F
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 290
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/node/TreeTraversingParser;->currentNumericNode()Lcom/flurry/org/codehaus/jackson/JsonNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/JsonNode;->getDoubleValue()D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public getIntValue()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 300
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/node/TreeTraversingParser;->currentNumericNode()Lcom/flurry/org/codehaus/jackson/JsonNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/JsonNode;->getIntValue()I

    move-result v0

    return v0
.end method

.method public getLongValue()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 295
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/node/TreeTraversingParser;->currentNumericNode()Lcom/flurry/org/codehaus/jackson/JsonNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/JsonNode;->getLongValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getNumberType()Lcom/flurry/org/codehaus/jackson/JsonParser$NumberType;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 268
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/node/TreeTraversingParser;->currentNumericNode()Lcom/flurry/org/codehaus/jackson/JsonNode;

    move-result-object v0

    .line 269
    .local v0, "n":Lcom/flurry/org/codehaus/jackson/JsonNode;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/JsonNode;->getNumberType()Lcom/flurry/org/codehaus/jackson/JsonParser$NumberType;

    move-result-object v1

    goto :goto_0
.end method

.method public getNumberValue()Ljava/lang/Number;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 305
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/node/TreeTraversingParser;->currentNumericNode()Lcom/flurry/org/codehaus/jackson/JsonNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/JsonNode;->getNumberValue()Ljava/lang/Number;

    move-result-object v0

    return-object v0
.end method

.method public getParsingContext()Lcom/flurry/org/codehaus/jackson/JsonStreamContext;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/node/TreeTraversingParser;->_nodeCursor:Lcom/flurry/org/codehaus/jackson/node/NodeCursor;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 214
    iget-boolean v2, p0, Lcom/flurry/org/codehaus/jackson/node/TreeTraversingParser;->_closed:Z

    if-eqz v2, :cond_1

    .line 234
    :cond_0
    :goto_0
    return-object v1

    .line 218
    :cond_1
    sget-object v2, Lcom/flurry/org/codehaus/jackson/node/TreeTraversingParser$1;->$SwitchMap$org$codehaus$jackson$JsonToken:[I

    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/node/TreeTraversingParser;->_currToken:Lcom/flurry/org/codehaus/jackson/JsonToken;

    invoke-virtual {v3}, Lcom/flurry/org/codehaus/jackson/JsonToken;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 234
    :cond_2
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/node/TreeTraversingParser;->_currToken:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/node/TreeTraversingParser;->_currToken:Lcom/flurry/org/codehaus/jackson/JsonToken;

    invoke-virtual {v1}, Lcom/flurry/org/codehaus/jackson/JsonToken;->asString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 220
    :pswitch_0
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/node/TreeTraversingParser;->_nodeCursor:Lcom/flurry/org/codehaus/jackson/node/NodeCursor;

    invoke-virtual {v1}, Lcom/flurry/org/codehaus/jackson/node/NodeCursor;->getCurrentName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 222
    :pswitch_1
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/node/TreeTraversingParser;->currentNode()Lcom/flurry/org/codehaus/jackson/JsonNode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/org/codehaus/jackson/JsonNode;->getTextValue()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 225
    :pswitch_2
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/node/TreeTraversingParser;->currentNode()Lcom/flurry/org/codehaus/jackson/JsonNode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/org/codehaus/jackson/JsonNode;->getNumberValue()Ljava/lang/Number;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 227
    :pswitch_3
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/node/TreeTraversingParser;->currentNode()Lcom/flurry/org/codehaus/jackson/JsonNode;

    move-result-object v0

    .line 228
    .local v0, "n":Lcom/flurry/org/codehaus/jackson/JsonNode;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/JsonNode;->isBinary()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 230
    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/JsonNode;->asText()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 218
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getTextCharacters()[C
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 239
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/node/TreeTraversingParser;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    return-object v0
.end method

.method public getTextLength()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 244
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/node/TreeTraversingParser;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method public getTextOffset()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 249
    const/4 v0, 0x0

    return v0
.end method

.method public getTokenLocation()Lcom/flurry/org/codehaus/jackson/JsonLocation;
    .locals 1

    .prologue
    .line 197
    sget-object v0, Lcom/flurry/org/codehaus/jackson/JsonLocation;->NA:Lcom/flurry/org/codehaus/jackson/JsonLocation;

    return-object v0
.end method

.method public hasTextCharacters()Z
    .locals 1

    .prologue
    .line 255
    const/4 v0, 0x0

    return v0
.end method

.method public isClosed()Z
    .locals 1

    .prologue
    .line 176
    iget-boolean v0, p0, Lcom/flurry/org/codehaus/jackson/node/TreeTraversingParser;->_closed:Z

    return v0
.end method

.method public nextToken()Lcom/flurry/org/codehaus/jackson/JsonToken;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 118
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/node/TreeTraversingParser;->_nextToken:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-eqz v1, :cond_0

    .line 119
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/node/TreeTraversingParser;->_nextToken:Lcom/flurry/org/codehaus/jackson/JsonToken;

    iput-object v1, p0, Lcom/flurry/org/codehaus/jackson/node/TreeTraversingParser;->_currToken:Lcom/flurry/org/codehaus/jackson/JsonToken;

    .line 120
    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/node/TreeTraversingParser;->_nextToken:Lcom/flurry/org/codehaus/jackson/JsonToken;

    .line 121
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/node/TreeTraversingParser;->_currToken:Lcom/flurry/org/codehaus/jackson/JsonToken;

    .line 155
    :goto_0
    return-object v0

    .line 124
    :cond_0
    iget-boolean v1, p0, Lcom/flurry/org/codehaus/jackson/node/TreeTraversingParser;->_startContainer:Z

    if-eqz v1, :cond_5

    .line 125
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flurry/org/codehaus/jackson/node/TreeTraversingParser;->_startContainer:Z

    .line 127
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/node/TreeTraversingParser;->_nodeCursor:Lcom/flurry/org/codehaus/jackson/node/NodeCursor;

    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/node/NodeCursor;->currentHasChildren()Z

    move-result v0

    if-nez v0, :cond_2

    .line 128
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/node/TreeTraversingParser;->_currToken:Lcom/flurry/org/codehaus/jackson/JsonToken;

    sget-object v1, Lcom/flurry/org/codehaus/jackson/JsonToken;->START_OBJECT:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/flurry/org/codehaus/jackson/JsonToken;->END_OBJECT:Lcom/flurry/org/codehaus/jackson/JsonToken;

    :goto_1
    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/node/TreeTraversingParser;->_currToken:Lcom/flurry/org/codehaus/jackson/JsonToken;

    .line 130
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/node/TreeTraversingParser;->_currToken:Lcom/flurry/org/codehaus/jackson/JsonToken;

    goto :goto_0

    .line 128
    :cond_1
    sget-object v0, Lcom/flurry/org/codehaus/jackson/JsonToken;->END_ARRAY:Lcom/flurry/org/codehaus/jackson/JsonToken;

    goto :goto_1

    .line 132
    :cond_2
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/node/TreeTraversingParser;->_nodeCursor:Lcom/flurry/org/codehaus/jackson/node/NodeCursor;

    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/node/NodeCursor;->iterateChildren()Lcom/flurry/org/codehaus/jackson/node/NodeCursor;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/node/TreeTraversingParser;->_nodeCursor:Lcom/flurry/org/codehaus/jackson/node/NodeCursor;

    .line 133
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/node/TreeTraversingParser;->_nodeCursor:Lcom/flurry/org/codehaus/jackson/node/NodeCursor;

    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/node/NodeCursor;->nextToken()Lcom/flurry/org/codehaus/jackson/JsonToken;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/node/TreeTraversingParser;->_currToken:Lcom/flurry/org/codehaus/jackson/JsonToken;

    .line 134
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/node/TreeTraversingParser;->_currToken:Lcom/flurry/org/codehaus/jackson/JsonToken;

    sget-object v1, Lcom/flurry/org/codehaus/jackson/JsonToken;->START_OBJECT:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/node/TreeTraversingParser;->_currToken:Lcom/flurry/org/codehaus/jackson/JsonToken;

    sget-object v1, Lcom/flurry/org/codehaus/jackson/JsonToken;->START_ARRAY:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_4

    .line 135
    :cond_3
    iput-boolean v2, p0, Lcom/flurry/org/codehaus/jackson/node/TreeTraversingParser;->_startContainer:Z

    .line 137
    :cond_4
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/node/TreeTraversingParser;->_currToken:Lcom/flurry/org/codehaus/jackson/JsonToken;

    goto :goto_0

    .line 140
    :cond_5
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/node/TreeTraversingParser;->_nodeCursor:Lcom/flurry/org/codehaus/jackson/node/NodeCursor;

    if-nez v1, :cond_6

    .line 141
    iput-boolean v2, p0, Lcom/flurry/org/codehaus/jackson/node/TreeTraversingParser;->_closed:Z

    goto :goto_0

    .line 145
    :cond_6
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/node/TreeTraversingParser;->_nodeCursor:Lcom/flurry/org/codehaus/jackson/node/NodeCursor;

    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/node/NodeCursor;->nextToken()Lcom/flurry/org/codehaus/jackson/JsonToken;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/node/TreeTraversingParser;->_currToken:Lcom/flurry/org/codehaus/jackson/JsonToken;

    .line 146
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/node/TreeTraversingParser;->_currToken:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-eqz v0, :cond_9

    .line 147
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/node/TreeTraversingParser;->_currToken:Lcom/flurry/org/codehaus/jackson/JsonToken;

    sget-object v1, Lcom/flurry/org/codehaus/jackson/JsonToken;->START_OBJECT:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-eq v0, v1, :cond_7

    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/node/TreeTraversingParser;->_currToken:Lcom/flurry/org/codehaus/jackson/JsonToken;

    sget-object v1, Lcom/flurry/org/codehaus/jackson/JsonToken;->START_ARRAY:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_8

    .line 148
    :cond_7
    iput-boolean v2, p0, Lcom/flurry/org/codehaus/jackson/node/TreeTraversingParser;->_startContainer:Z

    .line 150
    :cond_8
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/node/TreeTraversingParser;->_currToken:Lcom/flurry/org/codehaus/jackson/JsonToken;

    goto :goto_0

    .line 153
    :cond_9
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/node/TreeTraversingParser;->_nodeCursor:Lcom/flurry/org/codehaus/jackson/node/NodeCursor;

    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/node/NodeCursor;->endToken()Lcom/flurry/org/codehaus/jackson/JsonToken;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/node/TreeTraversingParser;->_currToken:Lcom/flurry/org/codehaus/jackson/JsonToken;

    .line 154
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/node/TreeTraversingParser;->_nodeCursor:Lcom/flurry/org/codehaus/jackson/node/NodeCursor;

    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/node/NodeCursor;->getParent()Lcom/flurry/org/codehaus/jackson/node/NodeCursor;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/node/TreeTraversingParser;->_nodeCursor:Lcom/flurry/org/codehaus/jackson/node/NodeCursor;

    .line 155
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/node/TreeTraversingParser;->_currToken:Lcom/flurry/org/codehaus/jackson/JsonToken;

    goto :goto_0
.end method

.method public setCodec(Lcom/flurry/org/codehaus/jackson/ObjectCodec;)V
    .locals 0
    .param p1, "c"    # Lcom/flurry/org/codehaus/jackson/ObjectCodec;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/flurry/org/codehaus/jackson/node/TreeTraversingParser;->_objectCodec:Lcom/flurry/org/codehaus/jackson/ObjectCodec;

    .line 86
    return-void
.end method

.method public skipChildren()Lcom/flurry/org/codehaus/jackson/JsonParser;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 164
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/node/TreeTraversingParser;->_currToken:Lcom/flurry/org/codehaus/jackson/JsonToken;

    sget-object v1, Lcom/flurry/org/codehaus/jackson/JsonToken;->START_OBJECT:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_1

    .line 165
    iput-boolean v2, p0, Lcom/flurry/org/codehaus/jackson/node/TreeTraversingParser;->_startContainer:Z

    .line 166
    sget-object v0, Lcom/flurry/org/codehaus/jackson/JsonToken;->END_OBJECT:Lcom/flurry/org/codehaus/jackson/JsonToken;

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/node/TreeTraversingParser;->_currToken:Lcom/flurry/org/codehaus/jackson/JsonToken;

    .line 171
    :cond_0
    :goto_0
    return-object p0

    .line 167
    :cond_1
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/node/TreeTraversingParser;->_currToken:Lcom/flurry/org/codehaus/jackson/JsonToken;

    sget-object v1, Lcom/flurry/org/codehaus/jackson/JsonToken;->START_ARRAY:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_0

    .line 168
    iput-boolean v2, p0, Lcom/flurry/org/codehaus/jackson/node/TreeTraversingParser;->_startContainer:Z

    .line 169
    sget-object v0, Lcom/flurry/org/codehaus/jackson/JsonToken;->END_ARRAY:Lcom/flurry/org/codehaus/jackson/JsonToken;

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/node/TreeTraversingParser;->_currToken:Lcom/flurry/org/codehaus/jackson/JsonToken;

    goto :goto_0
.end method
