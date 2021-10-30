.class Lcom/chartboost/sdk/impl/bz$k;
.super Lcom/chartboost/sdk/impl/bz$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/impl/bz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "k"
.end annotation


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/impl/cb;)V
    .locals 0

    .prologue
    .line 318
    invoke-direct {p0, p1}, Lcom/chartboost/sdk/impl/bz$c;-><init>(Lcom/chartboost/sdk/impl/cb;)V

    .line 319
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V
    .locals 4

    .prologue
    .line 323
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bz$k;->a:Lcom/chartboost/sdk/impl/cb;

    new-instance v1, Lcom/chartboost/sdk/impl/bs;

    const-string v2, "$maxKey"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/chartboost/sdk/impl/bs;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1, p2}, Lcom/chartboost/sdk/impl/cb;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 325
    return-void
.end method
