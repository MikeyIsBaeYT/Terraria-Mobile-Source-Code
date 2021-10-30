.class public abstract Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParserBase;
.super Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;
.source "ReaderBasedParserBase.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field protected _inputBuffer:[C

.field protected _reader:Ljava/io/Reader;


# direct methods
.method protected constructor <init>(Lcom/flurry/org/codehaus/jackson/io/IOContext;ILjava/io/Reader;)V
    .locals 1
    .param p1, "ctxt"    # Lcom/flurry/org/codehaus/jackson/io/IOContext;
    .param p2, "features"    # I
    .param p3, "r"    # Ljava/io/Reader;

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;-><init>(Lcom/flurry/org/codehaus/jackson/io/IOContext;I)V

    .line 58
    iput-object p3, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParserBase;->_reader:Ljava/io/Reader;

    .line 59
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/io/IOContext;->allocTokenBuffer()[C

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParserBase;->_inputBuffer:[C

    .line 60
    return-void
.end method


# virtual methods
.method protected _closeInput()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 136
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParserBase;->_reader:Ljava/io/Reader;

    if-eqz v0, :cond_2

    .line 137
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParserBase;->_ioContext:Lcom/flurry/org/codehaus/jackson/io/IOContext;

    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/io/IOContext;->isResourceManaged()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;->AUTO_CLOSE_SOURCE:Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;

    invoke-virtual {p0, v0}, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParserBase;->isEnabled(Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParserBase;->_reader:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    .line 140
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParserBase;->_reader:Ljava/io/Reader;

    .line 142
    :cond_2
    return-void
.end method

.method protected final _matchToken(Ljava/lang/String;I)Z
    .locals 6
    .param p1, "matchStr"    # Ljava/lang/String;
    .param p2, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 176
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 179
    .local v1, "len":I
    :cond_0
    iget v2, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParserBase;->_inputPtr:I

    iget v3, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParserBase;->_inputEnd:I

    if-lt v2, v3, :cond_1

    .line 180
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParserBase;->loadMore()Z

    move-result v2

    if-nez v2, :cond_1

    .line 181
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParserBase;->_reportInvalidEOFInValue()V

    .line 184
    :cond_1
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParserBase;->_inputBuffer:[C

    iget v3, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParserBase;->_inputPtr:I

    aget-char v2, v2, v3

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v2, v3, :cond_2

    .line 185
    invoke-virtual {p1, v4, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\'null\', \'true\', \'false\' or NaN"

    invoke-virtual {p0, v2, v3}, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParserBase;->_reportInvalidToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    :cond_2
    iget v2, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParserBase;->_inputPtr:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParserBase;->_inputPtr:I

    .line 188
    add-int/lit8 p2, p2, 0x1

    if-lt p2, v1, :cond_0

    .line 191
    iget v2, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParserBase;->_inputPtr:I

    iget v3, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParserBase;->_inputEnd:I

    if-lt v2, v3, :cond_4

    .line 192
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParserBase;->loadMore()Z

    move-result v2

    if-nez v2, :cond_4

    .line 202
    :cond_3
    :goto_0
    return v5

    .line 196
    :cond_4
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParserBase;->_inputBuffer:[C

    iget v3, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParserBase;->_inputPtr:I

    aget-char v0, v2, v3

    .line 198
    .local v0, "c":C
    invoke-static {v0}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 199
    iget v2, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParserBase;->_inputPtr:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParserBase;->_inputPtr:I

    .line 200
    invoke-virtual {p1, v4, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\'null\', \'true\', \'false\' or NaN"

    invoke-virtual {p0, v2, v3}, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParserBase;->_reportInvalidToken(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected _releaseBuffers()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 154
    invoke-super {p0}, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_releaseBuffers()V

    .line 155
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParserBase;->_inputBuffer:[C

    .line 156
    .local v0, "buf":[C
    if-eqz v0, :cond_0

    .line 157
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParserBase;->_inputBuffer:[C

    .line 158
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParserBase;->_ioContext:Lcom/flurry/org/codehaus/jackson/io/IOContext;

    invoke-virtual {v1, v0}, Lcom/flurry/org/codehaus/jackson/io/IOContext;->releaseTokenBuffer([C)V

    .line 160
    :cond_0
    return-void
.end method

.method protected _reportInvalidToken(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "matchedPart"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 208
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 214
    .local v1, "sb":Ljava/lang/StringBuilder;
    :goto_0
    iget v2, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParserBase;->_inputPtr:I

    iget v3, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParserBase;->_inputEnd:I

    if-lt v2, v3, :cond_1

    .line 215
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParserBase;->loadMore()Z

    move-result v2

    if-nez v2, :cond_1

    .line 226
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unrecognized token \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\': was expecting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParserBase;->_reportError(Ljava/lang/String;)V

    .line 227
    return-void

    .line 219
    :cond_1
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParserBase;->_inputBuffer:[C

    iget v3, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParserBase;->_inputPtr:I

    aget-char v0, v2, v3

    .line 220
    .local v0, "c":C
    invoke-static {v0}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 223
    iget v2, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParserBase;->_inputPtr:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParserBase;->_inputPtr:I

    .line 224
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public getInputSource()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParserBase;->_reader:Ljava/io/Reader;

    return-object v0
.end method

.method protected getNextChar(Ljava/lang/String;)C
    .locals 3
    .param p1, "eofMsg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 118
    iget v0, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParserBase;->_inputPtr:I

    iget v1, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParserBase;->_inputEnd:I

    if-lt v0, v1, :cond_0

    .line 119
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParserBase;->loadMore()Z

    move-result v0

    if-nez v0, :cond_0

    .line 120
    invoke-virtual {p0, p1}, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParserBase;->_reportInvalidEOF(Ljava/lang/String;)V

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParserBase;->_inputBuffer:[C

    iget v1, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParserBase;->_inputPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParserBase;->_inputPtr:I

    aget-char v0, v0, v1

    return v0
.end method

.method protected final loadMore()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 95
    iget-wide v2, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParserBase;->_currInputProcessed:J

    iget v4, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParserBase;->_inputEnd:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParserBase;->_currInputProcessed:J

    .line 96
    iget v2, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParserBase;->_currInputRowStart:I

    iget v3, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParserBase;->_inputEnd:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParserBase;->_currInputRowStart:I

    .line 98
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParserBase;->_reader:Ljava/io/Reader;

    if-eqz v2, :cond_0

    .line 99
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParserBase;->_reader:Ljava/io/Reader;

    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParserBase;->_inputBuffer:[C

    iget-object v4, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParserBase;->_inputBuffer:[C

    array-length v4, v4

    invoke-virtual {v2, v3, v1, v4}, Ljava/io/Reader;->read([CII)I

    move-result v0

    .line 100
    .local v0, "count":I
    if-lez v0, :cond_1

    .line 101
    iput v1, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParserBase;->_inputPtr:I

    .line 102
    iput v0, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParserBase;->_inputEnd:I

    .line 103
    const/4 v1, 0x1

    .line 112
    .end local v0    # "count":I
    :cond_0
    return v1

    .line 106
    .restart local v0    # "count":I
    :cond_1
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParserBase;->_closeInput()V

    .line 108
    if-nez v0, :cond_0

    .line 109
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Reader returned 0 characters when trying to read "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParserBase;->_inputEnd:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public releaseBuffered(Ljava/io/Writer;)I
    .locals 4
    .param p1, "w"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 71
    iget v2, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParserBase;->_inputEnd:I

    iget v3, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParserBase;->_inputPtr:I

    sub-int v0, v2, v3

    .line 72
    .local v0, "count":I
    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    .line 73
    const/4 v0, 0x0

    .line 78
    .end local v0    # "count":I
    :goto_0
    return v0

    .line 76
    .restart local v0    # "count":I
    :cond_0
    iget v1, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParserBase;->_inputPtr:I

    .line 77
    .local v1, "origPtr":I
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParserBase;->_inputBuffer:[C

    invoke-virtual {p1, v2, v1, v0}, Ljava/io/Writer;->write([CII)V

    goto :goto_0
.end method
