.class public final Lcom/flurry/org/codehaus/jackson/util/TextBuffer;
.super Ljava/lang/Object;
.source "TextBuffer.java"


# static fields
.field static final MAX_SEGMENT_LEN:I = 0x40000

.field static final MIN_SEGMENT_LEN:I = 0x3e8

.field static final NO_CHARS:[C


# instance fields
.field private final _allocator:Lcom/flurry/org/codehaus/jackson/util/BufferRecycler;

.field private _currentSegment:[C

.field private _currentSize:I

.field private _hasSegments:Z

.field private _inputBuffer:[C

.field private _inputLen:I

.field private _inputStart:I

.field private _resultArray:[C

.field private _resultString:Ljava/lang/String;

.field private _segmentSize:I

.field private _segments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[C>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    new-array v0, v0, [C

    sput-object v0, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->NO_CHARS:[C

    return-void
.end method

.method public constructor <init>(Lcom/flurry/org/codehaus/jackson/util/BufferRecycler;)V
    .locals 1
    .param p1, "allocator"    # Lcom/flurry/org/codehaus/jackson/util/BufferRecycler;

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->_hasSegments:Z

    .line 122
    iput-object p1, p0, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->_allocator:Lcom/flurry/org/codehaus/jackson/util/BufferRecycler;

    .line 123
    return-void
.end method

.method private final _charArray(I)[C
    .locals 1
    .param p1, "len"    # I

    .prologue
    .line 705
    new-array v0, p1, [C

    return-object v0
.end method

.method private buildResultArray()[C
    .locals 11

    .prologue
    const/4 v8, 0x1

    const/4 v10, 0x0

    .line 671
    iget-object v7, p0, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->_resultString:Ljava/lang/String;

    if-eqz v7, :cond_0

    .line 672
    iget-object v7, p0, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->_resultString:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    .line 701
    :goto_0
    return-object v5

    .line 677
    :cond_0
    iget v7, p0, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->_inputStart:I

    if-ltz v7, :cond_2

    .line 678
    iget v7, p0, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->_inputLen:I

    if-ge v7, v8, :cond_1

    .line 679
    sget-object v5, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->NO_CHARS:[C

    goto :goto_0

    .line 681
    :cond_1
    iget v7, p0, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->_inputLen:I

    invoke-direct {p0, v7}, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->_charArray(I)[C

    move-result-object v5

    .line 682
    .local v5, "result":[C
    iget-object v7, p0, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->_inputBuffer:[C

    iget v8, p0, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->_inputStart:I

    iget v9, p0, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->_inputLen:I

    invoke-static {v7, v8, v5, v10, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 685
    .end local v5    # "result":[C
    :cond_2
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->size()I

    move-result v6

    .line 686
    .local v6, "size":I
    if-ge v6, v8, :cond_3

    .line 687
    sget-object v5, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->NO_CHARS:[C

    goto :goto_0

    .line 689
    :cond_3
    const/4 v4, 0x0

    .line 690
    .local v4, "offset":I
    invoke-direct {p0, v6}, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->_charArray(I)[C

    move-result-object v5

    .line 691
    .restart local v5    # "result":[C
    iget-object v7, p0, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->_segments:Ljava/util/ArrayList;

    if-eqz v7, :cond_4

    .line 692
    const/4 v2, 0x0

    .local v2, "i":I
    iget-object v7, p0, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->_segments:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v3

    .local v3, "len":I
    :goto_1
    if-ge v2, v3, :cond_4

    .line 693
    iget-object v7, p0, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->_segments:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [C

    move-object v0, v7

    check-cast v0, [C

    .line 694
    .local v0, "curr":[C
    array-length v1, v0

    .line 695
    .local v1, "currLen":I
    invoke-static {v0, v10, v5, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 696
    add-int/2addr v4, v1

    .line 692
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 699
    .end local v0    # "curr":[C
    .end local v1    # "currLen":I
    .end local v2    # "i":I
    .end local v3    # "len":I
    :cond_4
    iget-object v7, p0, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->_currentSegment:[C

    iget v8, p0, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->_currentSize:I

    invoke-static {v7, v10, v5, v4, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method private final clearSegments()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 242
    iput-boolean v1, p0, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->_hasSegments:Z

    .line 250
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->_segments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 251
    iput v1, p0, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->_segmentSize:I

    iput v1, p0, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->_currentSize:I

    .line 252
    return-void
.end method

.method private expand(I)V
    .locals 5
    .param p1, "minNewSegmentSize"    # I

    .prologue
    .line 651
    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->_segments:Ljava/util/ArrayList;

    if-nez v3, :cond_0

    .line 652
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->_segments:Ljava/util/ArrayList;

    .line 654
    :cond_0
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->_currentSegment:[C

    .line 655
    .local v0, "curr":[C
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->_hasSegments:Z

    .line 656
    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->_segments:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 657
    iget v3, p0, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->_segmentSize:I

    array-length v4, v0

    add-int/2addr v3, v4

    iput v3, p0, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->_segmentSize:I

    .line 658
    array-length v1, v0

    .line 660
    .local v1, "oldLen":I
    shr-int/lit8 v2, v1, 0x1

    .line 661
    .local v2, "sizeAddition":I
    if-ge v2, p1, :cond_1

    .line 662
    move v2, p1

    .line 664
    :cond_1
    const/high16 v3, 0x40000

    add-int v4, v1, v2

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->_charArray(I)[C

    move-result-object v0

    .line 665
    const/4 v3, 0x0

    iput v3, p0, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->_currentSize:I

    .line 666
    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->_currentSegment:[C

    .line 667
    return-void
.end method

.method private final findBuffer(I)[C
    .locals 2
    .param p1, "needed"    # I

    .prologue
    .line 234
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->_allocator:Lcom/flurry/org/codehaus/jackson/util/BufferRecycler;

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->_allocator:Lcom/flurry/org/codehaus/jackson/util/BufferRecycler;

    sget-object v1, Lcom/flurry/org/codehaus/jackson/util/BufferRecycler$CharBufferType;->TEXT_BUFFER:Lcom/flurry/org/codehaus/jackson/util/BufferRecycler$CharBufferType;

    invoke-virtual {v0, v1, p1}, Lcom/flurry/org/codehaus/jackson/util/BufferRecycler;->allocCharBuffer(Lcom/flurry/org/codehaus/jackson/util/BufferRecycler$CharBufferType;I)[C

    move-result-object v0

    .line 237
    :goto_0
    return-object v0

    :cond_0
    const/16 v0, 0x3e8

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-array v0, v0, [C

    goto :goto_0
.end method

.method private unshare(I)V
    .locals 6
    .param p1, "needExtra"    # I

    .prologue
    const/4 v5, 0x0

    .line 625
    iget v2, p0, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->_inputLen:I

    .line 626
    .local v2, "sharedLen":I
    iput v5, p0, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->_inputLen:I

    .line 627
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->_inputBuffer:[C

    .line 628
    .local v0, "inputBuf":[C
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->_inputBuffer:[C

    .line 629
    iget v3, p0, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->_inputStart:I

    .line 630
    .local v3, "start":I
    const/4 v4, -0x1

    iput v4, p0, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->_inputStart:I

    .line 633
    add-int v1, v2, p1

    .line 634
    .local v1, "needed":I
    iget-object v4, p0, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->_currentSegment:[C

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->_currentSegment:[C

    array-length v4, v4

    if-le v1, v4, :cond_1

    .line 635
    :cond_0
    invoke-direct {p0, v1}, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->findBuffer(I)[C

    move-result-object v4

    iput-object v4, p0, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->_currentSegment:[C

    .line 637
    :cond_1
    if-lez v2, :cond_2

    .line 638
    iget-object v4, p0, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->_currentSegment:[C

    invoke-static {v0, v3, v4, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 640
    :cond_2
    iput v5, p0, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->_segmentSize:I

    .line 641
    iput v2, p0, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->_currentSize:I

    .line 642
    return-void
.end method


# virtual methods
.method public append(C)V
    .locals 3
    .param p1, "c"    # C

    .prologue
    const/4 v2, 0x0

    .line 430
    iget v1, p0, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->_inputStart:I

    if-ltz v1, :cond_0

    .line 431
    const/16 v1, 0x10

    invoke-direct {p0, v1}, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->unshare(I)V

    .line 433
    :cond_0
    iput-object v2, p0, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->_resultString:Ljava/lang/String;

    .line 434
    iput-object v2, p0, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->_resultArray:[C

    .line 436
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->_currentSegment:[C

    .line 437
    .local v0, "curr":[C
    iget v1, p0, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->_currentSize:I

    array-length v2, v0

    if-lt v1, v2, :cond_1

    .line 438
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->expand(I)V

    .line 439
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->_currentSegment:[C

    .line 441
    :cond_1
    iget v1, p0, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->_currentSize:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->_currentSize:I

    aput-char p1, v0, v1

    .line 442
    return-void
.end method

.method public append(Ljava/lang/String;II)V
    .locals 5
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "offset"    # I
    .param p3, "len"    # I

    .prologue
    const/4 v3, 0x0

    .line 478
    iget v2, p0, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->_inputStart:I

    if-ltz v2, :cond_0

    .line 479
    invoke-direct {p0, p3}, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->unshare(I)V

    .line 481
    :cond_0
    iput-object v3, p0, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->_resultString:Ljava/lang/String;

    .line 482
    iput-object v3, p0, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->_resultArray:[C

    .line 485
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->_currentSegment:[C

    .line 486
    .local v0, "curr":[C
    array-length v2, v0

    iget v3, p0, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->_currentSize:I

    sub-int v1, v2, v3

    .line 487
    .local v1, "max":I
    if-lt v1, p3, :cond_1

    .line 488
    add-int v2, p2, p3

    iget v3, p0, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->_currentSize:I

    invoke-virtual {p1, p2, v2, v0, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 489
    iget v2, p0, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->_currentSize:I

    add-int/2addr v2, p3

    iput v2, p0, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->_currentSize:I

    .line 504
    :goto_0
    return-void

    .line 492
    :cond_1
    if-lez v1, :cond_2

    .line 493
    add-int v2, p2, v1

    iget v3, p0, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->_currentSize:I

    invoke-virtual {p1, p2, v2, v0, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 494
    sub-int/2addr p3, v1

    .line 495
    add-int/2addr p2, v1

    .line 500
    :cond_2
    invoke-direct {p0, p3}, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->expand(I)V

    .line 501
    add-int v2, p2, p3

    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->_currentSegment:[C

    const/4 v4, 0x0

    invoke-virtual {p1, p2, v2, v3, v4}, Ljava/lang/String;->getChars(II[CI)V

    .line 502
    iput p3, p0, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->_currentSize:I

    goto :goto_0
.end method

.method public append([CII)V
    .locals 4
    .param p1, "c"    # [C
    .param p2, "start"    # I
    .param p3, "len"    # I

    .prologue
    const/4 v3, 0x0

    .line 447
    iget v2, p0, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->_inputStart:I

    if-ltz v2, :cond_0

    .line 448
    invoke-direct {p0, p3}, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->unshare(I)V

    .line 450
    :cond_0
    iput-object v3, p0, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->_resultString:Ljava/lang/String;

    .line 451
    iput-object v3, p0, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->_resultArray:[C

    .line 454
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->_currentSegment:[C

    .line 455
    .local v0, "curr":[C
    array-length v2, v0

    iget v3, p0, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->_currentSize:I

    sub-int v1, v2, v3

    .line 457
    .local v1, "max":I
    if-lt v1, p3, :cond_1

    .line 458
    iget v2, p0, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->_currentSize:I

    invoke-static {p1, p2, v0, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 459
    iget v2, p0, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->_currentSize:I

    add-int/2addr v2, p3

    iput v2, p0, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->_currentSize:I

    .line 473
    :goto_0
    return-void

    .line 462
    :cond_1
    if-lez v1, :cond_2

    .line 463
    iget v2, p0, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->_currentSize:I

    invoke-static {p1, p2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 464
    add-int/2addr p2, v1

    .line 465
    sub-int/2addr p3, v1

    .line 469
    :cond_2
    invoke-direct {p0, p3}, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->expand(I)V

    .line 470
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->_currentSegment:[C

    const/4 v3, 0x0

    invoke-static {p1, p2, v2, v3, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 471
    iput p3, p0, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->_currentSize:I

    goto :goto_0
.end method

.method public contentsAsArray()[C
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->_resultArray:[C

    .line 373
    .local v0, "result":[C
    if-nez v0, :cond_0

    .line 374
    invoke-direct {p0}, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->buildResultArray()[C

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->_resultArray:[C

    .line 376
    :cond_0
    return-object v0
.end method

.method public contentsAsDecimal()Ljava/math/BigDecimal;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 387
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->_resultArray:[C

    if-eqz v0, :cond_0

    .line 388
    new-instance v0, Ljava/math/BigDecimal;

    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->_resultArray:[C

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>([C)V

    .line 399
    :goto_0
    return-object v0

    .line 391
    :cond_0
    iget v0, p0, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->_inputStart:I

    if-ltz v0, :cond_1

    .line 392
    new-instance v0, Ljava/math/BigDecimal;

    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->_inputBuffer:[C

    iget v2, p0, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->_inputStart:I

    iget v3, p0, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->_inputLen:I

    invoke-direct {v0, v1, v2, v3}, Ljava/math/BigDecimal;-><init>([CII)V

    goto :goto_0

    .line 395
    :cond_1
    iget v0, p0, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->_segmentSize:I

    if-nez v0, :cond_2

    .line 396
    new-instance v0, Ljava/math/BigDecimal;

    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->_currentSegment:[C

    const/4 v2, 0x0

    iget v3, p0, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->_currentSize:I

    invoke-direct {v0, v1, v2, v3}, Ljava/math/BigDecimal;-><init>([CII)V

    goto :goto_0

    .line 399
    :cond_2
    new-instance v0, Ljava/math/BigDecimal;

    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->contentsAsArray()[C

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>([C)V

    goto :goto_0
.end method

.method public contentsAsDouble()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 409
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->contentsAsString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/flurry/org/codehaus/jackson/io/NumberInput;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public contentsAsString()Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v8, 0x0

    .line 333
    iget-object v6, p0, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->_resultString:Ljava/lang/String;

    if-nez v6, :cond_0

    .line 335
    iget-object v6, p0, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->_resultArray:[C

    if-eqz v6, :cond_1

    .line 336
    new-instance v6, Ljava/lang/String;

    iget-object v7, p0, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->_resultArray:[C

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>([C)V

    iput-object v6, p0, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->_resultString:Ljava/lang/String;

    .line 367
    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->_resultString:Ljava/lang/String;

    :goto_1
    return-object v6

    .line 339
    :cond_1
    iget v6, p0, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->_inputStart:I

    if-ltz v6, :cond_3

    .line 340
    iget v6, p0, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->_inputLen:I

    const/4 v7, 0x1

    if-ge v6, v7, :cond_2

    .line 341
    const-string v6, ""

    iput-object v6, p0, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->_resultString:Ljava/lang/String;

    goto :goto_1

    .line 343
    :cond_2
    new-instance v6, Ljava/lang/String;

    iget-object v7, p0, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->_inputBuffer:[C

    iget v8, p0, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->_inputStart:I

    iget v9, p0, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->_inputLen:I

    invoke-direct {v6, v7, v8, v9}, Ljava/lang/String;-><init>([CII)V

    iput-object v6, p0, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->_resultString:Ljava/lang/String;

    goto :goto_0

    .line 346
    :cond_3
    iget v5, p0, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->_segmentSize:I

    .line 347
    .local v5, "segLen":I
    iget v1, p0, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->_currentSize:I

    .line 349
    .local v1, "currLen":I
    if-nez v5, :cond_5

    .line 350
    if-nez v1, :cond_4

    const-string v6, ""

    :goto_2
    iput-object v6, p0, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->_resultString:Ljava/lang/String;

    goto :goto_0

    :cond_4
    new-instance v6, Ljava/lang/String;

    iget-object v7, p0, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->_currentSegment:[C

    invoke-direct {v6, v7, v8, v1}, Ljava/lang/String;-><init>([CII)V

    goto :goto_2

    .line 352
    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    add-int v6, v5, v1

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 354
    .local v4, "sb":Ljava/lang/StringBuilder;
    iget-object v6, p0, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->_segments:Ljava/util/ArrayList;

    if-eqz v6, :cond_6

    .line 355
    const/4 v2, 0x0

    .local v2, "i":I
    iget-object v6, p0, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->_segments:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    .local v3, "len":I
    :goto_3
    if-ge v2, v3, :cond_6

    .line 356
    iget-object v6, p0, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->_segments:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    .line 357
    .local v0, "curr":[C
    array-length v6, v0

    invoke-virtual {v4, v0, v8, v6}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 355
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 361
    .end local v0    # "curr":[C
    .end local v2    # "i":I
    .end local v3    # "len":I
    :cond_6
    iget-object v6, p0, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->_currentSegment:[C

    iget v7, p0, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->_currentSize:I

    invoke-virtual {v4, v6, v8, v7}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 362
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->_resultString:Ljava/lang/String;

    goto :goto_0
.end method

.method public final emptyAndGetCurrentSegment()[C
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 535
    const/4 v1, -0x1

    iput v1, p0, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->_inputStart:I

    .line 536
    iput v2, p0, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->_currentSize:I

    .line 537
    iput v2, p0, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->_inputLen:I

    .line 539
    iput-object v3, p0, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->_inputBuffer:[C

    .line 540
    iput-object v3, p0, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->_resultString:Ljava/lang/String;

    .line 541
    iput-object v3, p0, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->_resultArray:[C

    .line 544
    iget-boolean v1, p0, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->_hasSegments:Z

    if-eqz v1, :cond_0

    .line 545
    invoke-direct {p0}, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->clearSegments()V

    .line 547
    :cond_0
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->_currentSegment:[C

    .line 548
    .local v0, "curr":[C
    if-nez v0, :cond_1

    .line 549
    invoke-direct {p0, v2}, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->findBuffer(I)[C

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->_currentSegment:[C

    .line 551
    :cond_1
    return-object v0
.end method

.method public ensureNotShared()V
    .locals 1

    .prologue
    .line 423
    iget v0, p0, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->_inputStart:I

    if-ltz v0, :cond_0

    .line 424
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->unshare(I)V

    .line 426
    :cond_0
    return-void
.end method

.method public expandCurrentSegment()[C
    .locals 6

    .prologue
    const/high16 v5, 0x40000

    const/4 v4, 0x0

    .line 586
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->_currentSegment:[C

    .line 588
    .local v0, "curr":[C
    array-length v1, v0

    .line 590
    .local v1, "len":I
    if-ne v1, v5, :cond_0

    const v2, 0x40001

    .line 592
    .local v2, "newLen":I
    :goto_0
    invoke-direct {p0, v2}, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->_charArray(I)[C

    move-result-object v3

    iput-object v3, p0, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->_currentSegment:[C

    .line 593
    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->_currentSegment:[C

    invoke-static {v0, v4, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 594
    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->_currentSegment:[C

    return-object v3

    .line 590
    .end local v2    # "newLen":I
    :cond_0
    shr-int/lit8 v3, v1, 0x1

    add-int/2addr v3, v1

    invoke-static {v5, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_0
.end method

.method public finishCurrentSegment()[C
    .locals 5

    .prologue
    .line 564
    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->_segments:Ljava/util/ArrayList;

    if-nez v3, :cond_0

    .line 565
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->_segments:Ljava/util/ArrayList;

    .line 567
    :cond_0
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->_hasSegments:Z

    .line 568
    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->_segments:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->_currentSegment:[C

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 569
    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->_currentSegment:[C

    array-length v2, v3

    .line 570
    .local v2, "oldLen":I
    iget v3, p0, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->_segmentSize:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->_segmentSize:I

    .line 572
    shr-int/lit8 v3, v2, 0x1

    add-int/2addr v3, v2

    const/high16 v4, 0x40000

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 573
    .local v1, "newLen":I
    invoke-direct {p0, v1}, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->_charArray(I)[C

    move-result-object v0

    .line 574
    .local v0, "curr":[C
    const/4 v3, 0x0

    iput v3, p0, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->_currentSize:I

    .line 575
    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->_currentSegment:[C

    .line 576
    return-object v0
.end method

.method public getCurrentSegment()[C
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 518
    iget v1, p0, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->_inputStart:I

    if-ltz v1, :cond_1

    .line 519
    invoke-direct {p0, v3}, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->unshare(I)V

    .line 529
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->_currentSegment:[C

    return-object v1

    .line 521
    :cond_1
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->_currentSegment:[C

    .line 522
    .local v0, "curr":[C
    if-nez v0, :cond_2

    .line 523
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->findBuffer(I)[C

    move-result-object v1

    iput-object v1, p0, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->_currentSegment:[C

    goto :goto_0

    .line 524
    :cond_2
    iget v1, p0, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->_currentSize:I

    array-length v2, v0

    if-lt v1, v2, :cond_0

    .line 526
    invoke-direct {p0, v3}, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->expand(I)V

    goto :goto_0
.end method

.method public getCurrentSegmentSize()I
    .locals 1

    .prologue
    .line 555
    iget v0, p0, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->_currentSize:I

    return v0
.end method

.method public getTextBuffer()[C
    .locals 1

    .prologue
    .line 308
    iget v0, p0, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->_inputStart:I

    if-ltz v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->_inputBuffer:[C

    .line 322
    :goto_0
    return-object v0

    .line 311
    :cond_0
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->_resultArray:[C

    if-eqz v0, :cond_1

    .line 312
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->_resultArray:[C

    goto :goto_0

    .line 314
    :cond_1
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->_resultString:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 315
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->_resultString:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->_resultArray:[C

    goto :goto_0

    .line 318
    :cond_2
    iget-boolean v0, p0, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->_hasSegments:Z

    if-nez v0, :cond_3

    .line 319
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->_currentSegment:[C

    goto :goto_0

    .line 322
    :cond_3
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->contentsAsArray()[C

    move-result-object v0

    goto :goto_0
.end method

.method public getTextOffset()I
    .locals 1

    .prologue
    .line 283
    iget v0, p0, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->_inputStart:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->_inputStart:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTextAsCharacters()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 295
    iget v1, p0, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->_inputStart:I

    if-gez v1, :cond_0

    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->_resultArray:[C

    if-eqz v1, :cond_1

    .line 302
    :cond_0
    :goto_0
    return v0

    .line 299
    :cond_1
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->_resultString:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 300
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public releaseBuffers()V
    .locals 3

    .prologue
    .line 136
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->_allocator:Lcom/flurry/org/codehaus/jackson/util/BufferRecycler;

    if-nez v1, :cond_1

    .line 137
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->resetWithEmpty()V

    .line 148
    :cond_0
    :goto_0
    return-void

    .line 139
    :cond_1
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->_currentSegment:[C

    if-eqz v1, :cond_0

    .line 141
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->resetWithEmpty()V

    .line 143
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->_currentSegment:[C

    .line 144
    .local v0, "buf":[C
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->_currentSegment:[C

    .line 145
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->_allocator:Lcom/flurry/org/codehaus/jackson/util/BufferRecycler;

    sget-object v2, Lcom/flurry/org/codehaus/jackson/util/BufferRecycler$CharBufferType;->TEXT_BUFFER:Lcom/flurry/org/codehaus/jackson/util/BufferRecycler$CharBufferType;

    invoke-virtual {v1, v2, v0}, Lcom/flurry/org/codehaus/jackson/util/BufferRecycler;->releaseCharBuffer(Lcom/flurry/org/codehaus/jackson/util/BufferRecycler$CharBufferType;[C)V

    goto :goto_0
.end method

.method public resetWithCopy([CII)V
    .locals 3
    .param p1, "buf"    # [C
    .param p2, "start"    # I
    .param p3, "len"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 195
    iput-object v1, p0, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->_inputBuffer:[C

    .line 196
    const/4 v0, -0x1

    iput v0, p0, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->_inputStart:I

    .line 197
    iput v2, p0, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->_inputLen:I

    .line 199
    iput-object v1, p0, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->_resultString:Ljava/lang/String;

    .line 200
    iput-object v1, p0, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->_resultArray:[C

    .line 203
    iget-boolean v0, p0, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->_hasSegments:Z

    if-eqz v0, :cond_1

    .line 204
    invoke-direct {p0}, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->clearSegments()V

    .line 208
    :cond_0
    :goto_0
    iput v2, p0, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->_segmentSize:I

    iput v2, p0, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->_currentSize:I

    .line 209
    invoke-virtual {p0, p1, p2, p3}, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->append([CII)V

    .line 210
    return-void

    .line 205
    :cond_1
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->_currentSegment:[C

    if-nez v0, :cond_0

    .line 206
    invoke-direct {p0, p3}, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->findBuffer(I)[C

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->_currentSegment:[C

    goto :goto_0
.end method

.method public resetWithEmpty()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 156
    const/4 v0, -0x1

    iput v0, p0, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->_inputStart:I

    .line 157
    iput v2, p0, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->_currentSize:I

    .line 158
    iput v2, p0, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->_inputLen:I

    .line 160
    iput-object v1, p0, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->_inputBuffer:[C

    .line 161
    iput-object v1, p0, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->_resultString:Ljava/lang/String;

    .line 162
    iput-object v1, p0, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->_resultArray:[C

    .line 165
    iget-boolean v0, p0, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->_hasSegments:Z

    if-eqz v0, :cond_0

    .line 166
    invoke-direct {p0}, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->clearSegments()V

    .line 168
    :cond_0
    return-void
.end method

.method public resetWithShared([CII)V
    .locals 1
    .param p1, "buf"    # [C
    .param p2, "start"    # I
    .param p3, "len"    # I

    .prologue
    const/4 v0, 0x0

    .line 179
    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->_resultString:Ljava/lang/String;

    .line 180
    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->_resultArray:[C

    .line 183
    iput-object p1, p0, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->_inputBuffer:[C

    .line 184
    iput p2, p0, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->_inputStart:I

    .line 185
    iput p3, p0, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->_inputLen:I

    .line 188
    iget-boolean v0, p0, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->_hasSegments:Z

    if-eqz v0, :cond_0

    .line 189
    invoke-direct {p0}, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->clearSegments()V

    .line 191
    :cond_0
    return-void
.end method

.method public resetWithString(Ljava/lang/String;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 214
    iput-object v2, p0, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->_inputBuffer:[C

    .line 215
    const/4 v0, -0x1

    iput v0, p0, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->_inputStart:I

    .line 216
    iput v1, p0, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->_inputLen:I

    .line 218
    iput-object p1, p0, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->_resultString:Ljava/lang/String;

    .line 219
    iput-object v2, p0, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->_resultArray:[C

    .line 221
    iget-boolean v0, p0, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->_hasSegments:Z

    if-eqz v0, :cond_0

    .line 222
    invoke-direct {p0}, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->clearSegments()V

    .line 224
    :cond_0
    iput v1, p0, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->_currentSize:I

    .line 226
    return-void
.end method

.method public setCurrentLength(I)V
    .locals 0
    .param p1, "len"    # I

    .prologue
    .line 559
    iput p1, p0, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->_currentSize:I

    .line 560
    return-void
.end method

.method public size()I
    .locals 2

    .prologue
    .line 264
    iget v0, p0, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->_inputStart:I

    if-ltz v0, :cond_0

    .line 265
    iget v0, p0, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->_inputLen:I

    .line 274
    :goto_0
    return v0

    .line 267
    :cond_0
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->_resultArray:[C

    if-eqz v0, :cond_1

    .line 268
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->_resultArray:[C

    array-length v0, v0

    goto :goto_0

    .line 270
    :cond_1
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->_resultString:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 271
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->_resultString:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_0

    .line 274
    :cond_2
    iget v0, p0, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->_segmentSize:I

    iget v1, p0, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->_currentSize:I

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 610
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->contentsAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
