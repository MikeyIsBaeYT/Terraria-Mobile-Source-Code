.class public Lcom/flurry/org/apache/avro/io/BinaryDecoder;
.super Lcom/flurry/org/apache/avro/io/Decoder;
.source "BinaryDecoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/org/apache/avro/io/BinaryDecoder$1;,
        Lcom/flurry/org/apache/avro/io/BinaryDecoder$ByteArrayByteSource;,
        Lcom/flurry/org/apache/avro/io/BinaryDecoder$InputStreamByteSource;,
        Lcom/flurry/org/apache/avro/io/BinaryDecoder$ByteSource;,
        Lcom/flurry/org/apache/avro/io/BinaryDecoder$BufferAccessor;
    }
.end annotation


# instance fields
.field private buf:[B

.field private limit:I

.field private minPos:I

.field private pos:I

.field private final scratchUtf8:Lcom/flurry/org/apache/avro/util/Utf8;

.field private source:Lcom/flurry/org/apache/avro/io/BinaryDecoder$ByteSource;


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 58
    invoke-direct {p0}, Lcom/flurry/org/apache/avro/io/Decoder;-><init>()V

    .line 40
    iput-object v1, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->source:Lcom/flurry/org/apache/avro/io/BinaryDecoder$ByteSource;

    .line 48
    iput-object v1, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->buf:[B

    .line 49
    iput v0, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->minPos:I

    .line 50
    iput v0, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->pos:I

    .line 51
    iput v0, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->limit:I

    .line 260
    new-instance v0, Lcom/flurry/org/apache/avro/util/Utf8;

    invoke-direct {v0}, Lcom/flurry/org/apache/avro/util/Utf8;-><init>()V

    iput-object v0, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->scratchUtf8:Lcom/flurry/org/apache/avro/util/Utf8;

    .line 59
    return-void
.end method

.method constructor <init>(Ljava/io/InputStream;I)V
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "bufferSize"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 62
    invoke-direct {p0}, Lcom/flurry/org/apache/avro/io/Decoder;-><init>()V

    .line 40
    iput-object v1, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->source:Lcom/flurry/org/apache/avro/io/BinaryDecoder$ByteSource;

    .line 48
    iput-object v1, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->buf:[B

    .line 49
    iput v0, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->minPos:I

    .line 50
    iput v0, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->pos:I

    .line 51
    iput v0, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->limit:I

    .line 260
    new-instance v0, Lcom/flurry/org/apache/avro/util/Utf8;

    invoke-direct {v0}, Lcom/flurry/org/apache/avro/util/Utf8;-><init>()V

    iput-object v0, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->scratchUtf8:Lcom/flurry/org/apache/avro/util/Utf8;

    .line 63
    invoke-virtual {p0, p1, p2}, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->configure(Ljava/io/InputStream;I)Lcom/flurry/org/apache/avro/io/BinaryDecoder;

    .line 64
    return-void
.end method

.method constructor <init>([BII)V
    .locals 2
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 67
    invoke-direct {p0}, Lcom/flurry/org/apache/avro/io/Decoder;-><init>()V

    .line 40
    iput-object v1, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->source:Lcom/flurry/org/apache/avro/io/BinaryDecoder$ByteSource;

    .line 48
    iput-object v1, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->buf:[B

    .line 49
    iput v0, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->minPos:I

    .line 50
    iput v0, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->pos:I

    .line 51
    iput v0, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->limit:I

    .line 260
    new-instance v0, Lcom/flurry/org/apache/avro/util/Utf8;

    invoke-direct {v0}, Lcom/flurry/org/apache/avro/util/Utf8;-><init>()V

    iput-object v0, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->scratchUtf8:Lcom/flurry/org/apache/avro/util/Utf8;

    .line 68
    invoke-virtual {p0, p1, p2, p3}, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->configure([BII)Lcom/flurry/org/apache/avro/io/BinaryDecoder;

    .line 69
    return-void
.end method

.method static synthetic access$300(Lcom/flurry/org/apache/avro/io/BinaryDecoder;)[B
    .locals 1
    .param p0, "x0"    # Lcom/flurry/org/apache/avro/io/BinaryDecoder;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->buf:[B

    return-object v0
.end method

.method static synthetic access$302(Lcom/flurry/org/apache/avro/io/BinaryDecoder;[B)[B
    .locals 0
    .param p0, "x0"    # Lcom/flurry/org/apache/avro/io/BinaryDecoder;
    .param p1, "x1"    # [B

    .prologue
    .line 39
    iput-object p1, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->buf:[B

    return-object p1
.end method

.method static synthetic access$400(Lcom/flurry/org/apache/avro/io/BinaryDecoder;)I
    .locals 1
    .param p0, "x0"    # Lcom/flurry/org/apache/avro/io/BinaryDecoder;

    .prologue
    .line 39
    iget v0, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->pos:I

    return v0
.end method

.method static synthetic access$402(Lcom/flurry/org/apache/avro/io/BinaryDecoder;I)I
    .locals 0
    .param p0, "x0"    # Lcom/flurry/org/apache/avro/io/BinaryDecoder;
    .param p1, "x1"    # I

    .prologue
    .line 39
    iput p1, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->pos:I

    return p1
.end method

.method static synthetic access$500(Lcom/flurry/org/apache/avro/io/BinaryDecoder;)I
    .locals 1
    .param p0, "x0"    # Lcom/flurry/org/apache/avro/io/BinaryDecoder;

    .prologue
    .line 39
    iget v0, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->limit:I

    return v0
.end method

.method static synthetic access$502(Lcom/flurry/org/apache/avro/io/BinaryDecoder;I)I
    .locals 0
    .param p0, "x0"    # Lcom/flurry/org/apache/avro/io/BinaryDecoder;
    .param p1, "x1"    # I

    .prologue
    .line 39
    iput p1, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->limit:I

    return p1
.end method

.method static synthetic access$602(Lcom/flurry/org/apache/avro/io/BinaryDecoder;I)I
    .locals 0
    .param p0, "x0"    # Lcom/flurry/org/apache/avro/io/BinaryDecoder;
    .param p1, "x1"    # I

    .prologue
    .line 39
    iput p1, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->minPos:I

    return p1
.end method

.method private configureSource(ILcom/flurry/org/apache/avro/io/BinaryDecoder$ByteSource;)V
    .locals 1
    .param p1, "bufferSize"    # I
    .param p2, "source"    # Lcom/flurry/org/apache/avro/io/BinaryDecoder$ByteSource;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->source:Lcom/flurry/org/apache/avro/io/BinaryDecoder$ByteSource;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->source:Lcom/flurry/org/apache/avro/io/BinaryDecoder$ByteSource;

    invoke-virtual {v0}, Lcom/flurry/org/apache/avro/io/BinaryDecoder$ByteSource;->detach()V

    .line 96
    :cond_0
    invoke-virtual {p2, p1, p0}, Lcom/flurry/org/apache/avro/io/BinaryDecoder$ByteSource;->attach(ILcom/flurry/org/apache/avro/io/BinaryDecoder;)V

    .line 97
    iput-object p2, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->source:Lcom/flurry/org/apache/avro/io/BinaryDecoder$ByteSource;

    .line 98
    return-void
.end method

.method private doSkipItems()J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 371
    invoke-virtual {p0}, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->readInt()I

    move-result v4

    int-to-long v2, v4

    .line 372
    .local v2, "result":J
    :goto_0
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-gez v4, :cond_0

    .line 373
    invoke-virtual {p0}, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->readLong()J

    move-result-wide v0

    .line 374
    .local v0, "bytecount":J
    invoke-virtual {p0, v0, v1}, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->doSkipBytes(J)V

    .line 375
    invoke-virtual {p0}, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->readInt()I

    move-result v4

    int-to-long v2, v4

    .line 376
    goto :goto_0

    .line 377
    .end local v0    # "bytecount":J
    :cond_0
    return-wide v2
.end method

.method private ensureBounds(I)V
    .locals 5
    .param p1, "num"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 457
    iget v1, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->limit:I

    iget v2, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->pos:I

    sub-int v0, v1, v2

    .line 458
    .local v0, "remaining":I
    if-ge v0, p1, :cond_0

    .line 460
    iget-object v1, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->source:Lcom/flurry/org/apache/avro/io/BinaryDecoder$ByteSource;

    iget-object v2, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->buf:[B

    iget v3, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->pos:I

    iget v4, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->minPos:I

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/flurry/org/apache/avro/io/BinaryDecoder$ByteSource;->compactAndFill([BIII)V

    .line 462
    :cond_0
    return-void
.end method

.method private innerLongDecode(J)J
    .locals 11
    .param p1, "l"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v8, 0x7f

    const/16 v6, 0x7f

    .line 190
    const/4 v1, 0x1

    .line 191
    .local v1, "len":I
    iget-object v3, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->buf:[B

    iget v4, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->pos:I

    aget-byte v3, v3, v4

    and-int/lit16 v0, v3, 0xff

    .line 192
    .local v0, "b":I
    int-to-long v4, v0

    and-long/2addr v4, v8

    const/16 v3, 0x1c

    shl-long/2addr v4, v3

    xor-long/2addr p1, v4

    .line 193
    if-le v0, v6, :cond_1

    .line 194
    iget-object v3, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->buf:[B

    iget v4, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->pos:I

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "len":I
    .local v2, "len":I
    add-int/2addr v4, v1

    aget-byte v3, v3, v4

    and-int/lit16 v0, v3, 0xff

    .line 195
    int-to-long v4, v0

    and-long/2addr v4, v8

    const/16 v3, 0x23

    shl-long/2addr v4, v3

    xor-long/2addr p1, v4

    .line 196
    if-le v0, v6, :cond_0

    .line 197
    iget-object v3, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->buf:[B

    iget v4, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->pos:I

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "len":I
    .restart local v1    # "len":I
    add-int/lit8 v4, v4, 0x2

    aget-byte v3, v3, v4

    and-int/lit16 v0, v3, 0xff

    .line 198
    int-to-long v4, v0

    and-long/2addr v4, v8

    const/16 v3, 0x2a

    shl-long/2addr v4, v3

    xor-long/2addr p1, v4

    .line 199
    if-le v0, v6, :cond_1

    .line 200
    iget-object v3, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->buf:[B

    iget v4, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->pos:I

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v4, v4, 0x3

    aget-byte v3, v3, v4

    and-int/lit16 v0, v3, 0xff

    .line 201
    int-to-long v4, v0

    and-long/2addr v4, v8

    const/16 v3, 0x31

    shl-long/2addr v4, v3

    xor-long/2addr p1, v4

    .line 202
    if-le v0, v6, :cond_1

    .line 203
    iget-object v3, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->buf:[B

    iget v4, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->pos:I

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v4, v4, 0x4

    aget-byte v3, v3, v4

    and-int/lit16 v0, v3, 0xff

    .line 204
    int-to-long v4, v0

    and-long/2addr v4, v8

    const/16 v3, 0x38

    shl-long/2addr v4, v3

    xor-long/2addr p1, v4

    .line 205
    if-le v0, v6, :cond_1

    .line 206
    iget-object v3, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->buf:[B

    iget v4, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->pos:I

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v4, v4, 0x5

    aget-byte v3, v3, v4

    and-int/lit16 v0, v3, 0xff

    .line 207
    int-to-long v4, v0

    and-long/2addr v4, v8

    const/16 v3, 0x3f

    shl-long/2addr v4, v3

    xor-long/2addr p1, v4

    .line 208
    if-le v0, v6, :cond_1

    .line 209
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Invalid long encoding"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .end local v1    # "len":I
    .restart local v2    # "len":I
    :cond_0
    move v1, v2

    .line 216
    .end local v2    # "len":I
    .restart local v1    # "len":I
    :cond_1
    iget v3, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->pos:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->pos:I

    .line 217
    return-wide p1
.end method


# virtual methods
.method public arrayNext()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 387
    invoke-virtual {p0}, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->doReadItemCount()J

    move-result-wide v0

    return-wide v0
.end method

.method configure(Ljava/io/InputStream;I)Lcom/flurry/org/apache/avro/io/BinaryDecoder;
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "bufferSize"    # I

    .prologue
    .line 72
    new-instance v0, Lcom/flurry/org/apache/avro/io/BinaryDecoder$InputStreamByteSource;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/flurry/org/apache/avro/io/BinaryDecoder$InputStreamByteSource;-><init>(Ljava/io/InputStream;Lcom/flurry/org/apache/avro/io/BinaryDecoder$1;)V

    invoke-direct {p0, p2, v0}, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->configureSource(ILcom/flurry/org/apache/avro/io/BinaryDecoder$ByteSource;)V

    .line 73
    return-object p0
.end method

.method configure([BII)Lcom/flurry/org/apache/avro/io/BinaryDecoder;
    .locals 3
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 77
    const/16 v0, 0x2000

    new-instance v1, Lcom/flurry/org/apache/avro/io/BinaryDecoder$ByteArrayByteSource;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, p3, v2}, Lcom/flurry/org/apache/avro/io/BinaryDecoder$ByteArrayByteSource;-><init>([BIILcom/flurry/org/apache/avro/io/BinaryDecoder$1;)V

    invoke-direct {p0, v0, v1}, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->configureSource(ILcom/flurry/org/apache/avro/io/BinaryDecoder$ByteSource;)V

    .line 79
    return-object p0
.end method

.method protected doReadBytes([BII)V
    .locals 3
    .param p1, "bytes"    # [B
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 327
    iget v1, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->limit:I

    iget v2, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->pos:I

    sub-int v0, v1, v2

    .line 328
    .local v0, "remaining":I
    if-gt p3, v0, :cond_0

    .line 329
    iget-object v1, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->buf:[B

    iget v2, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->pos:I

    invoke-static {v1, v2, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 330
    iget v1, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->pos:I

    add-int/2addr v1, p3

    iput v1, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->pos:I

    .line 340
    :goto_0
    return-void

    .line 333
    :cond_0
    iget-object v1, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->buf:[B

    iget v2, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->pos:I

    invoke-static {v1, v2, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 334
    add-int/2addr p2, v0

    .line 335
    sub-int/2addr p3, v0

    .line 336
    iget v1, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->limit:I

    iput v1, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->pos:I

    .line 338
    iget-object v1, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->source:Lcom/flurry/org/apache/avro/io/BinaryDecoder$ByteSource;

    invoke-virtual {v1, p1, p2, p3}, Lcom/flurry/org/apache/avro/io/BinaryDecoder$ByteSource;->readRaw([BII)V

    goto :goto_0
.end method

.method protected doReadItemCount()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 350
    invoke-virtual {p0}, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->readLong()J

    move-result-wide v0

    .line 351
    .local v0, "result":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 352
    invoke-virtual {p0}, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->readLong()J

    .line 353
    neg-long v0, v0

    .line 355
    :cond_0
    return-wide v0
.end method

.method protected doSkipBytes(J)V
    .locals 5
    .param p1, "length"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 308
    iget v1, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->limit:I

    iget v2, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->pos:I

    sub-int v0, v1, v2

    .line 309
    .local v0, "remaining":I
    int-to-long v2, v0

    cmp-long v1, p1, v2

    if-gtz v1, :cond_0

    .line 310
    iget v1, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->pos:I

    int-to-long v2, v1

    add-long/2addr v2, p1

    long-to-int v1, v2

    iput v1, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->pos:I

    .line 316
    :goto_0
    return-void

    .line 312
    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->pos:I

    iput v1, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->limit:I

    .line 313
    int-to-long v2, v0

    sub-long/2addr p1, v2

    .line 314
    iget-object v1, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->source:Lcom/flurry/org/apache/avro/io/BinaryDecoder$ByteSource;

    invoke-virtual {v1, p1, p2}, Lcom/flurry/org/apache/avro/io/BinaryDecoder$ByteSource;->skipSourceBytes(J)V

    goto :goto_0
.end method

.method getBufferAccessor()Lcom/flurry/org/apache/avro/io/BinaryDecoder$BufferAccessor;
    .locals 2

    .prologue
    .line 54
    new-instance v0, Lcom/flurry/org/apache/avro/io/BinaryDecoder$BufferAccessor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/flurry/org/apache/avro/io/BinaryDecoder$BufferAccessor;-><init>(Lcom/flurry/org/apache/avro/io/BinaryDecoder;Lcom/flurry/org/apache/avro/io/BinaryDecoder$1;)V

    return-object v0
.end method

.method public inputStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 472
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->source:Lcom/flurry/org/apache/avro/io/BinaryDecoder$ByteSource;

    return-object v0
.end method

.method public isEnd()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 425
    iget v3, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->limit:I

    iget v4, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->pos:I

    sub-int/2addr v3, v4

    if-lez v3, :cond_1

    .line 440
    :cond_0
    :goto_0
    return v1

    .line 429
    :cond_1
    iget-object v3, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->source:Lcom/flurry/org/apache/avro/io/BinaryDecoder$ByteSource;

    invoke-virtual {v3}, Lcom/flurry/org/apache/avro/io/BinaryDecoder$ByteSource;->isEof()Z

    move-result v3

    if-eqz v3, :cond_2

    move v1, v2

    .line 430
    goto :goto_0

    .line 433
    :cond_2
    iget-object v3, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->source:Lcom/flurry/org/apache/avro/io/BinaryDecoder$ByteSource;

    iget-object v4, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->buf:[B

    iget-object v5, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->buf:[B

    array-length v5, v5

    invoke-virtual {v3, v4, v1, v5}, Lcom/flurry/org/apache/avro/io/BinaryDecoder$ByteSource;->tryReadRaw([BII)I

    move-result v0

    .line 434
    .local v0, "read":I
    iput v1, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->pos:I

    .line 435
    iput v0, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->limit:I

    .line 436
    if-nez v0, :cond_0

    move v1, v2

    .line 438
    goto :goto_0
.end method

.method public mapNext()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 402
    invoke-virtual {p0}, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->doReadItemCount()J

    move-result-wide v0

    return-wide v0
.end method

.method public readArrayStart()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 382
    invoke-virtual {p0}, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->doReadItemCount()J

    move-result-wide v0

    return-wide v0
.end method

.method public readBoolean()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 107
    iget v3, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->limit:I

    iget v4, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->pos:I

    if-ne v3, v4, :cond_0

    .line 108
    iget-object v3, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->source:Lcom/flurry/org/apache/avro/io/BinaryDecoder$ByteSource;

    iget-object v4, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->buf:[B

    iget-object v5, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->buf:[B

    array-length v5, v5

    invoke-virtual {v3, v4, v2, v5}, Lcom/flurry/org/apache/avro/io/BinaryDecoder$ByteSource;->tryReadRaw([BII)I

    move-result v3

    iput v3, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->limit:I

    .line 109
    iput v2, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->pos:I

    .line 110
    iget v3, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->limit:I

    if-nez v3, :cond_0

    .line 111
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1

    .line 114
    :cond_0
    iget-object v3, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->buf:[B

    iget v4, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->pos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->pos:I

    aget-byte v3, v3, v4

    and-int/lit16 v0, v3, 0xff

    .line 115
    .local v0, "n":I
    if-ne v0, v1, :cond_1

    :goto_0
    return v1

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method public readBytes(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 4
    .param p1, "old"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 274
    invoke-virtual {p0}, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->readInt()I

    move-result v0

    .line 276
    .local v0, "length":I
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    if-gt v0, v2, :cond_0

    .line 277
    move-object v1, p1

    .line 278
    .local v1, "result":Ljava/nio/ByteBuffer;
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 282
    :goto_0
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    invoke-virtual {p0, v2, v3, v0}, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->doReadBytes([BII)V

    .line 283
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 284
    return-object v1

    .line 280
    .end local v1    # "result":Ljava/nio/ByteBuffer;
    :cond_0
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .restart local v1    # "result":Ljava/nio/ByteBuffer;
    goto :goto_0
.end method

.method public readDouble()D
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 235
    const/16 v4, 0x8

    invoke-direct {p0, v4}, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->ensureBounds(I)V

    .line 236
    const/4 v0, 0x1

    .line 237
    .local v0, "len":I
    iget-object v4, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->buf:[B

    iget v5, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->pos:I

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    iget-object v5, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->buf:[B

    iget v6, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->pos:I

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "len":I
    .local v1, "len":I
    add-int/2addr v6, v0

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    iget-object v5, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->buf:[B

    iget v6, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->pos:I

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "len":I
    .restart local v0    # "len":I
    add-int/lit8 v6, v6, 0x2

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v4, v5

    iget-object v5, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->buf:[B

    iget v6, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->pos:I

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v6, v6, 0x3

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x18

    or-int v2, v4, v5

    .line 239
    .local v2, "n1":I
    iget-object v4, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->buf:[B

    iget v5, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->pos:I

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v5, v5, 0x4

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    iget-object v5, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->buf:[B

    iget v6, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->pos:I

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v6, v6, 0x5

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    iget-object v5, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->buf:[B

    iget v6, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->pos:I

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v6, v6, 0x6

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v4, v5

    iget-object v5, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->buf:[B

    iget v6, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->pos:I

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v6, v6, 0x7

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x18

    or-int v3, v4, v5

    .line 241
    .local v3, "n2":I
    iget v4, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->pos:I

    add-int/lit8 v4, v4, 0x8

    iget v5, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->limit:I

    if-le v4, v5, :cond_0

    .line 242
    new-instance v4, Ljava/io/EOFException;

    invoke-direct {v4}, Ljava/io/EOFException;-><init>()V

    throw v4

    .line 244
    :cond_0
    iget v4, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->pos:I

    add-int/lit8 v4, v4, 0x8

    iput v4, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->pos:I

    .line 245
    int-to-long v4, v2

    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    int-to-long v6, v3

    const/16 v8, 0x20

    shl-long/2addr v6, v8

    or-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v4

    return-wide v4
.end method

.method public readEnum()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 304
    invoke-virtual {p0}, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->readInt()I

    move-result v0

    return v0
.end method

.method public readFixed([BII)V
    .locals 0
    .param p1, "bytes"    # [B
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 294
    invoke-virtual {p0, p1, p2, p3}, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->doReadBytes([BII)V

    .line 295
    return-void
.end method

.method public readFloat()F
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 222
    const/4 v3, 0x4

    invoke-direct {p0, v3}, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->ensureBounds(I)V

    .line 223
    const/4 v0, 0x1

    .line 224
    .local v0, "len":I
    iget-object v3, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->buf:[B

    iget v4, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->pos:I

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    iget-object v4, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->buf:[B

    iget v5, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->pos:I

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "len":I
    .local v1, "len":I
    add-int/2addr v5, v0

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    iget-object v4, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->buf:[B

    iget v5, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->pos:I

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "len":I
    .restart local v0    # "len":I
    add-int/lit8 v5, v5, 0x2

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v3, v4

    iget-object v4, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->buf:[B

    iget v5, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->pos:I

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v5, v5, 0x3

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x18

    or-int v2, v3, v4

    .line 226
    .local v2, "n":I
    iget v3, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->pos:I

    add-int/lit8 v3, v3, 0x4

    iget v4, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->limit:I

    if-le v3, v4, :cond_0

    .line 227
    new-instance v3, Ljava/io/EOFException;

    invoke-direct {v3}, Ljava/io/EOFException;-><init>()V

    throw v3

    .line 229
    :cond_0
    iget v3, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->pos:I

    add-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->pos:I

    .line 230
    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    return v3
.end method

.method public readIndex()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 412
    invoke-virtual {p0}, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->readInt()I

    move-result v0

    return v0
.end method

.method public readInt()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x7f

    .line 120
    const/4 v4, 0x5

    invoke-direct {p0, v4}, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->ensureBounds(I)V

    .line 121
    const/4 v1, 0x1

    .line 122
    .local v1, "len":I
    iget-object v4, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->buf:[B

    iget v5, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->pos:I

    aget-byte v4, v4, v5

    and-int/lit16 v0, v4, 0xff

    .line 123
    .local v0, "b":I
    and-int/lit8 v3, v0, 0x7f

    .line 124
    .local v3, "n":I
    if-le v0, v6, :cond_1

    .line 125
    iget-object v4, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->buf:[B

    iget v5, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->pos:I

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "len":I
    .local v2, "len":I
    add-int/2addr v5, v1

    aget-byte v4, v4, v5

    and-int/lit16 v0, v4, 0xff

    .line 126
    and-int/lit8 v4, v0, 0x7f

    shl-int/lit8 v4, v4, 0x7

    xor-int/2addr v3, v4

    .line 127
    if-le v0, v6, :cond_0

    .line 128
    iget-object v4, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->buf:[B

    iget v5, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->pos:I

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "len":I
    .restart local v1    # "len":I
    add-int/lit8 v5, v5, 0x2

    aget-byte v4, v4, v5

    and-int/lit16 v0, v4, 0xff

    .line 129
    and-int/lit8 v4, v0, 0x7f

    shl-int/lit8 v4, v4, 0xe

    xor-int/2addr v3, v4

    .line 130
    if-le v0, v6, :cond_1

    .line 131
    iget-object v4, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->buf:[B

    iget v5, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->pos:I

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v5, v5, 0x3

    aget-byte v4, v4, v5

    and-int/lit16 v0, v4, 0xff

    .line 132
    and-int/lit8 v4, v0, 0x7f

    shl-int/lit8 v4, v4, 0x15

    xor-int/2addr v3, v4

    .line 133
    if-le v0, v6, :cond_1

    .line 134
    iget-object v4, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->buf:[B

    iget v5, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->pos:I

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v5, v5, 0x4

    aget-byte v4, v4, v5

    and-int/lit16 v0, v4, 0xff

    .line 135
    and-int/lit8 v4, v0, 0x7f

    shl-int/lit8 v4, v4, 0x1c

    xor-int/2addr v3, v4

    .line 136
    if-le v0, v6, :cond_1

    .line 137
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Invalid int encoding"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .end local v1    # "len":I
    .restart local v2    # "len":I
    :cond_0
    move v1, v2

    .line 143
    .end local v2    # "len":I
    .restart local v1    # "len":I
    :cond_1
    iget v4, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->pos:I

    add-int/2addr v4, v1

    iput v4, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->pos:I

    .line 144
    iget v4, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->pos:I

    iget v5, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->limit:I

    if-le v4, v5, :cond_2

    .line 145
    new-instance v4, Ljava/io/EOFException;

    invoke-direct {v4}, Ljava/io/EOFException;-><init>()V

    throw v4

    .line 147
    :cond_2
    ushr-int/lit8 v4, v3, 0x1

    and-int/lit8 v5, v3, 0x1

    neg-int v5, v5

    xor-int/2addr v4, v5

    return v4
.end method

.method public readLong()J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x7f

    .line 152
    const/16 v4, 0xa

    invoke-direct {p0, v4}, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->ensureBounds(I)V

    .line 153
    iget-object v4, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->buf:[B

    iget v5, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->pos:I

    aget-byte v4, v4, v5

    and-int/lit16 v0, v4, 0xff

    .line 154
    .local v0, "b":I
    and-int/lit8 v1, v0, 0x7f

    .line 156
    .local v1, "n":I
    if-le v0, v7, :cond_3

    .line 157
    iget-object v4, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->buf:[B

    iget v5, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->pos:I

    aget-byte v4, v4, v5

    and-int/lit16 v0, v4, 0xff

    .line 158
    and-int/lit8 v4, v0, 0x7f

    shl-int/lit8 v4, v4, 0x7

    xor-int/2addr v1, v4

    .line 159
    if-le v0, v7, :cond_2

    .line 160
    iget-object v4, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->buf:[B

    iget v5, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->pos:I

    aget-byte v4, v4, v5

    and-int/lit16 v0, v4, 0xff

    .line 161
    and-int/lit8 v4, v0, 0x7f

    shl-int/lit8 v4, v4, 0xe

    xor-int/2addr v1, v4

    .line 162
    if-le v0, v7, :cond_1

    .line 163
    iget-object v4, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->buf:[B

    iget v5, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->pos:I

    aget-byte v4, v4, v5

    and-int/lit16 v0, v4, 0xff

    .line 164
    and-int/lit8 v4, v0, 0x7f

    shl-int/lit8 v4, v4, 0x15

    xor-int/2addr v1, v4

    .line 165
    if-le v0, v7, :cond_0

    .line 168
    int-to-long v4, v1

    invoke-direct {p0, v4, v5}, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->innerLongDecode(J)J

    move-result-wide v2

    .line 181
    .local v2, "l":J
    :goto_0
    iget v4, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->pos:I

    iget v5, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->limit:I

    if-le v4, v5, :cond_4

    .line 182
    new-instance v4, Ljava/io/EOFException;

    invoke-direct {v4}, Ljava/io/EOFException;-><init>()V

    throw v4

    .line 170
    .end local v2    # "l":J
    :cond_0
    int-to-long v2, v1

    .restart local v2    # "l":J
    goto :goto_0

    .line 173
    .end local v2    # "l":J
    :cond_1
    int-to-long v2, v1

    .restart local v2    # "l":J
    goto :goto_0

    .line 176
    .end local v2    # "l":J
    :cond_2
    int-to-long v2, v1

    .restart local v2    # "l":J
    goto :goto_0

    .line 179
    .end local v2    # "l":J
    :cond_3
    int-to-long v2, v1

    .restart local v2    # "l":J
    goto :goto_0

    .line 184
    :cond_4
    const/4 v4, 0x1

    ushr-long v4, v2, v4

    const-wide/16 v6, 0x1

    and-long/2addr v6, v2

    neg-long v6, v6

    xor-long/2addr v4, v6

    return-wide v4
.end method

.method public readMapStart()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 397
    invoke-virtual {p0}, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->doReadItemCount()J

    move-result-wide v0

    return-wide v0
.end method

.method public readNull()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 102
    return-void
.end method

.method public readString(Lcom/flurry/org/apache/avro/util/Utf8;)Lcom/flurry/org/apache/avro/util/Utf8;
    .locals 4
    .param p1, "old"    # Lcom/flurry/org/apache/avro/util/Utf8;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 251
    invoke-virtual {p0}, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->readInt()I

    move-result v0

    .line 252
    .local v0, "length":I
    if-eqz p1, :cond_1

    move-object v1, p1

    .line 253
    .local v1, "result":Lcom/flurry/org/apache/avro/util/Utf8;
    :goto_0
    invoke-virtual {v1, v0}, Lcom/flurry/org/apache/avro/util/Utf8;->setByteLength(I)Lcom/flurry/org/apache/avro/util/Utf8;

    .line 254
    if-eqz v0, :cond_0

    .line 255
    invoke-virtual {v1}, Lcom/flurry/org/apache/avro/util/Utf8;->getBytes()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3, v0}, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->doReadBytes([BII)V

    .line 257
    :cond_0
    return-object v1

    .line 252
    .end local v1    # "result":Lcom/flurry/org/apache/avro/util/Utf8;
    :cond_1
    new-instance v1, Lcom/flurry/org/apache/avro/util/Utf8;

    invoke-direct {v1}, Lcom/flurry/org/apache/avro/util/Utf8;-><init>()V

    goto :goto_0
.end method

.method public readString()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 264
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->scratchUtf8:Lcom/flurry/org/apache/avro/util/Utf8;

    invoke-virtual {p0, v0}, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->readString(Lcom/flurry/org/apache/avro/util/Utf8;)Lcom/flurry/org/apache/avro/util/Utf8;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/org/apache/avro/util/Utf8;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public skipArray()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 392
    invoke-direct {p0}, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->doSkipItems()J

    move-result-wide v0

    return-wide v0
.end method

.method public skipBytes()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 289
    invoke-virtual {p0}, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->readInt()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->doSkipBytes(J)V

    .line 290
    return-void
.end method

.method public skipFixed(I)V
    .locals 2
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 299
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->doSkipBytes(J)V

    .line 300
    return-void
.end method

.method public skipMap()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 407
    invoke-direct {p0}, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->doSkipItems()J

    move-result-wide v0

    return-wide v0
.end method

.method public skipString()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 269
    invoke-virtual {p0}, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->readInt()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->doSkipBytes(J)V

    .line 270
    return-void
.end method
