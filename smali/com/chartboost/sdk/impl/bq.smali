.class public final Lcom/chartboost/sdk/impl/bq;
.super Lcom/chartboost/sdk/impl/bn;
.source "SourceFile"


# static fields
.field private static a:Landroid/os/Handler;


# instance fields
.field private b:F

.field private c:J

.field private d:Landroid/graphics/Paint;

.field private e:Landroid/graphics/Paint;

.field private f:Landroid/graphics/Path;

.field private g:Landroid/graphics/Path;

.field private h:Landroid/graphics/RectF;

.field private i:Landroid/graphics/RectF;

.field private j:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    invoke-static {}, Lcom/chartboost/sdk/Libraries/CBUtility;->e()Landroid/os/Handler;

    move-result-object v0

    sput-object v0, Lcom/chartboost/sdk/impl/bq;->a:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/chartboost/sdk/impl/bn;-><init>(Landroid/content/Context;)V

    .line 31
    new-instance v0, Lcom/chartboost/sdk/impl/bq$1;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/impl/bq$1;-><init>(Lcom/chartboost/sdk/impl/bq;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/bq;->j:Ljava/lang/Runnable;

    .line 49
    invoke-direct {p0, p1}, Lcom/chartboost/sdk/impl/bq;->a(Landroid/content/Context;)V

    .line 50
    return-void
.end method

.method static synthetic a(Lcom/chartboost/sdk/impl/bq;)F
    .locals 1

    .prologue
    .line 17
    iget v0, p0, Lcom/chartboost/sdk/impl/bq;->b:F

    return v0
.end method

.method static synthetic a(Lcom/chartboost/sdk/impl/bq;F)F
    .locals 1

    .prologue
    .line 17
    iget v0, p0, Lcom/chartboost/sdk/impl/bq;->b:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/chartboost/sdk/impl/bq;->b:F

    return v0
.end method

.method private a(Landroid/content/Context;)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, -0x1

    .line 65
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 66
    const/4 v1, 0x0

    iput v1, p0, Lcom/chartboost/sdk/impl/bq;->b:F

    .line 67
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    long-to-double v2, v2

    const-wide v4, 0x412e848000000000L    # 1000000.0

    div-double/2addr v2, v4

    double-to-long v2, v2

    iput-wide v2, p0, Lcom/chartboost/sdk/impl/bq;->c:J

    .line 69
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/chartboost/sdk/impl/bq;->d:Landroid/graphics/Paint;

    .line 70
    iget-object v1, p0, Lcom/chartboost/sdk/impl/bq;->d:Landroid/graphics/Paint;

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 71
    iget-object v1, p0, Lcom/chartboost/sdk/impl/bq;->d:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 72
    iget-object v1, p0, Lcom/chartboost/sdk/impl/bq;->d:Landroid/graphics/Paint;

    const/high16 v2, 0x40400000    # 3.0f

    mul-float/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 73
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bq;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 75
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/bq;->e:Landroid/graphics/Paint;

    .line 76
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bq;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 77
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bq;->e:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 78
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bq;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 80
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/bq;->f:Landroid/graphics/Path;

    .line 81
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/bq;->g:Landroid/graphics/Path;

    .line 83
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/bq;->i:Landroid/graphics/RectF;

    .line 84
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/bq;->h:Landroid/graphics/RectF;

    .line 85
    return-void
.end method

.method static synthetic b(Lcom/chartboost/sdk/impl/bq;F)F
    .locals 1

    .prologue
    .line 17
    iget v0, p0, Lcom/chartboost/sdk/impl/bq;->b:F

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/chartboost/sdk/impl/bq;->b:F

    return v0
.end method


# virtual methods
.method protected a(Landroid/graphics/Canvas;)V
    .locals 8

    .prologue
    const/high16 v7, 0x40400000    # 3.0f

    const/high16 v6, 0x3fc00000    # 1.5f

    const/high16 v5, 0x40000000    # 2.0f

    const/4 v4, 0x0

    .line 89
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/bq;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 92
    iget-object v1, p0, Lcom/chartboost/sdk/impl/bq;->h:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/bq;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/bq;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 93
    iget-object v1, p0, Lcom/chartboost/sdk/impl/bq;->h:Landroid/graphics/RectF;

    mul-float v2, v6, v0

    mul-float v3, v6, v0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/RectF;->inset(FF)V

    .line 94
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/bq;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v5

    .line 95
    iget-object v2, p0, Lcom/chartboost/sdk/impl/bq;->h:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/chartboost/sdk/impl/bq;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v1, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 98
    iget-object v1, p0, Lcom/chartboost/sdk/impl/bq;->i:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/chartboost/sdk/impl/bq;->h:Landroid/graphics/RectF;

    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 99
    iget-object v1, p0, Lcom/chartboost/sdk/impl/bq;->i:Landroid/graphics/RectF;

    mul-float v2, v7, v0

    mul-float/2addr v0, v7

    invoke-virtual {v1, v2, v0}, Landroid/graphics/RectF;->inset(FF)V

    .line 100
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bq;->i:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    div-float/2addr v0, v5

    .line 101
    iget-object v1, p0, Lcom/chartboost/sdk/impl/bq;->f:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 102
    iget-object v1, p0, Lcom/chartboost/sdk/impl/bq;->f:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/chartboost/sdk/impl/bq;->i:Landroid/graphics/RectF;

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v2, v0, v0, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 105
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bq;->i:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v1

    .line 106
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bq;->g:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 107
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bq;->g:Landroid/graphics/Path;

    invoke-virtual {v0, v4, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 108
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bq;->g:Landroid/graphics/Path;

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 109
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bq;->g:Landroid/graphics/Path;

    mul-float v2, v1, v5

    invoke-virtual {v0, v2, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 110
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bq;->g:Landroid/graphics/Path;

    invoke-virtual {v0, v1, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 111
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bq;->g:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 114
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 115
    const/4 v0, 0x1

    .line 117
    :try_start_0
    iget-object v2, p0, Lcom/chartboost/sdk/impl/bq;->f:Landroid/graphics/Path;

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    :goto_0
    if-eqz v0, :cond_0

    .line 125
    neg-float v0, v1

    iget v2, p0, Lcom/chartboost/sdk/impl/bq;->b:F

    add-float/2addr v0, v2

    :goto_1
    iget-object v2, p0, Lcom/chartboost/sdk/impl/bq;->i:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    add-float/2addr v2, v1

    cmpg-float v2, v0, v2

    if-gez v2, :cond_0

    .line 126
    iget-object v2, p0, Lcom/chartboost/sdk/impl/bq;->i:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    .line 127
    add-float/2addr v2, v0

    .line 130
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 131
    iget-object v3, p0, Lcom/chartboost/sdk/impl/bq;->i:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 134
    iget-object v2, p0, Lcom/chartboost/sdk/impl/bq;->g:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/chartboost/sdk/impl/bq;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 137
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 125
    mul-float v2, v5, v1

    add-float/2addr v0, v2

    goto :goto_1

    .line 118
    :catch_0
    move-exception v0

    .line 121
    const/4 v0, 0x0

    goto :goto_0

    .line 140
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 143
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    long-to-double v0, v0

    const-wide v2, 0x412e848000000000L    # 1000000.0

    div-double/2addr v0, v2

    double-to-long v0, v0

    .line 144
    iget-wide v2, p0, Lcom/chartboost/sdk/impl/bq;->c:J

    sub-long/2addr v0, v2

    .line 145
    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x10

    sub-long v0, v4, v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 147
    sget-object v2, Lcom/chartboost/sdk/impl/bq;->a:Landroid/os/Handler;

    iget-object v3, p0, Lcom/chartboost/sdk/impl/bq;->j:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 148
    sget-object v2, Lcom/chartboost/sdk/impl/bq;->a:Landroid/os/Handler;

    iget-object v3, p0, Lcom/chartboost/sdk/impl/bq;->j:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 149
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 164
    invoke-super {p0}, Lcom/chartboost/sdk/impl/bn;->onAttachedToWindow()V

    .line 165
    sget-object v0, Lcom/chartboost/sdk/impl/bq;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/bq;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 166
    sget-object v0, Lcom/chartboost/sdk/impl/bq;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/bq;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 167
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 171
    sget-object v0, Lcom/chartboost/sdk/impl/bq;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/bq;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 172
    invoke-super {p0}, Lcom/chartboost/sdk/impl/bn;->onDetachedFromWindow()V

    .line 173
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 2
    .param p1, "visibility"    # I

    .prologue
    .line 155
    invoke-super {p0, p1}, Lcom/chartboost/sdk/impl/bn;->onWindowVisibilityChanged(I)V

    .line 156
    sget-object v0, Lcom/chartboost/sdk/impl/bq;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/bq;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 158
    if-nez p1, :cond_0

    .line 159
    sget-object v0, Lcom/chartboost/sdk/impl/bq;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/bq;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 160
    :cond_0
    return-void
.end method
