.class public abstract Lcom/chartboost/sdk/impl/bn;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field private a:Landroid/graphics/Bitmap;

.field private b:Landroid/graphics/Canvas;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 19
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 15
    iput-object v0, p0, Lcom/chartboost/sdk/impl/bn;->a:Landroid/graphics/Bitmap;

    .line 16
    iput-object v0, p0, Lcom/chartboost/sdk/impl/bn;->b:Landroid/graphics/Canvas;

    .line 20
    invoke-direct {p0, p1}, Lcom/chartboost/sdk/impl/bn;->a(Landroid/content/Context;)V

    .line 21
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 38
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "setLayerType"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Landroid/graphics/Paint;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 39
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput-object v3, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    :goto_0
    return-void

    .line 40
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private b(Landroid/graphics/Canvas;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 47
    :try_start_0
    const-class v0, Landroid/graphics/Canvas;

    const-string v2, "isHardwareAccelerated"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 48
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 50
    :goto_0
    return v0

    .line 49
    :catch_0
    move-exception v0

    move v0, v1

    .line 50
    goto :goto_0
.end method


# virtual methods
.method protected abstract a(Landroid/graphics/Canvas;)V
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 95
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 96
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bn;->a:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chartboost/sdk/impl/bn;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bn;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 98
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chartboost/sdk/impl/bn;->a:Landroid/graphics/Bitmap;

    .line 99
    return-void
.end method

.method protected final onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x0

    .line 57
    invoke-direct {p0, p1}, Lcom/chartboost/sdk/impl/bn;->b(Landroid/graphics/Canvas;)Z

    move-result v2

    .line 60
    if-eqz v2, :cond_4

    .line 63
    iget-object v3, p0, Lcom/chartboost/sdk/impl/bn;->a:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/chartboost/sdk/impl/bn;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v4

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/chartboost/sdk/impl/bn;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    if-eq v3, v4, :cond_2

    .line 64
    :cond_0
    iget-object v3, p0, Lcom/chartboost/sdk/impl/bn;->a:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/chartboost/sdk/impl/bn;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_1

    .line 65
    iget-object v3, p0, Lcom/chartboost/sdk/impl/bn;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 67
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/chartboost/sdk/impl/bn;->a:Landroid/graphics/Bitmap;

    .line 68
    new-instance v3, Landroid/graphics/Canvas;

    iget-object v4, p0, Lcom/chartboost/sdk/impl/bn;->a:Landroid/graphics/Bitmap;

    invoke-direct {v3, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v3, p0, Lcom/chartboost/sdk/impl/bn;->b:Landroid/graphics/Canvas;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    :cond_2
    iget-object v3, p0, Lcom/chartboost/sdk/impl/bn;->a:Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 77
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bn;->b:Landroid/graphics/Canvas;

    .end local p1    # "canvas":Landroid/graphics/Canvas;
    .local v0, "canvas":Landroid/graphics/Canvas;
    move-object v7, p1

    move-object p1, v0

    .end local v0    # "canvas":Landroid/graphics/Canvas;
    .restart local p1    # "canvas":Landroid/graphics/Canvas;
    move-object v0, v7

    .line 80
    :goto_0
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/impl/bn;->a(Landroid/graphics/Canvas;)V

    .line 82
    if-eqz v2, :cond_3

    .line 84
    if-eqz v0, :cond_3

    .line 85
    iget-object v2, p0, Lcom/chartboost/sdk/impl/bn;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2, v6, v6, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .end local p1    # "canvas":Landroid/graphics/Canvas;
    .restart local v0    # "canvas":Landroid/graphics/Canvas;
    move-object p1, v0

    .line 89
    .end local v0    # "canvas":Landroid/graphics/Canvas;
    .restart local p1    # "canvas":Landroid/graphics/Canvas;
    :cond_3
    :goto_1
    return-void

    .line 69
    :catch_0
    move-exception v1

    goto :goto_1

    :cond_4
    move-object v0, v1

    goto :goto_0
.end method
