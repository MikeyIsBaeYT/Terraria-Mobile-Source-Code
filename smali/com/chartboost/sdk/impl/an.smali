.class public Lcom/chartboost/sdk/impl/an;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field private a:Landroid/graphics/Paint;

.field private b:F

.field private c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 26
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 22
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/chartboost/sdk/impl/an;->b:F

    .line 23
    iput v2, p0, Lcom/chartboost/sdk/impl/an;->c:I

    .line 27
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 28
    const/high16 v1, 0x40a00000    # 5.0f

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 29
    invoke-virtual {p0, v0, v0, v0, v0}, Lcom/chartboost/sdk/impl/an;->setPadding(IIII)V

    .line 30
    invoke-virtual {p0, v2}, Lcom/chartboost/sdk/impl/an;->setBaselineAligned(Z)V

    .line 32
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/an;->a:Landroid/graphics/Paint;

    .line 33
    iget-object v0, p0, Lcom/chartboost/sdk/impl/an;->a:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 34
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/chartboost/sdk/impl/an;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 38
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/an;->invalidate()V

    .line 39
    return-void
.end method

.method public b(I)V
    .locals 0

    .prologue
    .line 57
    iput p1, p0, Lcom/chartboost/sdk/impl/an;->c:I

    .line 58
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v1, 0x0

    .line 43
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 44
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/an;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v8, v0, Landroid/util/DisplayMetrics;->density:F

    .line 46
    iget v0, p0, Lcom/chartboost/sdk/impl/an;->c:I

    and-int/lit8 v0, v0, 0x1

    if-lez v0, :cond_0

    .line 47
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v3, v0

    iget v0, p0, Lcom/chartboost/sdk/impl/an;->b:F

    mul-float v4, v0, v8

    iget-object v5, p0, Lcom/chartboost/sdk/impl/an;->a:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 48
    :cond_0
    iget v0, p0, Lcom/chartboost/sdk/impl/an;->c:I

    and-int/lit8 v0, v0, 0x2

    if-lez v0, :cond_1

    .line 49
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v2, p0, Lcom/chartboost/sdk/impl/an;->b:F

    mul-float/2addr v2, v8

    sub-float v3, v0, v2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v5, v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    int-to-float v6, v0

    iget-object v7, p0, Lcom/chartboost/sdk/impl/an;->a:Landroid/graphics/Paint;

    move-object v2, p1

    move v4, v1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 50
    :cond_1
    iget v0, p0, Lcom/chartboost/sdk/impl/an;->c:I

    and-int/lit8 v0, v0, 0x4

    if-lez v0, :cond_2

    .line 51
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v2, p0, Lcom/chartboost/sdk/impl/an;->b:F

    mul-float/2addr v2, v8

    sub-float v2, v0, v2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/chartboost/sdk/impl/an;->a:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 52
    :cond_2
    iget v0, p0, Lcom/chartboost/sdk/impl/an;->c:I

    and-int/lit8 v0, v0, 0x8

    if-lez v0, :cond_3

    .line 53
    iget v0, p0, Lcom/chartboost/sdk/impl/an;->b:F

    mul-float v3, v0, v8

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/chartboost/sdk/impl/an;->a:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 54
    :cond_3
    return-void
.end method
