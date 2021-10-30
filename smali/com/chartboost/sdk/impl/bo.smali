.class public final Lcom/chartboost/sdk/impl/bo;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Lcom/chartboost/sdk/impl/bq;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 19
    invoke-direct {p0, p1}, Lcom/chartboost/sdk/impl/bo;->a(Landroid/content/Context;)V

    .line 20
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/16 v3, 0x11

    .line 28
    invoke-virtual {p0, v3}, Lcom/chartboost/sdk/impl/bo;->setGravity(I)V

    .line 30
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/bo;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/bo;->a:Landroid/widget/TextView;

    .line 31
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bo;->a:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 32
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bo;->a:Landroid/widget/TextView;

    const/4 v1, 0x2

    const/high16 v2, 0x41800000    # 16.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 33
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bo;->a:Landroid/widget/TextView;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 34
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bo;->a:Landroid/widget/TextView;

    const-string v1, "Loading..."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bo;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 38
    new-instance v0, Lcom/chartboost/sdk/impl/bq;

    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/bo;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/chartboost/sdk/impl/bq;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/bo;->b:Lcom/chartboost/sdk/impl/bq;

    .line 39
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bo;->a:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/bo;->addView(Landroid/view/View;)V

    .line 40
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bo;->b:Lcom/chartboost/sdk/impl/bq;

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/bo;->addView(Landroid/view/View;)V

    .line 41
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/bo;->a()V

    .line 42
    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 45
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bo;->a:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/bo;->removeView(Landroid/view/View;)V

    .line 46
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bo;->b:Lcom/chartboost/sdk/impl/bq;

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/bo;->removeView(Landroid/view/View;)V

    .line 48
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/bo;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 49
    const/high16 v1, 0x41a00000    # 20.0f

    mul-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 51
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/chartboost/sdk/impl/bo;->setOrientation(I)V

    .line 52
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 54
    const/4 v3, 0x0

    invoke-virtual {v2, v1, v1, v1, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 55
    iget-object v3, p0, Lcom/chartboost/sdk/impl/bo;->a:Landroid/widget/TextView;

    invoke-virtual {p0, v3, v2}, Lcom/chartboost/sdk/impl/bo;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 56
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x42000000    # 32.0f

    mul-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-direct {v2, v4, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 58
    invoke-virtual {v2, v1, v1, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 59
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bo;->b:Lcom/chartboost/sdk/impl/bq;

    invoke-virtual {p0, v0, v2}, Lcom/chartboost/sdk/impl/bo;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 60
    return-void
.end method
