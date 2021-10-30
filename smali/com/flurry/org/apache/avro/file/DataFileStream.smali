.class public Lcom/flurry/org/apache/avro/file/DataFileStream;
.super Ljava/lang/Object;
.source "DataFileStream.java"

# interfaces
.implements Ljava/util/Iterator;
.implements Ljava/lang/Iterable;
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/org/apache/avro/file/DataFileStream$1;,
        Lcom/flurry/org/apache/avro/file/DataFileStream$DataBlock;,
        Lcom/flurry/org/apache/avro/file/DataFileStream$Header;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TD;>;",
        "Ljava/lang/Iterable",
        "<TD;>;",
        "Ljava/io/Closeable;"
    }
.end annotation


# instance fields
.field private availableBlock:Z

.field private block:Lcom/flurry/org/apache/avro/file/DataFileStream$DataBlock;

.field blockBuffer:Ljava/nio/ByteBuffer;

.field blockCount:J

.field blockRemaining:J

.field private blockSize:J

.field private codec:Lcom/flurry/org/apache/avro/file/Codec;

.field datumIn:Lcom/flurry/org/apache/avro/io/BinaryDecoder;

.field private header:Lcom/flurry/org/apache/avro/file/DataFileStream$Header;

.field private reader:Lcom/flurry/org/apache/avro/io/DatumReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/org/apache/avro/io/DatumReader",
            "<TD;>;"
        }
    .end annotation
.end field

