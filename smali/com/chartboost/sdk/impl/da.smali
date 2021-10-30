.class abstract Lcom/chartboost/sdk/impl/da;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/concurrent/ConcurrentMap;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chartboost/sdk/impl/da$1;,
        Lcom/chartboost/sdk/impl/da$e;,
        Lcom/chartboost/sdk/impl/da$c;,
        Lcom/chartboost/sdk/impl/da$h;,
        Lcom/chartboost/sdk/impl/da$a;,
        Lcom/chartboost/sdk/impl/da$f;,
        Lcom/chartboost/sdk/impl/da$b;,
        Lcom/chartboost/sdk/impl/da$g;,
        Lcom/chartboost/sdk/impl/da$d;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        "M::",
        "Ljava/util/Map",
        "<TK;TV;>;>",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/util/concurrent/ConcurrentMap",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field private volatile a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TM;"
        }
    .end annotation
.end field

.field private final transient b:Ljava/util/concurrent/locks/Lock;

.field private final c:Lcom/chartboost/sdk/impl/da$h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/chartboost/sdk/impl/da$h",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/util/Map;Lcom/chartboost/sdk/impl/da$h$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N::",
            "Ljava/util/Map",
            "<+TK;+TV;>;>(TN;",
            "Lcom/chartboost/sdk/impl/da$h$a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/da;->b:Ljava/util/concurrent/locks/Lock;

    .line 68
    const-string v1, "delegate"

    const-string v0, "map"

    invoke-static {v0, p1}, Lcom/chartboost/sdk/impl/db;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/da;->a(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/chartboost/sdk/impl/db;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/chartboost/sdk/impl/da;->a:Ljava/util/Map;

    .line 69
    const-string v0, "viewType"

    invoke-static {v0, p2}, Lcom/chartboost/sdk/impl/db;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/impl/da$h$a;

    invoke-virtual {v0, p0}, Lcom/chartboost/sdk/impl/da$h$a;->a(Lcom/chartboost/sdk/impl/da;)Lcom/chartboost/sdk/impl/da$h;

    move-result-object v0

    iput-object v0, p0, Lcom/chartboost/sdk/impl/da;->c:Lcom/chartboost/sdk/impl/da$h;

    .line 70
    return-void
.end method

.method static synthetic a(Lcom/chartboost/sdk/impl/da;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/chartboost/sdk/impl/da;->a:Ljava/util/Map;

    return-object v0
.end method

.method private a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 548
    if-nez p1, :cond_1

    .line 549
    if-nez p2, :cond_0

    const/4 v0, 0x1

    .line 551
    :goto_0
    return v0

    .line 549
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 551
    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method static synthetic b(Lcom/chartboost/sdk/impl/da;)Ljava/util/concurrent/locks/Lock;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/chartboost/sdk/impl/da;->b:Ljava/util/concurrent/locks/Lock;

    return-object v0
.end method


# virtual methods
.method protected a()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TM;"
        }
    .end annotation

    .prologue
    .line 204
    iget-object v0, p0, Lcom/chartboost/sdk/impl/da;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 206
    :try_start_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/da;->a:Ljava/util/Map;

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/da;->a(Ljava/util/Map;)Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 208
    iget-object v1, p0, Lcom/chartboost/sdk/impl/da;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/chartboost/sdk/impl/da;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method abstract a(Ljava/util/Map;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N::",
            "Ljava/util/Map",
            "<+TK;+TV;>;>(TN;)TM;"
        }
    .end annotation
.end method

.method protected b(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;)V"
        }
    .end annotation

    .prologue
    .line 214
    iput-object p1, p0, Lcom/chartboost/sdk/impl/da;->a:Ljava/util/Map;

    .line 215
    return-void
.end method

