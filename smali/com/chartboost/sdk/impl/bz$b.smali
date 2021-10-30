.class Lcom/chartboost/sdk/impl/bz$b;
.super Lcom/chartboost/sdk/impl/bz$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/impl/bz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/impl/cb;)V
    .locals 0

    .prologue
    .line 181
    invoke-direct {p0, p1}, Lcom/chartboost/sdk/impl/bz$c;-><init>(Lcom/chartboost/sdk/impl/cb;)V

    .line 182
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V
    .locals 3

    .prologue
    .line 186
    check-cast p1, Lcom/chartboost/sdk/impl/cv;

    .line 187
    new-instance v0, Lcom/chartboost/sdk/impl/bs;

    invoke-direct {v0}, Lcom/chartboost/sdk/impl/bs;-><init>()V

    .line 188
    const-string v1, "$code"

    invoke-virtual {p1}, Lcom/chartboost/sdk/impl/cv;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/chartboost/sdk/impl/bs;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    const-string v1, "$scope"

    invoke-virtual {p1}, Lcom/chartboost/sdk/impl/cv;->b()Lcom/chartboost/sdk/impl/cj;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/chartboost/sdk/impl/bs;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    iget-object v1, p0, Lcom/chartboost/sdk/impl/bz$b;->a:Lcom/chartboost/sdk/impl/cb;

    invoke-interface {v1, v0, p2}, Lcom/chartboost/sdk/impl/cb;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 191
    return-void
.end method
