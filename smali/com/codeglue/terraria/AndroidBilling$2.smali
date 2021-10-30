.class Lcom/codeglue/terraria/AndroidBilling$2;
.super Ljava/lang/Object;
.source "AndroidBilling.java"

# interfaces
.implements Lcom/android/vending/billing/utils/IabHelper$OnIabPurchaseFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codeglue/terraria/AndroidBilling;
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
    .line 293
    iput-object p1, p0, Lcom/codeglue/terraria/AndroidBilling$2;->this$0:Lcom/codeglue/terraria/AndroidBilling;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onIabPurchaseFinished(Lcom/android/vending/billing/utils/IabResult;Lcom/android/vending/billing/utils/Purchase;)V
    .locals 3
    .param p1, "result"    # Lcom/android/vending/billing/utils/IabResult;
    .param p2, "purchase"    # Lcom/android/vending/billing/utils/Purchase;

    .prologue
    .line 297
    invoke-virtual {p1}, Lcom/android/vending/billing/utils/IabResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 299
    const-string v0, "Octarine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Billing] Successfully bought "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/vending/billing/utils/Purchase;->getSku()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    invoke-virtual {p2}, Lcom/android/vending/billing/utils/Purchase;->getSku()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/codeglue/terraria/OctarineBridge;->nativeOnPurchase(Ljava/lang/String;)V

    .line 303
    invoke-virtual {p2}, Lcom/android/vending/billing/utils/Purchase;->getDeveloperPayload()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ENTITLEMENT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 305
    iget-object v0, p0, Lcom/codeglue/terraria/AndroidBilling$2;->this$0:Lcom/codeglue/terraria/AndroidBilling;

    invoke-static {v0}, Lcom/codeglue/terraria/AndroidBilling;->access$000(Lcom/codeglue/terraria/AndroidBilling;)V

    .line 319
    :cond_0
    :goto_0
    return-void

    .line 307
    :cond_1
    invoke-virtual {p2}, Lcom/android/vending/billing/utils/Purchase;->getDeveloperPayload()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CONSUMABLE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/codeglue/terraria/AndroidBilling$2;->this$0:Lcom/codeglue/terraria/AndroidBilling;

    invoke-virtual {p2}, Lcom/android/vending/billing/utils/Purchase;->getSku()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/codeglue/terraria/AndroidBilling;->access$100(Lcom/codeglue/terraria/AndroidBilling;Ljava/lang/String;)V

    goto :goto_0

    .line 314
    :cond_2
    const-string v0, "Octarine"

    const-string v1, "[Billing] Failed purchase!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    const-string v0, "FAILED"

    invoke-static {v0}, Lcom/codeglue/terraria/OctarineBridge;->nativeOnPurchase(Ljava/lang/String;)V

    .line 317
    iget-object v0, p0, Lcom/codeglue/terraria/AndroidBilling$2;->this$0:Lcom/codeglue/terraria/AndroidBilling;

    const-string v1, "[Billing] Purchase failed"

    invoke-static {v0, v1, p1}, Lcom/codeglue/terraria/AndroidBilling;->access$200(Lcom/codeglue/terraria/AndroidBilling;Ljava/lang/String;Lcom/android/vending/billing/utils/IabResult;)V

    goto :goto_0
.end method
