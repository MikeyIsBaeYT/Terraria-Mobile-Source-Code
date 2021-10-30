.class public Lcom/codeglue/terraria/AndroidBilling;
.super Ljava/lang/Object;
.source "AndroidBilling.java"


# static fields
.field static final CONSUMABLE:Ljava/lang/String; = "CONSUMABLE"

.field static final ENTITLEMENT:Ljava/lang/String; = "ENTITLEMENT"

.field public static SKU_FULL_GAME:Ljava/lang/String; = null

.field static final TAG:Ljava/lang/String; = "Octarine"


# instance fields
.field activity:Landroid/app/Activity;

.field iabConsumeFinishedListener:Lcom/android/vending/billing/utils/IabHelper$OnConsumeFinishedListener;

.field iabHelper:Lcom/android/vending/billing/utils/IabHelper;

.field iabPurchaseListener:Lcom/android/vending/billing/utils/IabHelper$OnIabPurchaseFinishedListener;

.field iabReceivedInventoryListener:Lcom/android/vending/billing/utils/IabHelper$QueryInventoryFinishedListener;

.field inventory:Lcom/android/vending/billing/utils/Inventory;

.field skuList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    sput-object v0, Lcom/codeglue/terraria/AndroidBilling;->SKU_FULL_GAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/util/List;Ljava/lang/String;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p3, "base64EncodedPublicKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 36
    .local p2, "skuList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 292
    new-instance v0, Lcom/codeglue/terraria/AndroidBilling$2;

    invoke-direct {v0, p0}, Lcom/codeglue/terraria/AndroidBilling$2;-><init>(Lcom/codeglue/terraria/AndroidBilling;)V

    iput-object v0, p0, Lcom/codeglue/terraria/AndroidBilling;->iabPurchaseListener:Lcom/android/vending/billing/utils/IabHelper$OnIabPurchaseFinishedListener;

    .line 322
    new-instance v0, Lcom/codeglue/terraria/AndroidBilling$3;

    invoke-direct {v0, p0}, Lcom/codeglue/terraria/AndroidBilling$3;-><init>(Lcom/codeglue/terraria/AndroidBilling;)V

    iput-object v0, p0, Lcom/codeglue/terraria/AndroidBilling;->iabReceivedInventoryListener:Lcom/android/vending/billing/utils/IabHelper$QueryInventoryFinishedListener;

    .line 350
    new-instance v0, Lcom/codeglue/terraria/AndroidBilling$4;

    invoke-direct {v0, p0}, Lcom/codeglue/terraria/AndroidBilling$4;-><init>(Lcom/codeglue/terraria/AndroidBilling;)V

    iput-object v0, p0, Lcom/codeglue/terraria/AndroidBilling;->iabConsumeFinishedListener:Lcom/android/vending/billing/utils/IabHelper$OnConsumeFinishedListener;

    .line 37
    iput-object p1, p0, Lcom/codeglue/terraria/AndroidBilling;->activity:Landroid/app/Activity;

    .line 38
    sput-object p0, Lcom/codeglue/terraria/AndroidBillingBridge;->billing:Lcom/codeglue/terraria/AndroidBilling;

    .line 40
    iput-object p2, p0, Lcom/codeglue/terraria/AndroidBilling;->skuList:Ljava/util/List;

    .line 41
    new-instance v0, Lcom/android/vending/billing/utils/IabHelper;

    invoke-direct {v0, p1, p3}, Lcom/android/vending/billing/utils/IabHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/codeglue/terraria/AndroidBilling;->iabHelper:Lcom/android/vending/billing/utils/IabHelper;

    .line 47
    sget-object v0, Lcom/codeglue/terraria/OctarineBridge;->activity:Lcom/codeglue/terraria/OctarineActivity;

    const v1, 0x7f0c003e

    invoke-virtual {v0, v1}, Lcom/codeglue/terraria/OctarineActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/codeglue/terraria/AndroidBilling;->SKU_FULL_GAME:Ljava/lang/String;

    .line 49
    iget-object v0, p0, Lcom/codeglue/terraria/AndroidBilling;->iabHelper:Lcom/android/vending/billing/utils/IabHelper;

    new-instance v1, Lcom/codeglue/terraria/AndroidBilling$1;

    invoke-direct {v1, p0}, Lcom/codeglue/terraria/AndroidBilling$1;-><init>(Lcom/codeglue/terraria/AndroidBilling;)V

    invoke-virtual {v0, v1}, Lcom/android/vending/billing/utils/IabHelper;->startSetup(Lcom/android/vending/billing/utils/IabHelper$OnIabSetupFinishedListener;)V

    .line 65
    return-void
