.class public Lcom/chartboost/sdk/impl/ai;
.super Lcom/chartboost/sdk/impl/ah;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chartboost/sdk/impl/ai$2;,
        Lcom/chartboost/sdk/impl/ai$a;,
        Lcom/chartboost/sdk/impl/ai$b;
    }
.end annotation


# instance fields
.field protected A:I

.field protected B:Lcom/chartboost/sdk/Libraries/j;

.field protected C:Lcom/chartboost/sdk/Libraries/j;

.field protected D:Lcom/chartboost/sdk/Libraries/j;

.field protected E:Lcom/chartboost/sdk/Libraries/j;

.field protected F:Lcom/chartboost/sdk/Libraries/j;

.field protected G:Lcom/chartboost/sdk/Libraries/j;

.field protected H:Lcom/chartboost/sdk/Libraries/j;

.field protected I:Lcom/chartboost/sdk/Libraries/j;

.field protected J:Z

.field protected K:Z

.field protected L:Z

.field private M:Z

.field private N:Z

.field private O:Z

.field private P:Z

.field private Q:Z

.field protected p:Lcom/chartboost/sdk/impl/ai$b;

.field protected q:I

.field protected r:Ljava/lang/String;

.field protected s:Ljava/lang/String;

.field protected t:I

.field protected u:I

.field protected v:Z

.field protected w:Z

.field protected x:Z

.field protected y:Z

.field protected z:Z