.method public final clear()V
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/chartboost/sdk/impl/da;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 89
    :try_start_0
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/da;->a(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/da;->b(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    iget-object v0, p0, Lcom/chartboost/sdk/impl/da;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 93
    return-void

    .line 91
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/chartboost/sdk/impl/da;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public final containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 238
    .local p0, "this":Lcom/chartboost/sdk/impl/da;, "Lcom/chartboost/sdk/impl/da<TK;TV;TM;>;"
    iget-object v0, p0, Lcom/chartboost/sdk/impl/da;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final containsValue(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 242
    .local p0, "this":Lcom/chartboost/sdk/impl/da;, "Lcom/chartboost/sdk/impl/da<TK;TV;TM;>;"
    iget-object v0, p0, Lcom/chartboost/sdk/impl/da;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final entrySet()Ljava/util/Set;
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
    .line 222
    iget-object v0, p0, Lcom/chartboost/sdk/impl/da;->c:Lcom/chartboost/sdk/impl/da$h;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/da$h;->b()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 259
    .local p0, "this":Lcom/chartboost/sdk/impl/da;, "Lcom/chartboost/sdk/impl/da<TK;TV;TM;>;"
    iget-object v0, p0, Lcom/chartboost/sdk/impl/da;->a:Ljava/util/Map;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
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
    .line 246
    .local p0, "this":Lcom/chartboost/sdk/impl/da;, "Lcom/chartboost/sdk/impl/da<TK;TV;TM;>;"
    iget-object v0, p0, Lcom/chartboost/sdk/impl/da;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/chartboost/sdk/impl/da;->a:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final isEmpty()Z
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/chartboost/sdk/impl/da;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 226
    iget-object v0, p0, Lcom/chartboost/sdk/impl/da;->c:Lcom/chartboost/sdk/impl/da$h;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/da$h;->a()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 162
    .local p0, "this":Lcom/chartboost/sdk/impl/da;, "Lcom/chartboost/sdk/impl/da<TK;TV;TM;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lcom/chartboost/sdk/impl/da;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 164
    :try_start_0
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/da;->a()Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v0

    .line 166
    :try_start_1
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 168
    :try_start_2
    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/da;->b(Ljava/util/Map;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 171
    iget-object v0, p0, Lcom/chartboost/sdk/impl/da;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v1

    .line 168
    :catchall_0
    move-exception v1

    :try_start_3
    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/da;->b(Ljava/util/Map;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 171
    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/chartboost/sdk/impl/da;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public final putAll(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 193
    .local p0, "this":Lcom/chartboost/sdk/impl/da;, "Lcom/chartboost/sdk/impl/da<TK;TV;TM;>;"
    .local p1, "t":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    iget-object v0, p0, Lcom/chartboost/sdk/impl/da;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 195
    :try_start_0
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/da;->a()Ljava/util/Map;

    move-result-object v0

    .line 196
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 197
    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/da;->b(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    iget-object v0, p0, Lcom/chartboost/sdk/impl/da;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 201
    return-void

    .line 199
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/chartboost/sdk/impl/da;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 176
    .local p0, "this":Lcom/chartboost/sdk/impl/da;, "Lcom/chartboost/sdk/impl/da<TK;TV;TM;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lcom/chartboost/sdk/impl/da;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 178
    :try_start_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/da;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 179
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/da;->a()Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    .line 181
    :try_start_1
    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 183
    :try_start_2
    invoke-virtual {p0, v1}, Lcom/chartboost/sdk/impl/da;->b(Ljava/util/Map;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 188
    iget-object v1, p0, Lcom/chartboost/sdk/impl/da;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_0
    return-object v0

    .line 183
    :catchall_0
    move-exception v0

    :try_start_3
    invoke-virtual {p0, v1}, Lcom/chartboost/sdk/impl/da;->b(Ljava/util/Map;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 188
    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/chartboost/sdk/impl/da;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    .line 186
    :cond_0
    :try_start_4
    iget-object v0, p0, Lcom/chartboost/sdk/impl/da;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v0

    .line 188
    iget-object v1, p0, Lcom/chartboost/sdk/impl/da;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
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
    .line 96
    .local p0, "this":Lcom/chartboost/sdk/impl/da;, "Lcom/chartboost/sdk/impl/da<TK;TV;TM;>;"
    iget-object v0, p0, Lcom/chartboost/sdk/impl/da;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 99
    :try_start_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/da;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v0

    if-nez v0, :cond_0

    .line 100
    const/4 v0, 0x0

    .line 109
    iget-object v1, p0, Lcom/chartboost/sdk/impl/da;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_0
    return-object v0

    .line 102
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/da;->a()Ljava/util/Map;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v1

    .line 104
    :try_start_2
    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    .line 106
    :try_start_3
    invoke-virtual {p0, v1}, Lcom/chartboost/sdk/impl/da;->b(Ljava/util/Map;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 109
    iget-object v1, p0, Lcom/chartboost/sdk/impl/da;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .line 106
    :catchall_0
    move-exception v0

    :try_start_4
    invoke-virtual {p0, v1}, Lcom/chartboost/sdk/impl/da;->b(Ljava/util/Map;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 109
    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/chartboost/sdk/impl/da;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 114
    .local p0, "this":Lcom/chartboost/sdk/impl/da;, "Lcom/chartboost/sdk/impl/da<TK;TV;TM;>;"
    iget-object v0, p0, Lcom/chartboost/sdk/impl/da;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 116
    :try_start_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/da;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chartboost/sdk/impl/da;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/chartboost/sdk/impl/da;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/da;->a()Ljava/util/Map;

    move-result-object v0

    .line 118
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/da;->b(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    const/4 v0, 0x1

    .line 125
    iget-object v1, p0, Lcom/chartboost/sdk/impl/da;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_0
    return v0

    .line 122
    :cond_0
    const/4 v0, 0x0

    .line 125
    iget-object v1, p0, Lcom/chartboost/sdk/impl/da;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/chartboost/sdk/impl/da;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 145
    .local p0, "this":Lcom/chartboost/sdk/impl/da;, "Lcom/chartboost/sdk/impl/da<TK;TV;TM;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lcom/chartboost/sdk/impl/da;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 147
    :try_start_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/da;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v0

    if-nez v0, :cond_0

    .line 148
    const/4 v0, 0x0

    .line 157
    iget-object v1, p0, Lcom/chartboost/sdk/impl/da;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_0
    return-object v0

    .line 150
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/da;->a()Ljava/util/Map;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v1

    .line 152
    :try_start_2
    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    .line 154
    :try_start_3
    invoke-virtual {p0, v1}, Lcom/chartboost/sdk/impl/da;->b(Ljava/util/Map;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 157
    iget-object v1, p0, Lcom/chartboost/sdk/impl/da;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .line 154
    :catchall_0
    move-exception v0

    :try_start_4
    invoke-virtual {p0, v1}, Lcom/chartboost/sdk/impl/da;->b(Ljava/util/Map;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 157
    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/chartboost/sdk/impl/da;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;TV;)Z"
        }
    .end annotation

    .prologue
    .line 130
    .local p0, "this":Lcom/chartboost/sdk/impl/da;, "Lcom/chartboost/sdk/impl/da<TK;TV;TM;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "oldValue":Ljava/lang/Object;, "TV;"
    .local p3, "newValue":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lcom/chartboost/sdk/impl/da;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 132
    :try_start_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/da;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chartboost/sdk/impl/da;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/chartboost/sdk/impl/da;->a(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 133
    :cond_0
    const/4 v0, 0x0

    .line 140
    iget-object v1, p0, Lcom/chartboost/sdk/impl/da;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_0
    return v0

    .line 135
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/da;->a()Ljava/util/Map;

    move-result-object v0

    .line 136
    invoke-interface {v0, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/da;->b(Ljava/util/Map;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 138
    const/4 v0, 0x1

    .line 140
    iget-object v1, p0, Lcom/chartboost/sdk/impl/da;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/chartboost/sdk/impl/da;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/chartboost/sdk/impl/da;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/chartboost/sdk/impl/da;->a:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 230
    iget-object v0, p0, Lcom/chartboost/sdk/impl/da;->c:Lcom/chartboost/sdk/impl/da$h;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/da$h;->c()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
