.class public Lcom/flurry/org/apache/avro/util/WeakIdentityHashMap;
.super Ljava/lang/Object;
.source "WeakIdentityHashMap.java"

# interfaces
.implements Ljava/util/Map;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/org/apache/avro/util/WeakIdentityHashMap$IdentityWeakReference;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Map",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field private backingStore:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/flurry/org/apache/avro/util/WeakIdentityHashMap",
            "<TK;TV;>.IdentityWeakReference;TV;>;"
        }
    .end annotation
.end field

.field private final queue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<TK;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    .local p0, "this":Lcom/flurry/org/apache/avro/util/WeakIdentityHashMap;, "Lcom/flurry/org/apache/avro/util/WeakIdentityHashMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lcom/flurry/org/apache/avro/util/WeakIdentityHashMap;->queue:Ljava/lang/ref/ReferenceQueue;

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/flurry/org/apache/avro/util/WeakIdentityHashMap;->backingStore:Ljava/util/Map;

    .line 50
    return-void
.end method

.method static synthetic access$000(Lcom/flurry/org/apache/avro/util/WeakIdentityHashMap;)Ljava/lang/ref/ReferenceQueue;
    .locals 1
    .param p0, "x0"    # Lcom/flurry/org/apache/avro/util/WeakIdentityHashMap;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/flurry/org/apache/avro/util/WeakIdentityHashMap;->queue:Ljava/lang/ref/ReferenceQueue;

    return-object v0
.end method

