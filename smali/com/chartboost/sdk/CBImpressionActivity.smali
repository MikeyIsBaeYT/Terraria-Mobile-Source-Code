.class public final Lcom/chartboost/sdk/CBImpressionActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 85
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    :goto_0
    return-void

    .line 88
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/high16 v1, 0x1000000

    const/4 v2, 0x0

    .line 28
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    invoke-static {}, Lcom/chartboost/sdk/impl/bg;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    invoke-virtual {p0}, Lcom/chartboost/sdk/CBImpressionActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 35
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/CBImpressionActivity;->requestWindowFeature(I)Z

    .line 38
    invoke-virtual {p0}, Lcom/chartboost/sdk/CBImpressionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "paramFullscreen"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 39
    if-eqz v0, :cond_1

    .line 40
    invoke-virtual {p0}, Lcom/chartboost/sdk/CBImpressionActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 42
    :cond_1
    invoke-virtual {p0}, Lcom/chartboost/sdk/CBImpressionActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 43
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/CBImpressionActivity;->setContentView(Landroid/view/View;)V

    .line 44
    invoke-static {p0}, Lcom/chartboost/sdk/Chartboost;->a(Lcom/chartboost/sdk/CBImpressionActivity;)V

    .line 47
    invoke-static {p0}, Lcom/chartboost/sdk/Chartboost;->createSurfaceView(Landroid/app/Activity;)V

    .line 48
    invoke-static {}, Lcom/chartboost/sdk/impl/ba;->d()V

    .line 49
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 79
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 80
    invoke-static {p0}, Lcom/chartboost/sdk/Chartboost;->b(Landroid/app/Activity;)V

    .line 81
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 67
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 68
    invoke-static {p0}, Lcom/chartboost/sdk/Libraries/k;->a(Landroid/app/Activity;)Lcom/chartboost/sdk/Libraries/k;

    move-result-object v0

    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->b(Lcom/chartboost/sdk/Libraries/k;)V

    .line 69
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 61
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 62
    invoke-static {p0}, Lcom/chartboost/sdk/Libraries/k;->a(Landroid/app/Activity;)Lcom/chartboost/sdk/Libraries/k;

    move-result-object v0

    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->a(Lcom/chartboost/sdk/Libraries/k;)V

    .line 63
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 53
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 55
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->a()V

    .line 56
    invoke-static {p0}, Lcom/chartboost/sdk/Chartboost;->a(Landroid/app/Activity;)V

    .line 57
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 73
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 74
    invoke-static {p0}, Lcom/chartboost/sdk/Libraries/k;->a(Landroid/app/Activity;)Lcom/chartboost/sdk/Libraries/k;

    move-result-object v0

    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->c(Lcom/chartboost/sdk/Libraries/k;)V

    .line 75
    return-void
.end method
