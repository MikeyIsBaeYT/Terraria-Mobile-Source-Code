.class public Lcom/chartboost/sdk/impl/as;
.super Lcom/chartboost/sdk/impl/ar;
.source "SourceFile"


# instance fields
.field private a:Lcom/chartboost/sdk/impl/aw;

.field private b:Landroid/widget/Button;

.field private c:Lcom/chartboost/sdk/impl/bg;

.field private d:Lcom/chartboost/sdk/Libraries/e$a;


# direct methods
.method public constructor <init>(Lcom/chartboost/sdk/impl/aw;Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/chartboost/sdk/impl/ar;-><init>(Lcom/chartboost/sdk/impl/aw;Landroid/content/Context;)V

    .line 34
    iput-object p1, p0, Lcom/chartboost/sdk/impl/as;->a:Lcom/chartboost/sdk/impl/aw;

    .line 36
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/as;->b:Landroid/widget/Button;

    .line 37
    iget-object v0, p0, Lcom/chartboost/sdk/impl/as;->b:Landroid/widget/Button;

    const v1, -0xde5819

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 38
    iget-object v0, p0, Lcom/chartboost/sdk/impl/as;->b:Landroid/widget/Button;

    const-string v1, "Preview"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 39
    iget-object v0, p0, Lcom/chartboost/sdk/impl/as;->b:Landroid/widget/Button;

    new-instance v1, Lcom/chartboost/sdk/impl/as$1;

    invoke-direct {v1, p0}, Lcom/chartboost/sdk/impl/as$1;-><init>(Lcom/chartboost/sdk/impl/as;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    iget-object v0, p0, Lcom/chartboost/sdk/impl/as;->b:Landroid/widget/Button;

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/chartboost/sdk/impl/as;->addView(Landroid/view/View;I)V

    .line 45
    return-void
.end method

.method static synthetic a(Lcom/chartboost/sdk/impl/as;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/chartboost/sdk/impl/as;->c()V

    return-void
.end method

.method static synthetic b(Lcom/chartboost/sdk/impl/as;)Lcom/chartboost/sdk/impl/bg;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/chartboost/sdk/impl/as;->c:Lcom/chartboost/sdk/impl/bg;

    return-object v0
.end method

.method private c()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 54
    const-string v0, "play the video"

    invoke-static {p0, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lcom/chartboost/sdk/impl/as;->c:Lcom/chartboost/sdk/impl/bg;

    if-nez v0, :cond_0

    .line 57
    new-instance v0, Lcom/chartboost/sdk/impl/bg;

    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/as;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/chartboost/sdk/impl/bg;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/as;->c:Lcom/chartboost/sdk/impl/bg;

    .line 58
    iget-object v0, p0, Lcom/chartboost/sdk/impl/as;->a:Lcom/chartboost/sdk/impl/aw;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/aw;->e()Lcom/chartboost/sdk/f$a;

    move-result-object v0

    iget-object v1, p0, Lcom/chartboost/sdk/impl/as;->c:Lcom/chartboost/sdk/impl/bg;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Lcom/chartboost/sdk/f$a;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 60
    iget-object v0, p0, Lcom/chartboost/sdk/impl/as;->c:Lcom/chartboost/sdk/impl/bg;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/bg;->setVisibility(I)V

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/as;->c:Lcom/chartboost/sdk/impl/bg;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/bg;->b()Lcom/chartboost/sdk/impl/bg$a;

    move-result-object v0

    new-instance v1, Lcom/chartboost/sdk/impl/as$2;

    invoke-direct {v1, p0}, Lcom/chartboost/sdk/impl/as$2;-><init>(Lcom/chartboost/sdk/impl/as;)V

    invoke-interface {v0, v1}, Lcom/chartboost/sdk/impl/bg$a;->a(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 71
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/chartboost/sdk/impl/as;->c:Lcom/chartboost/sdk/impl/bg;

    invoke-static {v0, v1}, Lcom/chartboost/sdk/impl/bh;->a(ZLandroid/view/View;)V

    .line 72
    iget-object v0, p0, Lcom/chartboost/sdk/impl/as;->c:Lcom/chartboost/sdk/impl/bg;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/bg;->b()Lcom/chartboost/sdk/impl/bg$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/chartboost/sdk/impl/bg$a;->a()V

    .line 73
    return-void
.end method


# virtual methods
.method public a(Lcom/chartboost/sdk/Libraries/e$a;I)V
    .locals 0

    .prologue
    .line 49
    invoke-super {p0, p1, p2}, Lcom/chartboost/sdk/impl/ar;->a(Lcom/chartboost/sdk/Libraries/e$a;I)V

    .line 50
    iput-object p1, p0, Lcom/chartboost/sdk/impl/as;->d:Lcom/chartboost/sdk/Libraries/e$a;

    .line 51
    return-void
.end method
