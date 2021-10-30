.class final Lcom/chartboost/sdk/impl/cq$1;
.super Lcom/chartboost/sdk/impl/dh;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/impl/cq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chartboost/sdk/impl/dh",
        "<[B>;"
    }
.end annotation


# direct methods
.method constructor <init>(I)V
    .locals 0

    .prologue
    .line 235
    invoke-direct {p0, p1}, Lcom/chartboost/sdk/impl/dh;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected a()[B
    .locals 1

    .prologue
    .line 238
    const/16 v0, 0x4000

    new-array v0, v0, [B

    return-object v0
.end method

.method protected synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 235
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/cq$1;->a()[B

    move-result-object v0

    return-object v0
.end method
