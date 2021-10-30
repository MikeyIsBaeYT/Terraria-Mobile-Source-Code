.class final Lcom/chartboost/sdk/impl/de;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/chartboost/sdk/impl/dg;
.implements Ljava/util/Map;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/chartboost/sdk/impl/dg",
        "<TK;TV;>;",
        "Ljava/util/Map",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/chartboost/sdk/impl/dg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/chartboost/sdk/impl/dg",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/ConcurrentMap;Lcom/chartboost/sdk/impl/dg;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentMap",
            "<TK;TV;>;",
            "Lcom/chartboost/sdk/impl/dg",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const-string v0, "map"

    invoke-static {v0, p1}, Lcom/chartboost/sdk/impl/db;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentMap;

    iput-object v0, p0, Lcom/chartboost/sdk/impl/de;->a:Ljava/util/concurrent/ConcurrentMap;

    .line 21
    const-string v0, "function"

    invoke-static {v0, p2}, Lcom/chartboost/sdk/impl/db;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/impl/dg;

    iput-object v0, p0, Lcom/chartboost/sdk/impl/de;->b:Lcom/chartboost/sdk/impl/dg;

    .line 22
    return-void
.end method

.method public static a(Lcom/chartboost/sdk/impl/dg;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/chartboost/sdk/impl/dg",
            "<TK;TV;>;)",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 13
    new-instance v0, Lcom/chartboost/sdk/impl/de;

    invoke-static {}, Lcom/chartboost/sdk/impl/df;->c()Lcom/chartboost/sdk/impl/df;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/chartboost/sdk/impl/de;-><init>(Ljava/util/concurrent/ConcurrentMap;Lcom/chartboost/sdk/impl/dg;)V

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .prologue
    .line 39
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/impl/de;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/chartboost/sdk/impl/de;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    .line 88
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 67
    .local p0, "this":Lcom/chartboost/sdk/impl/de;, "Lcom/chartboost/sdk/impl/de<TK;TV;>;"
    iget-object v0, p0, Lcom/chartboost/sdk/impl/de;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 71
    .local p0, "this":Lcom/chartboost/sdk/impl/de;, "Lcom/chartboost/sdk/impl/de<TK;TV;>;"
    iget-object v0, p0, Lcom/chartboost/sdk/impl/de;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 99
    iget-object v0, p0, Lcom/chartboost/sdk/impl/de;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 103
    .local p0, "this":Lcom/chartboost/sdk/impl/de;, "Lcom/chartboost/sdk/impl/de<TK;TV;>;"
    iget-object v0, p0, Lcom/chartboost/sdk/impl/de;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 26
    .local p0, "this":Lcom/chartboost/sdk/impl/de;, "Lcom/chartboost/sdk/impl/de<TK;TV;>;"
    :goto_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/de;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 27
    if-eqz v0, :cond_0

    .line 33
    :goto_1
    return-object v0

    .line 31
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/de;->b:Lcom/chartboost/sdk/impl/dg;

    invoke-interface {v0, p1}, Lcom/chartboost/sdk/impl/dg;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 32
    if-nez v0, :cond_1

    .line 33
    const/4 v0, 0x0

    goto :goto_1

    .line 34
    :cond_1
    iget-object v1, p0, Lcom/chartboost/sdk/impl/de;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1, v0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/chartboost/sdk/impl/de;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/chartboost/sdk/impl/de;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 91
    iget-object v0, p0, Lcom/chartboost/sdk/impl/de;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 75
    .local p0, "this":Lcom/chartboost/sdk/impl/de;, "Lcom/chartboost/sdk/impl/de<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lcom/chartboost/sdk/impl/de;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1, p2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 83
    .local p0, "this":Lcom/chartboost/sdk/impl/de;, "Lcom/chartboost/sdk/impl/de<TK;TV;>;"
    .local p1, "m":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    iget-object v0, p0, Lcom/chartboost/sdk/impl/de;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->putAll(Ljava/util/Map;)V

    .line 84
    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 79
    .local p0, "this":Lcom/chartboost/sdk/impl/de;, "Lcom/chartboost/sdk/impl/de<TK;TV;>;"
    iget-object v0, p0, Lcom/chartboost/sdk/impl/de;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/chartboost/sdk/impl/de;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v0

    return v0
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 95
    iget-object v0, p0, Lcom/chartboost/sdk/impl/de;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
