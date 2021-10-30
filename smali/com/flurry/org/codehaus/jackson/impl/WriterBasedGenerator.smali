.class public final Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;
.super Lcom/flurry/org/codehaus/jackson/impl/JsonGeneratorBase;
.source "WriterBasedGenerator.java"


# static fields
.field protected static final HEX_CHARS:[C

.field protected static final SHORT_WRITE:I = 0x20

.field protected static final sOutputEscapes:[I


# instance fields
.field protected _characterEscapes:Lcom/flurry/org/codehaus/jackson/io/CharacterEscapes;

.field protected _currentEscape:Lcom/flurry/org/codehaus/jackson/SerializableString;

.field protected _entityBuffer:[C

.field protected final _ioContext:Lcom/flurry/org/codehaus/jackson/io/IOContext;

.field protected _maximumNonEscapedChar:I

.field protected _outputBuffer:[C

.field protected _outputEnd:I

.field protected _outputEscapes:[I

.field protected _outputHead:I

.field protected _outputTail:I

.field protected final _writer:Ljava/io/Writer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    invoke-static {}, Lcom/flurry/org/codehaus/jackson/util/CharTypes;->copyHexChars()[C

    move-result-object v0

    sput-object v0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->HEX_CHARS:[C

    .line 26
    invoke-static {}, Lcom/flurry/org/codehaus/jackson/util/CharTypes;->get7BitOutputEscapes()[I

    move-result-object v0

    sput-object v0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->sOutputEscapes:[I

    return-void
.end method

.method public constructor <init>(Lcom/flurry/org/codehaus/jackson/io/IOContext;ILcom/flurry/org/codehaus/jackson/ObjectCodec;Ljava/io/Writer;)V
    .locals 2
    .param p1, "ctxt"    # Lcom/flurry/org/codehaus/jackson/io/IOContext;
    .param p2, "features"    # I
    .param p3, "codec"    # Lcom/flurry/org/codehaus/jackson/ObjectCodec;
    .param p4, "w"    # Ljava/io/Writer;

    .prologue
    const/4 v1, 0x0

    .line 124
    invoke-direct {p0, p2, p3}, Lcom/flurry/org/codehaus/jackson/impl/JsonGeneratorBase;-><init>(ILcom/flurry/org/codehaus/jackson/ObjectCodec;)V

    .line 50
    sget-object v0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->sOutputEscapes:[I

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputEscapes:[I

    .line 95
    iput v1, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputHead:I

    .line 101
    iput v1, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    .line 125
    iput-object p1, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_ioContext:Lcom/flurry/org/codehaus/jackson/io/IOContext;

    .line 126
    iput-object p4, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_writer:Ljava/io/Writer;

    .line 127
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/io/IOContext;->allocConcatBuffer()[C

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    .line 128
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    array-length v0, v0

    iput v0, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    .line 130
    sget-object v0, Lcom/flurry/org/codehaus/jackson/JsonGenerator$Feature;->ESCAPE_NON_ASCII:Lcom/flurry/org/codehaus/jackson/JsonGenerator$Feature;

    invoke-virtual {p0, v0}, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->isEnabled(Lcom/flurry/org/codehaus/jackson/JsonGenerator$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    const/16 v0, 0x7f

    invoke-virtual {p0, v0}, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->setHighestNonEscapedChar(I)Lcom/flurry/org/codehaus/jackson/JsonGenerator;

    .line 133
    :cond_0
    return-void
.end method

.method private _allocateEntityBuffer()[C
    .locals 5

    .prologue
    const/16 v4, 0x75

    const/16 v3, 0x30

    const/16 v2, 0x5c

    .line 1791
    const/16 v1, 0xe

    new-array v0, v1, [C

    .line 1793
    .local v0, "buf":[C
    const/4 v1, 0x0

    aput-char v2, v0, v1

    .line 1795
    const/4 v1, 0x2

    aput-char v2, v0, v1

    .line 1796
    const/4 v1, 0x3

    aput-char v4, v0, v1

    .line 1797
    const/4 v1, 0x4

    aput-char v3, v0, v1

    .line 1798
    const/4 v1, 0x5

    aput-char v3, v0, v1

    .line 1800
    const/16 v1, 0x8

    aput-char v2, v0, v1

    .line 1801
    const/16 v1, 0x9

    aput-char v4, v0, v1

    .line 1802
    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_entityBuffer:[C

    .line 1803
    return-object v0
.end method

.method private final _appendCharacterEscape(CI)V
    .locals 10
    .param p1, "ch"    # C
    .param p2, "escCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x5c

    const/16 v8, 0x30

    .line 1739
    if-ltz p2, :cond_1

    .line 1740
    iget v6, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v6, v6, 0x2

    iget v7, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    if-le v6, v7, :cond_0

    .line 1741
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 1743
    :cond_0
    iget-object v6, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v7, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    aput-char v9, v6, v7

    .line 1744
    iget-object v6, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v7, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    int-to-char v8, p2

    aput-char v8, v6, v7

    .line 1787
    :goto_0
    return-void

    .line 1747
    :cond_1
    const/4 v6, -0x2

    if-eq p2, v6, :cond_4

    .line 1748
    iget v6, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v6, v6, 0x2

    iget v7, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    if-le v6, v7, :cond_2

    .line 1749
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 1751
    :cond_2
    iget v4, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    .line 1752
    .local v4, "ptr":I
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    .line 1753
    .local v0, "buf":[C
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "ptr":I
    .local v5, "ptr":I
    aput-char v9, v0, v4

    .line 1754
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "ptr":I
    .restart local v4    # "ptr":I
    const/16 v6, 0x75

    aput-char v6, v0, v5

    .line 1756
    const/16 v6, 0xff

    if-le p1, v6, :cond_3

    .line 1757
    shr-int/lit8 v6, p1, 0x8

    and-int/lit16 v2, v6, 0xff

    .line 1758
    .local v2, "hi":I
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "ptr":I
    .restart local v5    # "ptr":I
    sget-object v6, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->HEX_CHARS:[C

    shr-int/lit8 v7, v2, 0x4

    aget-char v6, v6, v7

    aput-char v6, v0, v4

    .line 1759
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "ptr":I
    .restart local v4    # "ptr":I
    sget-object v6, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->HEX_CHARS:[C

    and-int/lit8 v7, v2, 0xf

    aget-char v6, v6, v7

    aput-char v6, v0, v5

    .line 1760
    and-int/lit16 v6, p1, 0xff

    int-to-char p1, v6

    .line 1765
    .end local v2    # "hi":I
    :goto_1
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "ptr":I
    .restart local v5    # "ptr":I
    sget-object v6, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->HEX_CHARS:[C

    shr-int/lit8 v7, p1, 0x4

    aget-char v6, v6, v7

    aput-char v6, v0, v4

    .line 1766
    sget-object v6, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->HEX_CHARS:[C

    and-int/lit8 v7, p1, 0xf

    aget-char v6, v6, v7

    aput-char v6, v0, v5

    .line 1767
    iput v5, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    goto :goto_0

    .line 1762
    .end local v5    # "ptr":I
    .restart local v4    # "ptr":I
    :cond_3
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "ptr":I
    .restart local v5    # "ptr":I
    aput-char v8, v0, v4

    .line 1763
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "ptr":I
    .restart local v4    # "ptr":I
    aput-char v8, v0, v5

    goto :goto_1

    .line 1771
    .end local v0    # "buf":[C
    .end local v4    # "ptr":I
    :cond_4
    iget-object v6, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_currentEscape:Lcom/flurry/org/codehaus/jackson/SerializableString;

    if-nez v6, :cond_5

    .line 1772
    iget-object v6, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_characterEscapes:Lcom/flurry/org/codehaus/jackson/io/CharacterEscapes;

    invoke-virtual {v6, p1}, Lcom/flurry/org/codehaus/jackson/io/CharacterEscapes;->getEscapeSequence(I)Lcom/flurry/org/codehaus/jackson/SerializableString;

    move-result-object v6

    invoke-interface {v6}, Lcom/flurry/org/codehaus/jackson/SerializableString;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 1777
    .local v1, "escape":Ljava/lang/String;
    :goto_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    .line 1778
    .local v3, "len":I
    iget v6, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/2addr v6, v3

    iget v7, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    if-le v6, v7, :cond_6

    .line 1779
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 1780
    iget v6, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    if-le v3, v6, :cond_6

    .line 1781
    iget-object v6, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_writer:Ljava/io/Writer;

    invoke-virtual {v6, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 1774
    .end local v1    # "escape":Ljava/lang/String;
    .end local v3    # "len":I
    :cond_5
    iget-object v6, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_currentEscape:Lcom/flurry/org/codehaus/jackson/SerializableString;

    invoke-interface {v6}, Lcom/flurry/org/codehaus/jackson/SerializableString;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 1775
    .restart local v1    # "escape":Ljava/lang/String;
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_currentEscape:Lcom/flurry/org/codehaus/jackson/SerializableString;

    goto :goto_2

    .line 1785
    .restart local v3    # "len":I
    :cond_6
    const/4 v6, 0x0

    iget-object v7, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v8, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    invoke-virtual {v1, v6, v3, v7, v8}, Ljava/lang/String;->getChars(II[CI)V

    .line 1786
    iget v6, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/2addr v6, v3

    iput v6, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    goto/16 :goto_0
.end method

.method private final _prependOrWriteCharacterEscape([CIICI)I
    .locals 9
    .param p1, "buffer"    # [C
    .param p2, "ptr"    # I
    .param p3, "end"    # I
    .param p4, "ch"    # C
    .param p5, "escCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 1659
    if-ltz p5, :cond_2

    .line 1660
    const/4 v6, 0x1

    if-le p2, v6, :cond_0

    if-ge p2, p3, :cond_0

    .line 1661
    add-int/lit8 p2, p2, -0x2

    .line 1662
    const/16 v6, 0x5c

    aput-char v6, p1, p2

    .line 1663
    add-int/lit8 v6, p2, 0x1

    int-to-char v7, p5

    aput-char v7, p1, v6

    :goto_0
    move v5, p2

    .line 1729
    .end local p2    # "ptr":I
    .local v5, "ptr":I
    :goto_1
    return v5

    .line 1665
    .end local v5    # "ptr":I
    .restart local p2    # "ptr":I
    :cond_0
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_entityBuffer:[C

    .line 1666
    .local v0, "ent":[C
    if-nez v0, :cond_1

    .line 1667
    invoke-direct {p0}, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_allocateEntityBuffer()[C

    move-result-object v0

    .line 1669
    :cond_1
    const/4 v6, 0x1

    int-to-char v7, p5

    aput-char v7, v0, v6

    .line 1670
    iget-object v6, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_writer:Ljava/io/Writer;

    const/4 v7, 0x0

    const/4 v8, 0x2

    invoke-virtual {v6, v0, v7, v8}, Ljava/io/Writer;->write([CII)V

    goto :goto_0

    .line 1674
    .end local v0    # "ent":[C
    :cond_2
    const/4 v6, -0x2

    if-eq p5, v6, :cond_7

    .line 1675
    const/4 v6, 0x5

    if-le p2, v6, :cond_4

    if-ge p2, p3, :cond_4

    .line 1676
    add-int/lit8 p2, p2, -0x6

    .line 1677
    add-int/lit8 v5, p2, 0x1

    .end local p2    # "ptr":I
    .restart local v5    # "ptr":I
    const/16 v6, 0x5c

    aput-char v6, p1, p2

    .line 1678
    add-int/lit8 p2, v5, 0x1

    .end local v5    # "ptr":I
    .restart local p2    # "ptr":I
    const/16 v6, 0x75

    aput-char v6, p1, v5

    .line 1680
    const/16 v6, 0xff

    if-le p4, v6, :cond_3

    .line 1681
    shr-int/lit8 v6, p4, 0x8

    and-int/lit16 v2, v6, 0xff

    .line 1682
    .local v2, "hi":I
    add-int/lit8 v5, p2, 0x1

    .end local p2    # "ptr":I
    .restart local v5    # "ptr":I
    sget-object v6, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->HEX_CHARS:[C

    shr-int/lit8 v7, v2, 0x4

    aget-char v6, v6, v7

    aput-char v6, p1, p2

    .line 1683
    add-int/lit8 p2, v5, 0x1

    .end local v5    # "ptr":I
    .restart local p2    # "ptr":I
    sget-object v6, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->HEX_CHARS:[C

    and-int/lit8 v7, v2, 0xf

    aget-char v6, v6, v7

    aput-char v6, p1, v5

    .line 1684
    and-int/lit16 v6, p4, 0xff

    int-to-char p4, v6

    .line 1689
    .end local v2    # "hi":I
    :goto_2
    add-int/lit8 v5, p2, 0x1

    .end local p2    # "ptr":I
    .restart local v5    # "ptr":I
    sget-object v6, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->HEX_CHARS:[C

    shr-int/lit8 v7, p4, 0x4

    aget-char v6, v6, v7

    aput-char v6, p1, p2

    .line 1690
    sget-object v6, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->HEX_CHARS:[C

    and-int/lit8 v7, p4, 0xf

    aget-char v6, v6, v7

    aput-char v6, p1, v5

    .line 1691
    add-int/lit8 p2, v5, -0x5

    .end local v5    # "ptr":I
    .restart local p2    # "ptr":I
    :goto_3
    move v5, p2

    .line 1713
    .end local p2    # "ptr":I
    .restart local v5    # "ptr":I
    goto :goto_1

    .line 1686
    .end local v5    # "ptr":I
    .restart local p2    # "ptr":I
    :cond_3
    add-int/lit8 v5, p2, 0x1

    .end local p2    # "ptr":I
    .restart local v5    # "ptr":I
    const/16 v6, 0x30

    aput-char v6, p1, p2

    .line 1687
    add-int/lit8 p2, v5, 0x1

    .end local v5    # "ptr":I
    .restart local p2    # "ptr":I
    const/16 v6, 0x30

    aput-char v6, p1, v5

    goto :goto_2

    .line 1694
    :cond_4
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_entityBuffer:[C

    .line 1695
    .restart local v0    # "ent":[C
    if-nez v0, :cond_5

    .line 1696
    invoke-direct {p0}, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_allocateEntityBuffer()[C

    move-result-object v0

    .line 1698
    :cond_5
    iget v6, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    iput v6, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputHead:I

    .line 1699
    const/16 v6, 0xff

    if-le p4, v6, :cond_6

    .line 1700
    shr-int/lit8 v6, p4, 0x8

    and-int/lit16 v2, v6, 0xff

    .line 1701
    .restart local v2    # "hi":I
    and-int/lit16 v4, p4, 0xff

    .line 1702
    .local v4, "lo":I
    const/16 v6, 0xa

    sget-object v7, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->HEX_CHARS:[C

    shr-int/lit8 v8, v2, 0x4

    aget-char v7, v7, v8

    aput-char v7, v0, v6

    .line 1703
    const/16 v6, 0xb

    sget-object v7, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->HEX_CHARS:[C

    and-int/lit8 v8, v2, 0xf

    aget-char v7, v7, v8

    aput-char v7, v0, v6

    .line 1704
    const/16 v6, 0xc

    sget-object v7, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->HEX_CHARS:[C

    shr-int/lit8 v8, v4, 0x4

    aget-char v7, v7, v8

    aput-char v7, v0, v6

    .line 1705
    const/16 v6, 0xd

    sget-object v7, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->HEX_CHARS:[C

    and-int/lit8 v8, v4, 0xf

    aget-char v7, v7, v8

    aput-char v7, v0, v6

    .line 1706
    iget-object v6, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_writer:Ljava/io/Writer;

    const/16 v7, 0x8

    const/4 v8, 0x6

    invoke-virtual {v6, v0, v7, v8}, Ljava/io/Writer;->write([CII)V

    goto :goto_3

    .line 1708
    .end local v2    # "hi":I
    .end local v4    # "lo":I
    :cond_6
    const/4 v6, 0x6

    sget-object v7, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->HEX_CHARS:[C

    shr-int/lit8 v8, p4, 0x4

    aget-char v7, v7, v8

    aput-char v7, v0, v6

    .line 1709
    const/4 v6, 0x7

    sget-object v7, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->HEX_CHARS:[C

    and-int/lit8 v8, p4, 0xf

    aget-char v7, v7, v8

    aput-char v7, v0, v6

    .line 1710
    iget-object v6, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_writer:Ljava/io/Writer;

    const/4 v7, 0x2

    const/4 v8, 0x6

    invoke-virtual {v6, v0, v7, v8}, Ljava/io/Writer;->write([CII)V

    goto :goto_3

    .line 1716
    .end local v0    # "ent":[C
    :cond_7
    iget-object v6, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_currentEscape:Lcom/flurry/org/codehaus/jackson/SerializableString;

    if-nez v6, :cond_8

    .line 1717
    iget-object v6, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_characterEscapes:Lcom/flurry/org/codehaus/jackson/io/CharacterEscapes;

    invoke-virtual {v6, p4}, Lcom/flurry/org/codehaus/jackson/io/CharacterEscapes;->getEscapeSequence(I)Lcom/flurry/org/codehaus/jackson/SerializableString;

    move-result-object v6

    invoke-interface {v6}, Lcom/flurry/org/codehaus/jackson/SerializableString;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 1722
    .local v1, "escape":Ljava/lang/String;
    :goto_4
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    .line 1723
    .local v3, "len":I
    if-lt p2, v3, :cond_9

    if-ge p2, p3, :cond_9

    .line 1724
    sub-int/2addr p2, v3

    .line 1725
    const/4 v6, 0x0

    invoke-virtual {v1, v6, v3, p1, p2}, Ljava/lang/String;->getChars(II[CI)V

    :goto_5
    move v5, p2

    .line 1729
    .end local p2    # "ptr":I
    .restart local v5    # "ptr":I
    goto/16 :goto_1

    .line 1719
    .end local v1    # "escape":Ljava/lang/String;
    .end local v3    # "len":I
    .end local v5    # "ptr":I
    .restart local p2    # "ptr":I
    :cond_8
    iget-object v6, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_currentEscape:Lcom/flurry/org/codehaus/jackson/SerializableString;

    invoke-interface {v6}, Lcom/flurry/org/codehaus/jackson/SerializableString;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 1720
    .restart local v1    # "escape":Ljava/lang/String;
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_currentEscape:Lcom/flurry/org/codehaus/jackson/SerializableString;

    goto :goto_4

    .line 1727
    .restart local v3    # "len":I
    :cond_9
    iget-object v6, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_writer:Ljava/io/Writer;

    invoke-virtual {v6, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_5
.end method

.method private final _prependOrWriteCharacterEscape(CI)V
    .locals 13
    .param p1, "ch"    # C
    .param p2, "escCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    const/16 v12, 0x5c

    const/16 v8, 0x30

    const/4 v9, 0x0

    const/4 v11, 0x2

    const/4 v10, 0x6

    .line 1568
    if-ltz p2, :cond_2

    .line 1569
    iget v7, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    if-lt v7, v11, :cond_0

    .line 1570
    iget v7, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v5, v7, -0x2

    .line 1571
    .local v5, "ptr":I
    iput v5, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputHead:I

    .line 1572
    iget-object v7, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "ptr":I
    .local v6, "ptr":I
    aput-char v12, v7, v5

    .line 1573
    iget-object v7, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    int-to-char v8, p2

    aput-char v8, v7, v6

    .line 1646
    .end local v6    # "ptr":I
    :goto_0
    return-void

    .line 1577
    :cond_0
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_entityBuffer:[C

    .line 1578
    .local v0, "buf":[C
    if-nez v0, :cond_1

    .line 1579
    invoke-direct {p0}, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_allocateEntityBuffer()[C

    move-result-object v0

    .line 1581
    :cond_1
    iget v7, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    iput v7, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputHead:I

    .line 1582
    const/4 v7, 0x1

    int-to-char v8, p2

    aput-char v8, v0, v7

    .line 1583
    iget-object v7, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_writer:Ljava/io/Writer;

    invoke-virtual {v7, v0, v9, v11}, Ljava/io/Writer;->write([CII)V

    goto :goto_0

    .line 1586
    .end local v0    # "buf":[C
    :cond_2
    const/4 v7, -0x2

    if-eq p2, v7, :cond_7

    .line 1587
    iget v7, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    if-lt v7, v10, :cond_4

    .line 1588
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    .line 1589
    .restart local v0    # "buf":[C
    iget v7, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v5, v7, -0x6

    .line 1590
    .restart local v5    # "ptr":I
    iput v5, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputHead:I

    .line 1591
    aput-char v12, v0, v5

    .line 1592
    add-int/lit8 v5, v5, 0x1

    const/16 v7, 0x75

    aput-char v7, v0, v5

    .line 1594
    const/16 v7, 0xff

    if-le p1, v7, :cond_3

    .line 1595
    shr-int/lit8 v7, p1, 0x8

    and-int/lit16 v2, v7, 0xff

    .line 1596
    .local v2, "hi":I
    add-int/lit8 v5, v5, 0x1

    sget-object v7, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->HEX_CHARS:[C

    shr-int/lit8 v8, v2, 0x4

    aget-char v7, v7, v8

    aput-char v7, v0, v5

    .line 1597
    add-int/lit8 v5, v5, 0x1

    sget-object v7, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->HEX_CHARS:[C

    and-int/lit8 v8, v2, 0xf

    aget-char v7, v7, v8

    aput-char v7, v0, v5

    .line 1598
    and-int/lit16 v7, p1, 0xff

    int-to-char p1, v7

    .line 1603
    .end local v2    # "hi":I
    :goto_1
    add-int/lit8 v5, v5, 0x1

    sget-object v7, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->HEX_CHARS:[C

    shr-int/lit8 v8, p1, 0x4

    aget-char v7, v7, v8

    aput-char v7, v0, v5

    .line 1604
    add-int/lit8 v5, v5, 0x1

    sget-object v7, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->HEX_CHARS:[C

    and-int/lit8 v8, p1, 0xf

    aget-char v7, v7, v8

    aput-char v7, v0, v5

    goto :goto_0

    .line 1600
    :cond_3
    add-int/lit8 v5, v5, 0x1

    aput-char v8, v0, v5

    .line 1601
    add-int/lit8 v5, v5, 0x1

    aput-char v8, v0, v5

    goto :goto_1

    .line 1608
    .end local v0    # "buf":[C
    .end local v5    # "ptr":I
    :cond_4
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_entityBuffer:[C

    .line 1609
    .restart local v0    # "buf":[C
    if-nez v0, :cond_5

    .line 1610
    invoke-direct {p0}, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_allocateEntityBuffer()[C

    move-result-object v0

    .line 1612
    :cond_5
    iget v7, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    iput v7, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputHead:I

    .line 1613
    const/16 v7, 0xff

    if-le p1, v7, :cond_6

    .line 1614
    shr-int/lit8 v7, p1, 0x8

    and-int/lit16 v2, v7, 0xff

    .line 1615
    .restart local v2    # "hi":I
    and-int/lit16 v4, p1, 0xff

    .line 1616
    .local v4, "lo":I
    const/16 v7, 0xa

    sget-object v8, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->HEX_CHARS:[C

    shr-int/lit8 v9, v2, 0x4

    aget-char v8, v8, v9

    aput-char v8, v0, v7

    .line 1617
    const/16 v7, 0xb

    sget-object v8, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->HEX_CHARS:[C

    and-int/lit8 v9, v2, 0xf

    aget-char v8, v8, v9

    aput-char v8, v0, v7

    .line 1618
    const/16 v7, 0xc

    sget-object v8, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->HEX_CHARS:[C

    shr-int/lit8 v9, v4, 0x4

    aget-char v8, v8, v9

    aput-char v8, v0, v7

    .line 1619
    const/16 v7, 0xd

    sget-object v8, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->HEX_CHARS:[C

    and-int/lit8 v9, v4, 0xf

    aget-char v8, v8, v9

    aput-char v8, v0, v7

    .line 1620
    iget-object v7, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_writer:Ljava/io/Writer;

    const/16 v8, 0x8

    invoke-virtual {v7, v0, v8, v10}, Ljava/io/Writer;->write([CII)V

    goto/16 :goto_0

    .line 1622
    .end local v2    # "hi":I
    .end local v4    # "lo":I
    :cond_6
    sget-object v7, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->HEX_CHARS:[C

    shr-int/lit8 v8, p1, 0x4

    aget-char v7, v7, v8

    aput-char v7, v0, v10

    .line 1623
    const/4 v7, 0x7

    sget-object v8, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->HEX_CHARS:[C

    and-int/lit8 v9, p1, 0xf

    aget-char v8, v8, v9

    aput-char v8, v0, v7

    .line 1624
    iget-object v7, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_writer:Ljava/io/Writer;

    invoke-virtual {v7, v0, v11, v10}, Ljava/io/Writer;->write([CII)V

    goto/16 :goto_0

    .line 1630
    .end local v0    # "buf":[C
    :cond_7
    iget-object v7, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_currentEscape:Lcom/flurry/org/codehaus/jackson/SerializableString;

    if-nez v7, :cond_8

    .line 1631
    iget-object v7, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_characterEscapes:Lcom/flurry/org/codehaus/jackson/io/CharacterEscapes;

    invoke-virtual {v7, p1}, Lcom/flurry/org/codehaus/jackson/io/CharacterEscapes;->getEscapeSequence(I)Lcom/flurry/org/codehaus/jackson/SerializableString;

    move-result-object v7

    invoke-interface {v7}, Lcom/flurry/org/codehaus/jackson/SerializableString;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 1636
    .local v1, "escape":Ljava/lang/String;
    :goto_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    .line 1637
    .local v3, "len":I
    iget v7, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    if-lt v7, v3, :cond_9

    .line 1638
    iget v7, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    sub-int v5, v7, v3

    .line 1639
    .restart local v5    # "ptr":I
    iput v5, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputHead:I

    .line 1640
    iget-object v7, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    invoke-virtual {v1, v9, v3, v7, v5}, Ljava/lang/String;->getChars(II[CI)V

    goto/16 :goto_0

    .line 1633
    .end local v1    # "escape":Ljava/lang/String;
    .end local v3    # "len":I
    .end local v5    # "ptr":I
    :cond_8
    iget-object v7, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_currentEscape:Lcom/flurry/org/codehaus/jackson/SerializableString;

    invoke-interface {v7}, Lcom/flurry/org/codehaus/jackson/SerializableString;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 1634
    .restart local v1    # "escape":Ljava/lang/String;
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_currentEscape:Lcom/flurry/org/codehaus/jackson/SerializableString;

    goto :goto_2

    .line 1644
    .restart local v3    # "len":I
    :cond_9
    iget v7, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    iput v7, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputHead:I

    .line 1645
    iget-object v7, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_writer:Ljava/io/Writer;

    invoke-virtual {v7, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private _writeLongString(Ljava/lang/String;)V
    .locals 7
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 1046
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 1049
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 1050
    .local v3, "textLen":I
    const/4 v1, 0x0

    .line 1052
    .local v1, "offset":I
    :cond_0
    iget v0, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    .line 1053
    .local v0, "max":I
    add-int v4, v1, v0

    if-le v4, v3, :cond_1

    sub-int v2, v3, v1

    .line 1055
    .local v2, "segmentLen":I
    :goto_0
    add-int v4, v1, v2

    iget-object v5, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    const/4 v6, 0x0

    invoke-virtual {p1, v1, v4, v5, v6}, Ljava/lang/String;->getChars(II[CI)V

    .line 1056
    iget-object v4, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_characterEscapes:Lcom/flurry/org/codehaus/jackson/io/CharacterEscapes;

    if-eqz v4, :cond_2

    .line 1057
    invoke-direct {p0, v2}, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_writeSegmentCustom(I)V

    .line 1063
    :goto_1
    add-int/2addr v1, v2

    .line 1064
    if-lt v1, v3, :cond_0

    .line 1065
    return-void

    .end local v2    # "segmentLen":I
    :cond_1
    move v2, v0

    .line 1053
    goto :goto_0

    .line 1058
    .restart local v2    # "segmentLen":I
    :cond_2
    iget v4, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_maximumNonEscapedChar:I

    if-eqz v4, :cond_3

    .line 1059
    iget v4, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_maximumNonEscapedChar:I

    invoke-direct {p0, v2, v4}, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_writeSegmentASCII(II)V

    goto :goto_1

    .line 1061
    :cond_3
    invoke-direct {p0, v2}, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_writeSegment(I)V

    goto :goto_1
.end method

.method private final _writeNull()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x6c

    .line 1542
    iget v2, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v2, v2, 0x4

    iget v3, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    if-lt v2, v3, :cond_0

    .line 1543
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 1545
    :cond_0
    iget v1, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    .line 1546
    .local v1, "ptr":I
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    .line 1547
    .local v0, "buf":[C
    const/16 v2, 0x6e

    aput-char v2, v0, v1

    .line 1548
    add-int/lit8 v1, v1, 0x1

    const/16 v2, 0x75

    aput-char v2, v0, v1

    .line 1549
    add-int/lit8 v1, v1, 0x1

    aput-char v4, v0, v1

    .line 1550
    add-int/lit8 v1, v1, 0x1

    aput-char v4, v0, v1

    .line 1551
    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    .line 1552
    return-void
.end method

.method private final _writeQuotedInt(I)V
    .locals 4
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x22

    .line 669
    iget v0, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v0, v0, 0xd

    iget v1, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_0

    .line 670
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 672
    :cond_0
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v1, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    aput-char v3, v0, v1

    .line 673
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v1, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    invoke-static {p1, v0, v1}, Lcom/flurry/org/codehaus/jackson/io/NumberOutput;->outputInt(I[CI)I

    move-result v0

    iput v0, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    .line 674
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v1, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    aput-char v3, v0, v1

    .line 675
    return-void
.end method

.method private final _writeQuotedLong(J)V
    .locals 5
    .param p1, "l"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x22

    .line 694
    iget v0, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v0, v0, 0x17

    iget v1, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_0

    .line 695
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 697
    :cond_0
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v1, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    aput-char v3, v0, v1

    .line 698
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v1, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    invoke-static {p1, p2, v0, v1}, Lcom/flurry/org/codehaus/jackson/io/NumberOutput;->outputLong(J[CI)I

    move-result v0

    iput v0, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    .line 699
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v1, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    aput-char v3, v0, v1

    .line 700
    return-void
.end method

.method private final _writeQuotedRaw(Ljava/lang/Object;)V
    .locals 4
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x22

    .line 780
    iget v0, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    iget v1, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_0

    .line 781
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 783
    :cond_0
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v1, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    aput-char v3, v0, v1

    .line 784
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->writeRaw(Ljava/lang/String;)V

    .line 785
    iget v0, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    iget v1, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_1

    .line 786
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 788
    :cond_1
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v1, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    aput-char v3, v0, v1

    .line 789
    return-void
.end method

.method private final _writeSegment(I)V
    .locals 10
    .param p1, "end"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 1079
    iget-object v6, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputEscapes:[I

    .line 1080
    .local v6, "escCodes":[I
    array-length v7, v6

    .line 1082
    .local v7, "escLen":I
    const/4 v2, 0x0

    .line 1083
    .local v2, "ptr":I
    move v9, v2

    .line 1086
    .local v9, "start":I
    :goto_0
    if-ge v2, p1, :cond_1

    .line 1090
    :cond_0
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    aget-char v4, v0, v2

    .line 1091
    .local v4, "c":C
    if-ge v4, v7, :cond_2

    aget v0, v6, v4

    if-eqz v0, :cond_2

    .line 1103
    :goto_1
    sub-int v8, v2, v9

    .line 1104
    .local v8, "flushLen":I
    if-lez v8, :cond_3

    .line 1105
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_writer:Ljava/io/Writer;

    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    invoke-virtual {v0, v1, v9, v8}, Ljava/io/Writer;->write([CII)V

    .line 1106
    if-lt v2, p1, :cond_3

    .line 1114
    .end local v4    # "c":C
    .end local v8    # "flushLen":I
    :cond_1
    return-void

    .line 1094
    .restart local v4    # "c":C
    :cond_2
    add-int/lit8 v2, v2, 0x1

    if-lt v2, p1, :cond_0

    goto :goto_1

    .line 1110
    .restart local v8    # "flushLen":I
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 1112
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    aget v5, v6, v4

    move-object v0, p0

    move v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_prependOrWriteCharacterEscape([CIICI)I

    move-result v9

    .line 1113
    goto :goto_0
.end method

.method private final _writeSegmentASCII(II)V
    .locals 10
    .param p1, "end"    # I
    .param p2, "maxNonEscaped"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 1229
    iget-object v6, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputEscapes:[I

    .line 1230
    .local v6, "escCodes":[I
    array-length v0, v6

    iget v1, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_maximumNonEscapedChar:I

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 1232
    .local v7, "escLimit":I
    const/4 v2, 0x0

    .line 1233
    .local v2, "ptr":I
    const/4 v5, 0x0

    .line 1234
    .local v5, "escCode":I
    move v9, v2

    .line 1237
    .local v9, "start":I
    :goto_0
    if-ge v2, p1, :cond_1

    .line 1241
    :cond_0
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    aget-char v4, v0, v2

    .line 1242
    .local v4, "c":C
    if-ge v4, v7, :cond_2

    .line 1243
    aget v5, v6, v4

    .line 1244
    if-eqz v5, :cond_3

    .line 1255
    :goto_1
    sub-int v8, v2, v9

    .line 1256
    .local v8, "flushLen":I
    if-lez v8, :cond_4

    .line 1257
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_writer:Ljava/io/Writer;

    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    invoke-virtual {v0, v1, v9, v8}, Ljava/io/Writer;->write([CII)V

    .line 1258
    if-lt v2, p1, :cond_4

    .line 1265
    .end local v4    # "c":C
    .end local v8    # "flushLen":I
    :cond_1
    return-void

    .line 1247
    .restart local v4    # "c":C
    :cond_2
    if-le v4, p2, :cond_3

    .line 1248
    const/4 v5, -0x1

    .line 1249
    goto :goto_1

    .line 1251
    :cond_3
    add-int/lit8 v2, v2, 0x1

    if-lt v2, p1, :cond_0

    goto :goto_1

    .line 1262
    .restart local v8    # "flushLen":I
    :cond_4
    add-int/lit8 v2, v2, 0x1

    .line 1263
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    move-object v0, p0

    move v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_prependOrWriteCharacterEscape([CIICI)I

    move-result v9

    .line 1264
    goto :goto_0
.end method

.method private final _writeSegmentCustom(I)V
    .locals 12
    .param p1, "end"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 1381
    iget-object v7, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputEscapes:[I

    .line 1382
    .local v7, "escCodes":[I
    iget v0, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_maximumNonEscapedChar:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_2

    const v10, 0xffff

    .line 1383
    .local v10, "maxNonEscaped":I
    :goto_0
    array-length v0, v7

    iget v1, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_maximumNonEscapedChar:I

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 1384
    .local v8, "escLimit":I
    iget-object v6, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_characterEscapes:Lcom/flurry/org/codehaus/jackson/io/CharacterEscapes;

    .line 1386
    .local v6, "customEscapes":Lcom/flurry/org/codehaus/jackson/io/CharacterEscapes;
    const/4 v2, 0x0

    .line 1387
    .local v2, "ptr":I
    const/4 v5, 0x0

    .line 1388
    .local v5, "escCode":I
    move v11, v2

    .line 1391
    .local v11, "start":I
    :goto_1
    if-ge v2, p1, :cond_1

    .line 1395
    :cond_0
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    aget-char v4, v0, v2

    .line 1396
    .local v4, "c":C
    if-ge v4, v8, :cond_3

    .line 1397
    aget v5, v7, v4

    .line 1398
    if-eqz v5, :cond_5

    .line 1414
    :goto_2
    sub-int v9, v2, v11

    .line 1415
    .local v9, "flushLen":I
    if-lez v9, :cond_6

    .line 1416
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_writer:Ljava/io/Writer;

    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    invoke-virtual {v0, v1, v11, v9}, Ljava/io/Writer;->write([CII)V

    .line 1417
    if-lt v2, p1, :cond_6

    .line 1424
    .end local v4    # "c":C
    .end local v9    # "flushLen":I
    :cond_1
    return-void

    .line 1382
    .end local v2    # "ptr":I
    .end local v5    # "escCode":I
    .end local v6    # "customEscapes":Lcom/flurry/org/codehaus/jackson/io/CharacterEscapes;
    .end local v8    # "escLimit":I
    .end local v10    # "maxNonEscaped":I
    .end local v11    # "start":I
    :cond_2
    iget v10, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_maximumNonEscapedChar:I

    goto :goto_0

    .line 1401
    .restart local v2    # "ptr":I
    .restart local v4    # "c":C
    .restart local v5    # "escCode":I
    .restart local v6    # "customEscapes":Lcom/flurry/org/codehaus/jackson/io/CharacterEscapes;
    .restart local v8    # "escLimit":I
    .restart local v10    # "maxNonEscaped":I
    .restart local v11    # "start":I
    :cond_3
    if-le v4, v10, :cond_4

    .line 1402
    const/4 v5, -0x1

    .line 1403
    goto :goto_2

    .line 1405
    :cond_4
    invoke-virtual {v6, v4}, Lcom/flurry/org/codehaus/jackson/io/CharacterEscapes;->getEscapeSequence(I)Lcom/flurry/org/codehaus/jackson/SerializableString;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_currentEscape:Lcom/flurry/org/codehaus/jackson/SerializableString;

    if-eqz v0, :cond_5

    .line 1406
    const/4 v5, -0x2

    .line 1407
    goto :goto_2

    .line 1410
    :cond_5
    add-int/lit8 v2, v2, 0x1

    if-lt v2, p1, :cond_0

    goto :goto_2

    .line 1421
    .restart local v9    # "flushLen":I
    :cond_6
    add-int/lit8 v2, v2, 0x1

    .line 1422
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    move-object v0, p0

    move v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_prependOrWriteCharacterEscape([CIICI)I

    move-result v11

    .line 1423
    goto :goto_1
.end method

.method private _writeString(Ljava/lang/String;)V
    .locals 4
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 978
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 979
    .local v0, "len":I
    iget v1, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    if-le v0, v1, :cond_0

    .line 980
    invoke-direct {p0, p1}, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_writeLongString(Ljava/lang/String;)V

    .line 998
    :goto_0
    return-void

    .line 986
    :cond_0
    iget v1, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/2addr v1, v0

    iget v2, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    if-le v1, v2, :cond_1

    .line 987
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 989
    :cond_1
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v3, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    invoke-virtual {p1, v1, v0, v2, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 991
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_characterEscapes:Lcom/flurry/org/codehaus/jackson/io/CharacterEscapes;

    if-eqz v1, :cond_2

    .line 992
    invoke-direct {p0, v0}, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_writeStringCustom(I)V

    goto :goto_0

    .line 993
    :cond_2
    iget v1, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_maximumNonEscapedChar:I

    if-eqz v1, :cond_3

    .line 994
    iget v1, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_maximumNonEscapedChar:I

    invoke-direct {p0, v0, v1}, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_writeStringASCII(II)V

    goto :goto_0

    .line 996
    :cond_3
    invoke-direct {p0, v0}, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_writeString2(I)V

    goto :goto_0
.end method

.method private final _writeString([CII)V
    .locals 8
    .param p1, "text"    # [C
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 1123
    iget-object v6, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_characterEscapes:Lcom/flurry/org/codehaus/jackson/io/CharacterEscapes;

    if-eqz v6, :cond_1

    .line 1124
    invoke-direct {p0, p1, p2, p3}, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_writeStringCustom([CII)V

    .line 1175
    :cond_0
    :goto_0
    return-void

    .line 1127
    :cond_1
    iget v6, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_maximumNonEscapedChar:I

    if-eqz v6, :cond_2

    .line 1128
    iget v6, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_maximumNonEscapedChar:I

    invoke-direct {p0, p1, p2, p3, v6}, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_writeStringASCII([CIII)V

    goto :goto_0

    .line 1136
    :cond_2
    add-int/2addr p3, p2

    .line 1137
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputEscapes:[I

    .line 1138
    .local v1, "escCodes":[I
    array-length v2, v1

    .line 1139
    .local v2, "escLen":I
    :goto_1
    if-ge p2, p3, :cond_0

    .line 1140
    move v5, p2

    .line 1143
    .local v5, "start":I
    :cond_3
    aget-char v0, p1, p2

    .line 1144
    .local v0, "c":C
    if-ge v0, v2, :cond_6

    aget v6, v1, v0

    if-eqz v6, :cond_6

    move v4, p2

    .line 1153
    .end local p2    # "offset":I
    .local v4, "offset":I
    :goto_2
    sub-int v3, v4, v5

    .line 1154
    .local v3, "newAmount":I
    const/16 v6, 0x20

    if-ge v3, v6, :cond_7

    .line 1156
    iget v6, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/2addr v6, v3

    iget v7, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    if-le v6, v7, :cond_4

    .line 1157
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 1159
    :cond_4
    if-lez v3, :cond_5

    .line 1160
    iget-object v6, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v7, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    invoke-static {p1, v5, v6, v7, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1161
    iget v6, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/2addr v6, v3

    iput v6, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    .line 1168
    :cond_5
    :goto_3
    if-lt v4, p3, :cond_8

    move p2, v4

    .line 1169
    .end local v4    # "offset":I
    .restart local p2    # "offset":I
    goto :goto_0

    .line 1147
    .end local v3    # "newAmount":I
    :cond_6
    add-int/lit8 p2, p2, 0x1

    if-lt p2, p3, :cond_3

    move v4, p2

    .line 1148
    .end local p2    # "offset":I
    .restart local v4    # "offset":I
    goto :goto_2

    .line 1164
    .restart local v3    # "newAmount":I
    :cond_7
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 1165
    iget-object v6, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_writer:Ljava/io/Writer;

    invoke-virtual {v6, p1, v5, v3}, Ljava/io/Writer;->write([CII)V

    goto :goto_3

    .line 1172
    :cond_8
    add-int/lit8 p2, v4, 0x1

    .end local v4    # "offset":I
    .restart local p2    # "offset":I
    aget-char v0, p1, v4

    .line 1173
    aget v6, v1, v0

    invoke-direct {p0, v0, v6}, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_appendCharacterEscape(CI)V

    goto :goto_1
.end method

.method private _writeString2(I)V
    .locals 8
    .param p1, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 1004
    iget v5, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int v1, v5, p1

    .line 1005
    .local v1, "end":I
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputEscapes:[I

    .line 1006
    .local v2, "escCodes":[I
    array-length v3, v2

    .line 1009
    .local v3, "escLen":I
    :goto_0
    iget v5, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    if-ge v5, v1, :cond_3

    .line 1013
    :cond_0
    iget-object v5, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v6, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    aget-char v0, v5, v6

    .line 1014
    .local v0, "c":C
    if-ge v0, v3, :cond_2

    aget v5, v2, v0

    if-eqz v5, :cond_2

    .line 1026
    iget v5, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    iget v6, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputHead:I

    sub-int v4, v5, v6

    .line 1027
    .local v4, "flushLen":I
    if-lez v4, :cond_1

    .line 1028
    iget-object v5, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_writer:Ljava/io/Writer;

    iget-object v6, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v7, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputHead:I

    invoke-virtual {v5, v6, v7, v4}, Ljava/io/Writer;->write([CII)V

    .line 1033
    :cond_1
    iget-object v5, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v6, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    aget-char v0, v5, v6

    .line 1034
    aget v5, v2, v0

    invoke-direct {p0, v0, v5}, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_prependOrWriteCharacterEscape(CI)V

    goto :goto_0

    .line 1017
    .end local v4    # "flushLen":I
    :cond_2
    iget v5, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    if-lt v5, v1, :cond_0

    .line 1036
    .end local v0    # "c":C
    :cond_3
    return-void
.end method

.method private _writeStringASCII(II)V
    .locals 9
    .param p1, "len"    # I
    .param p2, "maxNonEscaped"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 1192
    iget v6, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int v1, v6, p1

    .line 1193
    .local v1, "end":I
    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputEscapes:[I

    .line 1194
    .local v3, "escCodes":[I
    array-length v6, v3

    iget v7, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_maximumNonEscapedChar:I

    add-int/lit8 v7, v7, 0x1

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 1195
    .local v4, "escLimit":I
    const/4 v2, 0x0

    .line 1198
    .local v2, "escCode":I
    :goto_0
    iget v6, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    if-ge v6, v1, :cond_4

    .line 1203
    :cond_0
    iget-object v6, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v7, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    aget-char v0, v6, v7

    .line 1204
    .local v0, "c":C
    if-ge v0, v4, :cond_2

    .line 1205
    aget v2, v3, v0

    .line 1206
    if-eqz v2, :cond_3

    .line 1217
    :goto_1
    iget v6, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    iget v7, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputHead:I

    sub-int v5, v6, v7

    .line 1218
    .local v5, "flushLen":I
    if-lez v5, :cond_1

    .line 1219
    iget-object v6, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_writer:Ljava/io/Writer;

    iget-object v7, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v8, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputHead:I

    invoke-virtual {v6, v7, v8, v5}, Ljava/io/Writer;->write([CII)V

    .line 1221
    :cond_1
    iget v6, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    .line 1222
    invoke-direct {p0, v0, v2}, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_prependOrWriteCharacterEscape(CI)V

    goto :goto_0

    .line 1209
    .end local v5    # "flushLen":I
    :cond_2
    if-le v0, p2, :cond_3

    .line 1210
    const/4 v2, -0x1

    .line 1211
    goto :goto_1

    .line 1213
    :cond_3
    iget v6, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    if-lt v6, v1, :cond_0

    .line 1224
    .end local v0    # "c":C
    :cond_4
    return-void
.end method

.method private final _writeStringASCII([CIII)V
    .locals 8
    .param p1, "text"    # [C
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .param p4, "maxNonEscaped"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 1271
    add-int/2addr p3, p2

    .line 1272
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputEscapes:[I

    .line 1273
    .local v2, "escCodes":[I
    array-length v6, v2

    add-int/lit8 v7, p4, 0x1

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 1275
    .local v3, "escLimit":I
    const/4 v1, 0x0

    .line 1277
    .local v1, "escCode":I
    :goto_0
    if-ge p2, p3, :cond_3

    .line 1278
    move v5, p2

    .line 1282
    .local v5, "start":I
    :cond_0
    aget-char v0, p1, p2

    .line 1283
    .local v0, "c":C
    if-ge v0, v3, :cond_4

    .line 1284
    aget v1, v2, v0

    .line 1285
    if-eqz v1, :cond_5

    .line 1298
    :goto_1
    sub-int v4, p2, v5

    .line 1299
    .local v4, "newAmount":I
    const/16 v6, 0x20

    if-ge v4, v6, :cond_6

    .line 1301
    iget v6, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/2addr v6, v4

    iget v7, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    if-le v6, v7, :cond_1

    .line 1302
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 1304
    :cond_1
    if-lez v4, :cond_2

    .line 1305
    iget-object v6, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v7, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    invoke-static {p1, v5, v6, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1306
    iget v6, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/2addr v6, v4

    iput v6, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    .line 1313
    :cond_2
    :goto_2
    if-lt p2, p3, :cond_7

    .line 1320
    .end local v0    # "c":C
    .end local v4    # "newAmount":I
    .end local v5    # "start":I
    :cond_3
    return-void

    .line 1288
    .restart local v0    # "c":C
    .restart local v5    # "start":I
    :cond_4
    if-le v0, p4, :cond_5

    .line 1289
    const/4 v1, -0x1

    .line 1290
    goto :goto_1

    .line 1292
    :cond_5
    add-int/lit8 p2, p2, 0x1

    if-lt p2, p3, :cond_0

    goto :goto_1

    .line 1309
    .restart local v4    # "newAmount":I
    :cond_6
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 1310
    iget-object v6, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_writer:Ljava/io/Writer;

    invoke-virtual {v6, p1, v5, v4}, Ljava/io/Writer;->write([CII)V

    goto :goto_2

    .line 1317
    :cond_7
    add-int/lit8 p2, p2, 0x1

    .line 1318
    invoke-direct {p0, v0, v1}, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_appendCharacterEscape(CI)V

    goto :goto_0
.end method

.method private _writeStringCustom(I)V
    .locals 11
    .param p1, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 1337
    iget v8, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int v2, v8, p1

    .line 1338
    .local v2, "end":I
    iget-object v4, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputEscapes:[I

    .line 1339
    .local v4, "escCodes":[I
    iget v8, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_maximumNonEscapedChar:I

    const/4 v9, 0x1

    if-ge v8, v9, :cond_2

    const v7, 0xffff

    .line 1340
    .local v7, "maxNonEscaped":I
    :goto_0
    array-length v8, v4

    add-int/lit8 v9, v7, 0x1

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 1341
    .local v5, "escLimit":I
    const/4 v3, 0x0

    .line 1342
    .local v3, "escCode":I
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_characterEscapes:Lcom/flurry/org/codehaus/jackson/io/CharacterEscapes;

    .line 1345
    .local v1, "customEscapes":Lcom/flurry/org/codehaus/jackson/io/CharacterEscapes;
    :goto_1
    iget v8, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    if-ge v8, v2, :cond_6

    .line 1350
    :cond_0
    iget-object v8, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v9, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    aget-char v0, v8, v9

    .line 1351
    .local v0, "c":C
    if-ge v0, v5, :cond_3

    .line 1352
    aget v3, v4, v0

    .line 1353
    if-eqz v3, :cond_5

    .line 1369
    :goto_2
    iget v8, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    iget v9, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputHead:I

    sub-int v6, v8, v9

    .line 1370
    .local v6, "flushLen":I
    if-lez v6, :cond_1

    .line 1371
    iget-object v8, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_writer:Ljava/io/Writer;

    iget-object v9, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v10, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputHead:I

    invoke-virtual {v8, v9, v10, v6}, Ljava/io/Writer;->write([CII)V

    .line 1373
    :cond_1
    iget v8, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    .line 1374
    invoke-direct {p0, v0, v3}, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_prependOrWriteCharacterEscape(CI)V

    goto :goto_1

    .line 1339
    .end local v0    # "c":C
    .end local v1    # "customEscapes":Lcom/flurry/org/codehaus/jackson/io/CharacterEscapes;
    .end local v3    # "escCode":I
    .end local v5    # "escLimit":I
    .end local v6    # "flushLen":I
    .end local v7    # "maxNonEscaped":I
    :cond_2
    iget v7, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_maximumNonEscapedChar:I

    goto :goto_0

    .line 1356
    .restart local v0    # "c":C
    .restart local v1    # "customEscapes":Lcom/flurry/org/codehaus/jackson/io/CharacterEscapes;
    .restart local v3    # "escCode":I
    .restart local v5    # "escLimit":I
    .restart local v7    # "maxNonEscaped":I
    :cond_3
    if-le v0, v7, :cond_4

    .line 1357
    const/4 v3, -0x1

    .line 1358
    goto :goto_2

    .line 1360
    :cond_4
    invoke-virtual {v1, v0}, Lcom/flurry/org/codehaus/jackson/io/CharacterEscapes;->getEscapeSequence(I)Lcom/flurry/org/codehaus/jackson/SerializableString;

    move-result-object v8

    iput-object v8, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_currentEscape:Lcom/flurry/org/codehaus/jackson/SerializableString;

    if-eqz v8, :cond_5

    .line 1361
    const/4 v3, -0x2

    .line 1362
    goto :goto_2

    .line 1365
    :cond_5
    iget v8, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    if-lt v8, v2, :cond_0

    .line 1376
    .end local v0    # "c":C
    :cond_6
    return-void
.end method

.method private final _writeStringCustom([CII)V
    .locals 10
    .param p1, "text"    # [C
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 1429
    add-int/2addr p3, p2

    .line 1430
    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputEscapes:[I

    .line 1431
    .local v3, "escCodes":[I
    iget v8, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_maximumNonEscapedChar:I

    const/4 v9, 0x1

    if-ge v8, v9, :cond_4

    const v5, 0xffff

    .line 1432
    .local v5, "maxNonEscaped":I
    :goto_0
    array-length v8, v3

    add-int/lit8 v9, v5, 0x1

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 1433
    .local v4, "escLimit":I
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_characterEscapes:Lcom/flurry/org/codehaus/jackson/io/CharacterEscapes;

    .line 1435
    .local v1, "customEscapes":Lcom/flurry/org/codehaus/jackson/io/CharacterEscapes;
    const/4 v2, 0x0

    .line 1437
    .local v2, "escCode":I
    :goto_1
    if-ge p2, p3, :cond_3

    .line 1438
    move v7, p2

    .line 1442
    .local v7, "start":I
    :cond_0
    aget-char v0, p1, p2

    .line 1443
    .local v0, "c":C
    if-ge v0, v4, :cond_5

    .line 1444
    aget v2, v3, v0

    .line 1445
    if-eqz v2, :cond_7

    .line 1463
    :goto_2
    sub-int v6, p2, v7

    .line 1464
    .local v6, "newAmount":I
    const/16 v8, 0x20

    if-ge v6, v8, :cond_8

    .line 1466
    iget v8, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/2addr v8, v6

    iget v9, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    if-le v8, v9, :cond_1

    .line 1467
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 1469
    :cond_1
    if-lez v6, :cond_2

    .line 1470
    iget-object v8, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v9, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    invoke-static {p1, v7, v8, v9, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1471
    iget v8, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/2addr v8, v6

    iput v8, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    .line 1478
    :cond_2
    :goto_3
    if-lt p2, p3, :cond_9

    .line 1485
    .end local v0    # "c":C
    .end local v6    # "newAmount":I
    .end local v7    # "start":I
    :cond_3
    return-void

    .line 1431
    .end local v1    # "customEscapes":Lcom/flurry/org/codehaus/jackson/io/CharacterEscapes;
    .end local v2    # "escCode":I
    .end local v4    # "escLimit":I
    .end local v5    # "maxNonEscaped":I
    :cond_4
    iget v5, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_maximumNonEscapedChar:I

    goto :goto_0

    .line 1448
    .restart local v0    # "c":C
    .restart local v1    # "customEscapes":Lcom/flurry/org/codehaus/jackson/io/CharacterEscapes;
    .restart local v2    # "escCode":I
    .restart local v4    # "escLimit":I
    .restart local v5    # "maxNonEscaped":I
    .restart local v7    # "start":I
    :cond_5
    if-le v0, v5, :cond_6

    .line 1449
    const/4 v2, -0x1

    .line 1450
    goto :goto_2

    .line 1452
    :cond_6
    invoke-virtual {v1, v0}, Lcom/flurry/org/codehaus/jackson/io/CharacterEscapes;->getEscapeSequence(I)Lcom/flurry/org/codehaus/jackson/SerializableString;

    move-result-object v8

    iput-object v8, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_currentEscape:Lcom/flurry/org/codehaus/jackson/SerializableString;

    if-eqz v8, :cond_7

    .line 1453
    const/4 v2, -0x2

    .line 1454
    goto :goto_2

    .line 1457
    :cond_7
    add-int/lit8 p2, p2, 0x1

    if-lt p2, p3, :cond_0

    goto :goto_2

    .line 1474
    .restart local v6    # "newAmount":I
    :cond_8
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 1475
    iget-object v8, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_writer:Ljava/io/Writer;

    invoke-virtual {v8, p1, v7, v6}, Ljava/io/Writer;->write([CII)V

    goto :goto_3

    .line 1482
    :cond_9
    add-int/lit8 p2, p2, 0x1

    .line 1483
    invoke-direct {p0, v0, v2}, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_appendCharacterEscape(CI)V

    goto :goto_1
.end method

.method private writeRawLong(Ljava/lang/String;)V
    .locals 7
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 599
    iget v4, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    iget v5, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    sub-int v3, v4, v5

    .line 601
    .local v3, "room":I
    iget-object v4, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v5, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    invoke-virtual {p1, v6, v3, v4, v5}, Ljava/lang/String;->getChars(II[CI)V

    .line 602
    iget v4, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/2addr v4, v3

    iput v4, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    .line 603
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 604
    move v2, v3

    .line 605
    .local v2, "offset":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    sub-int v1, v4, v3

    .line 607
    .local v1, "len":I
    :goto_0
    iget v4, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    if-le v1, v4, :cond_0

    .line 608
    iget v0, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    .line 609
    .local v0, "amount":I
    add-int v4, v2, v0

    iget-object v5, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    invoke-virtual {p1, v2, v4, v5, v6}, Ljava/lang/String;->getChars(II[CI)V

    .line 610
    iput v6, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputHead:I

    .line 611
    iput v0, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    .line 612
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 613
    add-int/2addr v2, v0

    .line 614
    sub-int/2addr v1, v0

    .line 615
    goto :goto_0

    .line 617
    .end local v0    # "amount":I
    :cond_0
    add-int v4, v2, v1

    iget-object v5, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    invoke-virtual {p1, v2, v4, v5, v6}, Ljava/lang/String;->getChars(II[CI)V

    .line 618
    iput v6, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputHead:I

    .line 619
    iput v1, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    .line 620
    return-void
.end method


# virtual methods
.method protected final _flushBuffer()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1808
    iget v2, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    iget v3, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputHead:I

    sub-int v0, v2, v3

    .line 1809
    .local v0, "len":I
    if-lez v0, :cond_0

    .line 1810
    iget v1, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputHead:I

    .line 1811
    .local v1, "offset":I
    const/4 v2, 0x0

    iput v2, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputHead:I

    iput v2, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    .line 1812
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_writer:Ljava/io/Writer;

    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    invoke-virtual {v2, v3, v1, v0}, Ljava/io/Writer;->write([CII)V

    .line 1814
    .end local v1    # "offset":I
    :cond_0
    return-void
.end method

.method protected _releaseBuffers()V
    .locals 2

    .prologue
    .line 957
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    .line 958
    .local v0, "buf":[C
    if-eqz v0, :cond_0

    .line 959
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    .line 960
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_ioContext:Lcom/flurry/org/codehaus/jackson/io/IOContext;

    invoke-virtual {v1, v0}, Lcom/flurry/org/codehaus/jackson/io/IOContext;->releaseConcatBuffer([C)V

    .line 962
    :cond_0
    return-void
.end method

.method protected final _verifyPrettyValueWrite(Ljava/lang/String;I)V
    .locals 1
    .param p1, "typeMsg"    # Ljava/lang/String;
    .param p2, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 869
    packed-switch p2, :pswitch_data_0

    .line 888
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_cantHappen()V

    .line 891
    :cond_0
    :goto_0
    return-void

    .line 871
    :pswitch_0
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_cfgPrettyPrinter:Lcom/flurry/org/codehaus/jackson/PrettyPrinter;

    invoke-interface {v0, p0}, Lcom/flurry/org/codehaus/jackson/PrettyPrinter;->writeArrayValueSeparator(Lcom/flurry/org/codehaus/jackson/JsonGenerator;)V

    goto :goto_0

    .line 874
    :pswitch_1
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_cfgPrettyPrinter:Lcom/flurry/org/codehaus/jackson/PrettyPrinter;

    invoke-interface {v0, p0}, Lcom/flurry/org/codehaus/jackson/PrettyPrinter;->writeObjectFieldValueSeparator(Lcom/flurry/org/codehaus/jackson/JsonGenerator;)V

    goto :goto_0

    .line 877
    :pswitch_2
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_cfgPrettyPrinter:Lcom/flurry/org/codehaus/jackson/PrettyPrinter;

    invoke-interface {v0, p0}, Lcom/flurry/org/codehaus/jackson/PrettyPrinter;->writeRootValueSeparator(Lcom/flurry/org/codehaus/jackson/JsonGenerator;)V

    goto :goto_0

    .line 881
    :pswitch_3
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_writeContext:Lcom/flurry/org/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/impl/JsonWriteContext;->inArray()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 882
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_cfgPrettyPrinter:Lcom/flurry/org/codehaus/jackson/PrettyPrinter;

    invoke-interface {v0, p0}, Lcom/flurry/org/codehaus/jackson/PrettyPrinter;->beforeArrayValues(Lcom/flurry/org/codehaus/jackson/JsonGenerator;)V

    goto :goto_0

    .line 883
    :cond_1
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_writeContext:Lcom/flurry/org/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/impl/JsonWriteContext;->inObject()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 884
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_cfgPrettyPrinter:Lcom/flurry/org/codehaus/jackson/PrettyPrinter;

    invoke-interface {v0, p0}, Lcom/flurry/org/codehaus/jackson/PrettyPrinter;->beforeObjectEntries(Lcom/flurry/org/codehaus/jackson/JsonGenerator;)V

    goto :goto_0

    .line 869
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected final _verifyValueWrite(Ljava/lang/String;)V
    .locals 4
    .param p1, "typeMsg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 834
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_writeContext:Lcom/flurry/org/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v2}, Lcom/flurry/org/codehaus/jackson/impl/JsonWriteContext;->writeValue()I

    move-result v1

    .line 835
    .local v1, "status":I
    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    .line 836
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can not "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", expecting field name"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_reportError(Ljava/lang/String;)V

    .line 838
    :cond_0
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_cfgPrettyPrinter:Lcom/flurry/org/codehaus/jackson/PrettyPrinter;

    if-nez v2, :cond_2

    .line 840
    packed-switch v1, :pswitch_data_0

    .line 863
    :goto_0
    return-void

    .line 842
    :pswitch_0
    const/16 v0, 0x2c

    .line 854
    .local v0, "c":C
    :goto_1
    iget v2, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    iget v3, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    if-lt v2, v3, :cond_1

    .line 855
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 857
    :cond_1
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v3, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    aput-char v0, v2, v3

    .line 858
    iget v2, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    goto :goto_0

    .line 845
    .end local v0    # "c":C
    :pswitch_1
    const/16 v0, 0x3a

    .line 846
    .restart local v0    # "c":C
    goto :goto_1

    .line 848
    .end local v0    # "c":C
    :pswitch_2
    const/16 v0, 0x20

    .line 849
    .restart local v0    # "c":C
    goto :goto_1

    .line 862
    .end local v0    # "c":C
    :cond_2
    invoke-virtual {p0, p1, v1}, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_verifyPrettyValueWrite(Ljava/lang/String;I)V

    goto :goto_0

    .line 840
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected _writeBinary(Lcom/flurry/org/codehaus/jackson/Base64Variant;[BII)V
    .locals 9
    .param p1, "b64variant"    # Lcom/flurry/org/codehaus/jackson/Base64Variant;
    .param p2, "input"    # [B
    .param p3, "inputPtr"    # I
    .param p4, "inputEnd"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 1497
    add-int/lit8 v4, p4, -0x3

    .line 1499
    .local v4, "safeInputEnd":I
    iget v6, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    add-int/lit8 v5, v6, -0x6

    .line 1500
    .local v5, "safeOutputEnd":I
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/Base64Variant;->getMaxLineLength()I

    move-result v6

    shr-int/lit8 v1, v6, 0x2

    .local v1, "chunksBeforeLF":I
    move v3, p3

    .line 1503
    .end local p3    # "inputPtr":I
    .local v3, "inputPtr":I
    :goto_0
    if-gt v3, v4, :cond_2

    .line 1504
    iget v6, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    if-le v6, v5, :cond_0

    .line 1505
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 1508
    :cond_0
    add-int/lit8 p3, v3, 0x1

    .end local v3    # "inputPtr":I
    .restart local p3    # "inputPtr":I
    aget-byte v6, p2, v3

    shl-int/lit8 v0, v6, 0x8

    .line 1509
    .local v0, "b24":I
    add-int/lit8 v3, p3, 0x1

    .end local p3    # "inputPtr":I
    .restart local v3    # "inputPtr":I
    aget-byte v6, p2, p3

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v0, v6

    .line 1510
    shl-int/lit8 v6, v0, 0x8

    add-int/lit8 p3, v3, 0x1

    .end local v3    # "inputPtr":I
    .restart local p3    # "inputPtr":I
    aget-byte v7, p2, v3

    and-int/lit16 v7, v7, 0xff

    or-int v0, v6, v7

    .line 1511
    iget-object v6, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v7, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    invoke-virtual {p1, v0, v6, v7}, Lcom/flurry/org/codehaus/jackson/Base64Variant;->encodeBase64Chunk(I[CI)I

    move-result v6

    iput v6, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    .line 1512
    add-int/lit8 v1, v1, -0x1

    if-gtz v1, :cond_1

    .line 1514
    iget-object v6, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v7, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    const/16 v8, 0x5c

    aput-char v8, v6, v7

    .line 1515
    iget-object v6, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v7, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    const/16 v8, 0x6e

    aput-char v8, v6, v7

    .line 1516
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/Base64Variant;->getMaxLineLength()I

    move-result v6

    shr-int/lit8 v1, v6, 0x2

    :cond_1
    move v3, p3

    .line 1518
    .end local p3    # "inputPtr":I
    .restart local v3    # "inputPtr":I
    goto :goto_0

    .line 1521
    .end local v0    # "b24":I
    :cond_2
    sub-int v2, p4, v3

    .line 1522
    .local v2, "inputLeft":I
    if-lez v2, :cond_5

    .line 1523
    iget v6, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    if-le v6, v5, :cond_3

    .line 1524
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 1526
    :cond_3
    add-int/lit8 p3, v3, 0x1

    .end local v3    # "inputPtr":I
    .restart local p3    # "inputPtr":I
    aget-byte v6, p2, v3

    shl-int/lit8 v0, v6, 0x10

    .line 1527
    .restart local v0    # "b24":I
    const/4 v6, 0x2

    if-ne v2, v6, :cond_4

    .line 1528
    add-int/lit8 v3, p3, 0x1

    .end local p3    # "inputPtr":I
    .restart local v3    # "inputPtr":I
    aget-byte v6, p2, p3

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v0, v6

    move p3, v3

    .line 1530
    .end local v3    # "inputPtr":I
    .restart local p3    # "inputPtr":I
    :cond_4
    iget-object v6, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v7, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    invoke-virtual {p1, v0, v2, v6, v7}, Lcom/flurry/org/codehaus/jackson/Base64Variant;->encodeBase64Partial(II[CI)I

    move-result v6

    iput v6, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    .line 1532
    .end local v0    # "b24":I
    :goto_1
    return-void

    .end local p3    # "inputPtr":I
    .restart local v3    # "inputPtr":I
    :cond_5
    move p3, v3

    .end local v3    # "inputPtr":I
    .restart local p3    # "inputPtr":I
    goto :goto_1
.end method

.method public _writeFieldName(Lcom/flurry/org/codehaus/jackson/SerializableString;Z)V
    .locals 7
    .param p1, "name"    # Lcom/flurry/org/codehaus/jackson/SerializableString;
    .param p2, "commaBefore"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x22

    const/4 v5, 0x0

    .line 339
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_cfgPrettyPrinter:Lcom/flurry/org/codehaus/jackson/PrettyPrinter;

    if-eqz v2, :cond_0

    .line 340
    invoke-virtual {p0, p1, p2}, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_writePPFieldName(Lcom/flurry/org/codehaus/jackson/SerializableString;Z)V

    .line 374
    :goto_0
    return-void

    .line 344
    :cond_0
    iget v2, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v2, v2, 0x1

    iget v3, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    if-lt v2, v3, :cond_1

    .line 345
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 347
    :cond_1
    if-eqz p2, :cond_2

    .line 348
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v3, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    const/16 v4, 0x2c

    aput-char v4, v2, v3

    .line 353
    :cond_2
    invoke-interface {p1}, Lcom/flurry/org/codehaus/jackson/SerializableString;->asQuotedChars()[C

    move-result-object v1

    .line 354
    .local v1, "quoted":[C
    sget-object v2, Lcom/flurry/org/codehaus/jackson/JsonGenerator$Feature;->QUOTE_FIELD_NAMES:Lcom/flurry/org/codehaus/jackson/JsonGenerator$Feature;

    invoke-virtual {p0, v2}, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->isEnabled(Lcom/flurry/org/codehaus/jackson/JsonGenerator$Feature;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 355
    array-length v2, v1

    invoke-virtual {p0, v1, v5, v2}, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->writeRaw([CII)V

    goto :goto_0

    .line 359
    :cond_3
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v3, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    aput-char v6, v2, v3

    .line 361
    array-length v0, v1

    .line 362
    .local v0, "qlen":I
    iget v2, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/2addr v2, v0

    add-int/lit8 v2, v2, 0x1

    iget v3, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    if-lt v2, v3, :cond_5

    .line 363
    invoke-virtual {p0, v1, v5, v0}, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->writeRaw([CII)V

    .line 365
    iget v2, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    iget v3, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    if-lt v2, v3, :cond_4

    .line 366
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 368
    :cond_4
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v3, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    aput-char v6, v2, v3

    goto :goto_0

    .line 370
    :cond_5
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v3, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    invoke-static {v1, v5, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 371
    iget v2, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    .line 372
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v3, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    aput-char v6, v2, v3

    goto :goto_0
.end method

.method protected _writeFieldName(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "commaBefore"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x22

    .line 305
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_cfgPrettyPrinter:Lcom/flurry/org/codehaus/jackson/PrettyPrinter;

    if-eqz v0, :cond_0

    .line 306
    invoke-virtual {p0, p1, p2}, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_writePPFieldName(Ljava/lang/String;Z)V

    .line 334
    :goto_0
    return-void

    .line 310
    :cond_0
    iget v0, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_1

    .line 311
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 313
    :cond_1
    if-eqz p2, :cond_2

    .line 314
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v1, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    const/16 v2, 0x2c

    aput-char v2, v0, v1

    .line 320
    :cond_2
    sget-object v0, Lcom/flurry/org/codehaus/jackson/JsonGenerator$Feature;->QUOTE_FIELD_NAMES:Lcom/flurry/org/codehaus/jackson/JsonGenerator$Feature;

    invoke-virtual {p0, v0}, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->isEnabled(Lcom/flurry/org/codehaus/jackson/JsonGenerator$Feature;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 321
    invoke-direct {p0, p1}, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 326
    :cond_3
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v1, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    aput-char v3, v0, v1

    .line 328
    invoke-direct {p0, p1}, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_writeString(Ljava/lang/String;)V

    .line 330
    iget v0, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    iget v1, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_4

    .line 331
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 333
    :cond_4
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v1, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    aput-char v3, v0, v1

    goto :goto_0
.end method

.method protected final _writePPFieldName(Lcom/flurry/org/codehaus/jackson/SerializableString;Z)V
    .locals 6
    .param p1, "name"    # Lcom/flurry/org/codehaus/jackson/SerializableString;
    .param p2, "commaBefore"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x22

    const/4 v4, 0x0

    .line 407
    if-eqz p2, :cond_2

    .line 408
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_cfgPrettyPrinter:Lcom/flurry/org/codehaus/jackson/PrettyPrinter;

    invoke-interface {v1, p0}, Lcom/flurry/org/codehaus/jackson/PrettyPrinter;->writeObjectEntrySeparator(Lcom/flurry/org/codehaus/jackson/JsonGenerator;)V

    .line 413
    :goto_0
    invoke-interface {p1}, Lcom/flurry/org/codehaus/jackson/SerializableString;->asQuotedChars()[C

    move-result-object v0

    .line 414
    .local v0, "quoted":[C
    sget-object v1, Lcom/flurry/org/codehaus/jackson/JsonGenerator$Feature;->QUOTE_FIELD_NAMES:Lcom/flurry/org/codehaus/jackson/JsonGenerator$Feature;

    invoke-virtual {p0, v1}, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->isEnabled(Lcom/flurry/org/codehaus/jackson/JsonGenerator$Feature;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 415
    iget v1, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    iget v2, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    if-lt v1, v2, :cond_0

    .line 416
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 418
    :cond_0
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v2, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    aput-char v5, v1, v2

    .line 419
    array-length v1, v0

    invoke-virtual {p0, v0, v4, v1}, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->writeRaw([CII)V

    .line 420
    iget v1, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    iget v2, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    if-lt v1, v2, :cond_1

    .line 421
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 423
    :cond_1
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v2, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    aput-char v5, v1, v2

    .line 427
    :goto_1
    return-void

    .line 410
    .end local v0    # "quoted":[C
    :cond_2
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_cfgPrettyPrinter:Lcom/flurry/org/codehaus/jackson/PrettyPrinter;

    invoke-interface {v1, p0}, Lcom/flurry/org/codehaus/jackson/PrettyPrinter;->beforeObjectEntries(Lcom/flurry/org/codehaus/jackson/JsonGenerator;)V

    goto :goto_0

    .line 425
    .restart local v0    # "quoted":[C
    :cond_3
    array-length v1, v0

    invoke-virtual {p0, v0, v4, v1}, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->writeRaw([CII)V

    goto :goto_1
.end method

.method protected final _writePPFieldName(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "commaBefore"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x22

    .line 383
    if-eqz p2, :cond_2

    .line 384
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_cfgPrettyPrinter:Lcom/flurry/org/codehaus/jackson/PrettyPrinter;

    invoke-interface {v0, p0}, Lcom/flurry/org/codehaus/jackson/PrettyPrinter;->writeObjectEntrySeparator(Lcom/flurry/org/codehaus/jackson/JsonGenerator;)V

    .line 389
    :goto_0
    sget-object v0, Lcom/flurry/org/codehaus/jackson/JsonGenerator$Feature;->QUOTE_FIELD_NAMES:Lcom/flurry/org/codehaus/jackson/JsonGenerator$Feature;

    invoke-virtual {p0, v0}, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->isEnabled(Lcom/flurry/org/codehaus/jackson/JsonGenerator$Feature;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 390
    iget v0, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    iget v1, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_0

    .line 391
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 393
    :cond_0
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v1, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    aput-char v3, v0, v1

    .line 394
    invoke-direct {p0, p1}, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_writeString(Ljava/lang/String;)V

    .line 395
    iget v0, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    iget v1, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_1

    .line 396
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 398
    :cond_1
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v1, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    aput-char v3, v0, v1

    .line 402
    :goto_1
    return-void

    .line 386
    :cond_2
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_cfgPrettyPrinter:Lcom/flurry/org/codehaus/jackson/PrettyPrinter;

    invoke-interface {v0, p0}, Lcom/flurry/org/codehaus/jackson/PrettyPrinter;->beforeObjectEntries(Lcom/flurry/org/codehaus/jackson/JsonGenerator;)V

    goto :goto_0

    .line 400
    :cond_3
    invoke-direct {p0, p1}, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_writeString(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 915
    invoke-super {p0}, Lcom/flurry/org/codehaus/jackson/impl/JsonGeneratorBase;->close()V

    .line 921
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    if-eqz v1, :cond_1

    sget-object v1, Lcom/flurry/org/codehaus/jackson/JsonGenerator$Feature;->AUTO_CLOSE_JSON_CONTENT:Lcom/flurry/org/codehaus/jackson/JsonGenerator$Feature;

    invoke-virtual {p0, v1}, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->isEnabled(Lcom/flurry/org/codehaus/jackson/JsonGenerator$Feature;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 924
    :goto_0
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->getOutputContext()Lcom/flurry/org/codehaus/jackson/impl/JsonWriteContext;

    move-result-object v0

    .line 925
    .local v0, "ctxt":Lcom/flurry/org/codehaus/jackson/JsonStreamContext;
    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/JsonStreamContext;->inArray()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 926
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->writeEndArray()V

    goto :goto_0

    .line 927
    :cond_0
    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/JsonStreamContext;->inObject()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 928
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->writeEndObject()V

    goto :goto_0

    .line 934
    .end local v0    # "ctxt":Lcom/flurry/org/codehaus/jackson/JsonStreamContext;
    :cond_1
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 942
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_writer:Ljava/io/Writer;

    if-eqz v1, :cond_3

    .line 943
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_ioContext:Lcom/flurry/org/codehaus/jackson/io/IOContext;

    invoke-virtual {v1}, Lcom/flurry/org/codehaus/jackson/io/IOContext;->isResourceManaged()Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/flurry/org/codehaus/jackson/JsonGenerator$Feature;->AUTO_CLOSE_TARGET:Lcom/flurry/org/codehaus/jackson/JsonGenerator$Feature;

    invoke-virtual {p0, v1}, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->isEnabled(Lcom/flurry/org/codehaus/jackson/JsonGenerator$Feature;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 944
    :cond_2
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_writer:Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/io/Writer;->close()V

    .line 951
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_releaseBuffers()V

    .line 952
    return-void

    .line 945
    :cond_4
    sget-object v1, Lcom/flurry/org/codehaus/jackson/JsonGenerator$Feature;->FLUSH_PASSED_TO_STREAM:Lcom/flurry/org/codehaus/jackson/JsonGenerator$Feature;

    invoke-virtual {p0, v1}, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->isEnabled(Lcom/flurry/org/codehaus/jackson/JsonGenerator$Feature;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 947
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_writer:Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/io/Writer;->flush()V

    goto :goto_1
.end method

.method public final flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 903
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 904
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_writer:Ljava/io/Writer;

    if-eqz v0, :cond_0

    .line 905
    sget-object v0, Lcom/flurry/org/codehaus/jackson/JsonGenerator$Feature;->FLUSH_PASSED_TO_STREAM:Lcom/flurry/org/codehaus/jackson/JsonGenerator$Feature;

    invoke-virtual {p0, v0}, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->isEnabled(Lcom/flurry/org/codehaus/jackson/JsonGenerator$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 906
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_writer:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    .line 909
    :cond_0
    return-void
.end method

.method public getCharacterEscapes()Lcom/flurry/org/codehaus/jackson/io/CharacterEscapes;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_characterEscapes:Lcom/flurry/org/codehaus/jackson/io/CharacterEscapes;

    return-object v0
.end method

.method public getHighestEscapedChar()I
    .locals 1

    .prologue
    .line 149
    iget v0, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_maximumNonEscapedChar:I

    return v0
.end method

.method public getOutputTarget()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_writer:Ljava/io/Writer;

    return-object v0
.end method

.method public setCharacterEscapes(Lcom/flurry/org/codehaus/jackson/io/CharacterEscapes;)Lcom/flurry/org/codehaus/jackson/JsonGenerator;
    .locals 1
    .param p1, "esc"    # Lcom/flurry/org/codehaus/jackson/io/CharacterEscapes;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_characterEscapes:Lcom/flurry/org/codehaus/jackson/io/CharacterEscapes;

    .line 156
    if-nez p1, :cond_0

    .line 157
    sget-object v0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->sOutputEscapes:[I

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputEscapes:[I

    .line 161
    :goto_0
    return-object p0

    .line 159
    :cond_0
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/io/CharacterEscapes;->getEscapeCodesForAscii()[I

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputEscapes:[I

    goto :goto_0
.end method

.method public setHighestNonEscapedChar(I)Lcom/flurry/org/codehaus/jackson/JsonGenerator;
    .locals 0
    .param p1, "charCode"    # I

    .prologue
    .line 143
    if-gez p1, :cond_0

    const/4 p1, 0x0

    .end local p1    # "charCode":I
    :cond_0
    iput p1, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_maximumNonEscapedChar:I

    .line 144
    return-object p0
.end method

.method public writeBinary(Lcom/flurry/org/codehaus/jackson/Base64Variant;[BII)V
    .locals 4
    .param p1, "b64variant"    # Lcom/flurry/org/codehaus/jackson/Base64Variant;
    .param p2, "data"    # [B
    .param p3, "offset"    # I
    .param p4, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x22

    .line 632
    const-string v0, "write binary value"

    invoke-virtual {p0, v0}, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 634
    iget v0, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    iget v1, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_0

    .line 635
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 637
    :cond_0
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v1, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    aput-char v3, v0, v1

    .line 638
    add-int v0, p3, p4

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_writeBinary(Lcom/flurry/org/codehaus/jackson/Base64Variant;[BII)V

    .line 640
    iget v0, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    iget v1, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_1

    .line 641
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 643
    :cond_1
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v1, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    aput-char v3, v0, v1

    .line 644
    return-void
.end method

.method public writeBoolean(Z)V
    .locals 5
    .param p1, "state"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x65

    .line 795
    const-string v2, "write boolean value"

    invoke-virtual {p0, v2}, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 796
    iget v2, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v2, v2, 0x5

    iget v3, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    if-lt v2, v3, :cond_0

    .line 797
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 799
    :cond_0
    iget v1, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    .line 800
    .local v1, "ptr":I
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    .line 801
    .local v0, "buf":[C
    if-eqz p1, :cond_1

    .line 802
    const/16 v2, 0x74

    aput-char v2, v0, v1

    .line 803
    add-int/lit8 v1, v1, 0x1

    const/16 v2, 0x72

    aput-char v2, v0, v1

    .line 804
    add-int/lit8 v1, v1, 0x1

    const/16 v2, 0x75

    aput-char v2, v0, v1

    .line 805
    add-int/lit8 v1, v1, 0x1

    aput-char v4, v0, v1

    .line 813
    :goto_0
    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    .line 814
    return-void

    .line 807
    :cond_1
    const/16 v2, 0x66

    aput-char v2, v0, v1

    .line 808
    add-int/lit8 v1, v1, 0x1

    const/16 v2, 0x61

    aput-char v2, v0, v1

    .line 809
    add-int/lit8 v1, v1, 0x1

    const/16 v2, 0x6c

    aput-char v2, v0, v1

    .line 810
    add-int/lit8 v1, v1, 0x1

    const/16 v2, 0x73

    aput-char v2, v0, v1

    .line 811
    add-int/lit8 v1, v1, 0x1

    aput-char v4, v0, v1

    goto :goto_0
.end method

.method public final writeEndArray()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 256
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_writeContext:Lcom/flurry/org/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/impl/JsonWriteContext;->inArray()Z

    move-result v0

    if-nez v0, :cond_0

    .line 257
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current context not an ARRAY but "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_writeContext:Lcom/flurry/org/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v1}, Lcom/flurry/org/codehaus/jackson/impl/JsonWriteContext;->getTypeDesc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_reportError(Ljava/lang/String;)V

    .line 259
    :cond_0
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_cfgPrettyPrinter:Lcom/flurry/org/codehaus/jackson/PrettyPrinter;

    if-eqz v0, :cond_1

    .line 260
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_cfgPrettyPrinter:Lcom/flurry/org/codehaus/jackson/PrettyPrinter;

    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_writeContext:Lcom/flurry/org/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v1}, Lcom/flurry/org/codehaus/jackson/impl/JsonWriteContext;->getEntryCount()I

    move-result v1

    invoke-interface {v0, p0, v1}, Lcom/flurry/org/codehaus/jackson/PrettyPrinter;->writeEndArray(Lcom/flurry/org/codehaus/jackson/JsonGenerator;I)V

    .line 267
    :goto_0
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_writeContext:Lcom/flurry/org/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/impl/JsonWriteContext;->getParent()Lcom/flurry/org/codehaus/jackson/impl/JsonWriteContext;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_writeContext:Lcom/flurry/org/codehaus/jackson/impl/JsonWriteContext;

    .line 268
    return-void

    .line 262
    :cond_1
    iget v0, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    iget v1, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_2

    .line 263
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 265
    :cond_2
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v1, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    const/16 v2, 0x5d

    aput-char v2, v0, v1

    goto :goto_0
.end method

.method public final writeEndObject()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 288
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_writeContext:Lcom/flurry/org/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/impl/JsonWriteContext;->inObject()Z

    move-result v0

    if-nez v0, :cond_0

    .line 289
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current context not an object but "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_writeContext:Lcom/flurry/org/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v1}, Lcom/flurry/org/codehaus/jackson/impl/JsonWriteContext;->getTypeDesc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_reportError(Ljava/lang/String;)V

    .line 291
    :cond_0
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_writeContext:Lcom/flurry/org/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/impl/JsonWriteContext;->getParent()Lcom/flurry/org/codehaus/jackson/impl/JsonWriteContext;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_writeContext:Lcom/flurry/org/codehaus/jackson/impl/JsonWriteContext;

    .line 292
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_cfgPrettyPrinter:Lcom/flurry/org/codehaus/jackson/PrettyPrinter;

    if-eqz v0, :cond_1

    .line 293
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_cfgPrettyPrinter:Lcom/flurry/org/codehaus/jackson/PrettyPrinter;

    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_writeContext:Lcom/flurry/org/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v1}, Lcom/flurry/org/codehaus/jackson/impl/JsonWriteContext;->getEntryCount()I

    move-result v1

    invoke-interface {v0, p0, v1}, Lcom/flurry/org/codehaus/jackson/PrettyPrinter;->writeEndObject(Lcom/flurry/org/codehaus/jackson/JsonGenerator;I)V

    .line 300
    :goto_0
    return-void

    .line 295
    :cond_1
    iget v0, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    iget v1, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_2

    .line 296
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 298
    :cond_2
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v1, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    const/16 v2, 0x7d

    aput-char v2, v0, v1

    goto :goto_0
.end method

.method public final writeFieldName(Lcom/flurry/org/codehaus/jackson/SerializableString;)V
    .locals 4
    .param p1, "name"    # Lcom/flurry/org/codehaus/jackson/SerializableString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 225
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_writeContext:Lcom/flurry/org/codehaus/jackson/impl/JsonWriteContext;

    invoke-interface {p1}, Lcom/flurry/org/codehaus/jackson/SerializableString;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/flurry/org/codehaus/jackson/impl/JsonWriteContext;->writeFieldName(Ljava/lang/String;)I

    move-result v0

    .line 226
    .local v0, "status":I
    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    .line 227
    const-string v2, "Can not write a field name, expecting a value"

    invoke-virtual {p0, v2}, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_reportError(Ljava/lang/String;)V

    .line 229
    :cond_0
    if-ne v0, v1, :cond_1

    :goto_0
    invoke-virtual {p0, p1, v1}, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_writeFieldName(Lcom/flurry/org/codehaus/jackson/SerializableString;Z)V

    .line 230
    return-void

    .line 229
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final writeFieldName(Lcom/flurry/org/codehaus/jackson/io/SerializedString;)V
    .locals 4
    .param p1, "name"    # Lcom/flurry/org/codehaus/jackson/io/SerializedString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 213
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_writeContext:Lcom/flurry/org/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/io/SerializedString;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/flurry/org/codehaus/jackson/impl/JsonWriteContext;->writeFieldName(Ljava/lang/String;)I

    move-result v0

    .line 214
    .local v0, "status":I
    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    .line 215
    const-string v2, "Can not write a field name, expecting a value"

    invoke-virtual {p0, v2}, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_reportError(Ljava/lang/String;)V

    .line 217
    :cond_0
    if-ne v0, v1, :cond_1

    :goto_0
    invoke-virtual {p0, p1, v1}, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_writeFieldName(Lcom/flurry/org/codehaus/jackson/SerializableString;Z)V

    .line 218
    return-void

    .line 217
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final writeFieldName(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 193
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_writeContext:Lcom/flurry/org/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v2, p1}, Lcom/flurry/org/codehaus/jackson/impl/JsonWriteContext;->writeFieldName(Ljava/lang/String;)I

    move-result v0

    .line 194
    .local v0, "status":I
    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    .line 195
    const-string v2, "Can not write a field name, expecting a value"

    invoke-virtual {p0, v2}, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_reportError(Ljava/lang/String;)V

    .line 197
    :cond_0
    if-ne v0, v1, :cond_1

    :goto_0
    invoke-virtual {p0, p1, v1}, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_writeFieldName(Ljava/lang/String;Z)V

    .line 198
    return-void

    .line 197
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public writeNull()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 820
    const-string v0, "write null value"

    invoke-virtual {p0, v0}, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 821
    invoke-direct {p0}, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_writeNull()V

    .line 822
    return-void
.end method

.method public writeNumber(D)V
    .locals 1
    .param p1, "d"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 723
    iget-boolean v0, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_cfgNumbersAsStrings:Z

    if-nez v0, :cond_1

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    sget-object v0, Lcom/flurry/org/codehaus/jackson/JsonGenerator$Feature;->QUOTE_NON_NUMERIC_NUMBERS:Lcom/flurry/org/codehaus/jackson/JsonGenerator$Feature;

    invoke-virtual {p0, v0}, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->isEnabled(Lcom/flurry/org/codehaus/jackson/JsonGenerator$Feature;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 727
    :cond_1
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->writeString(Ljava/lang/String;)V

    .line 733
    :goto_0
    return-void

    .line 731
    :cond_2
    const-string v0, "write number"

    invoke-virtual {p0, v0}, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 732
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->writeRaw(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public writeNumber(F)V
    .locals 1
    .param p1, "f"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 739
    iget-boolean v0, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_cfgNumbersAsStrings:Z

    if-nez v0, :cond_1

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    sget-object v0, Lcom/flurry/org/codehaus/jackson/JsonGenerator$Feature;->QUOTE_NON_NUMERIC_NUMBERS:Lcom/flurry/org/codehaus/jackson/JsonGenerator$Feature;

    invoke-virtual {p0, v0}, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->isEnabled(Lcom/flurry/org/codehaus/jackson/JsonGenerator$Feature;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 743
    :cond_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->writeString(Ljava/lang/String;)V

    .line 749
    :goto_0
    return-void

    .line 747
    :cond_2
    const-string v0, "write number"

    invoke-virtual {p0, v0}, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 748
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->writeRaw(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public writeNumber(I)V
    .locals 2
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 656
    const-string v0, "write number"

    invoke-virtual {p0, v0}, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 657
    iget-boolean v0, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_cfgNumbersAsStrings:Z

    if-eqz v0, :cond_0

    .line 658
    invoke-direct {p0, p1}, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_writeQuotedInt(I)V

    .line 666
    :goto_0
    return-void

    .line 662
    :cond_0
    iget v0, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v0, v0, 0xb

    iget v1, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_1

    .line 663
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 665
    :cond_1
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v1, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    invoke-static {p1, v0, v1}, Lcom/flurry/org/codehaus/jackson/io/NumberOutput;->outputInt(I[CI)I

    move-result v0

    iput v0, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    goto :goto_0
.end method

.method public writeNumber(J)V
    .locals 3
    .param p1, "l"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 681
    const-string v0, "write number"

    invoke-virtual {p0, v0}, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 682
    iget-boolean v0, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_cfgNumbersAsStrings:Z

    if-eqz v0, :cond_0

    .line 683
    invoke-direct {p0, p1, p2}, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_writeQuotedLong(J)V

    .line 691
    :goto_0
    return-void

    .line 686
    :cond_0
    iget v0, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v0, v0, 0x15

    iget v1, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_1

    .line 688
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 690
    :cond_1
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v1, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    invoke-static {p1, p2, v0, v1}, Lcom/flurry/org/codehaus/jackson/io/NumberOutput;->outputLong(J[CI)I

    move-result v0

    iput v0, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    goto :goto_0
.end method

.method public writeNumber(Ljava/lang/String;)V
    .locals 1
    .param p1, "encodedValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 770
    const-string v0, "write number"

    invoke-virtual {p0, v0}, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 771
    iget-boolean v0, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_cfgNumbersAsStrings:Z

    if-eqz v0, :cond_0

    .line 772
    invoke-direct {p0, p1}, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_writeQuotedRaw(Ljava/lang/Object;)V

    .line 776
    :goto_0
    return-void

    .line 774
    :cond_0
    invoke-virtual {p0, p1}, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->writeRaw(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public writeNumber(Ljava/math/BigDecimal;)V
    .locals 1
    .param p1, "value"    # Ljava/math/BigDecimal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 756
    const-string v0, "write number"

    invoke-virtual {p0, v0}, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 757
    if-nez p1, :cond_0

    .line 758
    invoke-direct {p0}, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_writeNull()V

    .line 764
    :goto_0
    return-void

    .line 759
    :cond_0
    iget-boolean v0, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_cfgNumbersAsStrings:Z

    if-eqz v0, :cond_1

    .line 760
    invoke-direct {p0, p1}, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_writeQuotedRaw(Ljava/lang/Object;)V

    goto :goto_0

    .line 762
    :cond_1
    invoke-virtual {p1}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->writeRaw(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public writeNumber(Ljava/math/BigInteger;)V
    .locals 1
    .param p1, "value"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 708
    const-string v0, "write number"

    invoke-virtual {p0, v0}, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 709
    if-nez p1, :cond_0

    .line 710
    invoke-direct {p0}, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_writeNull()V

    .line 716
    :goto_0
    return-void

    .line 711
    :cond_0
    iget-boolean v0, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_cfgNumbersAsStrings:Z

    if-eqz v0, :cond_1

    .line 712
    invoke-direct {p0, p1}, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_writeQuotedRaw(Ljava/lang/Object;)V

    goto :goto_0

    .line 714
    :cond_1
    invoke-virtual {p1}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->writeRaw(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public writeRaw(C)V
    .locals 3
    .param p1, "c"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 590
    iget v0, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    iget v1, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_0

    .line 591
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 593
    :cond_0
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v1, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    aput-char p1, v0, v1

    .line 594
    return-void
.end method

.method public writeRaw(Ljava/lang/String;)V
    .locals 5
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 531
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 532
    .local v0, "len":I
    iget v2, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    iget v3, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    sub-int v1, v2, v3

    .line 534
    .local v1, "room":I
    if-nez v1, :cond_0

    .line 535
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 536
    iget v2, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    iget v3, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    sub-int v1, v2, v3

    .line 539
    :cond_0
    if-lt v1, v0, :cond_1

    .line 540
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v4, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    invoke-virtual {p1, v2, v0, v3, v4}, Ljava/lang/String;->getChars(II[CI)V

    .line 541
    iget v2, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    .line 545
    :goto_0
    return-void

    .line 543
    :cond_1
    invoke-direct {p0, p1}, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->writeRawLong(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public writeRaw(Ljava/lang/String;II)V
    .locals 4
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 552
    iget v1, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    iget v2, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    sub-int v0, v1, v2

    .line 554
    .local v0, "room":I
    if-ge v0, p3, :cond_0

    .line 555
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 556
    iget v1, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    iget v2, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    sub-int v0, v1, v2

    .line 559
    :cond_0
    if-lt v0, p3, :cond_1

    .line 560
    add-int v1, p2, p3

    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v3, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    invoke-virtual {p1, p2, v1, v2, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 561
    iget v1, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/2addr v1, p3

    iput v1, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    .line 565
    :goto_0
    return-void

    .line 563
    :cond_1
    add-int v1, p2, p3

    invoke-virtual {p1, p2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->writeRawLong(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public writeRaw([CII)V
    .locals 3
    .param p1, "text"    # [C
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 572
    const/16 v1, 0x20

    if-ge p3, v1, :cond_1

    .line 573
    iget v1, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    iget v2, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    sub-int v0, v1, v2

    .line 574
    .local v0, "room":I
    if-le p3, v0, :cond_0

    .line 575
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 577
    :cond_0
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v2, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    invoke-static {p1, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 578
    iget v1, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/2addr v1, p3

    iput v1, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    .line 584
    .end local v0    # "room":I
    :goto_0
    return-void

    .line 582
    :cond_1
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 583
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_writer:Ljava/io/Writer;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/Writer;->write([CII)V

    goto :goto_0
.end method

.method public writeRawUTF8String([BII)V
    .locals 0
    .param p1, "text"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 509
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_reportUnsupportedOperation()V

    .line 510
    return-void
.end method

.method public final writeStartArray()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 241
    const-string v0, "start an array"

    invoke-virtual {p0, v0}, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 242
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_writeContext:Lcom/flurry/org/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/impl/JsonWriteContext;->createChildArrayContext()Lcom/flurry/org/codehaus/jackson/impl/JsonWriteContext;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_writeContext:Lcom/flurry/org/codehaus/jackson/impl/JsonWriteContext;

    .line 243
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_cfgPrettyPrinter:Lcom/flurry/org/codehaus/jackson/PrettyPrinter;

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_cfgPrettyPrinter:Lcom/flurry/org/codehaus/jackson/PrettyPrinter;

    invoke-interface {v0, p0}, Lcom/flurry/org/codehaus/jackson/PrettyPrinter;->writeStartArray(Lcom/flurry/org/codehaus/jackson/JsonGenerator;)V

    .line 251
    :goto_0
    return-void

    .line 246
    :cond_0
    iget v0, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    iget v1, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_1

    .line 247
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 249
    :cond_1
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v1, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    const/16 v2, 0x5b

    aput-char v2, v0, v1

    goto :goto_0
.end method

.method public final writeStartObject()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 273
    const-string v0, "start an object"

    invoke-virtual {p0, v0}, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 274
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_writeContext:Lcom/flurry/org/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/impl/JsonWriteContext;->createChildObjectContext()Lcom/flurry/org/codehaus/jackson/impl/JsonWriteContext;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_writeContext:Lcom/flurry/org/codehaus/jackson/impl/JsonWriteContext;

    .line 275
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_cfgPrettyPrinter:Lcom/flurry/org/codehaus/jackson/PrettyPrinter;

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_cfgPrettyPrinter:Lcom/flurry/org/codehaus/jackson/PrettyPrinter;

    invoke-interface {v0, p0}, Lcom/flurry/org/codehaus/jackson/PrettyPrinter;->writeStartObject(Lcom/flurry/org/codehaus/jackson/JsonGenerator;)V

    .line 283
    :goto_0
    return-void

    .line 278
    :cond_0
    iget v0, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    iget v1, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_1

    .line 279
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 281
    :cond_1
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v1, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    const/16 v2, 0x7b

    aput-char v2, v0, v1

    goto :goto_0
.end method

.method public final writeString(Lcom/flurry/org/codehaus/jackson/SerializableString;)V
    .locals 8
    .param p1, "sstr"    # Lcom/flurry/org/codehaus/jackson/SerializableString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x22

    const/4 v6, 0x0

    .line 477
    const-string v3, "write text value"

    invoke-virtual {p0, v3}, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 478
    iget v3, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    iget v4, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    if-lt v3, v4, :cond_0

    .line 479
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 481
    :cond_0
    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v4, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    aput-char v7, v3, v4

    .line 483
    invoke-interface {p1}, Lcom/flurry/org/codehaus/jackson/SerializableString;->asQuotedChars()[C

    move-result-object v2

    .line 484
    .local v2, "text":[C
    array-length v0, v2

    .line 486
    .local v0, "len":I
    const/16 v3, 0x20

    if-ge v0, v3, :cond_3

    .line 487
    iget v3, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    iget v4, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    sub-int v1, v3, v4

    .line 488
    .local v1, "room":I
    if-le v0, v1, :cond_1

    .line 489
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 491
    :cond_1
    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v4, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    invoke-static {v2, v6, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 492
    iget v3, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/2addr v3, v0

    iput v3, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    .line 498
    .end local v1    # "room":I
    :goto_0
    iget v3, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    iget v4, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    if-lt v3, v4, :cond_2

    .line 499
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 501
    :cond_2
    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v4, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    aput-char v7, v3, v4

    .line 502
    return-void

    .line 495
    :cond_3
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 496
    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_writer:Ljava/io/Writer;

    invoke-virtual {v3, v2, v6, v0}, Ljava/io/Writer;->write([CII)V

    goto :goto_0
.end method

.method public writeString(Ljava/lang/String;)V
    .locals 4
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x22

    .line 439
    const-string v0, "write text value"

    invoke-virtual {p0, v0}, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 440
    if-nez p1, :cond_0

    .line 441
    invoke-direct {p0}, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_writeNull()V

    .line 454
    :goto_0
    return-void

    .line 444
    :cond_0
    iget v0, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    iget v1, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_1

    .line 445
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 447
    :cond_1
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v1, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    aput-char v3, v0, v1

    .line 448
    invoke-direct {p0, p1}, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_writeString(Ljava/lang/String;)V

    .line 450
    iget v0, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    iget v1, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_2

    .line 451
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 453
    :cond_2
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v1, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    aput-char v3, v0, v1

    goto :goto_0
.end method

.method public writeString([CII)V
    .locals 4
    .param p1, "text"    # [C
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x22

    .line 460
    const-string v0, "write text value"

    invoke-virtual {p0, v0}, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 461
    iget v0, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    iget v1, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_0

    .line 462
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 464
    :cond_0
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v1, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    aput-char v3, v0, v1

    .line 465
    invoke-direct {p0, p1, p2, p3}, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_writeString([CII)V

    .line 467
    iget v0, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    iget v1, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_1

    .line 468
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 470
    :cond_1
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v1, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    aput-char v3, v0, v1

    .line 471
    return-void
.end method

.method public final writeStringField(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 204
    invoke-virtual {p0, p1}, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 205
    invoke-virtual {p0, p2}, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->writeString(Ljava/lang/String;)V

    .line 206
    return-void
.end method

.method public writeUTF8String([BII)V
    .locals 0
    .param p1, "text"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 517
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->_reportUnsupportedOperation()V

    .line 518
    return-void
.end method
