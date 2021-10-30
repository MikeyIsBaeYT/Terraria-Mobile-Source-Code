.class Lcom/chartboost/sdk/impl/ao$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/impl/ao;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/chartboost/sdk/impl/ao;

.field private b:I


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/impl/ao;)V
    .locals 1

    .prologue
    .line 336
    iput-object p1, p0, Lcom/chartboost/sdk/impl/ao$4;->a:Lcom/chartboost/sdk/impl/ao;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 337
    const/4 v0, 0x0

    iput v0, p0, Lcom/chartboost/sdk/impl/ao$4;->b:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 340
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ao$4;->a:Lcom/chartboost/sdk/impl/ao;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/ao;->f(Lcom/chartboost/sdk/impl/ao;)Lcom/chartboost/sdk/impl/bg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/bg;->b()Lcom/chartboost/sdk/impl/bg$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/chartboost/sdk/impl/bg$a;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 341
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ao$4;->a:Lcom/chartboost/sdk/impl/ao;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/ao;->f(Lcom/chartboost/sdk/impl/ao;)Lcom/chartboost/sdk/impl/bg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/bg;->b()Lcom/chartboost/sdk/impl/bg$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/chartboost/sdk/impl/bg$a;->d()I

    move-result v0

    .line 342
    if-lez v0, :cond_0

    .line 343
    iget-object v1, p0, Lcom/chartboost/sdk/impl/ao$4;->a:Lcom/chartboost/sdk/impl/ao;

    invoke-static {v1}, Lcom/chartboost/sdk/impl/ao;->a(Lcom/chartboost/sdk/impl/ao;)Lcom/chartboost/sdk/impl/ai;

    move-result-object v1

    iput v0, v1, Lcom/chartboost/sdk/impl/ai;->t:I

    .line 344
    iget-object v1, p0, Lcom/chartboost/sdk/impl/ao$4;->a:Lcom/chartboost/sdk/impl/ao;

    invoke-static {v1}, Lcom/chartboost/sdk/impl/ao;->a(Lcom/chartboost/sdk/impl/ao;)Lcom/chartboost/sdk/impl/ai;

    move-result-object v1

    iget v1, v1, Lcom/chartboost/sdk/impl/ai;->t:I

    int-to-float v1, v1

    .line 345
    iget-object v2, p0, Lcom/chartboost/sdk/impl/ao$4;->a:Lcom/chartboost/sdk/impl/ao;

    invoke-static {v2}, Lcom/chartboost/sdk/impl/ao;->f(Lcom/chartboost/sdk/impl/ao;)Lcom/chartboost/sdk/impl/bg;

    move-result-object v2

    invoke-virtual {v2}, Lcom/chartboost/sdk/impl/bg;->b()Lcom/chartboost/sdk/impl/bg$a;

    move-result-object v2

    invoke-interface {v2}, Lcom/chartboost/sdk/impl/bg$a;->e()Z

    move-result v2

    if-eqz v2, :cond_0

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr v1, v2

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/chartboost/sdk/impl/ao$4;->a:Lcom/chartboost/sdk/impl/ao;

    invoke-static {v1}, Lcom/chartboost/sdk/impl/ao;->a(Lcom/chartboost/sdk/impl/ao;)Lcom/chartboost/sdk/impl/ai;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chartboost/sdk/impl/ai;->s()Z

    move-result v1

    if-nez v1, :cond_0

    .line 346
    iget-object v1, p0, Lcom/chartboost/sdk/impl/ao$4;->a:Lcom/chartboost/sdk/impl/ao;

    invoke-static {v1}, Lcom/chartboost/sdk/impl/ao;->a(Lcom/chartboost/sdk/impl/ao;)Lcom/chartboost/sdk/impl/ai;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chartboost/sdk/impl/ai;->q()V

    .line 347
    iget-object v1, p0, Lcom/chartboost/sdk/impl/ao$4;->a:Lcom/chartboost/sdk/impl/ao;

    invoke-static {v1}, Lcom/chartboost/sdk/impl/ao;->a(Lcom/chartboost/sdk/impl/ao;)Lcom/chartboost/sdk/impl/ai;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/chartboost/sdk/impl/ai;->a(Z)V

    .line 350
    :cond_0
    int-to-float v1, v0

    iget-object v2, p0, Lcom/chartboost/sdk/impl/ao$4;->a:Lcom/chartboost/sdk/impl/ao;

    invoke-static {v2}, Lcom/chartboost/sdk/impl/ao;->f(Lcom/chartboost/sdk/impl/ao;)Lcom/chartboost/sdk/impl/bg;

    move-result-object v2

    invoke-virtual {v2}, Lcom/chartboost/sdk/impl/bg;->b()Lcom/chartboost/sdk/impl/bg$a;

    move-result-object v2

    invoke-interface {v2}, Lcom/chartboost/sdk/impl/bg$a;->c()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 351
    iget-object v2, p0, Lcom/chartboost/sdk/impl/ao$4;->a:Lcom/chartboost/sdk/impl/ao;

    invoke-static {v2}, Lcom/chartboost/sdk/impl/ao;->a(Lcom/chartboost/sdk/impl/ao;)Lcom/chartboost/sdk/impl/ai;

    move-result-object v2

    iget-boolean v2, v2, Lcom/chartboost/sdk/impl/ai;->J:Z

    if-eqz v2, :cond_1

    .line 352
    iget-object v2, p0, Lcom/chartboost/sdk/impl/ao$4;->a:Lcom/chartboost/sdk/impl/ao;

    invoke-static {v2}, Lcom/chartboost/sdk/impl/ao;->c(Lcom/chartboost/sdk/impl/ao;)Lcom/chartboost/sdk/impl/ak;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/chartboost/sdk/impl/ak;->a(F)V

    .line 353
    :cond_1
    div-int/lit16 v0, v0, 0x3e8

    .line 355
    iget v1, p0, Lcom/chartboost/sdk/impl/ao$4;->b:I

    if-eq v1, v0, :cond_2

    .line 356
    iput v0, p0, Lcom/chartboost/sdk/impl/ao$4;->b:I

    .line 357
    div-int/lit8 v1, v0, 0x3c

    .line 358
    rem-int/lit8 v0, v0, 0x3c

    .line 359
    iget-object v2, p0, Lcom/chartboost/sdk/impl/ao$4;->a:Lcom/chartboost/sdk/impl/ao;

    invoke-static {v2}, Lcom/chartboost/sdk/impl/ao;->g(Lcom/chartboost/sdk/impl/ao;)Landroid/widget/TextView;

    move-result-object v2

    const-string v3, "%02d:%02d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 363
    :cond_2
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ao$4;->a:Lcom/chartboost/sdk/impl/ao;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/ao;->a(Lcom/chartboost/sdk/impl/ao;)Lcom/chartboost/sdk/impl/ai;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/ai;->p()Lcom/chartboost/sdk/impl/ai$a;

    move-result-object v0

    .line 364
    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/ai$a;->g()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 365
    invoke-virtual {v0, v6}, Lcom/chartboost/sdk/impl/ai$a;->b(Z)Lcom/chartboost/sdk/impl/bk;

    move-result-object v0

    .line 366
    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/bk;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_3

    .line 367
    iget-object v1, p0, Lcom/chartboost/sdk/impl/ao$4;->a:Lcom/chartboost/sdk/impl/ao;

    invoke-static {v1}, Lcom/chartboost/sdk/impl/ao;->a(Lcom/chartboost/sdk/impl/ao;)Lcom/chartboost/sdk/impl/ai;

    move-result-object v1

    invoke-virtual {v1, v6, v0}, Lcom/chartboost/sdk/impl/ai;->a(ZLandroid/view/View;)V

    .line 368
    invoke-virtual {v0, v6}, Lcom/chartboost/sdk/impl/bk;->setEnabled(Z)V

    .line 372
    :cond_3
    invoke-static {}, Lcom/chartboost/sdk/impl/ao;->j()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/chartboost/sdk/impl/ao$4;->a:Lcom/chartboost/sdk/impl/ao;

    invoke-static {v1}, Lcom/chartboost/sdk/impl/ao;->h(Lcom/chartboost/sdk/impl/ao;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 373
    invoke-static {}, Lcom/chartboost/sdk/impl/ao;->j()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/chartboost/sdk/impl/ao$4;->a:Lcom/chartboost/sdk/impl/ao;

    invoke-static {v1}, Lcom/chartboost/sdk/impl/ao;->h(Lcom/chartboost/sdk/impl/ao;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x10

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 374
    return-void
.end method
