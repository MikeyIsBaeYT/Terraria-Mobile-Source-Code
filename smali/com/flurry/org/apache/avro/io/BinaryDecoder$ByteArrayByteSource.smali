.class Lcom/flurry/org/apache/avro/io/BinaryDecoder$ByteArrayByteSource;
.super Lcom/flurry/org/apache/avro/io/BinaryDecoder$ByteSource;
.source "BinaryDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/org/apache/avro/io/BinaryDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ByteArrayByteSource"
.end annotation


# instance fields
.field private compacted:Z

.field private data:[B

.field private max:I

.field private position:I


# direct methods
.method private constructor <init>([BII)V
    .locals 3
    .param p1, "data"    # [B
    .param p2, "start"    # I
    .param p3, "len"    # I

    .prologue
    const/16 v2, 0x10

    const/4 v1, 0x0

    .line 875
    invoke-direct {p0}, Lcom/flurry/org/apache/avro/io/BinaryDecoder$ByteSource;-><init>()V

    .line 872
    iput-boolean v1, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder$ByteArrayByteSource;->compacted:Z

    .line 878
    array-length v0, p1

    if-lt v0, v2, :cond_0

    if-ge p3, v2, :cond_1

    .line 879
    :cond_0
    new-array v0, v2, [B

    iput-object v0, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder$ByteArrayByteSource;->data:[B

    .line 880
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder$ByteArrayByteSource;->data:[B

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 881
    iput v1, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder$ByteArrayByteSource;->position:I

    .line 882
    iput p3, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder$ByteArrayByteSource;->max:I

    .line 889
    :goto_0
    return-void

    .line 885
    :cond_1
    iput-object p1, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder$ByteArrayByteSource;->data:[B

    .line 886
    iput p2, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder$ByteArrayByteSource;->position:I

    .line 887
    add-int v0, p2, p3

    iput v0, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder$ByteArrayByteSource;->max:I

    goto :goto_0
.end method

.method synthetic constructor <init>([BIILcom/flurry/org/apache/avro/io/BinaryDecoder$1;)V
    .locals 0
    .param p1, "x0"    # [B
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .param p4, "x3"    # Lcom/flurry/org/apache/avro/io/BinaryDecoder$1;

    .prologue
    .line 868
    invoke-direct {p0, p1, p2, p3}, Lcom/flurry/org/apache/avro/io/BinaryDecoder$ByteArrayByteSource;-><init>([BII)V

    return-void
.end method


# virtual methods
.method protected attach(ILcom/flurry/org/apache/avro/io/BinaryDecoder;)V
    .locals 2
    .param p1, "bufferSize"    # I
    .param p2, "decoder"    # Lcom/flurry/org/apache/avro/io/BinaryDecoder;

    .prologue
    .line 894
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder$ByteArrayByteSource;->data:[B

    invoke-static {p2, v0}, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->access$302(Lcom/flurry/org/apache/avro/io/BinaryDecoder;[B)[B

    .line 895
    iget v0, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder$ByteArrayByteSource;->position:I

    invoke-static {p2, v0}, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->access$402(Lcom/flurry/org/apache/avro/io/BinaryDecoder;I)I

    .line 896
    iget v0, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder$ByteArrayByteSource;->position:I

    invoke-static {p2, v0}, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->access$602(Lcom/flurry/org/apache/avro/io/BinaryDecoder;I)I

    .line 897
    iget v0, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder$ByteArrayByteSource;->max:I

    invoke-static {p2, v0}, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->access$502(Lcom/flurry/org/apache/avro/io/BinaryDecoder;I)I

    .line 898
    new-instance v0, Lcom/flurry/org/apache/avro/io/BinaryDecoder$BufferAccessor;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1}, Lcom/flurry/org/apache/avro/io/BinaryDecoder$BufferAccessor;-><init>(Lcom/flurry/org/apache/avro/io/BinaryDecoder;Lcom/flurry/org/apache/avro/io/BinaryDecoder$1;)V

    iput-object v0, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder$ByteArrayByteSource;->ba:Lcom/flurry/org/apache/avro/io/BinaryDecoder$BufferAccessor;

    .line 899
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
    .line 970
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder$ByteArrayByteSource;->ba:Lcom/flurry/org/apache/avro/io/BinaryDecoder$BufferAccessor;

    iget-object v1, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder$ByteArrayByteSource;->ba:Lcom/flurry/org/apache/avro/io/BinaryDecoder$BufferAccessor;

    invoke-virtual {v1}, Lcom/flurry/org/apache/avro/io/BinaryDecoder$BufferAccessor;->getLim()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/flurry/org/apache/avro/io/BinaryDecoder$BufferAccessor;->setPos(I)V

    .line 971
    return-void
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
    const/4 v2, 0x0

    .line 946
    iget-boolean v1, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder$ByteArrayByteSource;->compacted:Z

    if-nez v1, :cond_0

    .line 948
    add-int/lit8 v1, p4, 0x10

    new-array v0, v1, [B

    .line 949
    .local v0, "tinybuf":[B
    invoke-static {p1, p2, v0, v2, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 950
    iget-object v1, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder$ByteArrayByteSource;->ba:Lcom/flurry/org/apache/avro/io/BinaryDecoder$BufferAccessor;

    invoke-virtual {v1, v0, v2, p4}, Lcom/flurry/org/apache/avro/io/BinaryDecoder$BufferAccessor;->setBuf([BII)V

    .line 951
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder$ByteArrayByteSource;->compacted:Z

    .line 953
    .end local v0    # "tinybuf":[B
    :cond_0
    return-void
.end method

.method public isEof()Z
    .locals 3

    .prologue
    .line 975
    iget-object v1, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder$ByteArrayByteSource;->ba:Lcom/flurry/org/apache/avro/io/BinaryDecoder$BufferAccessor;

    invoke-virtual {v1}, Lcom/flurry/org/apache/avro/io/BinaryDecoder$BufferAccessor;->getLim()I

    move-result v1

    iget-object v2, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder$ByteArrayByteSource;->ba:Lcom/flurry/org/apache/avro/io/BinaryDecoder$BufferAccessor;

    invoke-virtual {v2}, Lcom/flurry/org/apache/avro/io/BinaryDecoder$BufferAccessor;->getPos()I

    move-result v2

    sub-int v0, v1, v2

    .line 976
    .local v0, "remaining":I
    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 957
    iget-object v1, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder$ByteArrayByteSource;->ba:Lcom/flurry/org/apache/avro/io/BinaryDecoder$BufferAccessor;

    invoke-virtual {v1}, Lcom/flurry/org/apache/avro/io/BinaryDecoder$BufferAccessor;->getLim()I

    move-result v1

    iput v1, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder$ByteArrayByteSource;->max:I

    .line 958
    iget-object v1, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder$ByteArrayByteSource;->ba:Lcom/flurry/org/apache/avro/io/BinaryDecoder$BufferAccessor;

    invoke-virtual {v1}, Lcom/flurry/org/apache/avro/io/BinaryDecoder$BufferAccessor;->getPos()I

    move-result v1

    iput v1, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder$ByteArrayByteSource;->position:I

    .line 959
    iget v1, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder$ByteArrayByteSource;->position:I

    iget v2, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder$ByteArrayByteSource;->max:I

    if-lt v1, v2, :cond_0

    .line 960
    const/4 v0, -0x1

    .line 964
    :goto_0
    return v0

    .line 962
    :cond_0
    iget-object v1, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder$ByteArrayByteSource;->ba:Lcom/flurry/org/apache/avro/io/BinaryDecoder$BufferAccessor;

    invoke-virtual {v1}, Lcom/flurry/org/apache/avro/io/BinaryDecoder$BufferAccessor;->getBuf()[B

    move-result-object v1

    iget v2, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder$ByteArrayByteSource;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder$ByteArrayByteSource;->position:I

    aget-byte v1, v1, v2

    and-int/lit16 v0, v1, 0xff

    .line 963
    .local v0, "result":I
    iget-object v1, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder$ByteArrayByteSource;->ba:Lcom/flurry/org/apache/avro/io/BinaryDecoder$BufferAccessor;

    iget v2, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder$ByteArrayByteSource;->position:I

    invoke-virtual {v1, v2}, Lcom/flurry/org/apache/avro/io/BinaryDecoder$BufferAccessor;->setPos(I)V

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
    .line 929
    invoke-virtual {p0, p1, p2, p3}, Lcom/flurry/org/apache/avro/io/BinaryDecoder$ByteArrayByteSource;->tryReadRaw([BII)I

    move-result v0

    .line 930
    .local v0, "read":I
    if-ge v0, p3, :cond_0

    .line 931
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1

    .line 933
    :cond_0
    return-void
.end method

.method protected skipSourceBytes(J)V
    .locals 3
    .param p1, "length"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 904
    invoke-virtual {p0, p1, p2}, Lcom/flurry/org/apache/avro/io/BinaryDecoder$ByteArrayByteSource;->trySkipBytes(J)J

    move-result-wide v0

    .line 905
    .local v0, "skipped":J
    cmp-long v2, v0, p1

    if-gez v2, :cond_0

    .line 906
    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    throw v2

    .line 908
    :cond_0
    return-void
.end method

.method protected tryReadRaw([BII)I
    .locals 1
    .param p1, "data"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 938
    const/4 v0, 0x0

    return v0
.end method

.method protected trySkipBytes(J)J
    .locals 5
    .param p1, "length"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 913
    iget-object v2, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder$ByteArrayByteSource;->ba:Lcom/flurry/org/apache/avro/io/BinaryDecoder$BufferAccessor;

    invoke-virtual {v2}, Lcom/flurry/org/apache/avro/io/BinaryDecoder$BufferAccessor;->getLim()I

    move-result v2

    iput v2, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder$ByteArrayByteSource;->max:I

    .line 914
    iget-object v2, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder$ByteArrayByteSource;->ba:Lcom/flurry/org/apache/avro/io/BinaryDecoder$BufferAccessor;

    invoke-virtual {v2}, Lcom/flurry/org/apache/avro/io/BinaryDecoder$BufferAccessor;->getPos()I

    move-result v2

    iput v2, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder$ByteArrayByteSource;->position:I

    .line 915
    iget v2, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder$ByteArrayByteSource;->max:I

    iget v3, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder$ByteArrayByteSource;->position:I

    sub-int/2addr v2, v3

    int-to-long v0, v2

    .line 916
    .local v0, "remaining":J
    cmp-long v2, v0, p1

    if-ltz v2, :cond_0

    .line 917
    iget v2, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder$ByteArrayByteSource;->position:I

    int-to-long v2, v2

    add-long/2addr v2, p1

    long-to-int v2, v2

    iput v2, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder$ByteArrayByteSource;->position:I

    .line 918
    iget-object v2, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder$ByteArrayByteSource;->ba:Lcom/flurry/org/apache/avro/io/BinaryDecoder$BufferAccessor;

    iget v3, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder$ByteArrayByteSource;->position:I

    invoke-virtual {v2, v3}, Lcom/flurry/org/apache/avro/io/BinaryDecoder$BufferAccessor;->setPos(I)V

    .line 923
    .end local p1    # "length":J
    :goto_0
    return-wide p1

    .line 921
    .restart local p1    # "length":J
    :cond_0
    iget v2, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder$ByteArrayByteSource;->position:I

    int-to-long v2, v2

    add-long/2addr v2, v0

    long-to-int v2, v2

    iput v2, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder$ByteArrayByteSource;->position:I

    .line 922
    iget-object v2, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder$ByteArrayByteSource;->ba:Lcom/flurry/org/apache/avro/io/BinaryDecoder$BufferAccessor;

    iget v3, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder$ByteArrayByteSource;->position:I

    invoke-virtual {v2, v3}, Lcom/flurry/org/apache/avro/io/BinaryDecoder$BufferAccessor;->setPos(I)V

    move-wide p1, v0

    .line 923
    goto :goto_0
.end method
