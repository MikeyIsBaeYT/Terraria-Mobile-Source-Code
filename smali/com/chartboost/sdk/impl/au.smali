.class public final Lcom/chartboost/sdk/impl/au;
.super Lcom/chartboost/sdk/impl/bj;
.source "SourceFile"


# instance fields
.field private b:Landroid/graphics/RectF;

.field private c:Landroid/graphics/Paint;

.field private d:Landroid/graphics/Paint;

.field private e:Landroid/graphics/BitmapShader;

.field private f:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/chartboost/sdk/impl/bj;-><init>(Landroid/content/Context;)V

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lcom/chartboost/sdk/impl/au;->f:F

    .line 31
    invoke-direct {p0, p1}, Lcom/chartboost/sdk/impl/au;->a(Landroid/content/Context;)V

    .line 32
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    .line 40
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/au;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 42
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/chartboost/sdk/impl/au;->b:Landroid/graphics/RectF;

    .line 43
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/chartboost/sdk/impl/au;->c:Landroid/graphics/Paint;

    .line 44
    iget-object v1, p0, Lcom/chartboost/sdk/impl/au;->c:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 45
    iget-object v1, p0, Lcom/chartboost/sdk/impl/au;->c:Landroid/graphics/Paint;

    mul-float/2addr v0, v3

    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 46
    iget-object v0, p0, Lcom/chartboost/sdk/impl/au;->c:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 47
    return-void
.end method


# virtual methods
.method public a(F)V
    .locals 0

    .prologue
    .line 93
    iput p1, p0, Lcom/chartboost/sdk/impl/au;->f:F

    .line 94
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/au;->invalidate()V

    .line 95
    return-void
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/chartboost/sdk/impl/au;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 51
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/au;->invalidate()V

    .line 52
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    const/4 v5, 0x0

    .line 57
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/au;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBUtility;->a(FLandroid/content/Context;)F

    move-result v1

    .line 59
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/au;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 60
    instance-of v2, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_2

    .line 61
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 62
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 63
    iget-object v2, p0, Lcom/chartboost/sdk/impl/au;->e:Landroid/graphics/BitmapShader;

    if-nez v2, :cond_0

    .line 64
    if-eqz v0, :cond_1

    .line 65
    new-instance v2, Landroid/graphics/BitmapShader;

    sget-object v3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v4, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v2, v0, v3, v4}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v2, p0, Lcom/chartboost/sdk/impl/au;->e:Landroid/graphics/BitmapShader;

    .line 66
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/chartboost/sdk/impl/au;->d:Landroid/graphics/Paint;

    .line 67
    iget-object v2, p0, Lcom/chartboost/sdk/impl/au;->d:Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 68
    iget-object v2, p0, Lcom/chartboost/sdk/impl/au;->d:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/chartboost/sdk/impl/au;->e:Landroid/graphics/BitmapShader;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 75
    :cond_0
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/au;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/au;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float v0, v3, v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 76
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 77
    invoke-virtual {p1, v0, v0}, Landroid/graphics/Canvas;->scale(FF)V

    .line 78
    iget-object v2, p0, Lcom/chartboost/sdk/impl/au;->b:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/au;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v0

    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/au;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v0

    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 79
    iget-object v2, p0, Lcom/chartboost/sdk/impl/au;->b:Landroid/graphics/RectF;

    mul-float v3, v0, v6

    div-float v3, v1, v3

    mul-float/2addr v0, v6

    div-float v0, v1, v0

    invoke-virtual {v2, v3, v0}, Landroid/graphics/RectF;->inset(FF)V

    .line 80
    iget-object v0, p0, Lcom/chartboost/sdk/impl/au;->b:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/chartboost/sdk/impl/au;->b:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    iget v3, p0, Lcom/chartboost/sdk/impl/au;->f:F

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/chartboost/sdk/impl/au;->b:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    iget v4, p0, Lcom/chartboost/sdk/impl/au;->f:F

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/chartboost/sdk/impl/au;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 81
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 87
    :goto_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/au;->b:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/au;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/au;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v5, v5, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 88
    iget-object v0, p0, Lcom/chartboost/sdk/impl/au;->b:Landroid/graphics/RectF;

    div-float v2, v1, v6

    div-float/2addr v1, v6

    invoke-virtual {v0, v2, v1}, Landroid/graphics/RectF;->inset(FF)V

    .line 89
    iget-object v0, p0, Lcom/chartboost/sdk/impl/au;->b:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/au;->b:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget v2, p0, Lcom/chartboost/sdk/impl/au;->f:F

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/chartboost/sdk/impl/au;->b:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    iget v3, p0, Lcom/chartboost/sdk/impl/au;->f:F

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/chartboost/sdk/impl/au;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 90
    :goto_1
    return-void

    .line 70
    :cond_1
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/au;->postInvalidate()V

    goto :goto_1

    .line 83
    :cond_2
    invoke-super {p0, p1}, Lcom/chartboost/sdk/impl/bj;->onDraw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method