.end method

.method private CheckForBoughtGame()V
    .locals 4

    .prologue
    .line 273
    iget-object v2, p0, Lcom/codeglue/terraria/AndroidBilling;->skuList:Ljava/util/List;

    if-nez v2, :cond_1

    .line 275
    const-string v2, "Octarine"

    const-string v3, "[Billing] Can\'t check for bought game yet"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    :cond_0
    return-void

    .line 279
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/codeglue/terraria/AndroidBilling;->skuList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 281
    iget-object v3, p0, Lcom/codeglue/terraria/AndroidBilling;->inventory:Lcom/android/vending/billing/utils/Inventory;

    iget-object v2, p0, Lcom/codeglue/terraria/AndroidBilling;->skuList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Lcom/android/vending/billing/utils/Inventory;->getPurchase(Ljava/lang/String;)Lcom/android/vending/billing/utils/Purchase;

    move-result-object v1

    .line 285
    .local v1, "purchase":Lcom/android/vending/billing/utils/Purchase;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/vending/billing/utils/Purchase;->getSku()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/codeglue/terraria/AndroidBilling;->SKU_FULL_GAME:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 287
    const/4 v2, 0x1

    const-string v3, ""

    invoke-static {v2, v3}, Lcom/codeglue/terraria/OctarineBridge;->nativeUnlockGame(ZLjava/lang/String;)V

    .line 279
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private CheckForUnconsumedConsumables()V
    .locals 4

    .prologue
    .line 255
    iget-object v2, p0, Lcom/codeglue/terraria/AndroidBilling;->skuList:Ljava/util/List;

    if-nez v2, :cond_1

    .line 257
    const-string v2, "Octarine"

    const-string v3, "[Billing] Can\'t check for unconsumed consumables yet"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    :cond_0
    return-void

    .line 261
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/codeglue/terraria/AndroidBilling;->skuList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 263
    iget-object v3, p0, Lcom/codeglue/terraria/AndroidBilling;->inventory:Lcom/android/vending/billing/utils/Inventory;

    iget-object v2, p0, Lcom/codeglue/terraria/AndroidBilling;->skuList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Lcom/android/vending/billing/utils/Inventory;->getPurchase(Ljava/lang/String;)Lcom/android/vending/billing/utils/Purchase;

    move-result-object v1

    .line 264
    .local v1, "purchase":Lcom/android/vending/billing/utils/Purchase;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/vending/billing/utils/Purchase;->getDeveloperPayload()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CONSUMABLE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 266
    invoke-virtual {v1}, Lcom/android/vending/billing/utils/Purchase;->getSku()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/codeglue/terraria/AndroidBilling;->Consume(Ljava/lang/String;)V

    .line 261
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private Consume(Ljava/lang/String;)V
    .locals 4
    .param p1, "sku"    # Ljava/lang/String;

    .prologue
    .line 191
    :try_start_0
    invoke-direct {p0}, Lcom/codeglue/terraria/AndroidBilling;->QueryAllProducts()Lcom/android/vending/billing/utils/Inventory;

    move-result-object v2

    iput-object v2, p0, Lcom/codeglue/terraria/AndroidBilling;->inventory:Lcom/android/vending/billing/utils/Inventory;

    .line 192
    iget-object v2, p0, Lcom/codeglue/terraria/AndroidBilling;->inventory:Lcom/android/vending/billing/utils/Inventory;

    invoke-virtual {v2, p1}, Lcom/android/vending/billing/utils/Inventory;->getPurchase(Ljava/lang/String;)Lcom/android/vending/billing/utils/Purchase;

    move-result-object v1

    .line 193
    .local v1, "purchase":Lcom/android/vending/billing/utils/Purchase;
    if-eqz v1, :cond_0

    .line 195
    iget-object v2, p0, Lcom/codeglue/terraria/AndroidBilling;->iabHelper:Lcom/android/vending/billing/utils/IabHelper;

    iget-object v3, p0, Lcom/codeglue/terraria/AndroidBilling;->iabConsumeFinishedListener:Lcom/android/vending/billing/utils/IabHelper$OnConsumeFinishedListener;

    invoke-virtual {v2, v1, v3}, Lcom/android/vending/billing/utils/IabHelper;->consumeAsync(Lcom/android/vending/billing/utils/Purchase;Lcom/android/vending/billing/utils/IabHelper$OnConsumeFinishedListener;)V

    .line 205
    .end local v1    # "purchase":Lcom/android/vending/billing/utils/Purchase;
    :goto_0
    return-void

    .line 199
    .restart local v1    # "purchase":Lcom/android/vending/billing/utils/Purchase;
    :cond_0
    const-string v2, "Octarine"

    const-string v3, "[Billing] Could not find a product to consume"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 201
    .end local v1    # "purchase":Lcom/android/vending/billing/utils/Purchase;
    :catch_0
    move-exception v0

    .line 203
    .local v0, "ex":Ljava/lang/Exception;
    const-string v2, "Octarine"

    const-string v3, "[Billing] Could not query inventory"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static GetAndroidBillingProduct(Lcom/android/vending/billing/utils/SkuDetails;Z)Lcom/codeglue/terraria/BillingProduct;
    .locals 7
    .param p0, "p"    # Lcom/android/vending/billing/utils/SkuDetails;
    .param p1, "owned"    # Z

    .prologue
    .line 116
    sget-object v3, Lcom/codeglue/terraria/BillingType;->ENTITLEMENT:Lcom/codeglue/terraria/BillingType;

    .line 117
    .local v3, "type":Lcom/codeglue/terraria/BillingType;
    const-string v1, "Octarine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Billing] product type: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/vending/billing/utils/SkuDetails;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    invoke-virtual {p0}, Lcom/android/vending/billing/utils/SkuDetails;->getType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "inapp"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 121
    sget-object v3, Lcom/codeglue/terraria/BillingType;->SUBSCRIPTION:Lcom/codeglue/terraria/BillingType;

    .line 124
    :cond_0
    new-instance v0, Lcom/codeglue/terraria/BillingProduct;

    invoke-virtual {p0}, Lcom/android/vending/billing/utils/SkuDetails;->getSku()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/vending/billing/utils/SkuDetails;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/vending/billing/utils/SkuDetails;->getPrice()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/vending/billing/utils/SkuDetails;->getTitle()Ljava/lang/String;

    move-result-object v5

    move v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/codeglue/terraria/BillingProduct;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/codeglue/terraria/BillingType;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 132
    .local v0, "product":Lcom/codeglue/terraria/BillingProduct;
    return-object v0
