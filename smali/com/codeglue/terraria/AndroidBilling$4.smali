.class Lcom/codeglue/terraria/AndroidBilling$4;
.super Ljava/lang/Object;
.source "AndroidBilling.java"

# interfaces
.implements Lcom/android/vending/billing/utils/IabHelper$OnConsumeFinishedListener;


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
    .line 351
    iput-object p1, p0, Lcom/codeglue/terraria/AndroidBilling$4;->this$0:Lcom/codeglue/terraria/AndroidBilling;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConsumeFinished(Lcom/android/vending/billing/utils/Purchase;Lcom/android/vending/billing/utils/IabResult;)V
    .locals 3
    .param p1, "purchase"    # Lcom/android/vending/billing/utils/Purchase;
    .param p2, "result"    # Lcom/android/vending/billing/utils/IabResult;

    .prologue
    .line 355
    invoke-virtual {p2}, Lcom/android/vending/billing/utils/IabResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 357
    const-string v0, "Octarine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Billing] Successfully consumed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/vending/billing/utils/Purchase;->getSku()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    invoke-virtual {p1}, Lcom/android/vending/billing/utils/Purchase;->getDeveloperPayload()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CONSUMABLE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 364
    :cond_0
    iget-object v0, p0, Lcom/codeglue/terraria/AndroidBilling$4;->this$0:Lcom/codeglue/terraria/AndroidBilling;

    invoke-static {v0}, Lcom/codeglue/terraria/AndroidBilling;->access$000(Lcom/codeglue/terraria/AndroidBilling;)V

    .line 370
    :goto_0
    return-void

    .line 368
    :cond_1
    iget-object v0, p0, Lcom/codeglue/terraria/AndroidBilling$4;->this$0:Lcom/codeglue/terraria/AndroidBilling;

    const-string v1, "[Billing] Consume failed"

    invoke-static {v0, v1, p2}, Lcom/codeglue/terraria/AndroidBilling;->access$200(Lcom/codeglue/terraria/AndroidBilling;Ljava/lang/String;Lcom/android/vending/billing/utils/IabResult;)V

    goto :goto_0
.end method
