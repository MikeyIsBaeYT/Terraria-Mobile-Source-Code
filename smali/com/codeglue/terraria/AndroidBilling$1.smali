.class Lcom/codeglue/terraria/AndroidBilling$1;
.super Ljava/lang/Object;
.source "AndroidBilling.java"

# interfaces
.implements Lcom/android/vending/billing/utils/IabHelper$OnIabSetupFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codeglue/terraria/AndroidBilling;-><init>(Landroid/app/Activity;Ljava/util/List;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codeglue/terraria/AndroidBilling;


# direct methods
.method constructor <init>(Lcom/codeglue/terraria/AndroidBilling;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/codeglue/terraria/AndroidBilling$1;->this$0:Lcom/codeglue/terraria/AndroidBilling;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onIabSetupFinished(Lcom/android/vending/billing/utils/IabResult;)V
    .locals 3
    .param p1, "result"    # Lcom/android/vending/billing/utils/IabResult;

    .prologue
    .line 53
    invoke-virtual {p1}, Lcom/android/vending/billing/utils/IabResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    const-string v0, "Octarine"

    const-string v1, "[Billing] In-app Billing is set up OK"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    iget-object v0, p0, Lcom/codeglue/terraria/AndroidBilling$1;->this$0:Lcom/codeglue/terraria/AndroidBilling;

    invoke-static {v0}, Lcom/codeglue/terraria/AndroidBilling;->access$000(Lcom/codeglue/terraria/AndroidBilling;)V

    .line 63
    :goto_0
    return-void

    .line 61
    :cond_0
    const-string v0, "Octarine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Billing] In-app Billing setup failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
