.class public abstract Lcom/codeglue/terraria/codec/binary/BaseNCodec;
.super Ljava/lang/Object;
.source "BaseNCodec.java"

# interfaces
.implements Lcom/codeglue/terraria/codec/BinaryEncoder;
.implements Lcom/codeglue/terraria/codec/BinaryDecoder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codeglue/terraria/codec/binary/BaseNCodec$Context;
    }
.end annotation


# static fields
.field private static final DEFAULT_BUFFER_RESIZE_FACTOR:I = 0x2

.field private static final DEFAULT_BUFFER_SIZE:I = 0x2000

.field static final EOF:I = -0x1

.field protected static final MASK_8BITS:I = 0xff

.field public static final MIME_CHUNK_SIZE:I = 0x4c

.field protected static final PAD_DEFAULT:B = 0x3dt

.field public static final PEM_CHUNK_SIZE:I = 0x40


# instance fields
.field protected final PAD:B
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private final chunkSeparatorLength:I

.field private final encodedBlockSize:I

.field protected final lineLength:I

.field protected final pad:B

.field private final unencodedBlockSize:I


# direct methods
.method protected constructor <init>(IIII)V
    .locals 6
    .param p1, "unencodedBlockSize"    # I
    .param p2, "encodedBlockSize"    # I
    .param p3, "lineLength"    # I
    .param p4, "chunkSeparatorLength"    # I

    .prologue
    .line 192
    const/16 v5, 0x3d

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/codeglue/terraria/codec/binary/BaseNCodec;-><init>(IIIIB)V

    .line 193
    return-void
.end method

.method protected constructor <init>(IIIIB)V
    .locals 3
    .param p1, "unencodedBlockSize"    # I
    .param p2, "encodedBlockSize"    # I
    .param p3, "lineLength"    # I
    .param p4, "chunkSeparatorLength"    # I
    .param p5, "pad"    # B

    .prologue
    const/4 v1, 0x0

    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    const/16 v2, 0x3d

    iput-byte v2, p0, Lcom/codeglue/terraria/codec/binary/BaseNCodec;->PAD:B

    .line 206
    iput p1, p0, Lcom/codeglue/terraria/codec/binary/BaseNCodec;->unencodedBlockSize:I

    .line 207
    iput p2, p0, Lcom/codeglue/terraria/codec/binary/BaseNCodec;->encodedBlockSize:I

    .line 208
    if-lez p3, :cond_1

    if-lez p4, :cond_1

    const/4 v0, 0x1

    .line 209
    .local v0, "useChunking":Z
    :goto_0
    if-eqz v0, :cond_0

    div-int v1, p3, p2

    mul-int/2addr v1, p2

    :cond_0
    iput v1, p0, Lcom/codeglue/terraria/codec/binary/BaseNCodec;->lineLength:I

    .line 210
    iput p4, p0, Lcom/codeglue/terraria/codec/binary/BaseNCodec;->chunkSeparatorLength:I

    .line 212
    iput-byte p5, p0, Lcom/codeglue/terraria/codec/binary/BaseNCodec;->pad:B

    .line 213
    return-void

    .end local v0    # "useChunking":Z
    :cond_1
    move v0, v1

    .line 208
    goto :goto_0
.end method

.method protected static isWhiteSpace(B)Z
    .locals 1
    .param p0, "byteToCheck"    # B

    .prologue
    .line 312
    sparse-switch p0, :sswitch_data_0

    .line 319
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 317
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 312
    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xd -> :sswitch_0
        0x20 -> :sswitch_0
    .end sparse-switch
.end method

