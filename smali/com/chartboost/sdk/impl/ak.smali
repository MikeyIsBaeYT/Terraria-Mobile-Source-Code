.class public Lcom/chartboost/sdk/impl/ak;
.super Lcom/chartboost/sdk/impl/bn;
.source "SourceFile"


# instance fields
.field private a:Landroid/graphics/Paint;

.field private b:Landroid/graphics/Paint;

.field private c:Landroid/graphics/Path;

.field private d:Landroid/graphics/RectF;

.field private e:Landroid/graphics/RectF;

.field private f:I

.field private g:F

.field private h:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/chartboost/sdk/impl/bn;-><init>(Landroid/content/Context;)V

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lcom/chartboost/sdk/impl/ak;->f:I

    .line 34
    invoke-direct {p0, p1}, Lcom/chartboost/sdk/impl/ak;->a(Landroid/content/Context;)V

    .line 35
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 50
    const/high16 v1, 0x40900000    # 4.5f

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/chartboost/sdk/impl/ak;->g:F

    .line 52
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/chartboost/sdk/impl/ak;->a:Landroid/graphics/Paint;

    .line 53
    iget-object v1, p0, Lcom/chartboost/sdk/impl/ak;->a:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 54
    iget-object v1, p0, Lcom/chartboost/sdk/impl/ak;->a:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 55
    iget-object v1, p0, Lcom/chartboost/sdk/impl/ak;->a:Landroid/graphics/Paint;

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 56
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ak;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 58
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/ak;->b:Landroid/graphics/Paint;

    .line 59
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ak;->b:Landroid/graphics/Paint;

    const v1, -0x33000001    # -1.3421772E8f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 60
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ak;->b:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 61
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ak;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 63
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/ak;->c:Landroid/graphics/Path;

    .line 65
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/ak;->e:Landroid/graphics/RectF;

    .line 66
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/ak;->d:Landroid/graphics/RectF;

    .line 67
    return-void
.end method


# virtual methods
.method public a(F)V
    .locals 2

    .prologue
    .line 117
    iput p1, p0, Lcom/chartboost/sdk/impl/ak;->h:F

    .line 118
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/ak;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 119
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/ak;->invalidate()V

    .line 120
    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 98
    iput p1, p0, Lcom/chartboost/sdk/impl/ak;->f:I

    .line 99
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/ak;->invalidate()V

    .line 100
    return-void
.end method

.method protected a(Landroid/graphics/Canvas;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 71
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/ak;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 74
    iget-object v1, p0, Lcom/chartboost/sdk/impl/ak;->d:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/ak;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/ak;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 75
    const/4 v1, 0x1

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 76
    iget-object v1, p0, Lcom/chartboost/sdk/impl/ak;->d:Landroid/graphics/RectF;

    int-to-float v2, v0

    int-to-float v0, v0

    invoke-virtual {v1, v2, v0}, Landroid/graphics/RectF;->inset(FF)V

    .line 77
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ak;->c:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 78
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ak;->c:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/ak;->d:Landroid/graphics/RectF;

    iget v2, p0, Lcom/chartboost/sdk/impl/ak;->g:F

    iget v3, p0, Lcom/chartboost/sdk/impl/ak;->g:F

    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 80
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 81
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ak;->c:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 84
    iget v0, p0, Lcom/chartboost/sdk/impl/ak;->f:I

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 87
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ak;->e:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/ak;->d:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 88
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ak;->e:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/ak;->e:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    iget-object v2, p0, Lcom/chartboost/sdk/impl/ak;->e:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/chartboost/sdk/impl/ak;->h:F

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/chartboost/sdk/impl/ak;->e:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 89
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ak;->e:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/ak;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 91
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 94
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ak;->d:Landroid/graphics/RectF;

    iget v1, p0, Lcom/chartboost/sdk/impl/ak;->g:F

    iget v2, p0, Lcom/chartboost/sdk/impl/ak;->g:F

    iget-object v3, p0, Lcom/chartboost/sdk/impl/ak;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 95
    return-void
.end method

.method public b(F)V
    .locals 0

    .prologue
    .line 123
    iput p1, p0, Lcom/chartboost/sdk/impl/ak;->g:F

    .line 124
    return-void
.end method

.method public b(I)V
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ak;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 104
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/ak;->invalidate()V

    .line 105
    return-void
.end method

.method public c(I)V
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ak;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 109
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/ak;->invalidate()V

    .line 110
    return-void
.end method
