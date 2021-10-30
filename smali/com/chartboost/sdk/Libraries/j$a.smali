.class public Lcom/chartboost/sdk/Libraries/j$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/Libraries/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Ljava/io/File;

.field private d:Landroid/graphics/Bitmap;

.field private e:Lcom/chartboost/sdk/Libraries/h;

.field private f:I

.field private g:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/io/File;Lcom/chartboost/sdk/Libraries/h;)V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput v0, p0, Lcom/chartboost/sdk/Libraries/j$a;->f:I

    iput v0, p0, Lcom/chartboost/sdk/Libraries/j$a;->g:I

    .line 37
    iput-object p2, p0, Lcom/chartboost/sdk/Libraries/j$a;->c:Ljava/io/File;

    .line 38
    iput-object p1, p0, Lcom/chartboost/sdk/Libraries/j$a;->b:Ljava/lang/String;

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chartboost/sdk/Libraries/j$a;->d:Landroid/graphics/Bitmap;

    .line 40
    const/4 v0, 0x1

    iput v0, p0, Lcom/chartboost/sdk/Libraries/j$a;->a:I

    .line 41
    iput-object p3, p0, Lcom/chartboost/sdk/Libraries/j$a;->e:Lcom/chartboost/sdk/Libraries/h;

    .line 42
    return-void
.end method

.method static synthetic a(Lcom/chartboost/sdk/Libraries/j$a;)I
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lcom/chartboost/sdk/Libraries/j$a;->a:I

    return v0
.end method

.method private f()V
    .locals 3

    .prologue
    .line 143
    :try_start_0
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 144
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 145
    iget-object v1, p0, Lcom/chartboost/sdk/Libraries/j$a;->c:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 146
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v1, p0, Lcom/chartboost/sdk/Libraries/j$a;->f:I

    .line 147
    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v0, p0, Lcom/chartboost/sdk/Libraries/j$a;->g:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    :goto_0
    return-void

    .line 148
    :catch_0
    move-exception v0

    .line 149
    const-string v1, "MemoryBitmap"

    const-string v2, "Error decoding file size"

    invoke-static {v1, v2, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public a()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/j$a;->d:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 47
    invoke-virtual {p0}, Lcom/chartboost/sdk/Libraries/j$a;->b()V

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/j$a;->d:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public b()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 53
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/j$a;->d:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 90
    :goto_0
    return-void

    .line 55
    :cond_0
    const-string v0, "MemoryBitmap"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loading image \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/chartboost/sdk/Libraries/j$a;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' from cache"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/j$a;->e:Lcom/chartboost/sdk/Libraries/h;

    iget-object v1, p0, Lcom/chartboost/sdk/Libraries/j$a;->c:Ljava/io/File;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/Libraries/h;->b(Ljava/io/File;)[B

    move-result-object v1

    .line 60
    if-nez v1, :cond_1

    .line 61
    const-string v0, "MemoryBitmap"

    const-string v1, "decode() - bitmap not found"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 65
    :cond_1
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 66
    iput-boolean v4, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 67
    array-length v2, v1

    invoke-static {v1, v3, v2, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 69
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 70
    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 71
    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 72
    iput-boolean v4, v2, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 73
    iput-boolean v4, v2, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 74
    const v0, 0x8000

    new-array v0, v0, [B

    iput-object v0, v2, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    .line 76
    iput v4, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    :goto_1
    iget v0, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/16 v3, 0x20

    if-ge v0, v3, :cond_2

    .line 79
    const/4 v0, 0x0

    :try_start_0
    array-length v3, v1

    invoke-static {v1, v0, v3, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/chartboost/sdk/Libraries/j$a;->d:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 89
    :cond_2
    :goto_2
    iget v0, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    iput v0, p0, Lcom/chartboost/sdk/Libraries/j$a;->a:I

    goto :goto_0

    .line 80
    :catch_0
    move-exception v0

    .line 81
    const-string v3, "MemoryBitmap"

    const-string v4, "OutOfMemoryError suppressed - trying larger sample size"

    invoke-static {v3, v4, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 77
    iget v0, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    goto :goto_1

    .line 83
    :catch_1
    move-exception v0

    .line 84
    const-string v1, "MemoryBitmap"

    const-string v3, "Exception raised decoding bitmap"

    invoke-static {v1, v3, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method public c()V
    .locals 1

    .prologue
    .line 105
    :try_start_0
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/j$a;->d:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/j$a;->d:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/j$a;->d:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chartboost/sdk/Libraries/j$a;->d:Landroid/graphics/Bitmap;

    .line 110
    return-void

    .line 107
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/j$a;->d:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/j$a;->d:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 121
    :goto_0
    return v0

    .line 117
    :cond_0
    iget v0, p0, Lcom/chartboost/sdk/Libraries/j$a;->f:I

    if-ltz v0, :cond_1

    .line 118
    iget v0, p0, Lcom/chartboost/sdk/Libraries/j$a;->f:I

    goto :goto_0

    .line 120
    :cond_1
    invoke-direct {p0}, Lcom/chartboost/sdk/Libraries/j$a;->f()V

    .line 121
    iget v0, p0, Lcom/chartboost/sdk/Libraries/j$a;->f:I

    goto :goto_0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/j$a;->d:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/j$a;->d:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 135
    :goto_0
    return v0

    .line 131
    :cond_0
    iget v0, p0, Lcom/chartboost/sdk/Libraries/j$a;->g:I

    if-ltz v0, :cond_1

    .line 132
    iget v0, p0, Lcom/chartboost/sdk/Libraries/j$a;->g:I

    goto :goto_0

    .line 134
    :cond_1
    invoke-direct {p0}, Lcom/chartboost/sdk/Libraries/j$a;->f()V

    .line 135
    iget v0, p0, Lcom/chartboost/sdk/Libraries/j$a;->g:I

    goto :goto_0
.end method
