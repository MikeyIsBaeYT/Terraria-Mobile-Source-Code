.class public final enum Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/Tracking/CBAnalytics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CBIAPPurchaseInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum AMAZON_PURCHASE_TOKEN:Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;

.field public static final enum AMAZON_USER_ID:Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;

.field public static final enum GOOGLE_PURCHASE_DATA:Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;

.field public static final enum GOOGLE_PURCHASE_SIGNATURE:Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;

.field public static final enum PRODUCT_CURRENCY_CODE:Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;

.field public static final enum PRODUCT_DESCRIPTION:Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;

.field public static final enum PRODUCT_ID:Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;

.field public static final enum PRODUCT_PRICE:Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;

.field public static final enum PRODUCT_TITLE:Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;

.field private static final synthetic a:[Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 137
    new-instance v0, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;

    const-string v1, "PRODUCT_ID"

    invoke-direct {v0, v1, v3}, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;->PRODUCT_ID:Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;

    .line 138
    new-instance v0, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;

    const-string v1, "PRODUCT_TITLE"

    invoke-direct {v0, v1, v4}, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;->PRODUCT_TITLE:Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;

    .line 139
    new-instance v0, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;

    const-string v1, "PRODUCT_DESCRIPTION"

    invoke-direct {v0, v1, v5}, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;->PRODUCT_DESCRIPTION:Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;

    .line 140
    new-instance v0, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;

    const-string v1, "PRODUCT_PRICE"

    invoke-direct {v0, v1, v6}, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;->PRODUCT_PRICE:Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;

    .line 141
    new-instance v0, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;

    const-string v1, "PRODUCT_CURRENCY_CODE"

    invoke-direct {v0, v1, v7}, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;->PRODUCT_CURRENCY_CODE:Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;

    .line 142
    new-instance v0, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;

    const-string v1, "GOOGLE_PURCHASE_DATA"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;->GOOGLE_PURCHASE_DATA:Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;

    .line 143
    new-instance v0, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;

    const-string v1, "GOOGLE_PURCHASE_SIGNATURE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;->GOOGLE_PURCHASE_SIGNATURE:Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;

    .line 144
    new-instance v0, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;

    const-string v1, "AMAZON_PURCHASE_TOKEN"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;->AMAZON_PURCHASE_TOKEN:Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;

    .line 145
    new-instance v0, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;

    const-string v1, "AMAZON_USER_ID"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;->AMAZON_USER_ID:Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;

    .line 136
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;

    sget-object v1, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;->PRODUCT_ID:Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;

    aput-object v1, v0, v3

    sget-object v1, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;->PRODUCT_TITLE:Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;

    aput-object v1, v0, v4

    sget-object v1, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;->PRODUCT_DESCRIPTION:Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;

    aput-object v1, v0, v5

    sget-object v1, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;->PRODUCT_PRICE:Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;

    aput-object v1, v0, v6

    sget-object v1, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;->PRODUCT_CURRENCY_CODE:Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;->GOOGLE_PURCHASE_DATA:Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;->GOOGLE_PURCHASE_SIGNATURE:Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;->AMAZON_PURCHASE_TOKEN:Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;->AMAZON_USER_ID:Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;

    aput-object v2, v0, v1

    sput-object v0, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;->a:[Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 136
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 136
    const-class v0, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;

    return-object v0
.end method

.method public static values()[Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;
    .locals 1

    .prologue
    .line 136
    sget-object v0, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;->a:[Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;

    invoke-virtual {v0}, [Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;

    return-object v0
.end method
