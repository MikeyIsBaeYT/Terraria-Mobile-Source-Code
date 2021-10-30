.class final Lcom/flurry/android/fb;
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
    .line 16
    invoke-direct {p0}, Lcom/flurry/android/a;-><init>()V

    .line 17
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
    .line 21
    const/4 v0, 0x0

    :try_start_0
    aget-object v0, p1, v0

    const-string v1, "del"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/AppCloudResponseHandler;

    iput-object v0, p0, Lcom/flurry/android/fb;->c:Lcom/flurry/android/AppCloudResponseHandler;

    .line 22
    const/4 v0, 0x0

    aget-object v0, p1, v0

    const-string v1, "del_internal"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/AppCloudResponseRequestManagerHandler;

    iput-object v0, p0, Lcom/flurry/android/fb;->d:Lcom/flurry/android/AppCloudResponseRequestManagerHandler;

    .line 23
    const/4 v0, 0x0

    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/flurry/android/fb;->e:Ljava/util/HashMap;

    .line 26
    new-instance v1, Lorg/apache/http/client/methods/HttpDelete;

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

    invoke-direct {v1, v0}, Lorg/apache/http/client/methods/HttpDelete;-><init>(Ljava/lang/String;)V

    .line 30
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-static {v1, v0}, Lcom/flurry/android/fb;->a(Lorg/apache/http/message/AbstractHttpMessage;Ljava/util/HashMap;)V

    .line 31
    iget-object v0, p0, Lcom/flurry/android/fb;->a:Lorg/apache/http/client/HttpClient;

    iget-object v2, p0, Lcom/flurry/android/fb;->b:Lorg/apache/http/HttpHost;

    new-instance v3, Lorg/apache/http/protocol/BasicHttpContext;

    invoke-direct {v3}, Lorg/apache/http/protocol/BasicHttpContext;-><init>()V

    invoke-interface {v0, v2, v1, v3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 32
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    .line 34
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    :goto_0
    return-object v0

    .line 42
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 44
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected final bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 13
    check-cast p1, [Ljava/util/HashMap;

    invoke-direct {p0, p1}, Lcom/flurry/android/fb;->a([Ljava/util/HashMap;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 13
    check-cast p1, Lorg/json/JSONObject;

    :try_start_0
    new-instance v0, Lcom/flurry/android/AppCloudResponse;

    invoke-direct {v0, p1}, Lcom/flurry/android/AppCloudResponse;-><init>(Lorg/json/JSONObject;)V

    iget-object v1, p0, Lcom/flurry/android/fb;->d:Lcom/flurry/android/AppCloudResponseRequestManagerHandler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/flurry/android/fb;->d:Lcom/flurry/android/AppCloudResponseRequestManagerHandler;

    iget-object v2, p0, Lcom/flurry/android/fb;->c:Lcom/flurry/android/AppCloudResponseHandler;

    sget-object v3, Lcom/flurry/android/gq;->iU:Lcom/flurry/android/gq;

    iget-object v4, p0, Lcom/flurry/android/fb;->e:Ljava/util/HashMap;

    invoke-interface {v1, v0, v2, v3, v4}, Lcom/flurry/android/AppCloudResponseRequestManagerHandler;->handleResponse(Lcom/flurry/android/AppCloudResponse;Lcom/flurry/android/AppCloudResponseHandler;Lcom/flurry/android/gq;Ljava/util/HashMap;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/flurry/android/fb;->c:Lcom/flurry/android/AppCloudResponseHandler;

    invoke-interface {v1, v0}, Lcom/flurry/android/AppCloudResponseHandler;->handleResponse(Lcom/flurry/android/AppCloudResponse;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
