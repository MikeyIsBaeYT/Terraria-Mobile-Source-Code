.class final Lcom/chartboost/sdk/impl/da$g;
.super Lcom/chartboost/sdk/impl/da$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/impl/da;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chartboost/sdk/impl/da$a",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/chartboost/sdk/impl/da;


# direct methods
.method private constructor <init>(Lcom/chartboost/sdk/impl/da;)V
    .locals 0

    .prologue
    .line 335
    iput-object p1, p0, Lcom/chartboost/sdk/impl/da$g;->a:Lcom/chartboost/sdk/impl/da;

    invoke-direct {p0}, Lcom/chartboost/sdk/impl/da$a;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/chartboost/sdk/impl/da;Lcom/chartboost/sdk/impl/da$1;)V
    .locals 0

    .prologue
    .line 335
    invoke-direct {p0, p1}, Lcom/chartboost/sdk/impl/da$g;-><init>(Lcom/chartboost/sdk/impl/da;)V

    return-void
.end method


# virtual methods
.method a()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 339
    iget-object v0, p0, Lcom/chartboost/sdk/impl/da$g;->a:Lcom/chartboost/sdk/impl/da;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/da;->a(Lcom/chartboost/sdk/impl/da;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 343
    iget-object v0, p0, Lcom/chartboost/sdk/impl/da$g;->a:Lcom/chartboost/sdk/impl/da;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/da;->b(Lcom/chartboost/sdk/impl/da;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 345
    :try_start_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/da$g;->a:Lcom/chartboost/sdk/impl/da;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/da;->a()Ljava/util/Map;

    move-result-object v0

    .line 346
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->clear()V

    .line 347
    iget-object v1, p0, Lcom/chartboost/sdk/impl/da$g;->a:Lcom/chartboost/sdk/impl/da;

    invoke-virtual {v1, v0}, Lcom/chartboost/sdk/impl/da;->b(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 349
    iget-object v0, p0, Lcom/chartboost/sdk/impl/da$g;->a:Lcom/chartboost/sdk/impl/da;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/da;->b(Lcom/chartboost/sdk/impl/da;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 351
    return-void

    .line 349
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/chartboost/sdk/impl/da$g;->a:Lcom/chartboost/sdk/impl/da;

    invoke-static {v1}, Lcom/chartboost/sdk/impl/da;->b(Lcom/chartboost/sdk/impl/da;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 354
    .local p0, "this":Lcom/chartboost/sdk/impl/da$g;, "Lcom/chartboost/sdk/impl/da<TK;TV;TM;>.g;"
    iget-object v0, p0, Lcom/chartboost/sdk/impl/da$g;->a:Lcom/chartboost/sdk/impl/da;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/da;->b(Lcom/chartboost/sdk/impl/da;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 356
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/impl/da$g;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v0

    if-nez v0, :cond_0

    .line 357
    const/4 v0, 0x0

    .line 366
    iget-object v1, p0, Lcom/chartboost/sdk/impl/da$g;->a:Lcom/chartboost/sdk/impl/da;

    invoke-static {v1}, Lcom/chartboost/sdk/impl/da;->b(Lcom/chartboost/sdk/impl/da;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_0
    return v0

    .line 359
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/da$g;->a:Lcom/chartboost/sdk/impl/da;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/da;->a()Ljava/util/Map;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v1

    .line 361
    :try_start_2
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    .line 363
    :try_start_3
    iget-object v2, p0, Lcom/chartboost/sdk/impl/da$g;->a:Lcom/chartboost/sdk/impl/da;

    invoke-virtual {v2, v1}, Lcom/chartboost/sdk/impl/da;->b(Ljava/util/Map;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 366
    iget-object v1, p0, Lcom/chartboost/sdk/impl/da$g;->a:Lcom/chartboost/sdk/impl/da;

    invoke-static {v1}, Lcom/chartboost/sdk/impl/da;->b(Lcom/chartboost/sdk/impl/da;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .line 363
    :catchall_0
    move-exception v0

    :try_start_4
    iget-object v2, p0, Lcom/chartboost/sdk/impl/da$g;->a:Lcom/chartboost/sdk/impl/da;

    invoke-virtual {v2, v1}, Lcom/chartboost/sdk/impl/da;->b(Ljava/util/Map;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 366
    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/chartboost/sdk/impl/da$g;->a:Lcom/chartboost/sdk/impl/da;

    invoke-static {v1}, Lcom/chartboost/sdk/impl/da;->b(Lcom/chartboost/sdk/impl/da;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
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
    .line 371
    .local p0, "this":Lcom/chartboost/sdk/impl/da$g;, "Lcom/chartboost/sdk/impl/da<TK;TV;TM;>.g;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Lcom/chartboost/sdk/impl/da$g;->a:Lcom/chartboost/sdk/impl/da;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/da;->b(Lcom/chartboost/sdk/impl/da;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 373
    :try_start_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/da$g;->a:Lcom/chartboost/sdk/impl/da;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/da;->a()Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    .line 375
    :try_start_1
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .line 377
    :try_start_2
    iget-object v2, p0, Lcom/chartboost/sdk/impl/da$g;->a:Lcom/chartboost/sdk/impl/da;

    invoke-virtual {v2, v1}, Lcom/chartboost/sdk/impl/da;->b(Ljava/util/Map;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 380
    iget-object v1, p0, Lcom/chartboost/sdk/impl/da$g;->a:Lcom/chartboost/sdk/impl/da;

    invoke-static {v1}, Lcom/chartboost/sdk/impl/da;->b(Lcom/chartboost/sdk/impl/da;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v0

    .line 377
    :catchall_0
    move-exception v0

    :try_start_3
    iget-object v2, p0, Lcom/chartboost/sdk/impl/da$g;->a:Lcom/chartboost/sdk/impl/da;

    invoke-virtual {v2, v1}, Lcom/chartboost/sdk/impl/da;->b(Ljava/util/Map;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 380
    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/chartboost/sdk/impl/da$g;->a:Lcom/chartboost/sdk/impl/da;

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
    .line 385
    .local p0, "this":Lcom/chartboost/sdk/impl/da$g;, "Lcom/chartboost/sdk/impl/da<TK;TV;TM;>.g;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Lcom/chartboost/sdk/impl/da$g;->a:Lcom/chartboost/sdk/impl/da;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/da;->b(Lcom/chartboost/sdk/impl/da;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 387
    :try_start_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/da$g;->a:Lcom/chartboost/sdk/impl/da;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/da;->a()Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    .line 389
    :try_start_1
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->retainAll(Ljava/util/Collection;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .line 391
    :try_start_2
    iget-object v2, p0, Lcom/chartboost/sdk/impl/da$g;->a:Lcom/chartboost/sdk/impl/da;

    invoke-virtual {v2, v1}, Lcom/chartboost/sdk/impl/da;->b(Ljava/util/Map;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 394
    iget-object v1, p0, Lcom/chartboost/sdk/impl/da$g;->a:Lcom/chartboost/sdk/impl/da;

    invoke-static {v1}, Lcom/chartboost/sdk/impl/da;->b(Lcom/chartboost/sdk/impl/da;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v0

    .line 391
    :catchall_0
    move-exception v0

    :try_start_3
    iget-object v2, p0, Lcom/chartboost/sdk/impl/da$g;->a:Lcom/chartboost/sdk/impl/da;

    invoke-virtual {v2, v1}, Lcom/chartboost/sdk/impl/da;->b(Ljava/util/Map;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 394
    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/chartboost/sdk/impl/da$g;->a:Lcom/chartboost/sdk/impl/da;

    invoke-static {v1}, Lcom/chartboost/sdk/impl/da;->b(Lcom/chartboost/sdk/impl/da;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method
