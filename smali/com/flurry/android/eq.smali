.class final Lcom/flurry/android/eq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private gp:Lcom/flurry/android/responses/AppCloudSearchResultCompletionHandler;

.field private synthetic gq:Lcom/flurry/android/AppCloudSearch;


# direct methods
.method constructor <init>(Lcom/flurry/android/AppCloudSearch;Lcom/flurry/android/responses/AppCloudSearchResultCompletionHandler;)V
    .locals 1

    .prologue
    .line 144
    iput-object p1, p0, Lcom/flurry/android/eq;->gq:Lcom/flurry/android/AppCloudSearch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/android/eq;->gp:Lcom/flurry/android/responses/AppCloudSearchResultCompletionHandler;

    .line 145
    iput-object p2, p0, Lcom/flurry/android/eq;->gp:Lcom/flurry/android/responses/AppCloudSearchResultCompletionHandler;

    .line 146
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 150
    const-string v0, "v1/"

    .line 152
    iget-object v1, p0, Lcom/flurry/android/eq;->gq:Lcom/flurry/android/AppCloudSearch;

    invoke-static {v1}, Lcom/flurry/android/AppCloudSearch;->a(Lcom/flurry/android/AppCloudSearch;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 153
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "user"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 154
    const/4 v0, 0x1

    move v7, v0

    move-object v0, v1

    move v1, v7

    .line 161
    :goto_0
    iget-object v3, p0, Lcom/flurry/android/eq;->gq:Lcom/flurry/android/AppCloudSearch;

    invoke-static {v3}, Lcom/flurry/android/AppCloudSearch;->b(Lcom/flurry/android/AppCloudSearch;)Ljava/lang/String;

    move-result-object v3

    .line 164
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 165
    const-string v4, "SearchCache"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "url = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    iget-object v4, p0, Lcom/flurry/android/eq;->gq:Lcom/flurry/android/AppCloudSearch;

    invoke-static {v4}, Lcom/flurry/android/AppCloudSearch;->c(Lcom/flurry/android/AppCloudSearch;)Lcom/flurry/android/CacheSearchData;

    move-result-object v4

    iget-object v5, p0, Lcom/flurry/android/eq;->gq:Lcom/flurry/android/AppCloudSearch;

    invoke-static {v5}, Lcom/flurry/android/AppCloudSearch;->a(Lcom/flurry/android/AppCloudSearch;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Lcom/flurry/android/CacheSearchData;->contains(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 169
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 170
    iget-object v0, p0, Lcom/flurry/android/eq;->gq:Lcom/flurry/android/AppCloudSearch;

    invoke-static {v0}, Lcom/flurry/android/AppCloudSearch;->d(Lcom/flurry/android/AppCloudSearch;)Lcom/flurry/android/CacheSearchItemsData;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/flurry/android/CacheSearchItemsData;->getItemsById(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 171
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 175
    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    .line 176
    if-eqz v1, :cond_1

    .line 177
    new-instance v5, Lcom/flurry/android/AppCloudUser;

    invoke-direct {v5}, Lcom/flurry/android/AppCloudUser;-><init>()V

    .line 178
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, v0}, Lcom/flurry/android/AppCloudUser;->q(Ljava/lang/String;)V

    .line 180
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 157
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "object/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/android/eq;->gq:Lcom/flurry/android/AppCloudSearch;

    invoke-static {v1}, Lcom/flurry/android/AppCloudSearch;->a(Lcom/flurry/android/AppCloudSearch;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move v1, v2

    .line 158
    goto/16 :goto_0

    .line 184
    :cond_1
    new-instance v5, Lcom/flurry/android/AppCloudObject;

    iget-object v0, p0, Lcom/flurry/android/eq;->gq:Lcom/flurry/android/AppCloudSearch;

    invoke-static {v0}, Lcom/flurry/android/AppCloudSearch;->a(Lcom/flurry/android/AppCloudSearch;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Lcom/flurry/android/AppCloudObject;-><init>(Ljava/lang/String;)V

    .line 185
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, v0}, Lcom/flurry/android/AppCloudObject;->q(Ljava/lang/String;)V

    .line 187
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 192
    :cond_2
    iget-object v0, p0, Lcom/flurry/android/eq;->gp:Lcom/flurry/android/responses/AppCloudSearchResultCompletionHandler;

    invoke-virtual {v4}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/flurry/android/responses/AppCloudSearchResultCompletionHandler;->onOperationSucceed([Ljava/lang/Object;)V

    .line 200
    :goto_3
    return-void

    .line 196
    :cond_3
    new-instance v2, Lcom/flurry/android/caching/ObjectOperationData;

    const-string v4, ""

    invoke-direct {v2, v4}, Lcom/flurry/android/caching/ObjectOperationData;-><init>(Ljava/lang/String;)V

    .line 197
    invoke-virtual {v2, v0}, Lcom/flurry/android/caching/ObjectOperationData;->setSearchURL(Ljava/lang/String;)V

    .line 199
    iget-object v0, p0, Lcom/flurry/android/eq;->gq:Lcom/flurry/android/AppCloudSearch;

    iget-object v4, p0, Lcom/flurry/android/eq;->gp:Lcom/flurry/android/responses/AppCloudSearchResultCompletionHandler;

    invoke-static {}, Lcom/flurry/android/FlurryAppCloud;->C()Lcom/flurry/android/caching/CachingManager;

    move-result-object v5

    new-instance v6, Lcom/flurry/android/fa;

    invoke-direct {v6, v0, v1, v3, v4}, Lcom/flurry/android/fa;-><init>(Lcom/flurry/android/AppCloudSearch;ZLjava/lang/String;Lcom/flurry/android/responses/AppCloudSearchResultCompletionHandler;)V

    invoke-virtual {v5, v2, v6}, Lcom/flurry/android/caching/CachingManager;->searchOperation(Lcom/flurry/android/caching/ObjectOperationData;Lcom/flurry/android/AppCloudResponseHandler;)V

    goto :goto_3
.end method
