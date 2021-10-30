.class public Lcom/chartboost/sdk/impl/bg;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chartboost/sdk/impl/bg$a;
    }
.end annotation


# instance fields
.field private a:Landroid/view/View;

.field private b:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 39
    invoke-direct {p0}, Lcom/chartboost/sdk/impl/bg;->d()V

    .line 40
    return-void
.end method

.method public static a(Landroid/app/Activity;)Z
    .locals 1

    .prologue
    .line 81
    invoke-static {}, Lcom/chartboost/sdk/impl/bg;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 82
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->getImpressionsUseActivities()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    const/4 v0, 0x1

    .line 90
    :goto_0
    return v0

    .line 85
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isHardwareAccelerated()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 86
    :catch_0
    move-exception v0

    .line 90
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c()Z
    .locals 2

    .prologue
    .line 95
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 48
    invoke-static {}, Lcom/chartboost/sdk/impl/bg;->c()Z

    move-result v0

    iput-boolean v0, p0, Lcom/chartboost/sdk/impl/bg;->b:Z

    .line 49
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->getImpressionsUseActivities()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/bg;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 50
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/bg;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/bg;->a(Landroid/app/Activity;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/chartboost/sdk/impl/bg;->b:Z

    .line 51
    :cond_0
    const-string v1, "VideoInit"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Choosing "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v0, p0, Lcom/chartboost/sdk/impl/bg;->b:Z

    if-eqz v0, :cond_2

    const-string v0, "texture"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " solution for video playback"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    iget-boolean v0, p0, Lcom/chartboost/sdk/impl/bg;->b:Z

    if-eqz v0, :cond_3

    .line 53
    new-instance v0, Lcom/chartboost/sdk/impl/bf;

    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/bg;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/chartboost/sdk/impl/bf;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/bg;->a:Landroid/view/View;

    .line 56
    :goto_1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bg;->a:Landroid/view/View;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/chartboost/sdk/impl/bg;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 58
    iget-boolean v0, p0, Lcom/chartboost/sdk/impl/bg;->b:Z

    if-nez v0, :cond_1

    .line 59
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bg;->a:Landroid/view/View;

    check-cast v0, Landroid/view/SurfaceView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setZOrderMediaOverlay(Z)V

    .line 62
    :cond_1
    return-void

    .line 51
    :cond_2
    const-string v0, "surface"

    goto :goto_0

    .line 55
    :cond_3
    new-instance v0, Lcom/chartboost/sdk/impl/be;

    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/bg;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/chartboost/sdk/impl/be;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/bg;->a:Landroid/view/View;

    goto :goto_1
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/chartboost/sdk/impl/bg;->b:Z

    return v0
.end method

.method public b()Lcom/chartboost/sdk/impl/bg$a;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bg;->a:Landroid/view/View;

    check-cast v0, Lcom/chartboost/sdk/impl/bg$a;

    return-object v0
.end method

.method public onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 74
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 75
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/bg;->b()Lcom/chartboost/sdk/impl/bg$a;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/chartboost/sdk/impl/bg$a;->a(II)V

    .line 76
    return-void
.end method
