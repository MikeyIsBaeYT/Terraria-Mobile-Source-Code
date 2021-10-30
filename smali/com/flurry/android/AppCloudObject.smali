.class public Lcom/flurry/android/AppCloudObject;
.super Lcom/flurry/android/cx;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/flurry/android/cx;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/flurry/android/AppCloudObject;->mCollectionName:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/flurry/android/cx;-><init>()V

    .line 28
    invoke-virtual {p0, p1}, Lcom/flurry/android/AppCloudObject;->createObject(Lorg/json/JSONObject;)V

    .line 29
    return-void
.end method

.method public static SearchWithCollectionName(Ljava/lang/String;)Lcom/flurry/android/AppCloudSearch;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 58
    invoke-static {}, Lcom/flurry/android/AppCloudUser;->getCurrentUser()Lcom/flurry/android/AppCloudUser;

    move-result-object v1

    if-nez v1, :cond_1

    .line 68
    :cond_0
    :goto_0
    return-object v0

    .line 62
    :cond_1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 66
    new-instance v0, Lcom/flurry/android/AppCloudSearch;

    invoke-direct {v0, p0}, Lcom/flurry/android/AppCloudSearch;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static create(Ljava/lang/String;)Lcom/flurry/android/AppCloudObject;
    .locals 1

    .prologue
    .line 33
    new-instance v0, Lcom/flurry/android/AppCloudObject;

    invoke-direct {v0, p0}, Lcom/flurry/android/AppCloudObject;-><init>(Ljava/lang/String;)V

    .line 34
    return-object v0
.end method

