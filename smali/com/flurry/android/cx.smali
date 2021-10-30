.class abstract Lcom/flurry/android/cx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/android/AppCloudObserver;


# instance fields
.field protected mCollectionName:Ljava/lang/String;

.field protected mEmail:Ljava/lang/String;

.field protected mId:Ljava/lang/String;

.field protected mUsername:Ljava/lang/String;

.field protected paramMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected password:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/flurry/android/cx;->mId:Ljava/lang/String;

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lcom/flurry/android/cx;->mCollectionName:Ljava/lang/String;

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/flurry/android/cx;->paramMap:Ljava/util/HashMap;

    .line 35
    return-void
.end method


# virtual methods
.method public containsObserver()Z
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/flurry/android/cx;->mId:Ljava/lang/String;

    invoke-static {v0}, Lcom/flurry/android/r;->d(Ljava/lang/String;)Z

    move-result v0

    .line 240
    return v0
.end method

.method protected createObject(Lorg/json/JSONObject;)V
    .locals 4

    .prologue
    .line 185
    :try_start_0
    const-string v0, "_type"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    const-string v0, "_type"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/cx;->mCollectionName:Ljava/lang/String;

    .line 188
    :cond_0
    const-string v0, "_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 189
    const-string v0, "_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/cx;->mId:Ljava/lang/String;

    .line 191
    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 193
    invoke-virtual {p1}, Lorg/json/JSONObject;->names()Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 194
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 195
    const-string v3, "code"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "note"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 196
    :cond_2
    iget-object v3, p0, Lcom/flurry/android/cx;->paramMap:Ljava/util/HashMap;

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 199
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 202
    :cond_4
    return-void
.end method

.method protected createUser(Lorg/json/JSONObject;)V
    .locals 4

    .prologue
    .line 159
    :try_start_0
    const-string v0, "username"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    const-string v0, "username"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/cx;->mUsername:Ljava/lang/String;

    .line 163
    :cond_0
    const-string v0, "email"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 164
    const-string v0, "email"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/cx;->mEmail:Ljava/lang/String;

    .line 167
    :cond_1
    const-string v0, "_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 168
    const-string v0, "_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/cx;->mId:Ljava/lang/String;

    .line 170
    :cond_2
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 172
    invoke-virtual {p1}, Lorg/json/JSONObject;->names()Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 173
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 174
    iget-object v3, p0, Lcom/flurry/android/cx;->paramMap:Ljava/util/HashMap;

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 177
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 180
    :cond_3
    return-void
.end method

.method protected decrement(Ljava/lang/String;Ljava/lang/String;Lcom/flurry/android/responses/AppCloudCommonOperationResponseHandler;)V
    .locals 3

    .prologue
    .line 585
    instance-of v0, p0, Lcom/flurry/android/AppCloudUser;

    .line 587
    if-eqz v0, :cond_0

    .line 588
    new-instance v0, Lcom/flurry/android/caching/ObjectOperationData;

    iget-object v1, p0, Lcom/flurry/android/cx;->mId:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/flurry/android/caching/ObjectOperationData;-><init>(Ljava/lang/String;)V

    .line 594
    :goto_0
    invoke-virtual {v0, p1, p2}, Lcom/flurry/android/caching/ObjectOperationData;->addKeyValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    invoke-static {}, Lcom/flurry/android/FlurryAppCloud;->C()Lcom/flurry/android/caching/CachingManager;

    move-result-object v1

    new-instance v2, Lcom/flurry/android/fv;

    invoke-direct {v2, p0, p3}, Lcom/flurry/android/fv;-><init>(Lcom/flurry/android/cx;Lcom/flurry/android/responses/AppCloudCommonOperationResponseHandler;)V

    invoke-virtual {v1, v0, v2}, Lcom/flurry/android/caching/CachingManager;->decrementOperation(Lcom/flurry/android/caching/ObjectOperationData;Lcom/flurry/android/AppCloudResponseHandler;)V

    .line 616
    return-void

    .line 591
    :cond_0
    new-instance v0, Lcom/flurry/android/caching/ObjectOperationData;

    iget-object v1, p0, Lcom/flurry/android/cx;->mId:Ljava/lang/String;

    iget-object v2, p0, Lcom/flurry/android/cx;->mCollectionName:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/flurry/android/caching/ObjectOperationData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected delete(Lcom/flurry/android/AppCloudResponseHandler;)V
    .locals 4

    .prologue
    .line 511
    instance-of v1, p0, Lcom/flurry/android/AppCloudUser;

    .line 513
    if-eqz v1, :cond_0

    .line 514
    new-instance v0, Lcom/flurry/android/caching/ObjectData;

    iget-object v2, p0, Lcom/flurry/android/cx;->mId:Ljava/lang/String;

    invoke-direct {v0, v2}, Lcom/flurry/android/caching/ObjectData;-><init>(Ljava/lang/String;)V

    .line 520
    :goto_0
    invoke-static {}, Lcom/flurry/android/FlurryAppCloud;->E()Lcom/flurry/android/fk;

    move-result-object v2

    new-instance v3, Lcom/flurry/android/gb;

    invoke-direct {v3, p0, v1, p1}, Lcom/flurry/android/gb;-><init>(Lcom/flurry/android/cx;ZLcom/flurry/android/AppCloudResponseHandler;)V

    invoke-virtual {v2, v0, v3}, Lcom/flurry/android/fk;->c(Lcom/flurry/android/caching/ObjectData;Lcom/flurry/android/AppCloudResponseHandler;)V

    .line 542
    return-void

    .line 517
    :cond_0
    new-instance v0, Lcom/flurry/android/caching/ObjectData;

    iget-object v2, p0, Lcom/flurry/android/cx;->mId:Ljava/lang/String;

    iget-object v3, p0, Lcom/flurry/android/cx;->mCollectionName:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Lcom/flurry/android/caching/ObjectData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 54
    :try_start_0
    iget-object v0, p0, Lcom/flurry/android/cx;->paramMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/flurry/android/cx;->paramMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    .line 60
    goto :goto_0

    .line 67
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method

