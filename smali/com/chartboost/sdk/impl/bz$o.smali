.class Lcom/chartboost/sdk/impl/bz$o;
.super Lcom/chartboost/sdk/impl/bz$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/impl/bz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "o"
.end annotation


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/impl/cb;)V
    .locals 0

    .prologue
    .line 359
    invoke-direct {p0, p1}, Lcom/chartboost/sdk/impl/bz$c;-><init>(Lcom/chartboost/sdk/impl/cb;)V

    .line 360
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V
    .locals 3

    .prologue
    .line 364
    new-instance v1, Lcom/chartboost/sdk/impl/bs;

    invoke-direct {v1}, Lcom/chartboost/sdk/impl/bs;-><init>()V

    .line 365
    const-string v0, "$regex"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/chartboost/sdk/impl/bu;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    .line 366
    check-cast v0, Ljava/util/regex/Pattern;

    invoke-virtual {v0}, Ljava/util/regex/Pattern;->flags()I

    move-result v0

    if-eqz v0, :cond_0

    .line 367
    const-string v0, "$options"

    check-cast p1, Ljava/util/regex/Pattern;

    invoke-virtual {p1}, Ljava/util/regex/Pattern;->flags()I

    move-result v2

    invoke-static {v2}, Lcom/chartboost/sdk/impl/bt;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/chartboost/sdk/impl/bu;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bz$o;->a:Lcom/chartboost/sdk/impl/cb;

    invoke-interface {v0, v1, p2}, Lcom/chartboost/sdk/impl/cb;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 370
    return-void
.end method
