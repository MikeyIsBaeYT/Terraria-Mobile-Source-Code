.class public Lcom/codeglue/terraria/codec/binary/Base64;
.super Lcom/codeglue/terraria/codec/binary/BaseNCodec;
.source "Base64.java"


# static fields
.field private static final BITS_PER_ENCODED_BYTE:I = 0x6

.field private static final BYTES_PER_ENCODED_BLOCK:I = 0x4

.field private static final BYTES_PER_UNENCODED_BLOCK:I = 0x3

.field static final CHUNK_SEPARATOR:[B

.field private static final DECODE_TABLE:[B

.field private static final MASK_6BITS:I = 0x3f

.field private static final STANDARD_ENCODE_TABLE:[B

.field private static final URL_SAFE_ENCODE_TABLE:[B


# instance fields
.field private final decodeSize:I

.field private final decodeTable:[B

.field private final encodeSize:I

.field private final encodeTable:[B

.field private final lineSeparator:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x40

    .line 74
    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/codeglue/terraria/codec/binary/Base64;->CHUNK_SEPARATOR:[B

    .line 83
    new-array v0, v1, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/codeglue/terraria/codec/binary/Base64;->STANDARD_ENCODE_TABLE:[B

    .line 96
    new-array v0, v1, [B

    fill-array-data v0, :array_2

    sput-object v0, Lcom/codeglue/terraria/codec/binary/Base64;->URL_SAFE_ENCODE_TABLE:[B

    .line 115
    const/16 v0, 0x7b

    new-array v0, v0, [B

    fill-array-data v0, :array_3

    sput-object v0, Lcom/codeglue/terraria/codec/binary/Base64;->DECODE_TABLE:[B

    return-void

    .line 74
    :array_0
    .array-data 1
        0xdt
        0xat
    .end array-data

    .line 83
    nop

    :array_1
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2bt
        0x2ft
    .end array-data

    .line 96
    :array_2
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2dt
        0x5ft
    .end array-data

    .line 115
    :array_3
    .array-data 1
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x3et
        -0x1t
        0x3et
        -0x1t
        0x3ft
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x3at
        0x3bt
        0x3ct
        0x3dt
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
        0x10t
        0x11t
        0x12t
        0x13t
        0x14t
        0x15t
        0x16t
        0x17t
        0x18t
        0x19t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x3ft
        -0x1t
        0x1at
        0x1bt
        0x1ct
        0x1dt
        0x1et
        0x1ft
        0x20t
        0x21t
        0x22t
        0x23t
        0x24t
        0x25t
        0x26t
        0x27t
        0x28t
        0x29t
        0x2at
        0x2bt
        0x2ct
        0x2dt
        0x2et
        0x2ft
        0x30t
        0x31t
        0x32t
        0x33t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 173
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/codeglue/terraria/codec/binary/Base64;-><init>(I)V

    .line 174
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "lineLength"    # I

    .prologue
    .line 215
    sget-object v0, Lcom/codeglue/terraria/codec/binary/Base64;->CHUNK_SEPARATOR:[B

    invoke-direct {p0, p1, v0}, Lcom/codeglue/terraria/codec/binary/Base64;-><init>(I[B)V

    .line 216
    return-void
.end method

.method public constructor <init>(I[B)V
    .locals 1
    .param p1, "lineLength"    # I
    .param p2, "lineSeparator"    # [B

    .prologue
    .line 242
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/codeglue/terraria/codec/binary/Base64;-><init>(I[BZ)V

    .line 243
    return-void
.end method

.method public constructor <init>(I[BZ)V
    .locals 6
    .param p1, "lineLength"    # I
    .param p2, "lineSeparator"    # [B
    .param p3, "urlSafe"    # Z

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x4

    const/4 v2, 0x0

    .line 273
    const/4 v3, 0x3

    if-nez p2, :cond_0

    move v1, v2

    :goto_0
    invoke-direct {p0, v3, v4, p1, v1}, Lcom/codeglue/terraria/codec/binary/BaseNCodec;-><init>(IIII)V

    .line 143
    sget-object v1, Lcom/codeglue/terraria/codec/binary/Base64;->DECODE_TABLE:[B

    iput-object v1, p0, Lcom/codeglue/terraria/codec/binary/Base64;->decodeTable:[B

    .line 278
    if-eqz p2, :cond_3

    .line 279
    invoke-virtual {p0, p2}, Lcom/codeglue/terraria/codec/binary/Base64;->containsAlphabetOrPad([B)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 280
    invoke-static {p2}, Lcom/codeglue/terraria/codec/binary/StringUtils;->newStringUtf8([B)Ljava/lang/String;

    move-result-object v0

    .line 281
    .local v0, "sep":Ljava/lang/String;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lineSeparator must not contain base64 characters: ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 273
    .end local v0    # "sep":Ljava/lang/String;
    :cond_0
    array-length v1, p2

    goto :goto_0

    .line 283
    :cond_1
    if-lez p1, :cond_2

    .line 284
    array-length v1, p2

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/codeglue/terraria/codec/binary/Base64;->encodeSize:I

    .line 285
    array-length v1, p2

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/codeglue/terraria/codec/binary/Base64;->lineSeparator:[B

    .line 286
    iget-object v1, p0, Lcom/codeglue/terraria/codec/binary/Base64;->lineSeparator:[B

    array-length v3, p2

    invoke-static {p2, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 295
    :goto_1
    iget v1, p0, Lcom/codeglue/terraria/codec/binary/Base64;->encodeSize:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/codeglue/terraria/codec/binary/Base64;->decodeSize:I

    .line 296
    if-eqz p3, :cond_4

    sget-object v1, Lcom/codeglue/terraria/codec/binary/Base64;->URL_SAFE_ENCODE_TABLE:[B

    :goto_2
    iput-object v1, p0, Lcom/codeglue/terraria/codec/binary/Base64;->encodeTable:[B

    .line 297
    return-void

    .line 288
    :cond_2
    iput v4, p0, Lcom/codeglue/terraria/codec/binary/Base64;->encodeSize:I

    .line 289
    iput-object v5, p0, Lcom/codeglue/terraria/codec/binary/Base64;->lineSeparator:[B

    goto :goto_1

    .line 292
    :cond_3
    iput v4, p0, Lcom/codeglue/terraria/codec/binary/Base64;->encodeSize:I

    .line 293
    iput-object v5, p0, Lcom/codeglue/terraria/codec/binary/Base64;->lineSeparator:[B

    goto :goto_1

    .line 296
    :cond_4
    sget-object v1, Lcom/codeglue/terraria/codec/binary/Base64;->STANDARD_ENCODE_TABLE:[B

    goto :goto_2
.end method

.method public constructor <init>(Z)V
    .locals 2
    .param p1, "urlSafe"    # Z

    .prologue
    .line 192
    const/16 v0, 0x4c

    sget-object v1, Lcom/codeglue/terraria/codec/binary/Base64;->CHUNK_SEPARATOR:[B

    invoke-direct {p0, v0, v1, p1}, Lcom/codeglue/terraria/codec/binary/Base64;-><init>(I[BZ)V

    .line 193
    return-void
.end method

.method public static decodeBase64(Ljava/lang/String;)[B
    .locals 1
    .param p0, "base64String"    # Ljava/lang/String;

    .prologue
    .line 692
    new-instance v0, Lcom/codeglue/terraria/codec/binary/Base64;

    invoke-direct {v0}, Lcom/codeglue/terraria/codec/binary/Base64;-><init>()V

    invoke-virtual {v0, p0}, Lcom/codeglue/terraria/codec/binary/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static decodeBase64([B)[B
    .locals 1
    .param p0, "base64Data"    # [B

    .prologue
    .line 706
    new-instance v0, Lcom/codeglue/terraria/codec/binary/Base64;

    invoke-direct {v0}, Lcom/codeglue/terraria/codec/binary/Base64;-><init>()V

    invoke-virtual {v0, p0}, Lcom/codeglue/terraria/codec/binary/Base64;->decode([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static decodeInteger([B)Ljava/math/BigInteger;
    .locals 3
    .param p0, "pArray"    # [B

    .prologue
    .line 721
    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-static {p0}, Lcom/codeglue/terraria/codec/binary/Base64;->decodeBase64([B)[B

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v0
.end method

.method public static encodeBase64([B)[B
    .locals 1
    .param p0, "binaryData"    # [B

    .prologue
    .line 554
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/codeglue/terraria/codec/binary/Base64;->encodeBase64([BZ)[B

    move-result-object v0

    return-object v0
.end method

.method public static encodeBase64([BZ)[B
    .locals 1
    .param p0, "binaryData"    # [B
    .param p1, "isChunked"    # Z

    .prologue
    .line 621
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/codeglue/terraria/codec/binary/Base64;->encodeBase64([BZZ)[B

    move-result-object v0

    return-object v0
.end method

.method public static encodeBase64([BZZ)[B
    .locals 1
    .param p0, "binaryData"    # [B
    .param p1, "isChunked"    # Z
    .param p2, "urlSafe"    # Z

    .prologue
    .line 640
    const v0, 0x7fffffff

    invoke-static {p0, p1, p2, v0}, Lcom/codeglue/terraria/codec/binary/Base64;->encodeBase64([BZZI)[B

    move-result-object v0

    return-object v0
.end method

.method public static encodeBase64([BZZI)[B
    .locals 6
    .param p0, "binaryData"    # [B
    .param p1, "isChunked"    # Z
    .param p2, "urlSafe"    # Z
    .param p3, "maxResultSize"    # I

    .prologue
    .line 662
    if-eqz p0, :cond_0

    array-length v1, p0

    if-nez v1, :cond_1

    .line 677
    .end local p0    # "binaryData":[B
    :cond_0
    :goto_0
    return-object p0

    .line 668
    .restart local p0    # "binaryData":[B
    :cond_1
    if-eqz p1, :cond_2

    new-instance v0, Lcom/codeglue/terraria/codec/binary/Base64;

    invoke-direct {v0, p2}, Lcom/codeglue/terraria/codec/binary/Base64;-><init>(Z)V

    .line 669
    .local v0, "b64":Lcom/codeglue/terraria/codec/binary/Base64;
    :goto_1
    invoke-virtual {v0, p0}, Lcom/codeglue/terraria/codec/binary/Base64;->getEncodedLength([B)J

    move-result-wide v2

    .line 670
    .local v2, "len":J
    int-to-long v4, p3

    cmp-long v1, v2, v4

    if-lez v1, :cond_3

    .line 671
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Input array too big, the output array would be bigger ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") than the specified maximum size of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 668
    .end local v0    # "b64":Lcom/codeglue/terraria/codec/binary/Base64;
    .end local v2    # "len":J
    :cond_2
    new-instance v0, Lcom/codeglue/terraria/codec/binary/Base64;

    const/4 v1, 0x0

    sget-object v4, Lcom/codeglue/terraria/codec/binary/Base64;->CHUNK_SEPARATOR:[B

    invoke-direct {v0, v1, v4, p2}, Lcom/codeglue/terraria/codec/binary/Base64;-><init>(I[BZ)V

    goto :goto_1

    .line 677
    .restart local v0    # "b64":Lcom/codeglue/terraria/codec/binary/Base64;
    .restart local v2    # "len":J
    :cond_3
    invoke-virtual {v0, p0}, Lcom/codeglue/terraria/codec/binary/Base64;->encode([B)[B

    move-result-object p0

    goto :goto_0
.end method

.method public static encodeBase64Chunked([B)[B
    .locals 1
    .param p0, "binaryData"    # [B

    .prologue
    .line 606
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/codeglue/terraria/codec/binary/Base64;->encodeBase64([BZ)[B

    move-result-object v0

    return-object v0
.end method

.method public static encodeBase64String([B)Ljava/lang/String;
    .locals 1
    .param p0, "binaryData"    # [B

    .prologue
    .line 569
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/codeglue/terraria/codec/binary/Base64;->encodeBase64([BZ)[B

    move-result-object v0

    invoke-static {v0}, Lcom/codeglue/terraria/codec/binary/StringUtils;->newStringUtf8([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeBase64URLSafe([B)[B
    .locals 2
    .param p0, "binaryData"    # [B

    .prologue
    .line 582
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/codeglue/terraria/codec/binary/Base64;->encodeBase64([BZZ)[B

    move-result-object v0

    return-object v0
.end method

.method public static encodeBase64URLSafeString([B)Ljava/lang/String;
    .locals 2
    .param p0, "binaryData"    # [B

    .prologue
    .line 595
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/codeglue/terraria/codec/binary/Base64;->encodeBase64([BZZ)[B

    move-result-object v0

    invoke-static {v0}, Lcom/codeglue/terraria/codec/binary/StringUtils;->newStringUtf8([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeInteger(Ljava/math/BigInteger;)[B
    .locals 2
    .param p0, "bigInt"    # Ljava/math/BigInteger;

    .prologue
    .line 735
    if-nez p0, :cond_0

    .line 736
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "encodeInteger called with null parameter"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 738
    :cond_0
    invoke-static {p0}, Lcom/codeglue/terraria/codec/binary/Base64;->toIntegerBytes(Ljava/math/BigInteger;)[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/codeglue/terraria/codec/binary/Base64;->encodeBase64([BZ)[B

    move-result-object v0

    return-object v0
.end method

.method public static isArrayByteBase64([B)Z
    .locals 1
    .param p0, "arrayOctet"    # [B
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 498
    invoke-static {p0}, Lcom/codeglue/terraria/codec/binary/Base64;->isBase64([B)Z

    move-result v0

    return v0
.end method

.method public static isBase64(B)Z
    .locals 2
    .param p0, "octet"    # B

    .prologue
    .line 510
    const/16 v0, 0x3d

    if-eq p0, v0, :cond_0

    if-ltz p0, :cond_1

    sget-object v0, Lcom/codeglue/terraria/codec/binary/Base64;->DECODE_TABLE:[B

    array-length v0, v0

    if-ge p0, v0, :cond_1

    sget-object v0, Lcom/codeglue/terraria/codec/binary/Base64;->DECODE_TABLE:[B

    aget-byte v0, v0, p0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isBase64(Ljava/lang/String;)Z
    .locals 1
    .param p0, "base64"    # Ljava/lang/String;

    .prologue
    .line 524
    invoke-static {p0}, Lcom/codeglue/terraria/codec/binary/StringUtils;->getBytesUtf8(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/codeglue/terraria/codec/binary/Base64;->isBase64([B)Z

    move-result v0

    return v0
.end method

.method public static isBase64([B)Z
    .locals 2
    .param p0, "arrayOctet"    # [B

    .prologue
    .line 538
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 539
    aget-byte v1, p0, v0

    invoke-static {v1}, Lcom/codeglue/terraria/codec/binary/Base64;->isBase64(B)Z

    move-result v1

    if-nez v1, :cond_0

    aget-byte v1, p0, v0

    invoke-static {v1}, Lcom/codeglue/terraria/codec/binary/Base64;->isWhiteSpace(B)Z

    move-result v1

    if-nez v1, :cond_0

    .line 540
    const/4 v1, 0x0

    .line 543
    :goto_1
    return v1

    .line 538
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 543
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method static toIntegerBytes(Ljava/math/BigInteger;)[B
    .locals 8
    .param p0, "bigInt"    # Ljava/math/BigInteger;

    .prologue
    .line 749
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    .line 751
    .local v1, "bitlen":I
    add-int/lit8 v6, v1, 0x7

    shr-int/lit8 v6, v6, 0x3

    shl-int/lit8 v1, v6, 0x3

    .line 752
    invoke-virtual {p0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    .line 754
    .local v0, "bigBytes":[B
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v6

    rem-int/lit8 v6, v6, 0x8

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v6

    div-int/lit8 v6, v6, 0x8

    add-int/lit8 v6, v6, 0x1

    div-int/lit8 v7, v1, 0x8

    if-ne v6, v7, :cond_0

    .line 769
    .end local v0    # "bigBytes":[B
    :goto_0
    return-object v0

    .line 758
    .restart local v0    # "bigBytes":[B
    :cond_0
    const/4 v5, 0x0

    .line 759
    .local v5, "startSrc":I
    array-length v2, v0

    .line 762
    .local v2, "len":I
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v6

    rem-int/lit8 v6, v6, 0x8

    if-nez v6, :cond_1

    .line 763
    const/4 v5, 0x1

    .line 764
    add-int/lit8 v2, v2, -0x1

    .line 766
    :cond_1
    div-int/lit8 v6, v1, 0x8

    sub-int v4, v6, v2

    .line 767
    .local v4, "startDst":I
    div-int/lit8 v6, v1, 0x8

    new-array v3, v6, [B

    .line 768
    .local v3, "resizedBytes":[B
    invoke-static {v0, v5, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v3

    .line 769
    goto :goto_0
.end method


# virtual methods
.method decode([BIILcom/codeglue/terraria/codec/binary/BaseNCodec$Context;)V
    .locals 8
    .param p1, "in"    # [B
    .param p2, "inPos"    # I
    .param p3, "inAvail"    # I
    .param p4, "context"    # Lcom/codeglue/terraria/codec/binary/BaseNCodec$Context;

    .prologue
    const/4 v7, 0x1

    .line 429
    iget-boolean v5, p4, Lcom/codeglue/terraria/codec/binary/BaseNCodec$Context;->eof:Z

    if-eqz v5, :cond_1

    .line 484
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 432
    :cond_1
    if-gez p3, :cond_2

    .line 433
    iput-boolean v7, p4, Lcom/codeglue/terraria/codec/binary/BaseNCodec$Context;->eof:Z

    .line 435
    :cond_2
    const/4 v2, 0x0

    .local v2, "i":I
    move v3, p2

    .end local p2    # "inPos":I
    .local v3, "inPos":I
    :goto_1
    if-ge v2, p3, :cond_5

    .line 436
    iget v5, p0, Lcom/codeglue/terraria/codec/binary/Base64;->decodeSize:I

    invoke-virtual {p0, v5, p4}, Lcom/codeglue/terraria/codec/binary/Base64;->ensureBufferSize(ILcom/codeglue/terraria/codec/binary/BaseNCodec$Context;)[B

    move-result-object v1

    .line 437
    .local v1, "buffer":[B
    add-int/lit8 p2, v3, 0x1

    .end local v3    # "inPos":I
    .restart local p2    # "inPos":I
    aget-byte v0, p1, v3

    .line 438
    .local v0, "b":B
    iget-byte v5, p0, Lcom/codeglue/terraria/codec/binary/Base64;->pad:B

    if-ne v0, v5, :cond_3

    .line 440
    iput-boolean v7, p4, Lcom/codeglue/terraria/codec/binary/BaseNCodec$Context;->eof:Z

    .line 461
    .end local v0    # "b":B
    .end local v1    # "buffer":[B
    :goto_2
    iget-boolean v5, p4, Lcom/codeglue/terraria/codec/binary/BaseNCodec$Context;->eof:Z

    if-eqz v5, :cond_0

    iget v5, p4, Lcom/codeglue/terraria/codec/binary/BaseNCodec$Context;->modulus:I

    if-eqz v5, :cond_0

    .line 462
    iget v5, p0, Lcom/codeglue/terraria/codec/binary/Base64;->decodeSize:I

    invoke-virtual {p0, v5, p4}, Lcom/codeglue/terraria/codec/binary/Base64;->ensureBufferSize(ILcom/codeglue/terraria/codec/binary/BaseNCodec$Context;)[B

    move-result-object v1

    .line 466
    .restart local v1    # "buffer":[B
    iget v5, p4, Lcom/codeglue/terraria/codec/binary/BaseNCodec$Context;->modulus:I

    packed-switch v5, :pswitch_data_0

    .line 481
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Impossible modulus "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p4, Lcom/codeglue/terraria/codec/binary/BaseNCodec$Context;->modulus:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 443
    .restart local v0    # "b":B
    :cond_3
    if-ltz v0, :cond_4

    sget-object v5, Lcom/codeglue/terraria/codec/binary/Base64;->DECODE_TABLE:[B

    array-length v5, v5

    if-ge v0, v5, :cond_4

    .line 444
    sget-object v5, Lcom/codeglue/terraria/codec/binary/Base64;->DECODE_TABLE:[B

    aget-byte v4, v5, v0

    .line 445
    .local v4, "result":I
    if-ltz v4, :cond_4

    .line 446
    iget v5, p4, Lcom/codeglue/terraria/codec/binary/BaseNCodec$Context;->modulus:I

    add-int/lit8 v5, v5, 0x1

    rem-int/lit8 v5, v5, 0x4

    iput v5, p4, Lcom/codeglue/terraria/codec/binary/BaseNCodec$Context;->modulus:I

    .line 447
    iget v5, p4, Lcom/codeglue/terraria/codec/binary/BaseNCodec$Context;->ibitWorkArea:I

    shl-int/lit8 v5, v5, 0x6

    add-int/2addr v5, v4

    iput v5, p4, Lcom/codeglue/terraria/codec/binary/BaseNCodec$Context;->ibitWorkArea:I

    .line 448
    iget v5, p4, Lcom/codeglue/terraria/codec/binary/BaseNCodec$Context;->modulus:I

    if-nez v5, :cond_4

    .line 449
    iget v5, p4, Lcom/codeglue/terraria/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p4, Lcom/codeglue/terraria/codec/binary/BaseNCodec$Context;->pos:I

    iget v6, p4, Lcom/codeglue/terraria/codec/binary/BaseNCodec$Context;->ibitWorkArea:I

    shr-int/lit8 v6, v6, 0x10

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v1, v5

    .line 450
    iget v5, p4, Lcom/codeglue/terraria/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p4, Lcom/codeglue/terraria/codec/binary/BaseNCodec$Context;->pos:I

    iget v6, p4, Lcom/codeglue/terraria/codec/binary/BaseNCodec$Context;->ibitWorkArea:I

    shr-int/lit8 v6, v6, 0x8

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v1, v5

    .line 451
    iget v5, p4, Lcom/codeglue/terraria/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p4, Lcom/codeglue/terraria/codec/binary/BaseNCodec$Context;->pos:I

    iget v6, p4, Lcom/codeglue/terraria/codec/binary/BaseNCodec$Context;->ibitWorkArea:I

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v1, v5

    .line 435
    .end local v4    # "result":I
    :cond_4
    add-int/lit8 v2, v2, 0x1

    move v3, p2

    .end local p2    # "inPos":I
    .restart local v3    # "inPos":I
    goto/16 :goto_1

    .line 472
    .end local v0    # "b":B
    .end local v3    # "inPos":I
    .restart local p2    # "inPos":I
    :pswitch_1
    iget v5, p4, Lcom/codeglue/terraria/codec/binary/BaseNCodec$Context;->ibitWorkArea:I

    shr-int/lit8 v5, v5, 0x4

    iput v5, p4, Lcom/codeglue/terraria/codec/binary/BaseNCodec$Context;->ibitWorkArea:I

    .line 473
    iget v5, p4, Lcom/codeglue/terraria/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p4, Lcom/codeglue/terraria/codec/binary/BaseNCodec$Context;->pos:I

    iget v6, p4, Lcom/codeglue/terraria/codec/binary/BaseNCodec$Context;->ibitWorkArea:I

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v1, v5

    goto/16 :goto_0

    .line 476
    :pswitch_2
    iget v5, p4, Lcom/codeglue/terraria/codec/binary/BaseNCodec$Context;->ibitWorkArea:I

    shr-int/lit8 v5, v5, 0x2

    iput v5, p4, Lcom/codeglue/terraria/codec/binary/BaseNCodec$Context;->ibitWorkArea:I

    .line 477
    iget v5, p4, Lcom/codeglue/terraria/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p4, Lcom/codeglue/terraria/codec/binary/BaseNCodec$Context;->pos:I

    iget v6, p4, Lcom/codeglue/terraria/codec/binary/BaseNCodec$Context;->ibitWorkArea:I

    shr-int/lit8 v6, v6, 0x8

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v1, v5

    .line 478
    iget v5, p4, Lcom/codeglue/terraria/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p4, Lcom/codeglue/terraria/codec/binary/BaseNCodec$Context;->pos:I

    iget v6, p4, Lcom/codeglue/terraria/codec/binary/BaseNCodec$Context;->ibitWorkArea:I

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v1, v5

    goto/16 :goto_0

    .end local v1    # "buffer":[B
    .end local p2    # "inPos":I
    .restart local v3    # "inPos":I
    :cond_5
    move p2, v3

    .end local v3    # "inPos":I
    .restart local p2    # "inPos":I
    goto/16 :goto_2

    .line 466
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method encode([BIILcom/codeglue/terraria/codec/binary/BaseNCodec$Context;)V
    .locals 9
    .param p1, "in"    # [B
    .param p2, "inPos"    # I
    .param p3, "inAvail"    # I
    .param p4, "context"    # Lcom/codeglue/terraria/codec/binary/BaseNCodec$Context;

    .prologue
    const/4 v8, 0x0

    .line 332
    iget-boolean v5, p4, Lcom/codeglue/terraria/codec/binary/BaseNCodec$Context;->eof:Z

    if-eqz v5, :cond_1

    .line 400
    :cond_0
    :goto_0
    return-void

    .line 337
    :cond_1
    if-gez p3, :cond_4

    .line 338
    const/4 v5, 0x1

    iput-boolean v5, p4, Lcom/codeglue/terraria/codec/binary/BaseNCodec$Context;->eof:Z

    .line 339
    iget v5, p4, Lcom/codeglue/terraria/codec/binary/BaseNCodec$Context;->modulus:I

    if-nez v5, :cond_2

    iget v5, p0, Lcom/codeglue/terraria/codec/binary/Base64;->lineLength:I

    if-eqz v5, :cond_0

    .line 342
    :cond_2
    iget v5, p0, Lcom/codeglue/terraria/codec/binary/Base64;->encodeSize:I

    invoke-virtual {p0, v5, p4}, Lcom/codeglue/terraria/codec/binary/Base64;->ensureBufferSize(ILcom/codeglue/terraria/codec/binary/BaseNCodec$Context;)[B

    move-result-object v1

    .line 343
    .local v1, "buffer":[B
    iget v4, p4, Lcom/codeglue/terraria/codec/binary/BaseNCodec$Context;->pos:I

    .line 344
    .local v4, "savedPos":I
    iget v5, p4, Lcom/codeglue/terraria/codec/binary/BaseNCodec$Context;->modulus:I

    packed-switch v5, :pswitch_data_0

    .line 369
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Impossible modulus "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p4, Lcom/codeglue/terraria/codec/binary/BaseNCodec$Context;->modulus:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 349
    :pswitch_0
    iget v5, p4, Lcom/codeglue/terraria/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p4, Lcom/codeglue/terraria/codec/binary/BaseNCodec$Context;->pos:I

    iget-object v6, p0, Lcom/codeglue/terraria/codec/binary/Base64;->encodeTable:[B

    iget v7, p4, Lcom/codeglue/terraria/codec/binary/BaseNCodec$Context;->ibitWorkArea:I

    shr-int/lit8 v7, v7, 0x2

    and-int/lit8 v7, v7, 0x3f

    aget-byte v6, v6, v7

    aput-byte v6, v1, v5

    .line 351
    iget v5, p4, Lcom/codeglue/terraria/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p4, Lcom/codeglue/terraria/codec/binary/BaseNCodec$Context;->pos:I

    iget-object v6, p0, Lcom/codeglue/terraria/codec/binary/Base64;->encodeTable:[B

    iget v7, p4, Lcom/codeglue/terraria/codec/binary/BaseNCodec$Context;->ibitWorkArea:I

    shl-int/lit8 v7, v7, 0x4

    and-int/lit8 v7, v7, 0x3f

    aget-byte v6, v6, v7

    aput-byte v6, v1, v5

    .line 353
    iget-object v5, p0, Lcom/codeglue/terraria/codec/binary/Base64;->encodeTable:[B

    sget-object v6, Lcom/codeglue/terraria/codec/binary/Base64;->STANDARD_ENCODE_TABLE:[B

    if-ne v5, v6, :cond_3

    .line 354
    iget v5, p4, Lcom/codeglue/terraria/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p4, Lcom/codeglue/terraria/codec/binary/BaseNCodec$Context;->pos:I

    iget-byte v6, p0, Lcom/codeglue/terraria/codec/binary/Base64;->pad:B

    aput-byte v6, v1, v5

    .line 355
    iget v5, p4, Lcom/codeglue/terraria/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p4, Lcom/codeglue/terraria/codec/binary/BaseNCodec$Context;->pos:I

    iget-byte v6, p0, Lcom/codeglue/terraria/codec/binary/Base64;->pad:B

    aput-byte v6, v1, v5

    .line 371
    :cond_3
    :goto_1
    :pswitch_1
    iget v5, p4, Lcom/codeglue/terraria/codec/binary/BaseNCodec$Context;->currentLinePos:I

    iget v6, p4, Lcom/codeglue/terraria/codec/binary/BaseNCodec$Context;->pos:I

    sub-int/2addr v6, v4

    add-int/2addr v5, v6

    iput v5, p4, Lcom/codeglue/terraria/codec/binary/BaseNCodec$Context;->currentLinePos:I

    .line 373
    iget v5, p0, Lcom/codeglue/terraria/codec/binary/Base64;->lineLength:I

    if-lez v5, :cond_0

    iget v5, p4, Lcom/codeglue/terraria/codec/binary/BaseNCodec$Context;->currentLinePos:I

    if-lez v5, :cond_0

    .line 374
    iget-object v5, p0, Lcom/codeglue/terraria/codec/binary/Base64;->lineSeparator:[B

    iget v6, p4, Lcom/codeglue/terraria/codec/binary/BaseNCodec$Context;->pos:I

    iget-object v7, p0, Lcom/codeglue/terraria/codec/binary/Base64;->lineSeparator:[B

    array-length v7, v7

    invoke-static {v5, v8, v1, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 375
    iget v5, p4, Lcom/codeglue/terraria/codec/binary/BaseNCodec$Context;->pos:I

    iget-object v6, p0, Lcom/codeglue/terraria/codec/binary/Base64;->lineSeparator:[B

    array-length v6, v6

    add-int/2addr v5, v6

    iput v5, p4, Lcom/codeglue/terraria/codec/binary/BaseNCodec$Context;->pos:I

    goto/16 :goto_0

    .line 360
    :pswitch_2
    iget v5, p4, Lcom/codeglue/terraria/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p4, Lcom/codeglue/terraria/codec/binary/BaseNCodec$Context;->pos:I

    iget-object v6, p0, Lcom/codeglue/terraria/codec/binary/Base64;->encodeTable:[B

    iget v7, p4, Lcom/codeglue/terraria/codec/binary/BaseNCodec$Context;->ibitWorkArea:I

    shr-int/lit8 v7, v7, 0xa

    and-int/lit8 v7, v7, 0x3f

    aget-byte v6, v6, v7

    aput-byte v6, v1, v5

    .line 361
    iget v5, p4, Lcom/codeglue/terraria/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p4, Lcom/codeglue/terraria/codec/binary/BaseNCodec$Context;->pos:I

    iget-object v6, p0, Lcom/codeglue/terraria/codec/binary/Base64;->encodeTable:[B

    iget v7, p4, Lcom/codeglue/terraria/codec/binary/BaseNCodec$Context;->ibitWorkArea:I

    shr-int/lit8 v7, v7, 0x4

    and-int/lit8 v7, v7, 0x3f

    aget-byte v6, v6, v7

    aput-byte v6, v1, v5

    .line 362
    iget v5, p4, Lcom/codeglue/terraria/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p4, Lcom/codeglue/terraria/codec/binary/BaseNCodec$Context;->pos:I

    iget-object v6, p0, Lcom/codeglue/terraria/codec/binary/Base64;->encodeTable:[B

    iget v7, p4, Lcom/codeglue/terraria/codec/binary/BaseNCodec$Context;->ibitWorkArea:I

    shl-int/lit8 v7, v7, 0x2

    and-int/lit8 v7, v7, 0x3f

    aget-byte v6, v6, v7

    aput-byte v6, v1, v5

    .line 364
    iget-object v5, p0, Lcom/codeglue/terraria/codec/binary/Base64;->encodeTable:[B

    sget-object v6, Lcom/codeglue/terraria/codec/binary/Base64;->STANDARD_ENCODE_TABLE:[B

    if-ne v5, v6, :cond_3

    .line 365
    iget v5, p4, Lcom/codeglue/terraria/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p4, Lcom/codeglue/terraria/codec/binary/BaseNCodec$Context;->pos:I

    iget-byte v6, p0, Lcom/codeglue/terraria/codec/binary/Base64;->pad:B

    aput-byte v6, v1, v5

    goto :goto_1

    .line 378
    .end local v1    # "buffer":[B
    .end local v4    # "savedPos":I
    :cond_4
    const/4 v2, 0x0

    .local v2, "i":I
    move v3, p2

    .end local p2    # "inPos":I
    .local v3, "inPos":I
    :goto_2
    if-ge v2, p3, :cond_7

    .line 379
    iget v5, p0, Lcom/codeglue/terraria/codec/binary/Base64;->encodeSize:I

    invoke-virtual {p0, v5, p4}, Lcom/codeglue/terraria/codec/binary/Base64;->ensureBufferSize(ILcom/codeglue/terraria/codec/binary/BaseNCodec$Context;)[B

    move-result-object v1

    .line 380
    .restart local v1    # "buffer":[B
    iget v5, p4, Lcom/codeglue/terraria/codec/binary/BaseNCodec$Context;->modulus:I

    add-int/lit8 v5, v5, 0x1

    rem-int/lit8 v5, v5, 0x3

    iput v5, p4, Lcom/codeglue/terraria/codec/binary/BaseNCodec$Context;->modulus:I

    .line 381
    add-int/lit8 p2, v3, 0x1

    .end local v3    # "inPos":I
    .restart local p2    # "inPos":I
    aget-byte v0, p1, v3

    .line 382
    .local v0, "b":I
    if-gez v0, :cond_5

    .line 383
    add-int/lit16 v0, v0, 0x100

    .line 385
    :cond_5
    iget v5, p4, Lcom/codeglue/terraria/codec/binary/BaseNCodec$Context;->ibitWorkArea:I

    shl-int/lit8 v5, v5, 0x8

    add-int/2addr v5, v0

    iput v5, p4, Lcom/codeglue/terraria/codec/binary/BaseNCodec$Context;->ibitWorkArea:I

    .line 386
    iget v5, p4, Lcom/codeglue/terraria/codec/binary/BaseNCodec$Context;->modulus:I

    if-nez v5, :cond_6

    .line 387
    iget v5, p4, Lcom/codeglue/terraria/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p4, Lcom/codeglue/terraria/codec/binary/BaseNCodec$Context;->pos:I

    iget-object v6, p0, Lcom/codeglue/terraria/codec/binary/Base64;->encodeTable:[B

    iget v7, p4, Lcom/codeglue/terraria/codec/binary/BaseNCodec$Context;->ibitWorkArea:I

    shr-int/lit8 v7, v7, 0x12

    and-int/lit8 v7, v7, 0x3f

    aget-byte v6, v6, v7

    aput-byte v6, v1, v5

    .line 388
    iget v5, p4, Lcom/codeglue/terraria/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p4, Lcom/codeglue/terraria/codec/binary/BaseNCodec$Context;->pos:I

    iget-object v6, p0, Lcom/codeglue/terraria/codec/binary/Base64;->encodeTable:[B

    iget v7, p4, Lcom/codeglue/terraria/codec/binary/BaseNCodec$Context;->ibitWorkArea:I

    shr-int/lit8 v7, v7, 0xc

    and-int/lit8 v7, v7, 0x3f

    aget-byte v6, v6, v7

    aput-byte v6, v1, v5

    .line 389
    iget v5, p4, Lcom/codeglue/terraria/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p4, Lcom/codeglue/terraria/codec/binary/BaseNCodec$Context;->pos:I

    iget-object v6, p0, Lcom/codeglue/terraria/codec/binary/Base64;->encodeTable:[B

    iget v7, p4, Lcom/codeglue/terraria/codec/binary/BaseNCodec$Context;->ibitWorkArea:I

    shr-int/lit8 v7, v7, 0x6

    and-int/lit8 v7, v7, 0x3f

    aget-byte v6, v6, v7

    aput-byte v6, v1, v5

    .line 390
    iget v5, p4, Lcom/codeglue/terraria/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p4, Lcom/codeglue/terraria/codec/binary/BaseNCodec$Context;->pos:I

    iget-object v6, p0, Lcom/codeglue/terraria/codec/binary/Base64;->encodeTable:[B

    iget v7, p4, Lcom/codeglue/terraria/codec/binary/BaseNCodec$Context;->ibitWorkArea:I

    and-int/lit8 v7, v7, 0x3f

    aget-byte v6, v6, v7

    aput-byte v6, v1, v5

    .line 391
    iget v5, p4, Lcom/codeglue/terraria/codec/binary/BaseNCodec$Context;->currentLinePos:I

    add-int/lit8 v5, v5, 0x4

    iput v5, p4, Lcom/codeglue/terraria/codec/binary/BaseNCodec$Context;->currentLinePos:I

    .line 392
    iget v5, p0, Lcom/codeglue/terraria/codec/binary/Base64;->lineLength:I

    if-lez v5, :cond_6

    iget v5, p0, Lcom/codeglue/terraria/codec/binary/Base64;->lineLength:I

    iget v6, p4, Lcom/codeglue/terraria/codec/binary/BaseNCodec$Context;->currentLinePos:I

    if-gt v5, v6, :cond_6

    .line 393
    iget-object v5, p0, Lcom/codeglue/terraria/codec/binary/Base64;->lineSeparator:[B

    iget v6, p4, Lcom/codeglue/terraria/codec/binary/BaseNCodec$Context;->pos:I

    iget-object v7, p0, Lcom/codeglue/terraria/codec/binary/Base64;->lineSeparator:[B

    array-length v7, v7

    invoke-static {v5, v8, v1, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 394
    iget v5, p4, Lcom/codeglue/terraria/codec/binary/BaseNCodec$Context;->pos:I

    iget-object v6, p0, Lcom/codeglue/terraria/codec/binary/Base64;->lineSeparator:[B

    array-length v6, v6

    add-int/2addr v5, v6

    iput v5, p4, Lcom/codeglue/terraria/codec/binary/BaseNCodec$Context;->pos:I

    .line 395
    iput v8, p4, Lcom/codeglue/terraria/codec/binary/BaseNCodec$Context;->currentLinePos:I

    .line 378
    :cond_6
    add-int/lit8 v2, v2, 0x1

    move v3, p2

    .end local p2    # "inPos":I
    .restart local v3    # "inPos":I
    goto/16 :goto_2

    .end local v0    # "b":I
    .end local v1    # "buffer":[B
    :cond_7
    move p2, v3

    .end local v3    # "inPos":I
    .restart local p2    # "inPos":I
    goto/16 :goto_0

    .line 344
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected isInAlphabet(B)Z
    .locals 2
    .param p1, "octet"    # B

    .prologue
    .line 781
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/codeglue/terraria/codec/binary/Base64;->decodeTable:[B

    array-length v0, v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/codeglue/terraria/codec/binary/Base64;->decodeTable:[B

    aget-byte v0, v0, p1

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUrlSafe()Z
    .locals 2

    .prologue
    .line 306
    iget-object v0, p0, Lcom/codeglue/terraria/codec/binary/Base64;->encodeTable:[B

    sget-object v1, Lcom/codeglue/terraria/codec/binary/Base64;->URL_SAFE_ENCODE_TABLE:[B

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
