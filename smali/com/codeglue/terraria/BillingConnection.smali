.class Lcom/codeglue/terraria/BillingConnection;
.super Ljava/lang/Object;
.source "Billing.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codeglue/terraria/BillingConnection$vladean;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    return-void
.end method


# virtual methods
.method public QueryPurchases()V
    .locals 0

    .prologue
    .line 163
    return-void
.end method

.method QueuePurchaseFullVersion()V
    .locals 0

    .prologue
    .line 334
    return-void
.end method

.method public isFullVersion()Lcom/codeglue/terraria/BillingConnection$vladean;
    .locals 1

    .prologue
    .line 168
    sget-object v0, Lcom/codeglue/terraria/BillingConnection$vladean;->ERROR:Lcom/codeglue/terraria/BillingConnection$vladean;

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 367
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 375
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 87
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 60
    return-void
.end method
