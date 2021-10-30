.class public Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;
.super Lcom/flurry/org/apache/avro/io/BufferedBinaryEncoder;
.source "BlockingBinaryEncoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$1;,
        Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final STACK_STEP:I = 0xa


# instance fields
.field private blockStack:[Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue;

.field private buf:[B

.field private headerBuffer:[B

.field private pos:I

.field private stackTop:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-class v0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Ljava/io/OutputStream;II)V
    .locals 4
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "blockBufferSize"    # I
    .param p3, "binaryEncoderBufferSize"    # I

    .prologue
    const/4 v3, 0x0

    .line 204
    invoke-direct {p0, p1, p3}, Lcom/flurry/org/apache/avro/io/BufferedBinaryEncoder;-><init>(Ljava/io/OutputStream;I)V

    .line 180
    const/4 v1, -0x1

    iput v1, p0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->stackTop:I

    .line 185
    const/16 v1, 0xc

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->headerBuffer:[B

    .line 205
    new-array v1, p2, [B

    iput-object v1, p0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->buf:[B

    .line 206
    iput v3, p0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->pos:I

    .line 207
    new-array v1, v3, [Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue;

    iput-object v1, p0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->blockStack:[Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue;

    .line 208
    invoke-direct {p0}, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->expandStack()V

    .line 209
    iget-object v1, p0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->blockStack:[Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue;

    iget v2, p0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->stackTop:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->stackTop:I

    aget-object v0, v1, v2

    .line 210
    .local v0, "bv":Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue;
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue;->type:Lcom/flurry/org/apache/avro/Schema$Type;

    .line 211
    sget-object v1, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue$State;->ROOT:Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue$State;

    iput-object v1, v0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue;->state:Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue$State;

    .line 212
    iput v3, v0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue;->lastFullItem:I

    iput v3, v0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue;->start:I

    .line 213
    const/4 v1, 0x1

    iput v1, v0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue;->items:I

    .line 215
    sget-boolean v1, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->check()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 216
    :cond_0
    return-void
.end method

.method private check()Z
    .locals 6

    .prologue
    .line 188
    sget-boolean v3, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->buf:[B

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 189
    :cond_0
    sget-boolean v3, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->$assertionsDisabled:Z

    if-nez v3, :cond_1

    iget v3, p0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->pos:I

    if-gez v3, :cond_1

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 190
    :cond_1
    sget-boolean v3, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->$assertionsDisabled:Z

    if-nez v3, :cond_2

    iget v3, p0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->pos:I

    iget-object v4, p0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->buf:[B

    array-length v4, v4

    if-le v3, v4, :cond_2

    new-instance v3, Ljava/lang/AssertionError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->pos:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->buf:[B

    array-length v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 192
    :cond_2
    sget-boolean v3, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->$assertionsDisabled:Z

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->blockStack:[Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue;

    if-nez v3, :cond_3

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 193
    :cond_3
    const/4 v1, 0x0

    .line 194
    .local v1, "prev":Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v3, p0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->stackTop:I

    if-gt v0, v3, :cond_4

    .line 195
    iget-object v3, p0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->blockStack:[Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue;

    aget-object v2, v3, v0

    .line 196
    .local v2, "v":Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue;
    iget v3, p0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->pos:I

    invoke-virtual {v2, v1, v3}, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue;->check(Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue;I)Z

    .line 197
    move-object v1, v2

    .line 194
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 199
    .end local v2    # "v":Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue;
    :cond_4
    const/4 v3, 0x1

    return v3
.end method

.method private compact()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 505
    sget-boolean v5, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->$assertionsDisabled:Z

    if-nez v5, :cond_0

    invoke-direct {p0}, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->check()Z

    move-result v5

    if-nez v5, :cond_0

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 508
    :cond_0
    const/4 v4, 0x0

    .line 510
    .local v4, "s":Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue;
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    iget v5, p0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->stackTop:I

    if-gt v1, v5, :cond_1

    .line 511
    iget-object v5, p0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->blockStack:[Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue;

    aget-object v4, v5, v1

    .line 512
    iget-object v5, v4, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue;->state:Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue$State;

    sget-object v6, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue$State;->REGULAR:Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue$State;

    if-ne v5, v6, :cond_2

    .line 514
    :cond_1
    sget-boolean v5, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->$assertionsDisabled:Z

    if-nez v5, :cond_3

    if-nez v4, :cond_3

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 510
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 525
    :cond_3
    iget-object v5, p0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->buf:[B

    iget v6, v4, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue;->start:I

    invoke-super {p0, v5, v10, v6}, Lcom/flurry/org/apache/avro/io/BufferedBinaryEncoder;->writeFixed([BII)V

    .line 528
    iget v5, v4, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue;->items:I

    if-ge v9, v5, :cond_4

    .line 529
    iget v5, v4, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue;->items:I

    add-int/lit8 v5, v5, -0x1

    neg-int v5, v5

    invoke-super {p0, v5}, Lcom/flurry/org/apache/avro/io/BufferedBinaryEncoder;->writeInt(I)V

    .line 530
    iget v5, v4, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue;->lastFullItem:I

    iget v6, v4, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue;->start:I

    sub-int/2addr v5, v6

    invoke-super {p0, v5}, Lcom/flurry/org/apache/avro/io/BufferedBinaryEncoder;->writeInt(I)V

    .line 531
    iget-object v5, p0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->buf:[B

    iget v6, v4, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue;->start:I

    iget v7, v4, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue;->lastFullItem:I

    iget v8, v4, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue;->start:I

    sub-int/2addr v7, v8

    invoke-super {p0, v5, v6, v7}, Lcom/flurry/org/apache/avro/io/BufferedBinaryEncoder;->writeFixed([BII)V

    .line 532
    iget v5, v4, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue;->lastFullItem:I

    iput v5, v4, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue;->start:I

    .line 533
    iput v9, v4, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue;->items:I

    .line 537
    :cond_4
    invoke-super {p0, v9}, Lcom/flurry/org/apache/avro/io/BufferedBinaryEncoder;->writeInt(I)V

    .line 541
    add-int/lit8 v5, v1, 0x1

    iget v6, p0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->stackTop:I

    if-gt v5, v6, :cond_5

    iget-object v5, p0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->blockStack:[Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue;

    add-int/lit8 v6, v1, 0x1

    aget-object v3, v5, v6

    .line 543
    .local v3, "n":Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue;
    :goto_1
    if-nez v3, :cond_6

    iget v0, p0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->pos:I

    .line 544
    .local v0, "end":I
    :goto_2
    iget-object v5, p0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->buf:[B

    iget v6, v4, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue;->lastFullItem:I

    iget v7, v4, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue;->lastFullItem:I

    sub-int v7, v0, v7

    invoke-super {p0, v5, v6, v7}, Lcom/flurry/org/apache/avro/io/BufferedBinaryEncoder;->writeFixed([BII)V

    .line 547
    iget-object v5, p0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->buf:[B

    iget-object v6, p0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->buf:[B

    iget v7, p0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->pos:I

    sub-int/2addr v7, v0

    invoke-static {v5, v0, v6, v10, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 548
    add-int/lit8 v2, v1, 0x1

    .local v2, "j":I
    :goto_3
    iget v5, p0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->stackTop:I

    if-gt v2, v5, :cond_7

    .line 549
    iget-object v5, p0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->blockStack:[Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue;

    aget-object v3, v5, v2

    .line 550
    iget v5, v3, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue;->start:I

    sub-int/2addr v5, v0

    iput v5, v3, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue;->start:I

    .line 551
    iget v5, v3, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue;->lastFullItem:I

    sub-int/2addr v5, v0

    iput v5, v3, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue;->lastFullItem:I

    .line 548
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 541
    .end local v0    # "end":I
    .end local v2    # "j":I
    .end local v3    # "n":Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue;
    :cond_5
    const/4 v3, 0x0

    goto :goto_1

    .line 543
    .restart local v3    # "n":Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue;
    :cond_6
    iget v0, v3, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue;->start:I

    goto :goto_2

    .line 553
    .restart local v0    # "end":I
    .restart local v2    # "j":I
    :cond_7
    iget v5, p0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->pos:I

    sub-int/2addr v5, v0

    iput v5, p0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->pos:I

    .line 555
    sget-boolean v5, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->$assertionsDisabled:Z

    if-nez v5, :cond_8

    iget v5, v4, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue;->items:I

    if-eq v5, v9, :cond_8

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 556
    :cond_8
    iput v10, v4, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue;->lastFullItem:I

    iput v10, v4, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue;->start:I

    .line 557
    sget-object v5, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue$State;->OVERFLOW:Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue$State;

    iput-object v5, v4, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue;->state:Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue$State;

    .line 559
    sget-boolean v5, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->$assertionsDisabled:Z

    if-nez v5, :cond_9

    invoke-direct {p0}, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->check()Z

    move-result v5

    if-nez v5, :cond_9

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 560
    :cond_9
    return-void
.end method

.method private doWriteBytes([BII)V
    .locals 2
    .param p1, "bytes"    # [B
    .param p2, "start"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 468
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->buf:[B

    array-length v0, v0

    if-ge p3, v0, :cond_0

    .line 469
    invoke-direct {p0, p3}, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->ensureBounds(I)V

    .line 470
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->buf:[B

    iget v1, p0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->pos:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 471
    iget v0, p0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->pos:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->pos:I

    .line 478
    :goto_0
    return-void

    .line 473
    :cond_0
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->buf:[B

    array-length v0, v0

    invoke-direct {p0, v0}, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->ensureBounds(I)V

    .line 474
    sget-boolean v0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->blockStack:[Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue;

    iget v1, p0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->stackTop:I

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue;->state:Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue$State;

    sget-object v1, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue$State;->ROOT:Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue$State;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->blockStack:[Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue;

    iget v1, p0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->stackTop:I

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue;->state:Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue$State;

    sget-object v1, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue$State;->OVERFLOW:Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue$State;

    if-eq v0, v1, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 476
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->write([BII)V

    goto :goto_0
.end method

.method private endBlockedValue()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 391
    :goto_0
    sget-boolean v4, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->$assertionsDisabled:Z

    if-nez v4, :cond_0

    invoke-direct {p0}, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->check()Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 392
    :cond_0
    iget-object v4, p0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->blockStack:[Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue;

    iget v5, p0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->stackTop:I

    aget-object v3, v4, v5

    .line 393
    .local v3, "t":Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue;
    sget-boolean v4, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->$assertionsDisabled:Z

    if-nez v4, :cond_1

    iget-object v4, v3, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue;->state:Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue$State;

    sget-object v5, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue$State;->ROOT:Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue$State;

    if-ne v4, v5, :cond_1

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 394
    :cond_1
    iget-object v4, v3, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue;->state:Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue$State;

    sget-object v5, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue$State;->OVERFLOW:Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue$State;

    if-ne v4, v5, :cond_2

    .line 395
    invoke-direct {p0}, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->finishOverflow()V

    .line 397
    :cond_2
    sget-boolean v4, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->$assertionsDisabled:Z

    if-nez v4, :cond_3

    iget-object v4, v3, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue;->state:Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue$State;

    sget-object v5, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue$State;->REGULAR:Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue$State;

    if-eq v4, v5, :cond_3

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 398
    :cond_3
    iget v4, v3, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue;->items:I

    if-lez v4, :cond_4

    .line 399
    iget v4, p0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->pos:I

    iget v5, v3, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue;->start:I

    sub-int v0, v4, v5

    .line 400
    .local v0, "byteCount":I
    iget v4, v3, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue;->start:I

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->blockStack:[Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue;

    iget v5, p0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->stackTop:I

    add-int/lit8 v5, v5, -0x1

    aget-object v4, v4, v5

    iget-object v4, v4, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue;->state:Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue$State;

    sget-object v5, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue$State;->REGULAR:Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue$State;

    if-eq v4, v5, :cond_5

    .line 403
    iget v4, v3, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue;->items:I

    neg-int v4, v4

    invoke-super {p0, v4}, Lcom/flurry/org/apache/avro/io/BufferedBinaryEncoder;->writeInt(I)V

    .line 404
    invoke-super {p0, v0}, Lcom/flurry/org/apache/avro/io/BufferedBinaryEncoder;->writeInt(I)V

    .line 420
    .end local v0    # "byteCount":I
    :cond_4
    :goto_1
    iget v4, p0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->stackTop:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->stackTop:I

    .line 421
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->ensureBounds(I)V

    .line 422
    iget-object v4, p0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->buf:[B

    iget v5, p0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->pos:I

    aput-byte v7, v4, v5

    .line 423
    sget-boolean v4, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->$assertionsDisabled:Z

    if-nez v4, :cond_7

    invoke-direct {p0}, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->check()Z

    move-result v4

    if-nez v4, :cond_7

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 406
    .restart local v0    # "byteCount":I
    :cond_5
    const/4 v1, 0x0

    .line 407
    .local v1, "headerSize":I
    iget v4, v3, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue;->items:I

    neg-int v4, v4

    iget-object v5, p0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->headerBuffer:[B

    invoke-static {v4, v5, v1}, Lcom/flurry/org/apache/avro/io/BinaryData;->encodeInt(I[BI)I

    move-result v4

    add-int/2addr v1, v4

    .line 408
    iget-object v4, p0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->headerBuffer:[B

    invoke-static {v0, v4, v1}, Lcom/flurry/org/apache/avro/io/BinaryData;->encodeInt(I[BI)I

    move-result v4

    add-int/2addr v1, v4

    .line 409
    iget-object v4, p0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->buf:[B

    array-length v4, v4

    iget v5, p0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->pos:I

    add-int/2addr v5, v1

    if-lt v4, v5, :cond_6

    .line 410
    iget v4, p0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->pos:I

    add-int/2addr v4, v1

    iput v4, p0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->pos:I

    .line 411
    iget v2, v3, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue;->start:I

    .line 412
    .local v2, "m":I
    iget-object v4, p0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->buf:[B

    iget-object v5, p0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->buf:[B

    add-int v6, v2, v1

    invoke-static {v4, v2, v5, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 413
    iget-object v4, p0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->headerBuffer:[B

    iget-object v5, p0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->buf:[B

    invoke-static {v4, v7, v5, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    .line 415
    .end local v2    # "m":I
    :cond_6
    invoke-direct {p0}, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->compact()V

    goto/16 :goto_0

    .line 424
    .end local v0    # "byteCount":I
    .end local v1    # "headerSize":I
    :cond_7
    iget-object v4, p0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->blockStack:[Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue;

    iget v5, p0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->stackTop:I

    aget-object v4, v4, v5

    iget-object v4, v4, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue;->state:Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue$State;

    sget-object v5, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue$State;->ROOT:Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue$State;

    if-ne v4, v5, :cond_8

    .line 425
    invoke-virtual {p0}, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->flush()V

    .line 427
    :cond_8
    return-void
.end method

.method private ensureBounds(I)V
    .locals 3
    .param p1, "l"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 456
    :goto_0
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->buf:[B

    array-length v0, v0

    iget v1, p0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->pos:I

    add-int/2addr v1, p1

    if-ge v0, v1, :cond_1

    .line 457
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->blockStack:[Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue;

    iget v1, p0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->stackTop:I

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue;->state:Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue$State;

    sget-object v1, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue$State;->REGULAR:Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue$State;

    if-ne v0, v1, :cond_0

    .line 458
    invoke-direct {p0}, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->compact()V

    goto :goto_0

    .line 460
    :cond_0
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->buf:[B

    iget v1, p0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->pos:I

    invoke-super {p0, v0, v2, v1}, Lcom/flurry/org/apache/avro/io/BufferedBinaryEncoder;->writeFixed([BII)V

    .line 461
    iput v2, p0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->pos:I

    goto :goto_0

    .line 464
    :cond_1
    return-void
.end method

.method private expandStack()V
    .locals 4

    .prologue
    .line 219
    iget-object v2, p0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->blockStack:[Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue;

    array-length v1, v2

    .line 220
    .local v1, "oldLength":I
    iget-object v2, p0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->blockStack:[Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue;

    iget-object v3, p0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->blockStack:[Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue;

    array-length v3, v3

    add-int/lit8 v3, v3, 0xa

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue;

    iput-object v2, p0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->blockStack:[Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue;

    .line 222
    move v0, v1

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->blockStack:[Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 223
    iget-object v2, p0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->blockStack:[Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue;

    new-instance v3, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue;

    invoke-direct {v3}, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue;-><init>()V

    aput-object v3, v2, v0

    .line 222
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 225
    :cond_0
    return-void
.end method

.method private finishOverflow()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 438
    iget-object v1, p0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->blockStack:[Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue;

    iget v2, p0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->stackTop:I

    aget-object v0, v1, v2

    .line 439
    .local v0, "s":Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue;
    iget-object v1, v0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue;->state:Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue$State;

    sget-object v2, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue$State;->OVERFLOW:Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue$State;

    if-eq v1, v2, :cond_0

    .line 440
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Not an overflow block"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 442
    :cond_0
    sget-boolean v1, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->check()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 445
    :cond_1
    iget-object v1, p0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->buf:[B

    iget v2, p0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->pos:I

    invoke-super {p0, v1, v3, v2}, Lcom/flurry/org/apache/avro/io/BufferedBinaryEncoder;->writeFixed([BII)V

    .line 446
    iput v3, p0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->pos:I

    .line 449
    sget-object v1, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue$State;->REGULAR:Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue$State;

    iput-object v1, v0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue;->state:Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue$State;

    .line 450
    iput v3, v0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue;->lastFullItem:I

    iput v3, v0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue;->start:I

    .line 451
    iput v3, v0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue;->items:I

    .line 452
    sget-boolean v1, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->$assertionsDisabled:Z

    if-nez v1, :cond_2

    invoke-direct {p0}, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->check()Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 453
    :cond_2
    return-void
.end method

.method private write([BII)V
    .locals 3
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 481
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->blockStack:[Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue;

    iget v1, p0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->stackTop:I

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue;->state:Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue$State;

    sget-object v1, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue$State;->ROOT:Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue$State;

    if-ne v0, v1, :cond_0

    .line 482
    invoke-super {p0, p1, p2, p3}, Lcom/flurry/org/apache/avro/io/BufferedBinaryEncoder;->writeFixed([BII)V

    .line 500
    :goto_0
    sget-boolean v0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->$assertionsDisabled:Z

    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->check()Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 484
    :cond_0
    sget-boolean v0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->check()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 485
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->buf:[B

    array-length v0, v0

    iget v1, p0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->pos:I

    add-int/2addr v1, p3

    if-ge v0, v1, :cond_3

    .line 486
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->blockStack:[Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue;

    iget v1, p0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->stackTop:I

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue;->state:Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue$State;

    sget-object v1, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue$State;->REGULAR:Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue$State;

    if-ne v0, v1, :cond_2

    .line 487
    invoke-direct {p0}, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->compact()V

    goto :goto_1

    .line 489
    :cond_2
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->buf:[B

    iget v1, p0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->pos:I

    invoke-super {p0, v0, v2, v1}, Lcom/flurry/org/apache/avro/io/BufferedBinaryEncoder;->writeFixed([BII)V

    .line 490
    iput v2, p0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->pos:I

    .line 491
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->buf:[B

    array-length v0, v0

    if-gt v0, p3, :cond_1

    .line 492
    invoke-super {p0, p1, p2, p3}, Lcom/flurry/org/apache/avro/io/BufferedBinaryEncoder;->writeFixed([BII)V

    .line 493
    const/4 p3, 0x0

    goto :goto_1

    .line 497
    :cond_3
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->buf:[B

    iget v1, p0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->pos:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 498
    iget v0, p0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->pos:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->pos:I

    goto :goto_0

    .line 501
    :cond_4
    return-void
.end method


# virtual methods
.method public bytesBuffered()I
    .locals 2

    .prologue
    .line 386
    iget v0, p0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->pos:I

    invoke-super {p0}, Lcom/flurry/org/apache/avro/io/BufferedBinaryEncoder;->bytesBuffered()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method configure(Ljava/io/OutputStream;II)Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "blockBufferSize"    # I
    .param p3, "binaryEncoderBufferSize"    # I

    .prologue
    const/4 v0, 0x0

    .line 229
    invoke-super {p0, p1, p3}, Lcom/flurry/org/apache/avro/io/BufferedBinaryEncoder;->configure(Ljava/io/OutputStream;I)Lcom/flurry/org/apache/avro/io/BufferedBinaryEncoder;

    .line 230
    iput v0, p0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->pos:I

    .line 231
    iput v0, p0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->stackTop:I

    .line 232
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->buf:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->buf:[B

    array-length v0, v0

    if-eq v0, p2, :cond_1

    .line 233
    :cond_0
    new-array v0, p2, [B

    iput-object v0, p0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->buf:[B

    .line 236
    :cond_1
    sget-boolean v0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->check()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 237
    :cond_2
    return-object p0
.end method

.method public flush()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 242
    iget-object v1, p0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->blockStack:[Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue;

    iget v2, p0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->stackTop:I

    aget-object v0, v1, v2

    .line 243
    .local v0, "bv":Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue;
    iget-object v1, v0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue;->state:Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue$State;

    sget-object v2, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue$State;->ROOT:Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue$State;

    if-ne v1, v2, :cond_1

    .line 244
    iget-object v1, p0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->buf:[B

    iget v2, p0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->pos:I

    invoke-super {p0, v1, v3, v2}, Lcom/flurry/org/apache/avro/io/BufferedBinaryEncoder;->writeFixed([BII)V

    .line 245
    iput v3, p0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->pos:I

    .line 251
    :cond_0
    invoke-super {p0}, Lcom/flurry/org/apache/avro/io/BufferedBinaryEncoder;->flush()V

    .line 253
    sget-boolean v1, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->$assertionsDisabled:Z

    if-nez v1, :cond_2

    invoke-direct {p0}, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->check()Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 247
    :cond_1
    :goto_0
    iget-object v1, v0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue;->state:Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue$State;

    sget-object v2, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue$State;->OVERFLOW:Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue$State;

    if-eq v1, v2, :cond_0

    .line 248
    invoke-direct {p0}, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->compact()V

    goto :goto_0

    .line 254
    :cond_2
    return-void
.end method

.method public setItemCount(J)V
    .locals 7
    .param p1, "itemCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 314
    iget-object v1, p0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->blockStack:[Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue;

    iget v2, p0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->stackTop:I

    aget-object v0, v1, v2

    .line 315
    .local v0, "v":Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue;
    sget-boolean v1, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue;->type:Lcom/flurry/org/apache/avro/Schema$Type;

    sget-object v2, Lcom/flurry/org/apache/avro/Schema$Type;->ARRAY:Lcom/flurry/org/apache/avro/Schema$Type;

    if-eq v1, v2, :cond_0

    iget-object v1, v0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue;->type:Lcom/flurry/org/apache/avro/Schema$Type;

    sget-object v2, Lcom/flurry/org/apache/avro/Schema$Type;->MAP:Lcom/flurry/org/apache/avro/Schema$Type;

    if-eq v1, v2, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 316
    :cond_0
    sget-boolean v1, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    iget-wide v2, v0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue;->itemsLeftToWrite:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 317
    :cond_1
    iput-wide p1, v0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue;->itemsLeftToWrite:J

    .line 319
    sget-boolean v1, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->$assertionsDisabled:Z

    if-nez v1, :cond_2

    invoke-direct {p0}, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->check()Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 320
    :cond_2
    return-void
.end method

.method public startItem()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 324
    iget-object v1, p0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->blockStack:[Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue;

    iget v2, p0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->stackTop:I

    aget-object v1, v1, v2

    iget-object v1, v1, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue;->state:Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue$State;

    sget-object v2, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue$State;->OVERFLOW:Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue$State;

    if-ne v1, v2, :cond_0

    .line 325
    invoke-direct {p0}, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->finishOverflow()V

    .line 327
    :cond_0
    iget-object v1, p0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->blockStack:[Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue;

    iget v2, p0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->stackTop:I

    aget-object v0, v1, v2

    .line 328
    .local v0, "t":Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue;
    iget v1, v0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue;->items:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue;->items:I

    .line 329
    iget v1, p0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->pos:I

    iput v1, v0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue;->lastFullItem:I

    .line 330
    iget-wide v2, v0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue;->itemsLeftToWrite:J

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    iput-wide v2, v0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue;->itemsLeftToWrite:J

    .line 332
    sget-boolean v1, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->check()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 333
    :cond_1
    return-void
.end method

.method public writeArrayEnd()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 337
    iget-object v1, p0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->blockStack:[Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue;

    iget v2, p0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->stackTop:I

    aget-object v0, v1, v2

    .line 338
    .local v0, "top":Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue;
    iget-object v1, v0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue;->type:Lcom/flurry/org/apache/avro/Schema$Type;

    sget-object v2, Lcom/flurry/org/apache/avro/Schema$Type;->ARRAY:Lcom/flurry/org/apache/avro/Schema$Type;

    if-eq v1, v2, :cond_0

    .line 339
    new-instance v1, Lcom/flurry/org/apache/avro/AvroTypeException;

    const-string v2, "Called writeArrayEnd outside of an array."

    invoke-direct {v1, v2}, Lcom/flurry/org/apache/avro/AvroTypeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 341
    :cond_0
    iget-wide v2, v0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue;->itemsLeftToWrite:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    .line 342
    new-instance v1, Lcom/flurry/org/apache/avro/AvroTypeException;

    const-string v2, "Failed to write expected number of array elements."

    invoke-direct {v1, v2}, Lcom/flurry/org/apache/avro/AvroTypeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 344
    :cond_1
    invoke-direct {p0}, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->endBlockedValue()V

    .line 346
    sget-boolean v1, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->$assertionsDisabled:Z

    if-nez v1, :cond_2

    invoke-direct {p0}, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->check()Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 347
    :cond_2
    return-void
.end method

.method public writeArrayStart()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 299
    iget v1, p0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->stackTop:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->blockStack:[Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue;

    array-length v2, v2

    if-ne v1, v2, :cond_0

    .line 300
    invoke-direct {p0}, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->expandStack()V

    .line 303
    :cond_0
    iget-object v1, p0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->blockStack:[Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue;

    iget v2, p0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->stackTop:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->stackTop:I

    aget-object v0, v1, v2

    .line 304
    .local v0, "bv":Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue;
    sget-object v1, Lcom/flurry/org/apache/avro/Schema$Type;->ARRAY:Lcom/flurry/org/apache/avro/Schema$Type;

    iput-object v1, v0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue;->type:Lcom/flurry/org/apache/avro/Schema$Type;

    .line 305
    sget-object v1, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue$State;->REGULAR:Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue$State;

    iput-object v1, v0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue;->state:Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue$State;

    .line 306
    iget v1, p0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->pos:I

    iput v1, v0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue;->lastFullItem:I

    iput v1, v0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue;->start:I

    .line 307
    const/4 v1, 0x0

    iput v1, v0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue;->items:I

    .line 309
    sget-boolean v1, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->check()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 310
    :cond_1
    return-void
.end method

.method public writeBoolean(Z)V
    .locals 3
    .param p1, "b"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 258
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->ensureBounds(I)V

    .line 259
    iget v0, p0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->pos:I

    iget-object v1, p0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->buf:[B

    iget v2, p0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->pos:I

    invoke-static {p1, v1, v2}, Lcom/flurry/org/apache/avro/io/BinaryData;->encodeBoolean(Z[BI)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->pos:I

    .line 260
    return-void
.end method

.method public writeDouble(D)V
    .locals 3
    .param p1, "d"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 282
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->ensureBounds(I)V

    .line 283
    iget v0, p0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->pos:I

    iget-object v1, p0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->buf:[B

    iget v2, p0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->pos:I

    invoke-static {p1, p2, v1, v2}, Lcom/flurry/org/apache/avro/io/BinaryData;->encodeDouble(D[BI)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->pos:I

    .line 284
    return-void
.end method

.method public writeFixed([BII)V
    .locals 0
    .param p1, "bytes"    # [B
    .param p2, "start"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 288
    invoke-direct {p0, p1, p2, p3}, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->doWriteBytes([BII)V

    .line 289
    return-void
.end method

.method public writeFloat(F)V
    .locals 3
    .param p1, "f"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 276
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->ensureBounds(I)V

    .line 277
    iget v0, p0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->pos:I

    iget-object v1, p0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->buf:[B

    iget v2, p0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->pos:I

    invoke-static {p1, v1, v2}, Lcom/flurry/org/apache/avro/io/BinaryData;->encodeFloat(F[BI)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->pos:I

    .line 278
    return-void
.end method

.method public writeIndex(I)V
    .locals 3
    .param p1, "unionIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 380
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->ensureBounds(I)V

    .line 381
    iget v0, p0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->pos:I

    iget-object v1, p0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->buf:[B

    iget v2, p0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->pos:I

    invoke-static {p1, v1, v2}, Lcom/flurry/org/apache/avro/io/BinaryData;->encodeInt(I[BI)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->pos:I

    .line 382
    return-void
.end method

.method public writeInt(I)V
    .locals 3
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 264
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->ensureBounds(I)V

    .line 265
    iget v0, p0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->pos:I

    iget-object v1, p0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->buf:[B

    iget v2, p0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->pos:I

    invoke-static {p1, v1, v2}, Lcom/flurry/org/apache/avro/io/BinaryData;->encodeInt(I[BI)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->pos:I

    .line 266
    return-void
.end method

.method public writeLong(J)V
    .locals 3
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 270
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->ensureBounds(I)V

    .line 271
    iget v0, p0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->pos:I

    iget-object v1, p0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->buf:[B

    iget v2, p0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->pos:I

    invoke-static {p1, p2, v1, v2}, Lcom/flurry/org/apache/avro/io/BinaryData;->encodeLong(J[BI)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->pos:I

    .line 272
    return-void
.end method

.method public writeMapEnd()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 366
    iget-object v1, p0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->blockStack:[Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue;

    iget v2, p0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->stackTop:I

    aget-object v0, v1, v2

    .line 367
    .local v0, "top":Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue;
    iget-object v1, v0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue;->type:Lcom/flurry/org/apache/avro/Schema$Type;

    sget-object v2, Lcom/flurry/org/apache/avro/Schema$Type;->MAP:Lcom/flurry/org/apache/avro/Schema$Type;

    if-eq v1, v2, :cond_0

    .line 368
    new-instance v1, Lcom/flurry/org/apache/avro/AvroTypeException;

    const-string v2, "Called writeMapEnd outside of a map."

    invoke-direct {v1, v2}, Lcom/flurry/org/apache/avro/AvroTypeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 370
    :cond_0
    iget-wide v2, v0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue;->itemsLeftToWrite:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    .line 371
    new-instance v1, Lcom/flurry/org/apache/avro/AvroTypeException;

    const-string v2, "Failed to read write expected number of array elements."

    invoke-direct {v1, v2}, Lcom/flurry/org/apache/avro/AvroTypeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 373
    :cond_1
    invoke-direct {p0}, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->endBlockedValue()V

    .line 375
    sget-boolean v1, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->$assertionsDisabled:Z

    if-nez v1, :cond_2

    invoke-direct {p0}, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->check()Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 376
    :cond_2
    return-void
.end method

.method public writeMapStart()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 351
    iget v1, p0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->stackTop:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->blockStack:[Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue;

    array-length v2, v2

    if-ne v1, v2, :cond_0

    .line 352
    invoke-direct {p0}, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->expandStack()V

    .line 355
    :cond_0
    iget-object v1, p0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->blockStack:[Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue;

    iget v2, p0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->stackTop:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->stackTop:I

    aget-object v0, v1, v2

    .line 356
    .local v0, "bv":Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue;
    sget-object v1, Lcom/flurry/org/apache/avro/Schema$Type;->MAP:Lcom/flurry/org/apache/avro/Schema$Type;

    iput-object v1, v0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue;->type:Lcom/flurry/org/apache/avro/Schema$Type;

    .line 357
    sget-object v1, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue$State;->REGULAR:Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue$State;

    iput-object v1, v0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue;->state:Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue$State;

    .line 358
    iget v1, p0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->pos:I

    iput v1, v0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue;->lastFullItem:I

    iput v1, v0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue;->start:I

    .line 359
    const/4 v1, 0x0

    iput v1, v0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue;->items:I

    .line 361
    sget-boolean v1, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->check()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 362
    :cond_1
    return-void
.end method

.method protected writeZero()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 293
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->ensureBounds(I)V

    .line 294
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->buf:[B

    iget v1, p0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->pos:I

    const/4 v2, 0x0

    aput-byte v2, v0, v1

    .line 295
    return-void
.end method
