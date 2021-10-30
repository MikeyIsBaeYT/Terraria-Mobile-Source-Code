.class final Lcom/flurry/android/bc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/android/AppCloudResponseHandler;


# instance fields
.field private synthetic de:Ljava/lang/String;

.field private synthetic df:Lcom/flurry/android/CacheSyncManager;


# direct methods
.method constructor <init>(Lcom/flurry/android/CacheSyncManager;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 167
    iput-object p1, p0, Lcom/flurry/android/bc;->df:Lcom/flurry/android/CacheSyncManager;

    iput-object p2, p0, Lcom/flurry/android/bc;->de:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleResponse(Lcom/flurry/android/AppCloudResponse;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 172
    invoke-virtual {p1}, Lcom/flurry/android/AppCloudResponse;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 175
    iget-object v0, p0, Lcom/flurry/android/bc;->df:Lcom/flurry/android/CacheSyncManager;

    invoke-static {v0}, Lcom/flurry/android/CacheSyncManager;->a(Lcom/flurry/android/CacheSyncManager;)Lcom/flurry/android/at;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/android/bc;->de:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/flurry/android/at;->w(Ljava/lang/String;)Lcom/flurry/android/caching/ObjectData;

    move-result-object v7

    .line 176
    invoke-virtual {p1}, Lcom/flurry/android/AppCloudResponse;->getResponse()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "_id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/flurry/android/caching/ObjectData;->setId(Ljava/lang/String;)V

    .line 177
    iget-object v0, p0, Lcom/flurry/android/bc;->df:Lcom/flurry/android/CacheSyncManager;

    invoke-static {v0}, Lcom/flurry/android/CacheSyncManager;->b(Lcom/flurry/android/CacheSyncManager;)Lcom/flurry/android/az;

    move-result-object v0

    iget-object v4, p0, Lcom/flurry/android/bc;->de:Ljava/lang/String;

    const/4 v1, 0x0

    move v6, v1

    :goto_0
    invoke-virtual {v7}, Lcom/flurry/android/caching/ObjectData;->getKeyValues()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v6, v1, :cond_1

    invoke-virtual {v7}, Lcom/flurry/android/caching/ObjectData;->getKeyValues()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/NameValuePair;

    invoke-interface {v1}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7}, Lcom/flurry/android/caching/ObjectData;->getKeyValues()Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/http/NameValuePair;

    invoke-interface {v2}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7}, Lcom/flurry/android/caching/ObjectData;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7}, Lcom/flurry/android/caching/ObjectData;->isUser()Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/flurry/android/az;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v1, v6, 0x1

    move v6, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v7}, Lcom/flurry/android/caching/ObjectData;->getCollectionName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/flurry/android/az;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 179
    :cond_1
    iget-object v0, p0, Lcom/flurry/android/bc;->df:Lcom/flurry/android/CacheSyncManager;

    invoke-static {v0}, Lcom/flurry/android/CacheSyncManager;->c(Lcom/flurry/android/CacheSyncManager;)Lcom/flurry/android/dc;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/android/bc;->de:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/flurry/android/dc;->s(Ljava/lang/String;)V

    .line 181
    invoke-static {}, Lcom/flurry/android/CacheSyncManager;->b()Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/android/bc;->de:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/AppCloudResponseHandler;

    .line 182
    if-eqz v0, :cond_2

    .line 183
    invoke-interface {v0, p1}, Lcom/flurry/android/AppCloudResponseHandler;->handleResponse(Lcom/flurry/android/AppCloudResponse;)V

    .line 185
    :cond_2
    invoke-static {}, Lcom/flurry/android/CacheSyncManager;->b()Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/android/bc;->de:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    :goto_2
    return-void

    .line 188
    :cond_3
    invoke-virtual {p1}, Lcom/flurry/android/AppCloudResponse;->getResponseMessage()Ljava/lang/String;

    move-result-object v0

    .line 189
    const-string v1, "account already exists for email"

    .line 190
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 191
    iget-object v0, p0, Lcom/flurry/android/bc;->df:Lcom/flurry/android/CacheSyncManager;

    invoke-static {v0}, Lcom/flurry/android/CacheSyncManager;->a(Lcom/flurry/android/CacheSyncManager;)Lcom/flurry/android/at;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/android/bc;->de:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/flurry/android/at;->w(Ljava/lang/String;)Lcom/flurry/android/caching/ObjectData;

    .line 192
    iget-object v0, p0, Lcom/flurry/android/bc;->df:Lcom/flurry/android/CacheSyncManager;

    invoke-static {v0}, Lcom/flurry/android/CacheSyncManager;->c(Lcom/flurry/android/CacheSyncManager;)Lcom/flurry/android/dc;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/android/bc;->de:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/flurry/android/dc;->s(Ljava/lang/String;)V

    .line 194
    invoke-static {}, Lcom/flurry/android/CacheSyncManager;->b()Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/android/bc;->de:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/AppCloudResponseHandler;

    .line 195
    if-eqz v0, :cond_4

    .line 196
    invoke-interface {v0, p1}, Lcom/flurry/android/AppCloudResponseHandler;->handleResponse(Lcom/flurry/android/AppCloudResponse;)V

    .line 198
    :cond_4
    invoke-static {}, Lcom/flurry/android/CacheSyncManager;->b()Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/android/bc;->de:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    :cond_5
    const-string v0, "CacheSyncManager"

    const-string v1, "CREATE didn\'t proceed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method
