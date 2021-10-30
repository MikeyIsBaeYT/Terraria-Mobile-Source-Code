.class public final Lcom/chartboost/sdk/impl/bm;
.super Landroid/view/animation/Animation;
.source "SourceFile"


# instance fields
.field private final a:F

.field private final b:F

.field private final c:F

.field private final d:F

.field private e:Z

.field private f:Landroid/graphics/Camera;


# direct methods
.method public constructor <init>(FFFFZ)V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 13
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/chartboost/sdk/impl/bm;->e:Z

    .line 18
    iput p1, p0, Lcom/chartboost/sdk/impl/bm;->a:F

    .line 19
    iput p2, p0, Lcom/chartboost/sdk/impl/bm;->b:F

    .line 20
    iput p3, p0, Lcom/chartboost/sdk/impl/bm;->c:F

    .line 21
    iput p4, p0, Lcom/chartboost/sdk/impl/bm;->d:F

    .line 22
    iput-boolean p5, p0, Lcom/chartboost/sdk/impl/bm;->e:Z

    .line 23
    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 4
    .param p1, "interpolatedTime"    # F
    .param p2, "t"    # Landroid/view/animation/Transformation;

    .prologue
    .line 33
    iget v0, p0, Lcom/chartboost/sdk/impl/bm;->a:F

    iget v1, p0, Lcom/chartboost/sdk/impl/bm;->b:F

    iget v2, p0, Lcom/chartboost/sdk/impl/bm;->a:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    .line 34
    iget-object v1, p0, Lcom/chartboost/sdk/impl/bm;->f:Landroid/graphics/Camera;

    .line 35
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    .line 36
    invoke-virtual {v1}, Landroid/graphics/Camera;->save()V

    .line 38
    iget-boolean v3, p0, Lcom/chartboost/sdk/impl/bm;->e:Z

    if-eqz v3, :cond_0

    .line 39
    invoke-virtual {v1, v0}, Landroid/graphics/Camera;->rotateY(F)V

    .line 43
    :goto_0
    invoke-virtual {v1, v2}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 44
    invoke-virtual {v1}, Landroid/graphics/Camera;->restore()V

    .line 45
    iget v0, p0, Lcom/chartboost/sdk/impl/bm;->c:F

    neg-float v0, v0

    iget v1, p0, Lcom/chartboost/sdk/impl/bm;->d:F

    neg-float v1, v1

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 46
    iget v0, p0, Lcom/chartboost/sdk/impl/bm;->c:F

    iget v1, p0, Lcom/chartboost/sdk/impl/bm;->d:F

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 47
    return-void

    .line 41
    :cond_0
    invoke-virtual {v1, v0}, Landroid/graphics/Camera;->rotateX(F)V

    goto :goto_0
.end method

.method public initialize(IIII)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "parentWidth"    # I
    .param p4, "parentHeight"    # I

    .prologue
    .line 27
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 28
    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/bm;->f:Landroid/graphics/Camera;

    .line 29
    return-void
.end method
