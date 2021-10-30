.class public Lcom/flurry/org/apache/avro/io/DirectBinaryEncoder;
.super Lcom/flurry/org/apache/avro/io/BinaryEncoder;
.source "DirectBinaryEncoder.java"


# instance fields
.field private final buf:[B

.field private out:Ljava/io/OutputStream;


# direct methods
.method constructor <init>(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/flurry/org/apache/avro/io/BinaryEncoder;-><init>()V

    .line 43
    const/16 v0, 0xc

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/flurry/org/apache/avro/io/DirectBinaryEncoder;->buf:[B

    .line 49
    invoke-virtual {p0, p1}, Lcom/flurry/org/apache/avro/io/DirectBinaryEncoder;->configure(Ljava/io/OutputStream;)Lcom/flurry/org/apache/avro/io/DirectBinaryEncoder;

    .line 50
    return-void
.end method


# virtual methods
.method public bytesBuffered()I
    .locals 1

    .prologue
    .line 130
    const/4 v0, 0x0

    return v0
.end method

.method configure(Ljava/io/OutputStream;)Lcom/flurry/org/apache/avro/io/DirectBinaryEncoder;
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;

    .prologue
    .line 53
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "OutputStream cannot be null!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_0
    iput-object p1, p0, Lcom/flurry/org/apache/avro/io/DirectBinaryEncoder;->out:Ljava/io/OutputStream;

    .line 55
    return-object p0
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 60
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/DirectBinaryEncoder;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 61
    return-void
.end method

.method public writeBoolean(Z)V
    .locals 2
    .param p1, "b"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 65
    iget-object v1, p0, Lcom/flurry/org/apache/avro/io/DirectBinaryEncoder;->out:Ljava/io/OutputStream;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 66
    return-void

    .line 65
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public writeDouble(D)V
    .locals 5
    .param p1, "d"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 113
    const/16 v2, 0x8

    new-array v0, v2, [B

    .line 114
    .local v0, "buf":[B
    invoke-static {p1, p2, v0, v3}, Lcom/flurry/org/apache/avro/io/BinaryData;->encodeDouble(D[BI)I

    move-result v1

    .line 115
    .local v1, "len":I
    iget-object v2, p0, Lcom/flurry/org/apache/avro/io/DirectBinaryEncoder;->out:Ljava/io/OutputStream;

    invoke-virtual {v2, v0, v3, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 116
    return-void
.end method

.method public writeFixed([BII)V
    .locals 1
    .param p1, "bytes"    # [B
    .param p2, "start"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 120
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/DirectBinaryEncoder;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 121
    return-void
.end method

.method public writeFloat(F)V
    .locals 4
    .param p1, "f"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 107
    iget-object v1, p0, Lcom/flurry/org/apache/avro/io/DirectBinaryEncoder;->buf:[B

    invoke-static {p1, v1, v3}, Lcom/flurry/org/apache/avro/io/BinaryData;->encodeFloat(F[BI)I

    move-result v0

    .line 108
    .local v0, "len":I
    iget-object v1, p0, Lcom/flurry/org/apache/avro/io/DirectBinaryEncoder;->out:Ljava/io/OutputStream;

    iget-object v2, p0, Lcom/flurry/org/apache/avro/io/DirectBinaryEncoder;->buf:[B

    invoke-virtual {v1, v2, v3, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 109
    return-void
.end method

.method public writeInt(I)V
    .locals 5
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 73
    shl-int/lit8 v2, p1, 0x1

    shr-int/lit8 v3, p1, 0x1f

    xor-int v1, v2, v3

    .line 74
    .local v1, "val":I
    and-int/lit8 v2, v1, -0x80

    if-nez v2, :cond_0

    .line 75
    iget-object v2, p0, Lcom/flurry/org/apache/avro/io/DirectBinaryEncoder;->out:Ljava/io/OutputStream;

    invoke-virtual {v2, v1}, Ljava/io/OutputStream;->write(I)V

    .line 84
    :goto_0
    return-void

    .line 77
    :cond_0
    and-int/lit16 v2, v1, -0x4000

    if-nez v2, :cond_1

    .line 78
    iget-object v2, p0, Lcom/flurry/org/apache/avro/io/DirectBinaryEncoder;->out:Ljava/io/OutputStream;

    or-int/lit16 v3, v1, 0x80

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write(I)V

    .line 79
    iget-object v2, p0, Lcom/flurry/org/apache/avro/io/DirectBinaryEncoder;->out:Ljava/io/OutputStream;

    ushr-int/lit8 v3, v1, 0x7

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write(I)V

    goto :goto_0

    .line 82
    :cond_1
    iget-object v2, p0, Lcom/flurry/org/apache/avro/io/DirectBinaryEncoder;->buf:[B

    invoke-static {p1, v2, v4}, Lcom/flurry/org/apache/avro/io/BinaryData;->encodeInt(I[BI)I

    move-result v0

    .line 83
    .local v0, "len":I
    iget-object v2, p0, Lcom/flurry/org/apache/avro/io/DirectBinaryEncoder;->out:Ljava/io/OutputStream;

    iget-object v3, p0, Lcom/flurry/org/apache/avro/io/DirectBinaryEncoder;->buf:[B

    invoke-virtual {v2, v3, v4, v0}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0
.end method

.method public writeLong(J)V
    .locals 9
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 91
    const/4 v4, 0x1

    shl-long v4, p1, v4

    const/16 v6, 0x3f

    shr-long v6, p1, v6

    xor-long v2, v4, v6

    .line 92
    .local v2, "val":J
    const-wide/32 v4, -0x80000000

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    .line 93
    long-to-int v0, v2

    .line 94
    .local v0, "i":I
    :goto_0
    and-int/lit8 v4, v0, -0x80

    if-eqz v4, :cond_0

    .line 95
    iget-object v4, p0, Lcom/flurry/org/apache/avro/io/DirectBinaryEncoder;->out:Ljava/io/OutputStream;

    or-int/lit16 v5, v0, 0x80

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    invoke-virtual {v4, v5}, Ljava/io/OutputStream;->write(I)V

    .line 96
    ushr-int/lit8 v0, v0, 0x7

    goto :goto_0

    .line 98
    :cond_0
    iget-object v4, p0, Lcom/flurry/org/apache/avro/io/DirectBinaryEncoder;->out:Ljava/io/OutputStream;

    int-to-byte v5, v0

    invoke-virtual {v4, v5}, Ljava/io/OutputStream;->write(I)V

    .line 103
    .end local v0    # "i":I
    :goto_1
    return-void

    .line 101
    :cond_1
    iget-object v4, p0, Lcom/flurry/org/apache/avro/io/DirectBinaryEncoder;->buf:[B

    invoke-static {p1, p2, v4, v8}, Lcom/flurry/org/apache/avro/io/BinaryData;->encodeLong(J[BI)I

    move-result v1

    .line 102
    .local v1, "len":I
    iget-object v4, p0, Lcom/flurry/org/apache/avro/io/DirectBinaryEncoder;->out:Ljava/io/OutputStream;

    iget-object v5, p0, Lcom/flurry/org/apache/avro/io/DirectBinaryEncoder;->buf:[B

    invoke-virtual {v4, v5, v8, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_1
.end method

.method protected writeZero()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 125
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/DirectBinaryEncoder;->out:Ljava/io/OutputStream;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 126
    return-void
.end method
