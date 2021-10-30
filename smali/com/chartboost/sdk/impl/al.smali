.class public final Lcom/chartboost/sdk/impl/al;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field private a:Lcom/chartboost/sdk/impl/ai;

.field private b:Landroid/widget/LinearLayout;

.field private c:Lcom/chartboost/sdk/impl/bj;

.field private d:Landroid/widget/TextView;

.field private e:Lcom/chartboost/sdk/impl/bk;

.field private f:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/chartboost/sdk/impl/ai;)V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 37
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/chartboost/sdk/impl/al;->f:I

    .line 41
    iput-object p2, p0, Lcom/chartboost/sdk/impl/al;->a:Lcom/chartboost/sdk/impl/ai;

    .line 42
    invoke-direct {p0, p1}, Lcom/chartboost/sdk/impl/al;->a(Landroid/content/Context;)V

    .line 43
    return-void
.end method

.method static synthetic a(Lcom/chartboost/sdk/impl/al;)Lcom/chartboost/sdk/impl/bk;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/chartboost/sdk/impl/al;->e:Lcom/chartboost/sdk/impl/bk;

    return-object v0
.end method

.method private a(Landroid/content/Context;)V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/high16 v7, 0x3f800000    # 1.0f

    const/16 v4, 0x11

    const/4 v6, 0x0

    const/4 v5, -0x2

    .line 46
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/al;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 47
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/al;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 48
    const/high16 v2, 0x41000000    # 8.0f

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 50
    invoke-virtual {p0, v8}, Lcom/chartboost/sdk/impl/al;->setOrientation(I)V

    .line 52
    invoke-virtual {p0, v4}, Lcom/chartboost/sdk/impl/al;->setGravity(I)V

    .line 54
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/chartboost/sdk/impl/al;->b:Landroid/widget/LinearLayout;

    .line 55
    iget-object v2, p0, Lcom/chartboost/sdk/impl/al;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 56
    iget-object v2, p0, Lcom/chartboost/sdk/impl/al;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 57
    iget-object v2, p0, Lcom/chartboost/sdk/impl/al;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1, v1, v1, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 59
    new-instance v2, Lcom/chartboost/sdk/impl/bj;

    invoke-direct {v2, v0}, Lcom/chartboost/sdk/impl/bj;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/chartboost/sdk/impl/al;->c:Lcom/chartboost/sdk/impl/bj;

    .line 60
    iget-object v0, p0, Lcom/chartboost/sdk/impl/al;->c:Lcom/chartboost/sdk/impl/bj;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/impl/bj;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 61
    iget-object v0, p0, Lcom/chartboost/sdk/impl/al;->c:Lcom/chartboost/sdk/impl/bj;

    invoke-virtual {v0, v6, v6, v1, v6}, Lcom/chartboost/sdk/impl/bj;->setPadding(IIII)V

    .line 62
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 63
    iget-object v0, p0, Lcom/chartboost/sdk/impl/al;->a:Lcom/chartboost/sdk/impl/ai;

    iget-object v3, p0, Lcom/chartboost/sdk/impl/al;->a:Lcom/chartboost/sdk/impl/ai;

    iget-object v3, v3, Lcom/chartboost/sdk/impl/ai;->E:Lcom/chartboost/sdk/Libraries/j;

    invoke-virtual {v0, v2, v3, v7}, Lcom/chartboost/sdk/impl/ai;->a(Landroid/view/ViewGroup$LayoutParams;Lcom/chartboost/sdk/Libraries/j;F)V

    .line 65
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/al;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/al;->d:Landroid/widget/TextView;

    .line 66
    iget-object v0, p0, Lcom/chartboost/sdk/impl/al;->d:Landroid/widget/TextView;

    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 67
    iget-object v0, p0, Lcom/chartboost/sdk/impl/al;->d:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 68
    iget-object v0, p0, Lcom/chartboost/sdk/impl/al;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 69
    iget-object v3, p0, Lcom/chartboost/sdk/impl/al;->d:Landroid/widget/TextView;

    const/4 v4, 0x2

    invoke-static {p1}, Lcom/chartboost/sdk/f;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/high16 v0, 0x41d00000    # 26.0f

    :goto_0
    invoke-virtual {v3, v4, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 71
    iget-object v0, p0, Lcom/chartboost/sdk/impl/al;->b:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/chartboost/sdk/impl/al;->c:Lcom/chartboost/sdk/impl/bj;

    invoke-virtual {v0, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 72
    iget-object v0, p0, Lcom/chartboost/sdk/impl/al;->b:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/chartboost/sdk/impl/al;->d:Landroid/widget/TextView;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 74
    new-instance v0, Lcom/chartboost/sdk/impl/al$1;

    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/al;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/chartboost/sdk/impl/al$1;-><init>(Lcom/chartboost/sdk/impl/al;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/al;->e:Lcom/chartboost/sdk/impl/bk;

    .line 81
    iget-object v0, p0, Lcom/chartboost/sdk/impl/al;->e:Lcom/chartboost/sdk/impl/bk;

    invoke-virtual {v0, v6, v6, v6, v1}, Lcom/chartboost/sdk/impl/bk;->setPadding(IIII)V

    .line 82
    iget-object v0, p0, Lcom/chartboost/sdk/impl/al;->e:Lcom/chartboost/sdk/impl/bk;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/impl/bk;->a(Landroid/widget/ImageView$ScaleType;)V

    .line 83
    iget-object v0, p0, Lcom/chartboost/sdk/impl/al;->e:Lcom/chartboost/sdk/impl/bk;

    invoke-virtual {v0, v1, v1, v1, v1}, Lcom/chartboost/sdk/impl/bk;->setPadding(IIII)V

    .line 84
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 85
    iget-object v1, p0, Lcom/chartboost/sdk/impl/al;->a:Lcom/chartboost/sdk/impl/ai;

    iget-object v2, p0, Lcom/chartboost/sdk/impl/al;->a:Lcom/chartboost/sdk/impl/ai;

    iget-object v2, v2, Lcom/chartboost/sdk/impl/ai;->D:Lcom/chartboost/sdk/Libraries/j;

    invoke-virtual {v1, v0, v2, v7}, Lcom/chartboost/sdk/impl/ai;->a(Landroid/view/ViewGroup$LayoutParams;Lcom/chartboost/sdk/Libraries/j;F)V

    .line 87
    iget-object v1, p0, Lcom/chartboost/sdk/impl/al;->a:Lcom/chartboost/sdk/impl/ai;

    iget-object v1, v1, Lcom/chartboost/sdk/impl/ai;->E:Lcom/chartboost/sdk/Libraries/j;

    invoke-virtual {v1}, Lcom/chartboost/sdk/Libraries/j;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 88
    iget-object v1, p0, Lcom/chartboost/sdk/impl/al;->c:Lcom/chartboost/sdk/impl/bj;

    iget-object v2, p0, Lcom/chartboost/sdk/impl/al;->a:Lcom/chartboost/sdk/impl/ai;

    iget-object v2, v2, Lcom/chartboost/sdk/impl/ai;->E:Lcom/chartboost/sdk/Libraries/j;

    invoke-virtual {v1, v2}, Lcom/chartboost/sdk/impl/bj;->a(Lcom/chartboost/sdk/Libraries/j;)V

    .line 89
    :cond_0
    iget-object v1, p0, Lcom/chartboost/sdk/impl/al;->a:Lcom/chartboost/sdk/impl/ai;

    iget-object v1, v1, Lcom/chartboost/sdk/impl/ai;->D:Lcom/chartboost/sdk/Libraries/j;

    invoke-virtual {v1}, Lcom/chartboost/sdk/Libraries/j;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 90
    iget-object v1, p0, Lcom/chartboost/sdk/impl/al;->e:Lcom/chartboost/sdk/impl/bk;

    iget-object v2, p0, Lcom/chartboost/sdk/impl/al;->a:Lcom/chartboost/sdk/impl/ai;

    iget-object v2, v2, Lcom/chartboost/sdk/impl/ai;->D:Lcom/chartboost/sdk/Libraries/j;

    invoke-virtual {v1, v2}, Lcom/chartboost/sdk/impl/bk;->a(Lcom/chartboost/sdk/Libraries/j;)V

    .line 92
    :cond_1
    iget-object v1, p0, Lcom/chartboost/sdk/impl/al;->b:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v2}, Lcom/chartboost/sdk/impl/al;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 93
    iget-object v1, p0, Lcom/chartboost/sdk/impl/al;->e:Lcom/chartboost/sdk/impl/bk;

    invoke-virtual {p0, v1, v0}, Lcom/chartboost/sdk/impl/al;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 94
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/al;->a()V

    .line 95
    return-void

    .line 69
    :cond_2
    const/high16 v0, 0x41800000    # 16.0f

    goto :goto_0
.end method

.method static synthetic b(Lcom/chartboost/sdk/impl/al;)Lcom/chartboost/sdk/impl/ai;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/chartboost/sdk/impl/al;->a:Lcom/chartboost/sdk/impl/ai;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/chartboost/sdk/impl/al;->a:Lcom/chartboost/sdk/impl/ai;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/ai;->r()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/al;->a(Z)V

    .line 109
    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/chartboost/sdk/impl/al;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    iput p2, p0, Lcom/chartboost/sdk/impl/al;->f:I

    .line 104
    iget-object v0, p0, Lcom/chartboost/sdk/impl/al;->a:Lcom/chartboost/sdk/impl/ai;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/ai;->r()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/al;->a(Z)V

    .line 105
    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 98
    if-eqz p1, :cond_0

    const/high16 v0, -0x1000000

    :goto_0
    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/al;->setBackgroundColor(I)V

    .line 99
    return-void

    .line 98
    :cond_0
    iget v0, p0, Lcom/chartboost/sdk/impl/al;->f:I

    goto :goto_0
.end method
