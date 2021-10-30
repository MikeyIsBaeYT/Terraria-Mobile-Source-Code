.class Lcom/chartboost/sdk/impl/bx;
.super Lcom/chartboost/sdk/impl/bw;
.source "SourceFile"


# instance fields
.field private a:Lcom/chartboost/sdk/impl/dd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/chartboost/sdk/impl/dd",
            "<",
            "Lcom/chartboost/sdk/impl/cb;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/chartboost/sdk/impl/bw;-><init>()V

    .line 82
    new-instance v0, Lcom/chartboost/sdk/impl/dd;

    invoke-direct {v0}, Lcom/chartboost/sdk/impl/dd;-><init>()V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/bx;->a:Lcom/chartboost/sdk/impl/dd;

    return-void
.end method


# virtual methods
.method a(Ljava/lang/Class;Lcom/chartboost/sdk/impl/cb;)V
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bx;->a:Lcom/chartboost/sdk/impl/dd;

    invoke-virtual {v0, p1, p2}, Lcom/chartboost/sdk/impl/dd;->a(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    return-void
.end method

.method public a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V
    .locals 4

    .prologue
    .line 55
    invoke-static {p1}, Lcom/chartboost/sdk/impl/bt;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 57
    if-nez v1, :cond_0

    .line 58
    const-string v0, " null "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    :goto_0
    return-void

    .line 62
    :cond_0
    const/4 v0, 0x0

    .line 65
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lcom/chartboost/sdk/impl/dd;->a(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v2

    .line 67
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 68
    iget-object v3, p0, Lcom/chartboost/sdk/impl/bx;->a:Lcom/chartboost/sdk/impl/dd;

    invoke-virtual {v3, v0}, Lcom/chartboost/sdk/impl/dd;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/impl/cb;

    .line 69
    if-eqz v0, :cond_1

    .line 73
    :cond_2
    if-nez v0, :cond_3

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 74
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bx;->a:Lcom/chartboost/sdk/impl/dd;

    const-class v2, [Ljava/lang/Object;

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/impl/dd;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/impl/cb;

    .line 76
    :cond_3
    if-nez v0, :cond_4

    .line 77
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "json can\'t serialize type : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_4
    invoke-interface {v0, v1, p2}, Lcom/chartboost/sdk/impl/cb;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    goto :goto_0
.end method