.field syncBuffer:[B

.field vin:Lcom/flurry/org/apache/avro/io/BinaryDecoder;


# direct methods
.method protected constructor <init>(Lcom/flurry/org/apache/avro/io/DatumReader;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/apache/avro/io/DatumReader",
            "<TD;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/flurry/org/apache/avro/file/DataFileStream;, "Lcom/flurry/org/apache/avro/file/DataFileStream<TD;>;"
    .local p1, "reader":Lcom/flurry/org/apache/avro/io/DatumReader;, "Lcom/flurry/org/apache/avro/io/DatumReader<TD;>;"
    const/4 v1, 0x0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flurry/org/apache/avro/file/DataFileStream;->availableBlock:Z

    .line 69
    iput-object v1, p0, Lcom/flurry/org/apache/avro/file/DataFileStream;->datumIn:Lcom/flurry/org/apache/avro/io/BinaryDecoder;

    .line 74
    const/16 v0, 0x10

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/flurry/org/apache/avro/file/DataFileStream;->syncBuffer:[B

    .line 184
    iput-object v1, p0, Lcom/flurry/org/apache/avro/file/DataFileStream;->block:Lcom/flurry/org/apache/avro/file/DataFileStream$DataBlock;

    .line 91
    iput-object p1, p0, Lcom/flurry/org/apache/avro/file/DataFileStream;->reader:Lcom/flurry/org/apache/avro/io/DatumReader;

    .line 92
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lcom/flurry/org/apache/avro/io/DatumReader;)V
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Lcom/flurry/org/apache/avro/io/DatumReader",
            "<TD;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/flurry/org/apache/avro/file/DataFileStream;, "Lcom/flurry/org/apache/avro/file/DataFileStream<TD;>;"
    .local p2, "reader":Lcom/flurry/org/apache/avro/io/DatumReader;, "Lcom/flurry/org/apache/avro/io/DatumReader<TD;>;"
    const/4 v1, 0x0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flurry/org/apache/avro/file/DataFileStream;->availableBlock:Z

    .line 69
    iput-object v1, p0, Lcom/flurry/org/apache/avro/file/DataFileStream;->datumIn:Lcom/flurry/org/apache/avro/io/BinaryDecoder;

    .line 74
    const/16 v0, 0x10

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/flurry/org/apache/avro/file/DataFileStream;->syncBuffer:[B

    .line 184
    iput-object v1, p0, Lcom/flurry/org/apache/avro/file/DataFileStream;->block:Lcom/flurry/org/apache/avro/file/DataFileStream$DataBlock;

    .line 83
    iput-object p2, p0, Lcom/flurry/org/apache/avro/file/DataFileStream;->reader:Lcom/flurry/org/apache/avro/io/DatumReader;

    .line 84
    invoke-virtual {p0, p1}, Lcom/flurry/org/apache/avro/file/DataFileStream;->initialize(Ljava/io/InputStream;)V

    .line 85
    return-void
.end method


# virtual methods
.method protected blockFinished()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 256
    .local p0, "this":Lcom/flurry/org/apache/avro/file/DataFileStream;, "Lcom/flurry/org/apache/avro/file/DataFileStream<TD;>;"
    return-void
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 305
    .local p0, "this":Lcom/flurry/org/apache/avro/file/DataFileStream;, "Lcom/flurry/org/apache/avro/file/DataFileStream<TD;>;"
    iget-object v0, p0, Lcom/flurry/org/apache/avro/file/DataFileStream;->vin:Lcom/flurry/org/apache/avro/io/BinaryDecoder;

    invoke-virtual {v0}, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->inputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 306
    return-void
.end method

.method public getBlockCount()J
    .locals 2

    .prologue
    .line 252
    .local p0, "this":Lcom/flurry/org/apache/avro/file/DataFileStream;, "Lcom/flurry/org/apache/avro/file/DataFileStream<TD;>;"
    iget-wide v0, p0, Lcom/flurry/org/apache/avro/file/DataFileStream;->blockCount:J

    return-wide v0
.end method

.method public getHeader()Lcom/flurry/org/apache/avro/file/DataFileStream$Header;
    .locals 1

    .prologue
    .line 147
    .local p0, "this":Lcom/flurry/org/apache/avro/file/DataFileStream;, "Lcom/flurry/org/apache/avro/file/DataFileStream<TD;>;"
    iget-object v0, p0, Lcom/flurry/org/apache/avro/file/DataFileStream;->header:Lcom/flurry/org/apache/avro/file/DataFileStream$Header;

    return-object v0
.end method

.method public getMeta(Ljava/lang/String;)[B
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 159
    .local p0, "this":Lcom/flurry/org/apache/avro/file/DataFileStream;, "Lcom/flurry/org/apache/avro/file/DataFileStream<TD;>;"
    iget-object v0, p0, Lcom/flurry/org/apache/avro/file/DataFileStream;->header:Lcom/flurry/org/apache/avro/file/DataFileStream$Header;

    iget-object v0, v0, Lcom/flurry/org/apache/avro/file/DataFileStream$Header;->meta:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public getMetaKeys()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 154
    .local p0, "this":Lcom/flurry/org/apache/avro/file/DataFileStream;, "Lcom/flurry/org/apache/avro/file/DataFileStream<TD;>;"
    iget-object v0, p0, Lcom/flurry/org/apache/avro/file/DataFileStream;->header:Lcom/flurry/org/apache/avro/file/DataFileStream$Header;

    invoke-static {v0}, Lcom/flurry/org/apache/avro/file/DataFileStream$Header;->access$100(Lcom/flurry/org/apache/avro/file/DataFileStream$Header;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMetaLong(Ljava/lang/String;)J
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 175
    .local p0, "this":Lcom/flurry/org/apache/avro/file/DataFileStream;, "Lcom/flurry/org/apache/avro/file/DataFileStream<TD;>;"
    invoke-virtual {p0, p1}, Lcom/flurry/org/apache/avro/file/DataFileStream;->getMetaString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMetaString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 163
    .local p0, "this":Lcom/flurry/org/apache/avro/file/DataFileStream;, "Lcom/flurry/org/apache/avro/file/DataFileStream<TD;>;"
    invoke-virtual {p0, p1}, Lcom/flurry/org/apache/avro/file/DataFileStream;->getMeta(Ljava/lang/String;)[B

    move-result-object v1

    .line 164
    .local v1, "value":[B
    if-nez v1, :cond_0

    .line 165
    const/4 v2, 0x0

    .line 168
    :goto_0
    return-object v2

    :cond_0
    :try_start_0
    new-instance v2, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-direct {v2, v1, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 169
    :catch_0
    move-exception v0

    .line 170
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public getSchema()Lcom/flurry/org/apache/avro/Schema;
    .locals 1

    .prologue
    .line 150
    .local p0, "this":Lcom/flurry/org/apache/avro/file/DataFileStream;, "Lcom/flurry/org/apache/avro/file/DataFileStream<TD;>;"
    iget-object v0, p0, Lcom/flurry/org/apache/avro/file/DataFileStream;->header:Lcom/flurry/org/apache/avro/file/DataFileStream$Header;

    iget-object v0, v0, Lcom/flurry/org/apache/avro/file/DataFileStream$Header;->schema:Lcom/flurry/org/apache/avro/Schema;

    return-object v0
.end method

.method public hasNext()Z
    .locals 10

    .prologue
    .local p0, "this":Lcom/flurry/org/apache/avro/file/DataFileStream;, "Lcom/flurry/org/apache/avro/file/DataFileStream<TD;>;"
    const-wide/16 v8, 0x0

    const/4 v2, 0x0

    .line 189
    :try_start_0
    iget-wide v4, p0, Lcom/flurry/org/apache/avro/file/DataFileStream;->blockRemaining:J

    cmp-long v3, v4, v8

    if-nez v3, :cond_2

    .line 191
    iget-object v3, p0, Lcom/flurry/org/apache/avro/file/DataFileStream;->datumIn:Lcom/flurry/org/apache/avro/io/BinaryDecoder;

    if-eqz v3, :cond_1

    .line 192
    iget-object v3, p0, Lcom/flurry/org/apache/avro/file/DataFileStream;->datumIn:Lcom/flurry/org/apache/avro/io/BinaryDecoder;

    invoke-virtual {v3}, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->isEnd()Z

    move-result v0

    .line 193
    .local v0, "atEnd":Z
    if-nez v0, :cond_1

    .line 194
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Block read partially, the data may be corrupt"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 207
    .end local v0    # "atEnd":Z
    :catch_0
    move-exception v1

    .line 208
    :cond_0
    :goto_0
    return v2

    .line 197
    :cond_1
    invoke-virtual {p0}, Lcom/flurry/org/apache/avro/file/DataFileStream;->hasNextBlock()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 198
    iget-object v3, p0, Lcom/flurry/org/apache/avro/file/DataFileStream;->block:Lcom/flurry/org/apache/avro/file/DataFileStream$DataBlock;

    invoke-virtual {p0, v3}, Lcom/flurry/org/apache/avro/file/DataFileStream;->nextRawBlock(Lcom/flurry/org/apache/avro/file/DataFileStream$DataBlock;)Lcom/flurry/org/apache/avro/file/DataFileStream$DataBlock;

    move-result-object v3

    iput-object v3, p0, Lcom/flurry/org/apache/avro/file/DataFileStream;->block:Lcom/flurry/org/apache/avro/file/DataFileStream$DataBlock;

    .line 199
    iget-object v3, p0, Lcom/flurry/org/apache/avro/file/DataFileStream;->block:Lcom/flurry/org/apache/avro/file/DataFileStream$DataBlock;

    iget-object v4, p0, Lcom/flurry/org/apache/avro/file/DataFileStream;->codec:Lcom/flurry/org/apache/avro/file/Codec;

    invoke-virtual {v3, v4}, Lcom/flurry/org/apache/avro/file/DataFileStream$DataBlock;->decompressUsing(Lcom/flurry/org/apache/avro/file/Codec;)V

    .line 200
    iget-object v3, p0, Lcom/flurry/org/apache/avro/file/DataFileStream;->block:Lcom/flurry/org/apache/avro/file/DataFileStream$DataBlock;

    invoke-virtual {v3}, Lcom/flurry/org/apache/avro/file/DataFileStream$DataBlock;->getAsByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v3

    iput-object v3, p0, Lcom/flurry/org/apache/avro/file/DataFileStream;->blockBuffer:Ljava/nio/ByteBuffer;

    .line 201
    invoke-static {}, Lcom/flurry/org/apache/avro/io/DecoderFactory;->get()Lcom/flurry/org/apache/avro/io/DecoderFactory;

    move-result-object v3

    iget-object v4, p0, Lcom/flurry/org/apache/avro/file/DataFileStream;->blockBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    iget-object v5, p0, Lcom/flurry/org/apache/avro/file/DataFileStream;->blockBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v5

    iget-object v6, p0, Lcom/flurry/org/apache/avro/file/DataFileStream;->blockBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/flurry/org/apache/avro/file/DataFileStream;->blockBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    iget-object v7, p0, Lcom/flurry/org/apache/avro/file/DataFileStream;->datumIn:Lcom/flurry/org/apache/avro/io/BinaryDecoder;

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/flurry/org/apache/avro/io/DecoderFactory;->binaryDecoder([BIILcom/flurry/org/apache/avro/io/BinaryDecoder;)Lcom/flurry/org/apache/avro/io/BinaryDecoder;

    move-result-object v3

    iput-object v3, p0, Lcom/flurry/org/apache/avro/file/DataFileStream;->datumIn:Lcom/flurry/org/apache/avro/io/BinaryDecoder;

    .line 206
    :cond_2
    iget-wide v4, p0, Lcom/flurry/org/apache/avro/file/DataFileStream;->blockRemaining:J
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    cmp-long v3, v4, v8

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    .line 209
    :catch_1
    move-exception v1

    .line 210
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Lcom/flurry/org/apache/avro/AvroRuntimeException;

    invoke-direct {v2, v1}, Lcom/flurry/org/apache/avro/AvroRuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method hasNextBlock()Z
    .locals 8

    .prologue
    .local p0, "this":Lcom/flurry/org/apache/avro/file/DataFileStream;, "Lcom/flurry/org/apache/avro/file/DataFileStream<TD;>;"
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 260
    :try_start_0
    iget-boolean v4, p0, Lcom/flurry/org/apache/avro/file/DataFileStream;->availableBlock:Z

    if-eqz v4, :cond_0

    .line 273
    :goto_0
    return v2

    .line 261
    :cond_0
    iget-object v4, p0, Lcom/flurry/org/apache/avro/file/DataFileStream;->vin:Lcom/flurry/org/apache/avro/io/BinaryDecoder;

    invoke-virtual {v4}, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->isEnd()Z

    move-result v4

    if-eqz v4, :cond_1

    move v2, v3

    goto :goto_0

    .line 262
    :cond_1
    iget-object v4, p0, Lcom/flurry/org/apache/avro/file/DataFileStream;->vin:Lcom/flurry/org/apache/avro/io/BinaryDecoder;

    invoke-virtual {v4}, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/flurry/org/apache/avro/file/DataFileStream;->blockRemaining:J

    .line 263
    iget-object v4, p0, Lcom/flurry/org/apache/avro/file/DataFileStream;->vin:Lcom/flurry/org/apache/avro/io/BinaryDecoder;

    invoke-virtual {v4}, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/flurry/org/apache/avro/file/DataFileStream;->blockSize:J

    .line 264
    iget-wide v4, p0, Lcom/flurry/org/apache/avro/file/DataFileStream;->blockSize:J

    const-wide/32 v6, 0x7fffffff

    cmp-long v4, v4, v6

    if-gtz v4, :cond_2

    iget-wide v4, p0, Lcom/flurry/org/apache/avro/file/DataFileStream;->blockSize:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-gez v4, :cond_3

    .line 266
    :cond_2
    new-instance v2, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Block size invalid or too large for this implementation: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, p0, Lcom/flurry/org/apache/avro/file/DataFileStream;->blockSize:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 272
    :catch_0
    move-exception v1

    .local v1, "eof":Ljava/io/EOFException;
    move v2, v3

    .line 273
    goto :goto_0

    .line 269
    .end local v1    # "eof":Ljava/io/EOFException;
    :cond_3
    iget-wide v4, p0, Lcom/flurry/org/apache/avro/file/DataFileStream;->blockRemaining:J

    iput-wide v4, p0, Lcom/flurry/org/apache/avro/file/DataFileStream;->blockCount:J

    .line 270
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/flurry/org/apache/avro/file/DataFileStream;->availableBlock:Z
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 274
    :catch_1
    move-exception v0

    .line 275
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Lcom/flurry/org/apache/avro/AvroRuntimeException;

    invoke-direct {v2, v0}, Lcom/flurry/org/apache/avro/AvroRuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method initialize(Ljava/io/InputStream;)V
    .locals 12
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 96
    .local p0, "this":Lcom/flurry/org/apache/avro/file/DataFileStream;, "Lcom/flurry/org/apache/avro/file/DataFileStream<TD;>;"
    new-instance v9, Lcom/flurry/org/apache/avro/file/DataFileStream$Header;

    const/4 v10, 0x0

    invoke-direct {v9, v10}, Lcom/flurry/org/apache/avro/file/DataFileStream$Header;-><init>(Lcom/flurry/org/apache/avro/file/DataFileStream$1;)V

    iput-object v9, p0, Lcom/flurry/org/apache/avro/file/DataFileStream;->header:Lcom/flurry/org/apache/avro/file/DataFileStream$Header;

    .line 97
    invoke-static {}, Lcom/flurry/org/apache/avro/io/DecoderFactory;->get()Lcom/flurry/org/apache/avro/io/DecoderFactory;

    move-result-object v9

    iget-object v10, p0, Lcom/flurry/org/apache/avro/file/DataFileStream;->vin:Lcom/flurry/org/apache/avro/io/BinaryDecoder;

    invoke-virtual {v9, p1, v10}, Lcom/flurry/org/apache/avro/io/DecoderFactory;->binaryDecoder(Ljava/io/InputStream;Lcom/flurry/org/apache/avro/io/BinaryDecoder;)Lcom/flurry/org/apache/avro/io/BinaryDecoder;

    move-result-object v9

    iput-object v9, p0, Lcom/flurry/org/apache/avro/file/DataFileStream;->vin:Lcom/flurry/org/apache/avro/io/BinaryDecoder;

    .line 98
    sget-object v9, Lcom/flurry/org/apache/avro/file/DataFileConstants;->MAGIC:[B

    array-length v9, v9

    new-array v5, v9, [B

    .line 100
    .local v5, "magic":[B
    :try_start_0
    iget-object v9, p0, Lcom/flurry/org/apache/avro/file/DataFileStream;->vin:Lcom/flurry/org/apache/avro/io/BinaryDecoder;

    invoke-virtual {v9, v5}, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->readFixed([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    sget-object v9, Lcom/flurry/org/apache/avro/file/DataFileConstants;->MAGIC:[B

    invoke-static {v9, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v9

    if-nez v9, :cond_0

    .line 105
    new-instance v9, Ljava/io/IOException;

    const-string v10, "Not a data file."

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 101
    :catch_0
    move-exception v1

    .line 102
    .local v1, "e":Ljava/io/IOException;
    new-instance v9, Ljava/io/IOException;

    const-string v10, "Not a data file."

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 107
    .end local v1    # "e":Ljava/io/IOException;
    :cond_0
    iget-object v9, p0, Lcom/flurry/org/apache/avro/file/DataFileStream;->vin:Lcom/flurry/org/apache/avro/io/BinaryDecoder;

    invoke-virtual {v9}, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->readMapStart()J

    move-result-wide v6

    .line 108
    .local v6, "l":J
    const-wide/16 v10, 0x0

    cmp-long v9, v6, v10

    if-lez v9, :cond_3

    .line 110
    :cond_1
    const-wide/16 v2, 0x0

    .local v2, "i":J
    :goto_0
    cmp-long v9, v2, v6

    if-gez v9, :cond_2

    .line 111
    iget-object v9, p0, Lcom/flurry/org/apache/avro/file/DataFileStream;->vin:Lcom/flurry/org/apache/avro/io/BinaryDecoder;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->readString(Lcom/flurry/org/apache/avro/util/Utf8;)Lcom/flurry/org/apache/avro/util/Utf8;

    move-result-object v9

    invoke-virtual {v9}, Lcom/flurry/org/apache/avro/util/Utf8;->toString()Ljava/lang/String;

    move-result-object v4

    .line 112
    .local v4, "key":Ljava/lang/String;
    iget-object v9, p0, Lcom/flurry/org/apache/avro/file/DataFileStream;->vin:Lcom/flurry/org/apache/avro/io/BinaryDecoder;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->readBytes(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 113
    .local v8, "value":Ljava/nio/ByteBuffer;
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v9

    new-array v0, v9, [B

    .line 114
    .local v0, "bb":[B
    invoke-virtual {v8, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 115
    iget-object v9, p0, Lcom/flurry/org/apache/avro/file/DataFileStream;->header:Lcom/flurry/org/apache/avro/file/DataFileStream$Header;

    iget-object v9, v9, Lcom/flurry/org/apache/avro/file/DataFileStream$Header;->meta:Ljava/util/Map;

    invoke-interface {v9, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    iget-object v9, p0, Lcom/flurry/org/apache/avro/file/DataFileStream;->header:Lcom/flurry/org/apache/avro/file/DataFileStream$Header;

    invoke-static {v9}, Lcom/flurry/org/apache/avro/file/DataFileStream$Header;->access$100(Lcom/flurry/org/apache/avro/file/DataFileStream$Header;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    const-wide/16 v10, 0x1

    add-long/2addr v2, v10

    goto :goto_0

    .line 118
    .end local v0    # "bb":[B
    .end local v4    # "key":Ljava/lang/String;
    .end local v8    # "value":Ljava/nio/ByteBuffer;
    :cond_2
    iget-object v9, p0, Lcom/flurry/org/apache/avro/file/DataFileStream;->vin:Lcom/flurry/org/apache/avro/io/BinaryDecoder;

    invoke-virtual {v9}, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->mapNext()J

    move-result-wide v6

    const-wide/16 v10, 0x0

    cmp-long v9, v6, v10

    if-nez v9, :cond_1

    .line 120
    .end local v2    # "i":J
    :cond_3
    iget-object v9, p0, Lcom/flurry/org/apache/avro/file/DataFileStream;->vin:Lcom/flurry/org/apache/avro/io/BinaryDecoder;

    iget-object v10, p0, Lcom/flurry/org/apache/avro/file/DataFileStream;->header:Lcom/flurry/org/apache/avro/file/DataFileStream$Header;

    iget-object v10, v10, Lcom/flurry/org/apache/avro/file/DataFileStream$Header;->sync:[B

    invoke-virtual {v9, v10}, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->readFixed([B)V

    .line 123
    iget-object v9, p0, Lcom/flurry/org/apache/avro/file/DataFileStream;->header:Lcom/flurry/org/apache/avro/file/DataFileStream$Header;

    iget-object v10, p0, Lcom/flurry/org/apache/avro/file/DataFileStream;->header:Lcom/flurry/org/apache/avro/file/DataFileStream$Header;

    invoke-static {v10}, Lcom/flurry/org/apache/avro/file/DataFileStream$Header;->access$100(Lcom/flurry/org/apache/avro/file/DataFileStream$Header;)Ljava/util/List;

    move-result-object v10

    invoke-static {v10}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/flurry/org/apache/avro/file/DataFileStream$Header;->access$102(Lcom/flurry/org/apache/avro/file/DataFileStream$Header;Ljava/util/List;)Ljava/util/List;

    .line 124
    iget-object v9, p0, Lcom/flurry/org/apache/avro/file/DataFileStream;->header:Lcom/flurry/org/apache/avro/file/DataFileStream$Header;

    const-string v10, "avro.schema"

    invoke-virtual {p0, v10}, Lcom/flurry/org/apache/avro/file/DataFileStream;->getMetaString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-static {v10, v11}, Lcom/flurry/org/apache/avro/Schema;->parse(Ljava/lang/String;Z)Lcom/flurry/org/apache/avro/Schema;

    move-result-object v10

    iput-object v10, v9, Lcom/flurry/org/apache/avro/file/DataFileStream$Header;->schema:Lcom/flurry/org/apache/avro/Schema;

    .line 125
    invoke-virtual {p0}, Lcom/flurry/org/apache/avro/file/DataFileStream;->resolveCodec()Lcom/flurry/org/apache/avro/file/Codec;

    move-result-object v9

    iput-object v9, p0, Lcom/flurry/org/apache/avro/file/DataFileStream;->codec:Lcom/flurry/org/apache/avro/file/Codec;

    .line 126
    iget-object v9, p0, Lcom/flurry/org/apache/avro/file/DataFileStream;->reader:Lcom/flurry/org/apache/avro/io/DatumReader;

    iget-object v10, p0, Lcom/flurry/org/apache/avro/file/DataFileStream;->header:Lcom/flurry/org/apache/avro/file/DataFileStream$Header;

    iget-object v10, v10, Lcom/flurry/org/apache/avro/file/DataFileStream$Header;->schema:Lcom/flurry/org/apache/avro/Schema;

    invoke-interface {v9, v10}, Lcom/flurry/org/apache/avro/io/DatumReader;->setSchema(Lcom/flurry/org/apache/avro/Schema;)V

    .line 127
    return-void
.end method

.method initialize(Ljava/io/InputStream;Lcom/flurry/org/apache/avro/file/DataFileStream$Header;)V
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "header"    # Lcom/flurry/org/apache/avro/file/DataFileStream$Header;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 131
    .local p0, "this":Lcom/flurry/org/apache/avro/file/DataFileStream;, "Lcom/flurry/org/apache/avro/file/DataFileStream<TD;>;"
    iput-object p2, p0, Lcom/flurry/org/apache/avro/file/DataFileStream;->header:Lcom/flurry/org/apache/avro/file/DataFileStream$Header;

    .line 132
    invoke-virtual {p0}, Lcom/flurry/org/apache/avro/file/DataFileStream;->resolveCodec()Lcom/flurry/org/apache/avro/file/Codec;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/org/apache/avro/file/DataFileStream;->codec:Lcom/flurry/org/apache/avro/file/Codec;

    .line 133
    iget-object v0, p0, Lcom/flurry/org/apache/avro/file/DataFileStream;->reader:Lcom/flurry/org/apache/avro/io/DatumReader;

    iget-object v1, p2, Lcom/flurry/org/apache/avro/file/DataFileStream$Header;->schema:Lcom/flurry/org/apache/avro/Schema;

    invoke-interface {v0, v1}, Lcom/flurry/org/apache/avro/io/DatumReader;->setSchema(Lcom/flurry/org/apache/avro/Schema;)V

    .line 134
    return-void
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TD;>;"
        }
    .end annotation

    .prologue
    .line 182
    .local p0, "this":Lcom/flurry/org/apache/avro/file/DataFileStream;, "Lcom/flurry/org/apache/avro/file/DataFileStream<TD;>;"
    return-object p0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TD;"
        }
    .end annotation

    .prologue
    .line 220
    .local p0, "this":Lcom/flurry/org/apache/avro/file/DataFileStream;, "Lcom/flurry/org/apache/avro/file/DataFileStream<TD;>;"
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/flurry/org/apache/avro/file/DataFileStream;->next(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 221
    :catch_0
    move-exception v0

    .line 222
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/flurry/org/apache/avro/AvroRuntimeException;

    invoke-direct {v1, v0}, Lcom/flurry/org/apache/avro/AvroRuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public next(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)TD;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 231
    .local p0, "this":Lcom/flurry/org/apache/avro/file/DataFileStream;, "Lcom/flurry/org/apache/avro/file/DataFileStream<TD;>;"
    .local p1, "reuse":Ljava/lang/Object;, "TD;"
    invoke-virtual {p0}, Lcom/flurry/org/apache/avro/file/DataFileStream;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 232
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 233
    :cond_0
    iget-object v1, p0, Lcom/flurry/org/apache/avro/file/DataFileStream;->reader:Lcom/flurry/org/apache/avro/io/DatumReader;

    iget-object v2, p0, Lcom/flurry/org/apache/avro/file/DataFileStream;->datumIn:Lcom/flurry/org/apache/avro/io/BinaryDecoder;

    invoke-interface {v1, p1, v2}, Lcom/flurry/org/apache/avro/io/DatumReader;->read(Ljava/lang/Object;Lcom/flurry/org/apache/avro/io/Decoder;)Ljava/lang/Object;

    move-result-object v0

    .line 234
    .local v0, "result":Ljava/lang/Object;, "TD;"
    const-wide/16 v2, 0x0

    iget-wide v4, p0, Lcom/flurry/org/apache/avro/file/DataFileStream;->blockRemaining:J

    const-wide/16 v6, 0x1

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lcom/flurry/org/apache/avro/file/DataFileStream;->blockRemaining:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    .line 235
    invoke-virtual {p0}, Lcom/flurry/org/apache/avro/file/DataFileStream;->blockFinished()V

    .line 237
    :cond_1
    return-object v0
.end method

.method public nextBlock()Ljava/nio/ByteBuffer;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 242
    .local p0, "this":Lcom/flurry/org/apache/avro/file/DataFileStream;, "Lcom/flurry/org/apache/avro/file/DataFileStream<TD;>;"
    invoke-virtual {p0}, Lcom/flurry/org/apache/avro/file/DataFileStream;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 243
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 244
    :cond_0
    iget-wide v0, p0, Lcom/flurry/org/apache/avro/file/DataFileStream;->blockRemaining:J

    iget-wide v2, p0, Lcom/flurry/org/apache/avro/file/DataFileStream;->blockCount:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 245
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not at block start."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 246
    :cond_1
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/flurry/org/apache/avro/file/DataFileStream;->blockRemaining:J

    .line 247
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/org/apache/avro/file/DataFileStream;->datumIn:Lcom/flurry/org/apache/avro/io/BinaryDecoder;

    .line 248
    iget-object v0, p0, Lcom/flurry/org/apache/avro/file/DataFileStream;->blockBuffer:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method nextRawBlock(Lcom/flurry/org/apache/avro/file/DataFileStream$DataBlock;)Lcom/flurry/org/apache/avro/file/DataFileStream$DataBlock;
    .locals 5
    .param p1, "reuse"    # Lcom/flurry/org/apache/avro/file/DataFileStream$DataBlock;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/flurry/org/apache/avro/file/DataFileStream;, "Lcom/flurry/org/apache/avro/file/DataFileStream<TD;>;"
    const/4 v4, 0x0

    .line 280
    invoke-virtual {p0}, Lcom/flurry/org/apache/avro/file/DataFileStream;->hasNextBlock()Z

    move-result v0

    if-nez v0, :cond_0

    .line 281
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 283
    :cond_0
    if-eqz p1, :cond_1

    invoke-static {p1}, Lcom/flurry/org/apache/avro/file/DataFileStream$DataBlock;->access$200(Lcom/flurry/org/apache/avro/file/DataFileStream$DataBlock;)[B

    move-result-object v0

    array-length v0, v0

    iget-wide v2, p0, Lcom/flurry/org/apache/avro/file/DataFileStream;->blockSize:J

    long-to-int v1, v2

    if-ge v0, v1, :cond_2

    .line 284
    :cond_1
    new-instance p1, Lcom/flurry/org/apache/avro/file/DataFileStream$DataBlock;

    .end local p1    # "reuse":Lcom/flurry/org/apache/avro/file/DataFileStream$DataBlock;
    iget-wide v0, p0, Lcom/flurry/org/apache/avro/file/DataFileStream;->blockRemaining:J

    iget-wide v2, p0, Lcom/flurry/org/apache/avro/file/DataFileStream;->blockSize:J

    long-to-int v2, v2

    const/4 v3, 0x0

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/flurry/org/apache/avro/file/DataFileStream$DataBlock;-><init>(JILcom/flurry/org/apache/avro/file/DataFileStream$1;)V

    .line 290
    .restart local p1    # "reuse":Lcom/flurry/org/apache/avro/file/DataFileStream$DataBlock;
    :goto_0
    iget-object v0, p0, Lcom/flurry/org/apache/avro/file/DataFileStream;->vin:Lcom/flurry/org/apache/avro/io/BinaryDecoder;

    invoke-static {p1}, Lcom/flurry/org/apache/avro/file/DataFileStream$DataBlock;->access$200(Lcom/flurry/org/apache/avro/file/DataFileStream$DataBlock;)[B

    move-result-object v1

    invoke-static {p1}, Lcom/flurry/org/apache/avro/file/DataFileStream$DataBlock;->access$500(Lcom/flurry/org/apache/avro/file/DataFileStream$DataBlock;)I

    move-result v2

    invoke-virtual {v0, v1, v4, v2}, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->readFixed([BII)V

    .line 291
    iget-object v0, p0, Lcom/flurry/org/apache/avro/file/DataFileStream;->vin:Lcom/flurry/org/apache/avro/io/BinaryDecoder;

    iget-object v1, p0, Lcom/flurry/org/apache/avro/file/DataFileStream;->syncBuffer:[B

    invoke-virtual {v0, v1}, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->readFixed([B)V

    .line 292
    iget-object v0, p0, Lcom/flurry/org/apache/avro/file/DataFileStream;->syncBuffer:[B

    iget-object v1, p0, Lcom/flurry/org/apache/avro/file/DataFileStream;->header:Lcom/flurry/org/apache/avro/file/DataFileStream$Header;

    iget-object v1, v1, Lcom/flurry/org/apache/avro/file/DataFileStream$Header;->sync:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_3

    .line 293
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid sync!"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 286
    :cond_2
    iget-wide v0, p0, Lcom/flurry/org/apache/avro/file/DataFileStream;->blockRemaining:J

    invoke-static {p1, v0, v1}, Lcom/flurry/org/apache/avro/file/DataFileStream$DataBlock;->access$402(Lcom/flurry/org/apache/avro/file/DataFileStream$DataBlock;J)J

    .line 287
    iget-wide v0, p0, Lcom/flurry/org/apache/avro/file/DataFileStream;->blockSize:J

    long-to-int v0, v0

    invoke-static {p1, v0}, Lcom/flurry/org/apache/avro/file/DataFileStream$DataBlock;->access$502(Lcom/flurry/org/apache/avro/file/DataFileStream$DataBlock;I)I

    goto :goto_0

    .line 294
    :cond_3
    iput-boolean v4, p0, Lcom/flurry/org/apache/avro/file/DataFileStream;->availableBlock:Z

    .line 295
    return-object p1
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 300
    .local p0, "this":Lcom/flurry/org/apache/avro/file/DataFileStream;, "Lcom/flurry/org/apache/avro/file/DataFileStream<TD;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method resolveCodec()Lcom/flurry/org/apache/avro/file/Codec;
    .locals 2

    .prologue
    .line 137
    .local p0, "this":Lcom/flurry/org/apache/avro/file/DataFileStream;, "Lcom/flurry/org/apache/avro/file/DataFileStream<TD;>;"
    const-string v1, "avro.codec"

    invoke-virtual {p0, v1}, Lcom/flurry/org/apache/avro/file/DataFileStream;->getMetaString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 138
    .local v0, "codecStr":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 139
    invoke-static {v0}, Lcom/flurry/org/apache/avro/file/CodecFactory;->fromString(Ljava/lang/String;)Lcom/flurry/org/apache/avro/file/CodecFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/org/apache/avro/file/CodecFactory;->createInstance()Lcom/flurry/org/apache/avro/file/Codec;

    move-result-object v1

    .line 141
    :goto_0
    return-object v1

    :cond_0
    invoke-static {}, Lcom/flurry/org/apache/avro/file/CodecFactory;->nullCodec()Lcom/flurry/org/apache/avro/file/CodecFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/org/apache/avro/file/CodecFactory;->createInstance()Lcom/flurry/org/apache/avro/file/Codec;

    move-result-object v1

    goto :goto_0
.end method
