.class final Lcom/flurry/android/gi;
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
    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/android/gi;->gr:Lcom/flurry/android/caching/ObjectData;

    .line 161
    iput-object p1, p0, Lcom/flurry/android/gi;->gr:Lcom/flurry/android/caching/ObjectData;

    .line 162
    iput-object p2, p0, Lcom/flurry/android/gi;->cP:Lcom/flurry/android/AppCloudResponseHandler;

    .line 163
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 168
    invoke-static {}, Lcom/flurry/android/FlurryAppCloud;->D()Lcom/flurry/android/CacheSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/CacheSyncManager;->getPendingData()Lcom/flurry/android/at;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/android/gi;->gr:Lcom/flurry/android/caching/ObjectData;

    invoke-virtual {v0, v1}, Lcom/flurry/android/at;->a(Lcom/flurry/android/caching/ObjectData;)Ljava/lang/String;

    move-result-object v1

    .line 169
    const-string v0, "CacheObjectManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "temp ID is = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    const-string v2, "{code:\"200\",note:\"Created in local cache.\"}"

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 173
    new-instance v2, Lcom/flurry/android/AppCloudResponse;

    invoke-direct {v2, v0}, Lcom/flurry/android/AppCloudResponse;-><init>(Lorg/json/JSONObject;)V

    .line 174
    const-string v0, "testCollection2"

    invoke-static {v0}, Lcom/flurry/android/AppCloudObject;->create(Ljava/lang/String;)Lcom/flurry/android/AppCloudObject;

    move-result-object v0

    .line 175
    invoke-virtual {v0, v1}, Lcom/flurry/android/AppCloudObject;->setId(Ljava/lang/String;)V

    .line 176
    invoke-virtual {v2, v0}, Lcom/flurry/android/AppCloudResponse;->setObject(Lcom/flurry/android/AppCloudObject;)V

    .line 177
    iget-object v0, p0, Lcom/flurry/android/gi;->cP:Lcom/flurry/android/AppCloudResponseHandler;

    invoke-interface {v0, v2}, Lcom/flurry/android/AppCloudResponseHandler;->handleResponse(Lcom/flurry/android/AppCloudResponse;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 184
    :goto_0
    invoke-static {}, Lcom/flurry/android/FlurryAppCloud;->D()Lcom/flurry/android/CacheSyncManager;

    move-result-object v0

    iget-object v2, p0, Lcom/flurry/android/gi;->cP:Lcom/flurry/android/AppCloudResponseHandler;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/flurry/android/CacheSyncManager;->registerDirtyObject(Ljava/lang/String;Lcom/flurry/android/AppCloudResponseHandler;I)V

    .line 185
    return-void

    .line 178
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 180
    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
