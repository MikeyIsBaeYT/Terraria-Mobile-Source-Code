.class Lnet/hockeyapp/android/utils/Base64$Decoder;
.super Lnet/hockeyapp/android/utils/Base64$Coder;
.source "Base64.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/hockeyapp/android/utils/Base64;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Decoder"
.end annotation


# static fields
.field private static final DECODE:[I

.field private static final DECODE_WEBSAFE:[I

.field private static final EQUALS:I = -0x2

.field private static final SKIP:I = -0x1


# instance fields
.field private final alphabet:[I

.field private state:I

.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x100

    .line 180
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lnet/hockeyapp/android/utils/Base64$Decoder;->DECODE:[I

    .line 203
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lnet/hockeyapp/android/utils/Base64$Decoder;->DECODE_WEBSAFE:[I

    return-void

    .line 180
    nop

    :array_0
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x3e
        -0x1
        -0x1
        -0x1
        0x3f
        0x34
        0x35
        0x36
        0x37
        0x38
        0x39
        0x3a
        0x3b
        0x3c
        0x3d
        -0x1
        -0x1
        -0x1
        -0x2
        -0x1
        -0x1
        -0x1
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
        0x14
        0x15
        0x16
        0x17
        0x18
        0x19
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x1a
        0x1b
        0x1c
        0x1d
        0x1e
        0x1f
        0x20
        0x21
        0x22
        0x23
        0x24
        0x25
        0x26
        0x27
        0x28
        0x29
        0x2a
        0x2b
        0x2c
        0x2d
        0x2e
        0x2f
        0x30
        0x31
        0x32
        0x33
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    .line 203
    :array_1
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x3e
        -0x1
        -0x1
        0x34
        0x35
        0x36
        0x37
        0x38
        0x39
        0x3a
        0x3b
        0x3c
        0x3d
        -0x1
        -0x1
        -0x1
        -0x2
        -0x1
        -0x1
        -0x1
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
        0x14
        0x15
        0x16
        0x17
        0x18
        0x19
        -0x1
        -0x1
        -0x1
        -0x1
        0x3f
        -0x1
        0x1a
        0x1b
        0x1c
        0x1d
        0x1e
        0x1f
        0x20
        0x21
        0x22
        0x23
        0x24
        0x25
        0x26
        0x27
        0x28
        0x29
        0x2a
        0x2b
        0x2c
        0x2d
        0x2e
        0x2f
        0x30
        0x31
        0x32
        0x33
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method public constructor <init>(I[B)V
    .locals 2
    .param p1, "flags"    # I
    .param p2, "output"    # [B

    .prologue
    const/4 v1, 0x0

    .line 240
    invoke-direct {p0}, Lnet/hockeyapp/android/utils/Base64$Coder;-><init>()V

    .line 241
    iput-object p2, p0, Lnet/hockeyapp/android/utils/Base64$Decoder;->output:[B

    .line 243
    and-int/lit8 v0, p1, 0x8

    if-nez v0, :cond_0

    sget-object v0, Lnet/hockeyapp/android/utils/Base64$Decoder;->DECODE:[I

    :goto_0
    iput-object v0, p0, Lnet/hockeyapp/android/utils/Base64$Decoder;->alphabet:[I

    .line 244
    iput v1, p0, Lnet/hockeyapp/android/utils/Base64$Decoder;->state:I

    .line 245
    iput v1, p0, Lnet/hockeyapp/android/utils/Base64$Decoder;->value:I

    .line 246
    return-void

    .line 243
    :cond_0
    sget-object v0, Lnet/hockeyapp/android/utils/Base64$Decoder;->DECODE_WEBSAFE:[I

    goto :goto_0
.end method


# virtual methods
.method public maxOutputSize(I)I
    .locals 1
    .param p1, "len"    # I

    .prologue
    .line 253
    mul-int/lit8 v0, p1, 0x3

    div-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0xa

    return v0
.end method

.method public process([BIIZ)Z
    .locals 11
    .param p1, "input"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .param p4, "finish"    # Z

    .prologue
    .line 263
    iget v9, p0, Lnet/hockeyapp/android/utils/Base64$Decoder;->state:I

    const/4 v10, 0x6

    if-ne v9, v10, :cond_0

    const/4 v9, 0x0

    .line 436
    :goto_0
    return v9

    .line 265
    :cond_0
    move v5, p2

    .line 266
    .local v5, "p":I
    add-int/2addr p3, p2

    .line 273
    iget v7, p0, Lnet/hockeyapp/android/utils/Base64$Decoder;->state:I

    .line 274
    .local v7, "state":I
    iget v8, p0, Lnet/hockeyapp/android/utils/Base64$Decoder;->value:I

    .line 275
    .local v8, "value":I
    const/4 v2, 0x0

    .line 276
    .local v2, "op":I
    iget-object v4, p0, Lnet/hockeyapp/android/utils/Base64$Decoder;->output:[B

    .line 277
    .local v4, "output":[B
    iget-object v0, p0, Lnet/hockeyapp/android/utils/Base64$Decoder;->alphabet:[I

    .line 279
    .local v0, "alphabet":[I
    :goto_1
    if-ge v5, p3, :cond_c

    .line 294
    if-nez v7, :cond_2

    .line 295
    :goto_2
    add-int/lit8 v9, v5, 0x4

    if-gt v9, p3, :cond_1

    aget-byte v9, p1, v5

    and-int/lit16 v9, v9, 0xff

    aget v9, v0, v9

    shl-int/lit8 v9, v9, 0x12

    add-int/lit8 v10, v5, 0x1

    aget-byte v10, p1, v10

    and-int/lit16 v10, v10, 0xff

    aget v10, v0, v10

    shl-int/lit8 v10, v10, 0xc

    or-int/2addr v9, v10

    add-int/lit8 v10, v5, 0x2

    aget-byte v10, p1, v10

    and-int/lit16 v10, v10, 0xff

    aget v10, v0, v10

    shl-int/lit8 v10, v10, 0x6

    or-int/2addr v9, v10

    add-int/lit8 v10, v5, 0x3

    aget-byte v10, p1, v10

    and-int/lit16 v10, v10, 0xff

    aget v10, v0, v10

    or-int v8, v9, v10

    if-ltz v8, :cond_1

    .line 300
    add-int/lit8 v9, v2, 0x2

    int-to-byte v10, v8

    aput-byte v10, v4, v9

    .line 301
    add-int/lit8 v9, v2, 0x1

    shr-int/lit8 v10, v8, 0x8

    int-to-byte v10, v10

    aput-byte v10, v4, v9

    .line 302
    shr-int/lit8 v9, v8, 0x10

    int-to-byte v9, v9

    aput-byte v9, v4, v2

    .line 303
    add-int/lit8 v2, v2, 0x3

    .line 304
    add-int/lit8 v5, v5, 0x4

    goto :goto_2

    .line 306
    :cond_1
    if-lt v5, p3, :cond_2

    move v3, v2

    .line 392
    .end local v2    # "op":I
    .local v3, "op":I
    :goto_3
    if-nez p4, :cond_b

    .line 395
    iput v7, p0, Lnet/hockeyapp/android/utils/Base64$Decoder;->state:I

    .line 396
    iput v8, p0, Lnet/hockeyapp/android/utils/Base64$Decoder;->value:I

    .line 397
    iput v3, p0, Lnet/hockeyapp/android/utils/Base64$Decoder;->op:I

    .line 398
    const/4 v9, 0x1

    goto :goto_0

    .line 314
    .end local v3    # "op":I
    .restart local v2    # "op":I
    :cond_2
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "p":I
    .local v6, "p":I
    aget-byte v9, p1, v5

    and-int/lit16 v9, v9, 0xff

    aget v1, v0, v9

    .line 316
    .local v1, "d":I
    packed-switch v7, :pswitch_data_0

    :cond_3
    :goto_4
    move v5, v6

    .line 390
    .end local v6    # "p":I
    .restart local v5    # "p":I
    goto :goto_1

    .line 318
    .end local v5    # "p":I
    .restart local v6    # "p":I
    :pswitch_0
    if-ltz v1, :cond_4

    .line 319
    move v8, v1

    .line 320
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 321
    :cond_4
    const/4 v9, -0x1

    if-eq v1, v9, :cond_3

    .line 322
    const/4 v9, 0x6

    iput v9, p0, Lnet/hockeyapp/android/utils/Base64$Decoder;->state:I

    .line 323
    const/4 v9, 0x0

    goto :goto_0

    .line 328
    :pswitch_1
    if-ltz v1, :cond_5

    .line 329
    shl-int/lit8 v9, v8, 0x6

    or-int v8, v9, v1

    .line 330
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 331
    :cond_5
    const/4 v9, -0x1

    if-eq v1, v9, :cond_3

    .line 332
    const/4 v9, 0x6

    iput v9, p0, Lnet/hockeyapp/android/utils/Base64$Decoder;->state:I

    .line 333
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 338
    :pswitch_2
    if-ltz v1, :cond_6

    .line 339
    shl-int/lit8 v9, v8, 0x6

    or-int v8, v9, v1

    .line 340
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 341
    :cond_6
    const/4 v9, -0x2

    if-ne v1, v9, :cond_7

    .line 344
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "op":I
    .restart local v3    # "op":I
    shr-int/lit8 v9, v8, 0x4

    int-to-byte v9, v9

    aput-byte v9, v4, v2

    .line 345
    const/4 v7, 0x4

    move v2, v3

    .end local v3    # "op":I
    .restart local v2    # "op":I
    goto :goto_4

    .line 346
    :cond_7
    const/4 v9, -0x1

    if-eq v1, v9, :cond_3

    .line 347
    const/4 v9, 0x6

    iput v9, p0, Lnet/hockeyapp/android/utils/Base64$Decoder;->state:I

    .line 348
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 353
    :pswitch_3
    if-ltz v1, :cond_8

    .line 355
    shl-int/lit8 v9, v8, 0x6

    or-int v8, v9, v1

    .line 356
    add-int/lit8 v9, v2, 0x2

    int-to-byte v10, v8

    aput-byte v10, v4, v9

    .line 357
    add-int/lit8 v9, v2, 0x1

    shr-int/lit8 v10, v8, 0x8

    int-to-byte v10, v10

    aput-byte v10, v4, v9

    .line 358
    shr-int/lit8 v9, v8, 0x10

    int-to-byte v9, v9

    aput-byte v9, v4, v2

    .line 359
    add-int/lit8 v2, v2, 0x3

    .line 360
    const/4 v7, 0x0

    goto :goto_4

    .line 361
    :cond_8
    const/4 v9, -0x2

    if-ne v1, v9, :cond_9

    .line 364
    add-int/lit8 v9, v2, 0x1

    shr-int/lit8 v10, v8, 0x2

    int-to-byte v10, v10

    aput-byte v10, v4, v9

    .line 365
    shr-int/lit8 v9, v8, 0xa

    int-to-byte v9, v9

    aput-byte v9, v4, v2

    .line 366
    add-int/lit8 v2, v2, 0x2

    .line 367
    const/4 v7, 0x5

    goto :goto_4

    .line 368
    :cond_9
    const/4 v9, -0x1

    if-eq v1, v9, :cond_3

    .line 369
    const/4 v9, 0x6

    iput v9, p0, Lnet/hockeyapp/android/utils/Base64$Decoder;->state:I

    .line 370
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 375
    :pswitch_4
    const/4 v9, -0x2

    if-ne v1, v9, :cond_a

    .line 376
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 377
    :cond_a
    const/4 v9, -0x1

    if-eq v1, v9, :cond_3

    .line 378
    const/4 v9, 0x6

    iput v9, p0, Lnet/hockeyapp/android/utils/Base64$Decoder;->state:I

    .line 379
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 384
    :pswitch_5
    const/4 v9, -0x1

    if-eq v1, v9, :cond_3

    .line 385
    const/4 v9, 0x6

    iput v9, p0, Lnet/hockeyapp/android/utils/Base64$Decoder;->state:I

    .line 386
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 404
    .end local v1    # "d":I
    .end local v2    # "op":I
    .end local v6    # "p":I
    .restart local v3    # "op":I
    .restart local v5    # "p":I
    :cond_b
    packed-switch v7, :pswitch_data_1

    move v2, v3

    .line 434
    .end local v3    # "op":I
    .restart local v2    # "op":I
    :goto_5
    iput v7, p0, Lnet/hockeyapp/android/utils/Base64$Decoder;->state:I

    .line 435
    iput v2, p0, Lnet/hockeyapp/android/utils/Base64$Decoder;->op:I

    .line 436
    const/4 v9, 0x1

    goto/16 :goto_0

    .end local v2    # "op":I
    .restart local v3    # "op":I
    :pswitch_6
    move v2, v3

    .line 407
    .end local v3    # "op":I
    .restart local v2    # "op":I
    goto :goto_5

    .line 411
    .end local v2    # "op":I
    .restart local v3    # "op":I
    :pswitch_7
    const/4 v9, 0x6

    iput v9, p0, Lnet/hockeyapp/android/utils/Base64$Decoder;->state:I

    .line 412
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 416
    :pswitch_8
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "op":I
    .restart local v2    # "op":I
    shr-int/lit8 v9, v8, 0x4

    int-to-byte v9, v9

    aput-byte v9, v4, v3

    goto :goto_5

    .line 421
    .end local v2    # "op":I
    .restart local v3    # "op":I
    :pswitch_9
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "op":I
    .restart local v2    # "op":I
    shr-int/lit8 v9, v8, 0xa

    int-to-byte v9, v9

    aput-byte v9, v4, v3

    .line 422
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "op":I
    .restart local v3    # "op":I
    shr-int/lit8 v9, v8, 0x2

    int-to-byte v9, v9

    aput-byte v9, v4, v2

    move v2, v3

    .line 423
    .end local v3    # "op":I
    .restart local v2    # "op":I
    goto :goto_5

    .line 426
    .end local v2    # "op":I
    .restart local v3    # "op":I
    :pswitch_a
    const/4 v9, 0x6

    iput v9, p0, Lnet/hockeyapp/android/utils/Base64$Decoder;->state:I

    .line 427
    const/4 v9, 0x0

    goto/16 :goto_0

    .end local v3    # "op":I
    .restart local v2    # "op":I
    :cond_c
    move v3, v2

    .end local v2    # "op":I
    .restart local v3    # "op":I
    goto/16 :goto_3

    .line 316
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 404
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method
