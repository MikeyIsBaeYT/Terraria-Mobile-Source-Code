.class Lcom/chartboost/sdk/impl/da$d;
.super Lcom/chartboost/sdk/impl/da$a;
.source "SourceFile"

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/impl/da;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chartboost/sdk/impl/da$a",
        "<TK;>;",
        "Ljava/util/Set",
        "<TK;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/chartboost/sdk/impl/da;


# direct methods
.method private constructor <init>(Lcom/chartboost/sdk/impl/da;)V
    .locals 0

    .prologue
    .line 280
    iput-object p1, p0, Lcom/chartboost/sdk/impl/da$d;->a:Lcom/chartboost/sdk/impl/da;

    invoke-direct {p0}, Lcom/chartboost/sdk/impl/da$a;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/chartboost/sdk/impl/da;Lcom/chartboost/sdk/impl/da$1;)V
    .locals 0

    .prologue
    .line 280
    invoke-direct {p0, p1}, Lcom/chartboost/sdk/impl/da$d;-><init>(Lcom/chartboost/sdk/impl/da;)V

    return-void
.end method


# virtual methods
.method a()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 284
    iget-object v0, p0, Lcom/chartboost/sdk/impl/da$d;->a:Lcom/chartboost/sdk/impl/da;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/da;->a(Lcom/chartboost/sdk/impl/da;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 292
    iget-object v0, p0, Lcom/chartboost/sdk/impl/da$d;->a:Lcom/chartboost/sdk/impl/da;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/da;->b(Lcom/chartboost/sdk/impl/da;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 294
    :try_start_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/da$d;->a:Lcom/chartboost/sdk/impl/da;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/da;->a()Ljava/util/Map;

    move-result-object v0

    .line 295
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 296
    iget-object v1, p0, Lcom/chartboost/sdk/impl/da$d;->a:Lcom/chartboost/sdk/impl/da;

    invoke-virtual {v1, v0}, Lcom/chartboost/sdk/impl/da;->b(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 298
    iget-object v0, p0, Lcom/chartboost/sdk/impl/da$d;->a:Lcom/chartboost/sdk/impl/da;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/da;->b(Lcom/chartboost/sdk/impl/da;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 300
    return-void

    .line 298
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/chartboost/sdk/impl/da$d;->a:Lcom/chartboost/sdk/impl/da;

    invoke-static {v1}, Lcom/chartboost/sdk/impl/da;->b(Lcom/chartboost/sdk/impl/da;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 303
    .local p0, "this":Lcom/chartboost/sdk/impl/da$d;, "Lcom/chartboost/sdk/impl/da<TK;TV;TM;>.d;"
    iget-object v0, p0, Lcom/chartboost/sdk/impl/da$d;->a:Lcom/chartboost/sdk/impl/da;

    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/impl/da;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 307
    .local p0, "this":Lcom/chartboost/sdk/impl/da$d;, "Lcom/chartboost/sdk/impl/da<TK;TV;TM;>.d;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Lcom/chartboost/sdk/impl/da$d;->a:Lcom/chartboost/sdk/impl/da;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/da;->b(Lcom/chartboost/sdk/impl/da;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 309
    :try_start_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/da$d;->a:Lcom/chartboost/sdk/impl/da;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/da;->a()Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    .line 311
    :try_start_1
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .line 313
    :try_start_2
    iget-object v2, p0, Lcom/chartboost/sdk/impl/da$d;->a:Lcom/chartboost/sdk/impl/da;

    invoke-virtual {v2, v1}, Lcom/chartboost/sdk/impl/da;->b(Ljava/util/Map;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 316
    iget-object v1, p0, Lcom/chartboost/sdk/impl/da$d;->a:Lcom/chartboost/sdk/impl/da;

    invoke-static {v1}, Lcom/chartboost/sdk/impl/da;->b(Lcom/chartboost/sdk/impl/da;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v0

    .line 313
    :catchall_0
    move-exception v0

    :try_start_3
    iget-object v2, p0, Lcom/chartboost/sdk/impl/da$d;->a:Lcom/chartboost/sdk/impl/da;

    invoke-virtual {v2, v1}, Lcom/chartboost/sdk/impl/da;->b(Ljava/util/Map;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 316
    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/chartboost/sdk/impl/da$d;->a:Lcom/chartboost/sdk/impl/da;

    invoke-static {v1}, Lcom/chartboost/sdk/impl/da;->b(Lcom/chartboost/sdk/impl/da;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 321
    .local p0, "this":Lcom/chartboost/sdk/impl/da$d;, "Lcom/chartboost/sdk/impl/da<TK;TV;TM;>.d;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Lcom/chartboost/sdk/impl/da$d;->a:Lcom/chartboost/sdk/impl/da;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/da;->b(Lcom/chartboost/sdk/impl/da;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 323
    :try_start_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/da$d;->a:Lcom/chartboost/sdk/impl/da;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/da;->a()Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    .line 325
    :try_start_1
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .line 327
    :try_start_2
    iget-object v2, p0, Lcom/chartboost/sdk/impl/da$d;->a:Lcom/chartboost/sdk/impl/da;

    invoke-virtual {v2, v1}, Lcom/chartboost/sdk/impl/da;->b(Ljava/util/Map;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 330
    iget-object v1, p0, Lcom/chartboost/sdk/impl/da$d;->a:Lcom/chartboost/sdk/impl/da;

    invoke-static {v1}, Lcom/chartboost/sdk/impl/da;->b(Lcom/chartboost/sdk/impl/da;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v0

    .line 327
    :catchall_0
    move-exception v0

    :try_start_3
    iget-object v2, p0, Lcom/chartboost/sdk/impl/da$d;->a:Lcom/chartboost/sdk/impl/da;

    invoke-virtual {v2, v1}, Lcom/chartboost/sdk/impl/da;->b(Ljava/util/Map;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 330
    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/chartboost/sdk/impl/da$d;->a:Lcom/chartboost/sdk/impl/da;

    invoke-static {v1}, Lcom/chartboost/sdk/impl/da;->b(Lcom/chartboost/sdk/impl/da;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method