.method public static getObjectById(Ljava/lang/String;Ljava/lang/String;Lcom/flurry/android/responses/AppCloudGetObjectByIDResponseHandler;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 81
    new-instance v0, Lcom/flurry/android/AppCloudObject;

    invoke-direct {v0, p1}, Lcom/flurry/android/AppCloudObject;-><init>(Ljava/lang/String;)V

    .line 82
    invoke-virtual {v0, p0}, Lcom/flurry/android/AppCloudObject;->setId(Ljava/lang/String;)V

    .line 83
    new-instance v1, Lcom/flurry/android/bn;

    invoke-direct {v1, p2}, Lcom/flurry/android/bn;-><init>(Lcom/flurry/android/responses/AppCloudGetObjectByIDResponseHandler;)V

    invoke-virtual {v0, v1}, Lcom/flurry/android/AppCloudObject;->getObjectOrUser(Lcom/flurry/android/AppCloudResponseHandler;)V

    .line 105
    return-void
.end method


# virtual methods
.method public addObserverForKey(Ljava/lang/String;Lcom/flurry/android/AppCloudValueUpdateHandler;)V
    .locals 3

    .prologue
    const/16 v2, 0x190

    .line 293
    iget-object v0, p0, Lcom/flurry/android/AppCloudObject;->mId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 294
    new-instance v0, Lcom/flurry/android/responses/AppCloudError;

    const-string v1, "Please assign an object id."

    invoke-direct {v0, v2, v1}, Lcom/flurry/android/responses/AppCloudError;-><init>(ILjava/lang/String;)V

    invoke-interface {p2, v0}, Lcom/flurry/android/AppCloudValueUpdateHandler;->onError(Lcom/flurry/android/responses/AppCloudError;)V

    .line 307
    :goto_0
    return-void

    .line 299
    :cond_0
    iget-object v0, p0, Lcom/flurry/android/AppCloudObject;->mCollectionName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 300
    new-instance v0, Lcom/flurry/android/responses/AppCloudError;

    const-string v1, "Please assign a collection name."

    invoke-direct {v0, v2, v1}, Lcom/flurry/android/responses/AppCloudError;-><init>(ILjava/lang/String;)V

    invoke-interface {p2, v0}, Lcom/flurry/android/AppCloudValueUpdateHandler;->onError(Lcom/flurry/android/responses/AppCloudError;)V

    goto :goto_0

    .line 305
    :cond_1
    iget-object v0, p0, Lcom/flurry/android/AppCloudObject;->mId:Ljava/lang/String;

    iget-object v1, p0, Lcom/flurry/android/AppCloudObject;->mCollectionName:Ljava/lang/String;

    invoke-static {v0, v1, p1, p2}, Lcom/flurry/android/r;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public bridge synthetic containsObserver()Z
    .locals 1

    .prologue
    .line 15
    invoke-super {p0}, Lcom/flurry/android/cx;->containsObserver()Z

    move-result v0

    return v0
.end method

.method public decrement(Ljava/lang/String;FLcom/flurry/android/responses/AppCloudCommonOperationResponseHandler;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 273
    iget-object v0, p0, Lcom/flurry/android/AppCloudObject;->mId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 275
    new-instance v0, Lorg/json/JSONObject;

    const-string v1, "{code:\"400\",note:\"Please assign an object id.\"}"

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 276
    new-instance v1, Lcom/flurry/android/AppCloudResponse;

    invoke-direct {v1, v0}, Lcom/flurry/android/AppCloudResponse;-><init>(Lorg/json/JSONObject;)V

    .line 277
    new-instance v0, Lcom/flurry/android/responses/AppCloudError;

    invoke-virtual {v1}, Lcom/flurry/android/AppCloudResponse;->getHTTPResponseCode()I

    move-result v2

    invoke-virtual {v1}, Lcom/flurry/android/AppCloudResponse;->getResponseMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/flurry/android/responses/AppCloudError;-><init>(ILjava/lang/String;)V

    invoke-interface {p3, v0}, Lcom/flurry/android/responses/AppCloudCommonOperationResponseHandler;->onError(Lcom/flurry/android/responses/AppCloudError;)V

    .line 289
    :goto_0
    return-void

    .line 279
    :cond_0
    iget-object v0, p0, Lcom/flurry/android/AppCloudObject;->mCollectionName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 281
    new-instance v0, Lorg/json/JSONObject;

    const-string v1, "{code:\"400\",note:\"Please assign a collection name.\"}"

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 282
    new-instance v1, Lcom/flurry/android/AppCloudResponse;

    invoke-direct {v1, v0}, Lcom/flurry/android/AppCloudResponse;-><init>(Lorg/json/JSONObject;)V

    .line 283
    new-instance v0, Lcom/flurry/android/responses/AppCloudError;

    invoke-virtual {v1}, Lcom/flurry/android/AppCloudResponse;->getHTTPResponseCode()I

    move-result v2

    invoke-virtual {v1}, Lcom/flurry/android/AppCloudResponse;->getResponseMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/flurry/android/responses/AppCloudError;-><init>(ILjava/lang/String;)V

    invoke-interface {p3, v0}, Lcom/flurry/android/responses/AppCloudCommonOperationResponseHandler;->onError(Lcom/flurry/android/responses/AppCloudError;)V

    goto :goto_0

    .line 287
    :cond_1
    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, p1, v0, p3}, Lcom/flurry/android/cx;->decrement(Ljava/lang/String;Ljava/lang/String;Lcom/flurry/android/responses/AppCloudCommonOperationResponseHandler;)V

    goto :goto_0
.end method

.method public decrement(Ljava/lang/String;ILcom/flurry/android/responses/AppCloudCommonOperationResponseHandler;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 252
    iget-object v0, p0, Lcom/flurry/android/AppCloudObject;->mId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 254
    new-instance v0, Lorg/json/JSONObject;

    const-string v1, "{code:\"400\",note:\"Please assign an object id.\"}"

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 255
    new-instance v1, Lcom/flurry/android/AppCloudResponse;

    invoke-direct {v1, v0}, Lcom/flurry/android/AppCloudResponse;-><init>(Lorg/json/JSONObject;)V

    .line 256
    new-instance v0, Lcom/flurry/android/responses/AppCloudError;

    invoke-virtual {v1}, Lcom/flurry/android/AppCloudResponse;->getHTTPResponseCode()I

    move-result v2

    invoke-virtual {v1}, Lcom/flurry/android/AppCloudResponse;->getResponseMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/flurry/android/responses/AppCloudError;-><init>(ILjava/lang/String;)V

    invoke-interface {p3, v0}, Lcom/flurry/android/responses/AppCloudCommonOperationResponseHandler;->onError(Lcom/flurry/android/responses/AppCloudError;)V

    .line 268
    :goto_0
    return-void

    .line 258
    :cond_0
    iget-object v0, p0, Lcom/flurry/android/AppCloudObject;->mCollectionName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 260
    new-instance v0, Lorg/json/JSONObject;

    const-string v1, "{code:\"400\",note:\"Please assign a collection name.\"}"

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 261
    new-instance v1, Lcom/flurry/android/AppCloudResponse;

    invoke-direct {v1, v0}, Lcom/flurry/android/AppCloudResponse;-><init>(Lorg/json/JSONObject;)V

    .line 262
    new-instance v0, Lcom/flurry/android/responses/AppCloudError;

    invoke-virtual {v1}, Lcom/flurry/android/AppCloudResponse;->getHTTPResponseCode()I

    move-result v2

    invoke-virtual {v1}, Lcom/flurry/android/AppCloudResponse;->getResponseMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/flurry/android/responses/AppCloudError;-><init>(ILjava/lang/String;)V

    invoke-interface {p3, v0}, Lcom/flurry/android/responses/AppCloudCommonOperationResponseHandler;->onError(Lcom/flurry/android/responses/AppCloudError;)V

    goto :goto_0

    .line 266
    :cond_1
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, p1, v0, p3}, Lcom/flurry/android/cx;->decrement(Ljava/lang/String;Ljava/lang/String;Lcom/flurry/android/responses/AppCloudCommonOperationResponseHandler;)V

    goto :goto_0
.end method

.method public deleteWithCompletionHandler(Lcom/flurry/android/responses/AppCloudCommonOperationResponseHandler;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 170
    iget-object v0, p0, Lcom/flurry/android/AppCloudObject;->mId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    new-instance v0, Lorg/json/JSONObject;

    const-string v1, "{code:\"400\",note:\"Please assign an object id.\"}"

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 172
    new-instance v1, Lcom/flurry/android/AppCloudResponse;

    invoke-direct {v1, v0}, Lcom/flurry/android/AppCloudResponse;-><init>(Lorg/json/JSONObject;)V

    .line 174
    new-instance v0, Lcom/flurry/android/responses/AppCloudError;

    invoke-virtual {v1}, Lcom/flurry/android/AppCloudResponse;->getHTTPResponseCode()I

    move-result v2

    invoke-virtual {v1}, Lcom/flurry/android/AppCloudResponse;->getResponseMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/flurry/android/responses/AppCloudError;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/flurry/android/responses/AppCloudCommonOperationResponseHandler;->onError(Lcom/flurry/android/responses/AppCloudError;)V

    .line 205
    :goto_0
    return-void

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/flurry/android/AppCloudObject;->mCollectionName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 177
    new-instance v0, Lorg/json/JSONObject;

    const-string v1, "{code:\"400\",note:\"Please assign a collection name.\"}"

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 178
    new-instance v1, Lcom/flurry/android/AppCloudResponse;

    invoke-direct {v1, v0}, Lcom/flurry/android/AppCloudResponse;-><init>(Lorg/json/JSONObject;)V

    .line 180
    new-instance v0, Lcom/flurry/android/responses/AppCloudError;

    invoke-virtual {v1}, Lcom/flurry/android/AppCloudResponse;->getHTTPResponseCode()I

    move-result v2

    invoke-virtual {v1}, Lcom/flurry/android/AppCloudResponse;->getResponseMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/flurry/android/responses/AppCloudError;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/flurry/android/responses/AppCloudCommonOperationResponseHandler;->onError(Lcom/flurry/android/responses/AppCloudError;)V

    goto :goto_0

    .line 184
    :cond_1
    new-instance v0, Lcom/flurry/android/bq;

    invoke-direct {v0, p1}, Lcom/flurry/android/bq;-><init>(Lcom/flurry/android/responses/AppCloudCommonOperationResponseHandler;)V

    invoke-virtual {p0, v0}, Lcom/flurry/android/AppCloudObject;->delete(Lcom/flurry/android/AppCloudResponseHandler;)V

    goto :goto_0
.end method

.method public bridge synthetic get(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    invoke-super {p0, p1}, Lcom/flurry/android/cx;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCollectionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/flurry/android/AppCloudObject;->mCollectionName:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getFloat(Ljava/lang/String;)F
    .locals 1

    .prologue
    .line 15
    invoke-super {p0, p1}, Lcom/flurry/android/cx;->getFloat(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public bridge synthetic getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    invoke-super {p0}, Lcom/flurry/android/cx;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getInt(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 15
    invoke-super {p0, p1}, Lcom/flurry/android/cx;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic getKeyValues()Ljava/util/Vector;
    .locals 1

    .prologue
    .line 15
    invoke-super {p0}, Lcom/flurry/android/cx;->getKeyValues()Ljava/util/Vector;

    move-result-object v0

    return-object v0
.end method

.method public getWithCompletionHandler(Lcom/flurry/android/responses/AppCloudCommonOperationResponseHandler;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 110
    iget-object v0, p0, Lcom/flurry/android/AppCloudObject;->mId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    new-instance v0, Lorg/json/JSONObject;

    const-string v1, "{code:\"400\",note:\"Please assign an object id.\"}"

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 112
    new-instance v1, Lcom/flurry/android/AppCloudResponse;

    invoke-direct {v1, v0}, Lcom/flurry/android/AppCloudResponse;-><init>(Lorg/json/JSONObject;)V

    .line 114
    new-instance v0, Lcom/flurry/android/responses/AppCloudError;

    invoke-virtual {v1}, Lcom/flurry/android/AppCloudResponse;->getHTTPResponseCode()I

    move-result v2

    invoke-virtual {v1}, Lcom/flurry/android/AppCloudResponse;->getResponseMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/flurry/android/responses/AppCloudError;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/flurry/android/responses/AppCloudCommonOperationResponseHandler;->onError(Lcom/flurry/android/responses/AppCloudError;)V

    .line 143
    :goto_0
    return-void

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/flurry/android/AppCloudObject;->mCollectionName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 117
    new-instance v0, Lorg/json/JSONObject;

    const-string v1, "{code:\"400\",note:\"Please assign a collection name.\"}"

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 118
    new-instance v1, Lcom/flurry/android/AppCloudResponse;

    invoke-direct {v1, v0}, Lcom/flurry/android/AppCloudResponse;-><init>(Lorg/json/JSONObject;)V

    .line 120
    new-instance v0, Lcom/flurry/android/responses/AppCloudError;

    invoke-virtual {v1}, Lcom/flurry/android/AppCloudResponse;->getHTTPResponseCode()I

    move-result v2

    invoke-virtual {v1}, Lcom/flurry/android/AppCloudResponse;->getResponseMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/flurry/android/responses/AppCloudError;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/flurry/android/responses/AppCloudCommonOperationResponseHandler;->onError(Lcom/flurry/android/responses/AppCloudError;)V

    goto :goto_0

    .line 124
    :cond_1
    new-instance v0, Lcom/flurry/android/br;

    invoke-direct {v0, p1}, Lcom/flurry/android/br;-><init>(Lcom/flurry/android/responses/AppCloudCommonOperationResponseHandler;)V

    invoke-virtual {p0, v0}, Lcom/flurry/android/AppCloudObject;->getObjectOrUser(Lcom/flurry/android/AppCloudResponseHandler;)V

    goto :goto_0
.end method

.method public increment(Ljava/lang/String;FLcom/flurry/android/responses/AppCloudCommonOperationResponseHandler;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 231
    iget-object v0, p0, Lcom/flurry/android/AppCloudObject;->mId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    new-instance v0, Lorg/json/JSONObject;

    const-string v1, "{code:\"400\",note:\"Please assign an object id.\"}"

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 234
    new-instance v1, Lcom/flurry/android/AppCloudResponse;

    invoke-direct {v1, v0}, Lcom/flurry/android/AppCloudResponse;-><init>(Lorg/json/JSONObject;)V

    .line 235
    new-instance v0, Lcom/flurry/android/responses/AppCloudError;

    invoke-virtual {v1}, Lcom/flurry/android/AppCloudResponse;->getHTTPResponseCode()I

    move-result v2

    invoke-virtual {v1}, Lcom/flurry/android/AppCloudResponse;->getResponseMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/flurry/android/responses/AppCloudError;-><init>(ILjava/lang/String;)V

    invoke-interface {p3, v0}, Lcom/flurry/android/responses/AppCloudCommonOperationResponseHandler;->onError(Lcom/flurry/android/responses/AppCloudError;)V

    .line 247
    :goto_0
    return-void

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/flurry/android/AppCloudObject;->mCollectionName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 239
    new-instance v0, Lorg/json/JSONObject;

    const-string v1, "{code:\"400\",note:\"Please assign a collection name.\"}"

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 240
    new-instance v1, Lcom/flurry/android/AppCloudResponse;

    invoke-direct {v1, v0}, Lcom/flurry/android/AppCloudResponse;-><init>(Lorg/json/JSONObject;)V

    .line 241
    new-instance v0, Lcom/flurry/android/responses/AppCloudError;

    invoke-virtual {v1}, Lcom/flurry/android/AppCloudResponse;->getHTTPResponseCode()I

    move-result v2

    invoke-virtual {v1}, Lcom/flurry/android/AppCloudResponse;->getResponseMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/flurry/android/responses/AppCloudError;-><init>(ILjava/lang/String;)V

    invoke-interface {p3, v0}, Lcom/flurry/android/responses/AppCloudCommonOperationResponseHandler;->onError(Lcom/flurry/android/responses/AppCloudError;)V

    goto :goto_0

    .line 245
    :cond_1
    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, p1, v0, p3}, Lcom/flurry/android/cx;->increment(Ljava/lang/String;Ljava/lang/String;Lcom/flurry/android/responses/AppCloudCommonOperationResponseHandler;)V

    goto :goto_0
.end method

.method public increment(Ljava/lang/String;ILcom/flurry/android/responses/AppCloudCommonOperationResponseHandler;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 210
    iget-object v0, p0, Lcom/flurry/android/AppCloudObject;->mId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    new-instance v0, Lorg/json/JSONObject;

    const-string v1, "{code:\"400\",note:\"Please assign an object id.\"}"

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 213
    new-instance v1, Lcom/flurry/android/AppCloudResponse;

    invoke-direct {v1, v0}, Lcom/flurry/android/AppCloudResponse;-><init>(Lorg/json/JSONObject;)V

    .line 214
    new-instance v0, Lcom/flurry/android/responses/AppCloudError;

    invoke-virtual {v1}, Lcom/flurry/android/AppCloudResponse;->getHTTPResponseCode()I

    move-result v2

    invoke-virtual {v1}, Lcom/flurry/android/AppCloudResponse;->getResponseMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/flurry/android/responses/AppCloudError;-><init>(ILjava/lang/String;)V

    invoke-interface {p3, v0}, Lcom/flurry/android/responses/AppCloudCommonOperationResponseHandler;->onError(Lcom/flurry/android/responses/AppCloudError;)V

    .line 226
    :goto_0
    return-void

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/flurry/android/AppCloudObject;->mCollectionName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 218
    new-instance v0, Lorg/json/JSONObject;

    const-string v1, "{code:\"400\",note:\"Please assign a collection name.\"}"

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 219
    new-instance v1, Lcom/flurry/android/AppCloudResponse;

    invoke-direct {v1, v0}, Lcom/flurry/android/AppCloudResponse;-><init>(Lorg/json/JSONObject;)V

    .line 220
    new-instance v0, Lcom/flurry/android/responses/AppCloudError;

    invoke-virtual {v1}, Lcom/flurry/android/AppCloudResponse;->getHTTPResponseCode()I

    move-result v2

    invoke-virtual {v1}, Lcom/flurry/android/AppCloudResponse;->getResponseMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/flurry/android/responses/AppCloudError;-><init>(ILjava/lang/String;)V

    invoke-interface {p3, v0}, Lcom/flurry/android/responses/AppCloudCommonOperationResponseHandler;->onError(Lcom/flurry/android/responses/AppCloudError;)V

    goto :goto_0

    .line 224
    :cond_1
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, p1, v0, p3}, Lcom/flurry/android/cx;->increment(Ljava/lang/String;Ljava/lang/String;Lcom/flurry/android/responses/AppCloudCommonOperationResponseHandler;)V

    goto :goto_0
.end method

.method public bridge synthetic isAutoSyncEnabled()Z
    .locals 1

    .prologue
    .line 15
    invoke-super {p0}, Lcom/flurry/android/cx;->isAutoSyncEnabled()Z

    move-result v0

    return v0
.end method

.method final p(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 310
    iput-object p1, p0, Lcom/flurry/android/AppCloudObject;->mCollectionName:Ljava/lang/String;

    .line 312
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Lcom/flurry/android/AppCloudObject;->getKeyValues()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 313
    invoke-virtual {p0}, Lcom/flurry/android/AppCloudObject;->getKeyValues()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/NameValuePair;

    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v2

    .line 314
    invoke-virtual {p0}, Lcom/flurry/android/AppCloudObject;->getKeyValues()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/NameValuePair;

    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 316
    invoke-static {}, Lcom/flurry/android/FlurryAppCloud;->D()Lcom/flurry/android/CacheSyncManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/flurry/android/CacheSyncManager;->getServerData()Lcom/flurry/android/az;

    move-result-object v3

    iget-object v4, p0, Lcom/flurry/android/AppCloudObject;->mId:Ljava/lang/String;

    iget-object v5, p0, Lcom/flurry/android/AppCloudObject;->mCollectionName:Ljava/lang/String;

    invoke-virtual {v3, v2, v0, v4, v5}, Lcom/flurry/android/az;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 312
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 322
    :cond_0
    return-void
.end method

.method public bridge synthetic removeAllObservers()Z
    .locals 1

    .prologue
    .line 15
    invoke-super {p0}, Lcom/flurry/android/cx;->removeAllObservers()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic removeObserver(Lcom/flurry/android/AppCloudValueUpdateHandler;)Z
    .locals 1

    .prologue
    .line 15
    invoke-super {p0, p1}, Lcom/flurry/android/cx;->removeObserver(Lcom/flurry/android/AppCloudValueUpdateHandler;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic removeObserverForKey(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 15
    invoke-super {p0, p1}, Lcom/flurry/android/cx;->removeObserverForKey(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public saveOrCreateWithCompletionHandler(Lcom/flurry/android/responses/AppCloudApplyOperationResonseHandler;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 148
    iget-object v0, p0, Lcom/flurry/android/AppCloudObject;->mCollectionName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    new-instance v0, Lorg/json/JSONObject;

    const-string v1, "{code:\"400\",note:\"Please assign a collection name.\"}"

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 150
    new-instance v1, Lcom/flurry/android/AppCloudResponse;

    invoke-direct {v1, v0}, Lcom/flurry/android/AppCloudResponse;-><init>(Lorg/json/JSONObject;)V

    .line 152
    new-instance v0, Lcom/flurry/android/responses/AppCloudError;

    invoke-virtual {v1}, Lcom/flurry/android/AppCloudResponse;->getHTTPResponseCode()I

    move-result v2

    invoke-virtual {v1}, Lcom/flurry/android/AppCloudResponse;->getResponseMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/flurry/android/responses/AppCloudError;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/flurry/android/responses/AppCloudApplyOperationResonseHandler;->onError(Lcom/flurry/android/responses/AppCloudError;)V

    .line 157
    :goto_0
    return-void

    .line 155
    :cond_0
    invoke-super {p0, p1}, Lcom/flurry/android/cx;->saveOrCreateWithCompletionHandler(Lcom/flurry/android/responses/AppCloudApplyOperationResonseHandler;)V

    goto :goto_0
.end method

.method public bridge synthetic saveToCache()V
    .locals 0

    .prologue
    .line 15
    invoke-super {p0}, Lcom/flurry/android/cx;->saveToCache()V

    return-void
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 15
    invoke-super {p0, p1, p2}, Lcom/flurry/android/cx;->set(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic setAutoSyncEnabled(Z)Z
    .locals 1

    .prologue
    .line 15
    invoke-super {p0, p1}, Lcom/flurry/android/cx;->setAutoSyncEnabled(Z)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 43
    const-string v0, ""

    .line 44
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Collection name = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/android/AppCloudObject;->mCollectionName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 45
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Lcom/flurry/android/cx;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 46
    return-object v0
.end method
