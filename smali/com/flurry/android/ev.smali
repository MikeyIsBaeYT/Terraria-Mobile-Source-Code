.class final Lcom/flurry/android/ev;
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

    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 229
    iput-object v0, p0, Lcom/flurry/android/ev;->gr:Lcom/flurry/android/caching/ObjectData;

    .line 230
    iput-object v0, p0, Lcom/flurry/android/ev;->cP:Lcom/flurry/android/AppCloudResponseHandler;

    .line 233
    iput-object p1, p0, Lcom/flurry/android/ev;->gr:Lcom/flurry/android/caching/ObjectData;

    .line 234
    iput-object p2, p0, Lcom/flurry/android/ev;->cP:Lcom/flurry/android/AppCloudResponseHandler;

    .line 235
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 240
    invoke-static {}, Lcom/flurry/android/FlurryAppCloud;->D()Lcom/flurry/android/CacheSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/CacheSyncManager;->getPendingData()Lcom/flurry/android/at;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/android/ev;->gr:Lcom/flurry/android/caching/ObjectData;

    invoke-virtual {v1}, Lcom/flurry/android/caching/ObjectData;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/android/at;->x(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 242
    invoke-static {}, Lcom/flurry/android/FlurryAppCloud;->D()Lcom/flurry/android/CacheSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/CacheSyncManager;->getPendingData()Lcom/flurry/android/at;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/android/ev;->gr:Lcom/flurry/android/caching/ObjectData;

    invoke-virtual {v1}, Lcom/flurry/android/caching/ObjectData;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/android/at;->getObjectById(Ljava/lang/String;)Lcom/flurry/android/caching/ObjectData;

    .line 254
    :cond_0
    :goto_0
    invoke-static {}, Lcom/flurry/android/FlurryAppCloud;->D()Lcom/flurry/android/CacheSyncManager;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/android/ev;->gr:Lcom/flurry/android/caching/ObjectData;

    invoke-virtual {v1}, Lcom/flurry/android/caching/ObjectData;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/android/CacheSyncManager;->checkIfDeleted(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 263
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    const-string v1, "{code:\"400\",note:\"Object is already deleted, new one has to be created.\"}"

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 265
    new-instance v1, Lcom/flurry/android/AppCloudResponse;

    invoke-direct {v1, v0}, Lcom/flurry/android/AppCloudResponse;-><init>(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 267
    :try_start_1
    iget-object v0, p0, Lcom/flurry/android/ev;->cP:Lcom/flurry/android/AppCloudResponseHandler;

    invoke-interface {v0, v1}, Lcom/flurry/android/AppCloudResponseHandler;->handleResponse(Lcom/flurry/android/AppCloudResponse;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 284
    :goto_1
    return-void

    .line 250
    :cond_1
    invoke-static {}, Lcom/flurry/android/FlurryAppCloud;->D()Lcom/flurry/android/CacheSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/CacheSyncManager;->getServerData()Lcom/flurry/android/az;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/android/ev;->gr:Lcom/flurry/android/caching/ObjectData;

    invoke-virtual {v1}, Lcom/flurry/android/caching/ObjectData;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/android/az;->x(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 251
    invoke-static {}, Lcom/flurry/android/FlurryAppCloud;->D()Lcom/flurry/android/CacheSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/CacheSyncManager;->getServerData()Lcom/flurry/android/az;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/android/ev;->gr:Lcom/flurry/android/caching/ObjectData;

    invoke-virtual {v1}, Lcom/flurry/android/caching/ObjectData;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/android/az;->getObjectById(Ljava/lang/String;)Lcom/flurry/android/caching/ObjectData;

    goto :goto_0

    .line 268
    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 271
    :catch_1
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 278
    :cond_2
    :try_start_3
    iget-object v0, p0, Lcom/flurry/android/ev;->cP:Lcom/flurry/android/AppCloudResponseHandler;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/flurry/android/AppCloudResponseHandler;->handleResponse(Lcom/flurry/android/AppCloudResponse;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 281
    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
