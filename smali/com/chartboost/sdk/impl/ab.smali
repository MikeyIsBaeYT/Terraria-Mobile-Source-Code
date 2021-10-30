.class public Lcom/chartboost/sdk/impl/ab;
.super Lcom/chartboost/sdk/impl/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chartboost/sdk/impl/l",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# static fields
.field private static final e:Ljava/lang/Object;


# instance fields
.field private final a:Lcom/chartboost/sdk/impl/n$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/chartboost/sdk/impl/n$b",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Landroid/graphics/Bitmap$Config;

.field private final c:I

.field private final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/chartboost/sdk/impl/ab;->e:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/chartboost/sdk/impl/n$b;IILandroid/graphics/Bitmap$Config;Lcom/chartboost/sdk/impl/n$a;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/chartboost/sdk/impl/n$b",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;II",
            "Landroid/graphics/Bitmap$Config;",
            "Lcom/chartboost/sdk/impl/n$a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p6}, Lcom/chartboost/sdk/impl/l;-><init>(ILjava/lang/String;Lcom/chartboost/sdk/impl/n$a;)V

    .line 72
    new-instance v0, Lcom/chartboost/sdk/impl/d;

    const/16 v1, 0x3e8

    const/4 v2, 0x2

    const/high16 v3, 0x40000000    # 2.0f

    invoke-direct {v0, v1, v2, v3}, Lcom/chartboost/sdk/impl/d;-><init>(IIF)V

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/ab;->a(Lcom/chartboost/sdk/impl/p;)Lcom/chartboost/sdk/impl/l;

    .line 73
    iput-object p2, p0, Lcom/chartboost/sdk/impl/ab;->a:Lcom/chartboost/sdk/impl/n$b;

    .line 74
    iput-object p5, p0, Lcom/chartboost/sdk/impl/ab;->b:Landroid/graphics/Bitmap$Config;

    .line 75
    iput p3, p0, Lcom/chartboost/sdk/impl/ab;->c:I

    .line 76
    iput p4, p0, Lcom/chartboost/sdk/impl/ab;->d:I

    .line 77
    return-void
.end method

.method static a(IIII)I
    .locals 7

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    .line 200
    int-to-double v0, p0

    int-to-double v2, p2

    div-double/2addr v0, v2

    .line 201
    int-to-double v2, p1

    int-to-double v4, p3

    div-double/2addr v2, v4

    .line 202
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    .line 203
    const/high16 v0, 0x3f800000    # 1.0f

    .line 204
    :goto_0
    mul-float v1, v0, v6

    float-to-double v4, v1

    cmpg-double v1, v4, v2

    if-lez v1, :cond_0

    .line 208
    float-to-int v0, v0

    return v0

    .line 205
    :cond_0
    mul-float/2addr v0, v6

    goto :goto_0
.end method

.method private static b(IIII)I
    .locals 6

    .prologue
    .line 98
    if-nez p0, :cond_1

    if-nez p1, :cond_1

    move p0, p2

    .line 117
    :cond_0
    :goto_0
    return p0

    .line 103
    :cond_1
    if-nez p0, :cond_2

    .line 104
    int-to-double v0, p1

    int-to-double v2, p3

    div-double/2addr v0, v2

    .line 105
    int-to-double v2, p2

    mul-double/2addr v0, v2

    double-to-int p0, v0

    goto :goto_0

    .line 108
    :cond_2
    if-eqz p1, :cond_0

    .line 112
    int-to-double v0, p3

    int-to-double v2, p2

    div-double/2addr v0, v2

    .line 114
    int-to-double v2, p0

    mul-double/2addr v2, v0

    int-to-double v4, p1

    cmpl-double v2, v2, v4

    if-lez v2, :cond_0

    .line 115
    int-to-double v2, p1

    div-double v0, v2, v0

    double-to-int p0, v0

    goto :goto_0
.end method

