.class public Lcom/codeglue/terraria/AndroidBillingBridge;
.super Ljava/lang/Object;
.source "AndroidBillingBridge.java"


# static fields
.field public static billing:Lcom/codeglue/terraria/AndroidBilling;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static GetAllProducts()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/codeglue/terraria/AndroidBillingBridge;->billing:Lcom/codeglue/terraria/AndroidBilling;

    invoke-virtual {v0}, Lcom/codeglue/terraria/AndroidBilling;->GetJSONProductList()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static PurchaseConsumable(Ljava/lang/String;)V
    .locals 1
    .param p0, "sku"    # Ljava/lang/String;

    .prologue
    .line 22
    sget-object v0, Lcom/codeglue/terraria/AndroidBillingBridge;->billing:Lcom/codeglue/terraria/AndroidBilling;

    invoke-virtual {v0, p0}, Lcom/codeglue/terraria/AndroidBilling;->PurchaseConsumable(Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method public static PurchaseEntitlement(Ljava/lang/String;)V
    .locals 1
    .param p0, "sku"    # Ljava/lang/String;

    .prologue
    .line 17
    sget-object v0, Lcom/codeglue/terraria/AndroidBillingBridge;->billing:Lcom/codeglue/terraria/AndroidBilling;

    invoke-virtual {v0, p0}, Lcom/codeglue/terraria/AndroidBilling;->PurchaseEntitlement(Ljava/lang/String;)V

    .line 18
    return-void
.end method
