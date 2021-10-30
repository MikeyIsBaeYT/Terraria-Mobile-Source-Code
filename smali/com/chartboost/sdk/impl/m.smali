.class public Lcom/chartboost/sdk/impl/m;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chartboost/sdk/impl/m$a;
    }
.end annotation


# instance fields
.field private a:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Queue",
            "<",
            "Lcom/chartboost/sdk/impl/l",
            "<*>;>;>;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/chartboost/sdk/impl/l",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/concurrent/PriorityBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/PriorityBlockingQueue",
            "<",
            "Lcom/chartboost/sdk/impl/l",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/concurrent/PriorityBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/PriorityBlockingQueue",
            "<",
            "Lcom/chartboost/sdk/impl/l",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final f:Lcom/chartboost/sdk/impl/b;

.field private final g:Lcom/chartboost/sdk/impl/f;

.field private final h:Lcom/chartboost/sdk/impl/o;

.field private i:[Lcom/chartboost/sdk/impl/g;

.field private j:Lcom/chartboost/sdk/impl/c;

.field private k:Z


# direct methods
.method public constructor <init>(Lcom/chartboost/sdk/impl/b;Lcom/chartboost/sdk/impl/f;)V
    .locals 1

    .prologue
    .line 126
    const/4 v0, 0x4

    invoke-direct {p0, p1, p2, v0}, Lcom/chartboost/sdk/impl/m;-><init>(Lcom/chartboost/sdk/impl/b;Lcom/chartboost/sdk/impl/f;I)V

    .line 127
    return-void
.end method

.method public constructor <init>(Lcom/chartboost/sdk/impl/b;Lcom/chartboost/sdk/impl/f;I)V
    .locals 3

    .prologue
    .line 115
    .line 116
    new-instance v0, Lcom/chartboost/sdk/impl/e;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, v1}, Lcom/chartboost/sdk/impl/e;-><init>(Landroid/os/Handler;)V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/chartboost/sdk/impl/m;-><init>(Lcom/chartboost/sdk/impl/b;Lcom/chartboost/sdk/impl/f;ILcom/chartboost/sdk/impl/o;)V

    .line 117
    return-void
.end method

