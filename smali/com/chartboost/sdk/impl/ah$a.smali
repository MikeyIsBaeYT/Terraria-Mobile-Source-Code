.class public Lcom/chartboost/sdk/impl/ah$a;
.super Lcom/chartboost/sdk/f$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/impl/ah;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field protected b:Lcom/chartboost/sdk/impl/bj;

.field protected c:Lcom/chartboost/sdk/impl/bk;

.field protected d:Lcom/chartboost/sdk/impl/bk;

.field protected e:Landroid/widget/ImageView;

.field final synthetic f:Lcom/chartboost/sdk/impl/ah;

.field private g:Z


# direct methods
.method protected constructor <init>(Lcom/chartboost/sdk/impl/ah;Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v2, -0x1

    .line 49
    iput-object p1, p0, Lcom/chartboost/sdk/impl/ah$a;->f:Lcom/chartboost/sdk/impl/ah;

    .line 50
    invoke-direct {p0, p1, p2}, Lcom/chartboost/sdk/f$a;-><init>(Lcom/chartboost/sdk/f;Landroid/content/Context;)V

    .line 52
    iput-boolean v0, p0, Lcom/chartboost/sdk/impl/ah$a;->g:Z

    .line 54
    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/ah$a;->setBackgroundColor(I)V

    .line 55
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/ah$a;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 58
    new-instance v0, Lcom/chartboost/sdk/impl/bj;

    invoke-direct {v0, p2}, Lcom/chartboost/sdk/impl/bj;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/ah$a;->b:Lcom/chartboost/sdk/impl/bj;

    .line 60
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ah$a;->b:Lcom/chartboost/sdk/impl/bj;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/chartboost/sdk/impl/ah$a;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 63
    new-instance v0, Lcom/chartboost/sdk/impl/ah$a$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/chartboost/sdk/impl/ah$a$1;-><init>(Lcom/chartboost/sdk/impl/ah$a;Landroid/content/Context;Lcom/chartboost/sdk/impl/ah;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/ah$a;->d:Lcom/chartboost/sdk/impl/bk;

    .line 70
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ah$a;->d:Lcom/chartboost/sdk/impl/bk;

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/ah$a;->a(Landroid/view/View;)V

    .line 75
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/ah$a;->e:Landroid/widget/ImageView;

    .line 76
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ah$a;->e:Landroid/widget/ImageView;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 77
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ah$a;->e:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/ah$a;->addView(Landroid/view/View;)V

    .line 79
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ah$a;->d:Lcom/chartboost/sdk/impl/bk;

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/ah$a;->addView(Landroid/view/View;)V

    .line 80
    return-void
.end method


# virtual methods
.method protected a(FF)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 94
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ah$a;->f:Lcom/chartboost/sdk/impl/ah;

    invoke-virtual {v0, v1, v1}, Lcom/chartboost/sdk/impl/ah;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/e$a;)Z

    .line 95
    return-void
.end method

.method protected a(II)V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v10, -0x2

    const/high16 v9, 0x40000000    # 2.0f

    .line 100
    iget-boolean v0, p0, Lcom/chartboost/sdk/impl/ah$a;->g:Z

    if-nez v0, :cond_0

    .line 101
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/ah$a;->d()V

    .line 102
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/chartboost/sdk/impl/ah$a;->g:Z

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ah$a;->f:Lcom/chartboost/sdk/impl/ah;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/ah;->a()Lcom/chartboost/sdk/Libraries/f;

    move-result-object v0

    .line 107
    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/f;->b()Z

    move-result v4

    .line 108
    if-eqz v4, :cond_1

    iget-object v0, p0, Lcom/chartboost/sdk/impl/ah$a;->f:Lcom/chartboost/sdk/impl/ah;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/ah;->a(Lcom/chartboost/sdk/impl/ah;)Lcom/chartboost/sdk/Libraries/j;

    move-result-object v0

    move-object v3, v0

    .line 109
    :goto_0
    if-eqz v4, :cond_2

    iget-object v0, p0, Lcom/chartboost/sdk/impl/ah$a;->f:Lcom/chartboost/sdk/impl/ah;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/ah;->k:Lcom/chartboost/sdk/Libraries/j;

    .line 111
    :goto_1
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, v10, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 113
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v6, v10, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 117
    iget-object v1, p0, Lcom/chartboost/sdk/impl/ah$a;->f:Lcom/chartboost/sdk/impl/ah;

    invoke-virtual {v1, v5, v3, v11}, Lcom/chartboost/sdk/impl/ah;->a(Landroid/view/ViewGroup$LayoutParams;Lcom/chartboost/sdk/Libraries/j;F)V

    .line 118
    int-to-float v1, p1

    iget v2, v5, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    int-to-float v2, p2

    iget v7, v5, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    int-to-float v7, v7

    div-float/2addr v2, v7

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 120
    iget-object v2, p0, Lcom/chartboost/sdk/impl/ah$a;->f:Lcom/chartboost/sdk/impl/ah;

    invoke-static {v1, v11}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, v2, Lcom/chartboost/sdk/impl/ah;->o:F

    .line 121
    iget v1, v5, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/chartboost/sdk/impl/ah$a;->f:Lcom/chartboost/sdk/impl/ah;

    iget v2, v2, Lcom/chartboost/sdk/impl/ah;->o:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v5, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 122
    iget v1, v5, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/chartboost/sdk/impl/ah$a;->f:Lcom/chartboost/sdk/impl/ah;

    iget v2, v2, Lcom/chartboost/sdk/impl/ah;->o:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v5, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 124
    iget-object v2, p0, Lcom/chartboost/sdk/impl/ah$a;->f:Lcom/chartboost/sdk/impl/ah;

    if-eqz v4, :cond_3

    const-string v1, "frame-portrait"

    :goto_2
    invoke-virtual {v2, v1}, Lcom/chartboost/sdk/impl/ah;->b(Ljava/lang/String;)Landroid/graphics/Point;

    move-result-object v1

    .line 125
    iget v2, v5, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    sub-int v2, p1, v2

    int-to-float v2, v2

    div-float/2addr v2, v9

    iget v7, v1, Landroid/graphics/Point;->x:I

    int-to-float v7, v7

    invoke-virtual {v3}, Lcom/chartboost/sdk/Libraries/j;->g()F

    move-result v8

    div-float/2addr v7, v8

    iget-object v8, p0, Lcom/chartboost/sdk/impl/ah$a;->f:Lcom/chartboost/sdk/impl/ah;

    iget v8, v8, Lcom/chartboost/sdk/impl/ah;->o:F

    mul-float/2addr v7, v8

    add-float/2addr v2, v7

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, v5, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 126
    iget v2, v5, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    sub-int v2, p2, v2

    int-to-float v2, v2

    div-float/2addr v2, v9

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    invoke-virtual {v3}, Lcom/chartboost/sdk/Libraries/j;->g()F

    move-result v7

    div-float/2addr v1, v7

    iget-object v7, p0, Lcom/chartboost/sdk/impl/ah$a;->f:Lcom/chartboost/sdk/impl/ah;

    iget v7, v7, Lcom/chartboost/sdk/impl/ah;->o:F

    mul-float/2addr v1, v7

    add-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, v5, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 129
    iget-object v1, p0, Lcom/chartboost/sdk/impl/ah$a;->f:Lcom/chartboost/sdk/impl/ah;

    invoke-virtual {v1, v6, v0, v11}, Lcom/chartboost/sdk/impl/ah;->a(Landroid/view/ViewGroup$LayoutParams;Lcom/chartboost/sdk/Libraries/j;F)V

    .line 130
    iget-object v2, p0, Lcom/chartboost/sdk/impl/ah$a;->f:Lcom/chartboost/sdk/impl/ah;

    if-eqz v4, :cond_4

    const-string v1, "close-portrait"

    :goto_3
    invoke-virtual {v2, v1}, Lcom/chartboost/sdk/impl/ah;->b(Ljava/lang/String;)Landroid/graphics/Point;

    move-result-object v1

    .line 132
    iget v2, v1, Landroid/graphics/Point;->x:I

    if-nez v2, :cond_5

    iget v2, v1, Landroid/graphics/Point;->y:I

    if-nez v2, :cond_5

    .line 134
    iget v1, v5, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget v2, v5, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    add-int/2addr v1, v2

    iget v2, v6, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    neg-int v2, v2

    int-to-float v2, v2

    div-float/2addr v2, v9

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    add-int/2addr v2, v1

    .line 135
    iget v1, v5, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget v7, v6, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    neg-int v7, v7

    int-to-float v7, v7

    div-float/2addr v7, v9

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    add-int/2addr v1, v7

    .line 140
    :goto_4
    invoke-static {v12, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget v7, v6, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    sub-int v7, p1, v7

    invoke-static {v2, v7}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, v6, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 141
    invoke-static {v12, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v2, v6, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    sub-int v2, p2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v6, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 144
    iget-object v1, p0, Lcom/chartboost/sdk/impl/ah$a;->b:Lcom/chartboost/sdk/impl/bj;

    invoke-virtual {v1, v5}, Lcom/chartboost/sdk/impl/bj;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 145
    iget-object v1, p0, Lcom/chartboost/sdk/impl/ah$a;->c:Lcom/chartboost/sdk/impl/bk;

    invoke-virtual {v1, v6}, Lcom/chartboost/sdk/impl/bk;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 148
    iget-object v1, p0, Lcom/chartboost/sdk/impl/ah$a;->b:Lcom/chartboost/sdk/impl/bj;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Lcom/chartboost/sdk/impl/bj;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 149
    iget-object v1, p0, Lcom/chartboost/sdk/impl/ah$a;->b:Lcom/chartboost/sdk/impl/bj;

    invoke-virtual {v1, v3}, Lcom/chartboost/sdk/impl/bj;->a(Lcom/chartboost/sdk/Libraries/j;)V

    .line 150
    iget-object v1, p0, Lcom/chartboost/sdk/impl/ah$a;->c:Lcom/chartboost/sdk/impl/bk;

    invoke-virtual {v1, v0}, Lcom/chartboost/sdk/impl/bk;->a(Lcom/chartboost/sdk/Libraries/j;)V

    .line 153
    if-eqz v4, :cond_6

    iget-object v0, p0, Lcom/chartboost/sdk/impl/ah$a;->f:Lcom/chartboost/sdk/impl/ah;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/ah;->c(Lcom/chartboost/sdk/impl/ah;)Lcom/chartboost/sdk/Libraries/j;

    move-result-object v0

    .line 154
    :goto_5
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v10, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 156
    iget-object v1, p0, Lcom/chartboost/sdk/impl/ah$a;->f:Lcom/chartboost/sdk/impl/ah;

    iget-object v3, p0, Lcom/chartboost/sdk/impl/ah$a;->f:Lcom/chartboost/sdk/impl/ah;

    iget v3, v3, Lcom/chartboost/sdk/impl/ah;->o:F

    invoke-virtual {v1, v2, v0, v3}, Lcom/chartboost/sdk/impl/ah;->a(Landroid/view/ViewGroup$LayoutParams;Lcom/chartboost/sdk/Libraries/j;F)V

    .line 157
    iget-object v3, p0, Lcom/chartboost/sdk/impl/ah$a;->f:Lcom/chartboost/sdk/impl/ah;

    if-eqz v4, :cond_7

    const-string v1, "ad-portrait"

    :goto_6
    invoke-virtual {v3, v1}, Lcom/chartboost/sdk/impl/ah;->b(Ljava/lang/String;)Landroid/graphics/Point;

    move-result-object v1

    .line 158
    iget v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    sub-int v3, p1, v3

    int-to-float v3, v3

    div-float/2addr v3, v9

    iget v4, v1, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/j;->g()F

    move-result v5

    div-float/2addr v4, v5

    iget-object v5, p0, Lcom/chartboost/sdk/impl/ah$a;->f:Lcom/chartboost/sdk/impl/ah;

    iget v5, v5, Lcom/chartboost/sdk/impl/ah;->o:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 159
    iget v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    sub-int v3, p2, v3

    int-to-float v3, v3

    div-float/2addr v3, v9

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/j;->g()F

    move-result v4

    div-float/2addr v1, v4

    iget-object v4, p0, Lcom/chartboost/sdk/impl/ah$a;->f:Lcom/chartboost/sdk/impl/ah;

    iget v4, v4, Lcom/chartboost/sdk/impl/ah;->o:F

    mul-float/2addr v1, v4

    add-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 161
    iget-object v1, p0, Lcom/chartboost/sdk/impl/ah$a;->e:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 162
    iget-object v1, p0, Lcom/chartboost/sdk/impl/ah$a;->d:Lcom/chartboost/sdk/impl/bk;

    invoke-virtual {v1, v2}, Lcom/chartboost/sdk/impl/bk;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 163
    iget-object v1, p0, Lcom/chartboost/sdk/impl/ah$a;->d:Lcom/chartboost/sdk/impl/bk;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Lcom/chartboost/sdk/impl/bk;->a(Landroid/widget/ImageView$ScaleType;)V

    .line 164
    iget-object v1, p0, Lcom/chartboost/sdk/impl/ah$a;->d:Lcom/chartboost/sdk/impl/bk;

    invoke-virtual {v1, v0}, Lcom/chartboost/sdk/impl/bk;->a(Lcom/chartboost/sdk/Libraries/j;)V

    .line 165
    return-void

    .line 108
    :cond_1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ah$a;->f:Lcom/chartboost/sdk/impl/ah;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/ah;->b(Lcom/chartboost/sdk/impl/ah;)Lcom/chartboost/sdk/Libraries/j;

    move-result-object v0

    move-object v3, v0

    goto/16 :goto_0

    .line 109
    :cond_2
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ah$a;->f:Lcom/chartboost/sdk/impl/ah;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/ah;->l:Lcom/chartboost/sdk/Libraries/j;

    goto/16 :goto_1

    .line 124
    :cond_3
    const-string v1, "frame-landscape"

    goto/16 :goto_2

    .line 130
    :cond_4
    const-string v1, "close-landscape"

    goto/16 :goto_3

    .line 137
    :cond_5
    iget v2, v5, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    int-to-float v2, v2

    iget v7, v5, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    int-to-float v7, v7

    div-float/2addr v7, v9

    add-float/2addr v2, v7

    iget v7, v1, Landroid/graphics/Point;->x:I

    int-to-float v7, v7

    add-float/2addr v2, v7

    iget v7, v6, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    int-to-float v7, v7

    div-float/2addr v7, v9

    sub-float/2addr v2, v7

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 138
    iget v7, v5, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    int-to-float v7, v7

    iget v8, v5, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    int-to-float v8, v8

    div-float/2addr v8, v9

    add-float/2addr v7, v8

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    add-float/2addr v1, v7

    iget v7, v6, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    int-to-float v7, v7

    div-float/2addr v7, v9

    sub-float/2addr v1, v7

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    goto/16 :goto_4

    .line 153
    :cond_6
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ah$a;->f:Lcom/chartboost/sdk/impl/ah;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/ah;->d(Lcom/chartboost/sdk/impl/ah;)Lcom/chartboost/sdk/Libraries/j;

    move-result-object v0

    goto/16 :goto_5

    .line 157
    :cond_7
    const-string v1, "ad-landscape"

    goto/16 :goto_6
.end method

.method public b()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 173
    invoke-super {p0}, Lcom/chartboost/sdk/f$a;->b()V

    .line 174
    iput-object v0, p0, Lcom/chartboost/sdk/impl/ah$a;->b:Lcom/chartboost/sdk/impl/bj;

    .line 175
    iput-object v0, p0, Lcom/chartboost/sdk/impl/ah$a;->c:Lcom/chartboost/sdk/impl/bk;

    .line 177
    iput-object v0, p0, Lcom/chartboost/sdk/impl/ah$a;->d:Lcom/chartboost/sdk/impl/bk;

    .line 178
    iput-object v0, p0, Lcom/chartboost/sdk/impl/ah$a;->e:Landroid/widget/ImageView;

    .line 179
    return-void
.end method

.method protected d()V
    .locals 2

    .prologue
    .line 84
    new-instance v0, Lcom/chartboost/sdk/impl/ah$a$2;

    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/ah$a;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/chartboost/sdk/impl/ah$a$2;-><init>(Lcom/chartboost/sdk/impl/ah$a;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/ah$a;->c:Lcom/chartboost/sdk/impl/bk;

    .line 90
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ah$a;->c:Lcom/chartboost/sdk/impl/bk;

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/ah$a;->addView(Landroid/view/View;)V

    .line 91
    return-void
.end method

.method protected e()V
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ah$a;->f:Lcom/chartboost/sdk/impl/ah;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/ah;->e(Lcom/chartboost/sdk/impl/ah;)V

    .line 169
    return-void
.end method