.end method

.method private HandleFailedResponse(Ljava/lang/String;Lcom/android/vending/billing/utils/IabResult;)V
    .locals 3
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "result"    # Lcom/android/vending/billing/utils/IabResult;

    .prologue
    .line 219
    const-string v0, "Octarine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/vending/billing/utils/IabResult;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    invoke-virtual {p2}, Lcom/android/vending/billing/utils/IabResult;->getResponse()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 245
    :goto_0
    :pswitch_0
    return-void

    .line 224
    :pswitch_1
    invoke-direct {p0}, Lcom/codeglue/terraria/AndroidBilling;->QueryAllProductsAsync()V

    goto :goto_0

    .line 239
    :pswitch_2
    invoke-direct {p0}, Lcom/codeglue/terraria/AndroidBilling;->QueryAllProductsAsync()V

    goto :goto_0

    .line 220
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private QueryAllProducts()Lcom/android/vending/billing/utils/Inventory;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/vending/billing/utils/IabException;
        }
    .end annotation

    .prologue
    .line 214
    iget-object v0, p0, Lcom/codeglue/terraria/AndroidBilling;->iabHelper:Lcom/android/vending/billing/utils/IabHelper;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/codeglue/terraria/AndroidBilling;->skuList:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/android/vending/billing/utils/IabHelper;->queryInventory(ZLjava/util/List;)Lcom/android/vending/billing/utils/Inventory;

    move-result-object v0

    return-object v0
