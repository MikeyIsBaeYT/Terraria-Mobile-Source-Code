.class public Lcom/codeglue/terraria/BillingProduct;
.super Ljava/lang/Object;
.source "BillingProduct.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "com.codeglue.terraria.billing"


# instance fields
.field private description:Ljava/lang/String;

.field private isOwned:Z

.field private price:Ljava/lang/String;

.field private product:Lcom/amazon/device/iap/model/Product;

.field private sku:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private type:Lcom/codeglue/terraria/BillingType;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/codeglue/terraria/BillingType;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "sku"    # Ljava/lang/String;
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "type"    # Lcom/codeglue/terraria/BillingType;
    .param p4, "price"    # Ljava/lang/String;
    .param p5, "title"    # Ljava/lang/String;
    .param p6, "owned"    # Z

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/codeglue/terraria/BillingProduct;->sku:Ljava/lang/String;

    .line 28
    iput-object p2, p0, Lcom/codeglue/terraria/BillingProduct;->description:Ljava/lang/String;

    .line 29
    iput-object p3, p0, Lcom/codeglue/terraria/BillingProduct;->type:Lcom/codeglue/terraria/BillingType;

    .line 30
    iput-object p4, p0, Lcom/codeglue/terraria/BillingProduct;->price:Ljava/lang/String;

    .line 31
    iput-object p5, p0, Lcom/codeglue/terraria/BillingProduct;->title:Ljava/lang/String;

    .line 32
    iput-boolean p6, p0, Lcom/codeglue/terraria/BillingProduct;->isOwned:Z

    .line 33
    return-void
.end method


# virtual methods
.method public ToJson()Lorg/json/JSONObject;
    .locals 5

    .prologue
    .line 42
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 45
    .local v0, "jo":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "sku"

    iget-object v3, p0, Lcom/codeglue/terraria/BillingProduct;->sku:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 46
    const-string v2, "description"

    iget-object v3, p0, Lcom/codeglue/terraria/BillingProduct;->description:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 47
    const-string v2, "type"

    iget-object v3, p0, Lcom/codeglue/terraria/BillingProduct;->type:Lcom/codeglue/terraria/BillingType;

    invoke-virtual {v3}, Lcom/codeglue/terraria/BillingType;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 48
    const-string v2, "price"

    iget-object v3, p0, Lcom/codeglue/terraria/BillingProduct;->price:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 49
    const-string v2, "title"

    iget-object v3, p0, Lcom/codeglue/terraria/BillingProduct;->title:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 50
    const-string v2, "owned"

    iget-boolean v3, p0, Lcom/codeglue/terraria/BillingProduct;->isOwned:Z

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    :goto_0
    return-object v0

    .line 52
    :catch_0
    move-exception v1

    .line 54
    .local v1, "jx":Lorg/json/JSONException;
    const-string v2, "com.codeglue.terraria.billing"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not parse product to JSON: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/codeglue/terraria/BillingProduct;->ToJson()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
