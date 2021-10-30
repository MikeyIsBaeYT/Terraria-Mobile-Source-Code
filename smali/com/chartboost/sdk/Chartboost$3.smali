.class final Lcom/chartboost/sdk/Chartboost$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/Chartboost;->onDestroy(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 540
    iput-object p1, p0, Lcom/chartboost/sdk/Chartboost$3;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 545
    sget-object v0, Lcom/chartboost/sdk/Chartboost;->b:Lcom/chartboost/sdk/Libraries/k;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/chartboost/sdk/Chartboost;->b:Lcom/chartboost/sdk/Libraries/k;

    iget-object v1, p0, Lcom/chartboost/sdk/Chartboost$3;->a:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/Libraries/k;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 546
    :cond_0
    sget-object v0, Lcom/chartboost/sdk/Chartboost;->a:Landroid/os/Handler;

    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->i()Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 547
    new-instance v0, Lcom/chartboost/sdk/Chartboost$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/chartboost/sdk/Chartboost$a;-><init>(Lcom/chartboost/sdk/Chartboost$1;)V

    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->b(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 548
    sget-object v0, Lcom/chartboost/sdk/Chartboost;->a:Landroid/os/Handler;

    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->i()Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 551
    :cond_1
    iget-object v0, p0, Lcom/chartboost/sdk/Chartboost$3;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->b(Landroid/app/Activity;)V

    .line 552
    return-void
.end method