.method public constructor <init>(Lcom/chartboost/sdk/impl/b;Lcom/chartboost/sdk/impl/f;ILcom/chartboost/sdk/impl/o;)V
    .locals 1

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/m;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/m;->b:Ljava/util/Map;

    .line 61
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/m;->c:Ljava/util/Set;

    .line 65
    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/m;->d:Ljava/util/concurrent/PriorityBlockingQueue;

    .line 69
    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/m;->e:Ljava/util/concurrent/PriorityBlockingQueue;

    .line 89
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/chartboost/sdk/impl/m;->k:Z

    .line 101
    iput-object p1, p0, Lcom/chartboost/sdk/impl/m;->f:Lcom/chartboost/sdk/impl/b;

    .line 102
    iput-object p2, p0, Lcom/chartboost/sdk/impl/m;->g:Lcom/chartboost/sdk/impl/f;

    .line 103
    new-array v0, p3, [Lcom/chartboost/sdk/impl/g;

    iput-object v0, p0, Lcom/chartboost/sdk/impl/m;->i:[Lcom/chartboost/sdk/impl/g;

    .line 104
    iput-object p4, p0, Lcom/chartboost/sdk/impl/m;->h:Lcom/chartboost/sdk/impl/o;

    .line 105
    return-void
.end method


# virtual methods
.method public a(Lcom/chartboost/sdk/impl/l;)Lcom/chartboost/sdk/impl/l;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/chartboost/sdk/impl/l",
            "<TT;>;)",
            "Lcom/chartboost/sdk/impl/l",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 225
    invoke-virtual {p1, p0}, Lcom/chartboost/sdk/impl/l;->a(Lcom/chartboost/sdk/impl/m;)Lcom/chartboost/sdk/impl/l;

    .line 226
    iget-object v1, p0, Lcom/chartboost/sdk/impl/m;->c:Ljava/util/Set;

    monitor-enter v1

    .line 227
    :try_start_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/m;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 226
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 231
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/m;->c()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/chartboost/sdk/impl/l;->a(I)Lcom/chartboost/sdk/impl/l;

    .line 232
    const-string v0, "add-to-queue"

    invoke-virtual {p1, v0}, Lcom/chartboost/sdk/impl/l;->a(Ljava/lang/String;)V

    .line 235
    invoke-virtual {p1}, Lcom/chartboost/sdk/impl/l;->r()Z

    move-result v0

    if-nez v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/chartboost/sdk/impl/m;->e:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->add(Ljava/lang/Object;)Z

    .line 260
    :goto_0
    return-object p1

    .line 226
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 241
    :cond_0
    iget-object v1, p0, Lcom/chartboost/sdk/impl/m;->b:Ljava/util/Map;

    monitor-enter v1

    .line 242
    :try_start_2
    invoke-virtual {p1}, Lcom/chartboost/sdk/impl/l;->e()Ljava/lang/String;

    move-result-object v2

    .line 243
    iget-object v0, p0, Lcom/chartboost/sdk/impl/m;->b:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 245
    iget-object v0, p0, Lcom/chartboost/sdk/impl/m;->b:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Queue;

    .line 246
    if-nez v0, :cond_1

    .line 247
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 249
    :cond_1
    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 250
    iget-object v3, p0, Lcom/chartboost/sdk/impl/m;->b:Ljava/util/Map;

    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    sget-boolean v0, Lcom/chartboost/sdk/impl/t;->b:Z

    if-eqz v0, :cond_2

    .line 252
    const-string v0, "Request for cacheKey=%s is in flight, putting on hold."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-static {v0, v3}, Lcom/chartboost/sdk/impl/t;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 260
    :cond_2
    :goto_1
    monitor-exit v1

    goto :goto_0

    .line 241
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 257
    :cond_3
    :try_start_3
    iget-object v0, p0, Lcom/chartboost/sdk/impl/m;->b:Ljava/util/Map;

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    iget-object v0, p0, Lcom/chartboost/sdk/impl/m;->d:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1
.end method

.method public a()V
    .locals 6

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/m;->b()V

    .line 135
    new-instance v0, Lcom/chartboost/sdk/impl/c;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/m;->d:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object v2, p0, Lcom/chartboost/sdk/impl/m;->e:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object v3, p0, Lcom/chartboost/sdk/impl/m;->f:Lcom/chartboost/sdk/impl/b;

    iget-object v4, p0, Lcom/chartboost/sdk/impl/m;->h:Lcom/chartboost/sdk/impl/o;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/chartboost/sdk/impl/c;-><init>(Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/BlockingQueue;Lcom/chartboost/sdk/impl/b;Lcom/chartboost/sdk/impl/o;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/m;->j:Lcom/chartboost/sdk/impl/c;

    .line 136
    iget-object v0, p0, Lcom/chartboost/sdk/impl/m;->j:Lcom/chartboost/sdk/impl/c;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/c;->start()V

    .line 137
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/m;->a(Z)Z

    .line 139
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/chartboost/sdk/impl/m;->i:[Lcom/chartboost/sdk/impl/g;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 145
    return-void

    .line 140
    :cond_0
    new-instance v1, Lcom/chartboost/sdk/impl/g;

    iget-object v2, p0, Lcom/chartboost/sdk/impl/m;->e:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object v3, p0, Lcom/chartboost/sdk/impl/m;->g:Lcom/chartboost/sdk/impl/f;

    .line 141
    iget-object v4, p0, Lcom/chartboost/sdk/impl/m;->f:Lcom/chartboost/sdk/impl/b;

    iget-object v5, p0, Lcom/chartboost/sdk/impl/m;->h:Lcom/chartboost/sdk/impl/o;

    .line 140
    invoke-direct {v1, v2, v3, v4, v5}, Lcom/chartboost/sdk/impl/g;-><init>(Ljava/util/concurrent/BlockingQueue;Lcom/chartboost/sdk/impl/f;Lcom/chartboost/sdk/impl/b;Lcom/chartboost/sdk/impl/o;)V

    .line 142
    iget-object v2, p0, Lcom/chartboost/sdk/impl/m;->i:[Lcom/chartboost/sdk/impl/g;

    aput-object v1, v2, v0

    .line 143
    invoke-virtual {v1}, Lcom/chartboost/sdk/impl/g;->start()V

    .line 139
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public a(Lcom/chartboost/sdk/impl/m$a;)V
    .locals 4

    .prologue
    .line 193
    iget-object v1, p0, Lcom/chartboost/sdk/impl/m;->c:Ljava/util/Set;

    monitor-enter v1

    .line 194
    :try_start_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/m;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 193
    monitor-exit v1

    .line 200
    return-void

    .line 194
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/impl/l;

    .line 195
    invoke-interface {p1, v0}, Lcom/chartboost/sdk/impl/m$a;->a(Lcom/chartboost/sdk/impl/l;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 196
    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/l;->g()V

    goto :goto_0

    .line 193
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 207
    if-nez p1, :cond_0

    .line 208
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot cancelAll with a null tag"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 210
    :cond_0
    new-instance v0, Lcom/chartboost/sdk/impl/m$1;

    invoke-direct {v0, p0, p1}, Lcom/chartboost/sdk/impl/m$1;-><init>(Lcom/chartboost/sdk/impl/m;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/m;->a(Lcom/chartboost/sdk/impl/m$a;)V

    .line 216
    return-void
.end method

.method public a(Z)Z
    .locals 0

    .prologue
    .line 299
    iput-boolean p1, p0, Lcom/chartboost/sdk/impl/m;->k:Z

    .line 300
    return p1
.end method

.method public b()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 151
    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/m;->a(Z)Z

    .line 152
    iget-object v1, p0, Lcom/chartboost/sdk/impl/m;->j:Lcom/chartboost/sdk/impl/c;

    if-eqz v1, :cond_0

    .line 153
    iget-object v1, p0, Lcom/chartboost/sdk/impl/m;->j:Lcom/chartboost/sdk/impl/c;

    invoke-virtual {v1}, Lcom/chartboost/sdk/impl/c;->a()V

    .line 155
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/chartboost/sdk/impl/m;->i:[Lcom/chartboost/sdk/impl/g;

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 160
    return-void

    .line 156
    :cond_1
    iget-object v1, p0, Lcom/chartboost/sdk/impl/m;->i:[Lcom/chartboost/sdk/impl/g;

    aget-object v1, v1, v0

    if-eqz v1, :cond_2

    .line 157
    iget-object v1, p0, Lcom/chartboost/sdk/impl/m;->i:[Lcom/chartboost/sdk/impl/g;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/chartboost/sdk/impl/g;->a()V

    .line 155
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method b(Lcom/chartboost/sdk/impl/l;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chartboost/sdk/impl/l",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 273
    iget-object v1, p0, Lcom/chartboost/sdk/impl/m;->c:Ljava/util/Set;

    monitor-enter v1

    .line 274
    :try_start_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/m;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 273
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 277
    invoke-virtual {p1}, Lcom/chartboost/sdk/impl/l;->r()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 278
    iget-object v1, p0, Lcom/chartboost/sdk/impl/m;->b:Ljava/util/Map;

    monitor-enter v1

    .line 279
    :try_start_1
    invoke-virtual {p1}, Lcom/chartboost/sdk/impl/l;->e()Ljava/lang/String;

    move-result-object v2

    .line 280
    iget-object v0, p0, Lcom/chartboost/sdk/impl/m;->b:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Queue;

    .line 281
    if-eqz v0, :cond_1

    .line 282
    sget-boolean v3, Lcom/chartboost/sdk/impl/t;->b:Z

    if-eqz v3, :cond_0

    .line 283
    const-string v3, "Releasing %d waiting requests for cacheKey=%s."

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 284
    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v2, v4, v5

    .line 283
    invoke-static {v3, v4}, Lcom/chartboost/sdk/impl/t;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 288
    :cond_0
    iget-object v2, p0, Lcom/chartboost/sdk/impl/m;->d:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/PriorityBlockingQueue;->addAll(Ljava/util/Collection;)Z

    .line 278
    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 292
    :cond_2
    return-void

    .line 273
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 278
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/chartboost/sdk/impl/m;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    return v0
.end method
