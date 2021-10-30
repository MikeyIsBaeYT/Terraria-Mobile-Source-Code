.class final Lcom/flurry/android/er;
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
    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 203
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/android/er;->gr:Lcom/flurry/android/caching/ObjectData;

    .line 206
    iput-object p1, p0, Lcom/flurry/android/er;->gr:Lcom/flurry/android/caching/ObjectData;

    .line 207
    iput-object p2, p0, Lcom/flurry/android/er;->cP:Lcom/flurry/android/AppCloudResponseHandler;

    .line 208
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 212
    invoke-static {}, Lcom/flurry/android/FlurryAppCloud;->D()Lcom/flurry/android/CacheSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/CacheSyncManager;->getPendingData()Lcom/flurry/android/at;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/android/er;->gr:Lcom/flurry/android/caching/ObjectData;

    invoke-virtual {v0, v1}, Lcom/flurry/android/at;->b(Lcom/flurry/android/caching/ObjectData;)V

    .line 215
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    const-string v1, "{code:\"200\",note:\"Updated in local cache.\"}"

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 216
    new-instance v1, Lcom/flurry/android/AppCloudResponse;

    invoke-direct {v1, v0}, Lcom/flurry/android/AppCloudResponse;-><init>(Lorg/json/JSONObject;)V

    .line 217
    iget-object v0, p0, Lcom/flurry/android/er;->cP:Lcom/flurry/android/AppCloudResponseHandler;

    invoke-interface {v0, v1}, Lcom/flurry/android/AppCloudResponseHandler;->handleResponse(Lcom/flurry/android/AppCloudResponse;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 224
    :goto_0
    invoke-static {}, Lcom/flurry/android/FlurryAppCloud;->D()Lcom/flurry/android/CacheSyncManager;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/android/er;->gr:Lcom/flurry/android/caching/ObjectData;

    invoke-virtual {v1}, Lcom/flurry/android/caching/ObjectData;->getId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/android/er;->cP:Lcom/flurry/android/AppCloudResponseHandler;

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Lcom/flurry/android/CacheSyncManager;->registerDirtyObject(Ljava/lang/String;Lcom/flurry/android/AppCloudResponseHandler;I)V

    .line 225
    return-void

    .line 218
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 220
    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
