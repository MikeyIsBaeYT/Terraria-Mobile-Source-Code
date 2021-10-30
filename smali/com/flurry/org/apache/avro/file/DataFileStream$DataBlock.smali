.class Lcom/flurry/org/apache/avro/file/DataFileStream$DataBlock;
.super Ljava/lang/Object;
.source "DataFileStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/org/apache/avro/file/DataFileStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DataBlock"
.end annotation


# instance fields
.field private blockSize:I

.field private data:[B

.field private numEntries:J

.field private offset:I


# direct methods
.method private constructor <init>(JI)V
    .locals 1
    .param p1, "numEntries"    # J
    .param p3, "blockSize"    # I

    .prologue
    .line 313
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 312
    const/4 v0, 0x0

    iput v0, p0, Lcom/flurry/org/apache/avro/file/DataFileStream$DataBlock;->offset:I

    .line 314
    new-array v0, p3, [B

    iput-object v0, p0, Lcom/flurry/org/apache/avro/file/DataFileStream$DataBlock;->data:[B

    .line 315
    iput-wide p1, p0, Lcom/flurry/org/apache/avro/file/DataFileStream$DataBlock;->numEntries:J

    .line 316
    iput p3, p0, Lcom/flurry/org/apache/avro/file/DataFileStream$DataBlock;->blockSize:I

    .line 317
    return-void
.end method

.method synthetic constructor <init>(JILcom/flurry/org/apache/avro/file/DataFileStream$1;)V
    .locals 1
    .param p1, "x0"    # J
    .param p3, "x1"    # I
    .param p4, "x2"    # Lcom/flurry/org/apache/avro/file/DataFileStream$1;

    .prologue
    .line 308
    invoke-direct {p0, p1, p2, p3}, Lcom/flurry/org/apache/avro/file/DataFileStream$DataBlock;-><init>(JI)V

    return-void
.end method

.method constructor <init>(Ljava/nio/ByteBuffer;J)V
    .locals 2
    .param p1, "block"    # Ljava/nio/ByteBuffer;
    .param p2, "numEntries"    # J

    .prologue
    .line 319
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 312
    const/4 v0, 0x0

    iput v0, p0, Lcom/flurry/org/apache/avro/file/DataFileStream$DataBlock;->offset:I

    .line 320
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/org/apache/avro/file/DataFileStream$DataBlock;->data:[B

    .line 321
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    iput v0, p0, Lcom/flurry/org/apache/avro/file/DataFileStream$DataBlock;->blockSize:I

    .line 322
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/flurry/org/apache/avro/file/DataFileStream$DataBlock;->offset:I

    .line 323
    iput-wide p2, p0, Lcom/flurry/org/apache/avro/file/DataFileStream$DataBlock;->numEntries:J

    .line 324
    return-void
.end method

.method static synthetic access$200(Lcom/flurry/org/apache/avro/file/DataFileStream$DataBlock;)[B
    .locals 1
    .param p0, "x0"    # Lcom/flurry/org/apache/avro/file/DataFileStream$DataBlock;

    .prologue
    .line 308
    iget-object v0, p0, Lcom/flurry/org/apache/avro/file/DataFileStream$DataBlock;->data:[B

    return-object v0
.end method

.method static synthetic access$402(Lcom/flurry/org/apache/avro/file/DataFileStream$DataBlock;J)J
    .locals 1
    .param p0, "x0"    # Lcom/flurry/org/apache/avro/file/DataFileStream$DataBlock;
    .param p1, "x1"    # J

    .prologue
    .line 308
    iput-wide p1, p0, Lcom/flurry/org/apache/avro/file/DataFileStream$DataBlock;->numEntries:J

    return-wide p1
.end method

.method static synthetic access$500(Lcom/flurry/org/apache/avro/file/DataFileStream$DataBlock;)I
    .locals 1
    .param p0, "x0"    # Lcom/flurry/org/apache/avro/file/DataFileStream$DataBlock;

    .prologue
    .line 308
    iget v0, p0, Lcom/flurry/org/apache/avro/file/DataFileStream$DataBlock;->blockSize:I

    return v0
.end method

.method static synthetic access$502(Lcom/flurry/org/apache/avro/file/DataFileStream$DataBlock;I)I
    .locals 0
    .param p0, "x0"    # Lcom/flurry/org/apache/avro/file/DataFileStream$DataBlock;
    .param p1, "x1"    # I

    .prologue
    .line 308
    iput p1, p0, Lcom/flurry/org/apache/avro/file/DataFileStream$DataBlock;->blockSize:I

    return p1
.end method


# virtual methods
.method compressUsing(Lcom/flurry/org/apache/avro/file/Codec;)V
    .locals 2
    .param p1, "c"    # Lcom/flurry/org/apache/avro/file/Codec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 349
    invoke-virtual {p0}, Lcom/flurry/org/apache/avro/file/DataFileStream$DataBlock;->getAsByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/flurry/org/apache/avro/file/Codec;->compress(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 350
    .local v0, "result":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    iput-object v1, p0, Lcom/flurry/org/apache/avro/file/DataFileStream$DataBlock;->data:[B

    .line 351
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    iput v1, p0, Lcom/flurry/org/apache/avro/file/DataFileStream$DataBlock;->blockSize:I

    .line 352
    return-void
.end method

.method decompressUsing(Lcom/flurry/org/apache/avro/file/Codec;)V
    .locals 2
    .param p1, "c"    # Lcom/flurry/org/apache/avro/file/Codec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 343
    invoke-virtual {p0}, Lcom/flurry/org/apache/avro/file/DataFileStream$DataBlock;->getAsByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/flurry/org/apache/avro/file/Codec;->decompress(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 344
    .local v0, "result":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    iput-object v1, p0, Lcom/flurry/org/apache/avro/file/DataFileStream$DataBlock;->data:[B

    .line 345
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    iput v1, p0, Lcom/flurry/org/apache/avro/file/DataFileStream$DataBlock;->blockSize:I

    .line 346
    return-void
.end method

.method getAsByteBuffer()Ljava/nio/ByteBuffer;
    .locals 3

    .prologue
    .line 339
    iget-object v0, p0, Lcom/flurry/org/apache/avro/file/DataFileStream$DataBlock;->data:[B

    iget v1, p0, Lcom/flurry/org/apache/avro/file/DataFileStream$DataBlock;->offset:I

    iget v2, p0, Lcom/flurry/org/apache/avro/file/DataFileStream$DataBlock;->blockSize:I

    invoke-static {v0, v1, v2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method getBlockSize()I
    .locals 1

    .prologue
    .line 335
    iget v0, p0, Lcom/flurry/org/apache/avro/file/DataFileStream$DataBlock;->blockSize:I

    return v0
.end method

.method getData()[B
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lcom/flurry/org/apache/avro/file/DataFileStream$DataBlock;->data:[B

    return-object v0
.end method

.method getNumEntries()J
    .locals 2

    .prologue
    .line 331
    iget-wide v0, p0, Lcom/flurry/org/apache/avro/file/DataFileStream$DataBlock;->numEntries:J

    return-wide v0
.end method

.method writeBlockTo(Lcom/flurry/org/apache/avro/io/BinaryEncoder;[B)V
    .locals 3
    .param p1, "e"    # Lcom/flurry/org/apache/avro/io/BinaryEncoder;
    .param p2, "sync"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 355
    iget-wide v0, p0, Lcom/flurry/org/apache/avro/file/DataFileStream$DataBlock;->numEntries:J

    invoke-virtual {p1, v0, v1}, Lcom/flurry/org/apache/avro/io/BinaryEncoder;->writeLong(J)V

    .line 356
    iget v0, p0, Lcom/flurry/org/apache/avro/file/DataFileStream$DataBlock;->blockSize:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/flurry/org/apache/avro/io/BinaryEncoder;->writeLong(J)V

    .line 357
    iget-object v0, p0, Lcom/flurry/org/apache/avro/file/DataFileStream$DataBlock;->data:[B

    iget v1, p0, Lcom/flurry/org/apache/avro/file/DataFileStream$DataBlock;->offset:I

    iget v2, p0, Lcom/flurry/org/apache/avro/file/DataFileStream$DataBlock;->blockSize:I

    invoke-virtual {p1, v0, v1, v2}, Lcom/flurry/org/apache/avro/io/BinaryEncoder;->writeFixed([BII)V

    .line 358
    invoke-virtual {p1, p2}, Lcom/flurry/org/apache/avro/io/BinaryEncoder;->writeFixed([B)V

    .line 359
    invoke-virtual {p1}, Lcom/flurry/org/apache/avro/io/BinaryEncoder;->flush()V

    .line 360
    return-void
.end method
