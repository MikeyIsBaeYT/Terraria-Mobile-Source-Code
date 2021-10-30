.class public Lcom/flurry/org/apache/avro/io/BufferedBinaryEncoder;
.super Lcom/flurry/org/apache/avro/io/BinaryEncoder;
.source "BufferedBinaryEncoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/org/apache/avro/io/BufferedBinaryEncoder$1;,
        Lcom/flurry/org/apache/avro/io/BufferedBinaryEncoder$OutputStreamSink;,
        Lcom/flurry/org/apache/avro/io/BufferedBinaryEncoder$ByteSink;
    }
.end annotation


# instance fields
.field private buf:[B

.field private bulkLimit:I

.field private pos:I

.field private sink:Lcom/flurry/org/apache/avro/io/BufferedBinaryEncoder$ByteSink;


# direct methods
.method constructor <init>(Ljava/io/OutputStream;I)V
    .locals 0
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "bufferSize"    # I

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/flurry/org/apache/avro/io/BinaryEncoder;-><init>()V

    .line 52
    invoke-virtual {p0, p1, p2}, Lcom/flurry/org/apache/avro/io/BufferedBinaryEncoder;->configure(Ljava/io/OutputStream;I)Lcom/flurry/org/apache/avro/io/BufferedBinaryEncoder;

    .line 53
    return-void
.end method

.method private ensureBounds(I)V
    .locals 3
    .param p1, "num"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 103
    iget-object v1, p0, Lcom/flurry/org/apache/avro/io/BufferedBinaryEncoder;->buf:[B

    array-length v1, v1

    iget v2, p0, Lcom/flurry/org/apache/avro/io/BufferedBinaryEncoder;->pos:I

    sub-int v0, v1, v2

    .line 104
    .local v0, "remaining":I
    if-ge v0, p1, :cond_0

    .line 105
    invoke-direct {p0}, Lcom/flurry/org/apache/avro/io/BufferedBinaryEncoder;->flushBuffer()V

    .line 107
    :cond_0
    return-void
.end method

.method private flushBuffer()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 89
    iget v0, p0, Lcom/flurry/org/apache/avro/io/BufferedBinaryEncoder;->pos:I

    if-lez v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/BufferedBinaryEncoder;->sink:Lcom/flurry/org/apache/avro/io/BufferedBinaryEncoder$ByteSink;

    iget-object v1, p0, Lcom/flurry/org/apache/avro/io/BufferedBinaryEncoder;->buf:[B

    iget v2, p0, Lcom/flurry/org/apache/avro/io/BufferedBinaryEncoder;->pos:I

    invoke-virtual {v0, v1, v3, v2}, Lcom/flurry/org/apache/avro/io/BufferedBinaryEncoder$ByteSink;->innerWrite([BII)V

    .line 91
    iput v3, p0, Lcom/flurry/org/apache/avro/io/BufferedBinaryEncoder;->pos:I

    .line 93
    :cond_0
    return-void
.end method

.method private writeByte(I)V
    .locals 3
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 161
    iget v0, p0, Lcom/flurry/org/apache/avro/io/BufferedBinaryEncoder;->pos:I

    iget-object v1, p0, Lcom/flurry/org/apache/avro/io/BufferedBinaryEncoder;->buf:[B

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 162
    invoke-direct {p0}, Lcom/flurry/org/apache/avro/io/BufferedBinaryEncoder;->flushBuffer()V

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/BufferedBinaryEncoder;->buf:[B

    iget v1, p0, Lcom/flurry/org/apache/avro/io/BufferedBinaryEncoder;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/flurry/org/apache/avro/io/BufferedBinaryEncoder;->pos:I

    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 165
    return-void
.end method


# virtual methods
.method public bytesBuffered()I
    .locals 1

    .prologue
    .line 169
    iget v0, p0, Lcom/flurry/org/apache/avro/io/BufferedBinaryEncoder;->pos:I

    return v0
.end method

.method configure(Ljava/io/OutputStream;I)Lcom/flurry/org/apache/avro/io/BufferedBinaryEncoder;
    .locals 4
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "bufferSize"    # I

    .prologue
    const/16 v3, 0x200

    .line 56
    if-nez p1, :cond_0

    .line 57
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "OutputStream cannot be null!"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 58
    :cond_0
    iget-object v1, p0, Lcom/flurry/org/apache/avro/io/BufferedBinaryEncoder;->sink:Lcom/flurry/org/apache/avro/io/BufferedBinaryEncoder$ByteSink;

    if-eqz v1, :cond_1

    .line 59
    iget v1, p0, Lcom/flurry/org/apache/avro/io/BufferedBinaryEncoder;->pos:I

    if-lez v1, :cond_1

    .line 61
    :try_start_0
    invoke-direct {p0}, Lcom/flurry/org/apache/avro/io/BufferedBinaryEncoder;->flushBuffer()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    :cond_1
    new-instance v1, Lcom/flurry/org/apache/avro/io/BufferedBinaryEncoder$OutputStreamSink;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/flurry/org/apache/avro/io/BufferedBinaryEncoder$OutputStreamSink;-><init>(Ljava/io/OutputStream;Lcom/flurry/org/apache/avro/io/BufferedBinaryEncoder$1;)V

    iput-object v1, p0, Lcom/flurry/org/apache/avro/io/BufferedBinaryEncoder;->sink:Lcom/flurry/org/apache/avro/io/BufferedBinaryEncoder$ByteSink;

    .line 68
    const/4 v1, 0x0

    iput v1, p0, Lcom/flurry/org/apache/avro/io/BufferedBinaryEncoder;->pos:I

    .line 69
    iget-object v1, p0, Lcom/flurry/org/apache/avro/io/BufferedBinaryEncoder;->buf:[B

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/flurry/org/apache/avro/io/BufferedBinaryEncoder;->buf:[B

    array-length v1, v1

    if-eq v1, p2, :cond_3

    .line 70
    :cond_2
    new-array v1, p2, [B

    iput-object v1, p0, Lcom/flurry/org/apache/avro/io/BufferedBinaryEncoder;->buf:[B

    .line 72
    :cond_3
    iget-object v1, p0, Lcom/flurry/org/apache/avro/io/BufferedBinaryEncoder;->buf:[B

    array-length v1, v1

    ushr-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/flurry/org/apache/avro/io/BufferedBinaryEncoder;->bulkLimit:I

    .line 73
    iget v1, p0, Lcom/flurry/org/apache/avro/io/BufferedBinaryEncoder;->bulkLimit:I

    if-le v1, v3, :cond_4

    .line 74
    iput v3, p0, Lcom/flurry/org/apache/avro/io/BufferedBinaryEncoder;->bulkLimit:I

    .line 76
    :cond_4
    return-object p0

    .line 62
    :catch_0
    move-exception v0

    .line 63
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/flurry/org/apache/avro/AvroRuntimeException;

    const-string v2, "Failure flushing old output"

    invoke-direct {v1, v2, v0}, Lcom/flurry/org/apache/avro/AvroRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/flurry/org/apache/avro/io/BufferedBinaryEncoder;->flushBuffer()V

    .line 82
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/BufferedBinaryEncoder;->sink:Lcom/flurry/org/apache/avro/io/BufferedBinaryEncoder$ByteSink;

    invoke-virtual {v0}, Lcom/flurry/org/apache/avro/io/BufferedBinaryEncoder$ByteSink;->innerFlush()V

    .line 83
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
    .line 112
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/BufferedBinaryEncoder;->buf:[B

    array-length v0, v0

    iget v1, p0, Lcom/flurry/org/apache/avro/io/BufferedBinaryEncoder;->pos:I

    if-ne v0, v1, :cond_0

    .line 113
    invoke-direct {p0}, Lcom/flurry/org/apache/avro/io/BufferedBinaryEncoder;->flushBuffer()V

    .line 115
    :cond_0
    iget v0, p0, Lcom/flurry/org/apache/avro/io/BufferedBinaryEncoder;->pos:I

    iget-object v1, p0, Lcom/flurry/org/apache/avro/io/BufferedBinaryEncoder;->buf:[B

    iget v2, p0, Lcom/flurry/org/apache/avro/io/BufferedBinaryEncoder;->pos:I

    invoke-static {p1, v1, v2}, Lcom/flurry/org/apache/avro/io/BinaryData;->encodeBoolean(Z[BI)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/flurry/org/apache/avro/io/BufferedBinaryEncoder;->pos:I

    .line 116
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
    .line 138
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/flurry/org/apache/avro/io/BufferedBinaryEncoder;->ensureBounds(I)V

    .line 139
    iget v0, p0, Lcom/flurry/org/apache/avro/io/BufferedBinaryEncoder;->pos:I

    iget-object v1, p0, Lcom/flurry/org/apache/avro/io/BufferedBinaryEncoder;->buf:[B

    iget v2, p0, Lcom/flurry/org/apache/avro/io/BufferedBinaryEncoder;->pos:I

    invoke-static {p1, p2, v1, v2}, Lcom/flurry/org/apache/avro/io/BinaryData;->encodeDouble(D[BI)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/flurry/org/apache/avro/io/BufferedBinaryEncoder;->pos:I

    .line 140
    return-void
.end method

.method public writeFixed([BII)V
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
    .line 144
    iget v0, p0, Lcom/flurry/org/apache/avro/io/BufferedBinaryEncoder;->bulkLimit:I

    if-le p3, v0, :cond_0

    .line 146
    invoke-direct {p0}, Lcom/flurry/org/apache/avro/io/BufferedBinaryEncoder;->flushBuffer()V

    .line 147
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/BufferedBinaryEncoder;->sink:Lcom/flurry/org/apache/avro/io/BufferedBinaryEncoder$ByteSink;

    invoke-virtual {v0, p1, p2, p3}, Lcom/flurry/org/apache/avro/io/BufferedBinaryEncoder$ByteSink;->innerWrite([BII)V

    .line 153
    :goto_0
    return-void

    .line 150
    :cond_0
    invoke-direct {p0, p3}, Lcom/flurry/org/apache/avro/io/BufferedBinaryEncoder;->ensureBounds(I)V

    .line 151
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/BufferedBinaryEncoder;->buf:[B

    iget v1, p0, Lcom/flurry/org/apache/avro/io/BufferedBinaryEncoder;->pos:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 152
    iget v0, p0, Lcom/flurry/org/apache/avro/io/BufferedBinaryEncoder;->pos:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/flurry/org/apache/avro/io/BufferedBinaryEncoder;->pos:I

    goto :goto_0
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
    .line 132
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/flurry/org/apache/avro/io/BufferedBinaryEncoder;->ensureBounds(I)V

    .line 133
    iget v0, p0, Lcom/flurry/org/apache/avro/io/BufferedBinaryEncoder;->pos:I

    iget-object v1, p0, Lcom/flurry/org/apache/avro/io/BufferedBinaryEncoder;->buf:[B

    iget v2, p0, Lcom/flurry/org/apache/avro/io/BufferedBinaryEncoder;->pos:I

    invoke-static {p1, v1, v2}, Lcom/flurry/org/apache/avro/io/BinaryData;->encodeFloat(F[BI)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/flurry/org/apache/avro/io/BufferedBinaryEncoder;->pos:I

    .line 134
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
    .line 120
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/flurry/org/apache/avro/io/BufferedBinaryEncoder;->ensureBounds(I)V

    .line 121
    iget v0, p0, Lcom/flurry/org/apache/avro/io/BufferedBinaryEncoder;->pos:I

    iget-object v1, p0, Lcom/flurry/org/apache/avro/io/BufferedBinaryEncoder;->buf:[B

    iget v2, p0, Lcom/flurry/org/apache/avro/io/BufferedBinaryEncoder;->pos:I

    invoke-static {p1, v1, v2}, Lcom/flurry/org/apache/avro/io/BinaryData;->encodeInt(I[BI)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/flurry/org/apache/avro/io/BufferedBinaryEncoder;->pos:I

    .line 122
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
    .line 126
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/flurry/org/apache/avro/io/BufferedBinaryEncoder;->ensureBounds(I)V

    .line 127
    iget v0, p0, Lcom/flurry/org/apache/avro/io/BufferedBinaryEncoder;->pos:I

    iget-object v1, p0, Lcom/flurry/org/apache/avro/io/BufferedBinaryEncoder;->buf:[B

    iget v2, p0, Lcom/flurry/org/apache/avro/io/BufferedBinaryEncoder;->pos:I

    invoke-static {p1, p2, v1, v2}, Lcom/flurry/org/apache/avro/io/BinaryData;->encodeLong(J[BI)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/flurry/org/apache/avro/io/BufferedBinaryEncoder;->pos:I

    .line 128
    return-void
.end method

.method protected writeZero()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 157
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/flurry/org/apache/avro/io/BufferedBinaryEncoder;->writeByte(I)V

    .line 158
    return-void
.end method
