.class final Lcom/flurry/android/ap;
.super Lcom/flurry/android/a;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/flurry/android/a;-><init>()V

    .line 25
    return-void
.end method

.method private varargs a([Ljava/util/HashMap;)Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .prologue
    .line 30
    const/4 v0, 0x0

    :try_start_0
    aget-object v0, p1, v0

    const-string v1, "del"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/AppCloudResponseHandler;

    iput-object v0, p0, Lcom/flurry/android/ap;->c:Lcom/flurry/android/AppCloudResponseHandler;

    .line 31
    const/4 v0, 0x0

    aget-object v0, p1, v0

    const-string v1, "del_internal"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/AppCloudResponseRequestManagerHandler;

    iput-object v0, p0, Lcom/flurry/android/ap;->d:Lcom/flurry/android/AppCloudResponseRequestManagerHandler;

    .line 32
    const/4 v0, 0x0

    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/flurry/android/ap;->e:Ljava/util/HashMap;

    .line 35
    new-instance v1, Lorg/apache/http/client/methods/HttpPost;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/flurry/android/FlurryAppCloud;->I()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v0, 0x0

    aget-object v0, p1, v0

    const-string v3, "url"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 40
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-static {v1, v0}, Lcom/flurry/android/ap;->a(Lorg/apache/http/message/AbstractHttpMessage;Ljava/util/HashMap;)V

    .line 41
    const/4 v0, 0x0

    aget-object v0, p1, v0

    const-string v2, "data"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/flurry/android/ap;->c(Ljava/util/List;)Lcom/flurry/org/apache/http/entity/mime/MultipartEntity;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 42
    iget-object v0, p0, Lcom/flurry/android/ap;->a:Lorg/apache/http/client/HttpClient;

    iget-object v2, p0, Lcom/flurry/android/ap;->b:Lorg/apache/http/HttpHost;

    new-instance v3, Lorg/apache/http/protocol/BasicHttpContext;

    invoke-direct {v3}, Lorg/apache/http/protocol/BasicHttpContext;-><init>()V

    invoke-interface {v0, v2, v1, v3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 43
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    .line 45
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    :goto_0
    return-object v0

    .line 53
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 55
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static c(Ljava/util/List;)Lcom/flurry/org/apache/http/entity/mime/MultipartEntity;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;)",
            "Lcom/flurry/org/apache/http/entity/mime/MultipartEntity;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 82
    new-instance v2, Lcom/flurry/org/apache/http/entity/mime/MultipartEntity;

    sget-object v0, Lcom/flurry/org/apache/http/entity/mime/HttpMultipartMode;->BROWSER_COMPATIBLE:Lcom/flurry/org/apache/http/entity/mime/HttpMultipartMode;

    invoke-direct {v2, v0}, Lcom/flurry/org/apache/http/entity/mime/MultipartEntity;-><init>(Lcom/flurry/org/apache/http/entity/mime/HttpMultipartMode;)V

    .line 84
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 86
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/NameValuePair;

    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "file"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 87
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/NameValuePair;

    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 88
    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    aget-object v3, v0, v3

    .line 89
    new-instance v4, Lcom/flurry/org/apache/http/entity/mime/content/FileBody;

    new-instance v5, Ljava/io/File;

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/NameValuePair;

    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v0, "application/octet-stream"

    const-string v6, "utf-8"

    invoke-direct {v4, v5, v3, v0, v6}, Lcom/flurry/org/apache/http/entity/mime/content/FileBody;-><init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const-string v0, "file"

    invoke-virtual {v2, v0, v4}, Lcom/flurry/org/apache/http/entity/mime/MultipartEntity;->addPart(Ljava/lang/String;Lcom/flurry/org/apache/http/entity/mime/content/ContentBody;)V

    .line 84
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 94
    :cond_1
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/NameValuePair;

    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v3

    .line 96
    const-string v0, "filename"

    if-eq v3, v0, :cond_0

    const-string v0, "file"

    if-eq v3, v0, :cond_0

    .line 97
    new-instance v4, Lcom/flurry/org/apache/http/entity/mime/content/StringBody;

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/NameValuePair;

    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Lcom/flurry/org/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Lcom/flurry/org/apache/http/entity/mime/MultipartEntity;->addPart(Ljava/lang/String;Lcom/flurry/org/apache/http/entity/mime/content/ContentBody;)V

    goto :goto_1

    .line 101
    :cond_2
    return-object v2
.end method


# virtual methods
.method protected final bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 21
    check-cast p1, [Ljava/util/HashMap;

    invoke-direct {p0, p1}, Lcom/flurry/android/ap;->a([Ljava/util/HashMap;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 21
    check-cast p1, Lorg/json/JSONObject;

    :try_start_0
    new-instance v0, Lcom/flurry/android/AppCloudResponse;

    invoke-direct {v0, p1}, Lcom/flurry/android/AppCloudResponse;-><init>(Lorg/json/JSONObject;)V

    iget-object v1, p0, Lcom/flurry/android/ap;->d:Lcom/flurry/android/AppCloudResponseRequestManagerHandler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/flurry/android/ap;->d:Lcom/flurry/android/AppCloudResponseRequestManagerHandler;

    iget-object v2, p0, Lcom/flurry/android/ap;->c:Lcom/flurry/android/AppCloudResponseHandler;

    sget-object v3, Lcom/flurry/android/gq;->iR:Lcom/flurry/android/gq;

    iget-object v4, p0, Lcom/flurry/android/ap;->e:Ljava/util/HashMap;

    invoke-interface {v1, v0, v2, v3, v4}, Lcom/flurry/android/AppCloudResponseRequestManagerHandler;->handleResponse(Lcom/flurry/android/AppCloudResponse;Lcom/flurry/android/AppCloudResponseHandler;Lcom/flurry/android/gq;Ljava/util/HashMap;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/flurry/android/ap;->c:Lcom/flurry/android/AppCloudResponseHandler;

    invoke-interface {v1, v0}, Lcom/flurry/android/AppCloudResponseHandler;->handleResponse(Lcom/flurry/android/AppCloudResponse;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
