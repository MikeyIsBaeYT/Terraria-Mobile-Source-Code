.class Lcom/codeglue/terraria/AndroidBilling$3;
.super Ljava/lang/Object;
.source "AndroidBilling.java"

# interfaces
.implements Lcom/android/vending/billing/utils/IabHelper$QueryInventoryFinishedListener;


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
    .line 323
    iput-object p1, p0, Lcom/codeglue/terraria/AndroidBilling$3;->this$0:Lcom/codeglue/terraria/AndroidBilling;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryInventoryFinished(Lcom/android/vending/billing/utils/IabResult;Lcom/android/vending/billing/utils/Inventory;)V
    .locals 2
    .param p1, "result"    # Lcom/android/vending/billing/utils/IabResult;
    .param p2, "inv"    # Lcom/android/vending/billing/utils/Inventory;

    .prologue
    .line 327
    invoke-virtual {p1}, Lcom/android/vending/billing/utils/IabResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 329
    iget-object v0, p0, Lcom/codeglue/terraria/AndroidBilling$3;->this$0:Lcom/codeglue/terraria/AndroidBilling;

    iput-object p2, v0, Lcom/codeglue/terraria/AndroidBilling;->inventory:Lcom/android/vending/billing/utils/Inventory;

    .line 331
    iget-object v0, p0, Lcom/codeglue/terraria/AndroidBilling$3;->this$0:Lcom/codeglue/terraria/AndroidBilling;

    iget-object v0, v0, Lcom/codeglue/terraria/AndroidBilling;->inventory:Lcom/android/vending/billing/utils/Inventory;

    invoke-virtual {v0}, Lcom/android/vending/billing/utils/Inventory;->printSkuMap()V

    .line 332
    iget-object v0, p0, Lcom/codeglue/terraria/AndroidBilling$3;->this$0:Lcom/codeglue/terraria/AndroidBilling;

    iget-object v0, v0, Lcom/codeglue/terraria/AndroidBilling;->inventory:Lcom/android/vending/billing/utils/Inventory;

    invoke-virtual {v0}, Lcom/android/vending/billing/utils/Inventory;->printPurchaseMap()V

    .line 334
    const-string v0, "Octarine"

    const-string v1, "[Billing] Loaded inventory."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    if-eqz p2, :cond_0

    .line 338
    iget-object v0, p0, Lcom/codeglue/terraria/AndroidBilling$3;->this$0:Lcom/codeglue/terraria/AndroidBilling;

    invoke-static {v0}, Lcom/codeglue/terraria/AndroidBilling;->access$300(Lcom/codeglue/terraria/AndroidBilling;)V

    .line 339
    iget-object v0, p0, Lcom/codeglue/terraria/AndroidBilling$3;->this$0:Lcom/codeglue/terraria/AndroidBilling;

    invoke-static {v0}, Lcom/codeglue/terraria/AndroidBilling;->access$400(Lcom/codeglue/terraria/AndroidBilling;)V

    .line 347
    :cond_0
    :goto_0
    return-void

    .line 345
    :cond_1
    iget-object v0, p0, Lcom/codeglue/terraria/AndroidBilling$3;->this$0:Lcom/codeglue/terraria/AndroidBilling;

    const-string v1, "[Billing] Loading inventory failed!"

    invoke-static {v0, v1, p1}, Lcom/codeglue/terraria/AndroidBilling;->access$200(Lcom/codeglue/terraria/AndroidBilling;Ljava/lang/String;Lcom/android/vending/billing/utils/IabResult;)V

    goto :goto_0
.end method