.method private b(Lcom/chartboost/sdk/impl/i;)Lcom/chartboost/sdk/impl/n;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chartboost/sdk/impl/i;",
            ")",
            "Lcom/chartboost/sdk/impl/n",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 137
    iget-object v0, p1, Lcom/chartboost/sdk/impl/i;->b:[B

    .line 138
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 140
    iget v2, p0, Lcom/chartboost/sdk/impl/ab;->c:I

    if-nez v2, :cond_0

    iget v2, p0, Lcom/chartboost/sdk/impl/ab;->d:I

    if-nez v2, :cond_0

    .line 141
    iget-object v2, p0, Lcom/chartboost/sdk/impl/ab;->b:Landroid/graphics/Bitmap$Config;

    iput-object v2, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 142
    array-length v2, v0

    invoke-static {v0, v7, v2, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 176
    :goto_0
    if-nez v0, :cond_3

    .line 177
    new-instance v0, Lcom/chartboost/sdk/impl/k;

    invoke-direct {v0, p1}, Lcom/chartboost/sdk/impl/k;-><init>(Lcom/chartboost/sdk/impl/i;)V

    invoke-static {v0}, Lcom/chartboost/sdk/impl/n;->a(Lcom/chartboost/sdk/impl/s;)Lcom/chartboost/sdk/impl/n;

    move-result-object v0

    .line 179
    :goto_1
    return-object v0

    .line 145
    :cond_0
    iput-boolean v8, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 146
    array-length v2, v0

    invoke-static {v0, v7, v2, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 147
    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 148
    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 151
    iget v4, p0, Lcom/chartboost/sdk/impl/ab;->c:I

    iget v5, p0, Lcom/chartboost/sdk/impl/ab;->d:I

    invoke-static {v4, v5, v2, v3}, Lcom/chartboost/sdk/impl/ab;->b(IIII)I

    move-result v4

    .line 153
    iget v5, p0, Lcom/chartboost/sdk/impl/ab;->d:I

    iget v6, p0, Lcom/chartboost/sdk/impl/ab;->c:I

    invoke-static {v5, v6, v3, v2}, Lcom/chartboost/sdk/impl/ab;->b(IIII)I

    move-result v5

    .line 157
    iput-boolean v7, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 161
    invoke-static {v2, v3, v4, v5}, Lcom/chartboost/sdk/impl/ab;->a(IIII)I

    move-result v2

    .line 160
    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 163
    array-length v2, v0

    invoke-static {v0, v7, v2, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 166
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-gt v0, v4, :cond_1

    .line 167
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-le v0, v5, :cond_2

    .line 168
    :cond_1
    invoke-static {v1, v4, v5, v8}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 170
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 172
    goto :goto_0

    .line 179
    :cond_3
    invoke-static {p1}, Lcom/chartboost/sdk/impl/y;->a(Lcom/chartboost/sdk/impl/i;)Lcom/chartboost/sdk/impl/b$a;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chartboost/sdk/impl/n;->a(Ljava/lang/Object;Lcom/chartboost/sdk/impl/b$a;)Lcom/chartboost/sdk/impl/n;

    move-result-object v0

    goto :goto_1
.end method


# virtual methods
.method protected a(Lcom/chartboost/sdk/impl/i;)Lcom/chartboost/sdk/impl/n;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chartboost/sdk/impl/i;",
            ")",
            "Lcom/chartboost/sdk/impl/n",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 123
    sget-object v1, Lcom/chartboost/sdk/impl/ab;->e:Ljava/lang/Object;

    monitor-enter v1

    .line 125
    :try_start_0
    invoke-direct {p0, p1}, Lcom/chartboost/sdk/impl/ab;->b(Lcom/chartboost/sdk/impl/i;)Lcom/chartboost/sdk/impl/n;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :try_start_1
    monitor-exit v1

    .line 128
    :goto_0
    return-object v0

    .line 126
    :catch_0
    move-exception v0

    .line 127
    const-string v2, "Caught OOM for %d byte image, url=%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p1, Lcom/chartboost/sdk/impl/i;->b:[B

    array-length v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/ab;->d()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/chartboost/sdk/impl/t;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 128
    new-instance v2, Lcom/chartboost/sdk/impl/k;

    invoke-direct {v2, v0}, Lcom/chartboost/sdk/impl/k;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v2}, Lcom/chartboost/sdk/impl/n;->a(Lcom/chartboost/sdk/impl/s;)Lcom/chartboost/sdk/impl/n;

    move-result-object v0

    monitor-exit v1

    goto :goto_0

    .line 123
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected a(Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ab;->a:Lcom/chartboost/sdk/impl/n$b;

    invoke-interface {v0, p1}, Lcom/chartboost/sdk/impl/n$b;->a(Ljava/lang/Object;)V

    .line 186
    return-void
.end method

.method protected synthetic b(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/impl/ab;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public s()Lcom/chartboost/sdk/impl/l$a;
    .locals 1

    .prologue
    .line 81
    sget-object v0, Lcom/chartboost/sdk/impl/l$a;->a:Lcom/chartboost/sdk/impl/l$a;

    return-object v0
.end method