.method public getFloat(Ljava/lang/String;)F
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 96
    :try_start_0
    iget-object v0, p0, Lcom/flurry/android/cx;->paramMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/flurry/android/cx;->paramMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 109
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 102
    goto :goto_0

    .line 109
    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/flurry/android/cx;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 75
    :try_start_0
    iget-object v0, p0, Lcom/flurry/android/cx;->paramMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/flurry/android/cx;->paramMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 88
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 81
    goto :goto_0

    .line 88
    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0
.end method

.method public getKeyValues()Ljava/util/Vector;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation

    .prologue
    .line 122
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 123
    iget-object v0, p0, Lcom/flurry/android/cx;->paramMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 125
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 127
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 128
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 130
    const-string v4, "_"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "username"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "email"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "code"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "note"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 135
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 136
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    invoke-direct {v4, v1, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 141
    :cond_1
    return-object v2
.end method

.method protected getObjectOrUser(Lcom/flurry/android/AppCloudResponseHandler;)V
    .locals 4

    .prologue
    .line 432
    instance-of v1, p0, Lcom/flurry/android/AppCloudUser;

    .line 434
    if-eqz v1, :cond_0

    .line 435
    new-instance v0, Lcom/flurry/android/caching/ObjectData;

    iget-object v2, p0, Lcom/flurry/android/cx;->mId:Ljava/lang/String;

    invoke-direct {v0, v2}, Lcom/flurry/android/caching/ObjectData;-><init>(Ljava/lang/String;)V

    .line 442
    :goto_0
    :try_start_0
    invoke-static {}, Lcom/flurry/android/FlurryAppCloud;->E()Lcom/flurry/android/fk;

    move-result-object v2

    new-instance v3, Lcom/flurry/android/fy;

    invoke-direct {v3, p0, p1, v1}, Lcom/flurry/android/fy;-><init>(Lcom/flurry/android/cx;Lcom/flurry/android/AppCloudResponseHandler;Z)V

    invoke-virtual {v2, v0, v3}, Lcom/flurry/android/fk;->d(Lcom/flurry/android/caching/ObjectData;Lcom/flurry/android/AppCloudResponseHandler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 505
    :goto_1
    return-void

    .line 438
    :cond_0
    new-instance v0, Lcom/flurry/android/caching/ObjectData;

    iget-object v2, p0, Lcom/flurry/android/cx;->mId:Ljava/lang/String;

    iget-object v3, p0, Lcom/flurry/android/cx;->mCollectionName:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Lcom/flurry/android/caching/ObjectData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 501
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method protected increment(Ljava/lang/String;Ljava/lang/String;Lcom/flurry/android/responses/AppCloudCommonOperationResponseHandler;)V
    .locals 3

    .prologue
    .line 548
    instance-of v0, p0, Lcom/flurry/android/AppCloudUser;

    .line 550
    if-eqz v0, :cond_0

    .line 551
    new-instance v0, Lcom/flurry/android/caching/ObjectOperationData;

    iget-object v1, p0, Lcom/flurry/android/cx;->mId:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/flurry/android/caching/ObjectOperationData;-><init>(Ljava/lang/String;)V

    .line 557
    :goto_0
    invoke-virtual {v0, p1, p2}, Lcom/flurry/android/caching/ObjectOperationData;->addKeyValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    invoke-static {}, Lcom/flurry/android/FlurryAppCloud;->C()Lcom/flurry/android/caching/CachingManager;

    move-result-object v1

    new-instance v2, Lcom/flurry/android/ga;

    invoke-direct {v2, p0, p3}, Lcom/flurry/android/ga;-><init>(Lcom/flurry/android/cx;Lcom/flurry/android/responses/AppCloudCommonOperationResponseHandler;)V

    invoke-virtual {v1, v0, v2}, Lcom/flurry/android/caching/CachingManager;->incrementOperation(Lcom/flurry/android/caching/ObjectOperationData;Lcom/flurry/android/AppCloudResponseHandler;)V

    .line 579
    return-void

    .line 554
    :cond_0
    new-instance v0, Lcom/flurry/android/caching/ObjectOperationData;

    iget-object v1, p0, Lcom/flurry/android/cx;->mId:Ljava/lang/String;

    iget-object v2, p0, Lcom/flurry/android/cx;->mCollectionName:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/flurry/android/caching/ObjectOperationData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isAutoSyncEnabled()Z
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/flurry/android/cx;->mId:Ljava/lang/String;

    invoke-static {v0}, Lcom/flurry/android/r;->e(Ljava/lang/String;)Z

    move-result v0

    .line 258
    return v0
.end method

.method final q(Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 277
    .line 280
    invoke-static {}, Lcom/flurry/android/FlurryAppCloud;->D()Lcom/flurry/android/CacheSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/CacheSyncManager;->getPendingData()Lcom/flurry/android/at;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/flurry/android/at;->x(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 281
    invoke-static {}, Lcom/flurry/android/FlurryAppCloud;->D()Lcom/flurry/android/CacheSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/CacheSyncManager;->getPendingData()Lcom/flurry/android/at;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/flurry/android/at;->getObjectById(Ljava/lang/String;)Lcom/flurry/android/caching/ObjectData;

    move-result-object v0

    move-object v1, v0

    .line 284
    :goto_0
    invoke-static {}, Lcom/flurry/android/FlurryAppCloud;->D()Lcom/flurry/android/CacheSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/CacheSyncManager;->getServerData()Lcom/flurry/android/az;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/flurry/android/az;->x(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 285
    invoke-static {}, Lcom/flurry/android/FlurryAppCloud;->D()Lcom/flurry/android/CacheSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/CacheSyncManager;->getServerData()Lcom/flurry/android/az;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/flurry/android/az;->getObjectById(Ljava/lang/String;)Lcom/flurry/android/caching/ObjectData;

    move-result-object v0

    move-object v4, v0

    .line 288
    :goto_1
    if-nez v1, :cond_1

    if-nez v4, :cond_1

    .line 324
    :cond_0
    return-void

    .line 294
    :cond_1
    if-eqz v4, :cond_2

    .line 295
    invoke-virtual {v4}, Lcom/flurry/android/caching/ObjectData;->getCollectionName()Ljava/lang/String;

    move-result-object v2

    .line 298
    :cond_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    .line 299
    invoke-virtual {v1}, Lcom/flurry/android/caching/ObjectData;->getCollectionName()Ljava/lang/String;

    .line 302
    :cond_3
    invoke-virtual {p0, p1}, Lcom/flurry/android/cx;->setId(Ljava/lang/String;)V

    .line 304
    if-eqz v4, :cond_4

    move v2, v3

    .line 306
    :goto_2
    invoke-virtual {v4}, Lcom/flurry/android/caching/ObjectData;->getKeyValues()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v2, v0, :cond_4

    .line 308
    invoke-virtual {v4}, Lcom/flurry/android/caching/ObjectData;->getKeyValues()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/NameValuePair;

    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v5

    .line 309
    invoke-virtual {v4}, Lcom/flurry/android/caching/ObjectData;->getKeyValues()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/NameValuePair;

    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 311
    invoke-virtual {p0, v5, v0}, Lcom/flurry/android/cx;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 306
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    .line 315
    :cond_4
    if-eqz v1, :cond_0

    .line 316
    :goto_3
    invoke-virtual {v1}, Lcom/flurry/android/caching/ObjectData;->getKeyValues()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v3, v0, :cond_0

    .line 318
    invoke-virtual {v1}, Lcom/flurry/android/caching/ObjectData;->getKeyValues()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/NameValuePair;

    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v2

    .line 319
    invoke-virtual {v1}, Lcom/flurry/android/caching/ObjectData;->getKeyValues()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/NameValuePair;

    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 321
    invoke-virtual {p0, v2, v0}, Lcom/flurry/android/cx;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 316
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_5
    move-object v4, v2

    goto :goto_1

    :cond_6
    move-object v1, v2

    goto/16 :goto_0
.end method

.method public removeAllObservers()Z
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/flurry/android/cx;->mId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    const/4 v0, 0x0

    .line 212
    :goto_0
    return v0

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/flurry/android/cx;->mId:Ljava/lang/String;

    invoke-static {v0}, Lcom/flurry/android/r;->a(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public removeObserver(Lcom/flurry/android/AppCloudValueUpdateHandler;)Z
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/flurry/android/cx;->mId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 230
    const/4 v0, 0x0

    .line 234
    :goto_0
    return v0

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/flurry/android/cx;->mId:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/flurry/android/r;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public removeObserverForKey(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/flurry/android/cx;->mId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    const/4 v0, 0x0

    .line 223
    :goto_0
    return v0

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/flurry/android/cx;->mId:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/flurry/android/r;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public saveOrCreateWithCompletionHandler(Lcom/flurry/android/responses/AppCloudApplyOperationResonseHandler;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 331
    instance-of v1, p0, Lcom/flurry/android/AppCloudUser;

    .line 333
    if-eqz v1, :cond_3

    .line 334
    new-instance v0, Lcom/flurry/android/caching/ObjectData;

    iget-object v2, p0, Lcom/flurry/android/cx;->mId:Ljava/lang/String;

    invoke-direct {v0, v2}, Lcom/flurry/android/caching/ObjectData;-><init>(Ljava/lang/String;)V

    .line 336
    invoke-virtual {p0}, Lcom/flurry/android/cx;->getKeyValues()Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/flurry/android/caching/ObjectData;->setKeyValues(Ljava/util/Vector;)V

    .line 338
    iget-object v2, p0, Lcom/flurry/android/cx;->mUsername:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/flurry/android/cx;->mUsername:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 340
    const-string v2, "username"

    iget-object v3, p0, Lcom/flurry/android/cx;->mUsername:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/flurry/android/caching/ObjectData;->addKeyValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    :cond_0
    iget-object v2, p0, Lcom/flurry/android/cx;->password:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/flurry/android/cx;->password:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 344
    const-string v2, "password"

    iget-object v3, p0, Lcom/flurry/android/cx;->password:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/flurry/android/caching/ObjectData;->addKeyValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    :cond_1
    iget-object v2, p0, Lcom/flurry/android/cx;->mEmail:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/flurry/android/cx;->mEmail:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 348
    const-string v2, "email"

    iget-object v3, p0, Lcom/flurry/android/cx;->mEmail:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/flurry/android/caching/ObjectData;->addKeyValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/flurry/android/cx;->mId:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 358
    if-eqz v1, :cond_5

    .line 360
    new-instance v2, Lcom/flurry/android/caching/ObjectOperationData;

    const/4 v1, 0x0

    invoke-direct {v2, v1}, Lcom/flurry/android/caching/ObjectOperationData;-><init>(Ljava/lang/String;)V

    .line 362
    invoke-virtual {v0}, Lcom/flurry/android/caching/ObjectData;->getKeyValues()Ljava/util/Vector;

    move-result-object v3

    .line 363
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 364
    invoke-virtual {v3, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/NameValuePair;

    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/NameValuePair;

    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v4, v0}, Lcom/flurry/android/caching/ObjectOperationData;->addKeyValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 352
    :cond_3
    new-instance v0, Lcom/flurry/android/caching/ObjectData;

    iget-object v2, p0, Lcom/flurry/android/cx;->mId:Ljava/lang/String;

    iget-object v3, p0, Lcom/flurry/android/cx;->mCollectionName:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Lcom/flurry/android/caching/ObjectData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    invoke-virtual {p0}, Lcom/flurry/android/cx;->getKeyValues()Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/flurry/android/caching/ObjectData;->setKeyValues(Ljava/util/Vector;)V

    goto :goto_0

    .line 367
    :cond_4
    invoke-static {}, Lcom/flurry/android/FlurryAppCloud;->C()Lcom/flurry/android/caching/CachingManager;

    move-result-object v0

    new-instance v1, Lcom/flurry/android/ge;

    invoke-direct {v1, p0, p1}, Lcom/flurry/android/ge;-><init>(Lcom/flurry/android/cx;Lcom/flurry/android/responses/AppCloudApplyOperationResonseHandler;)V

    invoke-virtual {v0, v2, v1}, Lcom/flurry/android/caching/CachingManager;->saveOrCreateOperation(Lcom/flurry/android/caching/ObjectOperationData;Lcom/flurry/android/AppCloudResponseHandler;)V

    .line 426
    :goto_2
    return-void

    .line 385
    :cond_5
    invoke-static {}, Lcom/flurry/android/FlurryAppCloud;->E()Lcom/flurry/android/fk;

    move-result-object v1

    new-instance v2, Lcom/flurry/android/gd;

    invoke-direct {v2, p0, p1}, Lcom/flurry/android/gd;-><init>(Lcom/flurry/android/cx;Lcom/flurry/android/responses/AppCloudApplyOperationResonseHandler;)V

    invoke-virtual {v1, v0, v2}, Lcom/flurry/android/fk;->a(Lcom/flurry/android/caching/ObjectData;Lcom/flurry/android/AppCloudResponseHandler;)V

    goto :goto_2

    .line 406
    :cond_6
    invoke-static {}, Lcom/flurry/android/FlurryAppCloud;->E()Lcom/flurry/android/fk;

    move-result-object v1

    new-instance v2, Lcom/flurry/android/fz;

    invoke-direct {v2, p1}, Lcom/flurry/android/fz;-><init>(Lcom/flurry/android/responses/AppCloudApplyOperationResonseHandler;)V

    invoke-virtual {v1, v0, v2}, Lcom/flurry/android/fk;->b(Lcom/flurry/android/caching/ObjectData;Lcom/flurry/android/AppCloudResponseHandler;)V

    goto :goto_2
.end method

.method public saveToCache()V
    .locals 6

    .prologue
    .line 262
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Lcom/flurry/android/cx;->getKeyValues()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 264
    invoke-virtual {p0}, Lcom/flurry/android/cx;->getKeyValues()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/NameValuePair;

    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v2

    .line 265
    invoke-virtual {p0}, Lcom/flurry/android/cx;->getKeyValues()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/NameValuePair;

    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 267
    invoke-static {}, Lcom/flurry/android/FlurryAppCloud;->D()Lcom/flurry/android/CacheSyncManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/flurry/android/CacheSyncManager;->getServerData()Lcom/flurry/android/az;

    move-result-object v3

    iget-object v4, p0, Lcom/flurry/android/cx;->mId:Ljava/lang/String;

    iget-object v5, p0, Lcom/flurry/android/cx;->mCollectionName:Ljava/lang/String;

    invoke-virtual {v3, v2, v0, v4, v5}, Lcom/flurry/android/az;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 262
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 273
    :cond_0
    return-void
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 38
    const-string v0, "code"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "note"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 48
    :cond_0
    :goto_0
    return-void

    .line 41
    :cond_1
    iget-object v0, p0, Lcom/flurry/android/cx;->paramMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 42
    iget-object v0, p0, Lcom/flurry/android/cx;->paramMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    iget-object v0, p0, Lcom/flurry/android/cx;->paramMap:Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 46
    :cond_2
    iget-object v0, p0, Lcom/flurry/android/cx;->paramMap:Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setAutoSyncEnabled(Z)Z
    .locals 1

    .prologue
    .line 245
    .line 246
    if-eqz p1, :cond_0

    .line 247
    iget-object v0, p0, Lcom/flurry/android/cx;->mId:Ljava/lang/String;

    invoke-static {v0}, Lcom/flurry/android/r;->b(Ljava/lang/String;)Z

    move-result v0

    .line 252
    :goto_0
    return v0

    .line 250
    :cond_0
    iget-object v0, p0, Lcom/flurry/android/cx;->mId:Ljava/lang/String;

    invoke-static {v0}, Lcom/flurry/android/r;->c(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method protected setId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcom/flurry/android/cx;->mId:Ljava/lang/String;

    .line 118
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 146
    const-string v0, ""

    .line 148
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "id : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/android/cx;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 149
    invoke-virtual {p0}, Lcom/flurry/android/cx;->getKeyValues()Ljava/util/Vector;

    move-result-object v3

    .line 150
    const/4 v0, 0x0

    move v4, v0

    move-object v0, v1

    move v1, v4

    :goto_0
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 151
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n( key : value ) = ( "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v3, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/NameValuePair;

    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v3, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/NameValuePair;

    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " )"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 150
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move-object v0, v2

    goto :goto_0

    .line 153
    :cond_0
    return-object v0
.end method
