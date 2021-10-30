.class final Lcom/flurry/android/go;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private cP:Lcom/flurry/android/AppCloudResponseHandler;

.field private gr:Lcom/flurry/android/caching/ObjectData;


# direct methods
.method public constructor <init>(Lcom/flurry/android/caching/ObjectData;Lcom/flurry/android/AppCloudResponseHandler;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-object v0, p0, Lcom/flurry/android/go;->gr:Lcom/flurry/android/caching/ObjectData;

    .line 104
    iput-object v0, p0, Lcom/flurry/android/go;->cP:Lcom/flurry/android/AppCloudResponseHandler;

    .line 106
    iput-object p1, p0, Lcom/flurry/android/go;->gr:Lcom/flurry/android/caching/ObjectData;

    .line 107
    iput-object p2, p0, Lcom/flurry/android/go;->cP:Lcom/flurry/android/AppCloudResponseHandler;

    .line 108
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 112
    .line 113
    invoke-static {}, Lcom/flurry/android/FlurryAppCloud;->D()Lcom/flurry/android/CacheSyncManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/android/CacheSyncManager;->getPendingData()Lcom/flurry/android/at;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/android/go;->gr:Lcom/flurry/android/caching/ObjectData;

    invoke-virtual {v2}, Lcom/flurry/android/caching/ObjectData;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/flurry/android/at;->x(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 114
    invoke-static {}, Lcom/flurry/android/FlurryAppCloud;->D()Lcom/flurry/android/CacheSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/CacheSyncManager;->getPendingData()Lcom/flurry/android/at;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/android/go;->gr:Lcom/flurry/android/caching/ObjectData;

    invoke-virtual {v1}, Lcom/flurry/android/caching/ObjectData;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/android/at;->getObjectById(Ljava/lang/String;)Lcom/flurry/android/caching/ObjectData;

    move-result-object v0

    .line 130
    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    .line 131
    const-string v0, "CacheObjectManager"

    const-string v1, "Object marked to be deleted"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    invoke-static {}, Lcom/flurry/android/FlurryAppCloud;->D()Lcom/flurry/android/CacheSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/CacheSyncManager;->getPendingData()Lcom/flurry/android/at;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/android/go;->gr:Lcom/flurry/android/caching/ObjectData;

    invoke-virtual {v0, v1}, Lcom/flurry/android/at;->a(Lcom/flurry/android/caching/ObjectData;)Ljava/lang/String;

    .line 134
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    const-string v1, "{code:\"200\",note:\"Deleted from local cache.\"}"

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 135
    new-instance v1, Lcom/flurry/android/AppCloudResponse;

    invoke-direct {v1, v0}, Lcom/flurry/android/AppCloudResponse;-><init>(Lorg/json/JSONObject;)V

    .line 136
    iget-object v0, p0, Lcom/flurry/android/go;->cP:Lcom/flurry/android/AppCloudResponseHandler;

    invoke-interface {v0, v1}, Lcom/flurry/android/AppCloudResponseHandler;->handleResponse(Lcom/flurry/android/AppCloudResponse;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 143
    :goto_1
    iget-object v0, p0, Lcom/flurry/android/go;->gr:Lcom/flurry/android/caching/ObjectData;

    invoke-virtual {v0}, Lcom/flurry/android/caching/ObjectData;->getCollectionName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/flurry/android/AppCloudSearch;->onMakeSearchNotValidForCollection(Ljava/lang/String;)V

    .line 144
    invoke-static {}, Lcom/flurry/android/FlurryAppCloud;->D()Lcom/flurry/android/CacheSyncManager;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/android/go;->gr:Lcom/flurry/android/caching/ObjectData;

    invoke-virtual {v1}, Lcom/flurry/android/caching/ObjectData;->getId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/android/go;->cP:Lcom/flurry/android/AppCloudResponseHandler;

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Lcom/flurry/android/CacheSyncManager;->registerDirtyObject(Ljava/lang/String;Lcom/flurry/android/AppCloudResponseHandler;I)V

    .line 154
    :goto_2
    return-void

    .line 121
    :cond_1
    invoke-static {}, Lcom/flurry/android/FlurryAppCloud;->D()Lcom/flurry/android/CacheSyncManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/android/CacheSyncManager;->getServerData()Lcom/flurry/android/az;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/android/go;->gr:Lcom/flurry/android/caching/ObjectData;

    invoke-virtual {v2}, Lcom/flurry/android/caching/ObjectData;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/flurry/android/az;->x(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 122
    invoke-static {}, Lcom/flurry/android/FlurryAppCloud;->D()Lcom/flurry/android/CacheSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/CacheSyncManager;->getServerData()Lcom/flurry/android/az;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/android/go;->gr:Lcom/flurry/android/caching/ObjectData;

    invoke-virtual {v1}, Lcom/flurry/android/caching/ObjectData;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/android/az;->getObjectById(Ljava/lang/String;)Lcom/flurry/android/caching/ObjectData;

    move-result-object v0

    goto :goto_0

    .line 137
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 139
    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 148
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/flurry/android/go;->cP:Lcom/flurry/android/AppCloudResponseHandler;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/flurry/android/AppCloudResponseHandler;->handleResponse(Lcom/flurry/android/AppCloudResponse;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_2

    .line 149
    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method
