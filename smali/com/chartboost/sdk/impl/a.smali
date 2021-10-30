.class public Lcom/chartboost/sdk/impl/a;
.super Lcom/chartboost/sdk/impl/s;
.source "SourceFile"


# instance fields
.field private b:Landroid/content/Intent;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/chartboost/sdk/impl/s;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/chartboost/sdk/impl/i;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/chartboost/sdk/impl/s;-><init>(Lcom/chartboost/sdk/impl/i;)V

    .line 40
    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/chartboost/sdk/impl/a;->b:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 57
    const-string v0, "User needs to (re)enter credentials."

    .line 59
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/chartboost/sdk/impl/s;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
