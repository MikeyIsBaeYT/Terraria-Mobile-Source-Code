.class public final Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;
.super Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;
.source "ReaderBasedParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser$1;
    }
.end annotation


# instance fields
.field protected _inputBuffer:[C

.field protected _objectCodec:Lcom/flurry/org/codehaus/jackson/ObjectCodec;

.field protected _reader:Ljava/io/Reader;

.field protected final _symbols:Lcom/flurry/org/codehaus/jackson/sym/CharsToNameCanonicalizer;

.field protected _tokenIncomplete:Z


# direct methods
.method public constructor <init>(Lcom/flurry/org/codehaus/jackson/io/IOContext;ILjava/io/Reader;Lcom/flurry/org/codehaus/jackson/ObjectCodec;Lcom/flurry/org/codehaus/jackson/sym/CharsToNameCanonicalizer;)V
    .locals 1
    .param p1, "ctxt"    # Lcom/flurry/org/codehaus/jackson/io/IOContext;
    .param p2, "features"    # I
    .param p3, "r"    # Ljava/io/Reader;
    .param p4, "codec"    # Lcom/flurry/org/codehaus/jackson/ObjectCodec;
    .param p5, "st"    # Lcom/flurry/org/codehaus/jackson/sym/CharsToNameCanonicalizer;

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;-><init>(Lcom/flurry/org/codehaus/jackson/io/IOContext;I)V

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_tokenIncomplete:Z

    .line 70
    iput-object p3, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_reader:Ljava/io/Reader;

    .line 71
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/io/IOContext;->allocTokenBuffer()[C

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    .line 72
    iput-object p4, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_objectCodec:Lcom/flurry/org/codehaus/jackson/ObjectCodec;

    .line 73
    iput-object p5, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_symbols:Lcom/flurry/org/codehaus/jackson/sym/CharsToNameCanonicalizer;

    .line 74
    return-void
.end method

.method private final _nextAfterName()Lcom/flurry/org/codehaus/jackson/JsonToken;
    .locals 4

    .prologue
    .line 499
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_nameCopied:Z

    .line 500
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_nextToken:Lcom/flurry/org/codehaus/jackson/JsonToken;

    .line 501
    .local v0, "t":Lcom/flurry/org/codehaus/jackson/JsonToken;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_nextToken:Lcom/flurry/org/codehaus/jackson/JsonToken;

    .line 503
    sget-object v1, Lcom/flurry/org/codehaus/jackson/JsonToken;->START_ARRAY:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_1

    .line 504
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_parsingContext:Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;

    iget v2, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_tokenInputRow:I

    iget v3, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_tokenInputCol:I

    invoke-virtual {v1, v2, v3}, Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;->createChildArrayContext(II)Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;

    move-result-object v1

    iput-object v1, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_parsingContext:Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;

    .line 508
    :cond_0
    :goto_0
    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_currToken:Lcom/flurry/org/codehaus/jackson/JsonToken;

    return-object v0

    .line 505
    :cond_1
    sget-object v1, Lcom/flurry/org/codehaus/jackson/JsonToken;->START_OBJECT:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_0

    .line 506
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_parsingContext:Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;

    iget v2, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_tokenInputRow:I

    iget v3, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_tokenInputCol:I

    invoke-virtual {v1, v2, v3}, Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;->createChildObjectContext(II)Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;

    move-result-object v1

    iput-object v1, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_parsingContext:Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;

    goto :goto_0
.end method

.method private _parseFieldName2(III)Ljava/lang/String;
    .locals 12
    .param p1, "startPtr"    # I
    .param p2, "hash"    # I
    .param p3, "endChar"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 1014
    iget-object v9, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_textBuffer:Lcom/flurry/org/codehaus/jackson/util/TextBuffer;

    iget-object v10, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    iget v11, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    sub-int/2addr v11, p1

    invoke-virtual {v9, v10, p1, v11}, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->resetWithShared([CII)V

    .line 1019
    iget-object v9, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_textBuffer:Lcom/flurry/org/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v9}, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->getCurrentSegment()[C

    move-result-object v4

    .line 1020
    .local v4, "outBuf":[C
    iget-object v9, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_textBuffer:Lcom/flurry/org/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v9}, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->getCurrentSegmentSize()I

    move-result v5

    .line 1023
    .local v5, "outPtr":I
    :goto_0
    iget v9, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    iget v10, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputEnd:I

    if-lt v9, v10, :cond_0

    .line 1024
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->loadMore()Z

    move-result v9

    if-nez v9, :cond_0

    .line 1025
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ": was expecting closing \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    int-to-char v10, p3

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\' for name"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_reportInvalidEOF(Ljava/lang/String;)V

    .line 1028
    :cond_0
    iget-object v9, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    iget v10, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    aget-char v1, v9, v10

    .line 1029
    .local v1, "c":C
    move v2, v1

    .line 1030
    .local v2, "i":I
    const/16 v9, 0x5c

    if-gt v2, v9, :cond_1

    .line 1031
    const/16 v9, 0x5c

    if-ne v2, v9, :cond_2

    .line 1036
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_decodeEscaped()C

    move-result v1

    .line 1046
    :cond_1
    :goto_1
    mul-int/lit8 v9, p2, 0x1f

    add-int p2, v9, v2

    .line 1048
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "outPtr":I
    .local v6, "outPtr":I
    aput-char v1, v4, v5

    .line 1051
    array-length v9, v4

    if-lt v6, v9, :cond_4

    .line 1052
    iget-object v9, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_textBuffer:Lcom/flurry/org/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v9}, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v4

    .line 1053
    const/4 v5, 0x0

    .end local v6    # "outPtr":I
    .restart local v5    # "outPtr":I
    goto :goto_0

    .line 1037
    :cond_2
    if-gt v2, p3, :cond_1

    .line 1038
    if-ne v2, p3, :cond_3

    .line 1056
    iget-object v9, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_textBuffer:Lcom/flurry/org/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v9, v5}, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->setCurrentLength(I)V

    .line 1058
    iget-object v8, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_textBuffer:Lcom/flurry/org/codehaus/jackson/util/TextBuffer;

    .line 1059
    .local v8, "tb":Lcom/flurry/org/codehaus/jackson/util/TextBuffer;
    invoke-virtual {v8}, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->getTextBuffer()[C

    move-result-object v0

    .line 1060
    .local v0, "buf":[C
    invoke-virtual {v8}, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->getTextOffset()I

    move-result v7

    .line 1061
    .local v7, "start":I
    invoke-virtual {v8}, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->size()I

    move-result v3

    .line 1063
    .local v3, "len":I
    iget-object v9, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_symbols:Lcom/flurry/org/codehaus/jackson/sym/CharsToNameCanonicalizer;

    invoke-virtual {v9, v0, v7, v3, p2}, Lcom/flurry/org/codehaus/jackson/sym/CharsToNameCanonicalizer;->findSymbol([CIII)Ljava/lang/String;

    move-result-object v9

    return-object v9

    .line 1041
    .end local v0    # "buf":[C
    .end local v3    # "len":I
    .end local v7    # "start":I
    .end local v8    # "tb":Lcom/flurry/org/codehaus/jackson/util/TextBuffer;
    :cond_3
    const/16 v9, 0x20

    if-ge v2, v9, :cond_1

    .line 1042
    const-string v9, "name"

    invoke-virtual {p0, v2, v9}, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_throwUnquotedSpace(ILjava/lang/String;)V

    goto :goto_1

    .end local v5    # "outPtr":I
    .restart local v6    # "outPtr":I
    :cond_4
    move v5, v6

    .end local v6    # "outPtr":I
    .restart local v5    # "outPtr":I
    goto :goto_0
.end method

.method private _parseUnusualFieldName2(II[I)Ljava/lang/String;
    .locals 14
    .param p1, "startPtr"    # I
    .param p2, "hash"    # I
    .param p3, "codes"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 1253
    iget-object v11, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_textBuffer:Lcom/flurry/org/codehaus/jackson/util/TextBuffer;

    iget-object v12, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    iget v13, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    sub-int/2addr v13, p1

    invoke-virtual {v11, v12, p1, v13}, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->resetWithShared([CII)V

    .line 1254
    iget-object v11, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_textBuffer:Lcom/flurry/org/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v11}, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->getCurrentSegment()[C

    move-result-object v6

    .line 1255
    .local v6, "outBuf":[C
    iget-object v11, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_textBuffer:Lcom/flurry/org/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v11}, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->getCurrentSegmentSize()I

    move-result v7

    .line 1256
    .local v7, "outPtr":I
    move-object/from16 v0, p3

    array-length v5, v0

    .line 1259
    .local v5, "maxCode":I
    :goto_0
    iget v11, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    iget v12, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputEnd:I

    if-lt v11, v12, :cond_1

    .line 1260
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->loadMore()Z

    move-result v11

    if-nez v11, :cond_1

    .line 1284
    :cond_0
    :goto_1
    iget-object v11, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_textBuffer:Lcom/flurry/org/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v11, v7}, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->setCurrentLength(I)V

    .line 1286
    iget-object v10, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_textBuffer:Lcom/flurry/org/codehaus/jackson/util/TextBuffer;

    .line 1287
    .local v10, "tb":Lcom/flurry/org/codehaus/jackson/util/TextBuffer;
    invoke-virtual {v10}, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->getTextBuffer()[C

    move-result-object v1

    .line 1288
    .local v1, "buf":[C
    invoke-virtual {v10}, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->getTextOffset()I

    move-result v9

    .line 1289
    .local v9, "start":I
    invoke-virtual {v10}, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->size()I

    move-result v4

    .line 1291
    .local v4, "len":I
    iget-object v11, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_symbols:Lcom/flurry/org/codehaus/jackson/sym/CharsToNameCanonicalizer;

    move/from16 v0, p2

    invoke-virtual {v11, v1, v9, v4, v0}, Lcom/flurry/org/codehaus/jackson/sym/CharsToNameCanonicalizer;->findSymbol([CIII)Ljava/lang/String;

    move-result-object v11

    return-object v11

    .line 1264
    .end local v1    # "buf":[C
    .end local v4    # "len":I
    .end local v9    # "start":I
    .end local v10    # "tb":Lcom/flurry/org/codehaus/jackson/util/TextBuffer;
    :cond_1
    iget-object v11, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    iget v12, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    aget-char v2, v11, v12

    .line 1265
    .local v2, "c":C
    move v3, v2

    .line 1266
    .local v3, "i":I
    if-gt v3, v5, :cond_3

    .line 1267
    aget v11, p3, v3

    if-nez v11, :cond_0

    .line 1273
    :cond_2
    iget v11, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    add-int/lit8 v11, v11, 0x1

    iput v11, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    .line 1274
    mul-int/lit8 v11, p2, 0x1f

    add-int p2, v11, v3

    .line 1276
    add-int/lit8 v8, v7, 0x1

    .end local v7    # "outPtr":I
    .local v8, "outPtr":I
    aput-char v2, v6, v7

    .line 1279
    array-length v11, v6

    if-lt v8, v11, :cond_4

    .line 1280
    iget-object v11, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_textBuffer:Lcom/flurry/org/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v11}, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v6

    .line 1281
    const/4 v7, 0x0

    .end local v8    # "outPtr":I
    .restart local v7    # "outPtr":I
    goto :goto_0

    .line 1270
    :cond_3
    invoke-static {v2}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v11

    if-nez v11, :cond_2

    goto :goto_1

    .end local v7    # "outPtr":I
    .restart local v8    # "outPtr":I
    :cond_4
    move v7, v8

    .end local v8    # "outPtr":I
    .restart local v7    # "outPtr":I
    goto :goto_0
.end method

.method private final _skipCComment()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x2a

    .line 1525
    :cond_0
    :goto_0
    iget v1, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    iget v2, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputEnd:I

    if-lt v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->loadMore()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1526
    :cond_1
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    iget v2, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    aget-char v0, v1, v2

    .line 1527
    .local v0, "i":I
    if-gt v0, v4, :cond_0

    .line 1528
    if-ne v0, v4, :cond_4

    .line 1529
    iget v1, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    iget v2, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputEnd:I

    if-lt v1, v2, :cond_3

    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->loadMore()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1549
    .end local v0    # "i":I
    :cond_2
    const-string v1, " in a comment"

    invoke-virtual {p0, v1}, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_reportInvalidEOF(Ljava/lang/String;)V

    .line 1550
    :goto_1
    return-void

    .line 1532
    .restart local v0    # "i":I
    :cond_3
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    iget v2, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    aget-char v1, v1, v2

    const/16 v2, 0x2f

    if-ne v1, v2, :cond_0

    .line 1533
    iget v1, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    goto :goto_1

    .line 1538
    :cond_4
    const/16 v1, 0x20

    if-ge v0, v1, :cond_0

    .line 1539
    const/16 v1, 0xa

    if-ne v0, v1, :cond_5

    .line 1540
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_skipLF()V

    goto :goto_0

    .line 1541
    :cond_5
    const/16 v1, 0xd

    if-ne v0, v1, :cond_6

    .line 1542
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_skipCR()V

    goto :goto_0

    .line 1543
    :cond_6
    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    .line 1544
    invoke-virtual {p0, v0}, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_throwInvalidSpace(I)V

    goto :goto_0
.end method

.method private final _skipComment()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x2f

    .line 1503
    sget-object v1, Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;->ALLOW_COMMENTS:Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;

    invoke-virtual {p0, v1}, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->isEnabled(Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1504
    const-string v1, "maybe a (non-standard) comment? (not recognized as one since Feature \'ALLOW_COMMENTS\' not enabled for parser)"

    invoke-virtual {p0, v4, v1}, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_reportUnexpectedChar(ILjava/lang/String;)V

    .line 1507
    :cond_0
    iget v1, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    iget v2, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputEnd:I

    if-lt v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->loadMore()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1508
    const-string v1, " in a comment"

    invoke-virtual {p0, v1}, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_reportInvalidEOF(Ljava/lang/String;)V

    .line 1510
    :cond_1
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    iget v2, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    aget-char v0, v1, v2

    .line 1511
    .local v0, "c":C
    if-ne v0, v4, :cond_2

    .line 1512
    invoke-direct {p0}, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_skipCppComment()V

    .line 1518
    :goto_0
    return-void

    .line 1513
    :cond_2
    const/16 v1, 0x2a

    if-ne v0, v1, :cond_3

    .line 1514
    invoke-direct {p0}, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_skipCComment()V

    goto :goto_0

    .line 1516
    :cond_3
    const-string v1, "was expecting either \'*\' or \'/\' for a comment"

    invoke-virtual {p0, v0, v1}, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_reportUnexpectedChar(ILjava/lang/String;)V

    goto :goto_0
.end method

.method private final _skipCppComment()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 1556
    :cond_0
    :goto_0
    iget v1, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    iget v2, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputEnd:I

    if-lt v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->loadMore()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1557
    :cond_1
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    iget v2, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    aget-char v0, v1, v2

    .line 1558
    .local v0, "i":I
    const/16 v1, 0x20

    if-ge v0, v1, :cond_0

    .line 1559
    const/16 v1, 0xa

    if-ne v0, v1, :cond_3

    .line 1560
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_skipLF()V

    .line 1570
    .end local v0    # "i":I
    :cond_2
    :goto_1
    return-void

    .line 1562
    .restart local v0    # "i":I
    :cond_3
    const/16 v1, 0xd

    if-ne v0, v1, :cond_4

    .line 1563
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_skipCR()V

    goto :goto_1

    .line 1565
    :cond_4
    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    .line 1566
    invoke-virtual {p0, v0}, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_throwInvalidSpace(I)V

    goto :goto_0
.end method

.method private final _skipWS()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x20

    .line 1453
    :cond_0
    :goto_0
    iget v1, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    iget v2, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputEnd:I

    if-lt v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->loadMore()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1454
    :cond_1
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    iget v2, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    aget-char v0, v1, v2

    .line 1455
    .local v0, "i":I
    if-le v0, v4, :cond_3

    .line 1456
    const/16 v1, 0x2f

    if-eq v0, v1, :cond_2

    .line 1457
    return v0

    .line 1459
    :cond_2
    invoke-direct {p0}, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_skipComment()V

    goto :goto_0

    .line 1460
    :cond_3
    if-eq v0, v4, :cond_0

    .line 1461
    const/16 v1, 0xa

    if-ne v0, v1, :cond_4

    .line 1462
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_skipLF()V

    goto :goto_0

    .line 1463
    :cond_4
    const/16 v1, 0xd

    if-ne v0, v1, :cond_5

    .line 1464
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_skipCR()V

    goto :goto_0

    .line 1465
    :cond_5
    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    .line 1466
    invoke-virtual {p0, v0}, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_throwInvalidSpace(I)V

    goto :goto_0

    .line 1470
    .end local v0    # "i":I
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected end-of-input within/between "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_parsingContext:Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v2}, Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;->getTypeDesc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " entries"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_constructError(Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/JsonParseException;

    move-result-object v1

    throw v1
.end method

.method private final _skipWSOrEnd()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x20

    .line 1476
    :cond_0
    :goto_0
    iget v1, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    iget v2, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputEnd:I

    if-lt v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->loadMore()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1477
    :cond_1
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    iget v2, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    aget-char v0, v1, v2

    .line 1478
    .local v0, "i":I
    if-le v0, v4, :cond_2

    .line 1479
    const/16 v1, 0x2f

    if-ne v0, v1, :cond_6

    .line 1480
    invoke-direct {p0}, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_skipComment()V

    goto :goto_0

    .line 1485
    :cond_2
    if-eq v0, v4, :cond_0

    .line 1486
    const/16 v1, 0xa

    if-ne v0, v1, :cond_3

    .line 1487
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_skipLF()V

    goto :goto_0

    .line 1488
    :cond_3
    const/16 v1, 0xd

    if-ne v0, v1, :cond_4

    .line 1489
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_skipCR()V

    goto :goto_0

    .line 1490
    :cond_4
    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    .line 1491
    invoke-virtual {p0, v0}, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_throwInvalidSpace(I)V

    goto :goto_0

    .line 1496
    .end local v0    # "i":I
    :cond_5
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_handleEOF()V

    .line 1497
    const/4 v0, -0x1

    :cond_6
    return v0
.end method

.method private final _verifyNoLeadingZeroes()C
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x39

    const/16 v1, 0x30

    .line 905
    iget v2, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    iget v3, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputEnd:I

    if-lt v2, v3, :cond_1

    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->loadMore()Z

    move-result v2

    if-nez v2, :cond_1

    move v0, v1

    .line 930
    :cond_0
    :goto_0
    return v0

    .line 908
    :cond_1
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    iget v3, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    aget-char v0, v2, v3

    .line 910
    .local v0, "ch":C
    if-lt v0, v1, :cond_2

    if-le v0, v4, :cond_3

    :cond_2
    move v0, v1

    .line 911
    goto :goto_0

    .line 913
    :cond_3
    sget-object v2, Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;->ALLOW_NUMERIC_LEADING_ZEROS:Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;

    invoke-virtual {p0, v2}, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->isEnabled(Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 914
    const-string v2, "Leading zeroes not allowed"

    invoke-virtual {p0, v2}, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->reportInvalidNumber(Ljava/lang/String;)V

    .line 917
    :cond_4
    iget v2, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    .line 918
    if-ne v0, v1, :cond_0

    .line 919
    :cond_5
    iget v2, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    iget v3, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputEnd:I

    if-lt v2, v3, :cond_6

    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->loadMore()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 920
    :cond_6
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    iget v3, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    aget-char v0, v2, v3

    .line 921
    if-lt v0, v1, :cond_7

    if-le v0, v4, :cond_8

    :cond_7
    move v0, v1

    .line 922
    goto :goto_0

    .line 924
    :cond_8
    iget v2, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    .line 925
    if-eq v0, v1, :cond_5

    goto :goto_0
.end method

.method private final parseNumberText2(Z)Lcom/flurry/org/codehaus/jackson/JsonToken;
    .locals 14
    .param p1, "negative"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    const/16 v13, 0x2d

    const/16 v12, 0x39

    const/16 v11, 0x30

    .line 780
    iget-object v8, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_textBuffer:Lcom/flurry/org/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v8}, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->emptyAndGetCurrentSegment()[C

    move-result-object v5

    .line 781
    .local v5, "outBuf":[C
    const/4 v6, 0x0

    .line 784
    .local v6, "outPtr":I
    if-eqz p1, :cond_0

    .line 785
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "outPtr":I
    .local v7, "outPtr":I
    aput-char v13, v5, v6

    move v6, v7

    .line 789
    .end local v7    # "outPtr":I
    .restart local v6    # "outPtr":I
    :cond_0
    const/4 v4, 0x0

    .line 790
    .local v4, "intLen":I
    iget v8, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    iget v9, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputEnd:I

    if-ge v8, v9, :cond_d

    iget-object v8, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    iget v9, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    add-int/lit8 v10, v9, 0x1

    iput v10, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    aget-char v0, v8, v9

    .line 791
    .local v0, "c":C
    :goto_0
    if-ne v0, v11, :cond_1

    .line 792
    invoke-direct {p0}, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_verifyNoLeadingZeroes()C

    move-result v0

    .line 794
    :cond_1
    const/4 v1, 0x0

    .line 798
    .local v1, "eof":Z
    :goto_1
    if-lt v0, v11, :cond_17

    if-gt v0, v12, :cond_17

    .line 799
    add-int/lit8 v4, v4, 0x1

    .line 800
    array-length v8, v5

    if-lt v6, v8, :cond_2

    .line 801
    iget-object v8, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_textBuffer:Lcom/flurry/org/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v8}, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v5

    .line 802
    const/4 v6, 0x0

    .line 804
    :cond_2
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "outPtr":I
    .restart local v7    # "outPtr":I
    aput-char v0, v5, v6

    .line 805
    iget v8, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    iget v9, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputEnd:I

    if-lt v8, v9, :cond_e

    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->loadMore()Z

    move-result v8

    if-nez v8, :cond_e

    .line 807
    const/4 v0, 0x0

    .line 808
    const/4 v1, 0x1

    .line 814
    :goto_2
    if-nez v4, :cond_3

    .line 815
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Missing integer part (next char "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v0}, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_getCharDesc(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->reportInvalidNumber(Ljava/lang/String;)V

    .line 818
    :cond_3
    const/4 v3, 0x0

    .line 820
    .local v3, "fractLen":I
    const/16 v8, 0x2e

    if-ne v0, v8, :cond_16

    .line 821
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "outPtr":I
    .restart local v6    # "outPtr":I
    aput-char v0, v5, v7

    .line 825
    :goto_3
    iget v8, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    iget v9, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputEnd:I

    if-lt v8, v9, :cond_f

    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->loadMore()Z

    move-result v8

    if-nez v8, :cond_f

    .line 826
    const/4 v1, 0x1

    .line 841
    :cond_4
    if-nez v3, :cond_5

    .line 842
    const-string v8, "Decimal point not followed by a digit"

    invoke-virtual {p0, v0, v8}, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->reportUnexpectedNumberChar(ILjava/lang/String;)V

    .line 846
    :cond_5
    :goto_4
    const/4 v2, 0x0

    .line 847
    .local v2, "expLen":I
    const/16 v8, 0x65

    if-eq v0, v8, :cond_6

    const/16 v8, 0x45

    if-ne v0, v8, :cond_b

    .line 848
    :cond_6
    array-length v8, v5

    if-lt v6, v8, :cond_7

    .line 849
    iget-object v8, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_textBuffer:Lcom/flurry/org/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v8}, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v5

    .line 850
    const/4 v6, 0x0

    .line 852
    :cond_7
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "outPtr":I
    .restart local v7    # "outPtr":I
    aput-char v0, v5, v6

    .line 854
    iget v8, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    iget v9, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputEnd:I

    if-ge v8, v9, :cond_11

    iget-object v8, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    iget v9, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    add-int/lit8 v10, v9, 0x1

    iput v10, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    aget-char v0, v8, v9

    .line 857
    :goto_5
    if-eq v0, v13, :cond_8

    const/16 v8, 0x2b

    if-ne v0, v8, :cond_15

    .line 858
    :cond_8
    array-length v8, v5

    if-lt v7, v8, :cond_14

    .line 859
    iget-object v8, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_textBuffer:Lcom/flurry/org/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v8}, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v5

    .line 860
    const/4 v6, 0x0

    .line 862
    .end local v7    # "outPtr":I
    .restart local v6    # "outPtr":I
    :goto_6
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "outPtr":I
    .restart local v7    # "outPtr":I
    aput-char v0, v5, v6

    .line 864
    iget v8, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    iget v9, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputEnd:I

    if-ge v8, v9, :cond_12

    iget-object v8, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    iget v9, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    add-int/lit8 v10, v9, 0x1

    iput v10, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    aget-char v0, v8, v9

    :goto_7
    move v6, v7

    .line 869
    .end local v7    # "outPtr":I
    .restart local v6    # "outPtr":I
    :goto_8
    if-gt v0, v12, :cond_a

    if-lt v0, v11, :cond_a

    .line 870
    add-int/lit8 v2, v2, 0x1

    .line 871
    array-length v8, v5

    if-lt v6, v8, :cond_9

    .line 872
    iget-object v8, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_textBuffer:Lcom/flurry/org/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v8}, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v5

    .line 873
    const/4 v6, 0x0

    .line 875
    :cond_9
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "outPtr":I
    .restart local v7    # "outPtr":I
    aput-char v0, v5, v6

    .line 876
    iget v8, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    iget v9, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputEnd:I

    if-lt v8, v9, :cond_13

    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->loadMore()Z

    move-result v8

    if-nez v8, :cond_13

    .line 877
    const/4 v1, 0x1

    move v6, v7

    .line 883
    .end local v7    # "outPtr":I
    .restart local v6    # "outPtr":I
    :cond_a
    if-nez v2, :cond_b

    .line 884
    const-string v8, "Exponent indicator not followed by a digit"

    invoke-virtual {p0, v0, v8}, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->reportUnexpectedNumberChar(ILjava/lang/String;)V

    .line 889
    :cond_b
    if-nez v1, :cond_c

    .line 890
    iget v8, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    add-int/lit8 v8, v8, -0x1

    iput v8, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    .line 892
    :cond_c
    iget-object v8, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_textBuffer:Lcom/flurry/org/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v8, v6}, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->setCurrentLength(I)V

    .line 894
    invoke-virtual {p0, p1, v4, v3, v2}, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->reset(ZIII)Lcom/flurry/org/codehaus/jackson/JsonToken;

    move-result-object v8

    return-object v8

    .line 790
    .end local v0    # "c":C
    .end local v1    # "eof":Z
    .end local v2    # "expLen":I
    .end local v3    # "fractLen":I
    :cond_d
    const-string v8, "No digit following minus sign"

    invoke-virtual {p0, v8}, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->getNextChar(Ljava/lang/String;)C

    move-result v0

    goto/16 :goto_0

    .line 811
    .end local v6    # "outPtr":I
    .restart local v0    # "c":C
    .restart local v1    # "eof":Z
    .restart local v7    # "outPtr":I
    :cond_e
    iget-object v8, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    iget v9, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    add-int/lit8 v10, v9, 0x1

    iput v10, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    aget-char v0, v8, v9

    move v6, v7

    .end local v7    # "outPtr":I
    .restart local v6    # "outPtr":I
    goto/16 :goto_1

    .line 829
    .restart local v3    # "fractLen":I
    :cond_f
    iget-object v8, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    iget v9, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    add-int/lit8 v10, v9, 0x1

    iput v10, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    aget-char v0, v8, v9

    .line 830
    if-lt v0, v11, :cond_4

    if-gt v0, v12, :cond_4

    .line 833
    add-int/lit8 v3, v3, 0x1

    .line 834
    array-length v8, v5

    if-lt v6, v8, :cond_10

    .line 835
    iget-object v8, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_textBuffer:Lcom/flurry/org/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v8}, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v5

    .line 836
    const/4 v6, 0x0

    .line 838
    :cond_10
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "outPtr":I
    .restart local v7    # "outPtr":I
    aput-char v0, v5, v6

    move v6, v7

    .end local v7    # "outPtr":I
    .restart local v6    # "outPtr":I
    goto/16 :goto_3

    .line 854
    .end local v6    # "outPtr":I
    .restart local v2    # "expLen":I
    .restart local v7    # "outPtr":I
    :cond_11
    const-string v8, "expected a digit for number exponent"

    invoke-virtual {p0, v8}, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->getNextChar(Ljava/lang/String;)C

    move-result v0

    goto/16 :goto_5

    .line 864
    :cond_12
    const-string v8, "expected a digit for number exponent"

    invoke-virtual {p0, v8}, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->getNextChar(Ljava/lang/String;)C

    move-result v0

    goto :goto_7

    .line 880
    :cond_13
    iget-object v8, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    iget v9, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    add-int/lit8 v10, v9, 0x1

    iput v10, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    aget-char v0, v8, v9

    move v6, v7

    .end local v7    # "outPtr":I
    .restart local v6    # "outPtr":I
    goto/16 :goto_8

    .end local v6    # "outPtr":I
    .restart local v7    # "outPtr":I
    :cond_14
    move v6, v7

    .end local v7    # "outPtr":I
    .restart local v6    # "outPtr":I
    goto/16 :goto_6

    .end local v6    # "outPtr":I
    .restart local v7    # "outPtr":I
    :cond_15
    move v6, v7

    .end local v7    # "outPtr":I
    .restart local v6    # "outPtr":I
    goto/16 :goto_8

    .end local v2    # "expLen":I
    .end local v6    # "outPtr":I
    .restart local v7    # "outPtr":I
    :cond_16
    move v6, v7

    .end local v7    # "outPtr":I
    .restart local v6    # "outPtr":I
    goto/16 :goto_4

    .end local v3    # "fractLen":I
    :cond_17
    move v7, v6

    .end local v6    # "outPtr":I
    .restart local v7    # "outPtr":I
    goto/16 :goto_2
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
    .line 154
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_reader:Ljava/io/Reader;

    if-eqz v0, :cond_2

    .line 155
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_ioContext:Lcom/flurry/org/codehaus/jackson/io/IOContext;

    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/io/IOContext;->isResourceManaged()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;->AUTO_CLOSE_SOURCE:Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;

    invoke-virtual {p0, v0}, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->isEnabled(Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_reader:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    .line 158
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_reader:Ljava/io/Reader;

    .line 160
    :cond_2
    return-void
.end method

.method protected _decodeBase64(Lcom/flurry/org/codehaus/jackson/Base64Variant;)[B
    .locals 10
    .param p1, "b64variant"    # Lcom/flurry/org/codehaus/jackson/Base64Variant;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x3

    const/16 v8, 0x22

    const/4 v7, -0x2

    .line 1680
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_getByteArrayBuilder()Lcom/flurry/org/codehaus/jackson/util/ByteArrayBuilder;

    move-result-object v1

    .line 1687
    .local v1, "builder":Lcom/flurry/org/codehaus/jackson/util/ByteArrayBuilder;
    :cond_0
    :goto_0
    iget v4, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    iget v5, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputEnd:I

    if-lt v4, v5, :cond_1

    .line 1688
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->loadMoreGuaranteed()V

    .line 1690
    :cond_1
    iget-object v4, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    iget v5, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    aget-char v2, v4, v5

    .line 1691
    .local v2, "ch":C
    const/16 v4, 0x20

    if-le v2, v4, :cond_0

    .line 1692
    invoke-virtual {p1, v2}, Lcom/flurry/org/codehaus/jackson/Base64Variant;->decodeBase64Char(C)I

    move-result v0

    .line 1693
    .local v0, "bits":I
    if-gez v0, :cond_3

    .line 1694
    if-ne v2, v8, :cond_2

    .line 1695
    invoke-virtual {v1}, Lcom/flurry/org/codehaus/jackson/util/ByteArrayBuilder;->toByteArray()[B

    move-result-object v4

    .line 1764
    :goto_1
    return-object v4

    .line 1697
    :cond_2
    const/4 v4, 0x0

    invoke-virtual {p0, p1, v2, v4}, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_decodeBase64Escape(Lcom/flurry/org/codehaus/jackson/Base64Variant;CI)I

    move-result v0

    .line 1698
    if-ltz v0, :cond_0

    .line 1702
    :cond_3
    move v3, v0

    .line 1706
    .local v3, "decodedData":I
    iget v4, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    iget v5, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputEnd:I

    if-lt v4, v5, :cond_4

    .line 1707
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->loadMoreGuaranteed()V

    .line 1709
    :cond_4
    iget-object v4, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    iget v5, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    aget-char v2, v4, v5

    .line 1710
    invoke-virtual {p1, v2}, Lcom/flurry/org/codehaus/jackson/Base64Variant;->decodeBase64Char(C)I

    move-result v0

    .line 1711
    if-gez v0, :cond_5

    .line 1712
    const/4 v4, 0x1

    invoke-virtual {p0, p1, v2, v4}, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_decodeBase64Escape(Lcom/flurry/org/codehaus/jackson/Base64Variant;CI)I

    move-result v0

    .line 1714
    :cond_5
    shl-int/lit8 v4, v3, 0x6

    or-int v3, v4, v0

    .line 1717
    iget v4, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    iget v5, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputEnd:I

    if-lt v4, v5, :cond_6

    .line 1718
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->loadMoreGuaranteed()V

    .line 1720
    :cond_6
    iget-object v4, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    iget v5, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    aget-char v2, v4, v5

    .line 1721
    invoke-virtual {p1, v2}, Lcom/flurry/org/codehaus/jackson/Base64Variant;->decodeBase64Char(C)I

    move-result v0

    .line 1724
    if-gez v0, :cond_b

    .line 1725
    if-eq v0, v7, :cond_8

    .line 1727
    if-ne v2, v8, :cond_7

    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/Base64Variant;->usesPadding()Z

    move-result v4

    if-nez v4, :cond_7

    .line 1728
    shr-int/lit8 v3, v3, 0x4

    .line 1729
    invoke-virtual {v1, v3}, Lcom/flurry/org/codehaus/jackson/util/ByteArrayBuilder;->append(I)V

    .line 1730
    invoke-virtual {v1}, Lcom/flurry/org/codehaus/jackson/util/ByteArrayBuilder;->toByteArray()[B

    move-result-object v4

    goto :goto_1

    .line 1732
    :cond_7
    const/4 v4, 0x2

    invoke-virtual {p0, p1, v2, v4}, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_decodeBase64Escape(Lcom/flurry/org/codehaus/jackson/Base64Variant;CI)I

    move-result v0

    .line 1734
    :cond_8
    if-ne v0, v7, :cond_b

    .line 1736
    iget v4, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    iget v5, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputEnd:I

    if-lt v4, v5, :cond_9

    .line 1737
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->loadMoreGuaranteed()V

    .line 1739
    :cond_9
    iget-object v4, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    iget v5, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    aget-char v2, v4, v5

    .line 1740
    invoke-virtual {p1, v2}, Lcom/flurry/org/codehaus/jackson/Base64Variant;->usesPaddingChar(C)Z

    move-result v4

    if-nez v4, :cond_a

    .line 1741
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "expected padding character \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/Base64Variant;->getPaddingChar()C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, p1, v2, v9, v4}, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->reportInvalidBase64Char(Lcom/flurry/org/codehaus/jackson/Base64Variant;IILjava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object v4

    throw v4

    .line 1744
    :cond_a
    shr-int/lit8 v3, v3, 0x4

    .line 1745
    invoke-virtual {v1, v3}, Lcom/flurry/org/codehaus/jackson/util/ByteArrayBuilder;->append(I)V

    goto/16 :goto_0

    .line 1751
    :cond_b
    shl-int/lit8 v4, v3, 0x6

    or-int v3, v4, v0

    .line 1753
    iget v4, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    iget v5, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputEnd:I

    if-lt v4, v5, :cond_c

    .line 1754
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->loadMoreGuaranteed()V

    .line 1756
    :cond_c
    iget-object v4, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    iget v5, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    aget-char v2, v4, v5

    .line 1757
    invoke-virtual {p1, v2}, Lcom/flurry/org/codehaus/jackson/Base64Variant;->decodeBase64Char(C)I

    move-result v0

    .line 1758
    if-gez v0, :cond_f

    .line 1759
    if-eq v0, v7, :cond_e

    .line 1761
    if-ne v2, v8, :cond_d

    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/Base64Variant;->usesPadding()Z

    move-result v4

    if-nez v4, :cond_d

    .line 1762
    shr-int/lit8 v3, v3, 0x2

    .line 1763
    invoke-virtual {v1, v3}, Lcom/flurry/org/codehaus/jackson/util/ByteArrayBuilder;->appendTwoBytes(I)V

    .line 1764
    invoke-virtual {v1}, Lcom/flurry/org/codehaus/jackson/util/ByteArrayBuilder;->toByteArray()[B

    move-result-object v4

    goto/16 :goto_1

    .line 1766
    :cond_d
    invoke-virtual {p0, p1, v2, v9}, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_decodeBase64Escape(Lcom/flurry/org/codehaus/jackson/Base64Variant;CI)I

    move-result v0

    .line 1768
    :cond_e
    if-ne v0, v7, :cond_f

    .line 1774
    shr-int/lit8 v3, v3, 0x2

    .line 1775
    invoke-virtual {v1, v3}, Lcom/flurry/org/codehaus/jackson/util/ByteArrayBuilder;->appendTwoBytes(I)V

    goto/16 :goto_0

    .line 1781
    :cond_f
    shl-int/lit8 v4, v3, 0x6

    or-int v3, v4, v0

    .line 1782
    invoke-virtual {v1, v3}, Lcom/flurry/org/codehaus/jackson/util/ByteArrayBuilder;->appendThreeBytes(I)V

    goto/16 :goto_0
.end method

.method protected final _decodeEscaped()C
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 1576
    iget v5, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    iget v6, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputEnd:I

    if-lt v5, v6, :cond_0

    .line 1577
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->loadMore()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1578
    const-string v5, " in character escape sequence"

    invoke-virtual {p0, v5}, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_reportInvalidEOF(Ljava/lang/String;)V

    .line 1581
    :cond_0
    iget-object v5, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    iget v6, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    aget-char v0, v5, v6

    .line 1583
    .local v0, "c":C
    sparse-switch v0, :sswitch_data_0

    .line 1606
    invoke-virtual {p0, v0}, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_handleUnrecognizedCharacterEscape(C)C

    move-result v0

    .line 1624
    .end local v0    # "c":C
    :goto_0
    :sswitch_0
    return v0

    .line 1586
    .restart local v0    # "c":C
    :sswitch_1
    const/16 v0, 0x8

    goto :goto_0

    .line 1588
    :sswitch_2
    const/16 v0, 0x9

    goto :goto_0

    .line 1590
    :sswitch_3
    const/16 v0, 0xa

    goto :goto_0

    .line 1592
    :sswitch_4
    const/16 v0, 0xc

    goto :goto_0

    .line 1594
    :sswitch_5
    const/16 v0, 0xd

    goto :goto_0

    .line 1610
    :sswitch_6
    const/4 v4, 0x0

    .line 1611
    .local v4, "value":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    const/4 v5, 0x4

    if-ge v3, v5, :cond_3

    .line 1612
    iget v5, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    iget v6, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputEnd:I

    if-lt v5, v6, :cond_1

    .line 1613
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->loadMore()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1614
    const-string v5, " in character escape sequence"

    invoke-virtual {p0, v5}, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_reportInvalidEOF(Ljava/lang/String;)V

    .line 1617
    :cond_1
    iget-object v5, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    iget v6, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    aget-char v1, v5, v6

    .line 1618
    .local v1, "ch":I
    invoke-static {v1}, Lcom/flurry/org/codehaus/jackson/util/CharTypes;->charToHex(I)I

    move-result v2

    .line 1619
    .local v2, "digit":I
    if-gez v2, :cond_2

    .line 1620
    const-string v5, "expected a hex-digit for character escape sequence"

    invoke-virtual {p0, v1, v5}, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_reportUnexpectedChar(ILjava/lang/String;)V

    .line 1622
    :cond_2
    shl-int/lit8 v5, v4, 0x4

    or-int v4, v5, v2

    .line 1611
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1624
    .end local v1    # "ch":I
    .end local v2    # "digit":I
    :cond_3
    int-to-char v0, v4

    goto :goto_0

    .line 1583
    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_0
        0x2f -> :sswitch_0
        0x5c -> :sswitch_0
        0x62 -> :sswitch_1
        0x66 -> :sswitch_4
        0x6e -> :sswitch_3
        0x72 -> :sswitch_5
        0x74 -> :sswitch_2
        0x75 -> :sswitch_6
    .end sparse-switch
.end method

.method protected _finishString()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 1303
    iget v4, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    .line 1304
    .local v4, "ptr":I
    iget v2, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputEnd:I

    .line 1306
    .local v2, "inputLen":I
    if-ge v4, v2, :cond_2

    .line 1307
    invoke-static {}, Lcom/flurry/org/codehaus/jackson/util/CharTypes;->getInputCodeLatin1()[I

    move-result-object v1

    .line 1308
    .local v1, "codes":[I
    array-length v3, v1

    .line 1311
    .local v3, "maxCode":I
    :cond_0
    iget-object v5, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    aget-char v0, v5, v4

    .line 1312
    .local v0, "ch":I
    if-ge v0, v3, :cond_1

    aget v5, v1, v0

    if-eqz v5, :cond_1

    .line 1313
    const/16 v5, 0x22

    if-ne v0, v5, :cond_2

    .line 1314
    iget-object v5, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_textBuffer:Lcom/flurry/org/codehaus/jackson/util/TextBuffer;

    iget-object v6, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    iget v7, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    iget v8, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    sub-int v8, v4, v8

    invoke-virtual {v5, v6, v7, v8}, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->resetWithShared([CII)V

    .line 1315
    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    .line 1331
    .end local v0    # "ch":I
    .end local v1    # "codes":[I
    .end local v3    # "maxCode":I
    :goto_0
    return-void

    .line 1321
    .restart local v0    # "ch":I
    .restart local v1    # "codes":[I
    .restart local v3    # "maxCode":I
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 1322
    if-lt v4, v2, :cond_0

    .line 1328
    .end local v0    # "ch":I
    .end local v1    # "codes":[I
    .end local v3    # "maxCode":I
    :cond_2
    iget-object v5, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_textBuffer:Lcom/flurry/org/codehaus/jackson/util/TextBuffer;

    iget-object v6, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    iget v7, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    iget v8, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    sub-int v8, v4, v8

    invoke-virtual {v5, v6, v7, v8}, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->resetWithCopy([CII)V

    .line 1329
    iput v4, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    .line 1330
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_finishString2()V

    goto :goto_0
.end method

.method protected _finishString2()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x5c

    const/16 v8, 0x22

    .line 1336
    iget-object v5, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_textBuffer:Lcom/flurry/org/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v5}, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->getCurrentSegment()[C

    move-result-object v2

    .line 1337
    .local v2, "outBuf":[C
    iget-object v5, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_textBuffer:Lcom/flurry/org/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v5}, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->getCurrentSegmentSize()I

    move-result v3

    .line 1340
    .local v3, "outPtr":I
    :goto_0
    iget v5, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    iget v6, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputEnd:I

    if-lt v5, v6, :cond_0

    .line 1341
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->loadMore()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1342
    const-string v5, ": was expecting closing quote for a string value"

    invoke-virtual {p0, v5}, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_reportInvalidEOF(Ljava/lang/String;)V

    .line 1345
    :cond_0
    iget-object v5, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    iget v6, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    aget-char v0, v5, v6

    .line 1346
    .local v0, "c":C
    move v1, v0

    .line 1347
    .local v1, "i":I
    if-gt v1, v9, :cond_1

    .line 1348
    if-ne v1, v9, :cond_3

    .line 1353
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_decodeEscaped()C

    move-result v0

    .line 1364
    :cond_1
    :goto_1
    array-length v5, v2

    if-lt v3, v5, :cond_2

    .line 1365
    iget-object v5, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_textBuffer:Lcom/flurry/org/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v5}, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v2

    .line 1366
    const/4 v3, 0x0

    .line 1369
    :cond_2
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "outPtr":I
    .local v4, "outPtr":I
    aput-char v0, v2, v3

    move v3, v4

    .line 1370
    .end local v4    # "outPtr":I
    .restart local v3    # "outPtr":I
    goto :goto_0

    .line 1354
    :cond_3
    if-gt v1, v8, :cond_1

    .line 1355
    if-ne v1, v8, :cond_4

    .line 1371
    iget-object v5, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_textBuffer:Lcom/flurry/org/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v5, v3}, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->setCurrentLength(I)V

    .line 1372
    return-void

    .line 1358
    :cond_4
    const/16 v5, 0x20

    if-ge v1, v5, :cond_1

    .line 1359
    const-string v5, "string value"

    invoke-virtual {p0, v1, v5}, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_throwUnquotedSpace(ILjava/lang/String;)V

    goto :goto_1
.end method

.method protected final _getText2(Lcom/flurry/org/codehaus/jackson/JsonToken;)Ljava/lang/String;
    .locals 2
    .param p1, "t"    # Lcom/flurry/org/codehaus/jackson/JsonToken;

    .prologue
    .line 209
    if-nez p1, :cond_0

    .line 210
    const/4 v0, 0x0

    .line 222
    :goto_0
    return-object v0

    .line 212
    :cond_0
    sget-object v0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser$1;->$SwitchMap$org$codehaus$jackson$JsonToken:[I

    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonToken;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 222
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonToken;->asString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 214
    :pswitch_0
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_parsingContext:Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;->getCurrentName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 220
    :pswitch_1
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_textBuffer:Lcom/flurry/org/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->contentsAsString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 212
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method protected final _handleApostropheValue()Lcom/flurry/org/codehaus/jackson/JsonToken;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x5c

    const/16 v8, 0x27

    .line 1208
    iget-object v5, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_textBuffer:Lcom/flurry/org/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v5}, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->emptyAndGetCurrentSegment()[C

    move-result-object v2

    .line 1209
    .local v2, "outBuf":[C
    iget-object v5, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_textBuffer:Lcom/flurry/org/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v5}, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->getCurrentSegmentSize()I

    move-result v3

    .line 1212
    .local v3, "outPtr":I
    :goto_0
    iget v5, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    iget v6, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputEnd:I

    if-lt v5, v6, :cond_0

    .line 1213
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->loadMore()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1214
    const-string v5, ": was expecting closing quote for a string value"

    invoke-virtual {p0, v5}, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_reportInvalidEOF(Ljava/lang/String;)V

    .line 1217
    :cond_0
    iget-object v5, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    iget v6, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    aget-char v0, v5, v6

    .line 1218
    .local v0, "c":C
    move v1, v0

    .line 1219
    .local v1, "i":I
    if-gt v1, v9, :cond_1

    .line 1220
    if-ne v1, v9, :cond_3

    .line 1225
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_decodeEscaped()C

    move-result v0

    .line 1236
    :cond_1
    :goto_1
    array-length v5, v2

    if-lt v3, v5, :cond_2

    .line 1237
    iget-object v5, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_textBuffer:Lcom/flurry/org/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v5}, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v2

    .line 1238
    const/4 v3, 0x0

    .line 1241
    :cond_2
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "outPtr":I
    .local v4, "outPtr":I
    aput-char v0, v2, v3

    move v3, v4

    .line 1242
    .end local v4    # "outPtr":I
    .restart local v3    # "outPtr":I
    goto :goto_0

    .line 1226
    :cond_3
    if-gt v1, v8, :cond_1

    .line 1227
    if-ne v1, v8, :cond_4

    .line 1243
    iget-object v5, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_textBuffer:Lcom/flurry/org/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v5, v3}, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->setCurrentLength(I)V

    .line 1244
    sget-object v5, Lcom/flurry/org/codehaus/jackson/JsonToken;->VALUE_STRING:Lcom/flurry/org/codehaus/jackson/JsonToken;

    return-object v5

    .line 1230
    :cond_4
    const/16 v5, 0x20

    if-ge v1, v5, :cond_1

    .line 1231
    const-string v5, "string value"

    invoke-virtual {p0, v1, v5}, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_throwUnquotedSpace(ILjava/lang/String;)V

    goto :goto_1
.end method

.method protected _handleInvalidNumberStart(IZ)Lcom/flurry/org/codehaus/jackson/JsonToken;
    .locals 9
    .param p1, "ch"    # I
    .param p2, "negative"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x3

    const-wide/high16 v4, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    const-wide/high16 v2, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    .line 940
    const/16 v1, 0x49

    if-ne p1, v1, :cond_4

    .line 941
    iget v1, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    iget v6, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputEnd:I

    if-lt v1, v6, :cond_0

    .line 942
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->loadMore()Z

    move-result v1

    if-nez v1, :cond_0

    .line 943
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_reportInvalidEOFInValue()V

    .line 946
    :cond_0
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    iget v6, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    aget-char p1, v1, v6

    .line 947
    const/16 v1, 0x4e

    if-ne p1, v1, :cond_5

    .line 948
    if-eqz p2, :cond_1

    const-string v0, "-INF"

    .line 949
    .local v0, "match":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0, v0, v8}, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_matchToken(Ljava/lang/String;I)V

    .line 950
    sget-object v1, Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;->ALLOW_NON_NUMERIC_NUMBERS:Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;

    invoke-virtual {p0, v1}, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->isEnabled(Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 951
    if-eqz p2, :cond_2

    :goto_1
    invoke-virtual {p0, v0, v2, v3}, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->resetAsNaN(Ljava/lang/String;D)Lcom/flurry/org/codehaus/jackson/JsonToken;

    move-result-object v1

    .line 964
    .end local v0    # "match":Ljava/lang/String;
    :goto_2
    return-object v1

    .line 948
    :cond_1
    const-string v0, "+INF"

    goto :goto_0

    .restart local v0    # "match":Ljava/lang/String;
    :cond_2
    move-wide v2, v4

    .line 951
    goto :goto_1

    .line 953
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Non-standard token \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\': enable JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS to allow"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_reportError(Ljava/lang/String;)V

    .line 963
    .end local v0    # "match":Ljava/lang/String;
    :cond_4
    :goto_3
    const-string v1, "expected digit (0-9) to follow minus sign, for valid numeric value"

    invoke-virtual {p0, p1, v1}, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->reportUnexpectedNumberChar(ILjava/lang/String;)V

    .line 964
    const/4 v1, 0x0

    goto :goto_2

    .line 954
    :cond_5
    const/16 v1, 0x6e

    if-ne p1, v1, :cond_4

    .line 955
    if-eqz p2, :cond_6

    const-string v0, "-Infinity"

    .line 956
    .restart local v0    # "match":Ljava/lang/String;
    :goto_4
    invoke-virtual {p0, v0, v8}, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_matchToken(Ljava/lang/String;I)V

    .line 957
    sget-object v1, Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;->ALLOW_NON_NUMERIC_NUMBERS:Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;

    invoke-virtual {p0, v1}, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->isEnabled(Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 958
    if-eqz p2, :cond_7

    :goto_5
    invoke-virtual {p0, v0, v2, v3}, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->resetAsNaN(Ljava/lang/String;D)Lcom/flurry/org/codehaus/jackson/JsonToken;

    move-result-object v1

    goto :goto_2

    .line 955
    .end local v0    # "match":Ljava/lang/String;
    :cond_6
    const-string v0, "+Infinity"

    goto :goto_4

    .restart local v0    # "match":Ljava/lang/String;
    :cond_7
    move-wide v2, v4

    .line 958
    goto :goto_5

    .line 960
    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Non-standard token \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\': enable JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS to allow"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_reportError(Ljava/lang/String;)V

    goto :goto_3
.end method

.method protected final _handleUnexpectedValue(I)Lcom/flurry/org/codehaus/jackson/JsonToken;
    .locals 4
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 1170
    sparse-switch p1, :sswitch_data_0

    .line 1198
    :cond_0
    :goto_0
    const-string v0, "expected a valid value (number, String, array, object, \'true\', \'false\' or \'null\')"

    invoke-virtual {p0, p1, v0}, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_reportUnexpectedChar(ILjava/lang/String;)V

    .line 1199
    const/4 v0, 0x0

    :goto_1
    return-object v0

    .line 1179
    :sswitch_0
    sget-object v0, Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;->ALLOW_SINGLE_QUOTES:Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;

    invoke-virtual {p0, v0}, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->isEnabled(Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1180
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_handleApostropheValue()Lcom/flurry/org/codehaus/jackson/JsonToken;

    move-result-object v0

    goto :goto_1

    .line 1184
    :sswitch_1
    const-string v0, "NaN"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_matchToken(Ljava/lang/String;I)V

    .line 1185
    sget-object v0, Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;->ALLOW_NON_NUMERIC_NUMBERS:Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;

    invoke-virtual {p0, v0}, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->isEnabled(Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1186
    const-string v0, "NaN"

    const-wide/high16 v2, 0x7ff8000000000000L    # Double.NaN

    invoke-virtual {p0, v0, v2, v3}, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->resetAsNaN(Ljava/lang/String;D)Lcom/flurry/org/codehaus/jackson/JsonToken;

    move-result-object v0

    goto :goto_1

    .line 1188
    :cond_1
    const-string v0, "Non-standard token \'NaN\': enable JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS to allow"

    invoke-virtual {p0, v0}, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_reportError(Ljava/lang/String;)V

    goto :goto_0

    .line 1191
    :sswitch_2
    iget v0, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    iget v1, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputEnd:I

    if-lt v0, v1, :cond_2

    .line 1192
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->loadMore()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1193
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_reportInvalidEOFInValue()V

    .line 1196
    :cond_2
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    iget v1, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    aget-char v0, v0, v1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_handleInvalidNumberStart(IZ)Lcom/flurry/org/codehaus/jackson/JsonToken;

    move-result-object v0

    goto :goto_1

    .line 1170
    nop

    :sswitch_data_0
    .sparse-switch
        0x27 -> :sswitch_0
        0x2b -> :sswitch_2
        0x4e -> :sswitch_1
    .end sparse-switch
.end method

.method protected final _handleUnusualFieldName(I)Ljava/lang/String;
    .locals 11
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 1079
    const/16 v8, 0x27

    if-ne p1, v8, :cond_0

    sget-object v8, Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;->ALLOW_SINGLE_QUOTES:Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;

    invoke-virtual {p0, v8}, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->isEnabled(Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1080
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_parseApostropheFieldName()Ljava/lang/String;

    move-result-object v8

    .line 1124
    :goto_0
    return-object v8

    .line 1083
    :cond_0
    sget-object v8, Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;->ALLOW_UNQUOTED_FIELD_NAMES:Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;

    invoke-virtual {p0, v8}, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->isEnabled(Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 1084
    const-string v8, "was expecting double-quote to start field name"

    invoke-virtual {p0, p1, v8}, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_reportUnexpectedChar(ILjava/lang/String;)V

    .line 1086
    :cond_1
    invoke-static {}, Lcom/flurry/org/codehaus/jackson/util/CharTypes;->getInputCodeLatin1JsNames()[I

    move-result-object v1

    .line 1087
    .local v1, "codes":[I
    array-length v5, v1

    .line 1092
    .local v5, "maxCode":I
    if-ge p1, v5, :cond_6

    .line 1093
    aget v8, v1, p1

    if-nez v8, :cond_5

    const/16 v8, 0x30

    if-lt p1, v8, :cond_2

    const/16 v8, 0x39

    if-le p1, v8, :cond_5

    :cond_2
    const/4 v2, 0x1

    .line 1097
    .local v2, "firstOk":Z
    :goto_1
    if-nez v2, :cond_3

    .line 1098
    const-string v8, "was expecting either valid name character (for unquoted name) or double-quote (for quoted) to start field name"

    invoke-virtual {p0, p1, v8}, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_reportUnexpectedChar(ILjava/lang/String;)V

    .line 1100
    :cond_3
    iget v6, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    .line 1101
    .local v6, "ptr":I
    const/4 v3, 0x0

    .line 1102
    .local v3, "hash":I
    iget v4, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputEnd:I

    .line 1104
    .local v4, "inputLen":I
    if-ge v6, v4, :cond_9

    .line 1106
    :cond_4
    iget-object v8, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    aget-char v0, v8, v6

    .line 1107
    .local v0, "ch":I
    if-ge v0, v5, :cond_7

    .line 1108
    aget v8, v1, v0

    if-eqz v8, :cond_8

    .line 1109
    iget v8, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    add-int/lit8 v7, v8, -0x1

    .line 1110
    .local v7, "start":I
    iput v6, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    .line 1111
    iget-object v8, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_symbols:Lcom/flurry/org/codehaus/jackson/sym/CharsToNameCanonicalizer;

    iget-object v9, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    sub-int v10, v6, v7

    invoke-virtual {v8, v9, v7, v10, v3}, Lcom/flurry/org/codehaus/jackson/sym/CharsToNameCanonicalizer;->findSymbol([CIII)Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 1093
    .end local v0    # "ch":I
    .end local v2    # "firstOk":Z
    .end local v3    # "hash":I
    .end local v4    # "inputLen":I
    .end local v6    # "ptr":I
    .end local v7    # "start":I
    :cond_5
    const/4 v2, 0x0

    goto :goto_1

    .line 1095
    :cond_6
    int-to-char v8, p1

    invoke-static {v8}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v2

    .restart local v2    # "firstOk":Z
    goto :goto_1

    .line 1113
    .restart local v0    # "ch":I
    .restart local v3    # "hash":I
    .restart local v4    # "inputLen":I
    .restart local v6    # "ptr":I
    :cond_7
    int-to-char v8, v0

    invoke-static {v8}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v8

    if-nez v8, :cond_8

    .line 1114
    iget v8, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    add-int/lit8 v7, v8, -0x1

    .line 1115
    .restart local v7    # "start":I
    iput v6, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    .line 1116
    iget-object v8, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_symbols:Lcom/flurry/org/codehaus/jackson/sym/CharsToNameCanonicalizer;

    iget-object v9, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    sub-int v10, v6, v7

    invoke-virtual {v8, v9, v7, v10, v3}, Lcom/flurry/org/codehaus/jackson/sym/CharsToNameCanonicalizer;->findSymbol([CIII)Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 1118
    .end local v7    # "start":I
    :cond_8
    mul-int/lit8 v8, v3, 0x1f

    add-int v3, v8, v0

    .line 1119
    add-int/lit8 v6, v6, 0x1

    .line 1120
    if-lt v6, v4, :cond_4

    .line 1122
    .end local v0    # "ch":I
    :cond_9
    iget v8, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    add-int/lit8 v7, v8, -0x1

    .line 1123
    .restart local v7    # "start":I
    iput v6, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    .line 1124
    invoke-direct {p0, v7, v3, v1}, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_parseUnusualFieldName2(II[I)Ljava/lang/String;

    move-result-object v8

    goto :goto_0
.end method

.method protected final _matchToken(Ljava/lang/String;I)V
    .locals 5
    .param p1, "matchStr"    # Ljava/lang/String;
    .param p2, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1635
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 1638
    .local v1, "len":I
    :cond_0
    iget v2, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    iget v3, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputEnd:I

    if-lt v2, v3, :cond_1

    .line 1639
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->loadMore()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1640
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_reportInvalidEOFInValue()V

    .line 1643
    :cond_1
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    iget v3, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    aget-char v2, v2, v3

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v2, v3, :cond_2

    .line 1644
    invoke-virtual {p1, v4, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\'null\', \'true\', \'false\' or NaN"

    invoke-virtual {p0, v2, v3}, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_reportInvalidToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 1646
    :cond_2
    iget v2, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    .line 1647
    add-int/lit8 p2, p2, 0x1

    if-lt p2, v1, :cond_0

    .line 1650
    iget v2, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    iget v3, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputEnd:I

    if-lt v2, v3, :cond_4

    .line 1651
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->loadMore()Z

    move-result v2

    if-nez v2, :cond_4

    .line 1664
    :cond_3
    :goto_0
    return-void

    .line 1655
    :cond_4
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    iget v3, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    aget-char v0, v2, v3

    .line 1656
    .local v0, "c":C
    const/16 v2, 0x30

    if-lt v0, v2, :cond_3

    const/16 v2, 0x5d

    if-eq v0, v2, :cond_3

    const/16 v2, 0x7d

    if-eq v0, v2, :cond_3

    .line 1660
    invoke-static {v0}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1661
    iget v2, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    .line 1662
    invoke-virtual {p1, v4, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\'null\', \'true\', \'false\' or NaN"

    invoke-virtual {p0, v2, v3}, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_reportInvalidToken(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected final _parseApostropheFieldName()Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x27

    .line 1131
    iget v5, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    .line 1132
    .local v5, "ptr":I
    const/4 v2, 0x0

    .line 1133
    .local v2, "hash":I
    iget v3, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputEnd:I

    .line 1135
    .local v3, "inputLen":I
    if-ge v5, v3, :cond_2

    .line 1136
    invoke-static {}, Lcom/flurry/org/codehaus/jackson/util/CharTypes;->getInputCodeLatin1()[I

    move-result-object v1

    .line 1137
    .local v1, "codes":[I
    array-length v4, v1

    .line 1140
    .local v4, "maxCode":I
    :cond_0
    iget-object v7, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    aget-char v0, v7, v5

    .line 1141
    .local v0, "ch":I
    if-ne v0, v8, :cond_1

    .line 1142
    iget v6, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    .line 1143
    .local v6, "start":I
    add-int/lit8 v7, v5, 0x1

    iput v7, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    .line 1144
    iget-object v7, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_symbols:Lcom/flurry/org/codehaus/jackson/sym/CharsToNameCanonicalizer;

    iget-object v8, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    sub-int v9, v5, v6

    invoke-virtual {v7, v8, v6, v9, v2}, Lcom/flurry/org/codehaus/jackson/sym/CharsToNameCanonicalizer;->findSymbol([CIII)Ljava/lang/String;

    move-result-object v7

    .line 1157
    .end local v0    # "ch":I
    .end local v1    # "codes":[I
    .end local v4    # "maxCode":I
    :goto_0
    return-object v7

    .line 1146
    .end local v6    # "start":I
    .restart local v0    # "ch":I
    .restart local v1    # "codes":[I
    .restart local v4    # "maxCode":I
    :cond_1
    if-ge v0, v4, :cond_3

    aget v7, v1, v0

    if-eqz v7, :cond_3

    .line 1154
    .end local v0    # "ch":I
    .end local v1    # "codes":[I
    .end local v4    # "maxCode":I
    :cond_2
    :goto_1
    iget v6, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    .line 1155
    .restart local v6    # "start":I
    iput v5, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    .line 1157
    invoke-direct {p0, v6, v2, v8}, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_parseFieldName2(III)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 1149
    .end local v6    # "start":I
    .restart local v0    # "ch":I
    .restart local v1    # "codes":[I
    .restart local v4    # "maxCode":I
    :cond_3
    mul-int/lit8 v7, v2, 0x1f

    add-int v2, v7, v0

    .line 1150
    add-int/lit8 v5, v5, 0x1

    .line 1151
    if-lt v5, v3, :cond_0

    goto :goto_1
.end method

.method protected final _parseFieldName(I)Ljava/lang/String;
    .locals 10
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x22

    .line 976
    if-eq p1, v8, :cond_0

    .line 977
    invoke-virtual {p0, p1}, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_handleUnusualFieldName(I)Ljava/lang/String;

    move-result-object v7

    .line 1008
    :goto_0
    return-object v7

    .line 983
    :cond_0
    iget v5, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    .line 984
    .local v5, "ptr":I
    const/4 v2, 0x0

    .line 985
    .local v2, "hash":I
    iget v3, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputEnd:I

    .line 987
    .local v3, "inputLen":I
    if-ge v5, v3, :cond_3

    .line 988
    invoke-static {}, Lcom/flurry/org/codehaus/jackson/util/CharTypes;->getInputCodeLatin1()[I

    move-result-object v1

    .line 989
    .local v1, "codes":[I
    array-length v4, v1

    .line 992
    .local v4, "maxCode":I
    :cond_1
    iget-object v7, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    aget-char v0, v7, v5

    .line 993
    .local v0, "ch":I
    if-ge v0, v4, :cond_2

    aget v7, v1, v0

    if-eqz v7, :cond_2

    .line 994
    if-ne v0, v8, :cond_3

    .line 995
    iget v6, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    .line 996
    .local v6, "start":I
    add-int/lit8 v7, v5, 0x1

    iput v7, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    .line 997
    iget-object v7, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_symbols:Lcom/flurry/org/codehaus/jackson/sym/CharsToNameCanonicalizer;

    iget-object v8, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    sub-int v9, v5, v6

    invoke-virtual {v7, v8, v6, v9, v2}, Lcom/flurry/org/codehaus/jackson/sym/CharsToNameCanonicalizer;->findSymbol([CIII)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 1001
    .end local v6    # "start":I
    :cond_2
    mul-int/lit8 v7, v2, 0x1f

    add-int v2, v7, v0

    .line 1002
    add-int/lit8 v5, v5, 0x1

    .line 1003
    if-lt v5, v3, :cond_1

    .line 1006
    .end local v0    # "ch":I
    .end local v1    # "codes":[I
    .end local v4    # "maxCode":I
    :cond_3
    iget v6, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    .line 1007
    .restart local v6    # "start":I
    iput v5, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    .line 1008
    invoke-direct {p0, v6, v2, v8}, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_parseFieldName2(III)Ljava/lang/String;

    move-result-object v7

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
    .line 172
    invoke-super {p0}, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_releaseBuffers()V

    .line 173
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    .line 174
    .local v0, "buf":[C
    if-eqz v0, :cond_0

    .line 175
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    .line 176
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_ioContext:Lcom/flurry/org/codehaus/jackson/io/IOContext;

    invoke-virtual {v1, v0}, Lcom/flurry/org/codehaus/jackson/io/IOContext;->releaseTokenBuffer([C)V

    .line 178
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
    .line 1795
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1801
    .local v1, "sb":Ljava/lang/StringBuilder;
    :goto_0
    iget v2, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    iget v3, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputEnd:I

    if-lt v2, v3, :cond_1

    .line 1802
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->loadMore()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1813
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

    invoke-virtual {p0, v2}, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_reportError(Ljava/lang/String;)V

    .line 1814
    return-void

    .line 1806
    :cond_1
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    iget v3, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    aget-char v0, v2, v3

    .line 1807
    .local v0, "c":C
    invoke-static {v0}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1810
    iget v2, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    .line 1811
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method protected final _skipCR()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1435
    iget v0, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    iget v1, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputEnd:I

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->loadMore()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1436
    :cond_0
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    iget v1, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    aget-char v0, v0, v1

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    .line 1437
    iget v0, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    .line 1440
    :cond_1
    iget v0, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_currInputRow:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_currInputRow:I

    .line 1441
    iget v0, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    iput v0, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_currInputRowStart:I

    .line 1442
    return-void
.end method

.method protected final _skipLF()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1446
    iget v0, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_currInputRow:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_currInputRow:I

    .line 1447
    iget v0, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    iput v0, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_currInputRowStart:I

    .line 1448
    return-void
.end method

.method protected _skipString()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x5c

    const/16 v7, 0x22

    .line 1382
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_tokenIncomplete:Z

    .line 1384
    iget v4, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    .line 1385
    .local v4, "inputPtr":I
    iget v3, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputEnd:I

    .line 1386
    .local v3, "inputLen":I
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    .line 1389
    .local v2, "inputBuffer":[C
    :goto_0
    if-lt v4, v3, :cond_1

    .line 1390
    iput v4, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    .line 1391
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->loadMore()Z

    move-result v6

    if-nez v6, :cond_0

    .line 1392
    const-string v6, ": was expecting closing quote for a string value"

    invoke-virtual {p0, v6}, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_reportInvalidEOF(Ljava/lang/String;)V

    .line 1394
    :cond_0
    iget v4, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    .line 1395
    iget v3, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputEnd:I

    .line 1397
    :cond_1
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "inputPtr":I
    .local v5, "inputPtr":I
    aget-char v0, v2, v4

    .line 1398
    .local v0, "c":C
    move v1, v0

    .line 1399
    .local v1, "i":I
    if-gt v1, v8, :cond_4

    .line 1400
    if-ne v1, v8, :cond_2

    .line 1405
    iput v5, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    .line 1406
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_decodeEscaped()C

    move-result v0

    .line 1407
    iget v4, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    .line 1408
    .end local v5    # "inputPtr":I
    .restart local v4    # "inputPtr":I
    iget v3, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputEnd:I

    goto :goto_0

    .line 1409
    .end local v4    # "inputPtr":I
    .restart local v5    # "inputPtr":I
    :cond_2
    if-gt v1, v7, :cond_4

    .line 1410
    if-ne v1, v7, :cond_3

    .line 1411
    iput v5, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    .line 1421
    return-void

    .line 1414
    :cond_3
    const/16 v6, 0x20

    if-ge v1, v6, :cond_4

    .line 1415
    iput v5, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    .line 1416
    const-string v6, "string value"

    invoke-virtual {p0, v1, v6}, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_throwUnquotedSpace(ILjava/lang/String;)V

    :cond_4
    move v4, v5

    .end local v5    # "inputPtr":I
    .restart local v4    # "inputPtr":I
    goto :goto_0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 628
    invoke-super {p0}, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->close()V

    .line 629
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_symbols:Lcom/flurry/org/codehaus/jackson/sym/CharsToNameCanonicalizer;

    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/sym/CharsToNameCanonicalizer;->release()V

    .line 630
    return-void
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
    .line 315
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_currToken:Lcom/flurry/org/codehaus/jackson/JsonToken;

    sget-object v3, Lcom/flurry/org/codehaus/jackson/JsonToken;->VALUE_STRING:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_currToken:Lcom/flurry/org/codehaus/jackson/JsonToken;

    sget-object v3, Lcom/flurry/org/codehaus/jackson/JsonToken;->VALUE_EMBEDDED_OBJECT:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_binaryValue:[B

    if-nez v2, :cond_1

    .line 317
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Current token ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_currToken:Lcom/flurry/org/codehaus/jackson/JsonToken;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") not VALUE_STRING or VALUE_EMBEDDED_OBJECT, can not access as binary"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_reportError(Ljava/lang/String;)V

    .line 322
    :cond_1
    iget-boolean v2, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_tokenIncomplete:Z

    if-eqz v2, :cond_3

    .line 324
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_decodeBase64(Lcom/flurry/org/codehaus/jackson/Base64Variant;)[B

    move-result-object v2

    iput-object v2, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_binaryValue:[B
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 331
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_tokenIncomplete:Z

    .line 339
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_binaryValue:[B

    return-object v2

    .line 325
    :catch_0
    move-exception v1

    .line 326
    .local v1, "iae":Ljava/lang/IllegalArgumentException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to decode VALUE_STRING as base64 ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_constructError(Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/JsonParseException;

    move-result-object v2

    throw v2

    .line 333
    .end local v1    # "iae":Ljava/lang/IllegalArgumentException;
    :cond_3
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_binaryValue:[B

    if-nez v2, :cond_2

    .line 334
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_getByteArrayBuilder()Lcom/flurry/org/codehaus/jackson/util/ByteArrayBuilder;

    move-result-object v0

    .line 335
    .local v0, "builder":Lcom/flurry/org/codehaus/jackson/util/ByteArrayBuilder;
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v0, p1}, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_decodeBase64(Ljava/lang/String;Lcom/flurry/org/codehaus/jackson/util/ByteArrayBuilder;Lcom/flurry/org/codehaus/jackson/Base64Variant;)V

    .line 336
    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/util/ByteArrayBuilder;->toByteArray()[B

    move-result-object v2

    iput-object v2, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_binaryValue:[B

    goto :goto_0
.end method

.method public getCodec()Lcom/flurry/org/codehaus/jackson/ObjectCodec;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_objectCodec:Lcom/flurry/org/codehaus/jackson/ObjectCodec;

    return-object v0
.end method

.method public getInputSource()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_reader:Ljava/io/Reader;

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
    .line 136
    iget v0, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    iget v1, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputEnd:I

    if-lt v0, v1, :cond_0

    .line 137
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->loadMore()Z

    move-result v0

    if-nez v0, :cond_0

    .line 138
    invoke-virtual {p0, p1}, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_reportInvalidEOF(Ljava/lang/String;)V

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    iget v1, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    aget-char v0, v0, v1

    return v0
.end method

.method public final getText()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 196
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_currToken:Lcom/flurry/org/codehaus/jackson/JsonToken;

    .line 197
    .local v0, "t":Lcom/flurry/org/codehaus/jackson/JsonToken;
    sget-object v1, Lcom/flurry/org/codehaus/jackson/JsonToken;->VALUE_STRING:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_1

    .line 198
    iget-boolean v1, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_tokenIncomplete:Z

    if-eqz v1, :cond_0

    .line 199
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_tokenIncomplete:Z

    .line 200
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_finishString()V

    .line 202
    :cond_0
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_textBuffer:Lcom/flurry/org/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v1}, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->contentsAsString()Ljava/lang/String;

    move-result-object v1

    .line 204
    :goto_0
    return-object v1

    :cond_1
    invoke-virtual {p0, v0}, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_getText2(Lcom/flurry/org/codehaus/jackson/JsonToken;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getTextCharacters()[C
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 229
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_currToken:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-eqz v2, :cond_4

    .line 230
    sget-object v2, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser$1;->$SwitchMap$org$codehaus$jackson$JsonToken:[I

    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_currToken:Lcom/flurry/org/codehaus/jackson/JsonToken;

    invoke-virtual {v3}, Lcom/flurry/org/codehaus/jackson/JsonToken;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 257
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_currToken:Lcom/flurry/org/codehaus/jackson/JsonToken;

    invoke-virtual {v2}, Lcom/flurry/org/codehaus/jackson/JsonToken;->asCharArray()[C

    move-result-object v2

    .line 260
    :goto_0
    return-object v2

    .line 233
    :pswitch_0
    iget-boolean v2, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_nameCopied:Z

    if-nez v2, :cond_1

    .line 234
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_parsingContext:Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v2}, Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;->getCurrentName()Ljava/lang/String;

    move-result-object v0

    .line 235
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 236
    .local v1, "nameLen":I
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_nameCopyBuffer:[C

    if-nez v2, :cond_2

    .line 237
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_ioContext:Lcom/flurry/org/codehaus/jackson/io/IOContext;

    invoke-virtual {v2, v1}, Lcom/flurry/org/codehaus/jackson/io/IOContext;->allocNameCopyBuffer(I)[C

    move-result-object v2

    iput-object v2, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_nameCopyBuffer:[C

    .line 241
    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_nameCopyBuffer:[C

    invoke-virtual {v0, v4, v1, v2, v4}, Ljava/lang/String;->getChars(II[CI)V

    .line 242
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_nameCopied:Z

    .line 244
    .end local v0    # "name":Ljava/lang/String;
    .end local v1    # "nameLen":I
    :cond_1
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_nameCopyBuffer:[C

    goto :goto_0

    .line 238
    .restart local v0    # "name":Ljava/lang/String;
    .restart local v1    # "nameLen":I
    :cond_2
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_nameCopyBuffer:[C

    array-length v2, v2

    if-ge v2, v1, :cond_0

    .line 239
    new-array v2, v1, [C

    iput-object v2, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_nameCopyBuffer:[C

    goto :goto_1

    .line 247
    .end local v0    # "name":Ljava/lang/String;
    .end local v1    # "nameLen":I
    :pswitch_1
    iget-boolean v2, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_tokenIncomplete:Z

    if-eqz v2, :cond_3

    .line 248
    iput-boolean v4, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_tokenIncomplete:Z

    .line 249
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_finishString()V

    .line 254
    :cond_3
    :pswitch_2
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_textBuffer:Lcom/flurry/org/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v2}, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->getTextBuffer()[C

    move-result-object v2

    goto :goto_0

    .line 260
    :cond_4
    const/4 v2, 0x0

    goto :goto_0

    .line 230
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public getTextLength()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 267
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_currToken:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-eqz v1, :cond_0

    .line 268
    sget-object v1, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser$1;->$SwitchMap$org$codehaus$jackson$JsonToken:[I

    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_currToken:Lcom/flurry/org/codehaus/jackson/JsonToken;

    invoke-virtual {v2}, Lcom/flurry/org/codehaus/jackson/JsonToken;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 283
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_currToken:Lcom/flurry/org/codehaus/jackson/JsonToken;

    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/JsonToken;->asCharArray()[C

    move-result-object v0

    array-length v0, v0

    .line 286
    :cond_0
    :goto_0
    return v0

    .line 271
    :pswitch_0
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_parsingContext:Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;->getCurrentName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_0

    .line 273
    :pswitch_1
    iget-boolean v1, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_tokenIncomplete:Z

    if-eqz v1, :cond_1

    .line 274
    iput-boolean v0, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_tokenIncomplete:Z

    .line 275
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_finishString()V

    .line 280
    :cond_1
    :pswitch_2
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_textBuffer:Lcom/flurry/org/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->size()I

    move-result v0

    goto :goto_0

    .line 268
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public getTextOffset()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 293
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_currToken:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-eqz v1, :cond_0

    .line 294
    sget-object v1, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser$1;->$SwitchMap$org$codehaus$jackson$JsonToken:[I

    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_currToken:Lcom/flurry/org/codehaus/jackson/JsonToken;

    invoke-virtual {v2}, Lcom/flurry/org/codehaus/jackson/JsonToken;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 308
    :cond_0
    :goto_0
    :pswitch_0
    return v0

    .line 298
    :pswitch_1
    iget-boolean v1, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_tokenIncomplete:Z

    if-eqz v1, :cond_1

    .line 299
    iput-boolean v0, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_tokenIncomplete:Z

    .line 300
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_finishString()V

    .line 305
    :cond_1
    :pswitch_2
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_textBuffer:Lcom/flurry/org/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->getTextOffset()I

    move-result v0

    goto :goto_0

    .line 294
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
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

    .line 113
    iget-wide v2, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_currInputProcessed:J

    iget v4, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputEnd:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_currInputProcessed:J

    .line 114
    iget v2, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_currInputRowStart:I

    iget v3, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputEnd:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_currInputRowStart:I

    .line 116
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_reader:Ljava/io/Reader;

    if-eqz v2, :cond_0

    .line 117
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_reader:Ljava/io/Reader;

    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    iget-object v4, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    array-length v4, v4

    invoke-virtual {v2, v3, v1, v4}, Ljava/io/Reader;->read([CII)I

    move-result v0

    .line 118
    .local v0, "count":I
    if-lez v0, :cond_1

    .line 119
    iput v1, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    .line 120
    iput v0, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputEnd:I

    .line 121
    const/4 v1, 0x1

    .line 130
    .end local v0    # "count":I
    :cond_0
    return v1

    .line 124
    .restart local v0    # "count":I
    :cond_1
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_closeInput()V

    .line 126
    if-nez v0, :cond_0

    .line 127
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Reader returned 0 characters when trying to read "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputEnd:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public nextBooleanValue()Ljava/lang/Boolean;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 598
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_currToken:Lcom/flurry/org/codehaus/jackson/JsonToken;

    sget-object v3, Lcom/flurry/org/codehaus/jackson/JsonToken;->FIELD_NAME:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-ne v2, v3, :cond_4

    .line 599
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_nameCopied:Z

    .line 600
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_nextToken:Lcom/flurry/org/codehaus/jackson/JsonToken;

    .line 601
    .local v0, "t":Lcom/flurry/org/codehaus/jackson/JsonToken;
    iput-object v1, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_nextToken:Lcom/flurry/org/codehaus/jackson/JsonToken;

    .line 602
    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_currToken:Lcom/flurry/org/codehaus/jackson/JsonToken;

    .line 603
    sget-object v2, Lcom/flurry/org/codehaus/jackson/JsonToken;->VALUE_TRUE:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-ne v0, v2, :cond_1

    .line 604
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 622
    .end local v0    # "t":Lcom/flurry/org/codehaus/jackson/JsonToken;
    :cond_0
    :goto_0
    return-object v1

    .line 606
    .restart local v0    # "t":Lcom/flurry/org/codehaus/jackson/JsonToken;
    :cond_1
    sget-object v2, Lcom/flurry/org/codehaus/jackson/JsonToken;->VALUE_FALSE:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-ne v0, v2, :cond_2

    .line 607
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    .line 609
    :cond_2
    sget-object v2, Lcom/flurry/org/codehaus/jackson/JsonToken;->START_ARRAY:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-ne v0, v2, :cond_3

    .line 610
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_parsingContext:Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;

    iget v3, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_tokenInputRow:I

    iget v4, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_tokenInputCol:I

    invoke-virtual {v2, v3, v4}, Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;->createChildArrayContext(II)Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;

    move-result-object v2

    iput-object v2, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_parsingContext:Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;

    goto :goto_0

    .line 611
    :cond_3
    sget-object v2, Lcom/flurry/org/codehaus/jackson/JsonToken;->START_OBJECT:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-ne v0, v2, :cond_0

    .line 612
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_parsingContext:Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;

    iget v3, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_tokenInputRow:I

    iget v4, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_tokenInputCol:I

    invoke-virtual {v2, v3, v4}, Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;->createChildObjectContext(II)Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;

    move-result-object v2

    iput-object v2, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_parsingContext:Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;

    goto :goto_0

    .line 616
    .end local v0    # "t":Lcom/flurry/org/codehaus/jackson/JsonToken;
    :cond_4
    sget-object v2, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser$1;->$SwitchMap$org$codehaus$jackson$JsonToken:[I

    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->nextToken()Lcom/flurry/org/codehaus/jackson/JsonToken;

    move-result-object v3

    invoke-virtual {v3}, Lcom/flurry/org/codehaus/jackson/JsonToken;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 618
    :pswitch_0
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    .line 620
    :pswitch_1
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    .line 616
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public nextIntValue(I)I
    .locals 4
    .param p1, "defaultValue"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 550
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_currToken:Lcom/flurry/org/codehaus/jackson/JsonToken;

    sget-object v2, Lcom/flurry/org/codehaus/jackson/JsonToken;->FIELD_NAME:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-ne v1, v2, :cond_3

    .line 551
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_nameCopied:Z

    .line 552
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_nextToken:Lcom/flurry/org/codehaus/jackson/JsonToken;

    .line 553
    .local v0, "t":Lcom/flurry/org/codehaus/jackson/JsonToken;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_nextToken:Lcom/flurry/org/codehaus/jackson/JsonToken;

    .line 554
    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_currToken:Lcom/flurry/org/codehaus/jackson/JsonToken;

    .line 555
    sget-object v1, Lcom/flurry/org/codehaus/jackson/JsonToken;->VALUE_NUMBER_INT:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_1

    .line 556
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->getIntValue()I

    move-result p1

    .line 566
    .end local v0    # "t":Lcom/flurry/org/codehaus/jackson/JsonToken;
    .end local p1    # "defaultValue":I
    :cond_0
    :goto_0
    return p1

    .line 558
    .restart local v0    # "t":Lcom/flurry/org/codehaus/jackson/JsonToken;
    .restart local p1    # "defaultValue":I
    :cond_1
    sget-object v1, Lcom/flurry/org/codehaus/jackson/JsonToken;->START_ARRAY:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_2

    .line 559
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_parsingContext:Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;

    iget v2, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_tokenInputRow:I

    iget v3, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_tokenInputCol:I

    invoke-virtual {v1, v2, v3}, Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;->createChildArrayContext(II)Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;

    move-result-object v1

    iput-object v1, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_parsingContext:Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;

    goto :goto_0

    .line 560
    :cond_2
    sget-object v1, Lcom/flurry/org/codehaus/jackson/JsonToken;->START_OBJECT:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_0

    .line 561
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_parsingContext:Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;

    iget v2, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_tokenInputRow:I

    iget v3, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_tokenInputCol:I

    invoke-virtual {v1, v2, v3}, Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;->createChildObjectContext(II)Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;

    move-result-object v1

    iput-object v1, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_parsingContext:Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;

    goto :goto_0

    .line 566
    .end local v0    # "t":Lcom/flurry/org/codehaus/jackson/JsonToken;
    :cond_3
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->nextToken()Lcom/flurry/org/codehaus/jackson/JsonToken;

    move-result-object v1

    sget-object v2, Lcom/flurry/org/codehaus/jackson/JsonToken;->VALUE_NUMBER_INT:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->getIntValue()I

    move-result p1

    goto :goto_0
.end method

.method public nextLongValue(J)J
    .locals 5
    .param p1, "defaultValue"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 574
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_currToken:Lcom/flurry/org/codehaus/jackson/JsonToken;

    sget-object v2, Lcom/flurry/org/codehaus/jackson/JsonToken;->FIELD_NAME:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-ne v1, v2, :cond_3

    .line 575
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_nameCopied:Z

    .line 576
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_nextToken:Lcom/flurry/org/codehaus/jackson/JsonToken;

    .line 577
    .local v0, "t":Lcom/flurry/org/codehaus/jackson/JsonToken;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_nextToken:Lcom/flurry/org/codehaus/jackson/JsonToken;

    .line 578
    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_currToken:Lcom/flurry/org/codehaus/jackson/JsonToken;

    .line 579
    sget-object v1, Lcom/flurry/org/codehaus/jackson/JsonToken;->VALUE_NUMBER_INT:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_1

    .line 580
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->getLongValue()J

    move-result-wide p1

    .line 590
    .end local v0    # "t":Lcom/flurry/org/codehaus/jackson/JsonToken;
    .end local p1    # "defaultValue":J
    :cond_0
    :goto_0
    return-wide p1

    .line 582
    .restart local v0    # "t":Lcom/flurry/org/codehaus/jackson/JsonToken;
    .restart local p1    # "defaultValue":J
    :cond_1
    sget-object v1, Lcom/flurry/org/codehaus/jackson/JsonToken;->START_ARRAY:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_2

    .line 583
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_parsingContext:Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;

    iget v2, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_tokenInputRow:I

    iget v3, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_tokenInputCol:I

    invoke-virtual {v1, v2, v3}, Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;->createChildArrayContext(II)Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;

    move-result-object v1

    iput-object v1, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_parsingContext:Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;

    goto :goto_0

    .line 584
    :cond_2
    sget-object v1, Lcom/flurry/org/codehaus/jackson/JsonToken;->START_OBJECT:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_0

    .line 585
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_parsingContext:Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;

    iget v2, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_tokenInputRow:I

    iget v3, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_tokenInputCol:I

    invoke-virtual {v1, v2, v3}, Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;->createChildObjectContext(II)Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;

    move-result-object v1

    iput-object v1, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_parsingContext:Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;

    goto :goto_0

    .line 590
    .end local v0    # "t":Lcom/flurry/org/codehaus/jackson/JsonToken;
    :cond_3
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->nextToken()Lcom/flurry/org/codehaus/jackson/JsonToken;

    move-result-object v1

    sget-object v2, Lcom/flurry/org/codehaus/jackson/JsonToken;->VALUE_NUMBER_INT:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->getLongValue()J

    move-result-wide p1

    goto :goto_0
.end method

.method public nextTextValue()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 522
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_currToken:Lcom/flurry/org/codehaus/jackson/JsonToken;

    sget-object v3, Lcom/flurry/org/codehaus/jackson/JsonToken;->FIELD_NAME:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-ne v2, v3, :cond_4

    .line 523
    iput-boolean v4, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_nameCopied:Z

    .line 524
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_nextToken:Lcom/flurry/org/codehaus/jackson/JsonToken;

    .line 525
    .local v0, "t":Lcom/flurry/org/codehaus/jackson/JsonToken;
    iput-object v1, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_nextToken:Lcom/flurry/org/codehaus/jackson/JsonToken;

    .line 526
    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_currToken:Lcom/flurry/org/codehaus/jackson/JsonToken;

    .line 527
    sget-object v2, Lcom/flurry/org/codehaus/jackson/JsonToken;->VALUE_STRING:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-ne v0, v2, :cond_2

    .line 528
    iget-boolean v1, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_tokenIncomplete:Z

    if-eqz v1, :cond_0

    .line 529
    iput-boolean v4, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_tokenIncomplete:Z

    .line 530
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_finishString()V

    .line 532
    :cond_0
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_textBuffer:Lcom/flurry/org/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v1}, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->contentsAsString()Ljava/lang/String;

    move-result-object v1

    .line 542
    .end local v0    # "t":Lcom/flurry/org/codehaus/jackson/JsonToken;
    :cond_1
    :goto_0
    return-object v1

    .line 534
    .restart local v0    # "t":Lcom/flurry/org/codehaus/jackson/JsonToken;
    :cond_2
    sget-object v2, Lcom/flurry/org/codehaus/jackson/JsonToken;->START_ARRAY:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-ne v0, v2, :cond_3

    .line 535
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_parsingContext:Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;

    iget v3, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_tokenInputRow:I

    iget v4, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_tokenInputCol:I

    invoke-virtual {v2, v3, v4}, Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;->createChildArrayContext(II)Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;

    move-result-object v2

    iput-object v2, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_parsingContext:Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;

    goto :goto_0

    .line 536
    :cond_3
    sget-object v2, Lcom/flurry/org/codehaus/jackson/JsonToken;->START_OBJECT:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-ne v0, v2, :cond_1

    .line 537
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_parsingContext:Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;

    iget v3, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_tokenInputRow:I

    iget v4, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_tokenInputCol:I

    invoke-virtual {v2, v3, v4}, Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;->createChildObjectContext(II)Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;

    move-result-object v2

    iput-object v2, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_parsingContext:Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;

    goto :goto_0

    .line 542
    .end local v0    # "t":Lcom/flurry/org/codehaus/jackson/JsonToken;
    :cond_4
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->nextToken()Lcom/flurry/org/codehaus/jackson/JsonToken;

    move-result-object v2

    sget-object v3, Lcom/flurry/org/codehaus/jackson/JsonToken;->VALUE_STRING:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-ne v2, v3, :cond_1

    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->getText()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public nextToken()Lcom/flurry/org/codehaus/jackson/JsonToken;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/16 v10, 0x7d

    const/16 v9, 0x5d

    const/4 v8, 0x1

    .line 356
    const/4 v4, 0x0

    iput v4, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_numTypesValid:I

    .line 362
    iget-object v4, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_currToken:Lcom/flurry/org/codehaus/jackson/JsonToken;

    sget-object v5, Lcom/flurry/org/codehaus/jackson/JsonToken;->FIELD_NAME:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-ne v4, v5, :cond_0

    .line 363
    invoke-direct {p0}, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_nextAfterName()Lcom/flurry/org/codehaus/jackson/JsonToken;

    move-result-object v3

    .line 494
    :goto_0
    return-object v3

    .line 365
    :cond_0
    iget-boolean v4, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_tokenIncomplete:Z

    if-eqz v4, :cond_1

    .line 366
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_skipString()V

    .line 368
    :cond_1
    invoke-direct {p0}, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_skipWSOrEnd()I

    move-result v0

    .line 369
    .local v0, "i":I
    if-gez v0, :cond_2

    .line 373
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->close()V

    .line 374
    iput-object v3, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_currToken:Lcom/flurry/org/codehaus/jackson/JsonToken;

    goto :goto_0

    .line 380
    :cond_2
    iget-wide v4, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_currInputProcessed:J

    iget v6, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    int-to-long v6, v6

    add-long/2addr v4, v6

    const-wide/16 v6, 0x1

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_tokenInputTotal:J

    .line 381
    iget v4, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_currInputRow:I

    iput v4, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_tokenInputRow:I

    .line 382
    iget v4, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    iget v5, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_currInputRowStart:I

    sub-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_tokenInputCol:I

    .line 385
    iput-object v3, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_binaryValue:[B

    .line 388
    if-ne v0, v9, :cond_4

    .line 389
    iget-object v4, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_parsingContext:Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v4}, Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;->inArray()Z

    move-result v4

    if-nez v4, :cond_3

    .line 390
    invoke-virtual {p0, v0, v10}, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_reportMismatchedEndMarker(IC)V

    .line 392
    :cond_3
    iget-object v4, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_parsingContext:Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v4}, Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;->getParent()Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;

    move-result-object v4

    iput-object v4, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_parsingContext:Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;

    .line 393
    sget-object v3, Lcom/flurry/org/codehaus/jackson/JsonToken;->END_ARRAY:Lcom/flurry/org/codehaus/jackson/JsonToken;

    iput-object v3, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_currToken:Lcom/flurry/org/codehaus/jackson/JsonToken;

    goto :goto_0

    .line 395
    :cond_4
    if-ne v0, v10, :cond_6

    .line 396
    iget-object v4, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_parsingContext:Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v4}, Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;->inObject()Z

    move-result v4

    if-nez v4, :cond_5

    .line 397
    invoke-virtual {p0, v0, v9}, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_reportMismatchedEndMarker(IC)V

    .line 399
    :cond_5
    iget-object v4, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_parsingContext:Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v4}, Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;->getParent()Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;

    move-result-object v4

    iput-object v4, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_parsingContext:Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;

    .line 400
    sget-object v3, Lcom/flurry/org/codehaus/jackson/JsonToken;->END_OBJECT:Lcom/flurry/org/codehaus/jackson/JsonToken;

    iput-object v3, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_currToken:Lcom/flurry/org/codehaus/jackson/JsonToken;

    goto :goto_0

    .line 404
    :cond_6
    iget-object v4, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_parsingContext:Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v4}, Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;->expectComma()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 405
    const/16 v4, 0x2c

    if-eq v0, v4, :cond_7

    .line 406
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "was expecting comma to separate "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_parsingContext:Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v5}, Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;->getTypeDesc()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " entries"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v0, v4}, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_reportUnexpectedChar(ILjava/lang/String;)V

    .line 408
    :cond_7
    invoke-direct {p0}, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_skipWS()I

    move-result v0

    .line 415
    :cond_8
    iget-object v4, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_parsingContext:Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v4}, Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;->inObject()Z

    move-result v1

    .line 416
    .local v1, "inObject":Z
    if-eqz v1, :cond_a

    .line 418
    invoke-virtual {p0, v0}, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_parseFieldName(I)Ljava/lang/String;

    move-result-object v2

    .line 419
    .local v2, "name":Ljava/lang/String;
    iget-object v4, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_parsingContext:Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v4, v2}, Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;->setCurrentName(Ljava/lang/String;)V

    .line 420
    sget-object v4, Lcom/flurry/org/codehaus/jackson/JsonToken;->FIELD_NAME:Lcom/flurry/org/codehaus/jackson/JsonToken;

    iput-object v4, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_currToken:Lcom/flurry/org/codehaus/jackson/JsonToken;

    .line 421
    invoke-direct {p0}, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_skipWS()I

    move-result v0

    .line 422
    const/16 v4, 0x3a

    if-eq v0, v4, :cond_9

    .line 423
    const-string v4, "was expecting a colon to separate field name and value"

    invoke-virtual {p0, v0, v4}, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_reportUnexpectedChar(ILjava/lang/String;)V

    .line 425
    :cond_9
    invoke-direct {p0}, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_skipWS()I

    move-result v0

    .line 432
    .end local v2    # "name":Ljava/lang/String;
    :cond_a
    sparse-switch v0, :sswitch_data_0

    .line 485
    invoke-virtual {p0, v0}, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_handleUnexpectedValue(I)Lcom/flurry/org/codehaus/jackson/JsonToken;

    move-result-object v3

    .line 489
    .local v3, "t":Lcom/flurry/org/codehaus/jackson/JsonToken;
    :goto_1
    if-eqz v1, :cond_d

    .line 490
    iput-object v3, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_nextToken:Lcom/flurry/org/codehaus/jackson/JsonToken;

    .line 491
    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_currToken:Lcom/flurry/org/codehaus/jackson/JsonToken;

    goto/16 :goto_0

    .line 434
    .end local v3    # "t":Lcom/flurry/org/codehaus/jackson/JsonToken;
    :sswitch_0
    iput-boolean v8, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_tokenIncomplete:Z

    .line 435
    sget-object v3, Lcom/flurry/org/codehaus/jackson/JsonToken;->VALUE_STRING:Lcom/flurry/org/codehaus/jackson/JsonToken;

    .line 436
    .restart local v3    # "t":Lcom/flurry/org/codehaus/jackson/JsonToken;
    goto :goto_1

    .line 438
    .end local v3    # "t":Lcom/flurry/org/codehaus/jackson/JsonToken;
    :sswitch_1
    if-nez v1, :cond_b

    .line 439
    iget-object v4, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_parsingContext:Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;

    iget v5, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_tokenInputRow:I

    iget v6, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_tokenInputCol:I

    invoke-virtual {v4, v5, v6}, Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;->createChildArrayContext(II)Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;

    move-result-object v4

    iput-object v4, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_parsingContext:Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;

    .line 441
    :cond_b
    sget-object v3, Lcom/flurry/org/codehaus/jackson/JsonToken;->START_ARRAY:Lcom/flurry/org/codehaus/jackson/JsonToken;

    .line 442
    .restart local v3    # "t":Lcom/flurry/org/codehaus/jackson/JsonToken;
    goto :goto_1

    .line 444
    .end local v3    # "t":Lcom/flurry/org/codehaus/jackson/JsonToken;
    :sswitch_2
    if-nez v1, :cond_c

    .line 445
    iget-object v4, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_parsingContext:Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;

    iget v5, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_tokenInputRow:I

    iget v6, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_tokenInputCol:I

    invoke-virtual {v4, v5, v6}, Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;->createChildObjectContext(II)Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;

    move-result-object v4

    iput-object v4, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_parsingContext:Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;

    .line 447
    :cond_c
    sget-object v3, Lcom/flurry/org/codehaus/jackson/JsonToken;->START_OBJECT:Lcom/flurry/org/codehaus/jackson/JsonToken;

    .line 448
    .restart local v3    # "t":Lcom/flurry/org/codehaus/jackson/JsonToken;
    goto :goto_1

    .line 453
    .end local v3    # "t":Lcom/flurry/org/codehaus/jackson/JsonToken;
    :sswitch_3
    const-string v4, "expected a value"

    invoke-virtual {p0, v0, v4}, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_reportUnexpectedChar(ILjava/lang/String;)V

    .line 455
    :sswitch_4
    const-string v4, "true"

    invoke-virtual {p0, v4, v8}, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_matchToken(Ljava/lang/String;I)V

    .line 456
    sget-object v3, Lcom/flurry/org/codehaus/jackson/JsonToken;->VALUE_TRUE:Lcom/flurry/org/codehaus/jackson/JsonToken;

    .line 457
    .restart local v3    # "t":Lcom/flurry/org/codehaus/jackson/JsonToken;
    goto :goto_1

    .line 459
    .end local v3    # "t":Lcom/flurry/org/codehaus/jackson/JsonToken;
    :sswitch_5
    const-string v4, "false"

    invoke-virtual {p0, v4, v8}, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_matchToken(Ljava/lang/String;I)V

    .line 460
    sget-object v3, Lcom/flurry/org/codehaus/jackson/JsonToken;->VALUE_FALSE:Lcom/flurry/org/codehaus/jackson/JsonToken;

    .line 461
    .restart local v3    # "t":Lcom/flurry/org/codehaus/jackson/JsonToken;
    goto :goto_1

    .line 463
    .end local v3    # "t":Lcom/flurry/org/codehaus/jackson/JsonToken;
    :sswitch_6
    const-string v4, "null"

    invoke-virtual {p0, v4, v8}, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_matchToken(Ljava/lang/String;I)V

    .line 464
    sget-object v3, Lcom/flurry/org/codehaus/jackson/JsonToken;->VALUE_NULL:Lcom/flurry/org/codehaus/jackson/JsonToken;

    .line 465
    .restart local v3    # "t":Lcom/flurry/org/codehaus/jackson/JsonToken;
    goto :goto_1

    .line 482
    .end local v3    # "t":Lcom/flurry/org/codehaus/jackson/JsonToken;
    :sswitch_7
    invoke-virtual {p0, v0}, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->parseNumberText(I)Lcom/flurry/org/codehaus/jackson/JsonToken;

    move-result-object v3

    .line 483
    .restart local v3    # "t":Lcom/flurry/org/codehaus/jackson/JsonToken;
    goto :goto_1

    .line 493
    :cond_d
    iput-object v3, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_currToken:Lcom/flurry/org/codehaus/jackson/JsonToken;

    goto/16 :goto_0

    .line 432
    nop

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_0
        0x2d -> :sswitch_7
        0x30 -> :sswitch_7
        0x31 -> :sswitch_7
        0x32 -> :sswitch_7
        0x33 -> :sswitch_7
        0x34 -> :sswitch_7
        0x35 -> :sswitch_7
        0x36 -> :sswitch_7
        0x37 -> :sswitch_7
        0x38 -> :sswitch_7
        0x39 -> :sswitch_7
        0x5b -> :sswitch_1
        0x5d -> :sswitch_3
        0x66 -> :sswitch_5
        0x6e -> :sswitch_6
        0x74 -> :sswitch_4
        0x7b -> :sswitch_2
        0x7d -> :sswitch_3
    .end sparse-switch
.end method

.method protected final parseNumberText(I)Lcom/flurry/org/codehaus/jackson/JsonToken;
    .locals 14
    .param p1, "ch"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    const/16 v13, 0x2d

    const/4 v9, 0x1

    const/16 v12, 0x39

    const/16 v11, 0x30

    .line 662
    if-ne p1, v13, :cond_2

    move v5, v9

    .line 663
    .local v5, "negative":Z
    :goto_0
    iget v6, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    .line 664
    .local v6, "ptr":I
    add-int/lit8 v8, v6, -0x1

    .line 665
    .local v8, "startPtr":I
    iget v2, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputEnd:I

    .line 669
    .local v2, "inputLen":I
    if-eqz v5, :cond_6

    .line 670
    iget v10, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputEnd:I

    if-lt v6, v10, :cond_3

    .line 766
    :cond_0
    :goto_1
    if-eqz v5, :cond_1

    add-int/lit8 v8, v8, 0x1

    .end local v8    # "startPtr":I
    :cond_1
    iput v8, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    .line 767
    invoke-direct {p0, v5}, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->parseNumberText2(Z)Lcom/flurry/org/codehaus/jackson/JsonToken;

    move-result-object v9

    :goto_2
    return-object v9

    .line 662
    .end local v2    # "inputLen":I
    .end local v5    # "negative":Z
    .end local v6    # "ptr":I
    :cond_2
    const/4 v5, 0x0

    goto :goto_0

    .line 673
    .restart local v2    # "inputLen":I
    .restart local v5    # "negative":Z
    .restart local v6    # "ptr":I
    .restart local v8    # "startPtr":I
    :cond_3
    iget-object v10, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    add-int/lit8 v7, v6, 0x1

    .end local v6    # "ptr":I
    .local v7, "ptr":I
    aget-char p1, v10, v6

    .line 675
    if-gt p1, v12, :cond_4

    if-ge p1, v11, :cond_5

    .line 676
    :cond_4
    iput v7, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    .line 677
    invoke-virtual {p0, p1, v9}, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_handleInvalidNumberStart(IZ)Lcom/flurry/org/codehaus/jackson/JsonToken;

    move-result-object v9

    move v6, v7

    .end local v7    # "ptr":I
    .restart local v6    # "ptr":I
    goto :goto_2

    .end local v6    # "ptr":I
    .restart local v7    # "ptr":I
    :cond_5
    move v6, v7

    .line 685
    .end local v7    # "ptr":I
    .restart local v6    # "ptr":I
    :cond_6
    if-eq p1, v11, :cond_0

    .line 695
    const/4 v3, 0x1

    .line 701
    .local v3, "intLen":I
    :goto_3
    iget v9, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputEnd:I

    if-ge v6, v9, :cond_0

    .line 704
    iget-object v9, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    add-int/lit8 v7, v6, 0x1

    .end local v6    # "ptr":I
    .restart local v7    # "ptr":I
    aget-char p1, v9, v6

    .line 705
    if-lt p1, v11, :cond_7

    if-le p1, v12, :cond_8

    .line 711
    :cond_7
    const/4 v1, 0x0

    .line 714
    .local v1, "fractLen":I
    const/16 v9, 0x2e

    if-ne p1, v9, :cond_c

    .line 717
    :goto_4
    if-lt v7, v2, :cond_9

    move v6, v7

    .line 718
    .end local v7    # "ptr":I
    .restart local v6    # "ptr":I
    goto :goto_1

    .line 708
    .end local v1    # "fractLen":I
    .end local v6    # "ptr":I
    .restart local v7    # "ptr":I
    :cond_8
    add-int/lit8 v3, v3, 0x1

    move v6, v7

    .end local v7    # "ptr":I
    .restart local v6    # "ptr":I
    goto :goto_3

    .line 720
    .end local v6    # "ptr":I
    .restart local v1    # "fractLen":I
    .restart local v7    # "ptr":I
    :cond_9
    iget-object v9, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    add-int/lit8 v6, v7, 0x1

    .end local v7    # "ptr":I
    .restart local v6    # "ptr":I
    aget-char p1, v9, v7

    .line 721
    if-lt p1, v11, :cond_a

    if-le p1, v12, :cond_e

    .line 727
    :cond_a
    if-nez v1, :cond_b

    .line 728
    const-string v9, "Decimal point not followed by a digit"

    invoke-virtual {p0, p1, v9}, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->reportUnexpectedNumberChar(ILjava/lang/String;)V

    :cond_b
    move v7, v6

    .line 732
    .end local v6    # "ptr":I
    .restart local v7    # "ptr":I
    :cond_c
    const/4 v0, 0x0

    .line 733
    .local v0, "expLen":I
    const/16 v9, 0x65

    if-eq p1, v9, :cond_d

    const/16 v9, 0x45

    if-ne p1, v9, :cond_13

    .line 734
    :cond_d
    if-lt v7, v2, :cond_f

    move v6, v7

    .line 735
    .end local v7    # "ptr":I
    .restart local v6    # "ptr":I
    goto :goto_1

    .line 724
    .end local v0    # "expLen":I
    :cond_e
    add-int/lit8 v1, v1, 0x1

    move v7, v6

    .end local v6    # "ptr":I
    .restart local v7    # "ptr":I
    goto :goto_4

    .line 738
    .restart local v0    # "expLen":I
    :cond_f
    iget-object v9, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    add-int/lit8 v6, v7, 0x1

    .end local v7    # "ptr":I
    .restart local v6    # "ptr":I
    aget-char p1, v9, v7

    .line 739
    if-eq p1, v13, :cond_10

    const/16 v9, 0x2b

    if-ne p1, v9, :cond_14

    .line 740
    :cond_10
    if-ge v6, v2, :cond_0

    .line 743
    iget-object v9, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    add-int/lit8 v7, v6, 0x1

    .end local v6    # "ptr":I
    .restart local v7    # "ptr":I
    aget-char p1, v9, v6

    .line 745
    :goto_5
    if-gt p1, v12, :cond_12

    if-lt p1, v11, :cond_12

    .line 746
    add-int/lit8 v0, v0, 0x1

    .line 747
    if-lt v7, v2, :cond_11

    move v6, v7

    .line 748
    .end local v7    # "ptr":I
    .restart local v6    # "ptr":I
    goto :goto_1

    .line 750
    .end local v6    # "ptr":I
    .restart local v7    # "ptr":I
    :cond_11
    iget-object v9, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    add-int/lit8 v6, v7, 0x1

    .end local v7    # "ptr":I
    .restart local v6    # "ptr":I
    aget-char p1, v9, v7

    move v7, v6

    .end local v6    # "ptr":I
    .restart local v7    # "ptr":I
    goto :goto_5

    .line 753
    :cond_12
    if-nez v0, :cond_13

    .line 754
    const-string v9, "Exponent indicator not followed by a digit"

    invoke-virtual {p0, p1, v9}, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->reportUnexpectedNumberChar(ILjava/lang/String;)V

    :cond_13
    move v6, v7

    .line 759
    .end local v7    # "ptr":I
    .restart local v6    # "ptr":I
    add-int/lit8 v6, v6, -0x1

    .line 760
    iput v6, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    .line 761
    sub-int v4, v6, v8

    .line 762
    .local v4, "len":I
    iget-object v9, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_textBuffer:Lcom/flurry/org/codehaus/jackson/util/TextBuffer;

    iget-object v10, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    invoke-virtual {v9, v10, v8, v4}, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->resetWithShared([CII)V

    .line 763
    invoke-virtual {p0, v5, v3, v1, v0}, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->reset(ZIII)Lcom/flurry/org/codehaus/jackson/JsonToken;

    move-result-object v9

    goto/16 :goto_2

    .end local v4    # "len":I
    :cond_14
    move v7, v6

    .end local v6    # "ptr":I
    .restart local v7    # "ptr":I
    goto :goto_5
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
    .line 95
    iget v2, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputEnd:I

    iget v3, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    sub-int v0, v2, v3

    .line 96
    .local v0, "count":I
    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    .line 97
    const/4 v0, 0x0

    .line 102
    .end local v0    # "count":I
    :goto_0
    return v0

    .line 100
    .restart local v0    # "count":I
    :cond_0
    iget v1, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    .line 101
    .local v1, "origPtr":I
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    invoke-virtual {p1, v2, v1, v0}, Ljava/io/Writer;->write([CII)V

    goto :goto_0
.end method

.method public setCodec(Lcom/flurry/org/codehaus/jackson/ObjectCodec;)V
    .locals 0
    .param p1, "c"    # Lcom/flurry/org/codehaus/jackson/ObjectCodec;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;->_objectCodec:Lcom/flurry/org/codehaus/jackson/ObjectCodec;

    .line 90
    return-void
.end method
