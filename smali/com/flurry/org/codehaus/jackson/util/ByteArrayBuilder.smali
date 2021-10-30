.class public final Lcom/flurry/org/codehaus/jackson/util/ByteArrayBuilder;
.super Ljava/io/OutputStream;
.source "ByteArrayBuilder.java"


# static fields
.field static final DEFAULT_BLOCK_ARRAY_SIZE:I = 0x28

.field private static final INITIAL_BLOCK_SIZE:I = 0x1f4

.field private static final MAX_BLOCK_SIZE:I = 0x40000

.field private static final NO_BYTES:[B


# instance fields
.field private final _bufferRecycler:Lcom/flurry/org/codehaus/jackson/util/BufferRecycler;

.field private _currBlock:[B

.field private _currBlockPtr:I

.field private final _pastBlocks:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<[B>;"
        }
    .end annotation
.end field

.field private _pastLen:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/flurry/org/codehaus/jackson/util/ByteArrayBuilder;->NO_BYTES:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/flurry/org/codehaus/jackson/util/ByteArrayBuilder;-><init>(Lcom/flurry/org/codehaus/jackson/util/BufferRecycler;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "firstBlockSize"    # I

    .prologue
    .line 75
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/flurry/org/codehaus/jackson/util/ByteArrayBuilder;-><init>(Lcom/flurry/org/codehaus/jackson/util/BufferRecycler;I)V

    return-void
.end method

.method public constructor <init>(Lcom/flurry/org/codehaus/jackson/util/BufferRecycler;)V
    .locals 1
    .param p1, "br"    # Lcom/flurry/org/codehaus/jackson/util/BufferRecycler;

    .prologue
    .line 73
    const/16 v0, 0x1f4

    invoke-direct {p0, p1, v0}, Lcom/flurry/org/codehaus/jackson/util/ByteArrayBuilder;-><init>(Lcom/flurry/org/codehaus/jackson/util/BufferRecycler;I)V

    return-void
.end method

.method public constructor <init>(Lcom/flurry/org/codehaus/jackson/util/BufferRecycler;I)V
    .locals 1
    .param p1, "br"    # Lcom/flurry/org/codehaus/jackson/util/BufferRecycler;
    .param p2, "firstBlockSize"    # I

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 60
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/util/ByteArrayBuilder;->_pastBlocks:Ljava/util/LinkedList;

    .line 79
    iput-object p1, p0, Lcom/flurry/org/codehaus/jackson/util/ByteArrayBuilder;->_bufferRecycler:Lcom/flurry/org/codehaus/jackson/util/BufferRecycler;

    .line 80
    if-nez p1, :cond_0

    .line 81
    new-array v0, p2, [B

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/util/ByteArrayBuilder;->_currBlock:[B

    .line 85
    :goto_0
    return-void

    .line 83
    :cond_0
    sget-object v0, Lcom/flurry/org/codehaus/jackson/util/BufferRecycler$ByteBufferType;->WRITE_CONCAT_BUFFER:Lcom/flurry/org/codehaus/jackson/util/BufferRecycler$ByteBufferType;

    invoke-virtual {p1, v0}, Lcom/flurry/org/codehaus/jackson/util/BufferRecycler;->allocByteBuffer(Lcom/flurry/org/codehaus/jackson/util/BufferRecycler$ByteBufferType;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/util/ByteArrayBuilder;->_currBlock:[B

    goto :goto_0
.end method

.method private _allocMore()V
    .locals 3

    .prologue
    .line 275
    iget v1, p0, Lcom/flurry/org/codehaus/jackson/util/ByteArrayBuilder;->_pastLen:I

    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/util/ByteArrayBuilder;->_currBlock:[B

    array-length v2, v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/flurry/org/codehaus/jackson/util/ByteArrayBuilder;->_pastLen:I

    .line 283
    iget v1, p0, Lcom/flurry/org/codehaus/jackson/util/ByteArrayBuilder;->_pastLen:I

    shr-int/lit8 v1, v1, 0x1

    const/16 v2, 0x3e8

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 285
    .local v0, "newSize":I
    const/high16 v1, 0x40000

    if-le v0, v1, :cond_0

    .line 286
    const/high16 v0, 0x40000

    .line 288
    :cond_0
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/util/ByteArrayBuilder;->_pastBlocks:Ljava/util/LinkedList;

    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/util/ByteArrayBuilder;->_currBlock:[B

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 289
    new-array v1, v0, [B

    iput-object v1, p0, Lcom/flurry/org/codehaus/jackson/util/ByteArrayBuilder;->_currBlock:[B

    .line 290
    const/4 v1, 0x0

    iput v1, p0, Lcom/flurry/org/codehaus/jackson/util/ByteArrayBuilder;->_currBlockPtr:I

    .line 291
    return-void
.end method


# virtual methods
.method public append(I)V
    .locals 3
    .param p1, "i"    # I

    .prologue
    .line 112
    iget v0, p0, Lcom/flurry/org/codehaus/jackson/util/ByteArrayBuilder;->_currBlockPtr:I

    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/util/ByteArrayBuilder;->_currBlock:[B

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 113
    invoke-direct {p0}, Lcom/flurry/org/codehaus/jackson/util/ByteArrayBuilder;->_allocMore()V

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/util/ByteArrayBuilder;->_currBlock:[B

    iget v1, p0, Lcom/flurry/org/codehaus/jackson/util/ByteArrayBuilder;->_currBlockPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/flurry/org/codehaus/jackson/util/ByteArrayBuilder;->_currBlockPtr:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 116
    return-void
.end method

.method public appendThreeBytes(I)V
    .locals 3
    .param p1, "b24"    # I

    .prologue
    .line 131
    iget v0, p0, Lcom/flurry/org/codehaus/jackson/util/ByteArrayBuilder;->_currBlockPtr:I

    add-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/util/ByteArrayBuilder;->_currBlock:[B

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 132
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/util/ByteArrayBuilder;->_currBlock:[B

    iget v1, p0, Lcom/flurry/org/codehaus/jackson/util/ByteArrayBuilder;->_currBlockPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/flurry/org/codehaus/jackson/util/ByteArrayBuilder;->_currBlockPtr:I

    shr-int/lit8 v2, p1, 0x10

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 133
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/util/ByteArrayBuilder;->_currBlock:[B

    iget v1, p0, Lcom/flurry/org/codehaus/jackson/util/ByteArrayBuilder;->_currBlockPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/flurry/org/codehaus/jackson/util/ByteArrayBuilder;->_currBlockPtr:I

    shr-int/lit8 v2, p1, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 134
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/util/ByteArrayBuilder;->_currBlock:[B

    iget v1, p0, Lcom/flurry/org/codehaus/jackson/util/ByteArrayBuilder;->_currBlockPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/flurry/org/codehaus/jackson/util/ByteArrayBuilder;->_currBlockPtr:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 140
    :goto_0
    return-void

    .line 136
    :cond_0
    shr-int/lit8 v0, p1, 0x10

    invoke-virtual {p0, v0}, Lcom/flurry/org/codehaus/jackson/util/ByteArrayBuilder;->append(I)V

    .line 137
    shr-int/lit8 v0, p1, 0x8

    invoke-virtual {p0, v0}, Lcom/flurry/org/codehaus/jackson/util/ByteArrayBuilder;->append(I)V

    .line 138
    invoke-virtual {p0, p1}, Lcom/flurry/org/codehaus/jackson/util/ByteArrayBuilder;->append(I)V

    goto :goto_0
.end method

.method public appendTwoBytes(I)V
    .locals 3
    .param p1, "b16"    # I

    .prologue
    .line 120
    iget v0, p0, Lcom/flurry/org/codehaus/jackson/util/ByteArrayBuilder;->_currBlockPtr:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/util/ByteArrayBuilder;->_currBlock:[B

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 121
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/util/ByteArrayBuilder;->_currBlock:[B

    iget v1, p0, Lcom/flurry/org/codehaus/jackson/util/ByteArrayBuilder;->_currBlockPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/flurry/org/codehaus/jackson/util/ByteArrayBuilder;->_currBlockPtr:I

    shr-int/lit8 v2, p1, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 122
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/util/ByteArrayBuilder;->_currBlock:[B

    iget v1, p0, Lcom/flurry/org/codehaus/jackson/util/ByteArrayBuilder;->_currBlockPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/flurry/org/codehaus/jackson/util/ByteArrayBuilder;->_currBlockPtr:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 127
    :goto_0
    return-void

    .line 124
    :cond_0
    shr-int/lit8 v0, p1, 0x8

    invoke-virtual {p0, v0}, Lcom/flurry/org/codehaus/jackson/util/ByteArrayBuilder;->append(I)V

    .line 125
    invoke-virtual {p0, p1}, Lcom/flurry/org/codehaus/jackson/util/ByteArrayBuilder;->append(I)V

    goto :goto_0
.end method

.method public close()V
    .locals 0

    .prologue
    .line 263
    return-void
.end method

.method public completeAndCoalesce(I)[B
    .locals 1
    .param p1, "lastBlockLength"    # I

    .prologue
    .line 214
    iput p1, p0, Lcom/flurry/org/codehaus/jackson/util/ByteArrayBuilder;->_currBlockPtr:I

    .line 215
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/util/ByteArrayBuilder;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public finishCurrentSegment()[B
    .locals 1

    .prologue
    .line 199
    invoke-direct {p0}, Lcom/flurry/org/codehaus/jackson/util/ByteArrayBuilder;->_allocMore()V

    .line 200
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/util/ByteArrayBuilder;->_currBlock:[B

    return-object v0
.end method

.method public flush()V
    .locals 0

    .prologue
    .line 265
    return-void
.end method

.method public getCurrentSegment()[B
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/util/ByteArrayBuilder;->_currBlock:[B

    return-object v0
.end method

.method public getCurrentSegmentLength()I
    .locals 1

    .prologue
    .line 227
    iget v0, p0, Lcom/flurry/org/codehaus/jackson/util/ByteArrayBuilder;->_currBlockPtr:I

    return v0
.end method

.method public release()V
    .locals 3

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/util/ByteArrayBuilder;->reset()V

    .line 104
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/util/ByteArrayBuilder;->_bufferRecycler:Lcom/flurry/org/codehaus/jackson/util/BufferRecycler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/util/ByteArrayBuilder;->_currBlock:[B

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/util/ByteArrayBuilder;->_bufferRecycler:Lcom/flurry/org/codehaus/jackson/util/BufferRecycler;

    sget-object v1, Lcom/flurry/org/codehaus/jackson/util/BufferRecycler$ByteBufferType;->WRITE_CONCAT_BUFFER:Lcom/flurry/org/codehaus/jackson/util/BufferRecycler$ByteBufferType;

    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/util/ByteArrayBuilder;->_currBlock:[B

    invoke-virtual {v0, v1, v2}, Lcom/flurry/org/codehaus/jackson/util/BufferRecycler;->releaseByteBuffer(Lcom/flurry/org/codehaus/jackson/util/BufferRecycler$ByteBufferType;[B)V

    .line 106
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/util/ByteArrayBuilder;->_currBlock:[B

    .line 108
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 89
    iput v0, p0, Lcom/flurry/org/codehaus/jackson/util/ByteArrayBuilder;->_pastLen:I

    .line 90
    iput v0, p0, Lcom/flurry/org/codehaus/jackson/util/ByteArrayBuilder;->_currBlockPtr:I

    .line 92
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/util/ByteArrayBuilder;->_pastBlocks:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/util/ByteArrayBuilder;->_pastBlocks:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 95
    :cond_0
    return-void
.end method

.method public resetAndGetFirstSegment()[B
    .locals 1

    .prologue
    .line 187
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/util/ByteArrayBuilder;->reset()V

    .line 188
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/util/ByteArrayBuilder;->_currBlock:[B

    return-object v0
.end method

.method public setCurrentSegmentLength(I)V
    .locals 0
    .param p1, "len"    # I

    .prologue
    .line 223
    iput p1, p0, Lcom/flurry/org/codehaus/jackson/util/ByteArrayBuilder;->_currBlockPtr:I

    .line 224
    return-void
.end method

.method public toByteArray()[B
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 148
    iget v6, p0, Lcom/flurry/org/codehaus/jackson/util/ByteArrayBuilder;->_pastLen:I

    iget v7, p0, Lcom/flurry/org/codehaus/jackson/util/ByteArrayBuilder;->_currBlockPtr:I

    add-int v5, v6, v7

    .line 150
    .local v5, "totalLen":I
    if-nez v5, :cond_1

    .line 151
    sget-object v4, Lcom/flurry/org/codehaus/jackson/util/ByteArrayBuilder;->NO_BYTES:[B

    .line 171
    :cond_0
    :goto_0
    return-object v4

    .line 154
    :cond_1
    new-array v4, v5, [B

    .line 155
    .local v4, "result":[B
    const/4 v3, 0x0

    .line 157
    .local v3, "offset":I
    iget-object v6, p0, Lcom/flurry/org/codehaus/jackson/util/ByteArrayBuilder;->_pastBlocks:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 158
    .local v0, "block":[B
    array-length v2, v0

    .line 159
    .local v2, "len":I
    invoke-static {v0, v8, v4, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 160
    add-int/2addr v3, v2

    .line 161
    goto :goto_1

    .line 162
    .end local v0    # "block":[B
    .end local v2    # "len":I
    :cond_2
    iget-object v6, p0, Lcom/flurry/org/codehaus/jackson/util/ByteArrayBuilder;->_currBlock:[B

    iget v7, p0, Lcom/flurry/org/codehaus/jackson/util/ByteArrayBuilder;->_currBlockPtr:I

    invoke-static {v6, v8, v4, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 163
    iget v6, p0, Lcom/flurry/org/codehaus/jackson/util/ByteArrayBuilder;->_currBlockPtr:I

    add-int/2addr v3, v6

    .line 164
    if-eq v3, v5, :cond_3

    .line 165
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Internal error: total len assumed to be "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", copied "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " bytes"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 168
    :cond_3
    iget-object v6, p0, Lcom/flurry/org/codehaus/jackson/util/ByteArrayBuilder;->_pastBlocks:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 169
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/util/ByteArrayBuilder;->reset()V

    goto :goto_0
.end method

.method public write(I)V
    .locals 0
    .param p1, "b"    # I

    .prologue
    .line 260
    invoke-virtual {p0, p1}, Lcom/flurry/org/codehaus/jackson/util/ByteArrayBuilder;->append(I)V

    .line 261
    return-void
.end method

.method public write([B)V
    .locals 2
    .param p1, "b"    # [B

    .prologue
    .line 238
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/flurry/org/codehaus/jackson/util/ByteArrayBuilder;->write([BII)V

    .line 239
    return-void
.end method

.method public write([BII)V
    .locals 4
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    .line 245
    :goto_0
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/util/ByteArrayBuilder;->_currBlock:[B

    array-length v2, v2

    iget v3, p0, Lcom/flurry/org/codehaus/jackson/util/ByteArrayBuilder;->_currBlockPtr:I

    sub-int v0, v2, v3

    .line 246
    .local v0, "max":I
    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 247
    .local v1, "toCopy":I
    if-lez v1, :cond_0

    .line 248
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/util/ByteArrayBuilder;->_currBlock:[B

    iget v3, p0, Lcom/flurry/org/codehaus/jackson/util/ByteArrayBuilder;->_currBlockPtr:I

    invoke-static {p1, p2, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 249
    add-int/2addr p2, v1

    .line 250
    iget v2, p0, Lcom/flurry/org/codehaus/jackson/util/ByteArrayBuilder;->_currBlockPtr:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/flurry/org/codehaus/jackson/util/ByteArrayBuilder;->_currBlockPtr:I

    .line 251
    sub-int/2addr p3, v1

    .line 253
    :cond_0
    if-gtz p3, :cond_1

    .line 256
    return-void

    .line 254
    :cond_1
    invoke-direct {p0}, Lcom/flurry/org/codehaus/jackson/util/ByteArrayBuilder;->_allocMore()V

    goto :goto_0
.end method