.method private resizeBuffer(Lcom/codeglue/terraria/codec/binary/BaseNCodec$Context;)[B
    .locals 4
    .param p1, "context"    # Lcom/codeglue/terraria/codec/binary/BaseNCodec$Context;

    .prologue
    const/4 v3, 0x0

    .line 249
    iget-object v1, p1, Lcom/codeglue/terraria/codec/binary/BaseNCodec$Context;->buffer:[B

    if-nez v1, :cond_0

    .line 250
    invoke-virtual {p0}, Lcom/codeglue/terraria/codec/binary/BaseNCodec;->getDefaultBufferSize()I

    move-result v1

    new-array v1, v1, [B

    iput-object v1, p1, Lcom/codeglue/terraria/codec/binary/BaseNCodec$Context;->buffer:[B

    .line 251
    iput v3, p1, Lcom/codeglue/terraria/codec/binary/BaseNCodec$Context;->pos:I

    .line 252
    iput v3, p1, Lcom/codeglue/terraria/codec/binary/BaseNCodec$Context;->readPos:I

    .line 258
    :goto_0
    iget-object v1, p1, Lcom/codeglue/terraria/codec/binary/BaseNCodec$Context;->buffer:[B

    return-object v1

    .line 254
    :cond_0
    iget-object v1, p1, Lcom/codeglue/terraria/codec/binary/BaseNCodec$Context;->buffer:[B

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    new-array v0, v1, [B

    .line 255
    .local v0, "b":[B
    iget-object v1, p1, Lcom/codeglue/terraria/codec/binary/BaseNCodec$Context;->buffer:[B

    iget-object v2, p1, Lcom/codeglue/terraria/codec/binary/BaseNCodec$Context;->buffer:[B

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 256
    iput-object v0, p1, Lcom/codeglue/terraria/codec/binary/BaseNCodec$Context;->buffer:[B

    goto :goto_0
.end method


# virtual methods
.method available(Lcom/codeglue/terraria/codec/binary/BaseNCodec$Context;)I
    .locals 2
    .param p1, "context"    # Lcom/codeglue/terraria/codec/binary/BaseNCodec$Context;

    .prologue
    .line 232
    iget-object v0, p1, Lcom/codeglue/terraria/codec/binary/BaseNCodec$Context;->buffer:[B

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/codeglue/terraria/codec/binary/BaseNCodec$Context;->pos:I

    iget v1, p1, Lcom/codeglue/terraria/codec/binary/BaseNCodec$Context;->readPos:I

    sub-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected containsAlphabetOrPad([B)Z
    .locals 6
    .param p1, "arrayOctet"    # [B

    .prologue
    const/4 v4, 0x0

    .line 496
    if-nez p1, :cond_1

    .line 504
    :cond_0
    :goto_0
    return v4

    .line 499
    :cond_1
    move-object v0, p1

    .local v0, "arr$":[B
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_0

    aget-byte v1, v0, v2

    .line 500
    .local v1, "element":B
    iget-byte v5, p0, Lcom/codeglue/terraria/codec/binary/BaseNCodec;->pad:B

    if-eq v5, v1, :cond_2

    invoke-virtual {p0, v1}, Lcom/codeglue/terraria/codec/binary/BaseNCodec;->isInAlphabet(B)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 501
    :cond_2
    const/4 v4, 0x1

    goto :goto_0

    .line 499
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public decode(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/codeglue/terraria/codec/DecoderException;
        }
    .end annotation

    .prologue
    .line 377
    instance-of v0, p1, [B

    if-eqz v0, :cond_0

    .line 378
    check-cast p1, [B

    .end local p1    # "obj":Ljava/lang/Object;
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/codeglue/terraria/codec/binary/BaseNCodec;->decode([B)[B

    move-result-object v0

    .line 380
    :goto_0
    return-object v0

    .line 379
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_0
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 380
    check-cast p1, Ljava/lang/String;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/codeglue/terraria/codec/binary/BaseNCodec;->decode(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_0

    .line 382
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_1
    new-instance v0, Lcom/codeglue/terraria/codec/DecoderException;

    const-string v1, "Parameter supplied to Base-N decode is not a byte[] or a String"

    invoke-direct {v0, v1}, Lcom/codeglue/terraria/codec/DecoderException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method abstract decode([BIILcom/codeglue/terraria/codec/binary/BaseNCodec$Context;)V
.end method

.method public decode(Ljava/lang/String;)[B
    .locals 1
    .param p1, "pArray"    # Ljava/lang/String;

    .prologue
    .line 394
    invoke-static {p1}, Lcom/codeglue/terraria/codec/binary/StringUtils;->getBytesUtf8(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/codeglue/terraria/codec/binary/BaseNCodec;->decode([B)[B

    move-result-object v0

    return-object v0
.end method

.method public decode([B)[B
    .locals 4
    .param p1, "pArray"    # [B

    .prologue
    const/4 v3, 0x0

    .line 406
    if-eqz p1, :cond_0

    array-length v2, p1

    if-nez v2, :cond_1

    :cond_0
    move-object v1, p1

    .line 414
    :goto_0
    return-object v1

    .line 409
    :cond_1
    new-instance v0, Lcom/codeglue/terraria/codec/binary/BaseNCodec$Context;

    invoke-direct {v0}, Lcom/codeglue/terraria/codec/binary/BaseNCodec$Context;-><init>()V

    .line 410
    .local v0, "context":Lcom/codeglue/terraria/codec/binary/BaseNCodec$Context;
    array-length v2, p1

    invoke-virtual {p0, p1, v3, v2, v0}, Lcom/codeglue/terraria/codec/binary/BaseNCodec;->decode([BIILcom/codeglue/terraria/codec/binary/BaseNCodec$Context;)V

    .line 411
    const/4 v2, -0x1

    invoke-virtual {p0, p1, v3, v2, v0}, Lcom/codeglue/terraria/codec/binary/BaseNCodec;->decode([BIILcom/codeglue/terraria/codec/binary/BaseNCodec$Context;)V

    .line 412
    iget v2, v0, Lcom/codeglue/terraria/codec/binary/BaseNCodec$Context;->pos:I

    new-array v1, v2, [B

    .line 413
    .local v1, "result":[B
    array-length v2, v1

    invoke-virtual {p0, v1, v3, v2, v0}, Lcom/codeglue/terraria/codec/binary/BaseNCodec;->readResults([BIILcom/codeglue/terraria/codec/binary/BaseNCodec$Context;)I

    goto :goto_0
.end method

.method public encode(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/codeglue/terraria/codec/EncoderException;
        }
    .end annotation

    .prologue
    .line 335
    instance-of v0, p1, [B

    if-nez v0, :cond_0

    .line 336
    new-instance v0, Lcom/codeglue/terraria/codec/EncoderException;

    const-string v1, "Parameter supplied to Base-N encode is not a byte[]"

    invoke-direct {v0, v1}, Lcom/codeglue/terraria/codec/EncoderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 338
    :cond_0
    check-cast p1, [B

    .end local p1    # "obj":Ljava/lang/Object;
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/codeglue/terraria/codec/binary/BaseNCodec;->encode([B)[B

    move-result-object v0

    return-object v0
.end method

.method abstract encode([BIILcom/codeglue/terraria/codec/binary/BaseNCodec$Context;)V
.end method

.method public encode([B)[B
    .locals 5
    .param p1, "pArray"    # [B

    .prologue
    const/4 v4, 0x0

    .line 426
    if-eqz p1, :cond_0

    array-length v2, p1

    if-nez v2, :cond_1

    :cond_0
    move-object v0, p1

    .line 434
    :goto_0
    return-object v0

    .line 429
    :cond_1
    new-instance v1, Lcom/codeglue/terraria/codec/binary/BaseNCodec$Context;

    invoke-direct {v1}, Lcom/codeglue/terraria/codec/binary/BaseNCodec$Context;-><init>()V

    .line 430
    .local v1, "context":Lcom/codeglue/terraria/codec/binary/BaseNCodec$Context;
    array-length v2, p1

    invoke-virtual {p0, p1, v4, v2, v1}, Lcom/codeglue/terraria/codec/binary/BaseNCodec;->encode([BIILcom/codeglue/terraria/codec/binary/BaseNCodec$Context;)V

    .line 431
    const/4 v2, -0x1

    invoke-virtual {p0, p1, v4, v2, v1}, Lcom/codeglue/terraria/codec/binary/BaseNCodec;->encode([BIILcom/codeglue/terraria/codec/binary/BaseNCodec$Context;)V

    .line 432
    iget v2, v1, Lcom/codeglue/terraria/codec/binary/BaseNCodec$Context;->pos:I

    iget v3, v1, Lcom/codeglue/terraria/codec/binary/BaseNCodec$Context;->readPos:I

    sub-int/2addr v2, v3

    new-array v0, v2, [B

    .line 433
    .local v0, "buf":[B
    array-length v2, v0

    invoke-virtual {p0, v0, v4, v2, v1}, Lcom/codeglue/terraria/codec/binary/BaseNCodec;->readResults([BIILcom/codeglue/terraria/codec/binary/BaseNCodec$Context;)I

    goto :goto_0
.end method

.method public encodeAsString([B)Ljava/lang/String;
    .locals 1
    .param p1, "pArray"    # [B

    .prologue
    .line 361
    invoke-virtual {p0, p1}, Lcom/codeglue/terraria/codec/binary/BaseNCodec;->encode([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/codeglue/terraria/codec/binary/StringUtils;->newStringUtf8([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public encodeToString([B)Ljava/lang/String;
    .locals 1
    .param p1, "pArray"    # [B

    .prologue
    .line 350
    invoke-virtual {p0, p1}, Lcom/codeglue/terraria/codec/binary/BaseNCodec;->encode([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/codeglue/terraria/codec/binary/StringUtils;->newStringUtf8([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected ensureBufferSize(ILcom/codeglue/terraria/codec/binary/BaseNCodec$Context;)[B
    .locals 2
    .param p1, "size"    # I
    .param p2, "context"    # Lcom/codeglue/terraria/codec/binary/BaseNCodec$Context;

    .prologue
    .line 269
    iget-object v0, p2, Lcom/codeglue/terraria/codec/binary/BaseNCodec$Context;->buffer:[B

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/codeglue/terraria/codec/binary/BaseNCodec$Context;->buffer:[B

    array-length v0, v0

    iget v1, p2, Lcom/codeglue/terraria/codec/binary/BaseNCodec$Context;->pos:I

    add-int/2addr v1, p1

    if-ge v0, v1, :cond_1

    .line 270
    :cond_0
    invoke-direct {p0, p2}, Lcom/codeglue/terraria/codec/binary/BaseNCodec;->resizeBuffer(Lcom/codeglue/terraria/codec/binary/BaseNCodec$Context;)[B

    move-result-object v0

    .line 272
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p2, Lcom/codeglue/terraria/codec/binary/BaseNCodec$Context;->buffer:[B

    goto :goto_0
.end method

.method protected getDefaultBufferSize()I
    .locals 1

    .prologue
    .line 241
    const/16 v0, 0x2000

    return v0
.end method

.method public getEncodedLength([B)J
    .locals 6
    .param p1, "pArray"    # [B

    .prologue
    .line 518
    array-length v2, p1

    iget v3, p0, Lcom/codeglue/terraria/codec/binary/BaseNCodec;->unencodedBlockSize:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lcom/codeglue/terraria/codec/binary/BaseNCodec;->unencodedBlockSize:I

    div-int/2addr v2, v3

    int-to-long v2, v2

    iget v4, p0, Lcom/codeglue/terraria/codec/binary/BaseNCodec;->encodedBlockSize:I

    int-to-long v4, v4

    mul-long v0, v2, v4

    .line 519
    .local v0, "len":J
    iget v2, p0, Lcom/codeglue/terraria/codec/binary/BaseNCodec;->lineLength:I

    if-lez v2, :cond_0

    .line 521
    iget v2, p0, Lcom/codeglue/terraria/codec/binary/BaseNCodec;->lineLength:I

    int-to-long v2, v2

    add-long/2addr v2, v0

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    iget v4, p0, Lcom/codeglue/terraria/codec/binary/BaseNCodec;->lineLength:I

    int-to-long v4, v4

    div-long/2addr v2, v4

    iget v4, p0, Lcom/codeglue/terraria/codec/binary/BaseNCodec;->chunkSeparatorLength:I

    int-to-long v4, v4

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 523
    :cond_0
    return-wide v0
.end method

.method hasData(Lcom/codeglue/terraria/codec/binary/BaseNCodec$Context;)Z
    .locals 1
    .param p1, "context"    # Lcom/codeglue/terraria/codec/binary/BaseNCodec$Context;

    .prologue
    .line 222
    iget-object v0, p1, Lcom/codeglue/terraria/codec/binary/BaseNCodec$Context;->buffer:[B

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract isInAlphabet(B)Z
.end method

.method public isInAlphabet(Ljava/lang/String;)Z
    .locals 2
    .param p1, "basen"    # Ljava/lang/String;

    .prologue
    .line 483
    invoke-static {p1}, Lcom/codeglue/terraria/codec/binary/StringUtils;->getBytesUtf8(Ljava/lang/String;)[B

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/codeglue/terraria/codec/binary/BaseNCodec;->isInAlphabet([BZ)Z

    move-result v0

    return v0
.end method

.method public isInAlphabet([BZ)Z
    .locals 3
    .param p1, "arrayOctet"    # [B
    .param p2, "allowWSPad"    # Z

    .prologue
    .line 464
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    .line 465
    aget-byte v1, p1, v0

    invoke-virtual {p0, v1}, Lcom/codeglue/terraria/codec/binary/BaseNCodec;->isInAlphabet(B)Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz p2, :cond_0

    aget-byte v1, p1, v0

    iget-byte v2, p0, Lcom/codeglue/terraria/codec/binary/BaseNCodec;->pad:B

    if-eq v1, v2, :cond_1

    aget-byte v1, p1, v0

    invoke-static {v1}, Lcom/codeglue/terraria/codec/binary/BaseNCodec;->isWhiteSpace(B)Z

    move-result v1

    if-nez v1, :cond_1

    .line 467
    :cond_0
    const/4 v1, 0x0

    .line 470
    :goto_1
    return v1

    .line 464
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 470
    :cond_2
    const/4 v1, 0x1

    goto :goto_1
.end method

.method readResults([BIILcom/codeglue/terraria/codec/binary/BaseNCodec$Context;)I
    .locals 3
    .param p1, "b"    # [B
    .param p2, "bPos"    # I
    .param p3, "bAvail"    # I
    .param p4, "context"    # Lcom/codeglue/terraria/codec/binary/BaseNCodec$Context;

    .prologue
    .line 292
    iget-object v1, p4, Lcom/codeglue/terraria/codec/binary/BaseNCodec$Context;->buffer:[B

    if-eqz v1, :cond_1

    .line 293
    invoke-virtual {p0, p4}, Lcom/codeglue/terraria/codec/binary/BaseNCodec;->available(Lcom/codeglue/terraria/codec/binary/BaseNCodec$Context;)I

    move-result v1

    invoke-static {v1, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 294
    .local v0, "len":I
    iget-object v1, p4, Lcom/codeglue/terraria/codec/binary/BaseNCodec$Context;->buffer:[B

    iget v2, p4, Lcom/codeglue/terraria/codec/binary/BaseNCodec$Context;->readPos:I

    invoke-static {v1, v2, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 295
    iget v1, p4, Lcom/codeglue/terraria/codec/binary/BaseNCodec$Context;->readPos:I

    add-int/2addr v1, v0

    iput v1, p4, Lcom/codeglue/terraria/codec/binary/BaseNCodec$Context;->readPos:I

    .line 296
    iget v1, p4, Lcom/codeglue/terraria/codec/binary/BaseNCodec$Context;->readPos:I

    iget v2, p4, Lcom/codeglue/terraria/codec/binary/BaseNCodec$Context;->pos:I

    if-lt v1, v2, :cond_0

    .line 297
    const/4 v1, 0x0

    iput-object v1, p4, Lcom/codeglue/terraria/codec/binary/BaseNCodec$Context;->buffer:[B

    .line 301
    .end local v0    # "len":I
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v1, p4, Lcom/codeglue/terraria/codec/binary/BaseNCodec$Context;->eof:Z

    if-eqz v1, :cond_2

    const/4 v1, -0x1

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method
