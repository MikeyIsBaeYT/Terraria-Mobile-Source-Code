.class public abstract Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;
.super Lcom/flurry/org/codehaus/jackson/impl/JsonParserMinimalBase;
.source "JsonParserBase.java"


# static fields
.field static final BD_MAX_INT:Ljava/math/BigDecimal;

.field static final BD_MAX_LONG:Ljava/math/BigDecimal;

.field static final BD_MIN_INT:Ljava/math/BigDecimal;

.field static final BD_MIN_LONG:Ljava/math/BigDecimal;

.field protected static final CHAR_NULL:C = '\u0000'

.field protected static final INT_0:I = 0x30

.field protected static final INT_1:I = 0x31

.field protected static final INT_2:I = 0x32

.field protected static final INT_3:I = 0x33

.field protected static final INT_4:I = 0x34

.field protected static final INT_5:I = 0x35

.field protected static final INT_6:I = 0x36

.field protected static final INT_7:I = 0x37

.field protected static final INT_8:I = 0x38

.field protected static final INT_9:I = 0x39

.field protected static final INT_DECIMAL_POINT:I = 0x2e

.field protected static final INT_E:I = 0x45

.field protected static final INT_MINUS:I = 0x2d

.field protected static final INT_PLUS:I = 0x2b

.field protected static final INT_e:I = 0x65

.field static final MAX_INT_D:D = 2.147483647E9

.field static final MAX_INT_L:J = 0x7fffffffL

.field static final MAX_LONG_D:D = 9.223372036854776E18

.field static final MIN_INT_D:D = -2.147483648E9

.field static final MIN_INT_L:J = -0x80000000L

.field static final MIN_LONG_D:D = -9.223372036854776E18

.field protected static final NR_BIGDECIMAL:I = 0x10

.field protected static final NR_BIGINT:I = 0x4

.field protected static final NR_DOUBLE:I = 0x8

.field protected static final NR_INT:I = 0x1

.field protected static final NR_LONG:I = 0x2

.field protected static final NR_UNKNOWN:I


# instance fields
.field protected _binaryValue:[B

.field protected _byteArrayBuilder:Lcom/flurry/org/codehaus/jackson/util/ByteArrayBuilder;

.field protected _closed:Z

.field protected _currInputProcessed:J

.field protected _currInputRow:I

.field protected _currInputRowStart:I

.field protected _expLength:I

.field protected _fractLength:I

.field protected _inputEnd:I

.field protected _inputPtr:I

.field protected _intLength:I

.field protected final _ioContext:Lcom/flurry/org/codehaus/jackson/io/IOContext;

.field protected _nameCopied:Z

.field protected _nameCopyBuffer:[C

.field protected _nextToken:Lcom/flurry/org/codehaus/jackson/JsonToken;

.field protected _numTypesValid:I

.field protected _numberBigDecimal:Ljava/math/BigDecimal;

.field protected _numberBigInt:Ljava/math/BigInteger;

.field protected _numberDouble:D

.field protected _numberInt:I

.field protected _numberLong:J

.field protected _numberNegative:Z

.field protected _parsingContext:Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;

.field protected final _textBuffer:Lcom/flurry/org/codehaus/jackson/util/TextBuffer;

.field protected _tokenInputCol:I

.field protected _tokenInputRow:I

.field protected _tokenInputTotal:J


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const-wide v4, 0x7fffffffffffffffL

    const-wide/high16 v2, -0x8000000000000000L

    .line 195
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, v2, v3}, Ljava/math/BigDecimal;-><init>(J)V

    sput-object v0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->BD_MIN_LONG:Ljava/math/BigDecimal;

    .line 196
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, v4, v5}, Ljava/math/BigDecimal;-><init>(J)V

    sput-object v0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->BD_MAX_LONG:Ljava/math/BigDecimal;

    .line 198
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, v2, v3}, Ljava/math/BigDecimal;-><init>(J)V

    sput-object v0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->BD_MIN_INT:Ljava/math/BigDecimal;

    .line 199
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, v4, v5}, Ljava/math/BigDecimal;-><init>(J)V

    sput-object v0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->BD_MAX_INT:Ljava/math/BigDecimal;

    return-void
.end method

