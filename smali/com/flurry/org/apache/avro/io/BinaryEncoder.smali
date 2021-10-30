.class public abstract Lcom/flurry/org/apache/avro/io/BinaryEncoder;
.super Lcom/flurry/org/apache/avro/io/Encoder;
.source "BinaryEncoder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/flurry/org/apache/avro/io/Encoder;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract bytesBuffered()I
.end method

.method public setItemCount(J)V
    .locals 3
    .param p1, "itemCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 86
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 87
    invoke-virtual {p0, p1, p2}, Lcom/flurry/org/apache/avro/io/BinaryEncoder;->writeLong(J)V

    .line 89
    :cond_0
    return-void
.end method

.method public startItem()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 92
    return-void
.end method

.method public writeArrayEnd()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/flurry/org/apache/avro/io/BinaryEncoder;->writeZero()V

    .line 97
    return-void
.end method

.method public writeArrayStart()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 82
    return-void
.end method

.method public writeBytes(Ljava/nio/ByteBuffer;)V
    .locals 4
    .param p1, "bytes"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 60
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 61
    .local v1, "pos":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v3

    add-int v2, v3, v1

    .line 62
    .local v2, "start":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    sub-int v0, v3, v1

    .line 63
    .local v0, "len":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-virtual {p0, v3, v2, v0}, Lcom/flurry/org/apache/avro/io/BinaryEncoder;->writeBytes([BII)V

    .line 64
    return-void
.end method

.method public writeBytes([BII)V
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
    .line 68
    if-nez p3, :cond_0

    .line 69
    invoke-virtual {p0}, Lcom/flurry/org/apache/avro/io/BinaryEncoder;->writeZero()V

    .line 74
    :goto_0
    return-void

    .line 72
    :cond_0
    invoke-virtual {p0, p3}, Lcom/flurry/org/apache/avro/io/BinaryEncoder;->writeInt(I)V

    .line 73
    invoke-virtual {p0, p1, p2, p3}, Lcom/flurry/org/apache/avro/io/BinaryEncoder;->writeFixed([BII)V

    goto :goto_0
.end method

.method public writeEnum(I)V
    .locals 0
    .param p1, "e"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 78
    invoke-virtual {p0, p1}, Lcom/flurry/org/apache/avro/io/BinaryEncoder;->writeInt(I)V

    .line 79
    return-void
.end method

.method public writeIndex(I)V
    .locals 0
    .param p1, "unionIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 109
    invoke-virtual {p0, p1}, Lcom/flurry/org/apache/avro/io/BinaryEncoder;->writeInt(I)V

    .line 110
    return-void
.end method

.method public writeMapEnd()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/flurry/org/apache/avro/io/BinaryEncoder;->writeZero()V

    .line 105
    return-void
.end method

.method public writeMapStart()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 100
    return-void
.end method

.method public writeNull()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 40
    return-void
.end method

.method public writeString(Lcom/flurry/org/apache/avro/util/Utf8;)V
    .locals 3
    .param p1, "utf8"    # Lcom/flurry/org/apache/avro/util/Utf8;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 44
    invoke-virtual {p1}, Lcom/flurry/org/apache/avro/util/Utf8;->getBytes()[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/flurry/org/apache/avro/util/Utf8;->getByteLength()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/flurry/org/apache/avro/io/BinaryEncoder;->writeBytes([BII)V

    .line 45
    return-void
.end method

.method public writeString(Ljava/lang/String;)V
    .locals 3
    .param p1, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 49
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 50
    invoke-virtual {p0}, Lcom/flurry/org/apache/avro/io/BinaryEncoder;->writeZero()V

    .line 56
    :goto_0
    return-void

    .line 53
    :cond_0
    const-string v1, "UTF-8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 54
    .local v0, "bytes":[B
    array-length v1, v0

    invoke-virtual {p0, v1}, Lcom/flurry/org/apache/avro/io/BinaryEncoder;->writeInt(I)V

    .line 55
    const/4 v1, 0x0

    array-length v2, v0

    invoke-virtual {p0, v0, v1, v2}, Lcom/flurry/org/apache/avro/io/BinaryEncoder;->writeFixed([BII)V

    goto :goto_0
.end method

.method protected abstract writeZero()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
