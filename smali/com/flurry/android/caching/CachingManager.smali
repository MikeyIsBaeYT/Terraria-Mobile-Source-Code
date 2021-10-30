.class public Lcom/flurry/android/caching/CachingManager;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private eD:Ljava/util/concurrent/ExecutorService;

.field private gs:Lcom/flurry/android/caching/n;

.field private gt:Lcom/flurry/android/caching/l;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Lcom/flurry/android/caching/n;

    invoke-direct {v0}, Lcom/flurry/android/caching/n;-><init>()V

    iput-object v0, p0, Lcom/flurry/android/caching/CachingManager;->gs:Lcom/flurry/android/caching/n;

    .line 23
    new-instance v0, Lcom/flurry/android/caching/l;

    invoke-direct {v0, p1}, Lcom/flurry/android/caching/l;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/flurry/android/caching/CachingManager;->gt:Lcom/flurry/android/caching/l;

    .line 24
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/caching/CachingManager;->eD:Ljava/util/concurrent/ExecutorService;

    .line 25
    return-void
.end method

.method static synthetic a(Lcom/flurry/android/caching/CachingManager;)Lcom/flurry/android/caching/n;
    .locals 1

    .prologue
    .line 10
    iget-object v0, p0, Lcom/flurry/android/caching/CachingManager;->gs:Lcom/flurry/android/caching/n;

    return-object v0
.end method

.method static synthetic b(Lcom/flurry/android/caching/CachingManager;)Lcom/flurry/android/caching/l;
    .locals 1

    .prologue
    .line 10
    iget-object v0, p0, Lcom/flurry/android/caching/CachingManager;->gt:Lcom/flurry/android/caching/l;

    return-object v0
.end method


# virtual methods
.method public decrementOperation(Lcom/flurry/android/caching/ObjectOperationData;Lcom/flurry/android/AppCloudResponseHandler;)V
    .locals 2

    .prologue
    .line 64
    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Lcom/flurry/android/caching/ObjectOperationData;->setOperationType(I)V

    .line 65
    iget-object v0, p0, Lcom/flurry/android/caching/CachingManager;->gs:Lcom/flurry/android/caching/n;

    invoke-virtual {v0, p1}, Lcom/flurry/android/caching/n;->j(Lcom/flurry/android/caching/ObjectOperationData;)V

    .line 66
    iget-object v0, p0, Lcom/flurry/android/caching/CachingManager;->eD:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/flurry/android/caching/a;

    invoke-direct {v1, p0, p2}, Lcom/flurry/android/caching/a;-><init>(Lcom/flurry/android/caching/CachingManager;Lcom/flurry/android/AppCloudResponseHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 67
    return-void
.end method

.method public deleteOperation(Lcom/flurry/android/caching/ObjectOperationData;Lcom/flurry/android/AppCloudResponseHandler;)V
    .locals 2

    .prologue
    .line 43
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/flurry/android/caching/ObjectOperationData;->setOperationType(I)V

    .line 44
    iget-object v0, p0, Lcom/flurry/android/caching/CachingManager;->gs:Lcom/flurry/android/caching/n;

    invoke-virtual {v0, p1}, Lcom/flurry/android/caching/n;->j(Lcom/flurry/android/caching/ObjectOperationData;)V

    .line 45
    iget-object v0, p0, Lcom/flurry/android/caching/CachingManager;->eD:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/flurry/android/caching/a;

    invoke-direct {v1, p0, p2}, Lcom/flurry/android/caching/a;-><init>(Lcom/flurry/android/caching/CachingManager;Lcom/flurry/android/AppCloudResponseHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 46
    return-void
.end method

.method public getOperation(Lcom/flurry/android/caching/ObjectOperationData;Lcom/flurry/android/AppCloudResponseHandler;)V
    .locals 2

    .prologue
    .line 36
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/flurry/android/caching/ObjectOperationData;->setOperationType(I)V

    .line 37
    iget-object v0, p0, Lcom/flurry/android/caching/CachingManager;->gs:Lcom/flurry/android/caching/n;

    invoke-virtual {v0, p1}, Lcom/flurry/android/caching/n;->j(Lcom/flurry/android/caching/ObjectOperationData;)V

    .line 38
    iget-object v0, p0, Lcom/flurry/android/caching/CachingManager;->eD:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/flurry/android/caching/a;

    invoke-direct {v1, p0, p2}, Lcom/flurry/android/caching/a;-><init>(Lcom/flurry/android/caching/CachingManager;Lcom/flurry/android/AppCloudResponseHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 39
    return-void
.end method

.method public incrementOperation(Lcom/flurry/android/caching/ObjectOperationData;Lcom/flurry/android/AppCloudResponseHandler;)V
    .locals 2

    .prologue
    .line 57
    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Lcom/flurry/android/caching/ObjectOperationData;->setOperationType(I)V

    .line 58
    iget-object v0, p0, Lcom/flurry/android/caching/CachingManager;->gs:Lcom/flurry/android/caching/n;

    invoke-virtual {v0, p1}, Lcom/flurry/android/caching/n;->j(Lcom/flurry/android/caching/ObjectOperationData;)V

    .line 59
    iget-object v0, p0, Lcom/flurry/android/caching/CachingManager;->eD:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/flurry/android/caching/a;

    invoke-direct {v1, p0, p2}, Lcom/flurry/android/caching/a;-><init>(Lcom/flurry/android/caching/CachingManager;Lcom/flurry/android/AppCloudResponseHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 60
    return-void
.end method

.method public saveOrCreateOperation(Lcom/flurry/android/caching/ObjectOperationData;Lcom/flurry/android/AppCloudResponseHandler;)V
    .locals 2

    .prologue
    .line 29
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/flurry/android/caching/ObjectOperationData;->setOperationType(I)V

    .line 30
    iget-object v0, p0, Lcom/flurry/android/caching/CachingManager;->gs:Lcom/flurry/android/caching/n;

    invoke-virtual {v0, p1}, Lcom/flurry/android/caching/n;->j(Lcom/flurry/android/caching/ObjectOperationData;)V

    .line 31
    iget-object v0, p0, Lcom/flurry/android/caching/CachingManager;->eD:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/flurry/android/caching/a;

    invoke-direct {v1, p0, p2}, Lcom/flurry/android/caching/a;-><init>(Lcom/flurry/android/caching/CachingManager;Lcom/flurry/android/AppCloudResponseHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 32
    return-void
.end method

.method public searchOperation(Lcom/flurry/android/caching/ObjectOperationData;Lcom/flurry/android/AppCloudResponseHandler;)V
    .locals 2

    .prologue
    .line 50
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/flurry/android/caching/ObjectOperationData;->setOperationType(I)V

    .line 51
    iget-object v0, p0, Lcom/flurry/android/caching/CachingManager;->gs:Lcom/flurry/android/caching/n;

    invoke-virtual {v0, p1}, Lcom/flurry/android/caching/n;->j(Lcom/flurry/android/caching/ObjectOperationData;)V

    .line 52
    iget-object v0, p0, Lcom/flurry/android/caching/CachingManager;->eD:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/flurry/android/caching/a;

    invoke-direct {v1, p0, p2}, Lcom/flurry/android/caching/a;-><init>(Lcom/flurry/android/caching/CachingManager;Lcom/flurry/android/AppCloudResponseHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 53
    return-void
.end method
