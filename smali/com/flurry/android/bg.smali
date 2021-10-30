.class final Lcom/flurry/android/bg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/android/AppCloudResponseHandler;


# instance fields
.field private synthetic de:Ljava/lang/String;

.field private synthetic df:Lcom/flurry/android/CacheSyncManager;


# direct methods
.method constructor <init>(Lcom/flurry/android/CacheSyncManager;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 301
    iput-object p1, p0, Lcom/flurry/android/bg;->df:Lcom/flurry/android/CacheSyncManager;

    iput-object p2, p0, Lcom/flurry/android/bg;->de:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleResponse(Lcom/flurry/android/AppCloudResponse;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 305
    invoke-virtual {p1}, Lcom/flurry/android/AppCloudResponse;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 307
    iget-object v0, p0, Lcom/flurry/android/bg;->df:Lcom/flurry/android/CacheSyncManager;

    invoke-static {v0}, Lcom/flurry/android/CacheSyncManager;->a(Lcom/flurry/android/CacheSyncManager;)Lcom/flurry/android/at;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/android/bg;->de:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/flurry/android/at;->w(Ljava/lang/String;)Lcom/flurry/android/caching/ObjectData;

    .line 308
    iget-object v0, p0, Lcom/flurry/android/bg;->df:Lcom/flurry/android/CacheSyncManager;

    invoke-static {v0}, Lcom/flurry/android/CacheSyncManager;->b(Lcom/flurry/android/CacheSyncManager;)Lcom/flurry/android/az;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/android/bg;->de:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/flurry/android/az;->w(Ljava/lang/String;)Lcom/flurry/android/caching/ObjectData;

    .line 310
    iget-object v0, p0, Lcom/flurry/android/bg;->df:Lcom/flurry/android/CacheSyncManager;

    invoke-static {v0}, Lcom/flurry/android/CacheSyncManager;->c(Lcom/flurry/android/CacheSyncManager;)Lcom/flurry/android/dc;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/android/bg;->de:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/flurry/android/dc;->s(Ljava/lang/String;)V

    .line 312
    invoke-static {}, Lcom/flurry/android/CacheSyncManager;->b()Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/android/bg;->de:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/AppCloudResponseHandler;

    .line 313
    if-eqz v0, :cond_0

    .line 314
    invoke-interface {v0, p1}, Lcom/flurry/android/AppCloudResponseHandler;->handleResponse(Lcom/flurry/android/AppCloudResponse;)V

    .line 315
    :cond_0
    invoke-static {}, Lcom/flurry/android/CacheSyncManager;->b()Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/android/bg;->de:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    :goto_0
    return-void

    .line 318
    :cond_1
    const-string v0, "CacheSyncManager"

    const-string v1, "DELETE didn\'t proceed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
