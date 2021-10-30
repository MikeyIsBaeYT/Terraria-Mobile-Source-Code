.class Lcom/chartboost/sdk/impl/bz$n;
.super Lcom/chartboost/sdk/impl/bz$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/impl/bz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "n"
.end annotation


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/impl/cb;)V
    .locals 0

    .prologue
    .line 346
    invoke-direct {p0, p1}, Lcom/chartboost/sdk/impl/bz$c;-><init>(Lcom/chartboost/sdk/impl/cb;)V

    .line 347
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V
    .locals 4

    .prologue
    .line 351
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bz$n;->a:Lcom/chartboost/sdk/impl/cb;

    new-instance v1, Lcom/chartboost/sdk/impl/bs;

    const-string v2, "$oid"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/chartboost/sdk/impl/bs;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1, p2}, Lcom/chartboost/sdk/impl/cb;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 353
    return-void
.end method
