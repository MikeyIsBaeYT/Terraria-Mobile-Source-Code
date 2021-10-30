.class final Lcom/flurry/android/caching/n;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private iA:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/flurry/android/caching/ObjectOperationData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/flurry/android/caching/n;->iA:Ljava/util/LinkedList;

    return-void
.end method


# virtual methods
.method public final bE()Lcom/flurry/android/caching/ObjectOperationData;
    .locals 2

    .prologue
    .line 21
    iget-object v0, p0, Lcom/flurry/android/caching/n;->iA:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 22
    iget-object v0, p0, Lcom/flurry/android/caching/n;->iA:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/caching/ObjectOperationData;

    .line 28
    :goto_0
    return-object v0

    .line 25
    :cond_0
    const-string v0, "AppCloudOperationsManager"

    const-string v1, "NO SUCH OPERATION"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final bF()Lcom/flurry/android/caching/ObjectOperationData;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/flurry/android/caching/n;->iA:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/caching/ObjectOperationData;

    return-object v0
.end method

.method public final j(Lcom/flurry/android/caching/ObjectOperationData;)V
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/flurry/android/caching/n;->iA:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 15
    return-void
.end method
