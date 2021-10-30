.class abstract Lcom/flurry/org/apache/avro/io/BinaryDecoder$ByteSource;
.super Ljava/io/InputStream;
.source "BinaryDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/org/apache/avro/io/BinaryDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "ByteSource"
.end annotation


# instance fields
.field protected ba:Lcom/flurry/org/apache/avro/io/BinaryDecoder$BufferAccessor;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 593
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 594
    return-void
.end method


# virtual methods
.method protected attach(ILcom/flurry/org/apache/avro/io/BinaryDecoder;)V
    .locals 2
    .param p1, "bufferSize"    # I
    .param p2, "decoder"    # Lcom/flurry/org/apache/avro/io/BinaryDecoder;

    .prologue
    const/4 v1, 0x0

    .line 599
    new-array v0, p1, [B

    invoke-static {p2, v0}, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->access$302(Lcom/flurry/org/apache/avro/io/BinaryDecoder;[B)[B

    .line 600
    invoke-static {p2, v1}, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->access$402(Lcom/flurry/org/apache/avro/io/BinaryDecoder;I)I

    .line 601
    invoke-static {p2, v1}, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->access$602(Lcom/flurry/org/apache/avro/io/BinaryDecoder;I)I

    .line 602
    invoke-static {p2, v1}, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->access$502(Lcom/flurry/org/apache/avro/io/BinaryDecoder;I)I

    .line 603
    new-instance v0, Lcom/flurry/org/apache/avro/io/BinaryDecoder$BufferAccessor;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1}, Lcom/flurry/org/apache/avro/io/BinaryDecoder$BufferAccessor;-><init>(Lcom/flurry/org/apache/avro/io/BinaryDecoder;Lcom/flurry/org/apache/avro/io/BinaryDecoder$1;)V

    iput-object v0, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder$ByteSource;->ba:Lcom/flurry/org/apache/avro/io/BinaryDecoder$BufferAccessor;

    .line 604
    return-void
.end method

.method public available()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 734
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder$ByteSource;->ba:Lcom/flurry/org/apache/avro/io/BinaryDecoder$BufferAccessor;

    invoke-virtual {v0}, Lcom/flurry/org/apache/avro/io/BinaryDecoder$BufferAccessor;->getLim()I

    move-result v0

    iget-object v1, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder$ByteSource;->ba:Lcom/flurry/org/apache/avro/io/BinaryDecoder$BufferAccessor;

    invoke-virtual {v1}, Lcom/flurry/org/apache/avro/io/BinaryDecoder$BufferAccessor;->getPos()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method protected compactAndFill([BIII)V
    .locals 3
    .param p1, "buf"    # [B
    .param p2, "pos"    # I
    .param p3, "minPos"    # I
    .param p4, "remaining"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 677
    invoke-static {p1, p2, p1, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 678
    iget-object v1, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder$ByteSource;->ba:Lcom/flurry/org/apache/avro/io/BinaryDecoder$BufferAccessor;

    invoke-virtual {v1, p3}, Lcom/flurry/org/apache/avro/io/BinaryDecoder$BufferAccessor;->setPos(I)V

    .line 679
    add-int v1, p3, p4

    array-length v2, p1

    sub-int/2addr v2, p4

    invoke-virtual {p0, p1, v1, v2}, Lcom/flurry/org/apache/avro/io/BinaryDecoder$ByteSource;->tryReadRaw([BII)I

    move-result v1

    add-int v0, p4, v1

    .line 681
    .local v0, "newLimit":I
    iget-object v1, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder$ByteSource;->ba:Lcom/flurry/org/apache/avro/io/BinaryDecoder$BufferAccessor;

    invoke-virtual {v1, v0}, Lcom/flurry/org/apache/avro/io/BinaryDecoder$BufferAccessor;->setLimit(I)V

    .line 682
    return-void
.end method

.method protected detach()V
    .locals 1

    .prologue
    .line 608
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder$ByteSource;->ba:Lcom/flurry/org/apache/avro/io/BinaryDecoder$BufferAccessor;

    invoke-virtual {v0}, Lcom/flurry/org/apache/avro/io/BinaryDecoder$BufferAccessor;->detach()V

    .line 609
    return-void
.end method

.method abstract isEof()Z
.end method

.method public read([BII)I
    .locals 7
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 686
    iget-object v5, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder$ByteSource;->ba:Lcom/flurry/org/apache/avro/io/BinaryDecoder$BufferAccessor;

    invoke-virtual {v5}, Lcom/flurry/org/apache/avro/io/BinaryDecoder$BufferAccessor;->getLim()I

    move-result v2

    .line 687
    .local v2, "lim":I
    iget-object v5, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder$ByteSource;->ba:Lcom/flurry/org/apache/avro/io/BinaryDecoder$BufferAccessor;

    invoke-virtual {v5}, Lcom/flurry/org/apache/avro/io/BinaryDecoder$BufferAccessor;->getPos()I

    move-result v3

    .line 688
    .local v3, "pos":I
    iget-object v5, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder$ByteSource;->ba:Lcom/flurry/org/apache/avro/io/BinaryDecoder$BufferAccessor;

    invoke-virtual {v5}, Lcom/flurry/org/apache/avro/io/BinaryDecoder$BufferAccessor;->getBuf()[B

    move-result-object v0

    .line 689
    .local v0, "buf":[B
    sub-int v4, v2, v3

    .line 690
    .local v4, "remaining":I
    if-lt v4, p3, :cond_0

    .line 691
    invoke-static {v0, v3, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 692
    add-int/2addr v3, p3

    .line 693
    iget-object v5, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder$ByteSource;->ba:Lcom/flurry/org/apache/avro/io/BinaryDecoder$BufferAccessor;

    invoke-virtual {v5, v3}, Lcom/flurry/org/apache/avro/io/BinaryDecoder$BufferAccessor;->setPos(I)V

    .line 706
    .end local p3    # "len":I
    :goto_0
    return p3

    .line 697
    .restart local p3    # "len":I
    :cond_0
    invoke-static {v0, v3, p1, p2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 698
    add-int/2addr v3, v4

    .line 699
    iget-object v5, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder$ByteSource;->ba:Lcom/flurry/org/apache/avro/io/BinaryDecoder$BufferAccessor;

    invoke-virtual {v5, v3}, Lcom/flurry/org/apache/avro/io/BinaryDecoder$BufferAccessor;->setPos(I)V

    .line 701
    add-int v5, p2, v4

    sub-int v6, p3, v4

    invoke-virtual {p0, p1, v5, v6}, Lcom/flurry/org/apache/avro/io/BinaryDecoder$ByteSource;->tryReadRaw([BII)I

    move-result v5

    add-int v1, v4, v5

    .line 703
    .local v1, "inputRead":I
    if-nez v1, :cond_1

    .line 704
    const/4 p3, -0x1

    goto :goto_0

    :cond_1
    move p3, v1

    .line 706
    goto :goto_0
.end method

.method protected abstract readRaw([BII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public skip(J)J
    .locals 9
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 713
    iget-object v5, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder$ByteSource;->ba:Lcom/flurry/org/apache/avro/io/BinaryDecoder$BufferAccessor;

    invoke-virtual {v5}, Lcom/flurry/org/apache/avro/io/BinaryDecoder$BufferAccessor;->getLim()I

    move-result v2

    .line 714
    .local v2, "lim":I
    iget-object v5, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder$ByteSource;->ba:Lcom/flurry/org/apache/avro/io/BinaryDecoder$BufferAccessor;

    invoke-virtual {v5}, Lcom/flurry/org/apache/avro/io/BinaryDecoder$BufferAccessor;->getPos()I

    move-result v3

    .line 715
    .local v3, "pos":I
    sub-int v4, v2, v3

    .line 716
    .local v4, "remaining":I
    int-to-long v6, v4

    cmp-long v5, v6, p1

    if-lez v5, :cond_0

    .line 717
    int-to-long v6, v3

    add-long/2addr v6, p1

    long-to-int v3, v6

    .line 718
    iget-object v5, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder$ByteSource;->ba:Lcom/flurry/org/apache/avro/io/BinaryDecoder$BufferAccessor;

    invoke-virtual {v5, v3}, Lcom/flurry/org/apache/avro/io/BinaryDecoder$BufferAccessor;->setPos(I)V

    .line 724
    .end local p1    # "n":J
    :goto_0
    return-wide p1

    .line 721
    .restart local p1    # "n":J
    :cond_0
    move v3, v2

    .line 722
    iget-object v5, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder$ByteSource;->ba:Lcom/flurry/org/apache/avro/io/BinaryDecoder$BufferAccessor;

    invoke-virtual {v5, v3}, Lcom/flurry/org/apache/avro/io/BinaryDecoder$BufferAccessor;->setPos(I)V

    .line 723
    int-to-long v6, v4

    sub-long v6, p1, v6

    invoke-virtual {p0, v6, v7}, Lcom/flurry/org/apache/avro/io/BinaryDecoder$ByteSource;->trySkipBytes(J)J

    move-result-wide v0

    .line 724
    .local v0, "isSkipCount":J
    int-to-long v6, v4

    add-long p1, v0, v6

    goto :goto_0
.end method

.method protected abstract skipSourceBytes(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract tryReadRaw([BII)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract trySkipBytes(J)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
