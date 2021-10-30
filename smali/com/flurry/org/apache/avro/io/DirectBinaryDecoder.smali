.class Lcom/flurry/org/apache/avro/io/DirectBinaryDecoder;
.super Lcom/flurry/org/apache/avro/io/BinaryDecoder;
.source "DirectBinaryDecoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/org/apache/avro/io/DirectBinaryDecoder$1;,
        Lcom/flurry/org/apache/avro/io/DirectBinaryDecoder$ReuseByteReader;,
        Lcom/flurry/org/apache/avro/io/DirectBinaryDecoder$ByteReader;
    }
.end annotation


# instance fields
.field private final buf:[B

.field private byteReader:Lcom/flurry/org/apache/avro/io/DirectBinaryDecoder$ByteReader;

.field private in:Ljava/io/InputStream;


# direct methods
.method constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/flurry/org/apache/avro/io/BinaryDecoder;-><init>()V

    .line 137
    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/flurry/org/apache/avro/io/DirectBinaryDecoder;->buf:[B

    .line 77
    invoke-virtual {p0, p1}, Lcom/flurry/org/apache/avro/io/DirectBinaryDecoder;->configure(Ljava/io/InputStream;)Lcom/flurry/org/apache/avro/io/DirectBinaryDecoder;

    .line 78
    return-void
.end method


# virtual methods
.method configure(Ljava/io/InputStream;)Lcom/flurry/org/apache/avro/io/DirectBinaryDecoder;
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/flurry/org/apache/avro/io/DirectBinaryDecoder;->in:Ljava/io/InputStream;

    .line 82
    instance-of v0, p1, Lcom/flurry/org/apache/avro/util/ByteBufferInputStream;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/flurry/org/apache/avro/io/DirectBinaryDecoder$ReuseByteReader;

    check-cast p1, Lcom/flurry/org/apache/avro/util/ByteBufferInputStream;

    .end local p1    # "in":Ljava/io/InputStream;
    invoke-direct {v0, p0, p1}, Lcom/flurry/org/apache/avro/io/DirectBinaryDecoder$ReuseByteReader;-><init>(Lcom/flurry/org/apache/avro/io/DirectBinaryDecoder;Lcom/flurry/org/apache/avro/util/ByteBufferInputStream;)V

    :goto_0
    iput-object v0, p0, Lcom/flurry/org/apache/avro/io/DirectBinaryDecoder;->byteReader:Lcom/flurry/org/apache/avro/io/DirectBinaryDecoder$ByteReader;

    .line 84
    return-object p0

    .line 82
    .restart local p1    # "in":Ljava/io/InputStream;
    :cond_0
    new-instance v0, Lcom/flurry/org/apache/avro/io/DirectBinaryDecoder$ByteReader;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/flurry/org/apache/avro/io/DirectBinaryDecoder$ByteReader;-><init>(Lcom/flurry/org/apache/avro/io/DirectBinaryDecoder;Lcom/flurry/org/apache/avro/io/DirectBinaryDecoder$1;)V

    goto :goto_0
.end method

.method protected doReadBytes([BII)V
    .locals 2
    .param p1, "bytes"    # [B
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 184
    :goto_0
    iget-object v1, p0, Lcom/flurry/org/apache/avro/io/DirectBinaryDecoder;->in:Ljava/io/InputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 185
    .local v0, "n":I
    if-eq v0, p3, :cond_0

    if-nez p3, :cond_1

    .line 186
    :cond_0
    return-void

    .line 187
    :cond_1
    if-gez v0, :cond_2

    .line 188
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1

    .line 190
    :cond_2
    add-int/2addr p2, v0

    .line 191
    sub-int/2addr p3, v0

    .line 192
    goto :goto_0
.end method

.method protected doSkipBytes(J)V
    .locals 7
    .param p1, "length"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0x0

    .line 171
    :goto_0
    cmp-long v2, p1, v4

    if-lez v2, :cond_1

    .line 172
    iget-object v2, p0, Lcom/flurry/org/apache/avro/io/DirectBinaryDecoder;->in:Ljava/io/InputStream;

    invoke-virtual {v2, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    .line 173
    .local v0, "n":J
    cmp-long v2, v0, v4

    if-gtz v2, :cond_0

    .line 174
    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    throw v2

    .line 176
    :cond_0
    sub-long/2addr p1, v0

    .line 177
    goto :goto_0

    .line 178
    .end local v0    # "n":J
    :cond_1
    return-void
.end method

.method public inputStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/DirectBinaryDecoder;->in:Ljava/io/InputStream;

    return-object v0
.end method

.method public isEnd()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 202
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public readBoolean()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 89
    iget-object v2, p0, Lcom/flurry/org/apache/avro/io/DirectBinaryDecoder;->in:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 90
    .local v0, "n":I
    if-gez v0, :cond_0

    .line 91
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1

    .line 93
    :cond_0
    if-ne v0, v1, :cond_1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public readBytes(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 2
    .param p1, "old"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 165
    invoke-virtual {p0}, Lcom/flurry/org/apache/avro/io/DirectBinaryDecoder;->readInt()I

    move-result v0

    .line 166
    .local v0, "length":I
    iget-object v1, p0, Lcom/flurry/org/apache/avro/io/DirectBinaryDecoder;->byteReader:Lcom/flurry/org/apache/avro/io/DirectBinaryDecoder$ByteReader;

    invoke-virtual {v1, p1, v0}, Lcom/flurry/org/apache/avro/io/DirectBinaryDecoder$ByteReader;->read(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object v1

    return-object v1
.end method

.method public readDouble()D
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x8

    const/4 v3, 0x0

    const-wide/16 v8, 0xff

    .line 151
    iget-object v2, p0, Lcom/flurry/org/apache/avro/io/DirectBinaryDecoder;->buf:[B

    invoke-virtual {p0, v2, v3, v6}, Lcom/flurry/org/apache/avro/io/DirectBinaryDecoder;->doReadBytes([BII)V

    .line 152
    iget-object v2, p0, Lcom/flurry/org/apache/avro/io/DirectBinaryDecoder;->buf:[B

    aget-byte v2, v2, v3

    int-to-long v2, v2

    and-long/2addr v2, v8

    iget-object v4, p0, Lcom/flurry/org/apache/avro/io/DirectBinaryDecoder;->buf:[B

    const/4 v5, 0x1

    aget-byte v4, v4, v5

    int-to-long v4, v4

    and-long/2addr v4, v8

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    iget-object v4, p0, Lcom/flurry/org/apache/avro/io/DirectBinaryDecoder;->buf:[B

    const/4 v5, 0x2

    aget-byte v4, v4, v5

    int-to-long v4, v4

    and-long/2addr v4, v8

    const/16 v6, 0x10

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    iget-object v4, p0, Lcom/flurry/org/apache/avro/io/DirectBinaryDecoder;->buf:[B

    const/4 v5, 0x3

    aget-byte v4, v4, v5

    int-to-long v4, v4

    and-long/2addr v4, v8

    const/16 v6, 0x18

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    iget-object v4, p0, Lcom/flurry/org/apache/avro/io/DirectBinaryDecoder;->buf:[B

    const/4 v5, 0x4

    aget-byte v4, v4, v5

    int-to-long v4, v4

    and-long/2addr v4, v8

    const/16 v6, 0x20

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    iget-object v4, p0, Lcom/flurry/org/apache/avro/io/DirectBinaryDecoder;->buf:[B

    const/4 v5, 0x5

    aget-byte v4, v4, v5

    int-to-long v4, v4

    and-long/2addr v4, v8

    const/16 v6, 0x28

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    iget-object v4, p0, Lcom/flurry/org/apache/avro/io/DirectBinaryDecoder;->buf:[B

    const/4 v5, 0x6

    aget-byte v4, v4, v5

    int-to-long v4, v4

    and-long/2addr v4, v8

    const/16 v6, 0x30

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    iget-object v4, p0, Lcom/flurry/org/apache/avro/io/DirectBinaryDecoder;->buf:[B

    const/4 v5, 0x7

    aget-byte v4, v4, v5

    int-to-long v4, v4

    and-long/2addr v4, v8

    const/16 v6, 0x38

    shl-long/2addr v4, v6

    or-long v0, v2, v4

    .line 160
    .local v0, "n":J
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v2

    return-wide v2
.end method

.method public readFloat()F
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 141
    iget-object v1, p0, Lcom/flurry/org/apache/avro/io/DirectBinaryDecoder;->buf:[B

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v3, v2}, Lcom/flurry/org/apache/avro/io/DirectBinaryDecoder;->doReadBytes([BII)V

    .line 142
    iget-object v1, p0, Lcom/flurry/org/apache/avro/io/DirectBinaryDecoder;->buf:[B

    aget-byte v1, v1, v3

    and-int/lit16 v1, v1, 0xff

    iget-object v2, p0, Lcom/flurry/org/apache/avro/io/DirectBinaryDecoder;->buf:[B

    const/4 v3, 0x1

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    iget-object v2, p0, Lcom/flurry/org/apache/avro/io/DirectBinaryDecoder;->buf:[B

    const/4 v3, 0x2

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    iget-object v2, p0, Lcom/flurry/org/apache/avro/io/DirectBinaryDecoder;->buf:[B

    const/4 v3, 0x3

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x18

    or-int v0, v1, v2

    .line 146
    .local v0, "n":I
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    return v1
.end method

.method public readInt()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 98
    const/4 v1, 0x0

    .line 100
    .local v1, "n":I
    const/4 v2, 0x0

    .line 102
    .local v2, "shift":I
    :cond_0
    iget-object v3, p0, Lcom/flurry/org/apache/avro/io/DirectBinaryDecoder;->in:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 103
    .local v0, "b":I
    if-ltz v0, :cond_1

    .line 104
    and-int/lit8 v3, v0, 0x7f

    shl-int/2addr v3, v2

    or-int/2addr v1, v3

    .line 105
    and-int/lit16 v3, v0, 0x80

    if-nez v3, :cond_2

    .line 106
    ushr-int/lit8 v3, v1, 0x1

    and-int/lit8 v4, v1, 0x1

    neg-int v4, v4

    xor-int/2addr v3, v4

    return v3

    .line 109
    :cond_1
    new-instance v3, Ljava/io/EOFException;

    invoke-direct {v3}, Ljava/io/EOFException;-><init>()V

    throw v3

    .line 111
    :cond_2
    add-int/lit8 v2, v2, 0x7

    .line 112
    const/16 v3, 0x20

    if-lt v2, v3, :cond_0

    .line 113
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Invalid int encoding"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public readLong()J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 119
    const-wide/16 v2, 0x0

    .line 121
    .local v2, "n":J
    const/4 v1, 0x0

    .line 123
    .local v1, "shift":I
    :cond_0
    iget-object v4, p0, Lcom/flurry/org/apache/avro/io/DirectBinaryDecoder;->in:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 124
    .local v0, "b":I
    if-ltz v0, :cond_1

    .line 125
    int-to-long v4, v0

    const-wide/16 v6, 0x7f

    and-long/2addr v4, v6

    shl-long/2addr v4, v1

    or-long/2addr v2, v4

    .line 126
    and-int/lit16 v4, v0, 0x80

    if-nez v4, :cond_2

    .line 127
    const/4 v4, 0x1

    ushr-long v4, v2, v4

    const-wide/16 v6, 0x1

    and-long/2addr v6, v2

    neg-long v6, v6

    xor-long/2addr v4, v6

    return-wide v4

    .line 130
    :cond_1
    new-instance v4, Ljava/io/EOFException;

    invoke-direct {v4}, Ljava/io/EOFException;-><init>()V

    throw v4

    .line 132
    :cond_2
    add-int/lit8 v1, v1, 0x7

    .line 133
    const/16 v4, 0x40

    if-lt v1, v4, :cond_0

    .line 134
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Invalid long encoding"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
.end method