# direct methods
.method public constructor <init>(Lcom/chartboost/sdk/Model/a;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 521
    invoke-direct {p0, p1}, Lcom/chartboost/sdk/impl/ah;-><init>(Lcom/chartboost/sdk/Model/a;)V

    .line 39
    sget-object v0, Lcom/chartboost/sdk/impl/ai$b;->a:Lcom/chartboost/sdk/impl/ai$b;

    iput-object v0, p0, Lcom/chartboost/sdk/impl/ai;->p:Lcom/chartboost/sdk/impl/ai$b;

    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/chartboost/sdk/impl/ai;->M:Z

    .line 45
    iput-boolean v1, p0, Lcom/chartboost/sdk/impl/ai;->N:Z

    .line 46
    iput-boolean v1, p0, Lcom/chartboost/sdk/impl/ai;->O:Z

    .line 47
    iput v1, p0, Lcom/chartboost/sdk/impl/ai;->t:I

    .line 48
    iput v1, p0, Lcom/chartboost/sdk/impl/ai;->u:I

    .line 49
    iput-boolean v1, p0, Lcom/chartboost/sdk/impl/ai;->P:Z

    .line 50
    iput-boolean v1, p0, Lcom/chartboost/sdk/impl/ai;->Q:Z

    .line 57
    iput-boolean v1, p0, Lcom/chartboost/sdk/impl/ai;->z:Z

    .line 58
    iput v1, p0, Lcom/chartboost/sdk/impl/ai;->A:I

    .line 69
    iput-boolean v1, p0, Lcom/chartboost/sdk/impl/ai;->J:Z

    .line 71
    iput-boolean v1, p0, Lcom/chartboost/sdk/impl/ai;->K:Z

    .line 72
    iput-boolean v1, p0, Lcom/chartboost/sdk/impl/ai;->L:Z

    .line 523
    sget-object v0, Lcom/chartboost/sdk/impl/ai$b;->a:Lcom/chartboost/sdk/impl/ai$b;

    iput-object v0, p0, Lcom/chartboost/sdk/impl/ai;->p:Lcom/chartboost/sdk/impl/ai$b;

    .line 525
    new-instance v0, Lcom/chartboost/sdk/Libraries/j;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/Libraries/j;-><init>(Lcom/chartboost/sdk/f;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/ai;->B:Lcom/chartboost/sdk/Libraries/j;

    .line 526
    new-instance v0, Lcom/chartboost/sdk/Libraries/j;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/Libraries/j;-><init>(Lcom/chartboost/sdk/f;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/ai;->C:Lcom/chartboost/sdk/Libraries/j;

    .line 527
    new-instance v0, Lcom/chartboost/sdk/Libraries/j;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/Libraries/j;-><init>(Lcom/chartboost/sdk/f;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/ai;->D:Lcom/chartboost/sdk/Libraries/j;

    .line 528
    new-instance v0, Lcom/chartboost/sdk/Libraries/j;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/Libraries/j;-><init>(Lcom/chartboost/sdk/f;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/ai;->E:Lcom/chartboost/sdk/Libraries/j;

    .line 529
    new-instance v0, Lcom/chartboost/sdk/Libraries/j;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/Libraries/j;-><init>(Lcom/chartboost/sdk/f;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/ai;->F:Lcom/chartboost/sdk/Libraries/j;

    .line 530
    new-instance v0, Lcom/chartboost/sdk/Libraries/j;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/Libraries/j;-><init>(Lcom/chartboost/sdk/f;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/ai;->G:Lcom/chartboost/sdk/Libraries/j;

    .line 531
    new-instance v0, Lcom/chartboost/sdk/Libraries/j;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/Libraries/j;-><init>(Lcom/chartboost/sdk/f;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/ai;->H:Lcom/chartboost/sdk/Libraries/j;

    .line 532
    new-instance v0, Lcom/chartboost/sdk/Libraries/j;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/Libraries/j;-><init>(Lcom/chartboost/sdk/f;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/ai;->I:Lcom/chartboost/sdk/Libraries/j;

    .line 534
    iput v1, p0, Lcom/chartboost/sdk/impl/ai;->q:I

    .line 535
    return-void
.end method

.method static synthetic a(Lcom/chartboost/sdk/impl/ai;)Lcom/chartboost/sdk/Model/a;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai;->f:Lcom/chartboost/sdk/Model/a;

    return-object v0
.end method

.method static synthetic a(Lcom/chartboost/sdk/impl/ai;Landroid/view/View;Ljava/lang/Runnable;J)V
    .locals 1

    .prologue
    .line 27
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/chartboost/sdk/impl/ai;->a(Landroid/view/View;Ljava/lang/Runnable;J)V

    return-void
.end method

.method static synthetic a(Lcom/chartboost/sdk/impl/ai;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V
    .locals 0

    .prologue
    .line 27
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/impl/ai;->a(Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    return-void
.end method

.method static synthetic b(Lcom/chartboost/sdk/impl/ai;)Lcom/chartboost/sdk/Model/a;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai;->f:Lcom/chartboost/sdk/Model/a;

    return-object v0
.end method

.method static synthetic b(Lcom/chartboost/sdk/impl/ai;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V
    .locals 0

    .prologue
    .line 27
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/impl/ai;->a(Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    return-void
.end method

.method static synthetic c(Lcom/chartboost/sdk/impl/ai;)Lcom/chartboost/sdk/Model/a;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai;->f:Lcom/chartboost/sdk/Model/a;

    return-object v0
.end method

.method static synthetic d(Lcom/chartboost/sdk/impl/ai;)Lcom/chartboost/sdk/Model/a;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai;->f:Lcom/chartboost/sdk/Model/a;

    return-object v0
.end method

.method static synthetic e(Lcom/chartboost/sdk/impl/ai;)Lcom/chartboost/sdk/Model/a;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai;->f:Lcom/chartboost/sdk/Model/a;

    return-object v0
.end method

.method static synthetic f(Lcom/chartboost/sdk/impl/ai;)Lcom/chartboost/sdk/Model/a;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai;->f:Lcom/chartboost/sdk/Model/a;

    return-object v0
.end method

.method static synthetic g(Lcom/chartboost/sdk/impl/ai;)Lcom/chartboost/sdk/Model/a;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai;->f:Lcom/chartboost/sdk/Model/a;

    return-object v0
.end method

.method static synthetic h(Lcom/chartboost/sdk/impl/ai;)Lcom/chartboost/sdk/Libraries/e$a;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai;->e:Lcom/chartboost/sdk/Libraries/e$a;

    return-object v0
.end method

.method static synthetic i(Lcom/chartboost/sdk/impl/ai;)Lcom/chartboost/sdk/Libraries/e$a;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai;->e:Lcom/chartboost/sdk/Libraries/e$a;

    return-object v0
.end method

.method static synthetic j(Lcom/chartboost/sdk/impl/ai;)Z
    .locals 1

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/chartboost/sdk/impl/ai;->Q:Z

    return v0
.end method

.method static synthetic k(Lcom/chartboost/sdk/impl/ai;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/chartboost/sdk/impl/ai;->w()V

    return-void
.end method

.method static synthetic l(Lcom/chartboost/sdk/impl/ai;)Lcom/chartboost/sdk/Model/a;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai;->f:Lcom/chartboost/sdk/Model/a;

    return-object v0
.end method

.method static synthetic m(Lcom/chartboost/sdk/impl/ai;)Lcom/chartboost/sdk/Model/a;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai;->f:Lcom/chartboost/sdk/Model/a;

    return-object v0
.end method

.method static synthetic n(Lcom/chartboost/sdk/impl/ai;)Lcom/chartboost/sdk/Model/a;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai;->f:Lcom/chartboost/sdk/Model/a;

    return-object v0
.end method

.method static synthetic o(Lcom/chartboost/sdk/impl/ai;)Lcom/chartboost/sdk/Model/a;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai;->f:Lcom/chartboost/sdk/Model/a;

    return-object v0
.end method

.method static synthetic p(Lcom/chartboost/sdk/impl/ai;)Lcom/chartboost/sdk/Model/a;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai;->f:Lcom/chartboost/sdk/Model/a;

    return-object v0
.end method

.method static synthetic q(Lcom/chartboost/sdk/impl/ai;)Lcom/chartboost/sdk/Model/a;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai;->f:Lcom/chartboost/sdk/Model/a;

    return-object v0
.end method

.method static synthetic r(Lcom/chartboost/sdk/impl/ai;)Lcom/chartboost/sdk/Model/a;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai;->f:Lcom/chartboost/sdk/Model/a;

    return-object v0
.end method

.method static synthetic s(Lcom/chartboost/sdk/impl/ai;)Lcom/chartboost/sdk/Libraries/e$a;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai;->e:Lcom/chartboost/sdk/Libraries/e$a;

    return-object v0
.end method

.method static synthetic t(Lcom/chartboost/sdk/impl/ai;)Lcom/chartboost/sdk/Model/a;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai;->f:Lcom/chartboost/sdk/Model/a;

    return-object v0
.end method

.method static synthetic u(Lcom/chartboost/sdk/impl/ai;)V
    .locals 0

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/ai;->h()V

    return-void
.end method

.method static synthetic v(Lcom/chartboost/sdk/impl/ai;)Lcom/chartboost/sdk/Model/a;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai;->f:Lcom/chartboost/sdk/Model/a;

    return-object v0
.end method

.method private w()V
    .locals 2

    .prologue
    .line 615
    invoke-static {}, Lcom/chartboost/sdk/Libraries/h;->c()Lcom/chartboost/sdk/Libraries/h;

    move-result-object v0

    iget-object v1, p0, Lcom/chartboost/sdk/impl/ai;->f:Lcom/chartboost/sdk/Model/a;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/Libraries/h;->b(Ljava/lang/String;)V

    .line 616
    return-void
.end method

.method static synthetic w(Lcom/chartboost/sdk/impl/ai;)V
    .locals 0

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/ai;->h()V

    return-void
.end method

.method private x()V
    .locals 7

    .prologue
    const/high16 v6, 0x447a0000    # 1000.0f

    .line 619
    iget v0, p0, Lcom/chartboost/sdk/impl/ai;->t:I

    int-to-float v0, v0

    .line 620
    iget v1, p0, Lcom/chartboost/sdk/impl/ai;->u:I

    int-to-float v1, v1

    .line 621
    new-instance v2, Lcom/chartboost/sdk/impl/az;

    const-string v3, "/api/video-complete"

    invoke-direct {v2, v3}, Lcom/chartboost/sdk/impl/az;-><init>(Ljava/lang/String;)V

    .line 622
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/chartboost/sdk/impl/az;->b(Lcom/chartboost/sdk/impl/az$c;)V

    .line 623
    const-string v3, "location"

    iget-object v4, p0, Lcom/chartboost/sdk/impl/ai;->f:Lcom/chartboost/sdk/Model/a;

    iget-object v4, v4, Lcom/chartboost/sdk/Model/a;->d:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/chartboost/sdk/impl/az;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 624
    const-string v3, "reward"

    iget-object v4, p0, Lcom/chartboost/sdk/impl/ai;->f:Lcom/chartboost/sdk/Model/a;

    invoke-virtual {v4}, Lcom/chartboost/sdk/Model/a;->w()Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v4

    const-string v5, "reward"

    invoke-virtual {v4, v5}, Lcom/chartboost/sdk/Libraries/e$a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/chartboost/sdk/impl/az;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 625
    const-string v3, "currency-name"

    iget-object v4, p0, Lcom/chartboost/sdk/impl/ai;->f:Lcom/chartboost/sdk/Model/a;

    invoke-virtual {v4}, Lcom/chartboost/sdk/Model/a;->w()Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v4

    const-string v5, "currency-name"

    invoke-virtual {v4, v5}, Lcom/chartboost/sdk/Libraries/e$a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/chartboost/sdk/impl/az;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 626
    const-string v3, "ad_id"

    iget-object v4, p0, Lcom/chartboost/sdk/impl/ai;->f:Lcom/chartboost/sdk/Model/a;

    invoke-virtual {v4}, Lcom/chartboost/sdk/Model/a;->p()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/chartboost/sdk/impl/az;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 627
    const-string v3, "total_time"

    div-float/2addr v1, v6

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lcom/chartboost/sdk/impl/az;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 628
    const-string v1, "playback_time"

    div-float/2addr v0, v6

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lcom/chartboost/sdk/impl/az;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 629
    const-string v0, "force_close"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/chartboost/sdk/impl/az;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 631
    invoke-static {}, Lcom/chartboost/sdk/Libraries/h;->c()Lcom/chartboost/sdk/Libraries/h;

    move-result-object v0

    iget-object v1, p0, Lcom/chartboost/sdk/impl/ai;->f:Lcom/chartboost/sdk/Model/a;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Lcom/chartboost/sdk/impl/az;->t()Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/chartboost/sdk/Libraries/h;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/e$a;)Ljava/io/File;

    .line 632
    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    .prologue
    .line 740
    iput-boolean p1, p0, Lcom/chartboost/sdk/impl/ai;->P:Z

    .line 741
    return-void
.end method

.method public a(Lcom/chartboost/sdk/Libraries/e$a;)Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 636
    invoke-super {p0, p1}, Lcom/chartboost/sdk/impl/ah;->a(Lcom/chartboost/sdk/Libraries/e$a;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 665
    :goto_0
    return v1

    .line 639
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai;->e:Lcom/chartboost/sdk/Libraries/e$a;

    const-string v3, "video-landscape"

    invoke-virtual {v0, v3}, Lcom/chartboost/sdk/Libraries/e$a;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai;->e:Lcom/chartboost/sdk/Libraries/e$a;

    const-string v3, "replay-landscape"

    invoke-virtual {v0, v3}, Lcom/chartboost/sdk/Libraries/e$a;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 640
    :cond_1
    iput-boolean v1, p0, Lcom/chartboost/sdk/impl/ai;->j:Z

    .line 642
    :cond_2
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai;->B:Lcom/chartboost/sdk/Libraries/j;

    const-string v3, "replay-landscape"

    invoke-virtual {v0, v3}, Lcom/chartboost/sdk/Libraries/j;->a(Ljava/lang/String;)V

    .line 643
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai;->C:Lcom/chartboost/sdk/Libraries/j;

    const-string v3, "replay-portrait"

    invoke-virtual {v0, v3}, Lcom/chartboost/sdk/Libraries/j;->a(Ljava/lang/String;)V

    .line 644
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai;->F:Lcom/chartboost/sdk/Libraries/j;

    const-string v3, "video-click-button"

    invoke-virtual {v0, v3}, Lcom/chartboost/sdk/Libraries/j;->a(Ljava/lang/String;)V

    .line 645
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai;->G:Lcom/chartboost/sdk/Libraries/j;

    const-string v3, "post-video-reward-icon"

    invoke-virtual {v0, v3}, Lcom/chartboost/sdk/Libraries/j;->a(Ljava/lang/String;)V

    .line 646
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai;->H:Lcom/chartboost/sdk/Libraries/j;

    const-string v3, "post-video-button"

    invoke-virtual {v0, v3}, Lcom/chartboost/sdk/Libraries/j;->a(Ljava/lang/String;)V

    .line 647
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai;->D:Lcom/chartboost/sdk/Libraries/j;

    const-string v3, "video-confirmation-button"

    invoke-virtual {v0, v3}, Lcom/chartboost/sdk/Libraries/j;->a(Ljava/lang/String;)V

    .line 648
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai;->E:Lcom/chartboost/sdk/Libraries/j;

    const-string v3, "video-confirmation-icon"

    invoke-virtual {v0, v3}, Lcom/chartboost/sdk/Libraries/j;->a(Ljava/lang/String;)V

    .line 649
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai;->I:Lcom/chartboost/sdk/Libraries/j;

    const-string v3, "post-video-reward-icon"

    invoke-virtual {v0, v3}, Lcom/chartboost/sdk/Libraries/j;->a(Ljava/lang/String;)V

    .line 651
    const-string v0, "ux"

    invoke-virtual {p1, v0}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v0

    const-string v3, "video-controls-togglable"

    invoke-virtual {v0, v3}, Lcom/chartboost/sdk/Libraries/e$a;->i(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/chartboost/sdk/impl/ai;->v:Z

    .line 652
    const-string v0, "fullscreen"

    invoke-virtual {p1, v0}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/e$a;->b()Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/chartboost/sdk/impl/ai;->K:Z

    .line 653
    const-string v0, "preroll_popup_fullscreen"

    invoke-virtual {p1, v0}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/e$a;->b()Z

    move-result v0

    if-eqz v0, :cond_7

    :goto_2
    iput-boolean v1, p0, Lcom/chartboost/sdk/impl/ai;->L:Z

    .line 655
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai;->f:Lcom/chartboost/sdk/Model/a;

    iget-object v0, v0, Lcom/chartboost/sdk/Model/a;->e:Lcom/chartboost/sdk/Model/a$d;

    sget-object v1, Lcom/chartboost/sdk/Model/a$d;->c:Lcom/chartboost/sdk/Model/a$d;

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai;->m:Lcom/chartboost/sdk/Libraries/e$a;

    const-string v1, "post-video-toaster"

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v0

    const-string v1, "title"

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/Libraries/e$a;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai;->m:Lcom/chartboost/sdk/Libraries/e$a;

    const-string v1, "post-video-toaster"

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v0

    const-string v1, "tagline"

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/Libraries/e$a;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 656
    iput-boolean v2, p0, Lcom/chartboost/sdk/impl/ai;->x:Z

    .line 657
    :cond_3
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai;->f:Lcom/chartboost/sdk/Model/a;

    iget-object v0, v0, Lcom/chartboost/sdk/Model/a;->e:Lcom/chartboost/sdk/Model/a$d;

    sget-object v1, Lcom/chartboost/sdk/Model/a$d;->c:Lcom/chartboost/sdk/Model/a$d;

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai;->m:Lcom/chartboost/sdk/Libraries/e$a;

    const-string v1, "confirmation"

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v0

    const-string v1, "text"

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/Libraries/e$a;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai;->m:Lcom/chartboost/sdk/Libraries/e$a;

    const-string v1, "confirmation"

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v0

    const-string v1, "color"

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/Libraries/e$a;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 658
    iput-boolean v2, p0, Lcom/chartboost/sdk/impl/ai;->w:Z

    .line 659
    :cond_4
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai;->f:Lcom/chartboost/sdk/Model/a;

    iget-object v0, v0, Lcom/chartboost/sdk/Model/a;->e:Lcom/chartboost/sdk/Model/a$d;

    sget-object v1, Lcom/chartboost/sdk/Model/a$d;->c:Lcom/chartboost/sdk/Model/a$d;

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai;->m:Lcom/chartboost/sdk/Libraries/e$a;

    const-string v1, "post-video-reward-toaster"

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/Libraries/e$a;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 660
    iput-boolean v2, p0, Lcom/chartboost/sdk/impl/ai;->y:Z

    :cond_5
    move v1, v2

    .line 665
    goto/16 :goto_0

    .line 652
    :cond_6
    const-string v0, "fullscreen"

    invoke-virtual {p1, v0}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/e$a;->m()Z

    move-result v0

    goto/16 :goto_1

    .line 653
    :cond_7
    const-string v0, "preroll_popup_fullscreen"

    invoke-virtual {p1, v0}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/e$a;->m()Z

    move-result v1

    goto/16 :goto_2
.end method

.method protected b(Landroid/content/Context;)Lcom/chartboost/sdk/f$a;
    .locals 2

    .prologue
    .line 577
    new-instance v0, Lcom/chartboost/sdk/impl/ai$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/chartboost/sdk/impl/ai$a;-><init>(Lcom/chartboost/sdk/impl/ai;Landroid/content/Context;Lcom/chartboost/sdk/impl/ai$1;)V

    return-object v0
.end method

.method public d()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 685
    invoke-super {p0}, Lcom/chartboost/sdk/impl/ah;->d()V

    .line 686
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai;->B:Lcom/chartboost/sdk/Libraries/j;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/j;->d()V

    .line 687
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai;->C:Lcom/chartboost/sdk/Libraries/j;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/j;->d()V

    .line 688
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai;->F:Lcom/chartboost/sdk/Libraries/j;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/j;->d()V

    .line 689
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai;->G:Lcom/chartboost/sdk/Libraries/j;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/j;->d()V

    .line 690
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai;->H:Lcom/chartboost/sdk/Libraries/j;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/j;->d()V

    .line 691
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai;->D:Lcom/chartboost/sdk/Libraries/j;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/j;->d()V

    .line 692
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai;->E:Lcom/chartboost/sdk/Libraries/j;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/j;->d()V

    .line 693
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai;->I:Lcom/chartboost/sdk/Libraries/j;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/j;->d()V

    .line 694
    iput-object v1, p0, Lcom/chartboost/sdk/impl/ai;->B:Lcom/chartboost/sdk/Libraries/j;

    .line 695
    iput-object v1, p0, Lcom/chartboost/sdk/impl/ai;->C:Lcom/chartboost/sdk/Libraries/j;

    .line 696
    iput-object v1, p0, Lcom/chartboost/sdk/impl/ai;->F:Lcom/chartboost/sdk/Libraries/j;

    .line 697
    iput-object v1, p0, Lcom/chartboost/sdk/impl/ai;->G:Lcom/chartboost/sdk/Libraries/j;

    .line 698
    iput-object v1, p0, Lcom/chartboost/sdk/impl/ai;->H:Lcom/chartboost/sdk/Libraries/j;

    .line 699
    iput-object v1, p0, Lcom/chartboost/sdk/impl/ai;->D:Lcom/chartboost/sdk/Libraries/j;

    .line 700
    iput-object v1, p0, Lcom/chartboost/sdk/impl/ai;->E:Lcom/chartboost/sdk/Libraries/j;

    .line 701
    iput-object v1, p0, Lcom/chartboost/sdk/impl/ai;->I:Lcom/chartboost/sdk/Libraries/j;

    .line 702
    return-void
.end method

.method public synthetic e()Lcom/chartboost/sdk/f$a;
    .locals 1

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/ai;->p()Lcom/chartboost/sdk/impl/ai$a;

    move-result-object v0

    return-object v0
.end method

.method protected i()V
    .locals 1

    .prologue
    .line 671
    iget-boolean v0, p0, Lcom/chartboost/sdk/impl/ai;->w:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai;->D:Lcom/chartboost/sdk/Libraries/j;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/j;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai;->E:Lcom/chartboost/sdk/Libraries/j;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/j;->e()Z

    move-result v0

    if-nez v0, :cond_1

    .line 673
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/chartboost/sdk/impl/ai;->w:Z

    .line 676
    :cond_1
    iget-boolean v0, p0, Lcom/chartboost/sdk/impl/ai;->M:Z

    if-eqz v0, :cond_2

    .line 677
    invoke-super {p0}, Lcom/chartboost/sdk/impl/ah;->i()V

    .line 681
    :goto_0
    return-void

    .line 679
    :cond_2
    sget-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->ERROR_DISPLAYING_VIEW:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/ai;->a(Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    goto :goto_0
.end method

.method public j()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 582
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/ai;->p()Lcom/chartboost/sdk/impl/ai$a;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/impl/ai$a;->b(Z)Lcom/chartboost/sdk/impl/bk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/bk;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/ai;->p()Lcom/chartboost/sdk/impl/ai$a;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/impl/ai$a;->b(Z)Lcom/chartboost/sdk/impl/bk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/bk;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 585
    :cond_0
    :goto_0
    return v2

    .line 584
    :cond_1
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/ai;->p()Lcom/chartboost/sdk/impl/ai$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/ai$a;->e()V

    goto :goto_0
.end method

.method public k()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 590
    invoke-super {p0}, Lcom/chartboost/sdk/impl/ah;->k()V

    .line 591
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai;->p:Lcom/chartboost/sdk/impl/ai$b;

    sget-object v1, Lcom/chartboost/sdk/impl/ai$b;->b:Lcom/chartboost/sdk/impl/ai$b;

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/chartboost/sdk/impl/ai;->N:Z

    if-eqz v0, :cond_0

    .line 592
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/ai;->p()Lcom/chartboost/sdk/impl/ai$a;

    move-result-object v0

    invoke-static {v0}, Lcom/chartboost/sdk/impl/ai$a;->b(Lcom/chartboost/sdk/impl/ai$a;)Lcom/chartboost/sdk/impl/ao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/ao;->b()Lcom/chartboost/sdk/impl/bg$a;

    move-result-object v0

    iget v1, p0, Lcom/chartboost/sdk/impl/ai;->t:I

    invoke-interface {v0, v1}, Lcom/chartboost/sdk/impl/bg$a;->a(I)V

    .line 593
    iget-boolean v0, p0, Lcom/chartboost/sdk/impl/ai;->O:Z

    if-nez v0, :cond_0

    .line 594
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/ai;->p()Lcom/chartboost/sdk/impl/ai$a;

    move-result-object v0

    invoke-static {v0}, Lcom/chartboost/sdk/impl/ai$a;->b(Lcom/chartboost/sdk/impl/ai$a;)Lcom/chartboost/sdk/impl/ao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/ao;->e()V

    .line 596
    :cond_0
    iput-boolean v2, p0, Lcom/chartboost/sdk/impl/ai;->O:Z

    .line 597
    iput-boolean v2, p0, Lcom/chartboost/sdk/impl/ai;->N:Z

    .line 599
    return-void
.end method

.method public l()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 603
    invoke-super {p0}, Lcom/chartboost/sdk/impl/ah;->l()V

    .line 604
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai;->p:Lcom/chartboost/sdk/impl/ai$b;

    sget-object v1, Lcom/chartboost/sdk/impl/ai$b;->b:Lcom/chartboost/sdk/impl/ai$b;

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/chartboost/sdk/impl/ai;->N:Z

    if-nez v0, :cond_1

    .line 605
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/ai;->p()Lcom/chartboost/sdk/impl/ai$a;

    move-result-object v0

    invoke-static {v0}, Lcom/chartboost/sdk/impl/ai$a;->b(Lcom/chartboost/sdk/impl/ai$a;)Lcom/chartboost/sdk/impl/ao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/ao;->i()Z

    move-result v0

    if-nez v0, :cond_0

    .line 606
    iput-boolean v2, p0, Lcom/chartboost/sdk/impl/ai;->O:Z

    .line 607
    :cond_0
    iput-boolean v2, p0, Lcom/chartboost/sdk/impl/ai;->N:Z

    .line 608
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/ai;->p()Lcom/chartboost/sdk/impl/ai$a;

    move-result-object v0

    invoke-static {v0}, Lcom/chartboost/sdk/impl/ai$a;->b(Lcom/chartboost/sdk/impl/ai$a;)Lcom/chartboost/sdk/impl/ao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/ao;->g()V

    .line 609
    iget v0, p0, Lcom/chartboost/sdk/impl/ai;->q:I

    if-ge v0, v2, :cond_1

    iget-boolean v0, p0, Lcom/chartboost/sdk/impl/ai;->P:Z

    if-eqz v0, :cond_1

    .line 610
    invoke-direct {p0}, Lcom/chartboost/sdk/impl/ai;->x()V

    .line 612
    :cond_1
    return-void
.end method

.method public m()Z
    .locals 2

    .prologue
    .line 538
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai;->f:Lcom/chartboost/sdk/Model/a;

    iget-object v0, v0, Lcom/chartboost/sdk/Model/a;->e:Lcom/chartboost/sdk/Model/a$d;

    sget-object v1, Lcom/chartboost/sdk/Model/a$d;->b:Lcom/chartboost/sdk/Model/a$d;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public n()V
    .locals 4

    .prologue
    .line 544
    new-instance v0, Lcom/chartboost/sdk/impl/bl$a;

    invoke-direct {v0}, Lcom/chartboost/sdk/impl/bl$a;-><init>()V

    .line 545
    iget-object v1, p0, Lcom/chartboost/sdk/impl/ai;->m:Lcom/chartboost/sdk/Libraries/e$a;

    const-string v2, "cancel-popup"

    invoke-virtual {v1, v2}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v1

    const-string v2, "title"

    invoke-virtual {v1, v2}, Lcom/chartboost/sdk/Libraries/e$a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/bl$a;->a(Ljava/lang/String;)Lcom/chartboost/sdk/impl/bl$a;

    move-result-object v1

    iget-object v2, p0, Lcom/chartboost/sdk/impl/ai;->m:Lcom/chartboost/sdk/Libraries/e$a;

    const-string v3, "cancel-popup"

    invoke-virtual {v2, v3}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v2

    const-string v3, "text"

    invoke-virtual {v2, v3}, Lcom/chartboost/sdk/Libraries/e$a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/chartboost/sdk/impl/bl$a;->b(Ljava/lang/String;)Lcom/chartboost/sdk/impl/bl$a;

    move-result-object v1

    iget-object v2, p0, Lcom/chartboost/sdk/impl/ai;->m:Lcom/chartboost/sdk/Libraries/e$a;

    const-string v3, "cancel-popup"

    invoke-virtual {v2, v3}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v2

    const-string v3, "confirm"

    invoke-virtual {v2, v3}, Lcom/chartboost/sdk/Libraries/e$a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/chartboost/sdk/impl/bl$a;->d(Ljava/lang/String;)Lcom/chartboost/sdk/impl/bl$a;

    move-result-object v1

    iget-object v2, p0, Lcom/chartboost/sdk/impl/ai;->m:Lcom/chartboost/sdk/Libraries/e$a;

    const-string v3, "cancel-popup"

    invoke-virtual {v2, v3}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v2

    const-string v3, "cancel"

    invoke-virtual {v2, v3}, Lcom/chartboost/sdk/Libraries/e$a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/chartboost/sdk/impl/bl$a;->c(Ljava/lang/String;)Lcom/chartboost/sdk/impl/bl$a;

    .line 549
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/ai;->p()Lcom/chartboost/sdk/impl/ai$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chartboost/sdk/impl/ai$a;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/chartboost/sdk/impl/ai$1;

    invoke-direct {v2, p0}, Lcom/chartboost/sdk/impl/ai$1;-><init>(Lcom/chartboost/sdk/impl/ai;)V

    invoke-virtual {v0, v1, v2}, Lcom/chartboost/sdk/impl/bl$a;->a(Landroid/content/Context;Lcom/chartboost/sdk/impl/bl$b;)Lcom/chartboost/sdk/impl/bl;

    .line 573
    return-void
.end method

.method public o()Z
    .locals 2

    .prologue
    .line 705
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai;->p:Lcom/chartboost/sdk/impl/ai$b;

    sget-object v1, Lcom/chartboost/sdk/impl/ai$b;->b:Lcom/chartboost/sdk/impl/ai$b;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public p()Lcom/chartboost/sdk/impl/ai$a;
    .locals 1

    .prologue
    .line 710
    invoke-super {p0}, Lcom/chartboost/sdk/impl/ah;->e()Lcom/chartboost/sdk/f$a;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/impl/ai$a;

    return-object v0
.end method

.method protected q()V
    .locals 1

    .prologue
    .line 714
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai;->f:Lcom/chartboost/sdk/Model/a;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Model/a;->r()V

    .line 715
    return-void
.end method

.method protected r()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 719
    iget-object v2, p0, Lcom/chartboost/sdk/impl/ai;->p:Lcom/chartboost/sdk/impl/ai$b;

    sget-object v3, Lcom/chartboost/sdk/impl/ai$b;->c:Lcom/chartboost/sdk/impl/ai$b;

    if-ne v2, v3, :cond_1

    .line 732
    :cond_0
    :goto_0
    return v0

    .line 722
    :cond_1
    invoke-static {}, Lcom/chartboost/sdk/Libraries/CBUtility;->c()Lcom/chartboost/sdk/Libraries/f;

    move-result-object v2

    invoke-virtual {v2}, Lcom/chartboost/sdk/Libraries/f;->b()Z

    move-result v2

    .line 725
    iget-object v3, p0, Lcom/chartboost/sdk/impl/ai;->p:Lcom/chartboost/sdk/impl/ai$b;

    sget-object v4, Lcom/chartboost/sdk/impl/ai$b;->a:Lcom/chartboost/sdk/impl/ai$b;

    if-ne v3, v4, :cond_3

    .line 726
    iget-boolean v3, p0, Lcom/chartboost/sdk/impl/ai;->L:Z

    if-nez v3, :cond_2

    if-eqz v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    .line 729
    :cond_3
    iget-object v3, p0, Lcom/chartboost/sdk/impl/ai;->p:Lcom/chartboost/sdk/impl/ai$b;

    sget-object v4, Lcom/chartboost/sdk/impl/ai$b;->b:Lcom/chartboost/sdk/impl/ai$b;

    if-ne v3, v4, :cond_5

    .line 730
    iget-boolean v3, p0, Lcom/chartboost/sdk/impl/ai;->K:Z

    if-nez v3, :cond_4

    if-eqz v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0

    .line 732
    :cond_5
    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/chartboost/sdk/impl/ai;->p:Lcom/chartboost/sdk/impl/ai$b;

    sget-object v3, Lcom/chartboost/sdk/impl/ai$b;->c:Lcom/chartboost/sdk/impl/ai$b;

    if-eq v2, v3, :cond_6

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_6
    move v1, v0

    goto :goto_1
.end method

.method public s()Z
    .locals 1

    .prologue
    .line 736
    iget-boolean v0, p0, Lcom/chartboost/sdk/impl/ai;->P:Z

    return v0
.end method

.method public t()V
    .locals 1

    .prologue
    .line 752
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/chartboost/sdk/impl/ai;->Q:Z

    .line 754
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai;->s:Ljava/lang/String;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/bd;->b(Ljava/lang/String;)V

    .line 755
    sget-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->ERROR_PLAYING_VIDEO:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/ai;->a(Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    .line 756
    return-void
.end method

.method public u()I
    .locals 1

    .prologue
    .line 760
    iget v0, p0, Lcom/chartboost/sdk/impl/ai;->u:I

    return v0
.end method

.method public v()I
    .locals 1

    .prologue
    .line 764
    iget v0, p0, Lcom/chartboost/sdk/impl/ai;->t:I

    return v0
.end method
