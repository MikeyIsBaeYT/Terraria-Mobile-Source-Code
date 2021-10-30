.class public final Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;
.super Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;
.source "Utf8StreamParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser$1;
    }
.end annotation


# static fields
.field static final BYTE_LF:B = 0xat

.field private static final sInputCodesLatin1:[I

.field private static final sInputCodesUtf8:[I


# instance fields
.field protected _bufferRecyclable:Z

.field protected _inputBuffer:[B

.field protected _inputStream:Ljava/io/InputStream;

.field protected _objectCodec:Lcom/flurry/org/codehaus/jackson/ObjectCodec;

.field private _quad1:I

.field protected _quadBuffer:[I

.field protected final _symbols:Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;

.field protected _tokenIncomplete:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    invoke-static {}, Lcom/flurry/org/codehaus/jackson/util/CharTypes;->getInputCodeUtf8()[I

    move-result-object v0

    sput-object v0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->sInputCodesUtf8:[I

    .line 25
    invoke-static {}, Lcom/flurry/org/codehaus/jackson/util/CharTypes;->getInputCodeLatin1()[I

    move-result-object v0

    sput-object v0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->sInputCodesLatin1:[I

    return-void
.end method

.method public constructor <init>(Lcom/flurry/org/codehaus/jackson/io/IOContext;ILjava/io/InputStream;Lcom/flurry/org/codehaus/jackson/ObjectCodec;Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;[BIIZ)V
    .locals 1
    .param p1, "ctxt"    # Lcom/flurry/org/codehaus/jackson/io/IOContext;
    .param p2, "features"    # I
    .param p3, "in"    # Ljava/io/InputStream;
    .param p4, "codec"    # Lcom/flurry/org/codehaus/jackson/ObjectCodec;
    .param p5, "sym"    # Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;
    .param p6, "inputBuffer"    # [B
    .param p7, "start"    # I
    .param p8, "end"    # I
    .param p9, "bufferRecyclable"    # Z

    .prologue
    .line 109
    invoke-direct {p0, p1, p2}, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;-><init>(Lcom/flurry/org/codehaus/jackson/io/IOContext;I)V

    .line 54
    const/16 v0, 0x10

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_quadBuffer:[I

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_tokenIncomplete:Z

    .line 110
    iput-object p3, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputStream:Ljava/io/InputStream;

    .line 111
    iput-object p4, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_objectCodec:Lcom/flurry/org/codehaus/jackson/ObjectCodec;

    .line 112
    iput-object p5, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_symbols:Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;

    .line 113
    iput-object p6, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    .line 114
    iput p7, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    .line 115
    iput p8, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I

    .line 116
    iput-boolean p9, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_bufferRecyclable:Z

    .line 118
    sget-object v0, Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;->CANONICALIZE_FIELD_NAMES:Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;

    invoke-virtual {v0, p2}, Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;->enabledIn(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 120
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_throwInternal()V

    .line 122
    :cond_0
    return-void
.end method

.method private final _decodeUtf8_2(I)I
    .locals 4
    .param p1, "c"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 2617
    iget v1, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    iget v2, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I

    if-lt v1, v2, :cond_0

    .line 2618
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->loadMoreGuaranteed()V

    .line 2620
    :cond_0
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v2, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    aget-byte v0, v1, v2

    .line 2621
    .local v0, "d":I
    and-int/lit16 v1, v0, 0xc0

    const/16 v2, 0x80

    if-eq v1, v2, :cond_1

    .line 2622
    and-int/lit16 v1, v0, 0xff

    iget v2, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    invoke-virtual {p0, v1, v2}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidOther(II)V

    .line 2624
    :cond_1
    and-int/lit8 v1, p1, 0x1f

    shl-int/lit8 v1, v1, 0x6

    and-int/lit8 v2, v0, 0x3f

    or-int/2addr v1, v2

    return v1
.end method

.method private final _decodeUtf8_3(I)I
    .locals 6
    .param p1, "c1"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x80

    .line 2630
    iget v2, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    iget v3, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I

    if-lt v2, v3, :cond_0

    .line 2631
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->loadMoreGuaranteed()V

    .line 2633
    :cond_0
    and-int/lit8 p1, p1, 0xf

    .line 2634
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v3, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    aget-byte v1, v2, v3

    .line 2635
    .local v1, "d":I
    and-int/lit16 v2, v1, 0xc0

    if-eq v2, v5, :cond_1

    .line 2636
    and-int/lit16 v2, v1, 0xff

    iget v3, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    invoke-virtual {p0, v2, v3}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidOther(II)V

    .line 2638
    :cond_1
    shl-int/lit8 v2, p1, 0x6

    and-int/lit8 v3, v1, 0x3f

    or-int v0, v2, v3

    .line 2639
    .local v0, "c":I
    iget v2, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    iget v3, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I

    if-lt v2, v3, :cond_2

    .line 2640
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->loadMoreGuaranteed()V

    .line 2642
    :cond_2
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v3, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    aget-byte v1, v2, v3

    .line 2643
    and-int/lit16 v2, v1, 0xc0

    if-eq v2, v5, :cond_3

    .line 2644
    and-int/lit16 v2, v1, 0xff

    iget v3, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    invoke-virtual {p0, v2, v3}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidOther(II)V

    .line 2646
    :cond_3
    shl-int/lit8 v2, v0, 0x6

    and-int/lit8 v3, v1, 0x3f

    or-int v0, v2, v3

    .line 2647
    return v0
.end method

.method private final _decodeUtf8_3fast(I)I
    .locals 6
    .param p1, "c1"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x80

    .line 2653
    and-int/lit8 p1, p1, 0xf

    .line 2654
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v3, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    aget-byte v1, v2, v3

    .line 2655
    .local v1, "d":I
    and-int/lit16 v2, v1, 0xc0

    if-eq v2, v5, :cond_0

    .line 2656
    and-int/lit16 v2, v1, 0xff

    iget v3, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    invoke-virtual {p0, v2, v3}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidOther(II)V

    .line 2658
    :cond_0
    shl-int/lit8 v2, p1, 0x6

    and-int/lit8 v3, v1, 0x3f

    or-int v0, v2, v3

    .line 2659
    .local v0, "c":I
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v3, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    aget-byte v1, v2, v3

    .line 2660
    and-int/lit16 v2, v1, 0xc0

    if-eq v2, v5, :cond_1

    .line 2661
    and-int/lit16 v2, v1, 0xff

    iget v3, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    invoke-virtual {p0, v2, v3}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidOther(II)V

    .line 2663
    :cond_1
    shl-int/lit8 v2, v0, 0x6

    and-int/lit8 v3, v1, 0x3f

    or-int v0, v2, v3

    .line 2664
    return v0
.end method

.method private final _decodeUtf8_4(I)I
    .locals 5
    .param p1, "c"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x80

    .line 2674
    iget v1, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    iget v2, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I

    if-lt v1, v2, :cond_0

    .line 2675
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->loadMoreGuaranteed()V

    .line 2677
    :cond_0
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v2, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    aget-byte v0, v1, v2

    .line 2678
    .local v0, "d":I
    and-int/lit16 v1, v0, 0xc0

    if-eq v1, v4, :cond_1

    .line 2679
    and-int/lit16 v1, v0, 0xff

    iget v2, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    invoke-virtual {p0, v1, v2}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidOther(II)V

    .line 2681
    :cond_1
    and-int/lit8 v1, p1, 0x7

    shl-int/lit8 v1, v1, 0x6

    and-int/lit8 v2, v0, 0x3f

    or-int p1, v1, v2

    .line 2683
    iget v1, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    iget v2, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I

    if-lt v1, v2, :cond_2

    .line 2684
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->loadMoreGuaranteed()V

    .line 2686
    :cond_2
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v2, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    aget-byte v0, v1, v2

    .line 2687
    and-int/lit16 v1, v0, 0xc0

    if-eq v1, v4, :cond_3

    .line 2688
    and-int/lit16 v1, v0, 0xff

    iget v2, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    invoke-virtual {p0, v1, v2}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidOther(II)V

    .line 2690
    :cond_3
    shl-int/lit8 v1, p1, 0x6

    and-int/lit8 v2, v0, 0x3f

    or-int p1, v1, v2

    .line 2691
    iget v1, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    iget v2, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I

    if-lt v1, v2, :cond_4

    .line 2692
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->loadMoreGuaranteed()V

    .line 2694
    :cond_4
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v2, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    aget-byte v0, v1, v2

    .line 2695
    and-int/lit16 v1, v0, 0xc0

    if-eq v1, v4, :cond_5

    .line 2696
    and-int/lit16 v1, v0, 0xff

    iget v2, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    invoke-virtual {p0, v1, v2}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidOther(II)V

    .line 2702
    :cond_5
    shl-int/lit8 v1, p1, 0x6

    and-int/lit8 v2, v0, 0x3f

    or-int/2addr v1, v2

    const/high16 v2, 0x10000

    sub-int/2addr v1, v2

    return v1
.end method

.method private final _finishString2([CI)V
    .locals 9
    .param p1, "outBuf"    # [C
    .param p2, "outPtr"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 1914
    sget-object v1, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->sInputCodesUtf8:[I

    .line 1915
    .local v1, "codes":[I
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    .line 1922
    .local v2, "inputBuffer":[B
    :goto_0
    iget v5, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    .line 1923
    .local v5, "ptr":I
    iget v7, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I

    if-lt v5, v7, :cond_0

    .line 1924
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->loadMoreGuaranteed()V

    .line 1925
    iget v5, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    .line 1927
    :cond_0
    array-length v7, p1

    if-lt p2, v7, :cond_1

    .line 1928
    iget-object v7, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_textBuffer:Lcom/flurry/org/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v7}, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object p1

    .line 1929
    const/4 p2, 0x0

    .line 1931
    :cond_1
    iget v7, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I

    array-length v8, p1

    sub-int/2addr v8, p2

    add-int/2addr v8, v5

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v3

    .local v3, "max":I
    move v6, v5

    .end local v5    # "ptr":I
    .local v6, "ptr":I
    move v4, p2

    .line 1932
    .end local p2    # "outPtr":I
    .local v4, "outPtr":I
    :goto_1
    if-ge v6, v3, :cond_3

    .line 1933
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "ptr":I
    .restart local v5    # "ptr":I
    aget-byte v7, v2, v6

    and-int/lit16 v0, v7, 0xff

    .line 1934
    .local v0, "c":I
    aget v7, v1, v0

    if-eqz v7, :cond_2

    .line 1935
    iput v5, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    .line 1943
    const/16 v7, 0x22

    if-ne v0, v7, :cond_4

    .line 1989
    iget-object v7, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_textBuffer:Lcom/flurry/org/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v7, v4}, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->setCurrentLength(I)V

    .line 1990
    return-void

    .line 1938
    :cond_2
    add-int/lit8 p2, v4, 0x1

    .end local v4    # "outPtr":I
    .restart local p2    # "outPtr":I
    int-to-char v7, v0

    aput-char v7, p1, v4

    move v6, v5

    .end local v5    # "ptr":I
    .restart local v6    # "ptr":I
    move v4, p2

    .end local p2    # "outPtr":I
    .restart local v4    # "outPtr":I
    goto :goto_1

    .line 1940
    .end local v0    # "c":I
    :cond_3
    iput v6, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    move p2, v4

    .line 1941
    .end local v4    # "outPtr":I
    .restart local p2    # "outPtr":I
    goto :goto_0

    .line 1947
    .end local v6    # "ptr":I
    .end local p2    # "outPtr":I
    .restart local v0    # "c":I
    .restart local v4    # "outPtr":I
    .restart local v5    # "ptr":I
    :cond_4
    aget v7, v1, v0

    packed-switch v7, :pswitch_data_0

    .line 1973
    const/16 v7, 0x20

    if-ge v0, v7, :cond_8

    .line 1975
    const-string v7, "string value"

    invoke-virtual {p0, v0, v7}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_throwUnquotedSpace(ILjava/lang/String;)V

    move p2, v4

    .line 1982
    .end local v4    # "outPtr":I
    .restart local p2    # "outPtr":I
    :goto_2
    array-length v7, p1

    if-lt p2, v7, :cond_5

    .line 1983
    iget-object v7, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_textBuffer:Lcom/flurry/org/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v7}, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object p1

    .line 1984
    const/4 p2, 0x0

    .line 1987
    :cond_5
    add-int/lit8 v4, p2, 0x1

    .end local p2    # "outPtr":I
    .restart local v4    # "outPtr":I
    int-to-char v7, v0

    aput-char v7, p1, p2

    move p2, v4

    .end local v4    # "outPtr":I
    .restart local p2    # "outPtr":I
    goto :goto_0

    .line 1949
    .end local p2    # "outPtr":I
    .restart local v4    # "outPtr":I
    :pswitch_0
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_decodeEscaped()C

    move-result v0

    move p2, v4

    .line 1950
    .end local v4    # "outPtr":I
    .restart local p2    # "outPtr":I
    goto :goto_2

    .line 1952
    .end local p2    # "outPtr":I
    .restart local v4    # "outPtr":I
    :pswitch_1
    invoke-direct {p0, v0}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_decodeUtf8_2(I)I

    move-result v0

    move p2, v4

    .line 1953
    .end local v4    # "outPtr":I
    .restart local p2    # "outPtr":I
    goto :goto_2

    .line 1955
    .end local p2    # "outPtr":I
    .restart local v4    # "outPtr":I
    :pswitch_2
    iget v7, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I

    iget v8, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    sub-int/2addr v7, v8

    const/4 v8, 0x2

    if-lt v7, v8, :cond_6

    .line 1956
    invoke-direct {p0, v0}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_decodeUtf8_3fast(I)I

    move-result v0

    move p2, v4

    .end local v4    # "outPtr":I
    .restart local p2    # "outPtr":I
    goto :goto_2

    .line 1958
    .end local p2    # "outPtr":I
    .restart local v4    # "outPtr":I
    :cond_6
    invoke-direct {p0, v0}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_decodeUtf8_3(I)I

    move-result v0

    move p2, v4

    .line 1960
    .end local v4    # "outPtr":I
    .restart local p2    # "outPtr":I
    goto :goto_2

    .line 1962
    .end local p2    # "outPtr":I
    .restart local v4    # "outPtr":I
    :pswitch_3
    invoke-direct {p0, v0}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_decodeUtf8_4(I)I

    move-result v0

    .line 1964
    add-int/lit8 p2, v4, 0x1

    .end local v4    # "outPtr":I
    .restart local p2    # "outPtr":I
    const v7, 0xd800

    shr-int/lit8 v8, v0, 0xa

    or-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, p1, v4

    .line 1965
    array-length v7, p1

    if-lt p2, v7, :cond_7

    .line 1966
    iget-object v7, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_textBuffer:Lcom/flurry/org/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v7}, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object p1

    .line 1967
    const/4 p2, 0x0

    .line 1969
    :cond_7
    const v7, 0xdc00

    and-int/lit16 v8, v0, 0x3ff

    or-int v0, v7, v8

    .line 1971
    goto :goto_2

    .line 1978
    .end local p2    # "outPtr":I
    .restart local v4    # "outPtr":I
    :cond_8
    invoke-virtual {p0, v0}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidChar(I)V

    move p2, v4

    .end local v4    # "outPtr":I
    .restart local p2    # "outPtr":I
    goto :goto_2

    .line 1947
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private final _isNextTokenNameNo(I)V
    .locals 5
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 805
    invoke-virtual {p0, p1}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_parseFieldName(I)Lcom/flurry/org/codehaus/jackson/sym/Name;

    move-result-object v0

    .line 806
    .local v0, "n":Lcom/flurry/org/codehaus/jackson/sym/Name;
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_parsingContext:Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/sym/Name;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;->setCurrentName(Ljava/lang/String;)V

    .line 807
    sget-object v2, Lcom/flurry/org/codehaus/jackson/JsonToken;->FIELD_NAME:Lcom/flurry/org/codehaus/jackson/JsonToken;

    iput-object v2, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_currToken:Lcom/flurry/org/codehaus/jackson/JsonToken;

    .line 808
    invoke-direct {p0}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_skipWS()I

    move-result p1

    .line 809
    const/16 v2, 0x3a

    if-eq p1, v2, :cond_0

    .line 810
    const-string v2, "was expecting a colon to separate field name and value"

    invoke-virtual {p0, p1, v2}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_reportUnexpectedChar(ILjava/lang/String;)V

    .line 812
    :cond_0
    invoke-direct {p0}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_skipWS()I

    move-result p1

    .line 815
    const/16 v2, 0x22

    if-ne p1, v2, :cond_1

    .line 816
    iput-boolean v4, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_tokenIncomplete:Z

    .line 817
    sget-object v2, Lcom/flurry/org/codehaus/jackson/JsonToken;->VALUE_STRING:Lcom/flurry/org/codehaus/jackson/JsonToken;

    iput-object v2, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_nextToken:Lcom/flurry/org/codehaus/jackson/JsonToken;

    .line 862
    :goto_0
    return-void

    .line 822
    :cond_1
    sparse-switch p1, :sswitch_data_0

    .line 859
    invoke-virtual {p0, p1}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_handleUnexpectedValue(I)Lcom/flurry/org/codehaus/jackson/JsonToken;

    move-result-object v1

    .line 861
    .local v1, "t":Lcom/flurry/org/codehaus/jackson/JsonToken;
    :goto_1
    iput-object v1, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_nextToken:Lcom/flurry/org/codehaus/jackson/JsonToken;

    goto :goto_0

    .line 824
    .end local v1    # "t":Lcom/flurry/org/codehaus/jackson/JsonToken;
    :sswitch_0
    sget-object v1, Lcom/flurry/org/codehaus/jackson/JsonToken;->START_ARRAY:Lcom/flurry/org/codehaus/jackson/JsonToken;

    .line 825
    .restart local v1    # "t":Lcom/flurry/org/codehaus/jackson/JsonToken;
    goto :goto_1

    .line 827
    .end local v1    # "t":Lcom/flurry/org/codehaus/jackson/JsonToken;
    :sswitch_1
    sget-object v1, Lcom/flurry/org/codehaus/jackson/JsonToken;->START_OBJECT:Lcom/flurry/org/codehaus/jackson/JsonToken;

    .line 828
    .restart local v1    # "t":Lcom/flurry/org/codehaus/jackson/JsonToken;
    goto :goto_1

    .line 831
    .end local v1    # "t":Lcom/flurry/org/codehaus/jackson/JsonToken;
    :sswitch_2
    const-string v2, "expected a value"

    invoke-virtual {p0, p1, v2}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_reportUnexpectedChar(ILjava/lang/String;)V

    .line 833
    :sswitch_3
    const-string v2, "true"

    invoke-virtual {p0, v2, v4}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_matchToken(Ljava/lang/String;I)V

    .line 834
    sget-object v1, Lcom/flurry/org/codehaus/jackson/JsonToken;->VALUE_TRUE:Lcom/flurry/org/codehaus/jackson/JsonToken;

    .line 835
    .restart local v1    # "t":Lcom/flurry/org/codehaus/jackson/JsonToken;
    goto :goto_1

    .line 837
    .end local v1    # "t":Lcom/flurry/org/codehaus/jackson/JsonToken;
    :sswitch_4
    const-string v2, "false"

    invoke-virtual {p0, v2, v4}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_matchToken(Ljava/lang/String;I)V

    .line 838
    sget-object v1, Lcom/flurry/org/codehaus/jackson/JsonToken;->VALUE_FALSE:Lcom/flurry/org/codehaus/jackson/JsonToken;

    .line 839
    .restart local v1    # "t":Lcom/flurry/org/codehaus/jackson/JsonToken;
    goto :goto_1

    .line 841
    .end local v1    # "t":Lcom/flurry/org/codehaus/jackson/JsonToken;
    :sswitch_5
    const-string v2, "null"

    invoke-virtual {p0, v2, v4}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_matchToken(Ljava/lang/String;I)V

    .line 842
    sget-object v1, Lcom/flurry/org/codehaus/jackson/JsonToken;->VALUE_NULL:Lcom/flurry/org/codehaus/jackson/JsonToken;

    .line 843
    .restart local v1    # "t":Lcom/flurry/org/codehaus/jackson/JsonToken;
    goto :goto_1

    .line 856
    .end local v1    # "t":Lcom/flurry/org/codehaus/jackson/JsonToken;
    :sswitch_6
    invoke-virtual {p0, p1}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->parseNumberText(I)Lcom/flurry/org/codehaus/jackson/JsonToken;

    move-result-object v1

    .line 857
    .restart local v1    # "t":Lcom/flurry/org/codehaus/jackson/JsonToken;
    goto :goto_1

    .line 822
    :sswitch_data_0
    .sparse-switch
        0x2d -> :sswitch_6
        0x30 -> :sswitch_6
        0x31 -> :sswitch_6
        0x32 -> :sswitch_6
        0x33 -> :sswitch_6
        0x34 -> :sswitch_6
        0x35 -> :sswitch_6
        0x36 -> :sswitch_6
        0x37 -> :sswitch_6
        0x38 -> :sswitch_6
        0x39 -> :sswitch_6
        0x5b -> :sswitch_0
        0x5d -> :sswitch_2
        0x66 -> :sswitch_4
        0x6e -> :sswitch_5
        0x74 -> :sswitch_3
        0x7b -> :sswitch_1
        0x7d -> :sswitch_2
    .end sparse-switch
.end method

.method private final _isNextTokenNameYes()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 733
    iget v1, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    iget v2, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I

    if-ge v1, v2, :cond_5

    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v2, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    aget-byte v1, v1, v2

    const/16 v2, 0x3a

    if-ne v1, v2, :cond_5

    .line 734
    iget v1, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    .line 735
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v2, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    aget-byte v0, v1, v2

    .line 736
    .local v0, "i":I
    const/16 v1, 0x22

    if-ne v0, v1, :cond_0

    .line 737
    iput-boolean v4, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_tokenIncomplete:Z

    .line 738
    sget-object v1, Lcom/flurry/org/codehaus/jackson/JsonToken;->VALUE_STRING:Lcom/flurry/org/codehaus/jackson/JsonToken;

    iput-object v1, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_nextToken:Lcom/flurry/org/codehaus/jackson/JsonToken;

    .line 798
    :goto_0
    return-void

    .line 741
    :cond_0
    const/16 v1, 0x7b

    if-ne v0, v1, :cond_1

    .line 742
    sget-object v1, Lcom/flurry/org/codehaus/jackson/JsonToken;->START_OBJECT:Lcom/flurry/org/codehaus/jackson/JsonToken;

    iput-object v1, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_nextToken:Lcom/flurry/org/codehaus/jackson/JsonToken;

    goto :goto_0

    .line 745
    :cond_1
    const/16 v1, 0x5b

    if-ne v0, v1, :cond_2

    .line 746
    sget-object v1, Lcom/flurry/org/codehaus/jackson/JsonToken;->START_ARRAY:Lcom/flurry/org/codehaus/jackson/JsonToken;

    iput-object v1, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_nextToken:Lcom/flurry/org/codehaus/jackson/JsonToken;

    goto :goto_0

    .line 749
    :cond_2
    and-int/lit16 v0, v0, 0xff

    .line 750
    const/16 v1, 0x20

    if-le v0, v1, :cond_3

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_4

    .line 751
    :cond_3
    iget v1, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    .line 752
    invoke-direct {p0}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_skipWS()I

    move-result v0

    .line 757
    :cond_4
    :goto_1
    sparse-switch v0, :sswitch_data_0

    .line 797
    invoke-virtual {p0, v0}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_handleUnexpectedValue(I)Lcom/flurry/org/codehaus/jackson/JsonToken;

    move-result-object v1

    iput-object v1, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_nextToken:Lcom/flurry/org/codehaus/jackson/JsonToken;

    goto :goto_0

    .line 755
    .end local v0    # "i":I
    :cond_5
    invoke-direct {p0}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_skipColon()I

    move-result v0

    .restart local v0    # "i":I
    goto :goto_1

    .line 759
    :sswitch_0
    iput-boolean v4, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_tokenIncomplete:Z

    .line 760
    sget-object v1, Lcom/flurry/org/codehaus/jackson/JsonToken;->VALUE_STRING:Lcom/flurry/org/codehaus/jackson/JsonToken;

    iput-object v1, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_nextToken:Lcom/flurry/org/codehaus/jackson/JsonToken;

    goto :goto_0

    .line 763
    :sswitch_1
    sget-object v1, Lcom/flurry/org/codehaus/jackson/JsonToken;->START_ARRAY:Lcom/flurry/org/codehaus/jackson/JsonToken;

    iput-object v1, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_nextToken:Lcom/flurry/org/codehaus/jackson/JsonToken;

    goto :goto_0

    .line 766
    :sswitch_2
    sget-object v1, Lcom/flurry/org/codehaus/jackson/JsonToken;->START_OBJECT:Lcom/flurry/org/codehaus/jackson/JsonToken;

    iput-object v1, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_nextToken:Lcom/flurry/org/codehaus/jackson/JsonToken;

    goto :goto_0

    .line 770
    :sswitch_3
    const-string v1, "expected a value"

    invoke-virtual {p0, v0, v1}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_reportUnexpectedChar(ILjava/lang/String;)V

    .line 772
    :sswitch_4
    const-string v1, "true"

    invoke-virtual {p0, v1, v4}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_matchToken(Ljava/lang/String;I)V

    .line 773
    sget-object v1, Lcom/flurry/org/codehaus/jackson/JsonToken;->VALUE_TRUE:Lcom/flurry/org/codehaus/jackson/JsonToken;

    iput-object v1, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_nextToken:Lcom/flurry/org/codehaus/jackson/JsonToken;

    goto :goto_0

    .line 776
    :sswitch_5
    const-string v1, "false"

    invoke-virtual {p0, v1, v4}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_matchToken(Ljava/lang/String;I)V

    .line 777
    sget-object v1, Lcom/flurry/org/codehaus/jackson/JsonToken;->VALUE_FALSE:Lcom/flurry/org/codehaus/jackson/JsonToken;

    iput-object v1, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_nextToken:Lcom/flurry/org/codehaus/jackson/JsonToken;

    goto :goto_0

    .line 780
    :sswitch_6
    const-string v1, "null"

    invoke-virtual {p0, v1, v4}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_matchToken(Ljava/lang/String;I)V

    .line 781
    sget-object v1, Lcom/flurry/org/codehaus/jackson/JsonToken;->VALUE_NULL:Lcom/flurry/org/codehaus/jackson/JsonToken;

    iput-object v1, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_nextToken:Lcom/flurry/org/codehaus/jackson/JsonToken;

    goto :goto_0

    .line 794
    :sswitch_7
    invoke-virtual {p0, v0}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->parseNumberText(I)Lcom/flurry/org/codehaus/jackson/JsonToken;

    move-result-object v1

    iput-object v1, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_nextToken:Lcom/flurry/org/codehaus/jackson/JsonToken;

    goto :goto_0

    .line 757
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

.method private final _nextAfterName()Lcom/flurry/org/codehaus/jackson/JsonToken;
    .locals 4

    .prologue
    .line 611
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_nameCopied:Z

    .line 612
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_nextToken:Lcom/flurry/org/codehaus/jackson/JsonToken;

    .line 613
    .local v0, "t":Lcom/flurry/org/codehaus/jackson/JsonToken;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_nextToken:Lcom/flurry/org/codehaus/jackson/JsonToken;

    .line 615
    sget-object v1, Lcom/flurry/org/codehaus/jackson/JsonToken;->START_ARRAY:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_1

    .line 616
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_parsingContext:Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;

    iget v2, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_tokenInputRow:I

    iget v3, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_tokenInputCol:I

    invoke-virtual {v1, v2, v3}, Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;->createChildArrayContext(II)Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;

    move-result-object v1

    iput-object v1, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_parsingContext:Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;

    .line 620
    :cond_0
    :goto_0
    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_currToken:Lcom/flurry/org/codehaus/jackson/JsonToken;

    return-object v0

    .line 617
    :cond_1
    sget-object v1, Lcom/flurry/org/codehaus/jackson/JsonToken;->START_OBJECT:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_0

    .line 618
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_parsingContext:Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;

    iget v2, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_tokenInputRow:I

    iget v3, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_tokenInputCol:I

    invoke-virtual {v1, v2, v3}, Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;->createChildObjectContext(II)Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;

    move-result-object v1

    iput-object v1, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_parsingContext:Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;

    goto :goto_0
.end method

.method private final _nextTokenNotInObject(I)Lcom/flurry/org/codehaus/jackson/JsonToken;
    .locals 3
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 564
    const/16 v0, 0x22

    if-ne p1, v0, :cond_0

    .line 565
    iput-boolean v1, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_tokenIncomplete:Z

    .line 566
    sget-object v0, Lcom/flurry/org/codehaus/jackson/JsonToken;->VALUE_STRING:Lcom/flurry/org/codehaus/jackson/JsonToken;

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_currToken:Lcom/flurry/org/codehaus/jackson/JsonToken;

    .line 606
    :goto_0
    return-object v0

    .line 568
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 606
    invoke-virtual {p0, p1}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_handleUnexpectedValue(I)Lcom/flurry/org/codehaus/jackson/JsonToken;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_currToken:Lcom/flurry/org/codehaus/jackson/JsonToken;

    goto :goto_0

    .line 570
    :sswitch_0
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_parsingContext:Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;

    iget v1, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_tokenInputRow:I

    iget v2, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_tokenInputCol:I

    invoke-virtual {v0, v1, v2}, Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;->createChildArrayContext(II)Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_parsingContext:Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;

    .line 571
    sget-object v0, Lcom/flurry/org/codehaus/jackson/JsonToken;->START_ARRAY:Lcom/flurry/org/codehaus/jackson/JsonToken;

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_currToken:Lcom/flurry/org/codehaus/jackson/JsonToken;

    goto :goto_0

    .line 573
    :sswitch_1
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_parsingContext:Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;

    iget v1, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_tokenInputRow:I

    iget v2, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_tokenInputCol:I

    invoke-virtual {v0, v1, v2}, Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;->createChildObjectContext(II)Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_parsingContext:Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;

    .line 574
    sget-object v0, Lcom/flurry/org/codehaus/jackson/JsonToken;->START_OBJECT:Lcom/flurry/org/codehaus/jackson/JsonToken;

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_currToken:Lcom/flurry/org/codehaus/jackson/JsonToken;

    goto :goto_0

    .line 579
    :sswitch_2
    const-string v0, "expected a value"

    invoke-virtual {p0, p1, v0}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_reportUnexpectedChar(ILjava/lang/String;)V

    .line 581
    :sswitch_3
    const-string v0, "true"

    invoke-virtual {p0, v0, v1}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_matchToken(Ljava/lang/String;I)V

    .line 582
    sget-object v0, Lcom/flurry/org/codehaus/jackson/JsonToken;->VALUE_TRUE:Lcom/flurry/org/codehaus/jackson/JsonToken;

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_currToken:Lcom/flurry/org/codehaus/jackson/JsonToken;

    goto :goto_0

    .line 584
    :sswitch_4
    const-string v0, "false"

    invoke-virtual {p0, v0, v1}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_matchToken(Ljava/lang/String;I)V

    .line 585
    sget-object v0, Lcom/flurry/org/codehaus/jackson/JsonToken;->VALUE_FALSE:Lcom/flurry/org/codehaus/jackson/JsonToken;

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_currToken:Lcom/flurry/org/codehaus/jackson/JsonToken;

    goto :goto_0

    .line 587
    :sswitch_5
    const-string v0, "null"

    invoke-virtual {p0, v0, v1}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_matchToken(Ljava/lang/String;I)V

    .line 588
    sget-object v0, Lcom/flurry/org/codehaus/jackson/JsonToken;->VALUE_NULL:Lcom/flurry/org/codehaus/jackson/JsonToken;

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_currToken:Lcom/flurry/org/codehaus/jackson/JsonToken;

    goto :goto_0

    .line 604
    :sswitch_6
    invoke-virtual {p0, p1}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->parseNumberText(I)Lcom/flurry/org/codehaus/jackson/JsonToken;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_currToken:Lcom/flurry/org/codehaus/jackson/JsonToken;

    goto :goto_0

    .line 568
    :sswitch_data_0
    .sparse-switch
        0x2d -> :sswitch_6
        0x30 -> :sswitch_6
        0x31 -> :sswitch_6
        0x32 -> :sswitch_6
        0x33 -> :sswitch_6
        0x34 -> :sswitch_6
        0x35 -> :sswitch_6
        0x36 -> :sswitch_6
        0x37 -> :sswitch_6
        0x38 -> :sswitch_6
        0x39 -> :sswitch_6
        0x5b -> :sswitch_0
        0x5d -> :sswitch_2
        0x66 -> :sswitch_4
        0x6e -> :sswitch_5
        0x74 -> :sswitch_3
        0x7b -> :sswitch_1
        0x7d -> :sswitch_2
    .end sparse-switch
.end method

.method private final _parseFloatText([CIIZI)Lcom/flurry/org/codehaus/jackson/JsonToken;
    .locals 9
    .param p1, "outBuf"    # [C
    .param p2, "outPtr"    # I
    .param p3, "c"    # I
    .param p4, "negative"    # Z
    .param p5, "integerPartLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x39

    const/16 v7, 0x30

    .line 1131
    const/4 v2, 0x0

    .line 1132
    .local v2, "fractLen":I
    const/4 v0, 0x0

    .line 1135
    .local v0, "eof":Z
    const/16 v4, 0x2e

    if-ne p3, v4, :cond_1

    .line 1136
    add-int/lit8 v3, p2, 0x1

    .end local p2    # "outPtr":I
    .local v3, "outPtr":I
    int-to-char v4, p3

    aput-char v4, p1, p2

    move p2, v3

    .line 1140
    .end local v3    # "outPtr":I
    .restart local p2    # "outPtr":I
    :goto_0
    iget v4, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    iget v5, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I

    if-lt v4, v5, :cond_b

    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->loadMore()Z

    move-result v4

    if-nez v4, :cond_b

    .line 1141
    const/4 v0, 0x1

    .line 1156
    :cond_0
    if-nez v2, :cond_1

    .line 1157
    const-string v4, "Decimal point not followed by a digit"

    invoke-virtual {p0, p3, v4}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->reportUnexpectedNumberChar(ILjava/lang/String;)V

    .line 1161
    :cond_1
    const/4 v1, 0x0

    .line 1162
    .local v1, "expLen":I
    const/16 v4, 0x65

    if-eq p3, v4, :cond_2

    const/16 v4, 0x45

    if-ne p3, v4, :cond_9

    .line 1163
    :cond_2
    array-length v4, p1

    if-lt p2, v4, :cond_3

    .line 1164
    iget-object v4, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_textBuffer:Lcom/flurry/org/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v4}, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object p1

    .line 1165
    const/4 p2, 0x0

    .line 1167
    :cond_3
    add-int/lit8 v3, p2, 0x1

    .end local p2    # "outPtr":I
    .restart local v3    # "outPtr":I
    int-to-char v4, p3

    aput-char v4, p1, p2

    .line 1169
    iget v4, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    iget v5, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I

    if-lt v4, v5, :cond_4

    .line 1170
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->loadMoreGuaranteed()V

    .line 1172
    :cond_4
    iget-object v4, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v5, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    aget-byte v4, v4, v5

    and-int/lit16 p3, v4, 0xff

    .line 1174
    const/16 v4, 0x2d

    if-eq p3, v4, :cond_5

    const/16 v4, 0x2b

    if-ne p3, v4, :cond_f

    .line 1175
    :cond_5
    array-length v4, p1

    if-lt v3, v4, :cond_e

    .line 1176
    iget-object v4, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_textBuffer:Lcom/flurry/org/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v4}, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object p1

    .line 1177
    const/4 p2, 0x0

    .line 1179
    .end local v3    # "outPtr":I
    .restart local p2    # "outPtr":I
    :goto_1
    add-int/lit8 v3, p2, 0x1

    .end local p2    # "outPtr":I
    .restart local v3    # "outPtr":I
    int-to-char v4, p3

    aput-char v4, p1, p2

    .line 1181
    iget v4, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    iget v5, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I

    if-lt v4, v5, :cond_6

    .line 1182
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->loadMoreGuaranteed()V

    .line 1184
    :cond_6
    iget-object v4, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v5, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    aget-byte v4, v4, v5

    and-int/lit16 p3, v4, 0xff

    move p2, v3

    .line 1188
    .end local v3    # "outPtr":I
    .restart local p2    # "outPtr":I
    :goto_2
    if-gt p3, v8, :cond_8

    if-lt p3, v7, :cond_8

    .line 1189
    add-int/lit8 v1, v1, 0x1

    .line 1190
    array-length v4, p1

    if-lt p2, v4, :cond_7

    .line 1191
    iget-object v4, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_textBuffer:Lcom/flurry/org/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v4}, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object p1

    .line 1192
    const/4 p2, 0x0

    .line 1194
    :cond_7
    add-int/lit8 v3, p2, 0x1

    .end local p2    # "outPtr":I
    .restart local v3    # "outPtr":I
    int-to-char v4, p3

    aput-char v4, p1, p2

    .line 1195
    iget v4, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    iget v5, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I

    if-lt v4, v5, :cond_d

    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->loadMore()Z

    move-result v4

    if-nez v4, :cond_d

    .line 1196
    const/4 v0, 0x1

    move p2, v3

    .line 1202
    .end local v3    # "outPtr":I
    .restart local p2    # "outPtr":I
    :cond_8
    if-nez v1, :cond_9

    .line 1203
    const-string v4, "Exponent indicator not followed by a digit"

    invoke-virtual {p0, p3, v4}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->reportUnexpectedNumberChar(ILjava/lang/String;)V

    .line 1208
    :cond_9
    if-nez v0, :cond_a

    .line 1209
    iget v4, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    .line 1211
    :cond_a
    iget-object v4, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_textBuffer:Lcom/flurry/org/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v4, p2}, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->setCurrentLength(I)V

    .line 1214
    invoke-virtual {p0, p4, p5, v2, v1}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->resetFloat(ZIII)Lcom/flurry/org/codehaus/jackson/JsonToken;

    move-result-object v4

    return-object v4

    .line 1144
    .end local v1    # "expLen":I
    :cond_b
    iget-object v4, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v5, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    aget-byte v4, v4, v5

    and-int/lit16 p3, v4, 0xff

    .line 1145
    if-lt p3, v7, :cond_0

    if-gt p3, v8, :cond_0

    .line 1148
    add-int/lit8 v2, v2, 0x1

    .line 1149
    array-length v4, p1

    if-lt p2, v4, :cond_c

    .line 1150
    iget-object v4, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_textBuffer:Lcom/flurry/org/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v4}, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object p1

    .line 1151
    const/4 p2, 0x0

    .line 1153
    :cond_c
    add-int/lit8 v3, p2, 0x1

    .end local p2    # "outPtr":I
    .restart local v3    # "outPtr":I
    int-to-char v4, p3

    aput-char v4, p1, p2

    move p2, v3

    .end local v3    # "outPtr":I
    .restart local p2    # "outPtr":I
    goto/16 :goto_0

    .line 1199
    .end local p2    # "outPtr":I
    .restart local v1    # "expLen":I
    .restart local v3    # "outPtr":I
    :cond_d
    iget-object v4, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v5, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    aget-byte v4, v4, v5

    and-int/lit16 p3, v4, 0xff

    move p2, v3

    .end local v3    # "outPtr":I
    .restart local p2    # "outPtr":I
    goto :goto_2

    .end local p2    # "outPtr":I
    .restart local v3    # "outPtr":I
    :cond_e
    move p2, v3

    .end local v3    # "outPtr":I
    .restart local p2    # "outPtr":I
    goto/16 :goto_1

    .end local p2    # "outPtr":I
    .restart local v3    # "outPtr":I
    :cond_f
    move p2, v3

    .end local v3    # "outPtr":I
    .restart local p2    # "outPtr":I
    goto :goto_2
.end method

.method private final _parserNumber2([CIZI)Lcom/flurry/org/codehaus/jackson/JsonToken;
    .locals 7
    .param p1, "outBuf"    # [C
    .param p2, "outPtr"    # I
    .param p3, "negative"    # Z
    .param p4, "intPartLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 1064
    :goto_0
    iget v0, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    iget v1, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->loadMore()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1065
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_textBuffer:Lcom/flurry/org/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v0, p2}, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->setCurrentLength(I)V

    .line 1066
    invoke-virtual {p0, p3, p4}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->resetInt(ZI)Lcom/flurry/org/codehaus/jackson/JsonToken;

    move-result-object v0

    .line 1086
    :goto_1
    return-object v0

    .line 1068
    :cond_0
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v1, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    aget-byte v0, v0, v1

    and-int/lit16 v3, v0, 0xff

    .line 1069
    .local v3, "c":I
    const/16 v0, 0x39

    if-gt v3, v0, :cond_1

    const/16 v0, 0x30

    if-ge v3, v0, :cond_3

    .line 1070
    :cond_1
    const/16 v0, 0x2e

    if-eq v3, v0, :cond_2

    const/16 v0, 0x65

    if-eq v3, v0, :cond_2

    const/16 v0, 0x45

    if-ne v3, v0, :cond_5

    :cond_2
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, p3

    move v5, p4

    .line 1071
    invoke-direct/range {v0 .. v5}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_parseFloatText([CIIZI)Lcom/flurry/org/codehaus/jackson/JsonToken;

    move-result-object v0

    goto :goto_1

    .line 1075
    :cond_3
    array-length v0, p1

    if-lt p2, v0, :cond_4

    .line 1076
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_textBuffer:Lcom/flurry/org/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object p1

    .line 1077
    const/4 p2, 0x0

    .line 1079
    :cond_4
    add-int/lit8 v6, p2, 0x1

    .end local p2    # "outPtr":I
    .local v6, "outPtr":I
    int-to-char v0, v3

    aput-char v0, p1, p2

    .line 1080
    add-int/lit8 p4, p4, 0x1

    move p2, v6

    .line 1081
    .end local v6    # "outPtr":I
    .restart local p2    # "outPtr":I
    goto :goto_0

    .line 1082
    :cond_5
    iget v0, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    .line 1083
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_textBuffer:Lcom/flurry/org/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v0, p2}, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->setCurrentLength(I)V

    .line 1086
    invoke-virtual {p0, p3, p4}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->resetInt(ZI)Lcom/flurry/org/codehaus/jackson/JsonToken;

    move-result-object v0

    goto :goto_1
.end method

.method private final _skipCComment()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 2433
    invoke-static {}, Lcom/flurry/org/codehaus/jackson/util/CharTypes;->getInputCodeComment()[I

    move-result-object v1

    .line 2436
    .local v1, "codes":[I
    :cond_0
    :goto_0
    iget v3, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    iget v4, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I

    if-lt v3, v4, :cond_1

    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->loadMore()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2437
    :cond_1
    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v4, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    aget-byte v3, v3, v4

    and-int/lit16 v2, v3, 0xff

    .line 2438
    .local v2, "i":I
    aget v0, v1, v2

    .line 2439
    .local v0, "code":I
    if-eqz v0, :cond_0

    .line 2440
    sparse-switch v0, :sswitch_data_0

    .line 2464
    invoke-virtual {p0, v2}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidChar(I)V

    goto :goto_0

    .line 2442
    :sswitch_0
    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v4, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    aget-byte v3, v3, v4

    const/16 v4, 0x2f

    if-ne v3, v4, :cond_0

    .line 2443
    iget v3, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    .line 2469
    .end local v0    # "code":I
    .end local v2    # "i":I
    :goto_1
    return-void

    .line 2448
    .restart local v0    # "code":I
    .restart local v2    # "i":I
    :sswitch_1
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_skipLF()V

    goto :goto_0

    .line 2451
    :sswitch_2
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_skipCR()V

    goto :goto_0

    .line 2454
    :sswitch_3
    invoke-direct {p0, v2}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_skipUtf8_2(I)V

    goto :goto_0

    .line 2457
    :sswitch_4
    invoke-direct {p0, v2}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_skipUtf8_3(I)V

    goto :goto_0

    .line 2460
    :sswitch_5
    invoke-direct {p0, v2}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_skipUtf8_4(I)V

    goto :goto_0

    .line 2468
    .end local v0    # "code":I
    .end local v2    # "i":I
    :cond_2
    const-string v3, " in a comment"

    invoke-virtual {p0, v3}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidEOF(Ljava/lang/String;)V

    goto :goto_1

    .line 2440
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_3
        0x3 -> :sswitch_4
        0x4 -> :sswitch_5
        0xa -> :sswitch_1
        0xd -> :sswitch_2
        0x2a -> :sswitch_0
    .end sparse-switch
.end method

.method private final _skipColon()I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x3a

    const/16 v6, 0x2f

    const/16 v5, 0x20

    .line 2341
    iget v2, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    iget v3, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I

    if-lt v2, v3, :cond_0

    .line 2342
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->loadMoreGuaranteed()V

    .line 2345
    :cond_0
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v3, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    aget-byte v0, v2, v3

    .line 2346
    .local v0, "i":I
    if-ne v0, v7, :cond_1

    .line 2347
    iget v2, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    iget v3, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I

    if-ge v2, v3, :cond_4

    .line 2348
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v3, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    aget-byte v2, v2, v3

    and-int/lit16 v0, v2, 0xff

    .line 2349
    if-le v0, v5, :cond_4

    if-eq v0, v6, :cond_4

    .line 2350
    iget v2, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    move v1, v0

    .line 2393
    .end local v0    # "i":I
    .local v1, "i":I
    :goto_0
    return v1

    .line 2356
    .end local v1    # "i":I
    .restart local v0    # "i":I
    :cond_1
    and-int/lit16 v0, v0, 0xff

    .line 2360
    :goto_1
    sparse-switch v0, :sswitch_data_0

    .line 2373
    if-ge v0, v5, :cond_2

    .line 2374
    invoke-virtual {p0, v0}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_throwInvalidSpace(I)V

    .line 2379
    :cond_2
    iget v2, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    iget v3, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I

    if-lt v2, v3, :cond_3

    .line 2380
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->loadMoreGuaranteed()V

    .line 2382
    :cond_3
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v3, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    aget-byte v2, v2, v3

    and-int/lit16 v0, v2, 0xff

    .line 2383
    if-eq v0, v7, :cond_4

    .line 2384
    const-string v2, "was expecting a colon to separate field name and value"

    invoke-virtual {p0, v0, v2}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_reportUnexpectedChar(ILjava/lang/String;)V

    .line 2389
    :cond_4
    :goto_2
    iget v2, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    iget v3, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I

    if-lt v2, v3, :cond_5

    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->loadMore()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 2390
    :cond_5
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v3, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    aget-byte v2, v2, v3

    and-int/lit16 v0, v2, 0xff

    .line 2391
    if-le v0, v5, :cond_7

    .line 2392
    if-eq v0, v6, :cond_6

    move v1, v0

    .line 2393
    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_0

    .line 2364
    .end local v1    # "i":I
    .restart local v0    # "i":I
    :sswitch_0
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_skipCR()V

    goto :goto_1

    .line 2367
    :sswitch_1
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_skipLF()V

    goto :goto_1

    .line 2370
    :sswitch_2
    invoke-direct {p0}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_skipComment()V

    goto :goto_1

    .line 2395
    :cond_6
    invoke-direct {p0}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_skipComment()V

    goto :goto_2

    .line 2396
    :cond_7
    if-eq v0, v5, :cond_4

    .line 2397
    const/16 v2, 0xa

    if-ne v0, v2, :cond_8

    .line 2398
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_skipLF()V

    goto :goto_2

    .line 2399
    :cond_8
    const/16 v2, 0xd

    if-ne v0, v2, :cond_9

    .line 2400
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_skipCR()V

    goto :goto_2

    .line 2401
    :cond_9
    const/16 v2, 0x9

    if-eq v0, v2, :cond_4

    .line 2402
    invoke-virtual {p0, v0}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_throwInvalidSpace(I)V

    goto :goto_2

    .line 2406
    :cond_a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected end-of-input within/between "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_parsingContext:Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v3}, Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;->getTypeDesc()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " entries"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_constructError(Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/JsonParseException;

    move-result-object v2

    throw v2

    .line 2360
    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xa -> :sswitch_1
        0xd -> :sswitch_0
        0x20 -> :sswitch_0
        0x2f -> :sswitch_2
    .end sparse-switch
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

    .line 2412
    sget-object v1, Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;->ALLOW_COMMENTS:Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;

    invoke-virtual {p0, v1}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->isEnabled(Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2413
    const-string v1, "maybe a (non-standard) comment? (not recognized as one since Feature \'ALLOW_COMMENTS\' not enabled for parser)"

    invoke-virtual {p0, v4, v1}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_reportUnexpectedChar(ILjava/lang/String;)V

    .line 2416
    :cond_0
    iget v1, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    iget v2, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I

    if-lt v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->loadMore()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2417
    const-string v1, " in a comment"

    invoke-virtual {p0, v1}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidEOF(Ljava/lang/String;)V

    .line 2419
    :cond_1
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v2, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    aget-byte v1, v1, v2

    and-int/lit16 v0, v1, 0xff

    .line 2420
    .local v0, "c":I
    if-ne v0, v4, :cond_2

    .line 2421
    invoke-direct {p0}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_skipCppComment()V

    .line 2427
    :goto_0
    return-void

    .line 2422
    :cond_2
    const/16 v1, 0x2a

    if-ne v0, v1, :cond_3

    .line 2423
    invoke-direct {p0}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_skipCComment()V

    goto :goto_0

    .line 2425
    :cond_3
    const-string v1, "was expecting either \'*\' or \'/\' for a comment"

    invoke-virtual {p0, v0, v1}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_reportUnexpectedChar(ILjava/lang/String;)V

    goto :goto_0
.end method

.method private final _skipCppComment()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 2475
    invoke-static {}, Lcom/flurry/org/codehaus/jackson/util/CharTypes;->getInputCodeComment()[I

    move-result-object v1

    .line 2476
    .local v1, "codes":[I
    :cond_0
    :goto_0
    :sswitch_0
    iget v3, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    iget v4, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I

    if-lt v3, v4, :cond_1

    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->loadMore()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2477
    :cond_1
    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v4, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    aget-byte v3, v3, v4

    and-int/lit16 v2, v3, 0xff

    .line 2478
    .local v2, "i":I
    aget v0, v1, v2

    .line 2479
    .local v0, "code":I
    if-eqz v0, :cond_0

    .line 2480
    sparse-switch v0, :sswitch_data_0

    .line 2500
    invoke-virtual {p0, v2}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidChar(I)V

    goto :goto_0

    .line 2482
    :sswitch_1
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_skipLF()V

    .line 2504
    .end local v0    # "code":I
    .end local v2    # "i":I
    :cond_2
    :goto_1
    return-void

    .line 2485
    .restart local v0    # "code":I
    .restart local v2    # "i":I
    :sswitch_2
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_skipCR()V

    goto :goto_1

    .line 2490
    :sswitch_3
    invoke-direct {p0, v2}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_skipUtf8_2(I)V

    goto :goto_0

    .line 2493
    :sswitch_4
    invoke-direct {p0, v2}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_skipUtf8_3(I)V

    goto :goto_0

    .line 2496
    :sswitch_5
    invoke-direct {p0, v2}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_skipUtf8_4(I)V

    goto :goto_0

    .line 2480
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_3
        0x3 -> :sswitch_4
        0x4 -> :sswitch_5
        0xa -> :sswitch_1
        0xd -> :sswitch_2
        0x2a -> :sswitch_0
    .end sparse-switch
.end method

.method private final _skipUtf8_2(I)V
    .locals 3
    .param p1, "c"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 2708
    iget v0, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    iget v1, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I

    if-lt v0, v1, :cond_0

    .line 2709
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->loadMoreGuaranteed()V

    .line 2711
    :cond_0
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v1, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    aget-byte p1, v0, v1

    .line 2712
    and-int/lit16 v0, p1, 0xc0

    const/16 v1, 0x80

    if-eq v0, v1, :cond_1

    .line 2713
    and-int/lit16 v0, p1, 0xff

    iget v1, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    invoke-virtual {p0, v0, v1}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidOther(II)V

    .line 2715
    :cond_1
    return-void
.end method

.method private final _skipUtf8_3(I)V
    .locals 4
    .param p1, "c"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x80

    .line 2723
    iget v0, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    iget v1, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I

    if-lt v0, v1, :cond_0

    .line 2724
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->loadMoreGuaranteed()V

    .line 2727
    :cond_0
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v1, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    aget-byte p1, v0, v1

    .line 2728
    and-int/lit16 v0, p1, 0xc0

    if-eq v0, v3, :cond_1

    .line 2729
    and-int/lit16 v0, p1, 0xff

    iget v1, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    invoke-virtual {p0, v0, v1}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidOther(II)V

    .line 2731
    :cond_1
    iget v0, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    iget v1, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I

    if-lt v0, v1, :cond_2

    .line 2732
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->loadMoreGuaranteed()V

    .line 2734
    :cond_2
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v1, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    aget-byte p1, v0, v1

    .line 2735
    and-int/lit16 v0, p1, 0xc0

    if-eq v0, v3, :cond_3

    .line 2736
    and-int/lit16 v0, p1, 0xff

    iget v1, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    invoke-virtual {p0, v0, v1}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidOther(II)V

    .line 2738
    :cond_3
    return-void
.end method

.method private final _skipUtf8_4(I)V
    .locals 5
    .param p1, "c"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x80

    .line 2743
    iget v1, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    iget v2, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I

    if-lt v1, v2, :cond_0

    .line 2744
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->loadMoreGuaranteed()V

    .line 2746
    :cond_0
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v2, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    aget-byte v0, v1, v2

    .line 2747
    .local v0, "d":I
    and-int/lit16 v1, v0, 0xc0

    if-eq v1, v4, :cond_1

    .line 2748
    and-int/lit16 v1, v0, 0xff

    iget v2, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    invoke-virtual {p0, v1, v2}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidOther(II)V

    .line 2750
    :cond_1
    iget v1, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    iget v2, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I

    if-lt v1, v2, :cond_2

    .line 2751
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->loadMoreGuaranteed()V

    .line 2753
    :cond_2
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v2, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    aget-byte v0, v1, v2

    .line 2754
    and-int/lit16 v1, v0, 0xc0

    if-eq v1, v4, :cond_3

    .line 2755
    and-int/lit16 v1, v0, 0xff

    iget v2, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    invoke-virtual {p0, v1, v2}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidOther(II)V

    .line 2757
    :cond_3
    iget v1, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    iget v2, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I

    if-lt v1, v2, :cond_4

    .line 2758
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->loadMoreGuaranteed()V

    .line 2760
    :cond_4
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v2, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    aget-byte v0, v1, v2

    .line 2761
    and-int/lit16 v1, v0, 0xc0

    if-eq v1, v4, :cond_5

    .line 2762
    and-int/lit16 v1, v0, 0xff

    iget v2, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    invoke-virtual {p0, v1, v2}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidOther(II)V

    .line 2764
    :cond_5
    return-void
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

    .line 2287
    :cond_0
    :goto_0
    iget v1, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    iget v2, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I

    if-lt v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->loadMore()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2288
    :cond_1
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v2, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    aget-byte v1, v1, v2

    and-int/lit16 v0, v1, 0xff

    .line 2289
    .local v0, "i":I
    if-le v0, v4, :cond_3

    .line 2290
    const/16 v1, 0x2f

    if-eq v0, v1, :cond_2

    .line 2291
    return v0

    .line 2293
    :cond_2
    invoke-direct {p0}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_skipComment()V

    goto :goto_0

    .line 2294
    :cond_3
    if-eq v0, v4, :cond_0

    .line 2295
    const/16 v1, 0xa

    if-ne v0, v1, :cond_4

    .line 2296
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_skipLF()V

    goto :goto_0

    .line 2297
    :cond_4
    const/16 v1, 0xd

    if-ne v0, v1, :cond_5

    .line 2298
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_skipCR()V

    goto :goto_0

    .line 2299
    :cond_5
    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    .line 2300
    invoke-virtual {p0, v0}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_throwInvalidSpace(I)V

    goto :goto_0

    .line 2304
    .end local v0    # "i":I
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected end-of-input within/between "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_parsingContext:Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v2}, Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;->getTypeDesc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " entries"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_constructError(Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/JsonParseException;

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

    .line 2310
    :cond_0
    :goto_0
    iget v1, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    iget v2, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I

    if-lt v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->loadMore()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2311
    :cond_1
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v2, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    aget-byte v1, v1, v2

    and-int/lit16 v0, v1, 0xff

    .line 2312
    .local v0, "i":I
    if-le v0, v4, :cond_3

    .line 2313
    const/16 v1, 0x2f

    if-eq v0, v1, :cond_2

    .line 2329
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 2316
    .restart local v0    # "i":I
    :cond_2
    invoke-direct {p0}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_skipComment()V

    goto :goto_0

    .line 2317
    :cond_3
    if-eq v0, v4, :cond_0

    .line 2318
    const/16 v1, 0xa

    if-ne v0, v1, :cond_4

    .line 2319
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_skipLF()V

    goto :goto_0

    .line 2320
    :cond_4
    const/16 v1, 0xd

    if-ne v0, v1, :cond_5

    .line 2321
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_skipCR()V

    goto :goto_0

    .line 2322
    :cond_5
    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    .line 2323
    invoke-virtual {p0, v0}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_throwInvalidSpace(I)V

    goto :goto_0

    .line 2328
    .end local v0    # "i":I
    :cond_6
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_handleEOF()V

    .line 2329
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private final _verifyNoLeadingZeroes()I
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

    .line 1098
    iget v2, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    iget v3, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I

    if-lt v2, v3, :cond_1

    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->loadMore()Z

    move-result v2

    if-nez v2, :cond_1

    move v0, v1

    .line 1124
    :cond_0
    :goto_0
    return v0

    .line 1101
    :cond_1
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v3, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    aget-byte v2, v2, v3

    and-int/lit16 v0, v2, 0xff

    .line 1103
    .local v0, "ch":I
    if-lt v0, v1, :cond_2

    if-le v0, v4, :cond_3

    :cond_2
    move v0, v1

    .line 1104
    goto :goto_0

    .line 1107
    :cond_3
    sget-object v2, Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;->ALLOW_NUMERIC_LEADING_ZEROS:Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;

    invoke-virtual {p0, v2}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->isEnabled(Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1108
    const-string v2, "Leading zeroes not allowed"

    invoke-virtual {p0, v2}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->reportInvalidNumber(Ljava/lang/String;)V

    .line 1111
    :cond_4
    iget v2, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    .line 1112
    if-ne v0, v1, :cond_0

    .line 1113
    :cond_5
    iget v2, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    iget v3, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I

    if-lt v2, v3, :cond_6

    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->loadMore()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1114
    :cond_6
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v3, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    aget-byte v2, v2, v3

    and-int/lit16 v0, v2, 0xff

    .line 1115
    if-lt v0, v1, :cond_7

    if-le v0, v4, :cond_8

    :cond_7
    move v0, v1

    .line 1116
    goto :goto_0

    .line 1118
    :cond_8
    iget v2, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    .line 1119
    if-eq v0, v1, :cond_5

    goto :goto_0
.end method

.method private final addName([III)Lcom/flurry/org/codehaus/jackson/sym/Name;
    .locals 14
    .param p1, "quads"    # [I
    .param p2, "qlen"    # I
    .param p3, "lastQuadBytes"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 1768
    shl-int/lit8 v12, p2, 0x2

    add-int/lit8 v12, v12, -0x4

    add-int v3, v12, p3

    .line 1777
    .local v3, "byteLen":I
    const/4 v12, 0x4

    move/from16 v0, p3

    if-ge v0, v12, :cond_7

    .line 1778
    add-int/lit8 v12, p2, -0x1

    aget v10, p1, v12

    .line 1780
    .local v10, "lastQuad":I
    add-int/lit8 v12, p2, -0x1

    rsub-int/lit8 v13, p3, 0x4

    shl-int/lit8 v13, v13, 0x3

    shl-int v13, v10, v13

    aput v13, p1, v12

    .line 1786
    :goto_0
    iget-object v12, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_textBuffer:Lcom/flurry/org/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v12}, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->emptyAndGetCurrentSegment()[C

    move-result-object v4

    .line 1787
    .local v4, "cbuf":[C
    const/4 v7, 0x0

    .line 1789
    .local v7, "cix":I
    const/4 v9, 0x0

    .local v9, "ix":I
    move v8, v7

    .end local v7    # "cix":I
    .local v8, "cix":I
    :goto_1
    if-ge v9, v3, :cond_b

    .line 1790
    shr-int/lit8 v12, v9, 0x2

    aget v5, p1, v12

    .line 1791
    .local v5, "ch":I
    and-int/lit8 v2, v9, 0x3

    .line 1792
    .local v2, "byteIx":I
    rsub-int/lit8 v12, v2, 0x3

    shl-int/lit8 v12, v12, 0x3

    shr-int v12, v5, v12

    and-int/lit16 v5, v12, 0xff

    .line 1793
    add-int/lit8 v9, v9, 0x1

    .line 1795
    const/16 v12, 0x7f

    if-le v5, v12, :cond_d

    .line 1797
    and-int/lit16 v12, v5, 0xe0

    const/16 v13, 0xc0

    if-ne v12, v13, :cond_8

    .line 1798
    and-int/lit8 v5, v5, 0x1f

    .line 1799
    const/4 v11, 0x1

    .line 1810
    .local v11, "needed":I
    :goto_2
    add-int v12, v9, v11

    if-le v12, v3, :cond_0

    .line 1811
    const-string v12, " in field name"

    invoke-virtual {p0, v12}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidEOF(Ljava/lang/String;)V

    .line 1815
    :cond_0
    shr-int/lit8 v12, v9, 0x2

    aget v6, p1, v12

    .line 1816
    .local v6, "ch2":I
    and-int/lit8 v2, v9, 0x3

    .line 1817
    rsub-int/lit8 v12, v2, 0x3

    shl-int/lit8 v12, v12, 0x3

    shr-int/2addr v6, v12

    .line 1818
    add-int/lit8 v9, v9, 0x1

    .line 1820
    and-int/lit16 v12, v6, 0xc0

    const/16 v13, 0x80

    if-eq v12, v13, :cond_1

    .line 1821
    invoke-virtual {p0, v6}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidOther(I)V

    .line 1823
    :cond_1
    shl-int/lit8 v12, v5, 0x6

    and-int/lit8 v13, v6, 0x3f

    or-int v5, v12, v13

    .line 1824
    const/4 v12, 0x1

    if-le v11, v12, :cond_4

    .line 1825
    shr-int/lit8 v12, v9, 0x2

    aget v6, p1, v12

    .line 1826
    and-int/lit8 v2, v9, 0x3

    .line 1827
    rsub-int/lit8 v12, v2, 0x3

    shl-int/lit8 v12, v12, 0x3

    shr-int/2addr v6, v12

    .line 1828
    add-int/lit8 v9, v9, 0x1

    .line 1830
    and-int/lit16 v12, v6, 0xc0

    const/16 v13, 0x80

    if-eq v12, v13, :cond_2

    .line 1831
    invoke-virtual {p0, v6}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidOther(I)V

    .line 1833
    :cond_2
    shl-int/lit8 v12, v5, 0x6

    and-int/lit8 v13, v6, 0x3f

    or-int v5, v12, v13

    .line 1834
    const/4 v12, 0x2

    if-le v11, v12, :cond_4

    .line 1835
    shr-int/lit8 v12, v9, 0x2

    aget v6, p1, v12

    .line 1836
    and-int/lit8 v2, v9, 0x3

    .line 1837
    rsub-int/lit8 v12, v2, 0x3

    shl-int/lit8 v12, v12, 0x3

    shr-int/2addr v6, v12

    .line 1838
    add-int/lit8 v9, v9, 0x1

    .line 1839
    and-int/lit16 v12, v6, 0xc0

    const/16 v13, 0x80

    if-eq v12, v13, :cond_3

    .line 1840
    and-int/lit16 v12, v6, 0xff

    invoke-virtual {p0, v12}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidOther(I)V

    .line 1842
    :cond_3
    shl-int/lit8 v12, v5, 0x6

    and-int/lit8 v13, v6, 0x3f

    or-int v5, v12, v13

    .line 1845
    :cond_4
    const/4 v12, 0x2

    if-le v11, v12, :cond_d

    .line 1846
    const/high16 v12, 0x10000

    sub-int/2addr v5, v12

    .line 1847
    array-length v12, v4

    if-lt v8, v12, :cond_5

    .line 1848
    iget-object v12, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_textBuffer:Lcom/flurry/org/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v12}, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->expandCurrentSegment()[C

    move-result-object v4

    .line 1850
    :cond_5
    add-int/lit8 v7, v8, 0x1

    .end local v8    # "cix":I
    .restart local v7    # "cix":I
    const v12, 0xd800

    shr-int/lit8 v13, v5, 0xa

    add-int/2addr v12, v13

    int-to-char v12, v12

    aput-char v12, v4, v8

    .line 1851
    const v12, 0xdc00

    and-int/lit16 v13, v5, 0x3ff

    or-int v5, v12, v13

    .line 1854
    .end local v6    # "ch2":I
    .end local v11    # "needed":I
    :goto_3
    array-length v12, v4

    if-lt v7, v12, :cond_6

    .line 1855
    iget-object v12, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_textBuffer:Lcom/flurry/org/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v12}, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->expandCurrentSegment()[C

    move-result-object v4

    .line 1857
    :cond_6
    add-int/lit8 v8, v7, 0x1

    .end local v7    # "cix":I
    .restart local v8    # "cix":I
    int-to-char v12, v5

    aput-char v12, v4, v7

    goto/16 :goto_1

    .line 1782
    .end local v2    # "byteIx":I
    .end local v4    # "cbuf":[C
    .end local v5    # "ch":I
    .end local v8    # "cix":I
    .end local v9    # "ix":I
    .end local v10    # "lastQuad":I
    :cond_7
    const/4 v10, 0x0

    .restart local v10    # "lastQuad":I
    goto/16 :goto_0

    .line 1800
    .restart local v2    # "byteIx":I
    .restart local v4    # "cbuf":[C
    .restart local v5    # "ch":I
    .restart local v8    # "cix":I
    .restart local v9    # "ix":I
    :cond_8
    and-int/lit16 v12, v5, 0xf0

    const/16 v13, 0xe0

    if-ne v12, v13, :cond_9

    .line 1801
    and-int/lit8 v5, v5, 0xf

    .line 1802
    const/4 v11, 0x2

    .restart local v11    # "needed":I
    goto/16 :goto_2

    .line 1803
    .end local v11    # "needed":I
    :cond_9
    and-int/lit16 v12, v5, 0xf8

    const/16 v13, 0xf0

    if-ne v12, v13, :cond_a

    .line 1804
    and-int/lit8 v5, v5, 0x7

    .line 1805
    const/4 v11, 0x3

    .restart local v11    # "needed":I
    goto/16 :goto_2

    .line 1807
    .end local v11    # "needed":I
    :cond_a
    invoke-virtual {p0, v5}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidInitial(I)V

    .line 1808
    const/4 v5, 0x1

    move v11, v5

    .restart local v11    # "needed":I
    goto/16 :goto_2

    .line 1861
    .end local v2    # "byteIx":I
    .end local v5    # "ch":I
    .end local v11    # "needed":I
    :cond_b
    new-instance v1, Ljava/lang/String;

    const/4 v12, 0x0

    invoke-direct {v1, v4, v12, v8}, Ljava/lang/String;-><init>([CII)V

    .line 1863
    .local v1, "baseName":Ljava/lang/String;
    const/4 v12, 0x4

    move/from16 v0, p3

    if-ge v0, v12, :cond_c

    .line 1864
    add-int/lit8 v12, p2, -0x1

    aput v10, p1, v12

    .line 1866
    :cond_c
    iget-object v12, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_symbols:Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;

    move/from16 v0, p2

    invoke-virtual {v12, v1, p1, v0}, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->addName(Ljava/lang/String;[II)Lcom/flurry/org/codehaus/jackson/sym/Name;

    move-result-object v12

    return-object v12

    .end local v1    # "baseName":Ljava/lang/String;
    .restart local v2    # "byteIx":I
    .restart local v5    # "ch":I
    :cond_d
    move v7, v8

    .end local v8    # "cix":I
    .restart local v7    # "cix":I
    goto :goto_3
.end method

.method private final findName(II)Lcom/flurry/org/codehaus/jackson/sym/Name;
    .locals 3
    .param p1, "q1"    # I
    .param p2, "lastQuadBytes"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 1717
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_symbols:Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;

    invoke-virtual {v1, p1}, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->findName(I)Lcom/flurry/org/codehaus/jackson/sym/Name;

    move-result-object v0

    .line 1718
    .local v0, "name":Lcom/flurry/org/codehaus/jackson/sym/Name;
    if-eqz v0, :cond_0

    .line 1723
    .end local v0    # "name":Lcom/flurry/org/codehaus/jackson/sym/Name;
    :goto_0
    return-object v0

    .line 1722
    .restart local v0    # "name":Lcom/flurry/org/codehaus/jackson/sym/Name;
    :cond_0
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_quadBuffer:[I

    const/4 v2, 0x0

    aput p1, v1, v2

    .line 1723
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_quadBuffer:[I

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2, p2}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->addName([III)Lcom/flurry/org/codehaus/jackson/sym/Name;

    move-result-object v0

    goto :goto_0
.end method

.method private final findName(III)Lcom/flurry/org/codehaus/jackson/sym/Name;
    .locals 3
    .param p1, "q1"    # I
    .param p2, "q2"    # I
    .param p3, "lastQuadBytes"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 1730
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_symbols:Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;

    invoke-virtual {v1, p1, p2}, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->findName(II)Lcom/flurry/org/codehaus/jackson/sym/Name;

    move-result-object v0

    .line 1731
    .local v0, "name":Lcom/flurry/org/codehaus/jackson/sym/Name;
    if-eqz v0, :cond_0

    .line 1737
    .end local v0    # "name":Lcom/flurry/org/codehaus/jackson/sym/Name;
    :goto_0
    return-object v0

    .line 1735
    .restart local v0    # "name":Lcom/flurry/org/codehaus/jackson/sym/Name;
    :cond_0
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_quadBuffer:[I

    const/4 v2, 0x0

    aput p1, v1, v2

    .line 1736
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_quadBuffer:[I

    const/4 v2, 0x1

    aput p2, v1, v2

    .line 1737
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_quadBuffer:[I

    const/4 v2, 0x2

    invoke-direct {p0, v1, v2, p3}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->addName([III)Lcom/flurry/org/codehaus/jackson/sym/Name;

    move-result-object v0

    goto :goto_0
.end method

.method private final findName([IIII)Lcom/flurry/org/codehaus/jackson/sym/Name;
    .locals 3
    .param p1, "quads"    # [I
    .param p2, "qlen"    # I
    .param p3, "lastQuad"    # I
    .param p4, "lastQuadBytes"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 1743
    array-length v2, p1

    if-lt p2, v2, :cond_0

    .line 1744
    array-length v2, p1

    invoke-static {p1, v2}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->growArrayBy([II)[I

    move-result-object p1

    iput-object p1, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_quadBuffer:[I

    .line 1746
    :cond_0
    add-int/lit8 v1, p2, 0x1

    .end local p2    # "qlen":I
    .local v1, "qlen":I
    aput p3, p1, p2

    .line 1747
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_symbols:Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;

    invoke-virtual {v2, p1, v1}, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->findName([II)Lcom/flurry/org/codehaus/jackson/sym/Name;

    move-result-object v0

    .line 1748
    .local v0, "name":Lcom/flurry/org/codehaus/jackson/sym/Name;
    if-nez v0, :cond_1

    .line 1749
    invoke-direct {p0, p1, v1, p4}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->addName([III)Lcom/flurry/org/codehaus/jackson/sym/Name;

    move-result-object v0

    .line 1751
    .end local v0    # "name":Lcom/flurry/org/codehaus/jackson/sym/Name;
    :cond_1
    return-object v0
.end method

.method public static growArrayBy([II)[I
    .locals 4
    .param p0, "arr"    # [I
    .param p1, "more"    # I

    .prologue
    const/4 v3, 0x0

    .line 2839
    if-nez p0, :cond_0

    .line 2840
    new-array p0, p1, [I

    .line 2846
    .end local p0    # "arr":[I
    :goto_0
    return-object p0

    .line 2842
    .restart local p0    # "arr":[I
    :cond_0
    move-object v1, p0

    .line 2843
    .local v1, "old":[I
    array-length v0, p0

    .line 2844
    .local v0, "len":I
    add-int v2, v0, p1

    new-array p0, v2, [I

    .line 2845
    invoke-static {v1, v3, p0, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method private nextByte()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 2796
    iget v0, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    iget v1, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I

    if-lt v0, v1, :cond_0

    .line 2797
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->loadMoreGuaranteed()V

    .line 2799
    :cond_0
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v1, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method private final parseFieldName(III)Lcom/flurry/org/codehaus/jackson/sym/Name;
    .locals 6
    .param p1, "q1"    # I
    .param p2, "ch"    # I
    .param p3, "lastQuadBytes"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 1410
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_quadBuffer:[I

    const/4 v2, 0x0

    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->parseEscapedFieldName([IIIII)Lcom/flurry/org/codehaus/jackson/sym/Name;

    move-result-object v0

    return-object v0
.end method

.method private final parseFieldName(IIII)Lcom/flurry/org/codehaus/jackson/sym/Name;
    .locals 6
    .param p1, "q1"    # I
    .param p2, "q2"    # I
    .param p3, "ch"    # I
    .param p4, "lastQuadBytes"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 1416
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_quadBuffer:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 1417
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_quadBuffer:[I

    const/4 v2, 0x1

    move-object v0, p0

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->parseEscapedFieldName([IIIII)Lcom/flurry/org/codehaus/jackson/sym/Name;

    move-result-object v0

    return-object v0
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
    .line 235
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputStream:Ljava/io/InputStream;

    if-eqz v0, :cond_2

    .line 236
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_ioContext:Lcom/flurry/org/codehaus/jackson/io/IOContext;

    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/io/IOContext;->isResourceManaged()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;->AUTO_CLOSE_SOURCE:Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;

    invoke-virtual {p0, v0}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->isEnabled(Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 239
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputStream:Ljava/io/InputStream;

    .line 241
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

    .line 2862
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_getByteArrayBuilder()Lcom/flurry/org/codehaus/jackson/util/ByteArrayBuilder;

    move-result-object v1

    .line 2869
    .local v1, "builder":Lcom/flurry/org/codehaus/jackson/util/ByteArrayBuilder;
    :cond_0
    :goto_0
    iget v4, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    iget v5, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I

    if-lt v4, v5, :cond_1

    .line 2870
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->loadMoreGuaranteed()V

    .line 2872
    :cond_1
    iget-object v4, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v5, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    aget-byte v4, v4, v5

    and-int/lit16 v2, v4, 0xff

    .line 2873
    .local v2, "ch":I
    const/16 v4, 0x20

    if-le v2, v4, :cond_0

    .line 2874
    invoke-virtual {p1, v2}, Lcom/flurry/org/codehaus/jackson/Base64Variant;->decodeBase64Char(I)I

    move-result v0

    .line 2875
    .local v0, "bits":I
    if-gez v0, :cond_3

    .line 2876
    if-ne v2, v8, :cond_2

    .line 2877
    invoke-virtual {v1}, Lcom/flurry/org/codehaus/jackson/util/ByteArrayBuilder;->toByteArray()[B

    move-result-object v4

    .line 2945
    :goto_1
    return-object v4

    .line 2879
    :cond_2
    const/4 v4, 0x0

    invoke-virtual {p0, p1, v2, v4}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_decodeBase64Escape(Lcom/flurry/org/codehaus/jackson/Base64Variant;II)I

    move-result v0

    .line 2880
    if-ltz v0, :cond_0

    .line 2884
    :cond_3
    move v3, v0

    .line 2888
    .local v3, "decodedData":I
    iget v4, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    iget v5, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I

    if-lt v4, v5, :cond_4

    .line 2889
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->loadMoreGuaranteed()V

    .line 2891
    :cond_4
    iget-object v4, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v5, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    aget-byte v4, v4, v5

    and-int/lit16 v2, v4, 0xff

    .line 2892
    invoke-virtual {p1, v2}, Lcom/flurry/org/codehaus/jackson/Base64Variant;->decodeBase64Char(I)I

    move-result v0

    .line 2893
    if-gez v0, :cond_5

    .line 2894
    const/4 v4, 0x1

    invoke-virtual {p0, p1, v2, v4}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_decodeBase64Escape(Lcom/flurry/org/codehaus/jackson/Base64Variant;II)I

    move-result v0

    .line 2896
    :cond_5
    shl-int/lit8 v4, v3, 0x6

    or-int v3, v4, v0

    .line 2899
    iget v4, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    iget v5, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I

    if-lt v4, v5, :cond_6

    .line 2900
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->loadMoreGuaranteed()V

    .line 2902
    :cond_6
    iget-object v4, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v5, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    aget-byte v4, v4, v5

    and-int/lit16 v2, v4, 0xff

    .line 2903
    invoke-virtual {p1, v2}, Lcom/flurry/org/codehaus/jackson/Base64Variant;->decodeBase64Char(I)I

    move-result v0

    .line 2906
    if-gez v0, :cond_b

    .line 2907
    if-eq v0, v7, :cond_8

    .line 2909
    if-ne v2, v8, :cond_7

    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/Base64Variant;->usesPadding()Z

    move-result v4

    if-nez v4, :cond_7

    .line 2910
    shr-int/lit8 v3, v3, 0x4

    .line 2911
    invoke-virtual {v1, v3}, Lcom/flurry/org/codehaus/jackson/util/ByteArrayBuilder;->append(I)V

    .line 2912
    invoke-virtual {v1}, Lcom/flurry/org/codehaus/jackson/util/ByteArrayBuilder;->toByteArray()[B

    move-result-object v4

    goto :goto_1

    .line 2914
    :cond_7
    const/4 v4, 0x2

    invoke-virtual {p0, p1, v2, v4}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_decodeBase64Escape(Lcom/flurry/org/codehaus/jackson/Base64Variant;II)I

    move-result v0

    .line 2916
    :cond_8
    if-ne v0, v7, :cond_b

    .line 2918
    iget v4, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    iget v5, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I

    if-lt v4, v5, :cond_9

    .line 2919
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->loadMoreGuaranteed()V

    .line 2921
    :cond_9
    iget-object v4, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v5, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    aget-byte v4, v4, v5

    and-int/lit16 v2, v4, 0xff

    .line 2922
    invoke-virtual {p1, v2}, Lcom/flurry/org/codehaus/jackson/Base64Variant;->usesPaddingChar(I)Z

    move-result v4

    if-nez v4, :cond_a

    .line 2923
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

    invoke-virtual {p0, p1, v2, v9, v4}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->reportInvalidBase64Char(Lcom/flurry/org/codehaus/jackson/Base64Variant;IILjava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object v4

    throw v4

    .line 2926
    :cond_a
    shr-int/lit8 v3, v3, 0x4

    .line 2927
    invoke-virtual {v1, v3}, Lcom/flurry/org/codehaus/jackson/util/ByteArrayBuilder;->append(I)V

    goto/16 :goto_0

    .line 2932
    :cond_b
    shl-int/lit8 v4, v3, 0x6

    or-int v3, v4, v0

    .line 2934
    iget v4, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    iget v5, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I

    if-lt v4, v5, :cond_c

    .line 2935
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->loadMoreGuaranteed()V

    .line 2937
    :cond_c
    iget-object v4, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v5, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    aget-byte v4, v4, v5

    and-int/lit16 v2, v4, 0xff

    .line 2938
    invoke-virtual {p1, v2}, Lcom/flurry/org/codehaus/jackson/Base64Variant;->decodeBase64Char(I)I

    move-result v0

    .line 2939
    if-gez v0, :cond_f

    .line 2940
    if-eq v0, v7, :cond_e

    .line 2942
    if-ne v2, v8, :cond_d

    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/Base64Variant;->usesPadding()Z

    move-result v4

    if-nez v4, :cond_d

    .line 2943
    shr-int/lit8 v3, v3, 0x2

    .line 2944
    invoke-virtual {v1, v3}, Lcom/flurry/org/codehaus/jackson/util/ByteArrayBuilder;->appendTwoBytes(I)V

    .line 2945
    invoke-virtual {v1}, Lcom/flurry/org/codehaus/jackson/util/ByteArrayBuilder;->toByteArray()[B

    move-result-object v4

    goto/16 :goto_1

    .line 2947
    :cond_d
    invoke-virtual {p0, p1, v2, v9}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_decodeBase64Escape(Lcom/flurry/org/codehaus/jackson/Base64Variant;II)I

    move-result v0

    .line 2949
    :cond_e
    if-ne v0, v7, :cond_f

    .line 2956
    shr-int/lit8 v3, v3, 0x2

    .line 2957
    invoke-virtual {v1, v3}, Lcom/flurry/org/codehaus/jackson/util/ByteArrayBuilder;->appendTwoBytes(I)V

    goto/16 :goto_0

    .line 2962
    :cond_f
    shl-int/lit8 v4, v3, 0x6

    or-int v3, v4, v0

    .line 2963
    invoke-virtual {v1, v3}, Lcom/flurry/org/codehaus/jackson/util/ByteArrayBuilder;->appendThreeBytes(I)V

    goto/16 :goto_0
.end method

.method protected _decodeCharForError(I)I
    .locals 6
    .param p1, "firstByte"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x80

    .line 2564
    move v0, p1

    .line 2565
    .local v0, "c":I
    if-gez v0, :cond_3

    .line 2569
    and-int/lit16 v3, v0, 0xe0

    const/16 v4, 0xc0

    if-ne v3, v4, :cond_4

    .line 2570
    and-int/lit8 v0, v0, 0x1f

    .line 2571
    const/4 v2, 0x1

    .line 2584
    .local v2, "needed":I
    :goto_0
    invoke-direct {p0}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->nextByte()I

    move-result v1

    .line 2585
    .local v1, "d":I
    and-int/lit16 v3, v1, 0xc0

    if-eq v3, v5, :cond_0

    .line 2586
    and-int/lit16 v3, v1, 0xff

    invoke-virtual {p0, v3}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidOther(I)V

    .line 2588
    :cond_0
    shl-int/lit8 v3, v0, 0x6

    and-int/lit8 v4, v1, 0x3f

    or-int v0, v3, v4

    .line 2590
    const/4 v3, 0x1

    if-le v2, v3, :cond_3

    .line 2591
    invoke-direct {p0}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->nextByte()I

    move-result v1

    .line 2592
    and-int/lit16 v3, v1, 0xc0

    if-eq v3, v5, :cond_1

    .line 2593
    and-int/lit16 v3, v1, 0xff

    invoke-virtual {p0, v3}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidOther(I)V

    .line 2595
    :cond_1
    shl-int/lit8 v3, v0, 0x6

    and-int/lit8 v4, v1, 0x3f

    or-int v0, v3, v4

    .line 2596
    const/4 v3, 0x2

    if-le v2, v3, :cond_3

    .line 2597
    invoke-direct {p0}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->nextByte()I

    move-result v1

    .line 2598
    and-int/lit16 v3, v1, 0xc0

    if-eq v3, v5, :cond_2

    .line 2599
    and-int/lit16 v3, v1, 0xff

    invoke-virtual {p0, v3}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidOther(I)V

    .line 2601
    :cond_2
    shl-int/lit8 v3, v0, 0x6

    and-int/lit8 v4, v1, 0x3f

    or-int v0, v3, v4

    .line 2605
    .end local v1    # "d":I
    .end local v2    # "needed":I
    :cond_3
    return v0

    .line 2572
    :cond_4
    and-int/lit16 v3, v0, 0xf0

    const/16 v4, 0xe0

    if-ne v3, v4, :cond_5

    .line 2573
    and-int/lit8 v0, v0, 0xf

    .line 2574
    const/4 v2, 0x2

    .restart local v2    # "needed":I
    goto :goto_0

    .line 2575
    .end local v2    # "needed":I
    :cond_5
    and-int/lit16 v3, v0, 0xf8

    const/16 v4, 0xf0

    if-ne v3, v4, :cond_6

    .line 2577
    and-int/lit8 v0, v0, 0x7

    .line 2578
    const/4 v2, 0x3

    .restart local v2    # "needed":I
    goto :goto_0

    .line 2580
    .end local v2    # "needed":I
    :cond_6
    and-int/lit16 v3, v0, 0xff

    invoke-virtual {p0, v3}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidInitial(I)V

    .line 2581
    const/4 v2, 0x1

    .restart local v2    # "needed":I
    goto :goto_0
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
    .line 2510
    iget v5, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    iget v6, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I

    if-lt v5, v6, :cond_0

    .line 2511
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->loadMore()Z

    move-result v5

    if-nez v5, :cond_0

    .line 2512
    const-string v5, " in character escape sequence"

    invoke-virtual {p0, v5}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidEOF(Ljava/lang/String;)V

    .line 2515
    :cond_0
    iget-object v5, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v6, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    aget-byte v0, v5, v6

    .line 2517
    .local v0, "c":I
    sparse-switch v0, :sswitch_data_0

    .line 2540
    invoke-virtual {p0, v0}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_decodeCharForError(I)I

    move-result v5

    int-to-char v5, v5

    invoke-virtual {p0, v5}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_handleUnrecognizedCharacterEscape(C)C

    move-result v5

    .line 2558
    :goto_0
    return v5

    .line 2520
    :sswitch_0
    const/16 v5, 0x8

    goto :goto_0

    .line 2522
    :sswitch_1
    const/16 v5, 0x9

    goto :goto_0

    .line 2524
    :sswitch_2
    const/16 v5, 0xa

    goto :goto_0

    .line 2526
    :sswitch_3
    const/16 v5, 0xc

    goto :goto_0

    .line 2528
    :sswitch_4
    const/16 v5, 0xd

    goto :goto_0

    .line 2534
    :sswitch_5
    int-to-char v5, v0

    goto :goto_0

    .line 2544
    :sswitch_6
    const/4 v4, 0x0

    .line 2545
    .local v4, "value":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    const/4 v5, 0x4

    if-ge v3, v5, :cond_3

    .line 2546
    iget v5, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    iget v6, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I

    if-lt v5, v6, :cond_1

    .line 2547
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->loadMore()Z

    move-result v5

    if-nez v5, :cond_1

    .line 2548
    const-string v5, " in character escape sequence"

    invoke-virtual {p0, v5}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidEOF(Ljava/lang/String;)V

    .line 2551
    :cond_1
    iget-object v5, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v6, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    aget-byte v1, v5, v6

    .line 2552
    .local v1, "ch":I
    invoke-static {v1}, Lcom/flurry/org/codehaus/jackson/util/CharTypes;->charToHex(I)I

    move-result v2

    .line 2553
    .local v2, "digit":I
    if-gez v2, :cond_2

    .line 2554
    const-string v5, "expected a hex-digit for character escape sequence"

    invoke-virtual {p0, v1, v5}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_reportUnexpectedChar(ILjava/lang/String;)V

    .line 2556
    :cond_2
    shl-int/lit8 v5, v4, 0x4

    or-int v4, v5, v2

    .line 2545
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2558
    .end local v1    # "ch":I
    .end local v2    # "digit":I
    :cond_3
    int-to-char v5, v4

    goto :goto_0

    .line 2517
    nop

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_5
        0x2f -> :sswitch_5
        0x5c -> :sswitch_5
        0x62 -> :sswitch_0
        0x66 -> :sswitch_3
        0x6e -> :sswitch_2
        0x72 -> :sswitch_4
        0x74 -> :sswitch_1
        0x75 -> :sswitch_6
    .end sparse-switch
.end method

.method protected _finishString()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 1880
    iget v7, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    .line 1881
    .local v7, "ptr":I
    iget v8, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I

    if-lt v7, v8, :cond_0

    .line 1882
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->loadMoreGuaranteed()V

    .line 1883
    iget v7, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    .line 1885
    :cond_0
    const/4 v5, 0x0

    .line 1886
    .local v5, "outPtr":I
    iget-object v8, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_textBuffer:Lcom/flurry/org/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v8}, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->emptyAndGetCurrentSegment()[C

    move-result-object v4

    .line 1887
    .local v4, "outBuf":[C
    sget-object v1, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->sInputCodesUtf8:[I

    .line 1889
    .local v1, "codes":[I
    iget v8, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I

    array-length v9, v4

    add-int/2addr v9, v7

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 1890
    .local v3, "max":I
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    .local v2, "inputBuffer":[B
    move v6, v5

    .line 1891
    .end local v5    # "outPtr":I
    .local v6, "outPtr":I
    :goto_0
    if-ge v7, v3, :cond_2

    .line 1892
    aget-byte v8, v2, v7

    and-int/lit16 v0, v8, 0xff

    .line 1893
    .local v0, "c":I
    aget v8, v1, v0

    if-eqz v8, :cond_1

    .line 1894
    const/16 v8, 0x22

    if-ne v0, v8, :cond_2

    .line 1895
    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    .line 1896
    iget-object v8, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_textBuffer:Lcom/flurry/org/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v8, v6}, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->setCurrentLength(I)V

    .line 1906
    .end local v0    # "c":I
    :goto_1
    return-void

    .line 1901
    .restart local v0    # "c":I
    :cond_1
    add-int/lit8 v7, v7, 0x1

    .line 1902
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "outPtr":I
    .restart local v5    # "outPtr":I
    int-to-char v8, v0

    aput-char v8, v4, v6

    move v6, v5

    .line 1903
    .end local v5    # "outPtr":I
    .restart local v6    # "outPtr":I
    goto :goto_0

    .line 1904
    .end local v0    # "c":I
    :cond_2
    iput v7, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    .line 1905
    invoke-direct {p0, v4, v6}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_finishString2([CI)V

    goto :goto_1
.end method

.method protected final _getText2(Lcom/flurry/org/codehaus/jackson/JsonToken;)Ljava/lang/String;
    .locals 2
    .param p1, "t"    # Lcom/flurry/org/codehaus/jackson/JsonToken;

    .prologue
    .line 285
    if-nez p1, :cond_0

    .line 286
    const/4 v0, 0x0

    .line 298
    :goto_0
    return-object v0

    .line 288
    :cond_0
    sget-object v0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser$1;->$SwitchMap$org$codehaus$jackson$JsonToken:[I

    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonToken;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 298
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonToken;->asString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 290
    :pswitch_0
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_parsingContext:Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;->getCurrentName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 296
    :pswitch_1
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_textBuffer:Lcom/flurry/org/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->contentsAsString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 288
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method protected _handleApostropheValue()Lcom/flurry/org/codehaus/jackson/JsonToken;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    const/16 v10, 0x27

    .line 2097
    const/4 v0, 0x0

    .line 2099
    .local v0, "c":I
    const/4 v6, 0x0

    .line 2100
    .local v6, "outPtr":I
    iget-object v8, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_textBuffer:Lcom/flurry/org/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v8}, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->emptyAndGetCurrentSegment()[C

    move-result-object v5

    .line 2103
    .local v5, "outBuf":[C
    sget-object v1, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->sInputCodesUtf8:[I

    .line 2104
    .local v1, "codes":[I
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    .line 2111
    .local v2, "inputBuffer":[B
    :cond_0
    :goto_0
    iget v8, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    iget v9, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I

    if-lt v8, v9, :cond_1

    .line 2112
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->loadMoreGuaranteed()V

    .line 2114
    :cond_1
    array-length v8, v5

    if-lt v6, v8, :cond_2

    .line 2115
    iget-object v8, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_textBuffer:Lcom/flurry/org/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v8}, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v5

    .line 2116
    const/4 v6, 0x0

    .line 2118
    :cond_2
    iget v3, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I

    .line 2120
    .local v3, "max":I
    iget v8, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    array-length v9, v5

    sub-int/2addr v9, v6

    add-int v4, v8, v9

    .line 2121
    .local v4, "max2":I
    if-ge v4, v3, :cond_3

    .line 2122
    move v3, v4

    .line 2125
    :cond_3
    :goto_1
    iget v8, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    if-ge v8, v3, :cond_0

    .line 2126
    iget v8, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    aget-byte v8, v2, v8

    and-int/lit16 v0, v8, 0xff

    .line 2127
    if-eq v0, v10, :cond_4

    aget v8, v1, v0

    if-eqz v8, :cond_5

    .line 2135
    :cond_4
    if-ne v0, v10, :cond_6

    .line 2181
    iget-object v8, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_textBuffer:Lcom/flurry/org/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v8, v6}, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->setCurrentLength(I)V

    .line 2183
    sget-object v8, Lcom/flurry/org/codehaus/jackson/JsonToken;->VALUE_STRING:Lcom/flurry/org/codehaus/jackson/JsonToken;

    return-object v8

    .line 2130
    :cond_5
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "outPtr":I
    .local v7, "outPtr":I
    int-to-char v8, v0

    aput-char v8, v5, v6

    move v6, v7

    .end local v7    # "outPtr":I
    .restart local v6    # "outPtr":I
    goto :goto_1

    .line 2139
    :cond_6
    aget v8, v1, v0

    packed-switch v8, :pswitch_data_0

    .line 2167
    const/16 v8, 0x20

    if-ge v0, v8, :cond_7

    .line 2168
    const-string v8, "string value"

    invoke-virtual {p0, v0, v8}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_throwUnquotedSpace(ILjava/lang/String;)V

    .line 2171
    :cond_7
    invoke-virtual {p0, v0}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidChar(I)V

    .line 2174
    :cond_8
    :goto_2
    array-length v8, v5

    if-lt v6, v8, :cond_9

    .line 2175
    iget-object v8, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_textBuffer:Lcom/flurry/org/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v8}, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v5

    .line 2176
    const/4 v6, 0x0

    .line 2179
    :cond_9
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "outPtr":I
    .restart local v7    # "outPtr":I
    int-to-char v8, v0

    aput-char v8, v5, v6

    move v6, v7

    .end local v7    # "outPtr":I
    .restart local v6    # "outPtr":I
    goto :goto_0

    .line 2141
    :pswitch_0
    const/16 v8, 0x22

    if-eq v0, v8, :cond_8

    .line 2142
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_decodeEscaped()C

    move-result v0

    goto :goto_2

    .line 2146
    :pswitch_1
    invoke-direct {p0, v0}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_decodeUtf8_2(I)I

    move-result v0

    .line 2147
    goto :goto_2

    .line 2149
    :pswitch_2
    iget v8, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I

    iget v9, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    sub-int/2addr v8, v9

    const/4 v9, 0x2

    if-lt v8, v9, :cond_a

    .line 2150
    invoke-direct {p0, v0}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_decodeUtf8_3fast(I)I

    move-result v0

    goto :goto_2

    .line 2152
    :cond_a
    invoke-direct {p0, v0}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_decodeUtf8_3(I)I

    move-result v0

    .line 2154
    goto :goto_2

    .line 2156
    :pswitch_3
    invoke-direct {p0, v0}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_decodeUtf8_4(I)I

    move-result v0

    .line 2158
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "outPtr":I
    .restart local v7    # "outPtr":I
    const v8, 0xd800

    shr-int/lit8 v9, v0, 0xa

    or-int/2addr v8, v9

    int-to-char v8, v8

    aput-char v8, v5, v6

    .line 2159
    array-length v8, v5

    if-lt v7, v8, :cond_b

    .line 2160
    iget-object v8, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_textBuffer:Lcom/flurry/org/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v8}, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v5

    .line 2161
    const/4 v6, 0x0

    .line 2163
    .end local v7    # "outPtr":I
    .restart local v6    # "outPtr":I
    :goto_3
    const v8, 0xdc00

    and-int/lit16 v9, v0, 0x3ff

    or-int v0, v8, v9

    .line 2165
    goto :goto_2

    .end local v6    # "outPtr":I
    .restart local v7    # "outPtr":I
    :cond_b
    move v6, v7

    .end local v7    # "outPtr":I
    .restart local v6    # "outPtr":I
    goto :goto_3

    .line 2139
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
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

    .line 2193
    const/16 v1, 0x49

    if-ne p1, v1, :cond_4

    .line 2194
    iget v1, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    iget v6, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I

    if-lt v1, v6, :cond_0

    .line 2195
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->loadMore()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2196
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidEOFInValue()V

    .line 2199
    :cond_0
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v6, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    aget-byte p1, v1, v6

    .line 2200
    const/16 v1, 0x4e

    if-ne p1, v1, :cond_5

    .line 2201
    if-eqz p2, :cond_1

    const-string v0, "-INF"

    .line 2202
    .local v0, "match":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0, v0, v8}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_matchToken(Ljava/lang/String;I)V

    .line 2203
    sget-object v1, Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;->ALLOW_NON_NUMERIC_NUMBERS:Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;

    invoke-virtual {p0, v1}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->isEnabled(Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2204
    if-eqz p2, :cond_2

    :goto_1
    invoke-virtual {p0, v0, v2, v3}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->resetAsNaN(Ljava/lang/String;D)Lcom/flurry/org/codehaus/jackson/JsonToken;

    move-result-object v1

    .line 2217
    .end local v0    # "match":Ljava/lang/String;
    :goto_2
    return-object v1

    .line 2201
    :cond_1
    const-string v0, "+INF"

    goto :goto_0

    .restart local v0    # "match":Ljava/lang/String;
    :cond_2
    move-wide v2, v4

    .line 2204
    goto :goto_1

    .line 2206
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

    invoke-virtual {p0, v1}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_reportError(Ljava/lang/String;)V

    .line 2216
    .end local v0    # "match":Ljava/lang/String;
    :cond_4
    :goto_3
    const-string v1, "expected digit (0-9) to follow minus sign, for valid numeric value"

    invoke-virtual {p0, p1, v1}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->reportUnexpectedNumberChar(ILjava/lang/String;)V

    .line 2217
    const/4 v1, 0x0

    goto :goto_2

    .line 2207
    :cond_5
    const/16 v1, 0x6e

    if-ne p1, v1, :cond_4

    .line 2208
    if-eqz p2, :cond_6

    const-string v0, "-Infinity"

    .line 2209
    .restart local v0    # "match":Ljava/lang/String;
    :goto_4
    invoke-virtual {p0, v0, v8}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_matchToken(Ljava/lang/String;I)V

    .line 2210
    sget-object v1, Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;->ALLOW_NON_NUMERIC_NUMBERS:Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;

    invoke-virtual {p0, v1}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->isEnabled(Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 2211
    if-eqz p2, :cond_7

    :goto_5
    invoke-virtual {p0, v0, v2, v3}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->resetAsNaN(Ljava/lang/String;D)Lcom/flurry/org/codehaus/jackson/JsonToken;

    move-result-object v1

    goto :goto_2

    .line 2208
    .end local v0    # "match":Ljava/lang/String;
    :cond_6
    const-string v0, "+Infinity"

    goto :goto_4

    .restart local v0    # "match":Ljava/lang/String;
    :cond_7
    move-wide v2, v4

    .line 2211
    goto :goto_5

    .line 2213
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

    invoke-virtual {p0, v1}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_reportError(Ljava/lang/String;)V

    goto :goto_3
.end method

.method protected _handleUnexpectedValue(I)Lcom/flurry/org/codehaus/jackson/JsonToken;
    .locals 4
    .param p1, "c"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 2068
    sparse-switch p1, :sswitch_data_0

    .line 2090
    :cond_0
    :goto_0
    const-string v0, "expected a valid value (number, String, array, object, \'true\', \'false\' or \'null\')"

    invoke-virtual {p0, p1, v0}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_reportUnexpectedChar(ILjava/lang/String;)V

    .line 2091
    const/4 v0, 0x0

    :goto_1
    return-object v0

    .line 2070
    :sswitch_0
    sget-object v0, Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;->ALLOW_SINGLE_QUOTES:Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;

    invoke-virtual {p0, v0}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->isEnabled(Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2071
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_handleApostropheValue()Lcom/flurry/org/codehaus/jackson/JsonToken;

    move-result-object v0

    goto :goto_1

    .line 2075
    :sswitch_1
    const-string v0, "NaN"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_matchToken(Ljava/lang/String;I)V

    .line 2076
    sget-object v0, Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;->ALLOW_NON_NUMERIC_NUMBERS:Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;

    invoke-virtual {p0, v0}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->isEnabled(Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2077
    const-string v0, "NaN"

    const-wide/high16 v2, 0x7ff8000000000000L    # Double.NaN

    invoke-virtual {p0, v0, v2, v3}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->resetAsNaN(Ljava/lang/String;D)Lcom/flurry/org/codehaus/jackson/JsonToken;

    move-result-object v0

    goto :goto_1

    .line 2079
    :cond_1
    const-string v0, "Non-standard token \'NaN\': enable JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS to allow"

    invoke-virtual {p0, v0}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_reportError(Ljava/lang/String;)V

    goto :goto_0

    .line 2082
    :sswitch_2
    iget v0, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    iget v1, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I

    if-lt v0, v1, :cond_2

    .line 2083
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->loadMore()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2084
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidEOFInValue()V

    .line 2087
    :cond_2
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v1, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_handleInvalidNumberStart(IZ)Lcom/flurry/org/codehaus/jackson/JsonToken;

    move-result-object v0

    goto :goto_1

    .line 2068
    nop

    :sswitch_data_0
    .sparse-switch
        0x27 -> :sswitch_0
        0x2b -> :sswitch_2
        0x4e -> :sswitch_1
    .end sparse-switch
.end method

.method protected final _handleUnusualFieldName(I)Lcom/flurry/org/codehaus/jackson/sym/Name;
    .locals 9
    .param p1, "ch"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 1532
    const/16 v7, 0x27

    if-ne p1, v7, :cond_1

    sget-object v7, Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;->ALLOW_SINGLE_QUOTES:Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;

    invoke-virtual {p0, v7}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->isEnabled(Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1533
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_parseApostropheFieldName()Lcom/flurry/org/codehaus/jackson/sym/Name;

    move-result-object v3

    .line 1593
    :cond_0
    :goto_0
    return-object v3

    .line 1536
    :cond_1
    sget-object v7, Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;->ALLOW_UNQUOTED_FIELD_NAMES:Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;

    invoke-virtual {p0, v7}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->isEnabled(Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 1537
    const-string v7, "was expecting double-quote to start field name"

    invoke-virtual {p0, p1, v7}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_reportUnexpectedChar(ILjava/lang/String;)V

    .line 1543
    :cond_2
    invoke-static {}, Lcom/flurry/org/codehaus/jackson/util/CharTypes;->getInputCodeUtf8JsNames()[I

    move-result-object v0

    .line 1545
    .local v0, "codes":[I
    aget v7, v0, p1

    if-eqz v7, :cond_3

    .line 1546
    const-string v7, "was expecting either valid name character (for unquoted name) or double-quote (for quoted) to start field name"

    invoke-virtual {p0, p1, v7}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_reportUnexpectedChar(ILjava/lang/String;)V

    .line 1553
    :cond_3
    iget-object v6, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_quadBuffer:[I

    .line 1554
    .local v6, "quads":[I
    const/4 v4, 0x0

    .line 1555
    .local v4, "qlen":I
    const/4 v1, 0x0

    .line 1556
    .local v1, "currQuad":I
    const/4 v2, 0x0

    .local v2, "currQuadBytes":I
    move v5, v4

    .line 1560
    .end local v4    # "qlen":I
    .local v5, "qlen":I
    :goto_1
    const/4 v7, 0x4

    if-ge v2, v7, :cond_7

    .line 1561
    add-int/lit8 v2, v2, 0x1

    .line 1562
    shl-int/lit8 v7, v1, 0x8

    or-int v1, v7, p1

    move v4, v5

    .line 1571
    .end local v5    # "qlen":I
    .restart local v4    # "qlen":I
    :goto_2
    iget v7, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    iget v8, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I

    if-lt v7, v8, :cond_4

    .line 1572
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->loadMore()Z

    move-result v7

    if-nez v7, :cond_4

    .line 1573
    const-string v7, " in field name"

    invoke-virtual {p0, v7}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidEOF(Ljava/lang/String;)V

    .line 1576
    :cond_4
    iget-object v7, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v8, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    aget-byte v7, v7, v8

    and-int/lit16 p1, v7, 0xff

    .line 1577
    aget v7, v0, p1

    if-eqz v7, :cond_9

    .line 1583
    if-lez v2, :cond_6

    .line 1584
    array-length v7, v6

    if-lt v4, v7, :cond_5

    .line 1585
    array-length v7, v6

    invoke-static {v6, v7}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->growArrayBy([II)[I

    move-result-object v6

    iput-object v6, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_quadBuffer:[I

    .line 1587
    :cond_5
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "qlen":I
    .restart local v5    # "qlen":I
    aput v1, v6, v4

    move v4, v5

    .line 1589
    .end local v5    # "qlen":I
    .restart local v4    # "qlen":I
    :cond_6
    iget-object v7, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_symbols:Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;

    invoke-virtual {v7, v6, v4}, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->findName([II)Lcom/flurry/org/codehaus/jackson/sym/Name;

    move-result-object v3

    .line 1590
    .local v3, "name":Lcom/flurry/org/codehaus/jackson/sym/Name;
    if-nez v3, :cond_0

    .line 1591
    invoke-direct {p0, v6, v4, v2}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->addName([III)Lcom/flurry/org/codehaus/jackson/sym/Name;

    move-result-object v3

    goto :goto_0

    .line 1564
    .end local v3    # "name":Lcom/flurry/org/codehaus/jackson/sym/Name;
    .end local v4    # "qlen":I
    .restart local v5    # "qlen":I
    :cond_7
    array-length v7, v6

    if-lt v5, v7, :cond_8

    .line 1565
    array-length v7, v6

    invoke-static {v6, v7}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->growArrayBy([II)[I

    move-result-object v6

    iput-object v6, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_quadBuffer:[I

    .line 1567
    :cond_8
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "qlen":I
    .restart local v4    # "qlen":I
    aput v1, v6, v5

    .line 1568
    move v1, p1

    .line 1569
    const/4 v2, 0x1

    goto :goto_2

    .line 1580
    :cond_9
    iget v7, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    move v5, v4

    .end local v4    # "qlen":I
    .restart local v5    # "qlen":I
    goto :goto_1
.end method

.method protected final _loadToHaveAtLeast(I)Z
    .locals 9
    .param p1, "minAvailable"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 198
    iget-object v4, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputStream:Ljava/io/InputStream;

    if-nez v4, :cond_1

    .line 225
    :cond_0
    :goto_0
    return v2

    .line 202
    :cond_1
    iget v4, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I

    iget v5, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    sub-int v0, v4, v5

    .line 203
    .local v0, "amount":I
    if-lez v0, :cond_2

    iget v4, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    if-lez v4, :cond_2

    .line 204
    iget-wide v4, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_currInputProcessed:J

    iget v6, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    int-to-long v6, v6

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_currInputProcessed:J

    .line 205
    iget v4, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_currInputRowStart:I

    iget v5, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_currInputRowStart:I

    .line 206
    iget-object v4, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v5, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    iget-object v6, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    invoke-static {v4, v5, v6, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 207
    iput v0, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I

    .line 211
    :goto_1
    iput v2, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    .line 212
    :goto_2
    iget v4, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I

    if-ge v4, p1, :cond_4

    .line 213
    iget-object v4, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputStream:Ljava/io/InputStream;

    iget-object v5, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v6, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I

    iget-object v7, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    array-length v7, v7

    iget v8, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I

    sub-int/2addr v7, v8

    invoke-virtual {v4, v5, v6, v7}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 214
    .local v1, "count":I
    if-ge v1, v3, :cond_3

    .line 216
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_closeInput()V

    .line 218
    if-nez v1, :cond_0

    .line 219
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "InputStream.read() returned 0 characters when trying to read "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " bytes"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 209
    .end local v1    # "count":I
    :cond_2
    iput v2, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I

    goto :goto_1

    .line 223
    .restart local v1    # "count":I
    :cond_3
    iget v4, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I

    add-int/2addr v4, v1

    iput v4, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I

    goto :goto_2

    .end local v1    # "count":I
    :cond_4
    move v2, v3

    .line 225
    goto :goto_0
.end method

.method protected final _matchToken(Ljava/lang/String;I)V
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
    const/4 v5, 0x0

    .line 2223
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 2226
    .local v2, "len":I
    :cond_0
    iget v3, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    iget v4, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I

    if-lt v3, v4, :cond_1

    .line 2227
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->loadMore()Z

    move-result v3

    if-nez v3, :cond_1

    .line 2228
    const-string v3, " in a value"

    invoke-virtual {p0, v3}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidEOF(Ljava/lang/String;)V

    .line 2231
    :cond_1
    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v4, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    aget-byte v3, v3, v4

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v3, v4, :cond_2

    .line 2232
    invoke-virtual {p1, v5, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\'null\', \'true\', \'false\' or NaN"

    invoke-virtual {p0, v3, v4}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 2234
    :cond_2
    iget v3, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    .line 2235
    add-int/lit8 p2, p2, 0x1

    if-lt p2, v2, :cond_0

    .line 2238
    iget v3, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    iget v4, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I

    if-lt v3, v4, :cond_4

    .line 2239
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->loadMore()Z

    move-result v3

    if-nez v3, :cond_4

    .line 2253
    :cond_3
    :goto_0
    return-void

    .line 2243
    :cond_4
    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v4, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    aget-byte v3, v3, v4

    and-int/lit16 v1, v3, 0xff

    .line 2244
    .local v1, "ch":I
    const/16 v3, 0x30

    if-lt v1, v3, :cond_3

    const/16 v3, 0x5d

    if-eq v1, v3, :cond_3

    const/16 v3, 0x7d

    if-eq v1, v3, :cond_3

    .line 2248
    invoke-virtual {p0, v1}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_decodeCharForError(I)I

    move-result v3

    int-to-char v0, v3

    .line 2249
    .local v0, "c":C
    invoke-static {v0}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2250
    iget v3, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    .line 2251
    invoke-virtual {p1, v5, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\'null\', \'true\', \'false\' or NaN"

    invoke-virtual {p0, v3, v4}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidToken(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected final _parseApostropheFieldName()Lcom/flurry/org/codehaus/jackson/sym/Name;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    const/16 v12, 0x27

    const/4 v11, 0x4

    .line 1604
    iget v8, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    iget v9, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I

    if-lt v8, v9, :cond_0

    .line 1605
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->loadMore()Z

    move-result v8

    if-nez v8, :cond_0

    .line 1606
    const-string v8, ": was expecting closing \'\'\' for name"

    invoke-virtual {p0, v8}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidEOF(Ljava/lang/String;)V

    .line 1609
    :cond_0
    iget-object v8, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v9, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v10, v9, 0x1

    iput v10, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    aget-byte v8, v8, v9

    and-int/lit16 v0, v8, 0xff

    .line 1610
    .local v0, "ch":I
    if-ne v0, v12, :cond_2

    .line 1611
    invoke-static {}, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->getEmptyName()Lcom/flurry/org/codehaus/jackson/sym/Name;

    move-result-object v4

    .line 1704
    :cond_1
    :goto_0
    return-object v4

    .line 1613
    :cond_2
    iget-object v7, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_quadBuffer:[I

    .line 1614
    .local v7, "quads":[I
    const/4 v5, 0x0

    .line 1615
    .local v5, "qlen":I
    const/4 v2, 0x0

    .line 1616
    .local v2, "currQuad":I
    const/4 v3, 0x0

    .line 1620
    .local v3, "currQuadBytes":I
    sget-object v1, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->sInputCodesLatin1:[I

    .local v1, "codes":[I
    move v6, v5

    .line 1623
    .end local v5    # "qlen":I
    .local v6, "qlen":I
    :goto_1
    if-ne v0, v12, :cond_4

    .line 1694
    if-lez v3, :cond_e

    .line 1695
    array-length v8, v7

    if-lt v6, v8, :cond_3

    .line 1696
    array-length v8, v7

    invoke-static {v7, v8}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->growArrayBy([II)[I

    move-result-object v7

    iput-object v7, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_quadBuffer:[I

    .line 1698
    :cond_3
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "qlen":I
    .restart local v5    # "qlen":I
    aput v2, v7, v6

    .line 1700
    :goto_2
    iget-object v8, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_symbols:Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;

    invoke-virtual {v8, v7, v5}, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->findName([II)Lcom/flurry/org/codehaus/jackson/sym/Name;

    move-result-object v4

    .line 1701
    .local v4, "name":Lcom/flurry/org/codehaus/jackson/sym/Name;
    if-nez v4, :cond_1

    .line 1702
    invoke-direct {p0, v7, v5, v3}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->addName([III)Lcom/flurry/org/codehaus/jackson/sym/Name;

    move-result-object v4

    goto :goto_0

    .line 1627
    .end local v4    # "name":Lcom/flurry/org/codehaus/jackson/sym/Name;
    .end local v5    # "qlen":I
    .restart local v6    # "qlen":I
    :cond_4
    const/16 v8, 0x22

    if-eq v0, v8, :cond_7

    aget v8, v1, v0

    if-eqz v8, :cond_7

    .line 1628
    const/16 v8, 0x5c

    if-eq v0, v8, :cond_9

    .line 1631
    const-string v8, "name"

    invoke-virtual {p0, v0, v8}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_throwUnquotedSpace(ILjava/lang/String;)V

    .line 1641
    :goto_3
    const/16 v8, 0x7f

    if-le v0, v8, :cond_7

    .line 1643
    if-lt v3, v11, :cond_6

    .line 1644
    array-length v8, v7

    if-lt v6, v8, :cond_5

    .line 1645
    array-length v8, v7

    invoke-static {v7, v8}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->growArrayBy([II)[I

    move-result-object v7

    iput-object v7, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_quadBuffer:[I

    .line 1647
    :cond_5
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "qlen":I
    .restart local v5    # "qlen":I
    aput v2, v7, v6

    .line 1648
    const/4 v2, 0x0

    .line 1649
    const/4 v3, 0x0

    move v6, v5

    .line 1651
    .end local v5    # "qlen":I
    .restart local v6    # "qlen":I
    :cond_6
    const/16 v8, 0x800

    if-ge v0, v8, :cond_a

    .line 1652
    shl-int/lit8 v8, v2, 0x8

    shr-int/lit8 v9, v0, 0x6

    or-int/lit16 v9, v9, 0xc0

    or-int v2, v8, v9

    .line 1653
    add-int/lit8 v3, v3, 0x1

    move v5, v6

    .line 1671
    .end local v6    # "qlen":I
    .restart local v5    # "qlen":I
    :goto_4
    and-int/lit8 v8, v0, 0x3f

    or-int/lit16 v0, v8, 0x80

    move v6, v5

    .line 1675
    .end local v5    # "qlen":I
    .restart local v6    # "qlen":I
    :cond_7
    if-ge v3, v11, :cond_c

    .line 1676
    add-int/lit8 v3, v3, 0x1

    .line 1677
    shl-int/lit8 v8, v2, 0x8

    or-int v2, v8, v0

    move v5, v6

    .line 1686
    .end local v6    # "qlen":I
    .restart local v5    # "qlen":I
    :goto_5
    iget v8, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    iget v9, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I

    if-lt v8, v9, :cond_8

    .line 1687
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->loadMore()Z

    move-result v8

    if-nez v8, :cond_8

    .line 1688
    const-string v8, " in field name"

    invoke-virtual {p0, v8}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidEOF(Ljava/lang/String;)V

    .line 1691
    :cond_8
    iget-object v8, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v9, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v10, v9, 0x1

    iput v10, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    aget-byte v8, v8, v9

    and-int/lit16 v0, v8, 0xff

    move v6, v5

    .end local v5    # "qlen":I
    .restart local v6    # "qlen":I
    goto/16 :goto_1

    .line 1634
    :cond_9
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_decodeEscaped()C

    move-result v0

    goto :goto_3

    .line 1656
    :cond_a
    shl-int/lit8 v8, v2, 0x8

    shr-int/lit8 v9, v0, 0xc

    or-int/lit16 v9, v9, 0xe0

    or-int v2, v8, v9

    .line 1657
    add-int/lit8 v3, v3, 0x1

    .line 1659
    if-lt v3, v11, :cond_f

    .line 1660
    array-length v8, v7

    if-lt v6, v8, :cond_b

    .line 1661
    array-length v8, v7

    invoke-static {v7, v8}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->growArrayBy([II)[I

    move-result-object v7

    iput-object v7, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_quadBuffer:[I

    .line 1663
    :cond_b
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "qlen":I
    .restart local v5    # "qlen":I
    aput v2, v7, v6

    .line 1664
    const/4 v2, 0x0

    .line 1665
    const/4 v3, 0x0

    .line 1667
    :goto_6
    shl-int/lit8 v8, v2, 0x8

    shr-int/lit8 v9, v0, 0x6

    and-int/lit8 v9, v9, 0x3f

    or-int/lit16 v9, v9, 0x80

    or-int v2, v8, v9

    .line 1668
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 1679
    .end local v5    # "qlen":I
    .restart local v6    # "qlen":I
    :cond_c
    array-length v8, v7

    if-lt v6, v8, :cond_d

    .line 1680
    array-length v8, v7

    invoke-static {v7, v8}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->growArrayBy([II)[I

    move-result-object v7

    iput-object v7, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_quadBuffer:[I

    .line 1682
    :cond_d
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "qlen":I
    .restart local v5    # "qlen":I
    aput v2, v7, v6

    .line 1683
    move v2, v0

    .line 1684
    const/4 v3, 0x1

    goto :goto_5

    .end local v5    # "qlen":I
    .restart local v6    # "qlen":I
    :cond_e
    move v5, v6

    .end local v6    # "qlen":I
    .restart local v5    # "qlen":I
    goto/16 :goto_2

    .end local v5    # "qlen":I
    .restart local v6    # "qlen":I
    :cond_f
    move v5, v6

    .end local v6    # "qlen":I
    .restart local v5    # "qlen":I
    goto :goto_6
.end method

.method protected final _parseFieldName(I)Lcom/flurry/org/codehaus/jackson/sym/Name;
    .locals 10
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/16 v5, 0x22

    .line 1226
    if-eq p1, v5, :cond_0

    .line 1227
    invoke-virtual {p0, p1}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_handleUnusualFieldName(I)Lcom/flurry/org/codehaus/jackson/sym/Name;

    move-result-object v3

    .line 1283
    :goto_0
    return-object v3

    .line 1230
    :cond_0
    iget v3, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v3, v3, 0x9

    iget v4, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I

    if-le v3, v4, :cond_1

    .line 1231
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->slowParseFieldName()Lcom/flurry/org/codehaus/jackson/sym/Name;

    move-result-object v3

    goto :goto_0

    .line 1240
    :cond_1
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    .line 1241
    .local v1, "input":[B
    sget-object v0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->sInputCodesLatin1:[I

    .line 1243
    .local v0, "codes":[I
    iget v3, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    aget-byte v3, v1, v3

    and-int/lit16 v2, v3, 0xff

    .line 1245
    .local v2, "q":I
    aget v3, v0, v2

    if-nez v3, :cond_a

    .line 1246
    iget v3, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    aget-byte v3, v1, v3

    and-int/lit16 p1, v3, 0xff

    .line 1247
    aget v3, v0, p1

    if-nez v3, :cond_8

    .line 1248
    shl-int/lit8 v3, v2, 0x8

    or-int v2, v3, p1

    .line 1249
    iget v3, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    aget-byte v3, v1, v3

    and-int/lit16 p1, v3, 0xff

    .line 1250
    aget v3, v0, p1

    if-nez v3, :cond_6

    .line 1251
    shl-int/lit8 v3, v2, 0x8

    or-int v2, v3, p1

    .line 1252
    iget v3, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    aget-byte v3, v1, v3

    and-int/lit16 p1, v3, 0xff

    .line 1253
    aget v3, v0, p1

    if-nez v3, :cond_4

    .line 1254
    shl-int/lit8 v3, v2, 0x8

    or-int v2, v3, p1

    .line 1255
    iget v3, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    aget-byte v3, v1, v3

    and-int/lit16 p1, v3, 0xff

    .line 1256
    aget v3, v0, p1

    if-nez v3, :cond_2

    .line 1257
    iput v2, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_quad1:I

    .line 1258
    invoke-virtual {p0, p1, v0}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->parseMediumFieldName(I[I)Lcom/flurry/org/codehaus/jackson/sym/Name;

    move-result-object v3

    goto :goto_0

    .line 1260
    :cond_2
    if-ne p1, v5, :cond_3

    .line 1261
    const/4 v3, 0x4

    invoke-direct {p0, v2, v3}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->findName(II)Lcom/flurry/org/codehaus/jackson/sym/Name;

    move-result-object v3

    goto :goto_0

    .line 1263
    :cond_3
    const/4 v3, 0x4

    invoke-direct {p0, v2, p1, v3}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->parseFieldName(III)Lcom/flurry/org/codehaus/jackson/sym/Name;

    move-result-object v3

    goto :goto_0

    .line 1265
    :cond_4
    if-ne p1, v5, :cond_5

    .line 1266
    invoke-direct {p0, v2, v9}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->findName(II)Lcom/flurry/org/codehaus/jackson/sym/Name;

    move-result-object v3

    goto :goto_0

    .line 1268
    :cond_5
    invoke-direct {p0, v2, p1, v9}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->parseFieldName(III)Lcom/flurry/org/codehaus/jackson/sym/Name;

    move-result-object v3

    goto/16 :goto_0

    .line 1270
    :cond_6
    if-ne p1, v5, :cond_7

    .line 1271
    invoke-direct {p0, v2, v8}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->findName(II)Lcom/flurry/org/codehaus/jackson/sym/Name;

    move-result-object v3

    goto/16 :goto_0

    .line 1273
    :cond_7
    invoke-direct {p0, v2, p1, v8}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->parseFieldName(III)Lcom/flurry/org/codehaus/jackson/sym/Name;

    move-result-object v3

    goto/16 :goto_0

    .line 1275
    :cond_8
    if-ne p1, v5, :cond_9

    .line 1276
    invoke-direct {p0, v2, v7}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->findName(II)Lcom/flurry/org/codehaus/jackson/sym/Name;

    move-result-object v3

    goto/16 :goto_0

    .line 1278
    :cond_9
    invoke-direct {p0, v2, p1, v7}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->parseFieldName(III)Lcom/flurry/org/codehaus/jackson/sym/Name;

    move-result-object v3

    goto/16 :goto_0

    .line 1280
    :cond_a
    if-ne v2, v5, :cond_b

    .line 1281
    invoke-static {}, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->getEmptyName()Lcom/flurry/org/codehaus/jackson/sym/Name;

    move-result-object v3

    goto/16 :goto_0

    .line 1283
    :cond_b
    invoke-direct {p0, v6, v2, v6}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->parseFieldName(III)Lcom/flurry/org/codehaus/jackson/sym/Name;

    move-result-object v3

    goto/16 :goto_0
.end method

.method protected _releaseBuffers()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 252
    invoke-super {p0}, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->_releaseBuffers()V

    .line 253
    iget-boolean v1, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_bufferRecyclable:Z

    if-eqz v1, :cond_0

    .line 254
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    .line 255
    .local v0, "buf":[B
    if-eqz v0, :cond_0

    .line 256
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    .line 257
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_ioContext:Lcom/flurry/org/codehaus/jackson/io/IOContext;

    invoke-virtual {v1, v0}, Lcom/flurry/org/codehaus/jackson/io/IOContext;->releaseReadIOBuffer([B)V

    .line 260
    .end local v0    # "buf":[B
    :cond_0
    return-void
.end method

.method protected _reportInvalidChar(I)V
    .locals 1
    .param p1, "c"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 2812
    const/16 v0, 0x20

    if-ge p1, v0, :cond_0

    .line 2813
    invoke-virtual {p0, p1}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_throwInvalidSpace(I)V

    .line 2815
    :cond_0
    invoke-virtual {p0, p1}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidInitial(I)V

    .line 2816
    return-void
.end method

.method protected _reportInvalidInitial(I)V
    .locals 2
    .param p1, "mask"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 2821
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid UTF-8 start byte 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_reportError(Ljava/lang/String;)V

    .line 2822
    return-void
.end method

.method protected _reportInvalidOther(I)V
    .locals 2
    .param p1, "mask"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 2827
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid UTF-8 middle byte 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_reportError(Ljava/lang/String;)V

    .line 2828
    return-void
.end method

.method protected _reportInvalidOther(II)V
    .locals 0
    .param p1, "mask"    # I
    .param p2, "ptr"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 2833
    iput p2, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    .line 2834
    invoke-virtual {p0, p1}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidOther(I)V

    .line 2835
    return-void
.end method

.method protected _reportInvalidToken(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "matchedPart"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 2258
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2264
    .local v2, "sb":Ljava/lang/StringBuilder;
    :goto_0
    iget v3, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    iget v4, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I

    if-lt v3, v4, :cond_1

    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->loadMore()Z

    move-result v3

    if-nez v3, :cond_1

    .line 2275
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unrecognized token \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\': was expecting "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_reportError(Ljava/lang/String;)V

    .line 2276
    return-void

    .line 2267
    :cond_1
    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v4, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    aget-byte v1, v3, v4

    .line 2268
    .local v1, "i":I
    invoke-virtual {p0, v1}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_decodeCharForError(I)I

    move-result v3

    int-to-char v0, v3

    .line 2269
    .local v0, "c":C
    invoke-static {v0}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2272
    iget v3, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    .line 2273
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

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
    .line 2778
    iget v0, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    iget v1, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->loadMore()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2779
    :cond_0
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v1, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    aget-byte v0, v0, v1

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    .line 2780
    iget v0, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    .line 2783
    :cond_1
    iget v0, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_currInputRow:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_currInputRow:I

    .line 2784
    iget v0, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    iput v0, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_currInputRowStart:I

    .line 2785
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
    .line 2789
    iget v0, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_currInputRow:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_currInputRow:I

    .line 2790
    iget v0, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    iput v0, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_currInputRowStart:I

    .line 2791
    return-void
.end method

.method protected _skipString()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 2000
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_tokenIncomplete:Z

    .line 2003
    sget-object v1, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->sInputCodesUtf8:[I

    .line 2004
    .local v1, "codes":[I
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    .line 2012
    .local v2, "inputBuffer":[B
    :goto_0
    iget v4, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    .line 2013
    .local v4, "ptr":I
    iget v3, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I

    .line 2014
    .local v3, "max":I
    if-lt v4, v3, :cond_3

    .line 2015
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->loadMoreGuaranteed()V

    .line 2016
    iget v4, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    .line 2017
    iget v3, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I

    move v5, v4

    .line 2019
    .end local v4    # "ptr":I
    .local v5, "ptr":I
    :goto_1
    if-ge v5, v3, :cond_0

    .line 2020
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "ptr":I
    .restart local v4    # "ptr":I
    aget-byte v6, v2, v5

    and-int/lit16 v0, v6, 0xff

    .line 2021
    .local v0, "c":I
    aget v6, v1, v0

    if-eqz v6, :cond_3

    .line 2022
    iput v4, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    .line 2029
    const/16 v6, 0x22

    if-ne v0, v6, :cond_1

    .line 2056
    return-void

    .line 2026
    .end local v0    # "c":I
    .end local v4    # "ptr":I
    .restart local v5    # "ptr":I
    :cond_0
    iput v5, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    goto :goto_0

    .line 2033
    .end local v5    # "ptr":I
    .restart local v0    # "c":I
    .restart local v4    # "ptr":I
    :cond_1
    aget v6, v1, v0

    packed-switch v6, :pswitch_data_0

    .line 2047
    const/16 v6, 0x20

    if-ge v0, v6, :cond_2

    .line 2049
    const-string v6, "string value"

    invoke-virtual {p0, v0, v6}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_throwUnquotedSpace(ILjava/lang/String;)V

    goto :goto_0

    .line 2035
    :pswitch_0
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_decodeEscaped()C

    goto :goto_0

    .line 2038
    :pswitch_1
    invoke-direct {p0, v0}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_skipUtf8_2(I)V

    goto :goto_0

    .line 2041
    :pswitch_2
    invoke-direct {p0, v0}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_skipUtf8_3(I)V

    goto :goto_0

    .line 2044
    :pswitch_3
    invoke-direct {p0, v0}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_skipUtf8_4(I)V

    goto :goto_0

    .line 2052
    :cond_2
    invoke-virtual {p0, v0}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidChar(I)V

    goto :goto_0

    .end local v0    # "c":I
    :cond_3
    move v5, v4

    .end local v4    # "ptr":I
    .restart local v5    # "ptr":I
    goto :goto_1

    .line 2033
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 626
    invoke-super {p0}, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;->close()V

    .line 628
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_symbols:Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;

    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->release()V

    .line 629
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
    .line 391
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_currToken:Lcom/flurry/org/codehaus/jackson/JsonToken;

    sget-object v3, Lcom/flurry/org/codehaus/jackson/JsonToken;->VALUE_STRING:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_currToken:Lcom/flurry/org/codehaus/jackson/JsonToken;

    sget-object v3, Lcom/flurry/org/codehaus/jackson/JsonToken;->VALUE_EMBEDDED_OBJECT:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_binaryValue:[B

    if-nez v2, :cond_1

    .line 393
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Current token ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_currToken:Lcom/flurry/org/codehaus/jackson/JsonToken;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") not VALUE_STRING or VALUE_EMBEDDED_OBJECT, can not access as binary"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_reportError(Ljava/lang/String;)V

    .line 398
    :cond_1
    iget-boolean v2, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_tokenIncomplete:Z

    if-eqz v2, :cond_3

    .line 400
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_decodeBase64(Lcom/flurry/org/codehaus/jackson/Base64Variant;)[B

    move-result-object v2

    iput-object v2, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_binaryValue:[B
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 407
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_tokenIncomplete:Z

    .line 415
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_binaryValue:[B

    return-object v2

    .line 401
    :catch_0
    move-exception v1

    .line 402
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

    invoke-virtual {p0, v2}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_constructError(Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/JsonParseException;

    move-result-object v2

    throw v2

    .line 409
    .end local v1    # "iae":Ljava/lang/IllegalArgumentException;
    :cond_3
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_binaryValue:[B

    if-nez v2, :cond_2

    .line 410
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_getByteArrayBuilder()Lcom/flurry/org/codehaus/jackson/util/ByteArrayBuilder;

    move-result-object v0

    .line 411
    .local v0, "builder":Lcom/flurry/org/codehaus/jackson/util/ByteArrayBuilder;
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v0, p1}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_decodeBase64(Ljava/lang/String;Lcom/flurry/org/codehaus/jackson/util/ByteArrayBuilder;Lcom/flurry/org/codehaus/jackson/Base64Variant;)V

    .line 412
    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/util/ByteArrayBuilder;->toByteArray()[B

    move-result-object v2

    iput-object v2, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_binaryValue:[B

    goto :goto_0
.end method

.method public getCodec()Lcom/flurry/org/codehaus/jackson/ObjectCodec;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_objectCodec:Lcom/flurry/org/codehaus/jackson/ObjectCodec;

    return-object v0
.end method

.method public getInputSource()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputStream:Ljava/io/InputStream;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 272
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_currToken:Lcom/flurry/org/codehaus/jackson/JsonToken;

    .line 273
    .local v0, "t":Lcom/flurry/org/codehaus/jackson/JsonToken;
    sget-object v1, Lcom/flurry/org/codehaus/jackson/JsonToken;->VALUE_STRING:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_1

    .line 274
    iget-boolean v1, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_tokenIncomplete:Z

    if-eqz v1, :cond_0

    .line 275
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_tokenIncomplete:Z

    .line 276
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_finishString()V

    .line 278
    :cond_0
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_textBuffer:Lcom/flurry/org/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v1}, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->contentsAsString()Ljava/lang/String;

    move-result-object v1

    .line 280
    :goto_0
    return-object v1

    :cond_1
    invoke-virtual {p0, v0}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_getText2(Lcom/flurry/org/codehaus/jackson/JsonToken;)Ljava/lang/String;

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

    .line 305
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_currToken:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-eqz v2, :cond_4

    .line 306
    sget-object v2, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser$1;->$SwitchMap$org$codehaus$jackson$JsonToken:[I

    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_currToken:Lcom/flurry/org/codehaus/jackson/JsonToken;

    invoke-virtual {v3}, Lcom/flurry/org/codehaus/jackson/JsonToken;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 333
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_currToken:Lcom/flurry/org/codehaus/jackson/JsonToken;

    invoke-virtual {v2}, Lcom/flurry/org/codehaus/jackson/JsonToken;->asCharArray()[C

    move-result-object v2

    .line 336
    :goto_0
    return-object v2

    .line 309
    :pswitch_0
    iget-boolean v2, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_nameCopied:Z

    if-nez v2, :cond_1

    .line 310
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_parsingContext:Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v2}, Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;->getCurrentName()Ljava/lang/String;

    move-result-object v0

    .line 311
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 312
    .local v1, "nameLen":I
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_nameCopyBuffer:[C

    if-nez v2, :cond_2

    .line 313
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_ioContext:Lcom/flurry/org/codehaus/jackson/io/IOContext;

    invoke-virtual {v2, v1}, Lcom/flurry/org/codehaus/jackson/io/IOContext;->allocNameCopyBuffer(I)[C

    move-result-object v2

    iput-object v2, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_nameCopyBuffer:[C

    .line 317
    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_nameCopyBuffer:[C

    invoke-virtual {v0, v4, v1, v2, v4}, Ljava/lang/String;->getChars(II[CI)V

    .line 318
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_nameCopied:Z

    .line 320
    .end local v0    # "name":Ljava/lang/String;
    .end local v1    # "nameLen":I
    :cond_1
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_nameCopyBuffer:[C

    goto :goto_0

    .line 314
    .restart local v0    # "name":Ljava/lang/String;
    .restart local v1    # "nameLen":I
    :cond_2
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_nameCopyBuffer:[C

    array-length v2, v2

    if-ge v2, v1, :cond_0

    .line 315
    new-array v2, v1, [C

    iput-object v2, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_nameCopyBuffer:[C

    goto :goto_1

    .line 323
    .end local v0    # "name":Ljava/lang/String;
    .end local v1    # "nameLen":I
    :pswitch_1
    iget-boolean v2, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_tokenIncomplete:Z

    if-eqz v2, :cond_3

    .line 324
    iput-boolean v4, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_tokenIncomplete:Z

    .line 325
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_finishString()V

    .line 330
    :cond_3
    :pswitch_2
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_textBuffer:Lcom/flurry/org/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v2}, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->getTextBuffer()[C

    move-result-object v2

    goto :goto_0

    .line 336
    :cond_4
    const/4 v2, 0x0

    goto :goto_0

    .line 306
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

    .line 343
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_currToken:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-eqz v1, :cond_0

    .line 344
    sget-object v1, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser$1;->$SwitchMap$org$codehaus$jackson$JsonToken:[I

    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_currToken:Lcom/flurry/org/codehaus/jackson/JsonToken;

    invoke-virtual {v2}, Lcom/flurry/org/codehaus/jackson/JsonToken;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 359
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_currToken:Lcom/flurry/org/codehaus/jackson/JsonToken;

    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/JsonToken;->asCharArray()[C

    move-result-object v0

    array-length v0, v0

    .line 362
    :cond_0
    :goto_0
    return v0

    .line 347
    :pswitch_0
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_parsingContext:Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;->getCurrentName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_0

    .line 349
    :pswitch_1
    iget-boolean v1, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_tokenIncomplete:Z

    if-eqz v1, :cond_1

    .line 350
    iput-boolean v0, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_tokenIncomplete:Z

    .line 351
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_finishString()V

    .line 356
    :cond_1
    :pswitch_2
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_textBuffer:Lcom/flurry/org/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->size()I

    move-result v0

    goto :goto_0

    .line 344
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

    .line 369
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_currToken:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-eqz v1, :cond_0

    .line 370
    sget-object v1, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser$1;->$SwitchMap$org$codehaus$jackson$JsonToken:[I

    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_currToken:Lcom/flurry/org/codehaus/jackson/JsonToken;

    invoke-virtual {v2}, Lcom/flurry/org/codehaus/jackson/JsonToken;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 384
    :cond_0
    :goto_0
    :pswitch_0
    return v0

    .line 374
    :pswitch_1
    iget-boolean v1, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_tokenIncomplete:Z

    if-eqz v1, :cond_1

    .line 375
    iput-boolean v0, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_tokenIncomplete:Z

    .line 376
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_finishString()V

    .line 381
    :cond_1
    :pswitch_2
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_textBuffer:Lcom/flurry/org/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->getTextOffset()I

    move-result v0

    goto :goto_0

    .line 370
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

    .line 168
    iget-wide v2, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_currInputProcessed:J

    iget v4, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_currInputProcessed:J

    .line 169
    iget v2, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_currInputRowStart:I

    iget v3, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_currInputRowStart:I

    .line 171
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputStream:Ljava/io/InputStream;

    if-eqz v2, :cond_0

    .line 172
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputStream:Ljava/io/InputStream;

    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget-object v4, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    array-length v4, v4

    invoke-virtual {v2, v3, v1, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 173
    .local v0, "count":I
    if-lez v0, :cond_1

    .line 174
    iput v1, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    .line 175
    iput v0, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I

    .line 176
    const/4 v1, 0x1

    .line 185
    .end local v0    # "count":I
    :cond_0
    return v1

    .line 179
    .restart local v0    # "count":I
    :cond_1
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_closeInput()V

    .line 181
    if-nez v0, :cond_0

    .line 182
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "InputStream.read() returned 0 characters when trying to read "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bytes"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    .line 945
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_currToken:Lcom/flurry/org/codehaus/jackson/JsonToken;

    sget-object v3, Lcom/flurry/org/codehaus/jackson/JsonToken;->FIELD_NAME:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-ne v2, v3, :cond_4

    .line 946
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_nameCopied:Z

    .line 947
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_nextToken:Lcom/flurry/org/codehaus/jackson/JsonToken;

    .line 948
    .local v0, "t":Lcom/flurry/org/codehaus/jackson/JsonToken;
    iput-object v1, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_nextToken:Lcom/flurry/org/codehaus/jackson/JsonToken;

    .line 949
    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_currToken:Lcom/flurry/org/codehaus/jackson/JsonToken;

    .line 950
    sget-object v2, Lcom/flurry/org/codehaus/jackson/JsonToken;->VALUE_TRUE:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-ne v0, v2, :cond_1

    .line 951
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 969
    .end local v0    # "t":Lcom/flurry/org/codehaus/jackson/JsonToken;
    :cond_0
    :goto_0
    return-object v1

    .line 953
    .restart local v0    # "t":Lcom/flurry/org/codehaus/jackson/JsonToken;
    :cond_1
    sget-object v2, Lcom/flurry/org/codehaus/jackson/JsonToken;->VALUE_FALSE:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-ne v0, v2, :cond_2

    .line 954
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    .line 956
    :cond_2
    sget-object v2, Lcom/flurry/org/codehaus/jackson/JsonToken;->START_ARRAY:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-ne v0, v2, :cond_3

    .line 957
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_parsingContext:Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;

    iget v3, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_tokenInputRow:I

    iget v4, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_tokenInputCol:I

    invoke-virtual {v2, v3, v4}, Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;->createChildArrayContext(II)Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;

    move-result-object v2

    iput-object v2, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_parsingContext:Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;

    goto :goto_0

    .line 958
    :cond_3
    sget-object v2, Lcom/flurry/org/codehaus/jackson/JsonToken;->START_OBJECT:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-ne v0, v2, :cond_0

    .line 959
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_parsingContext:Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;

    iget v3, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_tokenInputRow:I

    iget v4, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_tokenInputCol:I

    invoke-virtual {v2, v3, v4}, Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;->createChildObjectContext(II)Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;

    move-result-object v2

    iput-object v2, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_parsingContext:Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;

    goto :goto_0

    .line 963
    .end local v0    # "t":Lcom/flurry/org/codehaus/jackson/JsonToken;
    :cond_4
    sget-object v2, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser$1;->$SwitchMap$org$codehaus$jackson$JsonToken:[I

    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->nextToken()Lcom/flurry/org/codehaus/jackson/JsonToken;

    move-result-object v3

    invoke-virtual {v3}, Lcom/flurry/org/codehaus/jackson/JsonToken;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 965
    :pswitch_0
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    .line 967
    :pswitch_1
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    .line 963
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public nextFieldName(Lcom/flurry/org/codehaus/jackson/SerializableString;)Z
    .locals 10
    .param p1, "str"    # Lcom/flurry/org/codehaus/jackson/SerializableString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 643
    const/4 v6, 0x0

    iput v6, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_numTypesValid:I

    .line 644
    iget-object v6, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_currToken:Lcom/flurry/org/codehaus/jackson/JsonToken;

    sget-object v7, Lcom/flurry/org/codehaus/jackson/JsonToken;->FIELD_NAME:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-ne v6, v7, :cond_0

    .line 645
    invoke-direct {p0}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_nextAfterName()Lcom/flurry/org/codehaus/jackson/JsonToken;

    .line 646
    const/4 v6, 0x0

    .line 725
    :goto_0
    return v6

    .line 648
    :cond_0
    iget-boolean v6, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_tokenIncomplete:Z

    if-eqz v6, :cond_1

    .line 649
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_skipString()V

    .line 651
    :cond_1
    invoke-direct {p0}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_skipWSOrEnd()I

    move-result v1

    .line 652
    .local v1, "i":I
    if-gez v1, :cond_2

    .line 653
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->close()V

    .line 654
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_currToken:Lcom/flurry/org/codehaus/jackson/JsonToken;

    .line 655
    const/4 v6, 0x0

    goto :goto_0

    .line 657
    :cond_2
    iget-wide v6, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_currInputProcessed:J

    iget v8, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    int-to-long v8, v8

    add-long/2addr v6, v8

    const-wide/16 v8, 0x1

    sub-long/2addr v6, v8

    iput-wide v6, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_tokenInputTotal:J

    .line 658
    iget v6, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_currInputRow:I

    iput v6, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_tokenInputRow:I

    .line 659
    iget v6, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    iget v7, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_currInputRowStart:I

    sub-int/2addr v6, v7

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_tokenInputCol:I

    .line 662
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_binaryValue:[B

    .line 665
    const/16 v6, 0x5d

    if-ne v1, v6, :cond_4

    .line 666
    iget-object v6, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_parsingContext:Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v6}, Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;->inArray()Z

    move-result v6

    if-nez v6, :cond_3

    .line 667
    const/16 v6, 0x7d

    invoke-virtual {p0, v1, v6}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_reportMismatchedEndMarker(IC)V

    .line 669
    :cond_3
    iget-object v6, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_parsingContext:Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v6}, Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;->getParent()Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;

    move-result-object v6

    iput-object v6, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_parsingContext:Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;

    .line 670
    sget-object v6, Lcom/flurry/org/codehaus/jackson/JsonToken;->END_ARRAY:Lcom/flurry/org/codehaus/jackson/JsonToken;

    iput-object v6, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_currToken:Lcom/flurry/org/codehaus/jackson/JsonToken;

    .line 671
    const/4 v6, 0x0

    goto :goto_0

    .line 673
    :cond_4
    const/16 v6, 0x7d

    if-ne v1, v6, :cond_6

    .line 674
    iget-object v6, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_parsingContext:Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v6}, Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;->inObject()Z

    move-result v6

    if-nez v6, :cond_5

    .line 675
    const/16 v6, 0x5d

    invoke-virtual {p0, v1, v6}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_reportMismatchedEndMarker(IC)V

    .line 677
    :cond_5
    iget-object v6, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_parsingContext:Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v6}, Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;->getParent()Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;

    move-result-object v6

    iput-object v6, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_parsingContext:Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;

    .line 678
    sget-object v6, Lcom/flurry/org/codehaus/jackson/JsonToken;->END_OBJECT:Lcom/flurry/org/codehaus/jackson/JsonToken;

    iput-object v6, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_currToken:Lcom/flurry/org/codehaus/jackson/JsonToken;

    .line 679
    const/4 v6, 0x0

    goto :goto_0

    .line 683
    :cond_6
    iget-object v6, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_parsingContext:Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v6}, Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;->expectComma()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 684
    const/16 v6, 0x2c

    if-eq v1, v6, :cond_7

    .line 685
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "was expecting comma to separate "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_parsingContext:Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v7}, Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;->getTypeDesc()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " entries"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v1, v6}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_reportUnexpectedChar(ILjava/lang/String;)V

    .line 687
    :cond_7
    invoke-direct {p0}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_skipWS()I

    move-result v1

    .line 690
    :cond_8
    iget-object v6, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_parsingContext:Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v6}, Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;->inObject()Z

    move-result v6

    if-nez v6, :cond_9

    .line 691
    invoke-direct {p0, v1}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_nextTokenNotInObject(I)Lcom/flurry/org/codehaus/jackson/JsonToken;

    .line 692
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 696
    :cond_9
    const/16 v6, 0x22

    if-ne v1, v6, :cond_b

    .line 698
    invoke-interface {p1}, Lcom/flurry/org/codehaus/jackson/SerializableString;->asQuotedUTF8()[B

    move-result-object v3

    .line 699
    .local v3, "nameBytes":[B
    array-length v2, v3

    .line 700
    .local v2, "len":I
    iget v6, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/2addr v6, v2

    iget v7, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I

    if-ge v6, v7, :cond_b

    .line 702
    iget v6, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int v0, v6, v2

    .line 703
    .local v0, "end":I
    iget-object v6, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    aget-byte v6, v6, v0

    const/16 v7, 0x22

    if-ne v6, v7, :cond_b

    .line 704
    const/4 v4, 0x0

    .line 705
    .local v4, "offset":I
    iget v5, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    .line 707
    .local v5, "ptr":I
    :goto_1
    if-ne v4, v2, :cond_a

    .line 708
    add-int/lit8 v6, v0, 0x1

    iput v6, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    .line 710
    iget-object v6, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_parsingContext:Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;

    invoke-interface {p1}, Lcom/flurry/org/codehaus/jackson/SerializableString;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;->setCurrentName(Ljava/lang/String;)V

    .line 711
    sget-object v6, Lcom/flurry/org/codehaus/jackson/JsonToken;->FIELD_NAME:Lcom/flurry/org/codehaus/jackson/JsonToken;

    iput-object v6, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_currToken:Lcom/flurry/org/codehaus/jackson/JsonToken;

    .line 713
    invoke-direct {p0}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_isNextTokenNameYes()V

    .line 714
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 716
    :cond_a
    aget-byte v6, v3, v4

    iget-object v7, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    add-int v8, v5, v4

    aget-byte v7, v7, v8

    if-eq v6, v7, :cond_c

    .line 724
    .end local v0    # "end":I
    .end local v2    # "len":I
    .end local v3    # "nameBytes":[B
    .end local v4    # "offset":I
    .end local v5    # "ptr":I
    :cond_b
    invoke-direct {p0, v1}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_isNextTokenNameNo(I)V

    .line 725
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 719
    .restart local v0    # "end":I
    .restart local v2    # "len":I
    .restart local v3    # "nameBytes":[B
    .restart local v4    # "offset":I
    .restart local v5    # "ptr":I
    :cond_c
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
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
    .line 897
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_currToken:Lcom/flurry/org/codehaus/jackson/JsonToken;

    sget-object v2, Lcom/flurry/org/codehaus/jackson/JsonToken;->FIELD_NAME:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-ne v1, v2, :cond_3

    .line 898
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_nameCopied:Z

    .line 899
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_nextToken:Lcom/flurry/org/codehaus/jackson/JsonToken;

    .line 900
    .local v0, "t":Lcom/flurry/org/codehaus/jackson/JsonToken;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_nextToken:Lcom/flurry/org/codehaus/jackson/JsonToken;

    .line 901
    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_currToken:Lcom/flurry/org/codehaus/jackson/JsonToken;

    .line 902
    sget-object v1, Lcom/flurry/org/codehaus/jackson/JsonToken;->VALUE_NUMBER_INT:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_1

    .line 903
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->getIntValue()I

    move-result p1

    .line 913
    .end local v0    # "t":Lcom/flurry/org/codehaus/jackson/JsonToken;
    .end local p1    # "defaultValue":I
    :cond_0
    :goto_0
    return p1

    .line 905
    .restart local v0    # "t":Lcom/flurry/org/codehaus/jackson/JsonToken;
    .restart local p1    # "defaultValue":I
    :cond_1
    sget-object v1, Lcom/flurry/org/codehaus/jackson/JsonToken;->START_ARRAY:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_2

    .line 906
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_parsingContext:Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;

    iget v2, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_tokenInputRow:I

    iget v3, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_tokenInputCol:I

    invoke-virtual {v1, v2, v3}, Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;->createChildArrayContext(II)Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;

    move-result-object v1

    iput-object v1, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_parsingContext:Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;

    goto :goto_0

    .line 907
    :cond_2
    sget-object v1, Lcom/flurry/org/codehaus/jackson/JsonToken;->START_OBJECT:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_0

    .line 908
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_parsingContext:Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;

    iget v2, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_tokenInputRow:I

    iget v3, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_tokenInputCol:I

    invoke-virtual {v1, v2, v3}, Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;->createChildObjectContext(II)Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;

    move-result-object v1

    iput-object v1, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_parsingContext:Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;

    goto :goto_0

    .line 913
    .end local v0    # "t":Lcom/flurry/org/codehaus/jackson/JsonToken;
    :cond_3
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->nextToken()Lcom/flurry/org/codehaus/jackson/JsonToken;

    move-result-object v1

    sget-object v2, Lcom/flurry/org/codehaus/jackson/JsonToken;->VALUE_NUMBER_INT:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->getIntValue()I

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
    .line 921
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_currToken:Lcom/flurry/org/codehaus/jackson/JsonToken;

    sget-object v2, Lcom/flurry/org/codehaus/jackson/JsonToken;->FIELD_NAME:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-ne v1, v2, :cond_3

    .line 922
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_nameCopied:Z

    .line 923
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_nextToken:Lcom/flurry/org/codehaus/jackson/JsonToken;

    .line 924
    .local v0, "t":Lcom/flurry/org/codehaus/jackson/JsonToken;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_nextToken:Lcom/flurry/org/codehaus/jackson/JsonToken;

    .line 925
    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_currToken:Lcom/flurry/org/codehaus/jackson/JsonToken;

    .line 926
    sget-object v1, Lcom/flurry/org/codehaus/jackson/JsonToken;->VALUE_NUMBER_INT:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_1

    .line 927
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->getLongValue()J

    move-result-wide p1

    .line 937
    .end local v0    # "t":Lcom/flurry/org/codehaus/jackson/JsonToken;
    .end local p1    # "defaultValue":J
    :cond_0
    :goto_0
    return-wide p1

    .line 929
    .restart local v0    # "t":Lcom/flurry/org/codehaus/jackson/JsonToken;
    .restart local p1    # "defaultValue":J
    :cond_1
    sget-object v1, Lcom/flurry/org/codehaus/jackson/JsonToken;->START_ARRAY:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_2

    .line 930
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_parsingContext:Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;

    iget v2, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_tokenInputRow:I

    iget v3, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_tokenInputCol:I

    invoke-virtual {v1, v2, v3}, Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;->createChildArrayContext(II)Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;

    move-result-object v1

    iput-object v1, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_parsingContext:Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;

    goto :goto_0

    .line 931
    :cond_2
    sget-object v1, Lcom/flurry/org/codehaus/jackson/JsonToken;->START_OBJECT:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_0

    .line 932
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_parsingContext:Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;

    iget v2, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_tokenInputRow:I

    iget v3, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_tokenInputCol:I

    invoke-virtual {v1, v2, v3}, Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;->createChildObjectContext(II)Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;

    move-result-object v1

    iput-object v1, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_parsingContext:Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;

    goto :goto_0

    .line 937
    .end local v0    # "t":Lcom/flurry/org/codehaus/jackson/JsonToken;
    :cond_3
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->nextToken()Lcom/flurry/org/codehaus/jackson/JsonToken;

    move-result-object v1

    sget-object v2, Lcom/flurry/org/codehaus/jackson/JsonToken;->VALUE_NUMBER_INT:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->getLongValue()J

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

    .line 869
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_currToken:Lcom/flurry/org/codehaus/jackson/JsonToken;

    sget-object v3, Lcom/flurry/org/codehaus/jackson/JsonToken;->FIELD_NAME:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-ne v2, v3, :cond_4

    .line 870
    iput-boolean v4, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_nameCopied:Z

    .line 871
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_nextToken:Lcom/flurry/org/codehaus/jackson/JsonToken;

    .line 872
    .local v0, "t":Lcom/flurry/org/codehaus/jackson/JsonToken;
    iput-object v1, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_nextToken:Lcom/flurry/org/codehaus/jackson/JsonToken;

    .line 873
    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_currToken:Lcom/flurry/org/codehaus/jackson/JsonToken;

    .line 874
    sget-object v2, Lcom/flurry/org/codehaus/jackson/JsonToken;->VALUE_STRING:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-ne v0, v2, :cond_2

    .line 875
    iget-boolean v1, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_tokenIncomplete:Z

    if-eqz v1, :cond_0

    .line 876
    iput-boolean v4, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_tokenIncomplete:Z

    .line 877
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_finishString()V

    .line 879
    :cond_0
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_textBuffer:Lcom/flurry/org/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v1}, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->contentsAsString()Ljava/lang/String;

    move-result-object v1

    .line 889
    .end local v0    # "t":Lcom/flurry/org/codehaus/jackson/JsonToken;
    :cond_1
    :goto_0
    return-object v1

    .line 881
    .restart local v0    # "t":Lcom/flurry/org/codehaus/jackson/JsonToken;
    :cond_2
    sget-object v2, Lcom/flurry/org/codehaus/jackson/JsonToken;->START_ARRAY:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-ne v0, v2, :cond_3

    .line 882
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_parsingContext:Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;

    iget v3, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_tokenInputRow:I

    iget v4, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_tokenInputCol:I

    invoke-virtual {v2, v3, v4}, Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;->createChildArrayContext(II)Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;

    move-result-object v2

    iput-object v2, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_parsingContext:Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;

    goto :goto_0

    .line 883
    :cond_3
    sget-object v2, Lcom/flurry/org/codehaus/jackson/JsonToken;->START_OBJECT:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-ne v0, v2, :cond_1

    .line 884
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_parsingContext:Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;

    iget v3, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_tokenInputRow:I

    iget v4, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_tokenInputCol:I

    invoke-virtual {v2, v3, v4}, Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;->createChildObjectContext(II)Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;

    move-result-object v2

    iput-object v2, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_parsingContext:Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;

    goto :goto_0

    .line 889
    .end local v0    # "t":Lcom/flurry/org/codehaus/jackson/JsonToken;
    :cond_4
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->nextToken()Lcom/flurry/org/codehaus/jackson/JsonToken;

    move-result-object v2

    sget-object v3, Lcom/flurry/org/codehaus/jackson/JsonToken;->VALUE_STRING:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-ne v2, v3, :cond_1

    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->getText()Ljava/lang/String;

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

    .line 432
    const/4 v4, 0x0

    iput v4, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_numTypesValid:I

    .line 437
    iget-object v4, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_currToken:Lcom/flurry/org/codehaus/jackson/JsonToken;

    sget-object v5, Lcom/flurry/org/codehaus/jackson/JsonToken;->FIELD_NAME:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-ne v4, v5, :cond_0

    .line 438
    invoke-direct {p0}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_nextAfterName()Lcom/flurry/org/codehaus/jackson/JsonToken;

    move-result-object v3

    .line 558
    :goto_0
    return-object v3

    .line 440
    :cond_0
    iget-boolean v4, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_tokenIncomplete:Z

    if-eqz v4, :cond_1

    .line 441
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_skipString()V

    .line 444
    :cond_1
    invoke-direct {p0}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_skipWSOrEnd()I

    move-result v0

    .line 445
    .local v0, "i":I
    if-gez v0, :cond_2

    .line 449
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->close()V

    .line 450
    iput-object v3, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_currToken:Lcom/flurry/org/codehaus/jackson/JsonToken;

    goto :goto_0

    .line 456
    :cond_2
    iget-wide v4, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_currInputProcessed:J

    iget v6, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    int-to-long v6, v6

    add-long/2addr v4, v6

    const-wide/16 v6, 0x1

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_tokenInputTotal:J

    .line 457
    iget v4, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_currInputRow:I

    iput v4, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_tokenInputRow:I

    .line 458
    iget v4, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    iget v5, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_currInputRowStart:I

    sub-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_tokenInputCol:I

    .line 461
    iput-object v3, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_binaryValue:[B

    .line 464
    if-ne v0, v9, :cond_4

    .line 465
    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_parsingContext:Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v3}, Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;->inArray()Z

    move-result v3

    if-nez v3, :cond_3

    .line 466
    invoke-virtual {p0, v0, v10}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_reportMismatchedEndMarker(IC)V

    .line 468
    :cond_3
    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_parsingContext:Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v3}, Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;->getParent()Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;

    move-result-object v3

    iput-object v3, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_parsingContext:Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;

    .line 469
    sget-object v3, Lcom/flurry/org/codehaus/jackson/JsonToken;->END_ARRAY:Lcom/flurry/org/codehaus/jackson/JsonToken;

    iput-object v3, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_currToken:Lcom/flurry/org/codehaus/jackson/JsonToken;

    goto :goto_0

    .line 471
    :cond_4
    if-ne v0, v10, :cond_6

    .line 472
    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_parsingContext:Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v3}, Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;->inObject()Z

    move-result v3

    if-nez v3, :cond_5

    .line 473
    invoke-virtual {p0, v0, v9}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_reportMismatchedEndMarker(IC)V

    .line 475
    :cond_5
    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_parsingContext:Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v3}, Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;->getParent()Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;

    move-result-object v3

    iput-object v3, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_parsingContext:Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;

    .line 476
    sget-object v3, Lcom/flurry/org/codehaus/jackson/JsonToken;->END_OBJECT:Lcom/flurry/org/codehaus/jackson/JsonToken;

    iput-object v3, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_currToken:Lcom/flurry/org/codehaus/jackson/JsonToken;

    goto :goto_0

    .line 480
    :cond_6
    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_parsingContext:Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v3}, Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;->expectComma()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 481
    const/16 v3, 0x2c

    if-eq v0, v3, :cond_7

    .line 482
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "was expecting comma to separate "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_parsingContext:Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v4}, Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;->getTypeDesc()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " entries"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v3}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_reportUnexpectedChar(ILjava/lang/String;)V

    .line 484
    :cond_7
    invoke-direct {p0}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_skipWS()I

    move-result v0

    .line 491
    :cond_8
    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_parsingContext:Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v3}, Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;->inObject()Z

    move-result v3

    if-nez v3, :cond_9

    .line 492
    invoke-direct {p0, v0}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_nextTokenNotInObject(I)Lcom/flurry/org/codehaus/jackson/JsonToken;

    move-result-object v3

    goto/16 :goto_0

    .line 495
    :cond_9
    invoke-virtual {p0, v0}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_parseFieldName(I)Lcom/flurry/org/codehaus/jackson/sym/Name;

    move-result-object v1

    .line 496
    .local v1, "n":Lcom/flurry/org/codehaus/jackson/sym/Name;
    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_parsingContext:Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v1}, Lcom/flurry/org/codehaus/jackson/sym/Name;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;->setCurrentName(Ljava/lang/String;)V

    .line 497
    sget-object v3, Lcom/flurry/org/codehaus/jackson/JsonToken;->FIELD_NAME:Lcom/flurry/org/codehaus/jackson/JsonToken;

    iput-object v3, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_currToken:Lcom/flurry/org/codehaus/jackson/JsonToken;

    .line 498
    invoke-direct {p0}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_skipWS()I

    move-result v0

    .line 499
    const/16 v3, 0x3a

    if-eq v0, v3, :cond_a

    .line 500
    const-string v3, "was expecting a colon to separate field name and value"

    invoke-virtual {p0, v0, v3}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_reportUnexpectedChar(ILjava/lang/String;)V

    .line 502
    :cond_a
    invoke-direct {p0}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_skipWS()I

    move-result v0

    .line 505
    const/16 v3, 0x22

    if-ne v0, v3, :cond_b

    .line 506
    iput-boolean v8, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_tokenIncomplete:Z

    .line 507
    sget-object v3, Lcom/flurry/org/codehaus/jackson/JsonToken;->VALUE_STRING:Lcom/flurry/org/codehaus/jackson/JsonToken;

    iput-object v3, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_nextToken:Lcom/flurry/org/codehaus/jackson/JsonToken;

    .line 508
    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_currToken:Lcom/flurry/org/codehaus/jackson/JsonToken;

    goto/16 :goto_0

    .line 512
    :cond_b
    sparse-switch v0, :sswitch_data_0

    .line 555
    invoke-virtual {p0, v0}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_handleUnexpectedValue(I)Lcom/flurry/org/codehaus/jackson/JsonToken;

    move-result-object v2

    .line 557
    .local v2, "t":Lcom/flurry/org/codehaus/jackson/JsonToken;
    :goto_1
    iput-object v2, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_nextToken:Lcom/flurry/org/codehaus/jackson/JsonToken;

    .line 558
    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_currToken:Lcom/flurry/org/codehaus/jackson/JsonToken;

    goto/16 :goto_0

    .line 514
    .end local v2    # "t":Lcom/flurry/org/codehaus/jackson/JsonToken;
    :sswitch_0
    sget-object v2, Lcom/flurry/org/codehaus/jackson/JsonToken;->START_ARRAY:Lcom/flurry/org/codehaus/jackson/JsonToken;

    .line 515
    .restart local v2    # "t":Lcom/flurry/org/codehaus/jackson/JsonToken;
    goto :goto_1

    .line 517
    .end local v2    # "t":Lcom/flurry/org/codehaus/jackson/JsonToken;
    :sswitch_1
    sget-object v2, Lcom/flurry/org/codehaus/jackson/JsonToken;->START_OBJECT:Lcom/flurry/org/codehaus/jackson/JsonToken;

    .line 518
    .restart local v2    # "t":Lcom/flurry/org/codehaus/jackson/JsonToken;
    goto :goto_1

    .line 523
    .end local v2    # "t":Lcom/flurry/org/codehaus/jackson/JsonToken;
    :sswitch_2
    const-string v3, "expected a value"

    invoke-virtual {p0, v0, v3}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_reportUnexpectedChar(ILjava/lang/String;)V

    .line 525
    :sswitch_3
    const-string v3, "true"

    invoke-virtual {p0, v3, v8}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_matchToken(Ljava/lang/String;I)V

    .line 526
    sget-object v2, Lcom/flurry/org/codehaus/jackson/JsonToken;->VALUE_TRUE:Lcom/flurry/org/codehaus/jackson/JsonToken;

    .line 527
    .restart local v2    # "t":Lcom/flurry/org/codehaus/jackson/JsonToken;
    goto :goto_1

    .line 529
    .end local v2    # "t":Lcom/flurry/org/codehaus/jackson/JsonToken;
    :sswitch_4
    const-string v3, "false"

    invoke-virtual {p0, v3, v8}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_matchToken(Ljava/lang/String;I)V

    .line 530
    sget-object v2, Lcom/flurry/org/codehaus/jackson/JsonToken;->VALUE_FALSE:Lcom/flurry/org/codehaus/jackson/JsonToken;

    .line 531
    .restart local v2    # "t":Lcom/flurry/org/codehaus/jackson/JsonToken;
    goto :goto_1

    .line 533
    .end local v2    # "t":Lcom/flurry/org/codehaus/jackson/JsonToken;
    :sswitch_5
    const-string v3, "null"

    invoke-virtual {p0, v3, v8}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_matchToken(Ljava/lang/String;I)V

    .line 534
    sget-object v2, Lcom/flurry/org/codehaus/jackson/JsonToken;->VALUE_NULL:Lcom/flurry/org/codehaus/jackson/JsonToken;

    .line 535
    .restart local v2    # "t":Lcom/flurry/org/codehaus/jackson/JsonToken;
    goto :goto_1

    .line 552
    .end local v2    # "t":Lcom/flurry/org/codehaus/jackson/JsonToken;
    :sswitch_6
    invoke-virtual {p0, v0}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->parseNumberText(I)Lcom/flurry/org/codehaus/jackson/JsonToken;

    move-result-object v2

    .line 553
    .restart local v2    # "t":Lcom/flurry/org/codehaus/jackson/JsonToken;
    goto :goto_1

    .line 512
    :sswitch_data_0
    .sparse-switch
        0x2d -> :sswitch_6
        0x30 -> :sswitch_6
        0x31 -> :sswitch_6
        0x32 -> :sswitch_6
        0x33 -> :sswitch_6
        0x34 -> :sswitch_6
        0x35 -> :sswitch_6
        0x36 -> :sswitch_6
        0x37 -> :sswitch_6
        0x38 -> :sswitch_6
        0x39 -> :sswitch_6
        0x5b -> :sswitch_0
        0x5d -> :sswitch_2
        0x66 -> :sswitch_4
        0x6e -> :sswitch_5
        0x74 -> :sswitch_3
        0x7b -> :sswitch_1
        0x7d -> :sswitch_2
    .end sparse-switch
.end method

.method protected parseEscapedFieldName([IIIII)Lcom/flurry/org/codehaus/jackson/sym/Name;
    .locals 7
    .param p1, "quads"    # [I
    .param p2, "qlen"    # I
    .param p3, "currQuad"    # I
    .param p4, "ch"    # I
    .param p5, "currQuadBytes"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x4

    .line 1436
    sget-object v0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->sInputCodesLatin1:[I

    .line 1439
    .local v0, "codes":[I
    :goto_0
    aget v3, v0, p4

    if-eqz v3, :cond_d

    .line 1440
    const/16 v3, 0x22

    if-ne p4, v3, :cond_3

    .line 1509
    if-lez p5, :cond_1

    .line 1510
    array-length v3, p1

    if-lt p2, v3, :cond_0

    .line 1511
    array-length v3, p1

    invoke-static {p1, v3}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->growArrayBy([II)[I

    move-result-object p1

    iput-object p1, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_quadBuffer:[I

    .line 1513
    :cond_0
    add-int/lit8 v2, p2, 0x1

    .end local p2    # "qlen":I
    .local v2, "qlen":I
    aput p3, p1, p2

    move p2, v2

    .line 1515
    .end local v2    # "qlen":I
    .restart local p2    # "qlen":I
    :cond_1
    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_symbols:Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;

    invoke-virtual {v3, p1, p2}, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->findName([II)Lcom/flurry/org/codehaus/jackson/sym/Name;

    move-result-object v1

    .line 1516
    .local v1, "name":Lcom/flurry/org/codehaus/jackson/sym/Name;
    if-nez v1, :cond_2

    .line 1517
    invoke-direct {p0, p1, p2, p5}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->addName([III)Lcom/flurry/org/codehaus/jackson/sym/Name;

    move-result-object v1

    .line 1519
    :cond_2
    return-object v1

    .line 1444
    .end local v1    # "name":Lcom/flurry/org/codehaus/jackson/sym/Name;
    :cond_3
    const/16 v3, 0x5c

    if-eq p4, v3, :cond_6

    .line 1446
    const-string v3, "name"

    invoke-virtual {p0, p4, v3}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_throwUnquotedSpace(ILjava/lang/String;)V

    .line 1456
    :goto_1
    const/16 v3, 0x7f

    if-le p4, v3, :cond_d

    .line 1458
    if-lt p5, v6, :cond_c

    .line 1459
    array-length v3, p1

    if-lt p2, v3, :cond_4

    .line 1460
    array-length v3, p1

    invoke-static {p1, v3}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->growArrayBy([II)[I

    move-result-object p1

    iput-object p1, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_quadBuffer:[I

    .line 1462
    :cond_4
    add-int/lit8 v2, p2, 0x1

    .end local p2    # "qlen":I
    .restart local v2    # "qlen":I
    aput p3, p1, p2

    .line 1463
    const/4 p3, 0x0

    .line 1464
    const/4 p5, 0x0

    .line 1466
    :goto_2
    const/16 v3, 0x800

    if-ge p4, v3, :cond_7

    .line 1467
    shl-int/lit8 v3, p3, 0x8

    shr-int/lit8 v4, p4, 0x6

    or-int/lit16 v4, v4, 0xc0

    or-int p3, v3, v4

    .line 1468
    add-int/lit8 p5, p5, 0x1

    move p2, v2

    .line 1486
    .end local v2    # "qlen":I
    .restart local p2    # "qlen":I
    :goto_3
    and-int/lit8 v3, p4, 0x3f

    or-int/lit16 p4, v3, 0x80

    move v2, p2

    .line 1490
    .end local p2    # "qlen":I
    .restart local v2    # "qlen":I
    :goto_4
    if-ge p5, v6, :cond_9

    .line 1491
    add-int/lit8 p5, p5, 0x1

    .line 1492
    shl-int/lit8 v3, p3, 0x8

    or-int p3, v3, p4

    move p2, v2

    .line 1501
    .end local v2    # "qlen":I
    .restart local p2    # "qlen":I
    :goto_5
    iget v3, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    iget v4, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I

    if-lt v3, v4, :cond_5

    .line 1502
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->loadMore()Z

    move-result v3

    if-nez v3, :cond_5

    .line 1503
    const-string v3, " in field name"

    invoke-virtual {p0, v3}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidEOF(Ljava/lang/String;)V

    .line 1506
    :cond_5
    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v4, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    aget-byte v3, v3, v4

    and-int/lit16 p4, v3, 0xff

    goto :goto_0

    .line 1449
    :cond_6
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_decodeEscaped()C

    move-result p4

    goto :goto_1

    .line 1471
    .end local p2    # "qlen":I
    .restart local v2    # "qlen":I
    :cond_7
    shl-int/lit8 v3, p3, 0x8

    shr-int/lit8 v4, p4, 0xc

    or-int/lit16 v4, v4, 0xe0

    or-int p3, v3, v4

    .line 1472
    add-int/lit8 p5, p5, 0x1

    .line 1474
    if-lt p5, v6, :cond_b

    .line 1475
    array-length v3, p1

    if-lt v2, v3, :cond_8

    .line 1476
    array-length v3, p1

    invoke-static {p1, v3}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->growArrayBy([II)[I

    move-result-object p1

    iput-object p1, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_quadBuffer:[I

    .line 1478
    :cond_8
    add-int/lit8 p2, v2, 0x1

    .end local v2    # "qlen":I
    .restart local p2    # "qlen":I
    aput p3, p1, v2

    .line 1479
    const/4 p3, 0x0

    .line 1480
    const/4 p5, 0x0

    .line 1482
    :goto_6
    shl-int/lit8 v3, p3, 0x8

    shr-int/lit8 v4, p4, 0x6

    and-int/lit8 v4, v4, 0x3f

    or-int/lit16 v4, v4, 0x80

    or-int p3, v3, v4

    .line 1483
    add-int/lit8 p5, p5, 0x1

    goto :goto_3

    .line 1494
    .end local p2    # "qlen":I
    .restart local v2    # "qlen":I
    :cond_9
    array-length v3, p1

    if-lt v2, v3, :cond_a

    .line 1495
    array-length v3, p1

    invoke-static {p1, v3}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->growArrayBy([II)[I

    move-result-object p1

    iput-object p1, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_quadBuffer:[I

    .line 1497
    :cond_a
    add-int/lit8 p2, v2, 0x1

    .end local v2    # "qlen":I
    .restart local p2    # "qlen":I
    aput p3, p1, v2

    .line 1498
    move p3, p4

    .line 1499
    const/4 p5, 0x1

    goto :goto_5

    .end local p2    # "qlen":I
    .restart local v2    # "qlen":I
    :cond_b
    move p2, v2

    .end local v2    # "qlen":I
    .restart local p2    # "qlen":I
    goto :goto_6

    :cond_c
    move v2, p2

    .end local p2    # "qlen":I
    .restart local v2    # "qlen":I
    goto :goto_2

    .end local v2    # "qlen":I
    .restart local p2    # "qlen":I
    :cond_d
    move v2, p2

    .end local p2    # "qlen":I
    .restart local v2    # "qlen":I
    goto :goto_4
.end method

.method protected parseLongFieldName(I)Lcom/flurry/org/codehaus/jackson/sym/Name;
    .locals 12
    .param p1, "q"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x2

    const/4 v5, 0x1

    const/4 v3, 0x0

    const/4 v10, 0x4

    const/16 v9, 0x22

    .line 1330
    sget-object v6, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->sInputCodesLatin1:[I

    .line 1331
    .local v6, "codes":[I
    const/4 v2, 0x2

    .line 1338
    .local v2, "qlen":I
    :goto_0
    iget v0, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I

    iget v1, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    sub-int/2addr v0, v1

    if-ge v0, v10, :cond_0

    .line 1339
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_quadBuffer:[I

    move-object v0, p0

    move v4, p1

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->parseEscapedFieldName([IIIII)Lcom/flurry/org/codehaus/jackson/sym/Name;

    move-result-object v0

    .line 1375
    :goto_1
    return-object v0

    .line 1343
    :cond_0
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v1, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v8, v1, 0x1

    iput v8, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    aget-byte v0, v0, v1

    and-int/lit16 v4, v0, 0xff

    .line 1344
    .local v4, "i":I
    aget v0, v6, v4

    if-eqz v0, :cond_2

    .line 1345
    if-ne v4, v9, :cond_1

    .line 1346
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_quadBuffer:[I

    invoke-direct {p0, v0, v2, p1, v5}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->findName([IIII)Lcom/flurry/org/codehaus/jackson/sym/Name;

    move-result-object v0

    goto :goto_1

    .line 1348
    :cond_1
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_quadBuffer:[I

    move-object v0, p0

    move v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->parseEscapedFieldName([IIIII)Lcom/flurry/org/codehaus/jackson/sym/Name;

    move-result-object v0

    goto :goto_1

    .line 1351
    :cond_2
    shl-int/lit8 v0, p1, 0x8

    or-int p1, v0, v4

    .line 1352
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v1, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v8, v1, 0x1

    iput v8, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    aget-byte v0, v0, v1

    and-int/lit16 v4, v0, 0xff

    .line 1353
    aget v0, v6, v4

    if-eqz v0, :cond_4

    .line 1354
    if-ne v4, v9, :cond_3

    .line 1355
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_quadBuffer:[I

    invoke-direct {p0, v0, v2, p1, v11}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->findName([IIII)Lcom/flurry/org/codehaus/jackson/sym/Name;

    move-result-object v0

    goto :goto_1

    .line 1357
    :cond_3
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_quadBuffer:[I

    move-object v0, p0

    move v3, p1

    move v5, v11

    invoke-virtual/range {v0 .. v5}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->parseEscapedFieldName([IIIII)Lcom/flurry/org/codehaus/jackson/sym/Name;

    move-result-object v0

    goto :goto_1

    .line 1360
    :cond_4
    shl-int/lit8 v0, p1, 0x8

    or-int p1, v0, v4

    .line 1361
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v1, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v8, v1, 0x1

    iput v8, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    aget-byte v0, v0, v1

    and-int/lit16 v4, v0, 0xff

    .line 1362
    aget v0, v6, v4

    if-eqz v0, :cond_6

    .line 1363
    if-ne v4, v9, :cond_5

    .line 1364
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_quadBuffer:[I

    const/4 v1, 0x3

    invoke-direct {p0, v0, v2, p1, v1}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->findName([IIII)Lcom/flurry/org/codehaus/jackson/sym/Name;

    move-result-object v0

    goto :goto_1

    .line 1366
    :cond_5
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_quadBuffer:[I

    const/4 v5, 0x3

    move-object v0, p0

    move v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->parseEscapedFieldName([IIIII)Lcom/flurry/org/codehaus/jackson/sym/Name;

    move-result-object v0

    goto :goto_1

    .line 1369
    :cond_6
    shl-int/lit8 v0, p1, 0x8

    or-int p1, v0, v4

    .line 1370
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v1, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v8, v1, 0x1

    iput v8, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    aget-byte v0, v0, v1

    and-int/lit16 v4, v0, 0xff

    .line 1371
    aget v0, v6, v4

    if-eqz v0, :cond_8

    .line 1372
    if-ne v4, v9, :cond_7

    .line 1373
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_quadBuffer:[I

    invoke-direct {p0, v0, v2, p1, v10}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->findName([IIII)Lcom/flurry/org/codehaus/jackson/sym/Name;

    move-result-object v0

    goto/16 :goto_1

    .line 1375
    :cond_7
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_quadBuffer:[I

    move-object v0, p0

    move v3, p1

    move v5, v10

    invoke-virtual/range {v0 .. v5}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->parseEscapedFieldName([IIIII)Lcom/flurry/org/codehaus/jackson/sym/Name;

    move-result-object v0

    goto/16 :goto_1

    .line 1379
    :cond_8
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_quadBuffer:[I

    array-length v0, v0

    if-lt v2, v0, :cond_9

    .line 1380
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_quadBuffer:[I

    invoke-static {v0, v2}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->growArrayBy([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_quadBuffer:[I

    .line 1382
    :cond_9
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_quadBuffer:[I

    add-int/lit8 v7, v2, 0x1

    .end local v2    # "qlen":I
    .local v7, "qlen":I
    aput p1, v0, v2

    .line 1383
    move p1, v4

    move v2, v7

    .line 1384
    .end local v7    # "qlen":I
    .restart local v2    # "qlen":I
    goto/16 :goto_0
.end method

.method protected final parseMediumFieldName(I[I)Lcom/flurry/org/codehaus/jackson/sym/Name;
    .locals 9
    .param p1, "q2"    # I
    .param p2, "codes"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/16 v4, 0x22

    .line 1290
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v2, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    aget-byte v1, v1, v2

    and-int/lit16 v0, v1, 0xff

    .line 1291
    .local v0, "i":I
    aget v1, p2, v0

    if-eqz v1, :cond_1

    .line 1292
    if-ne v0, v4, :cond_0

    .line 1293
    iget v1, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_quad1:I

    invoke-direct {p0, v1, p1, v5}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->findName(III)Lcom/flurry/org/codehaus/jackson/sym/Name;

    move-result-object v1

    .line 1323
    :goto_0
    return-object v1

    .line 1295
    :cond_0
    iget v1, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_quad1:I

    invoke-direct {p0, v1, p1, v0, v5}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->parseFieldName(IIII)Lcom/flurry/org/codehaus/jackson/sym/Name;

    move-result-object v1

    goto :goto_0

    .line 1297
    :cond_1
    shl-int/lit8 v1, p1, 0x8

    or-int p1, v1, v0

    .line 1298
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v2, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    aget-byte v1, v1, v2

    and-int/lit16 v0, v1, 0xff

    .line 1299
    aget v1, p2, v0

    if-eqz v1, :cond_3

    .line 1300
    if-ne v0, v4, :cond_2

    .line 1301
    iget v1, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_quad1:I

    invoke-direct {p0, v1, p1, v6}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->findName(III)Lcom/flurry/org/codehaus/jackson/sym/Name;

    move-result-object v1

    goto :goto_0

    .line 1303
    :cond_2
    iget v1, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_quad1:I

    invoke-direct {p0, v1, p1, v0, v6}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->parseFieldName(IIII)Lcom/flurry/org/codehaus/jackson/sym/Name;

    move-result-object v1

    goto :goto_0

    .line 1305
    :cond_3
    shl-int/lit8 v1, p1, 0x8

    or-int p1, v1, v0

    .line 1306
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v2, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    aget-byte v1, v1, v2

    and-int/lit16 v0, v1, 0xff

    .line 1307
    aget v1, p2, v0

    if-eqz v1, :cond_5

    .line 1308
    if-ne v0, v4, :cond_4

    .line 1309
    iget v1, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_quad1:I

    invoke-direct {p0, v1, p1, v7}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->findName(III)Lcom/flurry/org/codehaus/jackson/sym/Name;

    move-result-object v1

    goto :goto_0

    .line 1311
    :cond_4
    iget v1, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_quad1:I

    invoke-direct {p0, v1, p1, v0, v7}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->parseFieldName(IIII)Lcom/flurry/org/codehaus/jackson/sym/Name;

    move-result-object v1

    goto :goto_0

    .line 1313
    :cond_5
    shl-int/lit8 v1, p1, 0x8

    or-int p1, v1, v0

    .line 1314
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v2, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    aget-byte v1, v1, v2

    and-int/lit16 v0, v1, 0xff

    .line 1315
    aget v1, p2, v0

    if-eqz v1, :cond_7

    .line 1316
    if-ne v0, v4, :cond_6

    .line 1317
    iget v1, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_quad1:I

    invoke-direct {p0, v1, p1, v8}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->findName(III)Lcom/flurry/org/codehaus/jackson/sym/Name;

    move-result-object v1

    goto :goto_0

    .line 1319
    :cond_6
    iget v1, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_quad1:I

    invoke-direct {p0, v1, p1, v0, v8}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->parseFieldName(IIII)Lcom/flurry/org/codehaus/jackson/sym/Name;

    move-result-object v1

    goto :goto_0

    .line 1321
    :cond_7
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_quadBuffer:[I

    const/4 v2, 0x0

    iget v3, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_quad1:I

    aput v3, v1, v2

    .line 1322
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_quadBuffer:[I

    aput p1, v1, v5

    .line 1323
    invoke-virtual {p0, v0}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->parseLongFieldName(I)Lcom/flurry/org/codehaus/jackson/sym/Name;

    move-result-object v1

    goto/16 :goto_0
.end method

.method protected final parseNumberText(I)Lcom/flurry/org/codehaus/jackson/JsonToken;
    .locals 12
    .param p1, "c"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    const/16 v11, 0x39

    const/16 v8, 0x2d

    const/4 v0, 0x1

    const/16 v10, 0x30

    .line 997
    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_textBuffer:Lcom/flurry/org/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v3}, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->emptyAndGetCurrentSegment()[C

    move-result-object v1

    .line 998
    .local v1, "outBuf":[C
    const/4 v2, 0x0

    .line 999
    .local v2, "outPtr":I
    if-ne p1, v8, :cond_2

    move v4, v0

    .line 1002
    .local v4, "negative":Z
    :goto_0
    if-eqz v4, :cond_3

    .line 1003
    add-int/lit8 v7, v2, 0x1

    .end local v2    # "outPtr":I
    .local v7, "outPtr":I
    aput-char v8, v1, v2

    .line 1005
    iget v3, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    iget v8, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I

    if-lt v3, v8, :cond_0

    .line 1006
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->loadMoreGuaranteed()V

    .line 1008
    :cond_0
    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v8, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    aget-byte v3, v3, v8

    and-int/lit16 p1, v3, 0xff

    .line 1010
    if-lt p1, v10, :cond_1

    if-le p1, v11, :cond_4

    .line 1011
    :cond_1
    invoke-virtual {p0, p1, v0}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_handleInvalidNumberStart(IZ)Lcom/flurry/org/codehaus/jackson/JsonToken;

    move-result-object v0

    move v2, v7

    .line 1051
    .end local v7    # "outPtr":I
    .restart local v2    # "outPtr":I
    :goto_1
    return-object v0

    .line 999
    .end local v4    # "negative":Z
    :cond_2
    const/4 v4, 0x0

    goto :goto_0

    .restart local v4    # "negative":Z
    :cond_3
    move v7, v2

    .line 1016
    .end local v2    # "outPtr":I
    .restart local v7    # "outPtr":I
    :cond_4
    if-ne p1, v10, :cond_5

    .line 1017
    invoke-direct {p0}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_verifyNoLeadingZeroes()I

    move-result p1

    .line 1021
    :cond_5
    add-int/lit8 v2, v7, 0x1

    .end local v7    # "outPtr":I
    .restart local v2    # "outPtr":I
    int-to-char v0, p1

    aput-char v0, v1, v7

    .line 1022
    const/4 v5, 0x1

    .line 1025
    .local v5, "intLen":I
    iget v0, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    array-length v3, v1

    add-int v6, v0, v3

    .line 1026
    .local v6, "end":I
    iget v0, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I

    if-le v6, v0, :cond_6

    .line 1027
    iget v6, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I

    .line 1032
    :cond_6
    :goto_2
    iget v0, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    if-lt v0, v6, :cond_7

    .line 1034
    invoke-direct {p0, v1, v2, v4, v5}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_parserNumber2([CIZI)Lcom/flurry/org/codehaus/jackson/JsonToken;

    move-result-object v0

    goto :goto_1

    .line 1036
    :cond_7
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v3, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v8, v3, 0x1

    iput v8, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    aget-byte v0, v0, v3

    and-int/lit16 p1, v0, 0xff

    .line 1037
    if-lt p1, v10, :cond_8

    if-le p1, v11, :cond_a

    .line 1043
    :cond_8
    const/16 v0, 0x2e

    if-eq p1, v0, :cond_9

    const/16 v0, 0x65

    if-eq p1, v0, :cond_9

    const/16 v0, 0x45

    if-ne p1, v0, :cond_b

    :cond_9
    move-object v0, p0

    move v3, p1

    .line 1044
    invoke-direct/range {v0 .. v5}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_parseFloatText([CIIZI)Lcom/flurry/org/codehaus/jackson/JsonToken;

    move-result-object v0

    goto :goto_1

    .line 1040
    :cond_a
    add-int/lit8 v5, v5, 0x1

    .line 1041
    add-int/lit8 v7, v2, 0x1

    .end local v2    # "outPtr":I
    .restart local v7    # "outPtr":I
    int-to-char v0, p1

    aput-char v0, v1, v2

    move v2, v7

    .end local v7    # "outPtr":I
    .restart local v2    # "outPtr":I
    goto :goto_2

    .line 1047
    :cond_b
    iget v0, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    .line 1048
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_textBuffer:Lcom/flurry/org/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v0, v2}, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->setCurrentLength(I)V

    .line 1051
    invoke-virtual {p0, v4, v5}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->resetInt(ZI)Lcom/flurry/org/codehaus/jackson/JsonToken;

    move-result-object v0

    goto :goto_1
.end method

.method public releaseBuffered(Ljava/io/OutputStream;)I
    .locals 4
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 143
    iget v2, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I

    iget v3, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    sub-int v0, v2, v3

    .line 144
    .local v0, "count":I
    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    .line 145
    const/4 v0, 0x0

    .line 150
    .end local v0    # "count":I
    :goto_0
    return v0

    .line 148
    .restart local v0    # "count":I
    :cond_0
    iget v1, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    .line 149
    .local v1, "origPtr":I
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    invoke-virtual {p1, v2, v1, v0}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0
.end method

.method public setCodec(Lcom/flurry/org/codehaus/jackson/ObjectCodec;)V
    .locals 0
    .param p1, "c"    # Lcom/flurry/org/codehaus/jackson/ObjectCodec;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_objectCodec:Lcom/flurry/org/codehaus/jackson/ObjectCodec;

    .line 132
    return-void
.end method

.method protected slowParseFieldName()Lcom/flurry/org/codehaus/jackson/sym/Name;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1395
    iget v0, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    iget v1, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I

    if-lt v0, v1, :cond_0

    .line 1396
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->loadMore()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1397
    const-string v0, ": was expecting closing \'\"\' for name"

    invoke-virtual {p0, v0}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidEOF(Ljava/lang/String;)V

    .line 1400
    :cond_0
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v1, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    aget-byte v0, v0, v1

    and-int/lit16 v4, v0, 0xff

    .line 1401
    .local v4, "i":I
    const/16 v0, 0x22

    if-ne v4, v0, :cond_1

    .line 1402
    invoke-static {}, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->getEmptyName()Lcom/flurry/org/codehaus/jackson/sym/Name;

    move-result-object v0

    .line 1404
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->_quadBuffer:[I

    move-object v0, p0

    move v3, v2

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;->parseEscapedFieldName([IIIII)Lcom/flurry/org/codehaus/jackson/sym/Name;

    move-result-object v0

    goto :goto_0
.end method
