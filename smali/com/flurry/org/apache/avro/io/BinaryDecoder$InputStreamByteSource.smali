.class Lcom/flurry/org/apache/avro/io/BinaryDecoder$InputStreamByteSource;
.super Lcom/flurry/org/apache/avro/io/BinaryDecoder$ByteSource;
.source "BinaryDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/org/apache/avro/io/BinaryDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InputStreamByteSource"
.end annotation


# instance fields
.field private in:Ljava/io/InputStream;

.field protected isEof:Z


# direct methods
.method private constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;

    .prologue
    .line 743
    invoke-direct {p0}, Lcom/flurry/org/apache/avro/io/BinaryDecoder$ByteSource;-><init>()V

    .line 740
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder$InputStreamByteSource;->isEof:Z

    .line 744
    iput-object p1, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder$InputStreamByteSource;->in:Ljava/io/InputStream;

    .line 745
    return-void
.end method

.method synthetic constructor <init>(Ljava/io/InputStream;Lcom/flurry/org/apache/avro/io/BinaryDecoder$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/io/InputStream;
    .param p2, "x1"    # Lcom/flurry/org/apache/avro/io/BinaryDecoder$1;

    .prologue
    .line 738
    invoke-direct {p0, p1}, Lcom/flurry/org/apache/avro/io/BinaryDecoder$InputStreamByteSource;-><init>(Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 859
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder$InputStreamByteSource;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 860
    return-void
.end method

.method public isEof()Z
    .locals 1

    .prologue
    .line 854
    iget-boolean v0, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder$InputStreamByteSource;->isEof:Z

    return v0
.end method

.method public read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 842
    iget-object v2, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder$InputStreamByteSource;->ba:Lcom/flurry/org/apache/avro/io/BinaryDecoder$BufferAccessor;

    invoke-virtual {v2}, Lcom/flurry/org/apache/avro/io/BinaryDecoder$BufferAccessor;->getLim()I

    move-result v2

    iget-object v3, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder$InputStreamByteSource;->ba:Lcom/flurry/org/apache/avro/io/BinaryDecoder$BufferAccessor;

    invoke-virtual {v3}, Lcom/flurry/org/apache/avro/io/BinaryDecoder$BufferAccessor;->getPos()I

    move-result v3

    sub-int/2addr v2, v3

    if-nez v2, :cond_0

    .line 843
    iget-object v2, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder$InputStreamByteSource;->in:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 848
    :goto_0
    return v1

    .line 845
    :cond_0
    iget-object v2, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder$InputStreamByteSource;->ba:Lcom/flurry/org/apache/avro/io/BinaryDecoder$BufferAccessor;

    invoke-virtual {v2}, Lcom/flurry/org/apache/avro/io/BinaryDecoder$BufferAccessor;->getPos()I

    move-result v0

    .line 846
    .local v0, "position":I
    iget-object v2, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder$InputStreamByteSource;->ba:Lcom/flurry/org/apache/avro/io/BinaryDecoder$BufferAccessor;

    invoke-virtual {v2}, Lcom/flurry/org/apache/avro/io/BinaryDecoder$BufferAccessor;->getBuf()[B

    move-result-object v2

    aget-byte v2, v2, v0

    and-int/lit16 v1, v2, 0xff

    .line 847
    .local v1, "result":I
    iget-object v2, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder$InputStreamByteSource;->ba:Lcom/flurry/org/apache/avro/io/BinaryDecoder$BufferAccessor;

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3}, Lcom/flurry/org/apache/avro/io/BinaryDecoder$BufferAccessor;->setPos(I)V

    goto :goto_0
.end method

.method protected readRaw([BII)V
    .locals 2
    .param p1, "data"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 810
    :goto_0
    if-lez p3, :cond_1

    .line 811
    iget-object v1, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder$InputStreamByteSource;->in:Ljava/io/InputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 812
    .local v0, "read":I
    if-gez v0, :cond_0

    .line 813
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder$InputStreamByteSource;->isEof:Z

    .line 814
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1

    .line 816
    :cond_0
    sub-int/2addr p3, v0

    .line 817
    add-int/2addr p2, v0

    .line 818
    goto :goto_0

    .line 819
    .end local v0    # "read":I
    :cond_1
    return-void
.end method

.method protected skipSourceBytes(J)V
    .locals 7
    .param p1, "length"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const-wide/16 v4, 0x0

    .line 749
    const/4 v2, 0x0

    .line 750
    .local v2, "readZero":Z
    :goto_0
    cmp-long v3, p1, v4

    if-lez v3, :cond_3

    .line 751
    iget-object v3, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder$InputStreamByteSource;->in:Ljava/io/InputStream;

    invoke-virtual {v3, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    .line 752
    .local v0, "n":J
    cmp-long v3, v0, v4

    if-lez v3, :cond_0

    .line 753
    sub-long/2addr p1, v0

    .line 754
    goto :goto_0

    .line 760
    :cond_0
    cmp-long v3, v0, v4

    if-nez v3, :cond_2

    .line 761
    if-eqz v2, :cond_1

    .line 762
    iput-boolean v6, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder$InputStreamByteSource;->isEof:Z

    .line 763
    new-instance v3, Ljava/io/EOFException;

    invoke-direct {v3}, Ljava/io/EOFException;-><init>()V

    throw v3

    .line 765
    :cond_1
    const/4 v2, 0x1

    .line 766
    goto :goto_0

    .line 769
    :cond_2
    iput-boolean v6, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder$InputStreamByteSource;->isEof:Z

    .line 770
    new-instance v3, Ljava/io/EOFException;

    invoke-direct {v3}, Ljava/io/EOFException;-><init>()V

    throw v3

    .line 772
    .end local v0    # "n":J
    :cond_3
    return-void
.end method

.method protected tryReadRaw([BII)I
    .locals 5
    .param p1, "data"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 823
    move v1, p3

    .line 825
    .local v1, "leftToCopy":I
    :goto_0
    if-lez v1, :cond_0

    .line 826
    :try_start_0
    iget-object v3, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder$InputStreamByteSource;->in:Ljava/io/InputStream;

    invoke-virtual {v3, p1, p2, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    .line 827
    .local v2, "read":I
    if-gez v2, :cond_1

    .line 828
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder$InputStreamByteSource;->isEof:Z
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 837
    .end local v2    # "read":I
    :cond_0
    :goto_1
    sub-int v3, p3, v1

    return v3

    .line 831
    .restart local v2    # "read":I
    :cond_1
    sub-int/2addr v1, v2

    .line 832
    add-int/2addr p2, v2

    .line 833
    goto :goto_0

    .line 834
    .end local v2    # "read":I
    :catch_0
    move-exception v0

    .line 835
    .local v0, "eof":Ljava/io/EOFException;
    iput-boolean v4, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder$InputStreamByteSource;->isEof:Z

    goto :goto_1
.end method

.method protected trySkipBytes(J)J
    .locals 11
    .param p1, "length"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v8, 0x0

    const/4 v7, 0x1

    .line 776
    move-wide v2, p1

    .line 778
    .local v2, "leftToSkip":J
    const/4 v1, 0x0

    .line 779
    .local v1, "readZero":Z
    :goto_0
    cmp-long v6, v2, v8

    if-lez v6, :cond_1

    .line 780
    :try_start_0
    iget-object v6, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder$InputStreamByteSource;->in:Ljava/io/InputStream;

    invoke-virtual {v6, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v4

    .line 781
    .local v4, "n":J
    cmp-long v6, v4, v8

    if-lez v6, :cond_0

    .line 782
    sub-long/2addr v2, v4

    .line 783
    goto :goto_0

    .line 789
    :cond_0
    cmp-long v6, v4, v8

    if-nez v6, :cond_3

    .line 790
    if-eqz v1, :cond_2

    .line 791
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder$InputStreamByteSource;->isEof:Z

    .line 805
    .end local v4    # "n":J
    :cond_1
    :goto_1
    sub-long v6, p1, v2

    return-wide v6

    .line 794
    .restart local v4    # "n":J
    :cond_2
    const/4 v1, 0x1

    .line 795
    goto :goto_0

    .line 798
    :cond_3
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder$InputStreamByteSource;->isEof:Z
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 802
    .end local v4    # "n":J
    :catch_0
    move-exception v0

    .line 803
    .local v0, "eof":Ljava/io/EOFException;
    iput-boolean v7, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder$InputStreamByteSource;->isEof:Z

    goto :goto_1
.end method
