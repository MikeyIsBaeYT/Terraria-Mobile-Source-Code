.class Lcom/chartboost/sdk/impl/bz$g;
.super Lcom/chartboost/sdk/impl/bz$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/impl/bz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "g"
.end annotation


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/impl/cb;)V
    .locals 0

    .prologue
    .line 148
    invoke-direct {p0, p1}, Lcom/chartboost/sdk/impl/bz$c;-><init>(Lcom/chartboost/sdk/impl/cb;)V

    .line 149
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V
    .locals 3

    .prologue
    .line 153
    check-cast p1, Lcom/chartboost/sdk/impl/cs;

    .line 154
    new-instance v0, Lcom/chartboost/sdk/impl/bs;

    invoke-direct {v0}, Lcom/chartboost/sdk/impl/bs;-><init>()V

    .line 155
    const-string v1, "$ts"

    invoke-virtual {p1}, Lcom/chartboost/sdk/impl/cs;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/chartboost/sdk/impl/bs;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    const-string v1, "$inc"

    invoke-virtual {p1}, Lcom/chartboost/sdk/impl/cs;->b()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/chartboost/sdk/impl/bs;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    iget-object v1, p0, Lcom/chartboost/sdk/impl/bz$g;->a:Lcom/chartboost/sdk/impl/cb;

    invoke-interface {v1, v0, p2}, Lcom/chartboost/sdk/impl/cb;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 158
    return-void
.end method
