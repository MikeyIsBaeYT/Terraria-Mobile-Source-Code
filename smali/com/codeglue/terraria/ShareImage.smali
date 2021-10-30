.class Lcom/codeglue/terraria/ShareImage;
.super Ljava/lang/Thread;
.source "ShareImage.java"


# static fields
.field public static final ACTION_ID:I = 0x4f79d


# instance fields
.field private connector:Lcom/codeglue/terraria/ShareImageConnector;

.field private convertRGBAtoARGB:Z

.field private flipHorizontal:Z

.field private imageBuffer:[I

.field private imageHeight:I

.field private imageWidth:I


# direct methods
.method constructor <init>([IIIZZ)V
    .locals 2
    .param p1, "inImageBuffer"    # [I
    .param p2, "inWidth"    # I
    .param p3, "inHeight"    # I
    .param p4, "inFlipHorizontal"    # Z
    .param p5, "inConvertRGBAtoARGB"    # Z

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 61
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 53
    iput-object v1, p0, Lcom/codeglue/terraria/ShareImage;->imageBuffer:[I

    .line 54
    iput v0, p0, Lcom/codeglue/terraria/ShareImage;->imageWidth:I

    .line 55
    iput v0, p0, Lcom/codeglue/terraria/ShareImage;->imageHeight:I

    .line 56
    iput-boolean v0, p0, Lcom/codeglue/terraria/ShareImage;->flipHorizontal:Z

    .line 57
    iput-boolean v0, p0, Lcom/codeglue/terraria/ShareImage;->convertRGBAtoARGB:Z

    .line 58
    iput-object v1, p0, Lcom/codeglue/terraria/ShareImage;->connector:Lcom/codeglue/terraria/ShareImageConnector;

    .line 62
    iput p2, p0, Lcom/codeglue/terraria/ShareImage;->imageWidth:I

    .line 63
    iput p3, p0, Lcom/codeglue/terraria/ShareImage;->imageHeight:I

    .line 64
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/codeglue/terraria/ShareImage;->imageBuffer:[I

    .line 65
    iput-boolean p4, p0, Lcom/codeglue/terraria/ShareImage;->flipHorizontal:Z

    .line 66
    iput-boolean p5, p0, Lcom/codeglue/terraria/ShareImage;->convertRGBAtoARGB:Z

    .line 68
    invoke-virtual {p0}, Lcom/codeglue/terraria/ShareImage;->run()V

    .line 70
    return-void
.end method

.method private ConvertRGBAtoARGB(I)I
    .locals 6
    .param p1, "inColor"    # I

    .prologue
    .line 202
    shr-int/lit8 v4, p1, 0x0

    and-int/lit16 v3, v4, 0xff

    .line 203
    .local v3, "r":I
    shr-int/lit8 v4, p1, 0x8

    and-int/lit16 v2, v4, 0xff

    .line 204
    .local v2, "g":I
    shr-int/lit8 v4, p1, 0x10

    and-int/lit16 v1, v4, 0xff

    .line 205
    .local v1, "b":I
    shr-int/lit8 v4, p1, 0x18

    and-int/lit16 v0, v4, 0xff

    .line 206
    .local v0, "a":I
    shl-int/lit8 v4, v2, 0x8

    or-int/2addr v4, v1

    shl-int/lit8 v5, v3, 0x10

    or-int/2addr v4, v5

    shl-int/lit8 v5, v0, 0x18

    or-int/2addr v4, v5

    return v4
.end method

.method private CreateImageURI()Landroid/net/Uri;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 123
    const/4 v1, 0x0

    .line 127
    .local v1, "uri":Landroid/net/Uri;
    :try_start_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 128
    .local v2, "values":Landroid/content/ContentValues;
    const-string v4, "mime_type"

    const-string v5, "image/jpeg"

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 132
    :try_start_1
    sget-object v4, Lcom/codeglue/terraria/OctarineBridge;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    move-object v3, v1

    .line 147
    .end local v2    # "values":Landroid/content/ContentValues;
    :goto_0
    return-object v3

    .line 134
    .restart local v2    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v0

    .line 136
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v4, "Screenshot error: Can\'t write to external media storage."

    invoke-static {v4}, Lcom/codeglue/terraria/OctarineBridge;->nativePrint(Ljava/lang/String;)V

    .line 137
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 141
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "values":Landroid/content/ContentValues;
    :catch_1
    move-exception v0

    .line 143
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private SaveBitmapURI(Landroid/graphics/Bitmap;Landroid/net/Uri;I)Z
    .locals 4
    .param p1, "inBitmap"    # Landroid/graphics/Bitmap;
    .param p2, "inUri"    # Landroid/net/Uri;
    .param p3, "inQuality"    # I

    .prologue
    const/4 v2, 0x0

    .line 153
    if-nez p2, :cond_0

    .line 168
    :goto_0
    return v2

    .line 158
    :cond_0
    :try_start_0
    sget-object v3, Lcom/codeglue/terraria/OctarineBridge;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v1

    .line 159
    .local v1, "os":Ljava/io/OutputStream;
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p1, v3, p3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 160
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    const/4 v2, 0x1

    goto :goto_0

    .line 162
    .end local v1    # "os":Ljava/io/OutputStream;
    :catch_0
    move-exception v0

    .line 164
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private ShareBitmap(Landroid/graphics/Bitmap;)V
    .locals 5
    .param p1, "inBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 174
    invoke-direct {p0}, Lcom/codeglue/terraria/ShareImage;->CreateImageURI()Landroid/net/Uri;

    move-result-object v2

    .line 176
    .local v2, "uri":Landroid/net/Uri;
    if-nez v2, :cond_1

    .line 197
    :cond_0
    :goto_0
    return-void

    .line 179
    :cond_1
    const/16 v3, 0x64

    invoke-direct {p0, p1, v2, v3}, Lcom/codeglue/terraria/ShareImage;->SaveBitmapURI(Landroid/graphics/Bitmap;Landroid/net/Uri;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 183
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.SEND"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 184
    .local v1, "sharingIntent":Landroid/content/Intent;
    const-string v3, "image/jpeg"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 185
    const-string v3, "android.intent.extra.STREAM"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 186
    const/high16 v3, 0x10020000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 190
    :try_start_0
    sget-object v3, Lcom/codeglue/terraria/OctarineBridge;->activity:Lcom/codeglue/terraria/OctarineActivity;

    const-string v4, "Share via"

    invoke-static {v1, v4}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/codeglue/terraria/OctarineActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 192
    :catch_0
    move-exception v0

    .line 194
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "Cannot start screenshot share intent!"

    invoke-static {v3}, Lcom/codeglue/terraria/OctarineBridge;->nativePrint(Ljava/lang/String;)V

    .line 195
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method CreateBitmap([IIIZZ)Landroid/graphics/Bitmap;
    .locals 12
    .param p1, "inImageBuffer"    # [I
    .param p2, "inWidth"    # I
    .param p3, "inHeight"    # I
    .param p4, "inFlipHorizontal"    # Z
    .param p5, "inConvertRGBAtoARGB"    # Z

    .prologue
    .line 82
    const/4 v10, 0x1

    move/from16 v0, p4

    if-ne v0, v10, :cond_1

    .line 84
    const/4 v8, 0x0

    .local v8, "y":I
    shr-int/lit8 v9, p3, 0x1

    .local v9, "yn":I
    :goto_0
    if-ge v8, v9, :cond_1

    .line 86
    const/4 v7, 0x0

    .local v7, "x":I
    :goto_1
    if-ge v7, p2, :cond_0

    .line 88
    mul-int v10, v8, p2

    add-int v5, v10, v7

    .line 89
    .local v5, "idx0":I
    sub-int v10, p3, v8

    add-int/lit8 v10, v10, -0x1

    mul-int/2addr v10, p2

    add-int v6, v10, v7

    .line 91
    .local v6, "idx1":I
    aget v2, p1, v5

    .line 92
    .local v2, "c0":I
    aget v3, p1, v6

    .line 94
    .local v3, "c1":I
    aput v3, p1, v5

    .line 95
    aput v2, p1, v6

    .line 86
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 84
    .end local v2    # "c0":I
    .end local v3    # "c1":I
    .end local v5    # "idx0":I
    .end local v6    # "idx1":I
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 102
    .end local v7    # "x":I
    .end local v8    # "y":I
    .end local v9    # "yn":I
    :cond_1
    const/4 v10, 0x1

    move/from16 v0, p5

    if-ne v0, v10, :cond_3

    .line 104
    const/4 v8, 0x0

    .restart local v8    # "y":I
    move v9, p3

    .restart local v9    # "yn":I
    :goto_2
    if-ge v8, v9, :cond_3

    .line 106
    const/4 v7, 0x0

    .restart local v7    # "x":I
    :goto_3
    if-ge v7, p2, :cond_2

    .line 108
    mul-int v10, v8, p2

    add-int v4, v10, v7

    .line 109
    .local v4, "idx":I
    aget v10, p1, v4

    invoke-direct {p0, v10}, Lcom/codeglue/terraria/ShareImage;->ConvertRGBAtoARGB(I)I

    move-result v10

    aput v10, p1, v4

    .line 106
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 104
    .end local v4    # "idx":I
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 116
    .end local v7    # "x":I
    .end local v8    # "y":I
    .end local v9    # "yn":I
    :cond_3
    iget-object v10, p0, Lcom/codeglue/terraria/ShareImage;->imageBuffer:[I

    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v10, p2, p3, v11}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 117
    .local v1, "bmp":Landroid/graphics/Bitmap;
    return-object v1
.end method

.method public run()V
    .locals 7

    .prologue
    .line 74
    iget-object v1, p0, Lcom/codeglue/terraria/ShareImage;->imageBuffer:[I

    iget v2, p0, Lcom/codeglue/terraria/ShareImage;->imageWidth:I

    iget v3, p0, Lcom/codeglue/terraria/ShareImage;->imageHeight:I

    iget-boolean v4, p0, Lcom/codeglue/terraria/ShareImage;->flipHorizontal:Z

    iget-boolean v5, p0, Lcom/codeglue/terraria/ShareImage;->convertRGBAtoARGB:Z

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/codeglue/terraria/ShareImage;->CreateBitmap([IIIZZ)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 75
    .local v6, "bmp":Landroid/graphics/Bitmap;
    invoke-direct {p0, v6}, Lcom/codeglue/terraria/ShareImage;->ShareBitmap(Landroid/graphics/Bitmap;)V

    .line 76
    return-void
.end method
