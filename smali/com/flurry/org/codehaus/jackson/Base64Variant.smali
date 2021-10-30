.class public final Lcom/flurry/org/codehaus/jackson/Base64Variant;
.super Ljava/lang/Object;
.source "Base64Variant.java"


# static fields
.field public static final BASE64_VALUE_INVALID:I = -0x1

.field public static final BASE64_VALUE_PADDING:I = -0x2

.field static final PADDING_CHAR_NONE:C


# instance fields
.field private final _asciiToBase64:[I

.field private final _base64ToAsciiB:[B

.field private final _base64ToAsciiC:[C

.field final _maxLineLength:I

.field final _name:Ljava/lang/String;

.field final _paddingChar:C

.field final _usesPadding:Z


# direct methods
.method public constructor <init>(Lcom/flurry/org/codehaus/jackson/Base64Variant;Ljava/lang/String;I)V
    .locals 6
    .param p1, "base"    # Lcom/flurry/org/codehaus/jackson/Base64Variant;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "maxLineLength"    # I

    .prologue
    .line 147
    iget-boolean v3, p1, Lcom/flurry/org/codehaus/jackson/Base64Variant;->_usesPadding:Z

    iget-char v4, p1, Lcom/flurry/org/codehaus/jackson/Base64Variant;->_paddingChar:C

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/flurry/org/codehaus/jackson/Base64Variant;-><init>(Lcom/flurry/org/codehaus/jackson/Base64Variant;Ljava/lang/String;ZCI)V

    .line 148
    return-void
.end method

.method public constructor <init>(Lcom/flurry/org/codehaus/jackson/Base64Variant;Ljava/lang/String;ZCI)V
    .locals 6
    .param p1, "base"    # Lcom/flurry/org/codehaus/jackson/Base64Variant;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "usesPadding"    # Z
    .param p4, "paddingChar"    # C
    .param p5, "maxLineLength"    # I

    .prologue
    const/16 v4, 0x40

    const/4 v5, 0x0

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const/16 v3, 0x80

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/flurry/org/codehaus/jackson/Base64Variant;->_asciiToBase64:[I

    .line 65
    new-array v3, v4, [C

    iput-object v3, p0, Lcom/flurry/org/codehaus/jackson/Base64Variant;->_base64ToAsciiC:[C

    .line 71
    new-array v3, v4, [B

    iput-object v3, p0, Lcom/flurry/org/codehaus/jackson/Base64Variant;->_base64ToAsciiB:[B

    .line 157
    iput-object p2, p0, Lcom/flurry/org/codehaus/jackson/Base64Variant;->_name:Ljava/lang/String;

    .line 158
    iget-object v0, p1, Lcom/flurry/org/codehaus/jackson/Base64Variant;->_base64ToAsciiB:[B

    .line 159
    .local v0, "srcB":[B
    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/Base64Variant;->_base64ToAsciiB:[B

    array-length v4, v0

    invoke-static {v0, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 160
    iget-object v1, p1, Lcom/flurry/org/codehaus/jackson/Base64Variant;->_base64ToAsciiC:[C

    .line 161
    .local v1, "srcC":[C
    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/Base64Variant;->_base64ToAsciiC:[C

    array-length v4, v1

    invoke-static {v1, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 162
    iget-object v2, p1, Lcom/flurry/org/codehaus/jackson/Base64Variant;->_asciiToBase64:[I

    .line 163
    .local v2, "srcV":[I
    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/Base64Variant;->_asciiToBase64:[I

    array-length v4, v2

    invoke-static {v2, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 165
    iput-boolean p3, p0, Lcom/flurry/org/codehaus/jackson/Base64Variant;->_usesPadding:Z

    .line 166
    iput-char p4, p0, Lcom/flurry/org/codehaus/jackson/Base64Variant;->_paddingChar:C

    .line 167
    iput p5, p0, Lcom/flurry/org/codehaus/jackson/Base64Variant;->_maxLineLength:I

    .line 168
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZCI)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "base64Alphabet"    # Ljava/lang/String;
    .param p3, "usesPadding"    # Z
    .param p4, "paddingChar"    # C
    .param p5, "maxLineLength"    # I

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x40

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const/16 v3, 0x80

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/flurry/org/codehaus/jackson/Base64Variant;->_asciiToBase64:[I

    .line 65
    new-array v3, v4, [C

    iput-object v3, p0, Lcom/flurry/org/codehaus/jackson/Base64Variant;->_base64ToAsciiC:[C

    .line 71
    new-array v3, v4, [B

    iput-object v3, p0, Lcom/flurry/org/codehaus/jackson/Base64Variant;->_base64ToAsciiB:[B

    .line 112
    iput-object p1, p0, Lcom/flurry/org/codehaus/jackson/Base64Variant;->_name:Ljava/lang/String;

    .line 113
    iput-boolean p3, p0, Lcom/flurry/org/codehaus/jackson/Base64Variant;->_usesPadding:Z

    .line 114
    iput-char p4, p0, Lcom/flurry/org/codehaus/jackson/Base64Variant;->_paddingChar:C

    .line 115
    iput p5, p0, Lcom/flurry/org/codehaus/jackson/Base64Variant;->_maxLineLength:I

    .line 120
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    .line 121
    .local v1, "alphaLen":I
    if-eq v1, v4, :cond_0

    .line 122
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Base64Alphabet length must be exactly 64 (was "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 126
    :cond_0
    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/Base64Variant;->_base64ToAsciiC:[C

    invoke-virtual {p2, v5, v1, v3, v5}, Ljava/lang/String;->getChars(II[CI)V

    .line 127
    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/Base64Variant;->_asciiToBase64:[I

    const/4 v4, -0x1

    invoke-static {v3, v4}, Ljava/util/Arrays;->fill([II)V

    .line 128
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 129
    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/Base64Variant;->_base64ToAsciiC:[C

    aget-char v0, v3, v2

    .line 130
    .local v0, "alpha":C
    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/Base64Variant;->_base64ToAsciiB:[B

    int-to-byte v4, v0

    aput-byte v4, v3, v2

    .line 131
    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/Base64Variant;->_asciiToBase64:[I

    aput v2, v3, v0

    .line 128
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 135
    .end local v0    # "alpha":C
    :cond_1
    if-eqz p3, :cond_2

    .line 136
    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/Base64Variant;->_asciiToBase64:[I

    const/4 v4, -0x2

    aput v4, v3, p4

    .line 138
    :cond_2
    return-void
.end method


# virtual methods
.method public decodeBase64Byte(B)I
    .locals 2
    .param p1, "b"    # B

    .prologue
    .line 208
    move v0, p1

    .line 209
    .local v0, "ch":I
    const/16 v1, 0x7f

    if-gt v0, v1, :cond_0

    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/Base64Variant;->_asciiToBase64:[I

    aget v1, v1, v0

    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public decodeBase64Char(C)I
    .locals 2
    .param p1, "c"    # C

    .prologue
    .line 197
    move v0, p1

    .line 198
    .local v0, "ch":I
    const/16 v1, 0x7f

    if-gt v0, v1, :cond_0

    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/Base64Variant;->_asciiToBase64:[I

    aget v1, v1, v0

    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public decodeBase64Char(I)I
    .locals 1
    .param p1, "ch"    # I

    .prologue
    .line 203
    const/16 v0, 0x7f

    if-gt p1, v0, :cond_0

    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/Base64Variant;->_asciiToBase64:[I

    aget v0, v0, p1

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public encode([B)Ljava/lang/String;
    .locals 1
    .param p1, "input"    # [B

    .prologue
    .line 341
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/flurry/org/codehaus/jackson/Base64Variant;->encode([BZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public encode([BZ)Ljava/lang/String;
    .locals 12
    .param p1, "input"    # [B
    .param p2, "addQuotes"    # Z

    .prologue
    const/16 v11, 0x22

    .line 357
    array-length v2, p1

    .line 361
    .local v2, "inputEnd":I
    shr-int/lit8 v9, v2, 0x2

    add-int/2addr v9, v2

    shr-int/lit8 v10, v2, 0x3

    add-int v6, v9, v10

    .line 362
    .local v6, "outputLen":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 364
    .local v8, "sb":Ljava/lang/StringBuilder;
    if-eqz p2, :cond_0

    .line 365
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 368
    :cond_0
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/Base64Variant;->getMaxLineLength()I

    move-result v9

    shr-int/lit8 v1, v9, 0x2

    .line 371
    .local v1, "chunksBeforeLF":I
    const/4 v4, 0x0

    .line 372
    .local v4, "inputPtr":I
    add-int/lit8 v7, v2, -0x3

    .local v7, "safeInputEnd":I
    move v5, v4

    .line 374
    .end local v4    # "inputPtr":I
    .local v5, "inputPtr":I
    :goto_0
    if-gt v5, v7, :cond_2

    .line 376
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "inputPtr":I
    .restart local v4    # "inputPtr":I
    aget-byte v9, p1, v5

    shl-int/lit8 v0, v9, 0x8

    .line 377
    .local v0, "b24":I
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "inputPtr":I
    .restart local v5    # "inputPtr":I
    aget-byte v9, p1, v4

    and-int/lit16 v9, v9, 0xff

    or-int/2addr v0, v9

    .line 378
    shl-int/lit8 v9, v0, 0x8

    add-int/lit8 v4, v5, 0x1

    .end local v5    # "inputPtr":I
    .restart local v4    # "inputPtr":I
    aget-byte v10, p1, v5

    and-int/lit16 v10, v10, 0xff

    or-int v0, v9, v10

    .line 379
    invoke-virtual {p0, v8, v0}, Lcom/flurry/org/codehaus/jackson/Base64Variant;->encodeBase64Chunk(Ljava/lang/StringBuilder;I)V

    .line 380
    add-int/lit8 v1, v1, -0x1

    if-gtz v1, :cond_1

    .line 382
    const/16 v9, 0x5c

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 383
    const/16 v9, 0x6e

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 384
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/Base64Variant;->getMaxLineLength()I

    move-result v9

    shr-int/lit8 v1, v9, 0x2

    :cond_1
    move v5, v4

    .line 386
    .end local v4    # "inputPtr":I
    .restart local v5    # "inputPtr":I
    goto :goto_0

    .line 389
    .end local v0    # "b24":I
    :cond_2
    sub-int v3, v2, v5

    .line 390
    .local v3, "inputLeft":I
    if-lez v3, :cond_5

    .line 391
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "inputPtr":I
    .restart local v4    # "inputPtr":I
    aget-byte v9, p1, v5

    shl-int/lit8 v0, v9, 0x10

    .line 392
    .restart local v0    # "b24":I
    const/4 v9, 0x2

    if-ne v3, v9, :cond_3

    .line 393
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "inputPtr":I
    .restart local v5    # "inputPtr":I
    aget-byte v9, p1, v4

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x8

    or-int/2addr v0, v9

    move v4, v5

    .line 395
    .end local v5    # "inputPtr":I
    .restart local v4    # "inputPtr":I
    :cond_3
    invoke-virtual {p0, v8, v0, v3}, Lcom/flurry/org/codehaus/jackson/Base64Variant;->encodeBase64Partial(Ljava/lang/StringBuilder;II)V

    .line 398
    .end local v0    # "b24":I
    :goto_1
    if-eqz p2, :cond_4

    .line 399
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 401
    :cond_4
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    return-object v9

    .end local v4    # "inputPtr":I
    .restart local v5    # "inputPtr":I
    :cond_5
    move v4, v5

    .end local v5    # "inputPtr":I
    .restart local v4    # "inputPtr":I
    goto :goto_1
.end method

.method public encodeBase64BitsAsByte(I)B
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 289
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/Base64Variant;->_base64ToAsciiB:[B

    aget-byte v0, v0, p1

    return v0
.end method

.method public encodeBase64BitsAsChar(I)C
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 223
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/Base64Variant;->_base64ToAsciiC:[C

    aget-char v0, v0, p1

    return v0
.end method

.method public encodeBase64Chunk(I[BI)I
    .locals 3
    .param p1, "b24"    # I
    .param p2, "buffer"    # [B
    .param p3, "ptr"    # I

    .prologue
    .line 298
    add-int/lit8 v0, p3, 0x1

    .end local p3    # "ptr":I
    .local v0, "ptr":I
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/Base64Variant;->_base64ToAsciiB:[B

    shr-int/lit8 v2, p1, 0x12

    and-int/lit8 v2, v2, 0x3f

    aget-byte v1, v1, v2

    aput-byte v1, p2, p3

    .line 299
    add-int/lit8 p3, v0, 0x1

    .end local v0    # "ptr":I
    .restart local p3    # "ptr":I
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/Base64Variant;->_base64ToAsciiB:[B

    shr-int/lit8 v2, p1, 0xc

    and-int/lit8 v2, v2, 0x3f

    aget-byte v1, v1, v2

    aput-byte v1, p2, v0

    .line 300
    add-int/lit8 v0, p3, 0x1

    .end local p3    # "ptr":I
    .restart local v0    # "ptr":I
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/Base64Variant;->_base64ToAsciiB:[B

    shr-int/lit8 v2, p1, 0x6

    and-int/lit8 v2, v2, 0x3f

    aget-byte v1, v1, v2

    aput-byte v1, p2, p3

    .line 301
    add-int/lit8 p3, v0, 0x1

    .end local v0    # "ptr":I
    .restart local p3    # "ptr":I
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/Base64Variant;->_base64ToAsciiB:[B

    and-int/lit8 v2, p1, 0x3f

    aget-byte v1, v1, v2

    aput-byte v1, p2, v0

    .line 302
    return p3
.end method

.method public encodeBase64Chunk(I[CI)I
    .locals 3
    .param p1, "b24"    # I
    .param p2, "buffer"    # [C
    .param p3, "ptr"    # I

    .prologue
    .line 232
    add-int/lit8 v0, p3, 0x1

    .end local p3    # "ptr":I
    .local v0, "ptr":I
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/Base64Variant;->_base64ToAsciiC:[C

    shr-int/lit8 v2, p1, 0x12

    and-int/lit8 v2, v2, 0x3f

    aget-char v1, v1, v2

    aput-char v1, p2, p3

    .line 233
    add-int/lit8 p3, v0, 0x1

    .end local v0    # "ptr":I
    .restart local p3    # "ptr":I
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/Base64Variant;->_base64ToAsciiC:[C

    shr-int/lit8 v2, p1, 0xc

    and-int/lit8 v2, v2, 0x3f

    aget-char v1, v1, v2

    aput-char v1, p2, v0

    .line 234
    add-int/lit8 v0, p3, 0x1

    .end local p3    # "ptr":I
    .restart local v0    # "ptr":I
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/Base64Variant;->_base64ToAsciiC:[C

    shr-int/lit8 v2, p1, 0x6

    and-int/lit8 v2, v2, 0x3f

    aget-char v1, v1, v2

    aput-char v1, p2, p3

    .line 235
    add-int/lit8 p3, v0, 0x1

    .end local v0    # "ptr":I
    .restart local p3    # "ptr":I
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/Base64Variant;->_base64ToAsciiC:[C

    and-int/lit8 v2, p1, 0x3f

    aget-char v1, v1, v2

    aput-char v1, p2, v0

    .line 236
    return p3
.end method

.method public encodeBase64Chunk(Ljava/lang/StringBuilder;I)V
    .locals 2
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "b24"    # I

    .prologue
    .line 241
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/Base64Variant;->_base64ToAsciiC:[C

    shr-int/lit8 v1, p2, 0x12

    and-int/lit8 v1, v1, 0x3f

    aget-char v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 242
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/Base64Variant;->_base64ToAsciiC:[C

    shr-int/lit8 v1, p2, 0xc

    and-int/lit8 v1, v1, 0x3f

    aget-char v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 243
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/Base64Variant;->_base64ToAsciiC:[C

    shr-int/lit8 v1, p2, 0x6

    and-int/lit8 v1, v1, 0x3f

    aget-char v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 244
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/Base64Variant;->_base64ToAsciiC:[C

    and-int/lit8 v1, p2, 0x3f

    aget-char v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 245
    return-void
.end method

.method public encodeBase64Partial(II[BI)I
    .locals 5
    .param p1, "bits"    # I
    .param p2, "outputBytes"    # I
    .param p3, "buffer"    # [B
    .param p4, "outPtr"    # I

    .prologue
    const/4 v4, 0x2

    .line 315
    add-int/lit8 v0, p4, 0x1

    .end local p4    # "outPtr":I
    .local v0, "outPtr":I
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/Base64Variant;->_base64ToAsciiB:[B

    shr-int/lit8 v3, p1, 0x12

    and-int/lit8 v3, v3, 0x3f

    aget-byte v2, v2, v3

    aput-byte v2, p3, p4

    .line 316
    add-int/lit8 p4, v0, 0x1

    .end local v0    # "outPtr":I
    .restart local p4    # "outPtr":I
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/Base64Variant;->_base64ToAsciiB:[B

    shr-int/lit8 v3, p1, 0xc

    and-int/lit8 v3, v3, 0x3f

    aget-byte v2, v2, v3

    aput-byte v2, p3, v0

    .line 317
    iget-boolean v2, p0, Lcom/flurry/org/codehaus/jackson/Base64Variant;->_usesPadding:Z

    if-eqz v2, :cond_2

    .line 318
    iget-char v2, p0, Lcom/flurry/org/codehaus/jackson/Base64Variant;->_paddingChar:C

    int-to-byte v1, v2

    .line 319
    .local v1, "pb":B
    add-int/lit8 v0, p4, 0x1

    .end local p4    # "outPtr":I
    .restart local v0    # "outPtr":I
    if-ne p2, v4, :cond_1

    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/Base64Variant;->_base64ToAsciiB:[B

    shr-int/lit8 v3, p1, 0x6

    and-int/lit8 v3, v3, 0x3f

    aget-byte v2, v2, v3

    :goto_0
    aput-byte v2, p3, p4

    .line 321
    add-int/lit8 p4, v0, 0x1

    .end local v0    # "outPtr":I
    .restart local p4    # "outPtr":I
    aput-byte v1, p3, v0

    .line 327
    .end local v1    # "pb":B
    :cond_0
    :goto_1
    return p4

    .end local p4    # "outPtr":I
    .restart local v0    # "outPtr":I
    .restart local v1    # "pb":B
    :cond_1
    move v2, v1

    .line 319
    goto :goto_0

    .line 323
    .end local v0    # "outPtr":I
    .end local v1    # "pb":B
    .restart local p4    # "outPtr":I
    :cond_2
    if-ne p2, v4, :cond_0

    .line 324
    add-int/lit8 v0, p4, 0x1

    .end local p4    # "outPtr":I
    .restart local v0    # "outPtr":I
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/Base64Variant;->_base64ToAsciiB:[B

    shr-int/lit8 v3, p1, 0x6

    and-int/lit8 v3, v3, 0x3f

    aget-byte v2, v2, v3

    aput-byte v2, p3, p4

    move p4, v0

    .end local v0    # "outPtr":I
    .restart local p4    # "outPtr":I
    goto :goto_1
.end method

.method public encodeBase64Partial(II[CI)I
    .locals 4
    .param p1, "bits"    # I
    .param p2, "outputBytes"    # I
    .param p3, "buffer"    # [C
    .param p4, "outPtr"    # I

    .prologue
    const/4 v3, 0x2

    .line 257
    add-int/lit8 v0, p4, 0x1

    .end local p4    # "outPtr":I
    .local v0, "outPtr":I
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/Base64Variant;->_base64ToAsciiC:[C

    shr-int/lit8 v2, p1, 0x12

    and-int/lit8 v2, v2, 0x3f

    aget-char v1, v1, v2

    aput-char v1, p3, p4

    .line 258
    add-int/lit8 p4, v0, 0x1

    .end local v0    # "outPtr":I
    .restart local p4    # "outPtr":I
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/Base64Variant;->_base64ToAsciiC:[C

    shr-int/lit8 v2, p1, 0xc

    and-int/lit8 v2, v2, 0x3f

    aget-char v1, v1, v2

    aput-char v1, p3, v0

    .line 259
    iget-boolean v1, p0, Lcom/flurry/org/codehaus/jackson/Base64Variant;->_usesPadding:Z

    if-eqz v1, :cond_2

    .line 260
    add-int/lit8 v0, p4, 0x1

    .end local p4    # "outPtr":I
    .restart local v0    # "outPtr":I
    if-ne p2, v3, :cond_1

    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/Base64Variant;->_base64ToAsciiC:[C

    shr-int/lit8 v2, p1, 0x6

    and-int/lit8 v2, v2, 0x3f

    aget-char v1, v1, v2

    :goto_0
    aput-char v1, p3, p4

    .line 262
    add-int/lit8 p4, v0, 0x1

    .end local v0    # "outPtr":I
    .restart local p4    # "outPtr":I
    iget-char v1, p0, Lcom/flurry/org/codehaus/jackson/Base64Variant;->_paddingChar:C

    aput-char v1, p3, v0

    .line 268
    :cond_0
    :goto_1
    return p4

    .line 260
    .end local p4    # "outPtr":I
    .restart local v0    # "outPtr":I
    :cond_1
    iget-char v1, p0, Lcom/flurry/org/codehaus/jackson/Base64Variant;->_paddingChar:C

    goto :goto_0

    .line 264
    .end local v0    # "outPtr":I
    .restart local p4    # "outPtr":I
    :cond_2
    if-ne p2, v3, :cond_0

    .line 265
    add-int/lit8 v0, p4, 0x1

    .end local p4    # "outPtr":I
    .restart local v0    # "outPtr":I
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/Base64Variant;->_base64ToAsciiC:[C

    shr-int/lit8 v2, p1, 0x6

    and-int/lit8 v2, v2, 0x3f

    aget-char v1, v1, v2

    aput-char v1, p3, p4

    move p4, v0

    .end local v0    # "outPtr":I
    .restart local p4    # "outPtr":I
    goto :goto_1
.end method

.method public encodeBase64Partial(Ljava/lang/StringBuilder;II)V
    .locals 3
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "bits"    # I
    .param p3, "outputBytes"    # I

    .prologue
    const/4 v2, 0x2

    .line 273
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/Base64Variant;->_base64ToAsciiC:[C

    shr-int/lit8 v1, p2, 0x12

    and-int/lit8 v1, v1, 0x3f

    aget-char v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 274
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/Base64Variant;->_base64ToAsciiC:[C

    shr-int/lit8 v1, p2, 0xc

    and-int/lit8 v1, v1, 0x3f

    aget-char v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 275
    iget-boolean v0, p0, Lcom/flurry/org/codehaus/jackson/Base64Variant;->_usesPadding:Z

    if-eqz v0, :cond_2

    .line 276
    if-ne p3, v2, :cond_1

    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/Base64Variant;->_base64ToAsciiC:[C

    shr-int/lit8 v1, p2, 0x6

    and-int/lit8 v1, v1, 0x3f

    aget-char v0, v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 278
    iget-char v0, p0, Lcom/flurry/org/codehaus/jackson/Base64Variant;->_paddingChar:C

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 284
    :cond_0
    :goto_1
    return-void

    .line 276
    :cond_1
    iget-char v0, p0, Lcom/flurry/org/codehaus/jackson/Base64Variant;->_paddingChar:C

    goto :goto_0

    .line 280
    :cond_2
    if-ne p3, v2, :cond_0

    .line 281
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/Base64Variant;->_base64ToAsciiC:[C

    shr-int/lit8 v1, p2, 0x6

    and-int/lit8 v1, v1, 0x3f

    aget-char v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public getMaxLineLength()I
    .locals 1

    .prologue
    .line 184
    iget v0, p0, Lcom/flurry/org/codehaus/jackson/Base64Variant;->_maxLineLength:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/Base64Variant;->_name:Ljava/lang/String;

    return-object v0
.end method

.method public getPaddingByte()B
    .locals 1

    .prologue
    .line 182
    iget-char v0, p0, Lcom/flurry/org/codehaus/jackson/Base64Variant;->_paddingChar:C

    int-to-byte v0, v0

    return v0
.end method

.method public getPaddingChar()C
    .locals 1

    .prologue
    .line 181
    iget-char v0, p0, Lcom/flurry/org/codehaus/jackson/Base64Variant;->_paddingChar:C

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 411
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/Base64Variant;->_name:Ljava/lang/String;

    return-object v0
.end method

.method public usesPadding()Z
    .locals 1

    .prologue
    .line 178
    iget-boolean v0, p0, Lcom/flurry/org/codehaus/jackson/Base64Variant;->_usesPadding:Z

    return v0
.end method

.method public usesPaddingChar(C)Z
    .locals 1
    .param p1, "c"    # C

    .prologue
    .line 179
    iget-char v0, p0, Lcom/flurry/org/codehaus/jackson/Base64Variant;->_paddingChar:C

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public usesPaddingChar(I)Z
    .locals 1
    .param p1, "ch"    # I

    .prologue
    .line 180
    iget-char v0, p0, Lcom/flurry/org/codehaus/jackson/Base64Variant;->_paddingChar:C

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
