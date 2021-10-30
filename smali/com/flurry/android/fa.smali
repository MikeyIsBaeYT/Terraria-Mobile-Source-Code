.class final Lcom/flurry/android/fa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/android/AppCloudResponseHandler;


# instance fields
.field private synthetic gJ:Z

.field private synthetic gK:Ljava/lang/String;

.field private synthetic gL:Lcom/flurry/android/responses/AppCloudSearchResultCompletionHandler;

.field private synthetic gq:Lcom/flurry/android/AppCloudSearch;


# direct methods
.method constructor <init>(Lcom/flurry/android/AppCloudSearch;ZLjava/lang/String;Lcom/flurry/android/responses/AppCloudSearchResultCompletionHandler;)V
    .locals 0

    .prologue
    .line 209
    iput-object p1, p0, Lcom/flurry/android/fa;->gq:Lcom/flurry/android/AppCloudSearch;

    iput-boolean p2, p0, Lcom/flurry/android/fa;->gJ:Z

    iput-object p3, p0, Lcom/flurry/android/fa;->gK:Ljava/lang/String;

    iput-object p4, p0, Lcom/flurry/android/fa;->gL:Lcom/flurry/android/responses/AppCloudSearchResultCompletionHandler;

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
    const/4 v2, 0x0

    .line 214
    new-instance v3, Lcom/flurry/android/dn;

    iget-boolean v0, p0, Lcom/flurry/android/fa;->gJ:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {v3, p1, v0}, Lcom/flurry/android/dn;-><init>(Lcom/flurry/android/AppCloudResponse;Ljava/lang/Boolean;)V

    .line 215
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 217
    invoke-virtual {v3}, Lcom/flurry/android/dn;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 218
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 220
    iget-boolean v0, p0, Lcom/flurry/android/fa;->gJ:Z

    if-eqz v0, :cond_0

    move v1, v2

    .line 221
    :goto_0
    invoke-virtual {v3}, Lcom/flurry/android/dn;->getUsers()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 222
    invoke-virtual {v3}, Lcom/flurry/android/dn;->getUsers()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/AppCloudUser;

    .line 223
    invoke-virtual {v0}, Lcom/flurry/android/AppCloudUser;->saveToCache()V

    .line 224
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 221
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, v2

    .line 228
    :goto_1
    invoke-virtual {v3}, Lcom/flurry/android/dn;->getObjects()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 229
    invoke-virtual {v3}, Lcom/flurry/android/dn;->getObjects()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/AppCloudObject;

    .line 230
    iget-object v5, p0, Lcom/flurry/android/fa;->gq:Lcom/flurry/android/AppCloudSearch;

    invoke-static {v5}, Lcom/flurry/android/AppCloudSearch;->a(Lcom/flurry/android/AppCloudSearch;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/flurry/android/AppCloudObject;->p(Ljava/lang/String;)V

    .line 231
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 228
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 235
    :cond_1
    iget-object v0, p0, Lcom/flurry/android/fa;->gq:Lcom/flurry/android/AppCloudSearch;

    invoke-static {v0}, Lcom/flurry/android/AppCloudSearch;->c(Lcom/flurry/android/AppCloudSearch;)Lcom/flurry/android/CacheSearchData;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/android/fa;->gK:Ljava/lang/String;

    iget-object v5, p0, Lcom/flurry/android/fa;->gq:Lcom/flurry/android/AppCloudSearch;

    invoke-static {v5}, Lcom/flurry/android/AppCloudSearch;->a(Lcom/flurry/android/AppCloudSearch;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v1, v5, v6, v7}, Lcom/flurry/android/CacheSearchData;->addItem(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    .line 237
    iget-boolean v0, p0, Lcom/flurry/android/fa;->gJ:Z

    if-eqz v0, :cond_2

    .line 238
    :goto_2
    invoke-virtual {v3}, Lcom/flurry/android/dn;->getUsers()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    .line 239
    invoke-virtual {v3}, Lcom/flurry/android/dn;->getUsers()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/AppCloudUser;

    .line 240
    invoke-virtual {v0}, Lcom/flurry/android/AppCloudUser;->getId()Ljava/lang/String;

    move-result-object v0

    .line 242
    iget-object v5, p0, Lcom/flurry/android/fa;->gq:Lcom/flurry/android/AppCloudSearch;

    invoke-static {v5}, Lcom/flurry/android/AppCloudSearch;->d(Lcom/flurry/android/AppCloudSearch;)Lcom/flurry/android/CacheSearchItemsData;

    move-result-object v5

    invoke-virtual {v5, v1, v0, v6, v7}, Lcom/flurry/android/CacheSearchItemsData;->addItem(Ljava/lang/String;Ljava/lang/String;J)V

    .line 238
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 246
    :cond_2
    :goto_3
    invoke-virtual {v3}, Lcom/flurry/android/dn;->getObjects()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    .line 247
    invoke-virtual {v3}, Lcom/flurry/android/dn;->getObjects()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/AppCloudObject;

    .line 248
    invoke-virtual {v0}, Lcom/flurry/android/AppCloudObject;->getId()Ljava/lang/String;

    move-result-object v0

    .line 250
    iget-object v5, p0, Lcom/flurry/android/fa;->gq:Lcom/flurry/android/AppCloudSearch;

    invoke-static {v5}, Lcom/flurry/android/AppCloudSearch;->d(Lcom/flurry/android/AppCloudSearch;)Lcom/flurry/android/CacheSearchItemsData;

    move-result-object v5

    invoke-virtual {v5, v1, v0, v6, v7}, Lcom/flurry/android/CacheSearchItemsData;->addItem(Ljava/lang/String;Ljava/lang/String;J)V

    .line 246
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 254
    :cond_3
    iget-object v0, p0, Lcom/flurry/android/fa;->gL:Lcom/flurry/android/responses/AppCloudSearchResultCompletionHandler;

    invoke-virtual {v4}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/flurry/android/responses/AppCloudSearchResultCompletionHandler;->onOperationSucceed([Ljava/lang/Object;)V

    .line 260
    :goto_4
    return-void

    .line 257
    :cond_4
    iget-object v0, p0, Lcom/flurry/android/fa;->gL:Lcom/flurry/android/responses/AppCloudSearchResultCompletionHandler;

    new-instance v1, Lcom/flurry/android/responses/AppCloudError;

    invoke-virtual {p1}, Lcom/flurry/android/AppCloudResponse;->getHTTPResponseCode()I

    move-result v2

    invoke-virtual {p1}, Lcom/flurry/android/AppCloudResponse;->getResponseMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/flurry/android/responses/AppCloudError;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/flurry/android/responses/AppCloudSearchResultCompletionHandler;->onError(Lcom/flurry/android/responses/AppCloudError;)V

    goto :goto_4
.end method
