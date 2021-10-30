.class public final Lcom/chartboost/sdk/impl/ao;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# static fields
.field private static final a:Ljava/lang/CharSequence;

.field private static l:Landroid/os/Handler;


# instance fields
.field private b:Landroid/widget/RelativeLayout;

.field private c:Lcom/chartboost/sdk/impl/an;

.field private d:Lcom/chartboost/sdk/impl/an;

.field private e:Lcom/chartboost/sdk/impl/bk;

.field private f:Landroid/widget/TextView;

.field private g:Lcom/chartboost/sdk/impl/ak;

.field private h:Lcom/chartboost/sdk/impl/bg;

.field private i:Lcom/chartboost/sdk/impl/ai;

.field private j:Z

.field private k:Z

.field private m:Ljava/lang/Runnable;

.field private n:Ljava/lang/Runnable;

.field private o:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-string v0, "00:00"

    sput-object v0, Lcom/chartboost/sdk/impl/ao;->a:Ljava/lang/CharSequence;

    .line 59
    invoke-static {}, Lcom/chartboost/sdk/Libraries/CBUtility;->e()Landroid/os/Handler;

    move-result-object v0

    sput-object v0, Lcom/chartboost/sdk/impl/ao;->l:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/chartboost/sdk/impl/ai;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 62
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 55
    iput-boolean v0, p0, Lcom/chartboost/sdk/impl/ao;->j:Z

    .line 56
    iput-boolean v0, p0, Lcom/chartboost/sdk/impl/ao;->k:Z

    .line 270
    new-instance v0, Lcom/chartboost/sdk/impl/ao$2;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/impl/ao$2;-><init>(Lcom/chartboost/sdk/impl/ao;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/ao;->m:Ljava/lang/Runnable;

    .line 276
    new-instance v0, Lcom/chartboost/sdk/impl/ao$3;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/impl/ao$3;-><init>(Lcom/chartboost/sdk/impl/ao;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/ao;->n:Ljava/lang/Runnable;

    .line 336
    new-instance v0, Lcom/chartboost/sdk/impl/ao$4;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/impl/ao$4;-><init>(Lcom/chartboost/sdk/impl/ao;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/ao;->o:Ljava/lang/Runnable;

    .line 63
    iput-object p2, p0, Lcom/chartboost/sdk/impl/ao;->i:Lcom/chartboost/sdk/impl/ai;

    .line 64
    invoke-direct {p0, p1}, Lcom/chartboost/sdk/impl/ao;->a(Landroid/content/Context;)V

    .line 65
    return-void
.end method

.method static synthetic a(Lcom/chartboost/sdk/impl/ao;)Lcom/chartboost/sdk/impl/ai;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ao;->i:Lcom/chartboost/sdk/impl/ai;

    return-object v0
.end method

.method private a(Landroid/content/Context;)V
    .locals 12

    .prologue
    const/4 v6, -0x2

    const/high16 v11, 0x41200000    # 10.0f

    const/16 v10, 0x8

    const/4 v9, 0x0

    const/4 v8, -0x1

    .line 68
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/ao;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 69
    iget-object v1, p0, Lcom/chartboost/sdk/impl/ao;->i:Lcom/chartboost/sdk/impl/ai;

    invoke-virtual {v1}, Lcom/chartboost/sdk/impl/ai;->g()Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v1

    .line 70
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/ao;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    .line 71
    mul-float v3, v2, v11

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 74
    new-instance v4, Lcom/chartboost/sdk/impl/bg;

    invoke-direct {v4, v0}, Lcom/chartboost/sdk/impl/bg;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/chartboost/sdk/impl/ao;->h:Lcom/chartboost/sdk/impl/bg;

    .line 75
    iget-object v4, p0, Lcom/chartboost/sdk/impl/ao;->i:Lcom/chartboost/sdk/impl/ai;

    invoke-virtual {v4}, Lcom/chartboost/sdk/impl/ai;->p()Lcom/chartboost/sdk/impl/ai$a;

    move-result-object v4

    iget-object v5, p0, Lcom/chartboost/sdk/impl/ao;->h:Lcom/chartboost/sdk/impl/bg;

    invoke-virtual {v4, v5}, Lcom/chartboost/sdk/impl/ai$a;->a(Landroid/view/View;)V

    .line 76
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v8, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 77
    const/16 v5, 0xd

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 78
    iget-object v5, p0, Lcom/chartboost/sdk/impl/ao;->h:Lcom/chartboost/sdk/impl/bg;

    invoke-virtual {p0, v5, v4}, Lcom/chartboost/sdk/impl/ao;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 81
    new-instance v4, Landroid/widget/RelativeLayout;

    invoke-direct {v4, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/chartboost/sdk/impl/ao;->b:Landroid/widget/RelativeLayout;

    .line 84
    invoke-virtual {v1}, Lcom/chartboost/sdk/Libraries/e$a;->c()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "video-click-button"

    invoke-virtual {v1, v4}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chartboost/sdk/Libraries/e$a;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 85
    new-instance v1, Lcom/chartboost/sdk/impl/an;

    invoke-direct {v1, v0}, Lcom/chartboost/sdk/impl/an;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/chartboost/sdk/impl/ao;->c:Lcom/chartboost/sdk/impl/an;

    .line 86
    iget-object v1, p0, Lcom/chartboost/sdk/impl/ao;->c:Lcom/chartboost/sdk/impl/an;

    invoke-virtual {v1, v10}, Lcom/chartboost/sdk/impl/an;->setVisibility(I)V

    .line 89
    new-instance v1, Lcom/chartboost/sdk/impl/ao$1;

    invoke-direct {v1, p0, v0}, Lcom/chartboost/sdk/impl/ao$1;-><init>(Lcom/chartboost/sdk/impl/ao;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/chartboost/sdk/impl/ao;->e:Lcom/chartboost/sdk/impl/bk;

    .line 98
    iget-object v1, p0, Lcom/chartboost/sdk/impl/ao;->e:Lcom/chartboost/sdk/impl/bk;

    sget-object v4, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v4}, Lcom/chartboost/sdk/impl/bk;->a(Landroid/widget/ImageView$ScaleType;)V

    .line 101
    iget-object v1, p0, Lcom/chartboost/sdk/impl/ao;->i:Lcom/chartboost/sdk/impl/ai;

    iget-object v1, v1, Lcom/chartboost/sdk/impl/ai;->F:Lcom/chartboost/sdk/Libraries/j;

    .line 102
    iget-object v4, p0, Lcom/chartboost/sdk/impl/ao;->i:Lcom/chartboost/sdk/impl/ai;

    const-string v5, "video-click-button"

    invoke-virtual {v4, v5}, Lcom/chartboost/sdk/impl/ai;->b(Ljava/lang/String;)Landroid/graphics/Point;

    move-result-object v4

    .line 103
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 104
    iget v6, v4, Landroid/graphics/Point;->x:I

    int-to-float v6, v6

    invoke-virtual {v1}, Lcom/chartboost/sdk/Libraries/j;->g()F

    move-result v7

    div-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 105
    iget v4, v4, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    invoke-virtual {v1}, Lcom/chartboost/sdk/Libraries/j;->g()F

    move-result v6

    div-float/2addr v4, v6

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iput v4, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 106
    iget-object v4, p0, Lcom/chartboost/sdk/impl/ao;->i:Lcom/chartboost/sdk/impl/ai;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5, v1, v6}, Lcom/chartboost/sdk/impl/ai;->a(Landroid/view/ViewGroup$LayoutParams;Lcom/chartboost/sdk/Libraries/j;F)V

    .line 107
    iget-object v4, p0, Lcom/chartboost/sdk/impl/ao;->e:Lcom/chartboost/sdk/impl/bk;

    invoke-virtual {v4, v1}, Lcom/chartboost/sdk/impl/bk;->a(Lcom/chartboost/sdk/Libraries/j;)V

    .line 110
    iget-object v1, p0, Lcom/chartboost/sdk/impl/ao;->c:Lcom/chartboost/sdk/impl/an;

    iget-object v4, p0, Lcom/chartboost/sdk/impl/ao;->e:Lcom/chartboost/sdk/impl/bk;

    invoke-virtual {v1, v4, v5}, Lcom/chartboost/sdk/impl/an;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 111
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v4, v5, Landroid/widget/LinearLayout$LayoutParams;->height:I

    int-to-float v4, v4

    mul-float v5, v11, v2

    add-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-direct {v1, v8, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 113
    const/16 v4, 0xa

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 114
    iget-object v4, p0, Lcom/chartboost/sdk/impl/ao;->b:Landroid/widget/RelativeLayout;

    iget-object v5, p0, Lcom/chartboost/sdk/impl/ao;->c:Lcom/chartboost/sdk/impl/an;

    invoke-virtual {v4, v5, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 118
    :cond_0
    new-instance v1, Lcom/chartboost/sdk/impl/an;

    invoke-direct {v1, v0}, Lcom/chartboost/sdk/impl/an;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/chartboost/sdk/impl/ao;->d:Lcom/chartboost/sdk/impl/an;

    .line 119
    iget-object v1, p0, Lcom/chartboost/sdk/impl/ao;->d:Lcom/chartboost/sdk/impl/an;

    invoke-virtual {v1, v10}, Lcom/chartboost/sdk/impl/an;->setVisibility(I)V

    .line 120
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v4, 0x42020000    # 32.5f

    mul-float/2addr v4, v2

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-direct {v1, v8, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 122
    const/16 v4, 0xc

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 123
    iget-object v4, p0, Lcom/chartboost/sdk/impl/ao;->b:Landroid/widget/RelativeLayout;

    iget-object v5, p0, Lcom/chartboost/sdk/impl/ao;->d:Lcom/chartboost/sdk/impl/an;

    invoke-virtual {v4, v5, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 124
    iget-object v1, p0, Lcom/chartboost/sdk/impl/ao;->d:Lcom/chartboost/sdk/impl/an;

    const/16 v4, 0x10

    invoke-virtual {v1, v4}, Lcom/chartboost/sdk/impl/an;->setGravity(I)V

    .line 125
    iget-object v1, p0, Lcom/chartboost/sdk/impl/ao;->d:Lcom/chartboost/sdk/impl/an;

    invoke-virtual {v1, v3, v3, v3, v3}, Lcom/chartboost/sdk/impl/an;->setPadding(IIII)V

    .line 127
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/chartboost/sdk/impl/ao;->f:Landroid/widget/TextView;

    .line 128
    iget-object v1, p0, Lcom/chartboost/sdk/impl/ao;->f:Landroid/widget/TextView;

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 129
    iget-object v1, p0, Lcom/chartboost/sdk/impl/ao;->f:Landroid/widget/TextView;

    const/4 v4, 0x2

    const/high16 v5, 0x41300000    # 11.0f

    invoke-virtual {v1, v4, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 130
    iget-object v1, p0, Lcom/chartboost/sdk/impl/ao;->f:Landroid/widget/TextView;

    sget-object v4, Lcom/chartboost/sdk/impl/ao;->a:Ljava/lang/CharSequence;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    iget-object v1, p0, Lcom/chartboost/sdk/impl/ao;->f:Landroid/widget/TextView;

    invoke-virtual {v1, v9, v9, v3, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 132
    iget-object v1, p0, Lcom/chartboost/sdk/impl/ao;->f:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->setSingleLine()V

    .line 135
    iget-object v1, p0, Lcom/chartboost/sdk/impl/ao;->f:Landroid/widget/TextView;

    invoke-virtual {v1, v9, v9}, Landroid/widget/TextView;->measure(II)V

    .line 136
    iget-object v1, p0, Lcom/chartboost/sdk/impl/ao;->f:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v1

    .line 138
    iget-object v3, p0, Lcom/chartboost/sdk/impl/ao;->f:Landroid/widget/TextView;

    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 139
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v1, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 140
    iget-object v1, p0, Lcom/chartboost/sdk/impl/ao;->d:Lcom/chartboost/sdk/impl/an;

    iget-object v4, p0, Lcom/chartboost/sdk/impl/ao;->f:Landroid/widget/TextView;

    invoke-virtual {v1, v4, v3}, Lcom/chartboost/sdk/impl/an;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 142
    new-instance v1, Lcom/chartboost/sdk/impl/ak;

    invoke-direct {v1, v0}, Lcom/chartboost/sdk/impl/ak;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/chartboost/sdk/impl/ao;->g:Lcom/chartboost/sdk/impl/ak;

    .line 143
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ao;->g:Lcom/chartboost/sdk/impl/ak;

    invoke-virtual {v0, v10}, Lcom/chartboost/sdk/impl/ak;->setVisibility(I)V

    .line 144
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    mul-float v1, v11, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-direct {v0, v8, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 146
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/ao;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/chartboost/sdk/Libraries/CBUtility;->a(ILandroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v9, v1, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 147
    iget-object v1, p0, Lcom/chartboost/sdk/impl/ao;->d:Lcom/chartboost/sdk/impl/an;

    iget-object v2, p0, Lcom/chartboost/sdk/impl/ao;->g:Lcom/chartboost/sdk/impl/ak;

    invoke-virtual {v1, v2, v0}, Lcom/chartboost/sdk/impl/an;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 149
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 150
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/chartboost/sdk/impl/ao;->h:Lcom/chartboost/sdk/impl/bg;

    invoke-virtual {v2}, Lcom/chartboost/sdk/impl/bg;->getId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 151
    iget-object v1, p0, Lcom/chartboost/sdk/impl/ao;->h:Lcom/chartboost/sdk/impl/bg;

    invoke-virtual {v1}, Lcom/chartboost/sdk/impl/bg;->getId()I

    move-result v1

    invoke-virtual {v0, v10, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 152
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/chartboost/sdk/impl/ao;->h:Lcom/chartboost/sdk/impl/bg;

    invoke-virtual {v2}, Lcom/chartboost/sdk/impl/bg;->getId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 153
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/chartboost/sdk/impl/ao;->h:Lcom/chartboost/sdk/impl/bg;

    invoke-virtual {v2}, Lcom/chartboost/sdk/impl/bg;->getId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 154
    iget-object v1, p0, Lcom/chartboost/sdk/impl/ao;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v1, v0}, Lcom/chartboost/sdk/impl/ao;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 155
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/ao;->a()V

    .line 156
    return-void
.end method

.method static synthetic a(Lcom/chartboost/sdk/impl/ao;Z)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/chartboost/sdk/impl/ao;->d(Z)V

    return-void
.end method

.method static synthetic b(Lcom/chartboost/sdk/impl/ao;)Lcom/chartboost/sdk/impl/an;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ao;->c:Lcom/chartboost/sdk/impl/an;

    return-object v0
.end method

.method static synthetic c(Lcom/chartboost/sdk/impl/ao;)Lcom/chartboost/sdk/impl/ak;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ao;->g:Lcom/chartboost/sdk/impl/ak;

    return-object v0
.end method

.method static synthetic d(Lcom/chartboost/sdk/impl/ao;)Lcom/chartboost/sdk/impl/an;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ao;->d:Lcom/chartboost/sdk/impl/an;

    return-object v0
.end method

.method private d(Z)V
    .locals 1

    .prologue
    .line 208
    iget-boolean v0, p0, Lcom/chartboost/sdk/impl/ao;->j:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0, p1}, Lcom/chartboost/sdk/impl/ao;->a(ZZ)V

    .line 209
    return-void

    .line 208
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic e(Lcom/chartboost/sdk/impl/ao;)Lcom/chartboost/sdk/impl/bk;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ao;->e:Lcom/chartboost/sdk/impl/bk;

    return-object v0
.end method

.method static synthetic f(Lcom/chartboost/sdk/impl/ao;)Lcom/chartboost/sdk/impl/bg;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ao;->h:Lcom/chartboost/sdk/impl/bg;

    return-object v0
.end method

.method static synthetic g(Lcom/chartboost/sdk/impl/ao;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ao;->f:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic h(Lcom/chartboost/sdk/impl/ao;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ao;->o:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic j()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/chartboost/sdk/impl/ao;->l:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 306
    invoke-static {}, Lcom/chartboost/sdk/Libraries/CBUtility;->c()Lcom/chartboost/sdk/Libraries/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/f;->b()Z

    move-result v0

    .line 307
    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/ao;->b(Z)V

    .line 308
    return-void
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ao;->c:Lcom/chartboost/sdk/impl/an;

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ao;->c:Lcom/chartboost/sdk/impl/an;

    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/impl/an;->setBackgroundColor(I)V

    .line 321
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ao;->d:Lcom/chartboost/sdk/impl/an;

    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/impl/an;->setBackgroundColor(I)V

    .line 322
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 378
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ao;->h:Lcom/chartboost/sdk/impl/bg;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/bg;->b()Lcom/chartboost/sdk/impl/bg$a;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/chartboost/sdk/impl/bg$a;->a(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 379
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ao;->h:Lcom/chartboost/sdk/impl/bg;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/bg;->b()Lcom/chartboost/sdk/impl/bg$a;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/chartboost/sdk/impl/bg$a;->a(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 380
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ao;->h:Lcom/chartboost/sdk/impl/bg;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/bg;->b()Lcom/chartboost/sdk/impl/bg$a;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/chartboost/sdk/impl/bg$a;->a(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 381
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ao;->h:Lcom/chartboost/sdk/impl/bg;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/bg;->b()Lcom/chartboost/sdk/impl/bg$a;

    move-result-object v0

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/chartboost/sdk/impl/bg$a;->a(Landroid/net/Uri;)V

    .line 382
    return-void
.end method

.method public a(Z)V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 245
    sget-object v0, Lcom/chartboost/sdk/impl/ao;->l:Landroid/os/Handler;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/ao;->m:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 246
    sget-object v0, Lcom/chartboost/sdk/impl/ao;->l:Landroid/os/Handler;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/ao;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 247
    if-eqz p1, :cond_3

    .line 248
    iget-boolean v0, p0, Lcom/chartboost/sdk/impl/ao;->k:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/chartboost/sdk/impl/ao;->c:Lcom/chartboost/sdk/impl/an;

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ao;->c:Lcom/chartboost/sdk/impl/an;

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/impl/an;->setVisibility(I)V

    .line 250
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ao;->i:Lcom/chartboost/sdk/impl/ai;

    iget-boolean v0, v0, Lcom/chartboost/sdk/impl/ai;->J:Z

    if-eqz v0, :cond_1

    .line 251
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ao;->g:Lcom/chartboost/sdk/impl/ak;

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/impl/ak;->setVisibility(I)V

    .line 252
    :cond_1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ao;->d:Lcom/chartboost/sdk/impl/an;

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/impl/an;->setVisibility(I)V

    .line 253
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ao;->e:Lcom/chartboost/sdk/impl/bk;

    if-eqz v0, :cond_2

    .line 254
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ao;->e:Lcom/chartboost/sdk/impl/bk;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/bk;->setEnabled(Z)V

    .line 267
    :cond_2
    :goto_0
    iput-boolean p1, p0, Lcom/chartboost/sdk/impl/ao;->j:Z

    .line 268
    return-void

    .line 256
    :cond_3
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ao;->c:Lcom/chartboost/sdk/impl/an;

    if-eqz v0, :cond_4

    .line 257
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ao;->c:Lcom/chartboost/sdk/impl/an;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/an;->clearAnimation()V

    .line 258
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ao;->c:Lcom/chartboost/sdk/impl/an;

    invoke-virtual {v0, v3}, Lcom/chartboost/sdk/impl/an;->setVisibility(I)V

    .line 260
    :cond_4
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ao;->d:Lcom/chartboost/sdk/impl/an;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/an;->clearAnimation()V

    .line 261
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ao;->i:Lcom/chartboost/sdk/impl/ai;

    iget-boolean v0, v0, Lcom/chartboost/sdk/impl/ai;->J:Z

    if-eqz v0, :cond_5

    .line 262
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ao;->g:Lcom/chartboost/sdk/impl/ak;

    invoke-virtual {v0, v3}, Lcom/chartboost/sdk/impl/ak;->setVisibility(I)V

    .line 263
    :cond_5
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ao;->d:Lcom/chartboost/sdk/impl/an;

    invoke-virtual {v0, v3}, Lcom/chartboost/sdk/impl/an;->setVisibility(I)V

    .line 264
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ao;->e:Lcom/chartboost/sdk/impl/bk;

    if-eqz v0, :cond_2

    .line 265
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ao;->e:Lcom/chartboost/sdk/impl/bk;

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/impl/bk;->setEnabled(Z)V

    goto :goto_0
.end method

.method protected a(ZZ)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 212
    sget-object v0, Lcom/chartboost/sdk/impl/ao;->l:Landroid/os/Handler;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/ao;->m:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 213
    sget-object v0, Lcom/chartboost/sdk/impl/ao;->l:Landroid/os/Handler;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/ao;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 215
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ao;->i:Lcom/chartboost/sdk/impl/ai;

    iget-boolean v0, v0, Lcom/chartboost/sdk/impl/ai;->v:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chartboost/sdk/impl/ao;->i:Lcom/chartboost/sdk/impl/ai;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/ai;->o()Z

    move-result v0

    if-nez v0, :cond_1

    .line 242
    :cond_0
    :goto_0
    return-void

    .line 218
    :cond_1
    iget-boolean v0, p0, Lcom/chartboost/sdk/impl/ao;->j:Z

    if-eq p1, v0, :cond_0

    .line 221
    iput-boolean p1, p0, Lcom/chartboost/sdk/impl/ao;->j:Z

    .line 223
    iget-boolean v0, p0, Lcom/chartboost/sdk/impl/ao;->j:Z

    if-eqz v0, :cond_4

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v2, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object v2, v0

    .line 224
    :goto_1
    if-eqz p2, :cond_5

    const-wide/16 v0, 0x64

    :goto_2
    invoke-virtual {v2, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 226
    invoke-virtual {v2, v5}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 227
    iget-boolean v0, p0, Lcom/chartboost/sdk/impl/ao;->k:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/chartboost/sdk/impl/ao;->c:Lcom/chartboost/sdk/impl/an;

    if-eqz v0, :cond_2

    .line 228
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ao;->c:Lcom/chartboost/sdk/impl/an;

    invoke-virtual {v0, v3}, Lcom/chartboost/sdk/impl/an;->setVisibility(I)V

    .line 229
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ao;->c:Lcom/chartboost/sdk/impl/an;

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/impl/an;->startAnimation(Landroid/view/animation/Animation;)V

    .line 230
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ao;->e:Lcom/chartboost/sdk/impl/bk;

    if-eqz v0, :cond_2

    .line 231
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ao;->e:Lcom/chartboost/sdk/impl/bk;

    invoke-virtual {v0, v5}, Lcom/chartboost/sdk/impl/bk;->setEnabled(Z)V

    .line 233
    :cond_2
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ao;->i:Lcom/chartboost/sdk/impl/ai;

    iget-boolean v0, v0, Lcom/chartboost/sdk/impl/ai;->J:Z

    if-eqz v0, :cond_3

    .line 234
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ao;->g:Lcom/chartboost/sdk/impl/ak;

    invoke-virtual {v0, v3}, Lcom/chartboost/sdk/impl/ak;->setVisibility(I)V

    .line 235
    :cond_3
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ao;->d:Lcom/chartboost/sdk/impl/an;

    invoke-virtual {v0, v3}, Lcom/chartboost/sdk/impl/an;->setVisibility(I)V

    .line 236
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ao;->d:Lcom/chartboost/sdk/impl/an;

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/impl/an;->startAnimation(Landroid/view/animation/Animation;)V

    .line 238
    iget-boolean v0, p0, Lcom/chartboost/sdk/impl/ao;->j:Z

    if-eqz v0, :cond_6

    .line 239
    sget-object v0, Lcom/chartboost/sdk/impl/ao;->l:Landroid/os/Handler;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/ao;->m:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 223
    :cond_4
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v4, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object v2, v0

    goto :goto_1

    .line 224
    :cond_5
    const-wide/16 v0, 0xc8

    goto :goto_2

    .line 241
    :cond_6
    sget-object v0, Lcom/chartboost/sdk/impl/ao;->l:Landroid/os/Handler;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/ao;->n:Ljava/lang/Runnable;

    invoke-virtual {v2}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public b()Lcom/chartboost/sdk/impl/bg$a;
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ao;->h:Lcom/chartboost/sdk/impl/bg;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/bg;->b()Lcom/chartboost/sdk/impl/bg$a;

    move-result-object v0

    return-object v0
.end method

.method public b(Z)V
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 289
    if-eqz p1, :cond_2

    const/high16 v0, -0x1000000

    :goto_0
    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/ao;->setBackgroundColor(I)V

    .line 290
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 291
    if-nez p1, :cond_0

    .line 292
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/chartboost/sdk/impl/ao;->h:Lcom/chartboost/sdk/impl/bg;

    invoke-virtual {v2}, Lcom/chartboost/sdk/impl/bg;->getId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 293
    const/16 v1, 0x8

    iget-object v2, p0, Lcom/chartboost/sdk/impl/ao;->h:Lcom/chartboost/sdk/impl/bg;

    invoke-virtual {v2}, Lcom/chartboost/sdk/impl/bg;->getId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 294
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/chartboost/sdk/impl/ao;->h:Lcom/chartboost/sdk/impl/bg;

    invoke-virtual {v2}, Lcom/chartboost/sdk/impl/bg;->getId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 295
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/chartboost/sdk/impl/ao;->h:Lcom/chartboost/sdk/impl/bg;

    invoke-virtual {v2}, Lcom/chartboost/sdk/impl/bg;->getId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 297
    :cond_0
    iget-object v1, p0, Lcom/chartboost/sdk/impl/ao;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 299
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ao;->c:Lcom/chartboost/sdk/impl/an;

    if-eqz v0, :cond_1

    .line 300
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ao;->c:Lcom/chartboost/sdk/impl/an;

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/an;->setGravity(I)V

    .line 301
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ao;->c:Lcom/chartboost/sdk/impl/an;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/an;->requestLayout()V

    .line 303
    :cond_1
    return-void

    .line 289
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Lcom/chartboost/sdk/impl/ak;
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ao;->g:Lcom/chartboost/sdk/impl/ak;

    return-object v0
.end method

.method public c(Z)V
    .locals 2

    .prologue
    .line 333
    iget-object v1, p0, Lcom/chartboost/sdk/impl/ao;->f:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 334
    return-void

    .line 333
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public d()V
    .locals 2

    .prologue
    .line 325
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ao;->c:Lcom/chartboost/sdk/impl/an;

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ao;->c:Lcom/chartboost/sdk/impl/an;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/an;->setVisibility(I)V

    .line 327
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/chartboost/sdk/impl/ao;->k:Z

    .line 328
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ao;->e:Lcom/chartboost/sdk/impl/bk;

    if-eqz v0, :cond_1

    .line 329
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ao;->e:Lcom/chartboost/sdk/impl/bk;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/bk;->setEnabled(Z)V

    .line 330
    :cond_1
    return-void
.end method

.method public e()V
    .locals 4

    .prologue
    .line 385
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ao;->h:Lcom/chartboost/sdk/impl/bg;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/bg;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 387
    sget-object v0, Lcom/chartboost/sdk/impl/ao;->l:Landroid/os/Handler;

    new-instance v1, Lcom/chartboost/sdk/impl/ao$5;

    invoke-direct {v1, p0}, Lcom/chartboost/sdk/impl/ao$5;-><init>(Lcom/chartboost/sdk/impl/ao;)V

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 393
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ao;->h:Lcom/chartboost/sdk/impl/bg;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/bg;->b()Lcom/chartboost/sdk/impl/bg$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/chartboost/sdk/impl/bg$a;->a()V

    .line 394
    sget-object v0, Lcom/chartboost/sdk/impl/ao;->l:Landroid/os/Handler;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/ao;->o:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 395
    sget-object v0, Lcom/chartboost/sdk/impl/ao;->l:Landroid/os/Handler;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/ao;->o:Ljava/lang/Runnable;

    const-wide/16 v2, 0x10

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 396
    return-void
.end method

.method public f()V
    .locals 2

    .prologue
    .line 399
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ao;->h:Lcom/chartboost/sdk/impl/bg;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/bg;->b()Lcom/chartboost/sdk/impl/bg$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/chartboost/sdk/impl/bg$a;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 400
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ao;->i:Lcom/chartboost/sdk/impl/ai;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/ao;->h:Lcom/chartboost/sdk/impl/bg;

    invoke-virtual {v1}, Lcom/chartboost/sdk/impl/bg;->b()Lcom/chartboost/sdk/impl/bg$a;

    move-result-object v1

    invoke-interface {v1}, Lcom/chartboost/sdk/impl/bg$a;->d()I

    move-result v1

    iput v1, v0, Lcom/chartboost/sdk/impl/ai;->t:I

    .line 401
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ao;->h:Lcom/chartboost/sdk/impl/bg;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/bg;->b()Lcom/chartboost/sdk/impl/bg$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/chartboost/sdk/impl/bg$a;->b()V

    .line 404
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ao;->i:Lcom/chartboost/sdk/impl/ai;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/ai;->p()Lcom/chartboost/sdk/impl/ai$a;

    move-result-object v0

    iget-object v0, v0, Lcom/chartboost/sdk/impl/ai$a;->d:Lcom/chartboost/sdk/impl/bk;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/bk;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 405
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ao;->i:Lcom/chartboost/sdk/impl/ai;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/ai;->p()Lcom/chartboost/sdk/impl/ai$a;

    move-result-object v0

    iget-object v0, v0, Lcom/chartboost/sdk/impl/ai$a;->d:Lcom/chartboost/sdk/impl/bk;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/bk;->postInvalidate()V

    .line 407
    :cond_1
    sget-object v0, Lcom/chartboost/sdk/impl/ao;->l:Landroid/os/Handler;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/ao;->o:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 408
    return-void
.end method

.method public g()V
    .locals 2

    .prologue
    .line 411
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ao;->h:Lcom/chartboost/sdk/impl/bg;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/bg;->b()Lcom/chartboost/sdk/impl/bg$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/chartboost/sdk/impl/bg$a;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 412
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ao;->i:Lcom/chartboost/sdk/impl/ai;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/ao;->h:Lcom/chartboost/sdk/impl/bg;

    invoke-virtual {v1}, Lcom/chartboost/sdk/impl/bg;->b()Lcom/chartboost/sdk/impl/bg$a;

    move-result-object v1

    invoke-interface {v1}, Lcom/chartboost/sdk/impl/bg$a;->d()I

    move-result v1

    iput v1, v0, Lcom/chartboost/sdk/impl/ai;->t:I

    .line 413
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ao;->h:Lcom/chartboost/sdk/impl/bg;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/bg;->b()Lcom/chartboost/sdk/impl/bg$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/chartboost/sdk/impl/bg$a;->b()V

    .line 414
    sget-object v0, Lcom/chartboost/sdk/impl/ao;->l:Landroid/os/Handler;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/ao;->o:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 415
    return-void
.end method

.method public h()V
    .locals 2

    .prologue
    .line 419
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ao;->h:Lcom/chartboost/sdk/impl/bg;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/bg;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 421
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ao;->h:Lcom/chartboost/sdk/impl/bg;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/bg;->setVisibility(I)V

    .line 422
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/ao;->invalidate()V

    .line 424
    :cond_0
    return-void
.end method

.method public i()Z
    .locals 1

    .prologue
    .line 427
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ao;->h:Lcom/chartboost/sdk/impl/bg;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/bg;->b()Lcom/chartboost/sdk/impl/bg$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/chartboost/sdk/impl/bg$a;->e()Z

    move-result v0

    return v0
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "arg0"    # Landroid/media/MediaPlayer;

    .prologue
    .line 190
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ao;->i:Lcom/chartboost/sdk/impl/ai;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/ao;->h:Lcom/chartboost/sdk/impl/bg;

    invoke-virtual {v1}, Lcom/chartboost/sdk/impl/bg;->b()Lcom/chartboost/sdk/impl/bg$a;

    move-result-object v1

    invoke-interface {v1}, Lcom/chartboost/sdk/impl/bg$a;->c()I

    move-result v1

    iput v1, v0, Lcom/chartboost/sdk/impl/ai;->t:I

    .line 191
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ao;->i:Lcom/chartboost/sdk/impl/ai;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/ai;->p()Lcom/chartboost/sdk/impl/ai$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ao;->i:Lcom/chartboost/sdk/impl/ai;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/ai;->p()Lcom/chartboost/sdk/impl/ai$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/ai$a;->f()V

    .line 193
    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 172
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 173
    sget-object v0, Lcom/chartboost/sdk/impl/ao;->l:Landroid/os/Handler;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/ao;->o:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 174
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 1
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 203
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ao;->i:Lcom/chartboost/sdk/impl/ai;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/ai;->t()V

    .line 204
    const/4 v0, 0x0

    return v0
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 197
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ao;->i:Lcom/chartboost/sdk/impl/ai;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/ao;->h:Lcom/chartboost/sdk/impl/bg;

    invoke-virtual {v1}, Lcom/chartboost/sdk/impl/bg;->b()Lcom/chartboost/sdk/impl/bg$a;

    move-result-object v1

    invoke-interface {v1}, Lcom/chartboost/sdk/impl/bg$a;->c()I

    move-result v1

    iput v1, v0, Lcom/chartboost/sdk/impl/ai;->u:I

    .line 198
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ao;->i:Lcom/chartboost/sdk/impl/ai;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/ai;->p()Lcom/chartboost/sdk/impl/ai$a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/ai$a;->a(Z)V

    .line 199
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "e"    # Landroid/view/MotionEvent;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 179
    iget-object v1, p0, Lcom/chartboost/sdk/impl/ao;->h:Lcom/chartboost/sdk/impl/bg;

    invoke-virtual {v1}, Lcom/chartboost/sdk/impl/bg;->b()Lcom/chartboost/sdk/impl/bg$a;

    move-result-object v1

    invoke-interface {v1}, Lcom/chartboost/sdk/impl/bg$a;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-nez v1, :cond_1

    .line 180
    iget-object v1, p0, Lcom/chartboost/sdk/impl/ao;->i:Lcom/chartboost/sdk/impl/ai;

    if-eqz v1, :cond_0

    .line 181
    iget-object v1, p0, Lcom/chartboost/sdk/impl/ao;->i:Lcom/chartboost/sdk/impl/ai;

    iget-object v1, v1, Lcom/chartboost/sdk/impl/ai;->s:Ljava/lang/String;

    iget-object v2, p0, Lcom/chartboost/sdk/impl/ao;->i:Lcom/chartboost/sdk/impl/ai;

    iget-object v2, v2, Lcom/chartboost/sdk/impl/ai;->n:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/chartboost/sdk/impl/ao;->j:Z

    invoke-static {v1, v2, v3}, Lcom/chartboost/sdk/Tracking/a;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 182
    :cond_0
    invoke-direct {p0, v0}, Lcom/chartboost/sdk/impl/ao;->d(Z)V

    .line 185
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 160
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 161
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ao;->e:Lcom/chartboost/sdk/impl/bk;

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ao;->e:Lcom/chartboost/sdk/impl/bk;

    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/impl/bk;->setEnabled(Z)V

    .line 164
    :cond_0
    if-eqz p1, :cond_1

    .line 166
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/ao;->a(Z)V

    .line 168
    :cond_1
    return-void
.end method
