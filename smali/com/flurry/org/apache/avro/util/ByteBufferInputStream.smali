.class public Lcom/flurry/org/apache/avro/util/ByteBufferInputStream;
.super Ljava/io/InputStream;
.source "ByteBufferInputStream.java"


# instance fields
.field private buffers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private current:I


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 32
    .local p1, "buffers":Ljava/util/List;, "Ljava/util/List<Ljava/nio/ByteBuffer;>;"
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/flurry/org/apache/avro/util/ByteBufferInputStream;->buffers:Ljava/util/List;

    .line 34
    return-void
.end method

.method private getBuffer()Ljava/nio/ByteBuffer;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 80
    :goto_0
    iget v1, p0, Lcom/flurry/org/apache/avro/util/ByteBufferInputStream;->current:I

    iget-object v2, p0, Lcom/flurry/org/apache/avro/util/ByteBufferInputStream;->buffers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 81
    iget-object v1, p0, Lcom/flurry/org/apache/avro/util/ByteBufferInputStream;->buffers:Ljava/util/List;

    iget v2, p0, Lcom/flurry/org/apache/avro/util/ByteBufferInputStream;->current:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 82
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 83
    return-object v0

    .line 84
    :cond_0
    iget v1, p0, Lcom/flurry/org/apache/avro/util/ByteBufferInputStream;->current:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/flurry/org/apache/avro/util/ByteBufferInputStream;->current:I

    goto :goto_0

    .line 86
    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    :cond_1
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1
.end method


# virtual methods
.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/flurry/org/apache/avro/util/ByteBufferInputStream;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public read([BII)I
    .locals 2
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 47
    if-nez p3, :cond_0

    const/4 v1, 0x0

    .line 55
    :goto_0
    return v1

    .line 48
    :cond_0
    invoke-direct {p0}, Lcom/flurry/org/apache/avro/util/ByteBufferInputStream;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 49
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    .line 50
    .local v1, "remaining":I
    if-le p3, v1, :cond_1

    .line 51
    invoke-virtual {v0, p1, p2, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 54
    :cond_1
    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    move v1, p3

    .line 55
    goto :goto_0
.end method

.method public readBuffer(I)Ljava/nio/ByteBuffer;
    .locals 5
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 62
    if-nez p1, :cond_0

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 73
    :goto_0
    return-object v0

    .line 63
    :cond_0
    invoke-direct {p0}, Lcom/flurry/org/apache/avro/util/ByteBufferInputStream;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 64
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    if-ne v3, p1, :cond_1

    .line 65
    iget v3, p0, Lcom/flurry/org/apache/avro/util/ByteBufferInputStream;->current:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/flurry/org/apache/avro/util/ByteBufferInputStream;->current:I

    goto :goto_0

    .line 69
    :cond_1
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 70
    .local v1, "result":Ljava/nio/ByteBuffer;
    const/4 v2, 0x0

    .line 71
    .local v2, "start":I
    :goto_1
    if-ge v2, p1, :cond_2

    .line 72
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    sub-int v4, p1, v2

    invoke-virtual {p0, v3, v2, v4}, Lcom/flurry/org/apache/avro/util/ByteBufferInputStream;->read([BII)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 73
    goto :goto_0
.end method