.method private declared-synchronized reap()V
    .locals 4

    .prologue
    .line 136
    .local p0, "this":Lcom/flurry/org/apache/avro/util/WeakIdentityHashMap;, "Lcom/flurry/org/apache/avro/util/WeakIdentityHashMap<TK;TV;>;"
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/flurry/org/apache/avro/util/WeakIdentityHashMap;->queue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v3}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v2

    .line 138
    .local v2, "zombie":Ljava/lang/ref/Reference;
    :goto_0
    if-eqz v2, :cond_0

    .line 139
    move-object v0, v2

    check-cast v0, Lcom/flurry/org/apache/avro/util/WeakIdentityHashMap$IdentityWeakReference;

    move-object v1, v0

    .line 140
    .local v1, "victim":Lcom/flurry/org/apache/avro/util/WeakIdentityHashMap$IdentityWeakReference;, "Lcom/flurry/org/apache/avro/util/WeakIdentityHashMap<TK;TV;>.IdentityWeakReference;"
    iget-object v3, p0, Lcom/flurry/org/apache/avro/util/WeakIdentityHashMap;->backingStore:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    iget-object v3, p0, Lcom/flurry/org/apache/avro/util/WeakIdentityHashMap;->queue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v3}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 142
    goto :goto_0

    .line 143
    .end local v1    # "victim":Lcom/flurry/org/apache/avro/util/WeakIdentityHashMap$IdentityWeakReference;, "Lcom/flurry/org/apache/avro/util/WeakIdentityHashMap<TK;TV;>.IdentityWeakReference;"
    :cond_0
    monitor-exit p0

    return-void

    .line 136
    .end local v2    # "zombie":Ljava/lang/ref/Reference;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 53
    .local p0, "this":Lcom/flurry/org/apache/avro/util/WeakIdentityHashMap;, "Lcom/flurry/org/apache/avro/util/WeakIdentityHashMap<TK;TV;>;"
    iget-object v0, p0, Lcom/flurry/org/apache/avro/util/WeakIdentityHashMap;->backingStore:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 54
    invoke-direct {p0}, Lcom/flurry/org/apache/avro/util/WeakIdentityHashMap;->reap()V

    .line 55
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 58
    .local p0, "this":Lcom/flurry/org/apache/avro/util/WeakIdentityHashMap;, "Lcom/flurry/org/apache/avro/util/WeakIdentityHashMap<TK;TV;>;"
    invoke-direct {p0}, Lcom/flurry/org/apache/avro/util/WeakIdentityHashMap;->reap()V

    .line 59
    iget-object v0, p0, Lcom/flurry/org/apache/avro/util/WeakIdentityHashMap;->backingStore:Ljava/util/Map;

    new-instance v1, Lcom/flurry/org/apache/avro/util/WeakIdentityHashMap$IdentityWeakReference;

    invoke-direct {v1, p0, p1}, Lcom/flurry/org/apache/avro/util/WeakIdentityHashMap$IdentityWeakReference;-><init>(Lcom/flurry/org/apache/avro/util/WeakIdentityHashMap;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 63
    .local p0, "this":Lcom/flurry/org/apache/avro/util/WeakIdentityHashMap;, "Lcom/flurry/org/apache/avro/util/WeakIdentityHashMap<TK;TV;>;"
    invoke-direct {p0}, Lcom/flurry/org/apache/avro/util/WeakIdentityHashMap;->reap()V

    .line 64
    iget-object v0, p0, Lcom/flurry/org/apache/avro/util/WeakIdentityHashMap;->backingStore:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 7
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
    .line 68
    .local p0, "this":Lcom/flurry/org/apache/avro/util/WeakIdentityHashMap;, "Lcom/flurry/org/apache/avro/util/WeakIdentityHashMap<TK;TV;>;"
    invoke-direct {p0}, Lcom/flurry/org/apache/avro/util/WeakIdentityHashMap;->reap()V

    .line 69
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 70
    .local v4, "ret":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<TK;TV;>;>;"
    iget-object v6, p0, Lcom/flurry/org/apache/avro/util/WeakIdentityHashMap;->backingStore:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 71
    .local v3, "ref":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/flurry/org/apache/avro/util/WeakIdentityHashMap<TK;TV;>.IdentityWeakReference;TV;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/flurry/org/apache/avro/util/WeakIdentityHashMap$IdentityWeakReference;

    invoke-virtual {v6}, Lcom/flurry/org/apache/avro/util/WeakIdentityHashMap$IdentityWeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    .line 72
    .local v2, "key":Ljava/lang/Object;, "TK;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    .line 73
    .local v5, "value":Ljava/lang/Object;, "TV;"
    new-instance v0, Lcom/flurry/org/apache/avro/util/WeakIdentityHashMap$1;

    invoke-direct {v0, p0, v2, v5}, Lcom/flurry/org/apache/avro/util/WeakIdentityHashMap$1;-><init>(Lcom/flurry/org/apache/avro/util/WeakIdentityHashMap;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 84
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 86
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    .end local v2    # "key":Ljava/lang/Object;, "TK;"
    .end local v3    # "ref":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/flurry/org/apache/avro/util/WeakIdentityHashMap<TK;TV;>.IdentityWeakReference;TV;>;"
    .end local v5    # "value":Ljava/lang/Object;, "TV;"
    :cond_0
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v6

    return-object v6
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 99
    .local p0, "this":Lcom/flurry/org/apache/avro/util/WeakIdentityHashMap;, "Lcom/flurry/org/apache/avro/util/WeakIdentityHashMap<TK;TV;>;"
    iget-object v0, p0, Lcom/flurry/org/apache/avro/util/WeakIdentityHashMap;->backingStore:Ljava/util/Map;

    check-cast p1, Lcom/flurry/org/apache/avro/util/WeakIdentityHashMap;

    .end local p1    # "o":Ljava/lang/Object;
    iget-object v1, p1, Lcom/flurry/org/apache/avro/util/WeakIdentityHashMap;->backingStore:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

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
    .line 103
    .local p0, "this":Lcom/flurry/org/apache/avro/util/WeakIdentityHashMap;, "Lcom/flurry/org/apache/avro/util/WeakIdentityHashMap<TK;TV;>;"
    invoke-direct {p0}, Lcom/flurry/org/apache/avro/util/WeakIdentityHashMap;->reap()V

    .line 104
    iget-object v0, p0, Lcom/flurry/org/apache/avro/util/WeakIdentityHashMap;->backingStore:Ljava/util/Map;

    new-instance v1, Lcom/flurry/org/apache/avro/util/WeakIdentityHashMap$IdentityWeakReference;

    invoke-direct {v1, p0, p1}, Lcom/flurry/org/apache/avro/util/WeakIdentityHashMap$IdentityWeakReference;-><init>(Lcom/flurry/org/apache/avro/util/WeakIdentityHashMap;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 112
    .local p0, "this":Lcom/flurry/org/apache/avro/util/WeakIdentityHashMap;, "Lcom/flurry/org/apache/avro/util/WeakIdentityHashMap<TK;TV;>;"
    invoke-direct {p0}, Lcom/flurry/org/apache/avro/util/WeakIdentityHashMap;->reap()V

    .line 113
    iget-object v0, p0, Lcom/flurry/org/apache/avro/util/WeakIdentityHashMap;->backingStore:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 116
    .local p0, "this":Lcom/flurry/org/apache/avro/util/WeakIdentityHashMap;, "Lcom/flurry/org/apache/avro/util/WeakIdentityHashMap<TK;TV;>;"
    invoke-direct {p0}, Lcom/flurry/org/apache/avro/util/WeakIdentityHashMap;->reap()V

    .line 117
    iget-object v0, p0, Lcom/flurry/org/apache/avro/util/WeakIdentityHashMap;->backingStore:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 90
    .local p0, "this":Lcom/flurry/org/apache/avro/util/WeakIdentityHashMap;, "Lcom/flurry/org/apache/avro/util/WeakIdentityHashMap<TK;TV;>;"
    invoke-direct {p0}, Lcom/flurry/org/apache/avro/util/WeakIdentityHashMap;->reap()V

    .line 91
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 92
    .local v2, "ret":Ljava/util/Set;, "Ljava/util/Set<TK;>;"
    iget-object v3, p0, Lcom/flurry/org/apache/avro/util/WeakIdentityHashMap;->backingStore:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flurry/org/apache/avro/util/WeakIdentityHashMap$IdentityWeakReference;

    .line 93
    .local v1, "ref":Lcom/flurry/org/apache/avro/util/WeakIdentityHashMap$IdentityWeakReference;, "Lcom/flurry/org/apache/avro/util/WeakIdentityHashMap<TK;TV;>.IdentityWeakReference;"
    invoke-virtual {v1}, Lcom/flurry/org/apache/avro/util/WeakIdentityHashMap$IdentityWeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 95
    .end local v1    # "ref":Lcom/flurry/org/apache/avro/util/WeakIdentityHashMap$IdentityWeakReference;, "Lcom/flurry/org/apache/avro/util/WeakIdentityHashMap<TK;TV;>.IdentityWeakReference;"
    :cond_0
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v3

    return-object v3
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 107
    .local p0, "this":Lcom/flurry/org/apache/avro/util/WeakIdentityHashMap;, "Lcom/flurry/org/apache/avro/util/WeakIdentityHashMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-direct {p0}, Lcom/flurry/org/apache/avro/util/WeakIdentityHashMap;->reap()V

    .line 108
    iget-object v0, p0, Lcom/flurry/org/apache/avro/util/WeakIdentityHashMap;->backingStore:Ljava/util/Map;

    new-instance v1, Lcom/flurry/org/apache/avro/util/WeakIdentityHashMap$IdentityWeakReference;

    invoke-direct {v1, p0, p1}, Lcom/flurry/org/apache/avro/util/WeakIdentityHashMap$IdentityWeakReference;-><init>(Lcom/flurry/org/apache/avro/util/WeakIdentityHashMap;Ljava/lang/Object;)V

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 1
    .param p1, "t"    # Ljava/util/Map;

    .prologue
    .line 120
    .local p0, "this":Lcom/flurry/org/apache/avro/util/WeakIdentityHashMap;, "Lcom/flurry/org/apache/avro/util/WeakIdentityHashMap<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
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
    .line 123
    .local p0, "this":Lcom/flurry/org/apache/avro/util/WeakIdentityHashMap;, "Lcom/flurry/org/apache/avro/util/WeakIdentityHashMap<TK;TV;>;"
    invoke-direct {p0}, Lcom/flurry/org/apache/avro/util/WeakIdentityHashMap;->reap()V

    .line 124
    iget-object v0, p0, Lcom/flurry/org/apache/avro/util/WeakIdentityHashMap;->backingStore:Ljava/util/Map;

    new-instance v1, Lcom/flurry/org/apache/avro/util/WeakIdentityHashMap$IdentityWeakReference;

    invoke-direct {v1, p0, p1}, Lcom/flurry/org/apache/avro/util/WeakIdentityHashMap$IdentityWeakReference;-><init>(Lcom/flurry/org/apache/avro/util/WeakIdentityHashMap;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 127
    .local p0, "this":Lcom/flurry/org/apache/avro/util/WeakIdentityHashMap;, "Lcom/flurry/org/apache/avro/util/WeakIdentityHashMap<TK;TV;>;"
    invoke-direct {p0}, Lcom/flurry/org/apache/avro/util/WeakIdentityHashMap;->reap()V

    .line 128
    iget-object v0, p0, Lcom/flurry/org/apache/avro/util/WeakIdentityHashMap;->backingStore:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

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
    .line 131
    .local p0, "this":Lcom/flurry/org/apache/avro/util/WeakIdentityHashMap;, "Lcom/flurry/org/apache/avro/util/WeakIdentityHashMap<TK;TV;>;"
    invoke-direct {p0}, Lcom/flurry/org/apache/avro/util/WeakIdentityHashMap;->reap()V

    .line 132
    iget-object v0, p0, Lcom/flurry/org/apache/avro/util/WeakIdentityHashMap;->backingStore:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
