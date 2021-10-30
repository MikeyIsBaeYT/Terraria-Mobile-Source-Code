.class final Lcom/flurry/android/fk;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private eD:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/android/fk;->eD:Ljava/util/concurrent/ExecutorService;

    .line 21
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/fk;->eD:Ljava/util/concurrent/ExecutorService;

    .line 22
    return-void
.end method


# virtual methods
.method public final a(Lcom/flurry/android/caching/ObjectData;Lcom/flurry/android/AppCloudResponseHandler;)V
    .locals 2

    .prologue
    .line 25
    iget-object v0, p0, Lcom/flurry/android/fk;->eD:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/flurry/android/gi;

    invoke-direct {v1, p1, p2}, Lcom/flurry/android/gi;-><init>(Lcom/flurry/android/caching/ObjectData;Lcom/flurry/android/AppCloudResponseHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 26
    return-void
.end method

.method public final b(Lcom/flurry/android/caching/ObjectData;Lcom/flurry/android/AppCloudResponseHandler;)V
    .locals 2

    .prologue
    .line 29
    iget-object v0, p0, Lcom/flurry/android/fk;->eD:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/flurry/android/er;

    invoke-direct {v1, p1, p2}, Lcom/flurry/android/er;-><init>(Lcom/flurry/android/caching/ObjectData;Lcom/flurry/android/AppCloudResponseHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 30
    return-void
.end method

.method public final c(Lcom/flurry/android/caching/ObjectData;Lcom/flurry/android/AppCloudResponseHandler;)V
    .locals 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/flurry/android/fk;->eD:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/flurry/android/go;

    invoke-direct {v1, p1, p2}, Lcom/flurry/android/go;-><init>(Lcom/flurry/android/caching/ObjectData;Lcom/flurry/android/AppCloudResponseHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 34
    return-void
.end method

.method public final d(Lcom/flurry/android/caching/ObjectData;Lcom/flurry/android/AppCloudResponseHandler;)V
    .locals 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/flurry/android/fk;->eD:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/flurry/android/ev;

    invoke-direct {v1, p1, p2}, Lcom/flurry/android/ev;-><init>(Lcom/flurry/android/caching/ObjectData;Lcom/flurry/android/AppCloudResponseHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 38
    return-void
.end method

.method public final e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 45
    iget-object v0, p0, Lcom/flurry/android/fk;->eD:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/flurry/android/eg;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, p3, v2}, Lcom/flurry/android/eg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 46
    return-void
.end method
