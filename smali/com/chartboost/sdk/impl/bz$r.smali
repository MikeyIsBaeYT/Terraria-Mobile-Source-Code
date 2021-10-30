.class Lcom/chartboost/sdk/impl/bz$r;
.super Lcom/chartboost/sdk/impl/bz$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/impl/bz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "r"
.end annotation


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/impl/cb;)V
    .locals 0

    .prologue
    .line 384
    invoke-direct {p0, p1}, Lcom/chartboost/sdk/impl/bz$c;-><init>(Lcom/chartboost/sdk/impl/cb;)V

    .line 385
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V
    .locals 3

    .prologue
    .line 389
    check-cast p1, Ljava/util/UUID;

    .line 390
    new-instance v0, Lcom/chartboost/sdk/impl/bs;

    invoke-direct {v0}, Lcom/chartboost/sdk/impl/bs;-><init>()V

    .line 391
    const-string v1, "$uuid"

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/chartboost/sdk/impl/bs;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    iget-object v1, p0, Lcom/chartboost/sdk/impl/bz$r;->a:Lcom/chartboost/sdk/impl/cb;

    invoke-interface {v1, v0, p2}, Lcom/chartboost/sdk/impl/cb;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 393
    return-void
.end method