.method protected constructor <init>(Lcom/flurry/org/codehaus/jackson/io/IOContext;I)V
    .locals 6
    .param p1, "ctxt"    # Lcom/flurry/org/codehaus/jackson/io/IOContext;
    .param p2, "features"    # I

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 293
    invoke-direct {p0}, Lcom/flurry/org/codehaus/jackson/impl/JsonParserMinimalBase;-><init>()V

    .line 54
    iput v0, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    .line 59
    iput v0, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_inputEnd:I

    .line 71
    iput-wide v4, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_currInputProcessed:J

    .line 77
    iput v1, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_currInputRow:I

    .line 85
    iput v0, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_currInputRowStart:I

    .line 101
    iput-wide v4, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_tokenInputTotal:J

    .line 106
    iput v1, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_tokenInputRow:I

    .line 112
    iput v0, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_tokenInputCol:I

    .line 151
    iput-object v2, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_nameCopyBuffer:[C

    .line 158
    iput-boolean v0, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_nameCopied:Z

    .line 164
    iput-object v2, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_byteArrayBuilder:Lcom/flurry/org/codehaus/jackson/util/ByteArrayBuilder;

    .line 241
    iput v0, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    .line 294
    iput p2, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_features:I

    .line 295
    iput-object p1, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_ioContext:Lcom/flurry/org/codehaus/jackson/io/IOContext;

    .line 296
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/io/IOContext;->constructTextBuffer()Lcom/flurry/org/codehaus/jackson/util/TextBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_textBuffer:Lcom/flurry/org/codehaus/jackson/util/TextBuffer;

    .line 297
    invoke-static {}, Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;->createRootContext()Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_parsingContext:Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;

    .line 298
    return-void
.end method

.method private final _parseSlowFloatValue(I)V
    .locals 4
    .param p1, "expType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    const/16 v1, 0x10

    .line 774
    if-ne p1, v1, :cond_0

    .line 775
    :try_start_0
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_textBuffer:Lcom/flurry/org/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v1}, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->contentsAsDecimal()Ljava/math/BigDecimal;

    move-result-object v1

    iput-object v1, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_numberBigDecimal:Ljava/math/BigDecimal;

    .line 776
    const/16 v1, 0x10

    iput v1, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    .line 786
    :goto_0
    return-void

    .line 779
    :cond_0
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_textBuffer:Lcom/flurry/org/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v1}, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->contentsAsDouble()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_numberDouble:D

    .line 780
    const/16 v1, 0x8

    iput v1, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 782
    :catch_0
    move-exception v0

    .line 784
    .local v0, "nex":Ljava/lang/NumberFormatException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Malformed numeric value \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_textBuffer:Lcom/flurry/org/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v2}, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->contentsAsString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_wrapError(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private final _parseSlowIntValue(I[CII)V
    .locals 4
    .param p1, "expType"    # I
    .param p2, "buf"    # [C
    .param p3, "offset"    # I
    .param p4, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 791
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_textBuffer:Lcom/flurry/org/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v2}, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->contentsAsString()Ljava/lang/String;

    move-result-object v1

    .line 794
    .local v1, "numStr":Ljava/lang/String;
    :try_start_0
    iget-boolean v2, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_numberNegative:Z

    invoke-static {p2, p3, p4, v2}, Lcom/flurry/org/codehaus/jackson/io/NumberInput;->inLongRange([CIIZ)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 796
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_numberLong:J

    .line 797
    const/4 v2, 0x2

    iput v2, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    .line 807
    :goto_0
    return-void

    .line 800
    :cond_0
    new-instance v2, Ljava/math/BigInteger;

    invoke-direct {v2, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_numberBigInt:Ljava/math/BigInteger;

    .line 801
    const/4 v2, 0x4

    iput v2, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 803
    :catch_0
    move-exception v0

    .line 805
    .local v0, "nex":Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Malformed numeric value \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v0}, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_wrapError(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method protected abstract _closeInput()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected final _decodeBase64Escape(Lcom/flurry/org/codehaus/jackson/Base64Variant;CI)I
    .locals 3
    .param p1, "b64variant"    # Lcom/flurry/org/codehaus/jackson/Base64Variant;
    .param p2, "ch"    # C
    .param p3, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 1020
    const/16 v2, 0x5c

    if-eq p2, v2, :cond_0

    .line 1021
    invoke-virtual {p0, p1, p2, p3}, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->reportInvalidBase64Char(Lcom/flurry/org/codehaus/jackson/Base64Variant;II)Ljava/lang/IllegalArgumentException;

    move-result-object v2

    throw v2

    .line 1023
    :cond_0
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_decodeEscaped()C

    move-result v1

    .line 1025
    .local v1, "unescaped":C
    const/16 v2, 0x20

    if-gt v1, v2, :cond_2

    .line 1026
    if-nez p3, :cond_2

    .line 1027
    const/4 v0, -0x1

    .line 1035
    :cond_1
    return v0

    .line 1031
    :cond_2
    invoke-virtual {p1, v1}, Lcom/flurry/org/codehaus/jackson/Base64Variant;->decodeBase64Char(C)I

    move-result v0

    .line 1032
    .local v0, "bits":I
    if-gez v0, :cond_1

    .line 1033
    invoke-virtual {p0, p1, v1, p3}, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->reportInvalidBase64Char(Lcom/flurry/org/codehaus/jackson/Base64Variant;II)Ljava/lang/IllegalArgumentException;

    move-result-object v2

    throw v2
.end method

.method protected final _decodeBase64Escape(Lcom/flurry/org/codehaus/jackson/Base64Variant;II)I
    .locals 3
    .param p1, "b64variant"    # Lcom/flurry/org/codehaus/jackson/Base64Variant;
    .param p2, "ch"    # I
    .param p3, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 998
    const/16 v2, 0x5c

    if-eq p2, v2, :cond_0

    .line 999
    invoke-virtual {p0, p1, p2, p3}, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->reportInvalidBase64Char(Lcom/flurry/org/codehaus/jackson/Base64Variant;II)Ljava/lang/IllegalArgumentException;

    move-result-object v2

    throw v2

    .line 1001
    :cond_0
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_decodeEscaped()C

    move-result v1

    .line 1003
    .local v1, "unescaped":I
    const/16 v2, 0x20

    if-gt v1, v2, :cond_2

    .line 1004
    if-nez p3, :cond_2

    .line 1005
    const/4 v0, -0x1

    .line 1013
    :cond_1
    return v0

    .line 1009
    :cond_2
    invoke-virtual {p1, v1}, Lcom/flurry/org/codehaus/jackson/Base64Variant;->decodeBase64Char(I)I

    move-result v0

    .line 1010
    .local v0, "bits":I
    if-gez v0, :cond_1

    .line 1011
    invoke-virtual {p0, p1, v1, p3}, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->reportInvalidBase64Char(Lcom/flurry/org/codehaus/jackson/Base64Variant;II)Ljava/lang/IllegalArgumentException;

    move-result-object v2

    throw v2
.end method

.method protected _decodeEscaped()C
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 991
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected abstract _finishString()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonParseException;
        }
    .end annotation
.end method

.method public _getByteArrayBuilder()Lcom/flurry/org/codehaus/jackson/util/ByteArrayBuilder;
    .locals 1

    .prologue
    .line 492
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_byteArrayBuilder:Lcom/flurry/org/codehaus/jackson/util/ByteArrayBuilder;

    if-nez v0, :cond_0

    .line 493
    new-instance v0, Lcom/flurry/org/codehaus/jackson/util/ByteArrayBuilder;

    invoke-direct {v0}, Lcom/flurry/org/codehaus/jackson/util/ByteArrayBuilder;-><init>()V

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_byteArrayBuilder:Lcom/flurry/org/codehaus/jackson/util/ByteArrayBuilder;

    .line 497
    :goto_0
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_byteArrayBuilder:Lcom/flurry/org/codehaus/jackson/util/ByteArrayBuilder;

    return-object v0

    .line 495
    :cond_0
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_byteArrayBuilder:Lcom/flurry/org/codehaus/jackson/util/ByteArrayBuilder;

    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/util/ByteArrayBuilder;->reset()V

    goto :goto_0
.end method

.method protected _handleEOF()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 466
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_parsingContext:Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;->inRoot()Z

    move-result v0

    if-nez v0, :cond_0

    .line 467
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ": expected close marker for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_parsingContext:Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v1}, Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;->getTypeDesc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_parsingContext:Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;

    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_ioContext:Lcom/flurry/org/codehaus/jackson/io/IOContext;

    invoke-virtual {v2}, Lcom/flurry/org/codehaus/jackson/io/IOContext;->getSourceReference()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;->getStartLocation(Ljava/lang/Object;)Lcom/flurry/org/codehaus/jackson/JsonLocation;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_reportInvalidEOF(Ljava/lang/String;)V

    .line 469
    :cond_0
    return-void
.end method

.method protected _parseNumericValue(I)V
    .locals 9
    .param p1, "expType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    .line 715
    iget-object v6, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_currToken:Lcom/flurry/org/codehaus/jackson/JsonToken;

    sget-object v7, Lcom/flurry/org/codehaus/jackson/JsonToken;->VALUE_NUMBER_INT:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-ne v6, v7, :cond_7

    .line 716
    iget-object v6, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_textBuffer:Lcom/flurry/org/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v6}, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->getTextBuffer()[C

    move-result-object v0

    .line 717
    .local v0, "buf":[C
    iget-object v6, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_textBuffer:Lcom/flurry/org/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v6}, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->getTextOffset()I

    move-result v5

    .line 718
    .local v5, "offset":I
    iget v4, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_intLength:I

    .line 719
    .local v4, "len":I
    iget-boolean v6, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_numberNegative:Z

    if-eqz v6, :cond_0

    .line 720
    add-int/lit8 v5, v5, 0x1

    .line 722
    :cond_0
    const/16 v6, 0x9

    if-gt v4, v6, :cond_2

    .line 723
    invoke-static {v0, v5, v4}, Lcom/flurry/org/codehaus/jackson/io/NumberInput;->parseInt([CII)I

    move-result v1

    .line 724
    .local v1, "i":I
    iget-boolean v6, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_numberNegative:Z

    if-eqz v6, :cond_1

    neg-int v1, v1

    .end local v1    # "i":I
    :cond_1
    iput v1, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_numberInt:I

    .line 725
    iput v8, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    .line 761
    .end local v0    # "buf":[C
    .end local v4    # "len":I
    .end local v5    # "offset":I
    :goto_0
    return-void

    .line 728
    .restart local v0    # "buf":[C
    .restart local v4    # "len":I
    .restart local v5    # "offset":I
    :cond_2
    const/16 v6, 0x12

    if-gt v4, v6, :cond_6

    .line 729
    invoke-static {v0, v5, v4}, Lcom/flurry/org/codehaus/jackson/io/NumberInput;->parseLong([CII)J

    move-result-wide v2

    .line 730
    .local v2, "l":J
    iget-boolean v6, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_numberNegative:Z

    if-eqz v6, :cond_3

    .line 731
    neg-long v2, v2

    .line 734
    :cond_3
    const/16 v6, 0xa

    if-ne v4, v6, :cond_5

    .line 735
    iget-boolean v6, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_numberNegative:Z

    if-eqz v6, :cond_4

    .line 736
    const-wide/32 v6, -0x80000000

    cmp-long v6, v2, v6

    if-ltz v6, :cond_5

    .line 737
    long-to-int v6, v2

    iput v6, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_numberInt:I

    .line 738
    iput v8, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    goto :goto_0

    .line 742
    :cond_4
    const-wide/32 v6, 0x7fffffff

    cmp-long v6, v2, v6

    if-gtz v6, :cond_5

    .line 743
    long-to-int v6, v2

    iput v6, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_numberInt:I

    .line 744
    iput v8, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    goto :goto_0

    .line 749
    :cond_5
    iput-wide v2, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_numberLong:J

    .line 750
    const/4 v6, 0x2

    iput v6, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    goto :goto_0

    .line 753
    .end local v2    # "l":J
    :cond_6
    invoke-direct {p0, p1, v0, v5, v4}, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_parseSlowIntValue(I[CII)V

    goto :goto_0

    .line 756
    .end local v0    # "buf":[C
    .end local v4    # "len":I
    .end local v5    # "offset":I
    :cond_7
    iget-object v6, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_currToken:Lcom/flurry/org/codehaus/jackson/JsonToken;

    sget-object v7, Lcom/flurry/org/codehaus/jackson/JsonToken;->VALUE_NUMBER_FLOAT:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-ne v6, v7, :cond_8

    .line 757
    invoke-direct {p0, p1}, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_parseSlowFloatValue(I)V

    goto :goto_0

    .line 760
    :cond_8
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Current token ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_currToken:Lcom/flurry/org/codehaus/jackson/JsonToken;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") not numeric, can not use numeric value accessors"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_reportError(Ljava/lang/String;)V

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
    .line 450
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_textBuffer:Lcom/flurry/org/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v1}, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->releaseBuffers()V

    .line 451
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_nameCopyBuffer:[C

    .line 452
    .local v0, "buf":[C
    if-eqz v0, :cond_0

    .line 453
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_nameCopyBuffer:[C

    .line 454
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_ioContext:Lcom/flurry/org/codehaus/jackson/io/IOContext;

    invoke-virtual {v1, v0}, Lcom/flurry/org/codehaus/jackson/io/IOContext;->releaseNameCopyBuffer([C)V

    .line 456
    :cond_0
    return-void
.end method

.method protected _reportMismatchedEndMarker(IC)V
    .locals 4
    .param p1, "actCh"    # I
    .param p2, "expCh"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 480
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_parsingContext:Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;

    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_ioContext:Lcom/flurry/org/codehaus/jackson/io/IOContext;

    invoke-virtual {v3}, Lcom/flurry/org/codehaus/jackson/io/IOContext;->getSourceReference()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;->getStartLocation(Ljava/lang/Object;)Lcom/flurry/org/codehaus/jackson/JsonLocation;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 481
    .local v0, "startDesc":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected close marker \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    int-to-char v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\': expected \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' (for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_parsingContext:Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v2}, Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;->getTypeDesc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " starting at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_reportError(Ljava/lang/String;)V

    .line 482
    return-void
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 330
    iget-boolean v0, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_closed:Z

    if-nez v0, :cond_0

    .line 331
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_closed:Z

    .line 333
    :try_start_0
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_closeInput()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 337
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_releaseBuffers()V

    .line 340
    :cond_0
    return-void

    .line 337
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_releaseBuffers()V

    throw v0
.end method

.method protected convertNumberToBigDecimal()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 926
    iget v0, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    .line 931
    new-instance v0, Ljava/math/BigDecimal;

    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_numberBigDecimal:Ljava/math/BigDecimal;

    .line 941
    :goto_0
    iget v0, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    .line 942
    return-void

    .line 932
    :cond_0
    iget v0, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    .line 933
    new-instance v0, Ljava/math/BigDecimal;

    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_numberBigInt:Ljava/math/BigInteger;

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_numberBigDecimal:Ljava/math/BigDecimal;

    goto :goto_0

    .line 934
    :cond_1
    iget v0, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 935
    iget-wide v0, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_numberLong:J

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_numberBigDecimal:Ljava/math/BigDecimal;

    goto :goto_0

    .line 936
    :cond_2
    iget v0, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    .line 937
    iget v0, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_numberInt:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_numberBigDecimal:Ljava/math/BigDecimal;

    goto :goto_0

    .line 939
    :cond_3
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_throwInternal()V

    goto :goto_0
.end method

.method protected convertNumberToBigInteger()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 878
    iget v0, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    .line 880
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_numberBigDecimal:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_numberBigInt:Ljava/math/BigInteger;

    .line 890
    :goto_0
    iget v0, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    .line 891
    return-void

    .line 881
    :cond_0
    iget v0, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 882
    iget-wide v0, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_numberLong:J

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_numberBigInt:Ljava/math/BigInteger;

    goto :goto_0

    .line 883
    :cond_1
    iget v0, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 884
    iget v0, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_numberInt:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_numberBigInt:Ljava/math/BigInteger;

    goto :goto_0

    .line 885
    :cond_2
    iget v0, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 886
    iget-wide v0, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_numberDouble:D

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_numberBigInt:Ljava/math/BigInteger;

    goto :goto_0

    .line 888
    :cond_3
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_throwInternal()V

    goto :goto_0
.end method

.method protected convertNumberToDouble()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 902
    iget v0, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    .line 903
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_numberBigDecimal:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_numberDouble:D

    .line 914
    :goto_0
    iget v0, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    .line 915
    return-void

    .line 904
    :cond_0
    iget v0, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    .line 905
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_numberBigInt:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->doubleValue()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_numberDouble:D

    goto :goto_0

    .line 906
    :cond_1
    iget v0, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 907
    iget-wide v0, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_numberLong:J

    long-to-double v0, v0

    iput-wide v0, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_numberDouble:D

    goto :goto_0

    .line 908
    :cond_2
    iget v0, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    .line 909
    iget v0, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_numberInt:I

    int-to-double v0, v0

    iput-wide v0, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_numberDouble:D

    goto :goto_0

    .line 911
    :cond_3
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_throwInternal()V

    goto :goto_0
.end method

.method protected convertNumberToInt()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 819
    iget v1, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 821
    iget-wide v2, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_numberLong:J

    long-to-int v0, v2

    .line 822
    .local v0, "result":I
    int-to-long v2, v0

    iget-wide v4, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_numberLong:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 823
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Numeric value ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") out of range of int"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_reportError(Ljava/lang/String;)V

    .line 825
    :cond_0
    iput v0, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_numberInt:I

    .line 845
    .end local v0    # "result":I
    :goto_0
    iget v1, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    .line 846
    return-void

    .line 826
    :cond_1
    iget v1, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 828
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_numberBigInt:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    iput v1, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_numberInt:I

    goto :goto_0

    .line 829
    :cond_2
    iget v1, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_5

    .line 831
    iget-wide v2, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_numberDouble:D

    const-wide/high16 v4, -0x3e20000000000000L    # -2.147483648E9

    cmpg-double v1, v2, v4

    if-ltz v1, :cond_3

    iget-wide v2, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_numberDouble:D

    const-wide v4, 0x41dfffffffc00000L    # 2.147483647E9

    cmpl-double v1, v2, v4

    if-lez v1, :cond_4

    .line 832
    :cond_3
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->reportOverflowInt()V

    .line 834
    :cond_4
    iget-wide v2, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_numberDouble:D

    double-to-int v1, v2

    iput v1, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_numberInt:I

    goto :goto_0

    .line 835
    :cond_5
    iget v1, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_8

    .line 836
    sget-object v1, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->BD_MIN_INT:Ljava/math/BigDecimal;

    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_numberBigDecimal:Ljava/math/BigDecimal;

    invoke-virtual {v1, v2}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v1

    if-gtz v1, :cond_6

    sget-object v1, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->BD_MAX_INT:Ljava/math/BigDecimal;

    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_numberBigDecimal:Ljava/math/BigDecimal;

    invoke-virtual {v1, v2}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v1

    if-gez v1, :cond_7

    .line 838
    :cond_6
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->reportOverflowInt()V

    .line 840
    :cond_7
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_numberBigDecimal:Ljava/math/BigDecimal;

    invoke-virtual {v1}, Ljava/math/BigDecimal;->intValue()I

    move-result v1

    iput v1, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_numberInt:I

    goto :goto_0

    .line 842
    :cond_8
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_throwInternal()V

    goto :goto_0
.end method

.method protected convertNumberToLong()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 851
    iget v0, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 852
    iget v0, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_numberInt:I

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_numberLong:J

    .line 872
    :goto_0
    iget v0, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    .line 873
    return-void

    .line 853
    :cond_0
    iget v0, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    .line 855
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_numberBigInt:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_numberLong:J

    goto :goto_0

    .line 856
    :cond_1
    iget v0, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_4

    .line 858
    iget-wide v0, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_numberDouble:D

    const-wide/high16 v2, -0x3c20000000000000L    # -9.223372036854776E18

    cmpg-double v0, v0, v2

    if-ltz v0, :cond_2

    iget-wide v0, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_numberDouble:D

    const-wide/high16 v2, 0x43e0000000000000L    # 9.223372036854776E18

    cmpl-double v0, v0, v2

    if-lez v0, :cond_3

    .line 859
    :cond_2
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->reportOverflowLong()V

    .line 861
    :cond_3
    iget-wide v0, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_numberDouble:D

    double-to-long v0, v0

    iput-wide v0, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_numberLong:J

    goto :goto_0

    .line 862
    :cond_4
    iget v0, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_7

    .line 863
    sget-object v0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->BD_MIN_LONG:Ljava/math/BigDecimal;

    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_numberBigDecimal:Ljava/math/BigDecimal;

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-gtz v0, :cond_5

    sget-object v0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->BD_MAX_LONG:Ljava/math/BigDecimal;

    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_numberBigDecimal:Ljava/math/BigDecimal;

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-gez v0, :cond_6

    .line 865
    :cond_5
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->reportOverflowLong()V

    .line 867
    :cond_6
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_numberBigDecimal:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_numberLong:J

    goto :goto_0

    .line 869
    :cond_7
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_throwInternal()V

    goto :goto_0
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
    .line 642
    iget v0, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_1

    .line 643
    iget v0, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    if-nez v0, :cond_0

    .line 644
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_parseNumericValue(I)V

    .line 646
    :cond_0
    iget v0, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_1

    .line 647
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->convertNumberToBigInteger()V

    .line 650
    :cond_1
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_numberBigInt:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getCurrentLocation()Lcom/flurry/org/codehaus/jackson/JsonLocation;
    .locals 8

    .prologue
    .line 372
    iget v0, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    iget v1, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_currInputRowStart:I

    sub-int/2addr v0, v1

    add-int/lit8 v5, v0, 0x1

    .line 373
    .local v5, "col":I
    new-instance v0, Lcom/flurry/org/codehaus/jackson/JsonLocation;

    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_ioContext:Lcom/flurry/org/codehaus/jackson/io/IOContext;

    invoke-virtual {v1}, Lcom/flurry/org/codehaus/jackson/io/IOContext;->getSourceReference()Ljava/lang/Object;

    move-result-object v1

    iget-wide v2, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_currInputProcessed:J

    iget v4, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    int-to-long v6, v4

    add-long/2addr v2, v6

    const-wide/16 v6, 0x1

    sub-long/2addr v2, v6

    iget v4, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_currInputRow:I

    invoke-direct/range {v0 .. v5}, Lcom/flurry/org/codehaus/jackson/JsonLocation;-><init>(Ljava/lang/Object;JII)V

    return-object v0
.end method

.method public getCurrentName()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 320
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_currToken:Lcom/flurry/org/codehaus/jackson/JsonToken;

    sget-object v2, Lcom/flurry/org/codehaus/jackson/JsonToken;->START_OBJECT:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_currToken:Lcom/flurry/org/codehaus/jackson/JsonToken;

    sget-object v2, Lcom/flurry/org/codehaus/jackson/JsonToken;->START_ARRAY:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-ne v1, v2, :cond_1

    .line 321
    :cond_0
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_parsingContext:Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v1}, Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;->getParent()Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;

    move-result-object v0

    .line 322
    .local v0, "parent":Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;
    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;->getCurrentName()Ljava/lang/String;

    move-result-object v1

    .line 324
    .end local v0    # "parent":Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;
    :goto_0
    return-object v1

    :cond_1
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_parsingContext:Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v1}, Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;->getCurrentName()Ljava/lang/String;

    move-result-object v1

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
    .line 685
    iget v0, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_1

    .line 686
    iget v0, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    if-nez v0, :cond_0

    .line 687
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_parseNumericValue(I)V

    .line 689
    :cond_0
    iget v0, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_1

    .line 690
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->convertNumberToBigDecimal()V

    .line 693
    :cond_1
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_numberBigDecimal:Ljava/math/BigDecimal;

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
    .line 671
    iget v0, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_1

    .line 672
    iget v0, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    if-nez v0, :cond_0

    .line 673
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_parseNumericValue(I)V

    .line 675
    :cond_0
    iget v0, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_1

    .line 676
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->convertNumberToDouble()V

    .line 679
    :cond_1
    iget-wide v0, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_numberDouble:D

    return-wide v0
.end method

.method public getFloatValue()F
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 656
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->getDoubleValue()D

    move-result-wide v0

    .line 665
    .local v0, "value":D
    double-to-float v2, v0

    return v2
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
    .line 614
    iget v0, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_1

    .line 615
    iget v0, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    if-nez v0, :cond_0

    .line 616
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_parseNumericValue(I)V

    .line 618
    :cond_0
    iget v0, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_1

    .line 619
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->convertNumberToInt()V

    .line 622
    :cond_1
    iget v0, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_numberInt:I

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
    .line 628
    iget v0, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    .line 629
    iget v0, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    if-nez v0, :cond_0

    .line 630
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_parseNumericValue(I)V

    .line 632
    :cond_0
    iget v0, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    .line 633
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->convertNumberToLong()V

    .line 636
    :cond_1
    iget-wide v0, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_numberLong:J

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
    .line 586
    iget v0, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    if-nez v0, :cond_0

    .line 587
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_parseNumericValue(I)V

    .line 589
    :cond_0
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_currToken:Lcom/flurry/org/codehaus/jackson/JsonToken;

    sget-object v1, Lcom/flurry/org/codehaus/jackson/JsonToken;->VALUE_NUMBER_INT:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_3

    .line 590
    iget v0, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 591
    sget-object v0, Lcom/flurry/org/codehaus/jackson/JsonParser$NumberType;->INT:Lcom/flurry/org/codehaus/jackson/JsonParser$NumberType;

    .line 608
    :goto_0
    return-object v0

    .line 593
    :cond_1
    iget v0, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 594
    sget-object v0, Lcom/flurry/org/codehaus/jackson/JsonParser$NumberType;->LONG:Lcom/flurry/org/codehaus/jackson/JsonParser$NumberType;

    goto :goto_0

    .line 596
    :cond_2
    sget-object v0, Lcom/flurry/org/codehaus/jackson/JsonParser$NumberType;->BIG_INTEGER:Lcom/flurry/org/codehaus/jackson/JsonParser$NumberType;

    goto :goto_0

    .line 605
    :cond_3
    iget v0, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    .line 606
    sget-object v0, Lcom/flurry/org/codehaus/jackson/JsonParser$NumberType;->BIG_DECIMAL:Lcom/flurry/org/codehaus/jackson/JsonParser$NumberType;

    goto :goto_0

    .line 608
    :cond_4
    sget-object v0, Lcom/flurry/org/codehaus/jackson/JsonParser$NumberType;->DOUBLE:Lcom/flurry/org/codehaus/jackson/JsonParser$NumberType;

    goto :goto_0
.end method

.method public getNumberValue()Ljava/lang/Number;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 553
    iget v0, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    if-nez v0, :cond_0

    .line 554
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_parseNumericValue(I)V

    .line 557
    :cond_0
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_currToken:Lcom/flurry/org/codehaus/jackson/JsonToken;

    sget-object v1, Lcom/flurry/org/codehaus/jackson/JsonToken;->VALUE_NUMBER_INT:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_4

    .line 558
    iget v0, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 559
    iget v0, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_numberInt:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 580
    :goto_0
    return-object v0

    .line 561
    :cond_1
    iget v0, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 562
    iget-wide v0, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_numberLong:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 564
    :cond_2
    iget v0, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3

    .line 565
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_numberBigInt:Ljava/math/BigInteger;

    goto :goto_0

    .line 568
    :cond_3
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_numberBigDecimal:Ljava/math/BigDecimal;

    goto :goto_0

    .line 574
    :cond_4
    iget v0, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_5

    .line 575
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_numberBigDecimal:Ljava/math/BigDecimal;

    goto :goto_0

    .line 577
    :cond_5
    iget v0, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_6

    .line 578
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_throwInternal()V

    .line 580
    :cond_6
    iget-wide v0, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_numberDouble:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic getParsingContext()Lcom/flurry/org/codehaus/jackson/JsonStreamContext;
    .locals 1

    .prologue
    .line 21
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->getParsingContext()Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;

    move-result-object v0

    return-object v0
.end method

.method public getParsingContext()Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_parsingContext:Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;

    return-object v0
.end method

.method public final getTokenCharacterOffset()J
    .locals 2

    .prologue
    .line 402
    iget-wide v0, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_tokenInputTotal:J

    return-wide v0
.end method

.method public final getTokenColumnNr()I
    .locals 1

    .prologue
    .line 406
    iget v0, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_tokenInputCol:I

    .line 407
    .local v0, "col":I
    if-gez v0, :cond_0

    .end local v0    # "col":I
    :goto_0
    return v0

    .restart local v0    # "col":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final getTokenLineNr()I
    .locals 1

    .prologue
    .line 403
    iget v0, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_tokenInputRow:I

    return v0
.end method

.method public getTokenLocation()Lcom/flurry/org/codehaus/jackson/JsonLocation;
    .locals 6

    .prologue
    .line 359
    new-instance v0, Lcom/flurry/org/codehaus/jackson/JsonLocation;

    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_ioContext:Lcom/flurry/org/codehaus/jackson/io/IOContext;

    invoke-virtual {v1}, Lcom/flurry/org/codehaus/jackson/io/IOContext;->getSourceReference()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->getTokenCharacterOffset()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->getTokenLineNr()I

    move-result v4

    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->getTokenColumnNr()I

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/flurry/org/codehaus/jackson/JsonLocation;-><init>(Ljava/lang/Object;JII)V

    return-object v0
.end method

.method public hasTextCharacters()Z
    .locals 2

    .prologue
    .line 387
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_currToken:Lcom/flurry/org/codehaus/jackson/JsonToken;

    sget-object v1, Lcom/flurry/org/codehaus/jackson/JsonToken;->VALUE_STRING:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_0

    .line 388
    const/4 v0, 0x1

    .line 393
    :goto_0
    return v0

    .line 390
    :cond_0
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_currToken:Lcom/flurry/org/codehaus/jackson/JsonToken;

    sget-object v1, Lcom/flurry/org/codehaus/jackson/JsonToken;->FIELD_NAME:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_1

    .line 391
    iget-boolean v0, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_nameCopied:Z

    goto :goto_0

    .line 393
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isClosed()Z
    .locals 1

    .prologue
    .line 343
    iget-boolean v0, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_closed:Z

    return v0
.end method

.method protected abstract loadMore()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected final loadMoreGuaranteed()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 419
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->loadMore()Z

    move-result v0

    if-nez v0, :cond_0

    .line 420
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_reportInvalidEOF()V

    .line 422
    :cond_0
    return-void
.end method

.method protected reportInvalidBase64Char(Lcom/flurry/org/codehaus/jackson/Base64Variant;II)Ljava/lang/IllegalArgumentException;
    .locals 1
    .param p1, "b64variant"    # Lcom/flurry/org/codehaus/jackson/Base64Variant;
    .param p2, "ch"    # I
    .param p3, "bindex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 1041
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->reportInvalidBase64Char(Lcom/flurry/org/codehaus/jackson/Base64Variant;IILjava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    return-object v0
.end method

.method protected reportInvalidBase64Char(Lcom/flurry/org/codehaus/jackson/Base64Variant;IILjava/lang/String;)Ljava/lang/IllegalArgumentException;
    .locals 3
    .param p1, "b64variant"    # Lcom/flurry/org/codehaus/jackson/Base64Variant;
    .param p2, "ch"    # I
    .param p3, "bindex"    # I
    .param p4, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 1052
    const/16 v1, 0x20

    if-gt p2, v1, :cond_1

    .line 1053
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal white space character (code 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") as character #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, p3, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " of 4-char base64 unit: can only used between units"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1062
    .local v0, "base":Ljava/lang/String;
    :goto_0
    if-eqz p4, :cond_0

    .line 1063
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1065
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 1054
    .end local v0    # "base":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1, p2}, Lcom/flurry/org/codehaus/jackson/Base64Variant;->usesPaddingChar(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1055
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected padding character (\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/Base64Variant;->getPaddingChar()C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\') as character #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, p3, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " of 4-char base64 unit: padding only legal as 3rd or 4th character"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "base":Ljava/lang/String;
    goto :goto_0

    .line 1056
    .end local v0    # "base":Ljava/lang/String;
    :cond_2
    invoke-static {p2}, Ljava/lang/Character;->isDefined(I)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p2}, Ljava/lang/Character;->isISOControl(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1058
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal character (code 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") in base64 content"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "base":Ljava/lang/String;
    goto :goto_0

    .line 1060
    .end local v0    # "base":Ljava/lang/String;
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal character \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    int-to-char v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' (code 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") in base64 content"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "base":Ljava/lang/String;
    goto/16 :goto_0
.end method

.method protected reportInvalidNumber(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 963
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid numeric value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_reportError(Ljava/lang/String;)V

    .line 964
    return-void
.end method

.method protected reportOverflowInt()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 969
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Numeric value ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") out of range of int ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_reportError(Ljava/lang/String;)V

    .line 970
    return-void
.end method

.method protected reportOverflowLong()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 975
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Numeric value ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") out of range of long ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-wide/high16 v2, -0x8000000000000000L

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-wide v2, 0x7fffffffffffffffL

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_reportError(Ljava/lang/String;)V

    .line 976
    return-void
.end method

.method protected reportUnexpectedNumberChar(ILjava/lang/String;)V
    .locals 3
    .param p1, "ch"    # I
    .param p2, "comment"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 953
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected character ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_getCharDesc(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") in numeric value"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 954
    .local v0, "msg":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 955
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 957
    :cond_0
    invoke-virtual {p0, v0}, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_reportError(Ljava/lang/String;)V

    .line 958
    return-void
.end method

.method protected final reset(ZIII)Lcom/flurry/org/codehaus/jackson/JsonToken;
    .locals 1
    .param p1, "negative"    # Z
    .param p2, "intLen"    # I
    .param p3, "fractLen"    # I
    .param p4, "expLen"    # I

    .prologue
    const/4 v0, 0x1

    .line 510
    if-ge p3, v0, :cond_0

    if-ge p4, v0, :cond_0

    .line 511
    invoke-virtual {p0, p1, p2}, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->resetInt(ZI)Lcom/flurry/org/codehaus/jackson/JsonToken;

    move-result-object v0

    .line 513
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->resetFloat(ZIII)Lcom/flurry/org/codehaus/jackson/JsonToken;

    move-result-object v0

    goto :goto_0
.end method

.method protected final resetAsNaN(Ljava/lang/String;D)Lcom/flurry/org/codehaus/jackson/JsonToken;
    .locals 2
    .param p1, "valueStr"    # Ljava/lang/String;
    .param p2, "value"    # D

    .prologue
    .line 538
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_textBuffer:Lcom/flurry/org/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v0, p1}, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->resetWithString(Ljava/lang/String;)V

    .line 539
    iput-wide p2, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_numberDouble:D

    .line 540
    const/16 v0, 0x8

    iput v0, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    .line 541
    sget-object v0, Lcom/flurry/org/codehaus/jackson/JsonToken;->VALUE_NUMBER_FLOAT:Lcom/flurry/org/codehaus/jackson/JsonToken;

    return-object v0
.end method

.method protected final resetFloat(ZIII)Lcom/flurry/org/codehaus/jackson/JsonToken;
    .locals 1
    .param p1, "negative"    # Z
    .param p2, "intLen"    # I
    .param p3, "fractLen"    # I
    .param p4, "expLen"    # I

    .prologue
    .line 528
    iput-boolean p1, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_numberNegative:Z

    .line 529
    iput p2, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_intLength:I

    .line 530
    iput p3, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_fractLength:I

    .line 531
    iput p4, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_expLength:I

    .line 532
    const/4 v0, 0x0

    iput v0, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    .line 533
    sget-object v0, Lcom/flurry/org/codehaus/jackson/JsonToken;->VALUE_NUMBER_FLOAT:Lcom/flurry/org/codehaus/jackson/JsonToken;

    return-object v0
.end method

.method protected final resetInt(ZI)Lcom/flurry/org/codehaus/jackson/JsonToken;
    .locals 1
    .param p1, "negative"    # Z
    .param p2, "intLen"    # I

    .prologue
    const/4 v0, 0x0

    .line 518
    iput-boolean p1, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_numberNegative:Z

    .line 519
    iput p2, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_intLength:I

    .line 520
    iput v0, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_fractLength:I

    .line 521
    iput v0, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_expLength:I

    .line 522
    iput v0, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    .line 523
    sget-object v0, Lcom/flurry/org/codehaus/jackson/JsonToken;->VALUE_NUMBER_INT:Lcom/flurry/org/codehaus/jackson/JsonToken;

    return-object v0
.end method

.method public version()Lcom/flurry/org/codehaus/jackson/Version;
    .locals 1

    .prologue
    .line 302
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/flurry/org/codehaus/jackson/util/VersionUtil;->versionFor(Ljava/lang/Class;)Lcom/flurry/org/codehaus/jackson/Version;

    move-result-object v0

    return-object v0
.end method
