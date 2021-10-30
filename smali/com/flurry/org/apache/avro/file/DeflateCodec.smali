.class Lcom/flurry/org/apache/avro/file/DeflateCodec;
.super Lcom/flurry/org/apache/avro/file/Codec;
.source "DeflateCodec.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/org/apache/avro/file/DeflateCodec$Option;
    }
.end annotation


# instance fields
.field private compressionLevel:I

.field private deflater:Ljava/util/zip/Deflater;

.field private inflater:Ljava/util/zip/Inflater;

.field private nowrap:Z

.field private outputBuffer:Ljava/io/ByteArrayOutputStream;


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "compressionLevel"    # I

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/flurry/org/apache/avro/file/Codec;-><init>()V

    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/org/apache/avro/file/DeflateCodec;->nowrap:Z

    .line 62
    iput p1, p0, Lcom/flurry/org/apache/avro/file/DeflateCodec;->compressionLevel:I

    .line 63
    return-void
.end method

.method private getDeflater()Ljava/util/zip/Deflater;
    .locals 3

    .prologue
    .line 110
    iget-object v0, p0, Lcom/flurry/org/apache/avro/file/DeflateCodec;->deflater:Ljava/util/zip/Deflater;

    if-nez v0, :cond_0

    .line 111
    new-instance v0, Ljava/util/zip/Deflater;

    iget v1, p0, Lcom/flurry/org/apache/avro/file/DeflateCodec;->compressionLevel:I

    iget-boolean v2, p0, Lcom/flurry/org/apache/avro/file/DeflateCodec;->nowrap:Z

    invoke-direct {v0, v1, v2}, Ljava/util/zip/Deflater;-><init>(IZ)V

    iput-object v0, p0, Lcom/flurry/org/apache/avro/file/DeflateCodec;->deflater:Ljava/util/zip/Deflater;

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/flurry/org/apache/avro/file/DeflateCodec;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->reset()V

    .line 114
    iget-object v0, p0, Lcom/flurry/org/apache/avro/file/DeflateCodec;->deflater:Ljava/util/zip/Deflater;

    return-object v0
.end method

.method private getInflater()Ljava/util/zip/Inflater;
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/flurry/org/apache/avro/file/DeflateCodec;->inflater:Ljava/util/zip/Inflater;

    if-nez v0, :cond_0

    .line 102
    new-instance v0, Ljava/util/zip/Inflater;

    iget-boolean v1, p0, Lcom/flurry/org/apache/avro/file/DeflateCodec;->nowrap:Z

    invoke-direct {v0, v1}, Ljava/util/zip/Inflater;-><init>(Z)V

    iput-object v0, p0, Lcom/flurry/org/apache/avro/file/DeflateCodec;->inflater:Ljava/util/zip/Inflater;

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/flurry/org/apache/avro/file/DeflateCodec;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->reset()V

    .line 105
    iget-object v0, p0, Lcom/flurry/org/apache/avro/file/DeflateCodec;->inflater:Ljava/util/zip/Inflater;

    return-object v0
.end method

.method private getOutputBuffer(I)Ljava/io/ByteArrayOutputStream;
    .locals 1
    .param p1, "suggestedLength"    # I

    .prologue
    .line 119
    iget-object v0, p0, Lcom/flurry/org/apache/avro/file/DeflateCodec;->outputBuffer:Ljava/io/ByteArrayOutputStream;

    if-nez v0, :cond_0

    .line 120
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    iput-object v0, p0, Lcom/flurry/org/apache/avro/file/DeflateCodec;->outputBuffer:Ljava/io/ByteArrayOutputStream;

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/flurry/org/apache/avro/file/DeflateCodec;->outputBuffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 123
    iget-object v0, p0, Lcom/flurry/org/apache/avro/file/DeflateCodec;->outputBuffer:Ljava/io/ByteArrayOutputStream;

    return-object v0
.end method

.method private writeAndClose(Ljava/nio/ByteBuffer;Ljava/io/OutputStream;)V
    .locals 5
    .param p1, "data"    # Ljava/nio/ByteBuffer;
    .param p2, "to"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 89
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 90
    .local v0, "input":[B
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    add-int v2, v3, v4

    .line 91
    .local v2, "offset":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    .line 93
    .local v1, "length":I
    :try_start_0
    invoke-virtual {p2, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    .line 97
    return-void

    .line 95
    :catchall_0
    move-exception v3

    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    throw v3
.end method


# virtual methods
.method compress(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 4
    .param p1, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 72
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/flurry/org/apache/avro/file/DeflateCodec;->getOutputBuffer(I)Ljava/io/ByteArrayOutputStream;

    move-result-object v0

    .line 73
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/util/zip/DeflaterOutputStream;

    invoke-direct {p0}, Lcom/flurry/org/apache/avro/file/DeflateCodec;->getDeflater()Ljava/util/zip/Deflater;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Ljava/util/zip/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;Ljava/util/zip/Deflater;)V

    .line 74
    .local v1, "ios":Ljava/util/zip/DeflaterOutputStream;
    invoke-direct {p0, p1, v1}, Lcom/flurry/org/apache/avro/file/DeflateCodec;->writeAndClose(Ljava/nio/ByteBuffer;Ljava/io/OutputStream;)V

    .line 75
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 76
    .local v2, "result":Ljava/nio/ByteBuffer;
    return-object v2
.end method

.method decompress(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 4
    .param p1, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 81
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/flurry/org/apache/avro/file/DeflateCodec;->getOutputBuffer(I)Ljava/io/ByteArrayOutputStream;

    move-result-object v0

    .line 82
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/util/zip/InflaterOutputStream;

    invoke-direct {p0}, Lcom/flurry/org/apache/avro/file/DeflateCodec;->getInflater()Ljava/util/zip/Inflater;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Ljava/util/zip/InflaterOutputStream;-><init>(Ljava/io/OutputStream;Ljava/util/zip/Inflater;)V

    .line 83
    .local v1, "ios":Ljava/util/zip/InflaterOutputStream;
    invoke-direct {p0, p1, v1}, Lcom/flurry/org/apache/avro/file/DeflateCodec;->writeAndClose(Ljava/nio/ByteBuffer;Ljava/io/OutputStream;)V

    .line 84
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 85
    .local v2, "result":Ljava/nio/ByteBuffer;
    return-object v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 133
    if-ne p0, p1, :cond_1

    .line 138
    :cond_0
    :goto_0
    return v1

    .line 135
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_2

    move v1, v2

    .line 136
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 137
    check-cast v0, Lcom/flurry/org/apache/avro/file/DeflateCodec;

    .line 138
    .local v0, "other":Lcom/flurry/org/apache/avro/file/DeflateCodec;
    iget-boolean v3, p0, Lcom/flurry/org/apache/avro/file/DeflateCodec;->nowrap:Z

    iget-boolean v4, v0, Lcom/flurry/org/apache/avro/file/DeflateCodec;->nowrap:Z

    if-eq v3, v4, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    const-string v0, "deflate"

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 128
    iget-boolean v0, p0, Lcom/flurry/org/apache/avro/file/DeflateCodec;->nowrap:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/flurry/org/apache/avro/file/DeflateCodec;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/flurry/org/apache/avro/file/DeflateCodec;->compressionLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