.end method

.method private QueryAllProductsAsync()V
    .locals 4

    .prologue
    .line 209
    iget-object v0, p0, Lcom/codeglue/terraria/AndroidBilling;->iabHelper:Lcom/android/vending/billing/utils/IabHelper;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/codeglue/terraria/AndroidBilling;->skuList:Ljava/util/List;

    iget-object v3, p0, Lcom/codeglue/terraria/AndroidBilling;->iabReceivedInventoryListener:Lcom/android/vending/billing/utils/IabHelper$QueryInventoryFinishedListener;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/vending/billing/utils/IabHelper;->queryInventoryAsync(ZLjava/util/List;Lcom/android/vending/billing/utils/IabHelper$QueryInventoryFinishedListener;)V

    .line 210
    return-void
.end method

.method static synthetic access$000(Lcom/codeglue/terraria/AndroidBilling;)V
    .locals 0
    .param p0, "x0"    # Lcom/codeglue/terraria/AndroidBilling;

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/codeglue/terraria/AndroidBilling;->QueryAllProductsAsync()V

    return-void
.end method

.method static synthetic access$100(Lcom/codeglue/terraria/AndroidBilling;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/codeglue/terraria/AndroidBilling;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/codeglue/terraria/AndroidBilling;->Consume(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/codeglue/terraria/AndroidBilling;Ljava/lang/String;Lcom/android/vending/billing/utils/IabResult;)V
    .locals 0
    .param p0, "x0"    # Lcom/codeglue/terraria/AndroidBilling;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/android/vending/billing/utils/IabResult;

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Lcom/codeglue/terraria/AndroidBilling;->HandleFailedResponse(Ljava/lang/String;Lcom/android/vending/billing/utils/IabResult;)V

    return-void
.end method

.method static synthetic access$300(Lcom/codeglue/terraria/AndroidBilling;)V
    .locals 0
    .param p0, "x0"    # Lcom/codeglue/terraria/AndroidBilling;

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/codeglue/terraria/AndroidBilling;->CheckForUnconsumedConsumables()V

    return-void
.end method

.method static synthetic access$400(Lcom/codeglue/terraria/AndroidBilling;)V
    .locals 0
    .param p0, "x0"    # Lcom/codeglue/terraria/AndroidBilling;

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/codeglue/terraria/AndroidBilling;->CheckForBoughtGame()V

    return-void
.end method


# virtual methods
.method public GetAllSkuDetails()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/vending/billing/utils/SkuDetails;",
            ">;"
        }
    .end annotation

    .prologue
    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 70
    .local v0, "details":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/vending/billing/utils/SkuDetails;>;"
    iget-object v3, p0, Lcom/codeglue/terraria/AndroidBilling;->skuList:Ljava/util/List;

    if-nez v3, :cond_1

    .line 72
    const-string v3, "Octarine"

    const-string v4, "[Billing] skuList is empty"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :cond_0
    :goto_0
    return-object v0

    .line 76
    :cond_1
    iget-object v3, p0, Lcom/codeglue/terraria/AndroidBilling;->inventory:Lcom/android/vending/billing/utils/Inventory;

    if-nez v3, :cond_2

    .line 78
    const-string v3, "Octarine"

    const-string v4, "[Billing] Inventory not loaded yet"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 82
    :cond_2
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v3, p0, Lcom/codeglue/terraria/AndroidBilling;->skuList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 84
    iget-object v4, p0, Lcom/codeglue/terraria/AndroidBilling;->inventory:Lcom/android/vending/billing/utils/Inventory;

    iget-object v3, p0, Lcom/codeglue/terraria/AndroidBilling;->skuList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Lcom/android/vending/billing/utils/Inventory;->getSkuDetails(Ljava/lang/String;)Lcom/android/vending/billing/utils/SkuDetails;

    move-result-object v2

    .line 85
    .local v2, "sku":Lcom/android/vending/billing/utils/SkuDetails;
    if-nez v2, :cond_3

    .line 82
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 87
    :cond_3
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method public GetJSONProductList()Ljava/lang/String;
    .locals 10

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/codeglue/terraria/AndroidBilling;->GetAllSkuDetails()Ljava/util/ArrayList;

    move-result-object v0

    .line 95
    .local v0, "details":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/vending/billing/utils/SkuDetails;>;"
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 96
    .local v2, "jsonArray":Lorg/json/JSONArray;
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/vending/billing/utils/SkuDetails;

    .line 98
    .local v5, "p":Lcom/android/vending/billing/utils/SkuDetails;
    invoke-virtual {v5}, Lcom/android/vending/billing/utils/SkuDetails;->getSku()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/codeglue/terraria/AndroidBilling;->OwnsSku(Ljava/lang/String;)Z

    move-result v4

    .line 99
    .local v4, "owned":Z
    invoke-static {v5, v4}, Lcom/codeglue/terraria/AndroidBilling;->GetAndroidBillingProduct(Lcom/android/vending/billing/utils/SkuDetails;Z)Lcom/codeglue/terraria/BillingProduct;

    move-result-object v6

    .line 100
    .local v6, "product":Lcom/codeglue/terraria/BillingProduct;
    invoke-virtual {v6}, Lcom/codeglue/terraria/BillingProduct;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 101
    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    .line 102
    .local v3, "jsonResult":Ljava/lang/String;
    const-string v7, "Octarine"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[Billing] JSON: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 105
    .end local v3    # "jsonResult":Ljava/lang/String;
    .end local v4    # "owned":Z
    .end local v5    # "p":Lcom/android/vending/billing/utils/SkuDetails;
    .end local v6    # "product":Lcom/codeglue/terraria/BillingProduct;
    :cond_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    .line 106
    .restart local v3    # "jsonResult":Ljava/lang/String;
    const-string v7, "[\""

    const-string v8, "["

    invoke-virtual {v3, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "\"]"

    const-string v9, "]"

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 108
    const-string v7, "Octarine"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[Billing] JSON: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    return-object v3
.end method

.method public OwnsSku(Ljava/lang/String;)Z
    .locals 2
    .param p1, "sku"    # Ljava/lang/String;

    .prologue
    .line 166
    iget-object v0, p0, Lcom/codeglue/terraria/AndroidBilling;->inventory:Lcom/android/vending/billing/utils/Inventory;

    invoke-virtual {v0, p1}, Lcom/android/vending/billing/utils/Inventory;->hasPurchase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/codeglue/terraria/AndroidBilling;->inventory:Lcom/android/vending/billing/utils/Inventory;

    invoke-virtual {v0, p1}, Lcom/android/vending/billing/utils/Inventory;->getPurchase(Ljava/lang/String;)Lcom/android/vending/billing/utils/Purchase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/vending/billing/utils/Purchase;->getDeveloperPayload()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ENTITLEMENT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 171
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public PurchaseConsumable(Ljava/lang/String;)V
    .locals 7
    .param p1, "sku"    # Ljava/lang/String;

    .prologue
    .line 156
    :try_start_0
    iget-object v0, p0, Lcom/codeglue/terraria/AndroidBilling;->iabHelper:Lcom/android/vending/billing/utils/IabHelper;

    iget-object v1, p0, Lcom/codeglue/terraria/AndroidBilling;->activity:Landroid/app/Activity;

    const/16 v3, 0x2711

    iget-object v4, p0, Lcom/codeglue/terraria/AndroidBilling;->iabPurchaseListener:Lcom/android/vending/billing/utils/IabHelper$OnIabPurchaseFinishedListener;

    const-string v5, "CONSUMABLE"

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/vending/billing/utils/IabHelper;->launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/android/vending/billing/utils/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    :goto_0
    return-void

    .line 158
    :catch_0
    move-exception v6

    .line 160
    .local v6, "isx":Ljava/lang/IllegalStateException;
    const-string v0, "Octarine"

    invoke-virtual {v6}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public PurchaseEntitlement(Ljava/lang/String;)V
    .locals 7
    .param p1, "sku"    # Ljava/lang/String;

    .prologue
    .line 144
    :try_start_0
    iget-object v0, p0, Lcom/codeglue/terraria/AndroidBilling;->iabHelper:Lcom/android/vending/billing/utils/IabHelper;

    iget-object v1, p0, Lcom/codeglue/terraria/AndroidBilling;->activity:Landroid/app/Activity;

    const/16 v3, 0x2711

    iget-object v4, p0, Lcom/codeglue/terraria/AndroidBilling;->iabPurchaseListener:Lcom/android/vending/billing/utils/IabHelper$OnIabPurchaseFinishedListener;

    const-string v5, "ENTITLEMENT"

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/vending/billing/utils/IabHelper;->launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/android/vending/billing/utils/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    :goto_0
    return-void

    .line 146
    :catch_0
    move-exception v6

    .line 148
    .local v6, "isx":Ljava/lang/IllegalStateException;
    const-string v0, "Octarine"

    invoke-virtual {v6}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public QueuePurchaseFullVersion()V
    .locals 1

    .prologue
    .line 137
    const-string v0, "terraria_google_play_store_full_game"

    invoke-virtual {p0, v0}, Lcom/codeglue/terraria/AndroidBilling;->PurchaseEntitlement(Ljava/lang/String;)V

    .line 138
    return-void
.end method

.method public handleActivityResult(IILandroid/content/Intent;)Z
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 184
    iget-object v0, p0, Lcom/codeglue/terraria/AndroidBilling;->iabHelper:Lcom/android/vending/billing/utils/IabHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/vending/billing/utils/IabHelper;->handleActivityResult(IILandroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 376
    iget-object v0, p0, Lcom/codeglue/terraria/AndroidBilling;->iabHelper:Lcom/android/vending/billing/utils/IabHelper;

    invoke-virtual {v0}, Lcom/android/vending/billing/utils/IabHelper;->isIABSetup()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 378
    iget-object v0, p0, Lcom/codeglue/terraria/AndroidBilling;->iabHelper:Lcom/android/vending/billing/utils/IabHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/vending/billing/utils/IabHelper;->handleActivityResult(IILandroid/content/Intent;)Z

    move-result v0

    .line 381
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/codeglue/terraria/AndroidBilling;->iabHelper:Lcom/android/vending/billing/utils/IabHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/codeglue/terraria/AndroidBilling;->iabHelper:Lcom/android/vending/billing/utils/IabHelper;

    invoke-virtual {v0}, Lcom/android/vending/billing/utils/IabHelper;->dispose()V

    .line 250
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/codeglue/terraria/AndroidBilling;->iabHelper:Lcom/android/vending/billing/utils/IabHelper;

    .line 251
    return-void
.end method
