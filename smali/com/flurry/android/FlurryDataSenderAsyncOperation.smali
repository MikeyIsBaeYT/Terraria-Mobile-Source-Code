.class public Lcom/flurry/android/FlurryDataSenderAsyncOperation;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/lang/Void;",
        "Lorg/apache/http/HttpResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private gh:Ljava/lang/String;

.field private ix:Lcom/flurry/android/FlurryDataSenderHandler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 17
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 25
    iput-object v0, p0, Lcom/flurry/android/FlurryDataSenderAsyncOperation;->ix:Lcom/flurry/android/FlurryDataSenderHandler;

    .line 26
    iput-object v0, p0, Lcom/flurry/android/FlurryDataSenderAsyncOperation;->gh:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 17
    check-cast p1, [Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Lcom/flurry/android/FlurryDataSenderAsyncOperation;->doInBackground([Ljava/util/HashMap;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/util/HashMap;)Lorg/apache/http/HttpResponse;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/apache/http/HttpResponse;"
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

    check-cast v0, Lcom/flurry/android/FlurryDataSenderHandler;

    iput-object v0, p0, Lcom/flurry/android/FlurryDataSenderAsyncOperation;->ix:Lcom/flurry/android/FlurryDataSenderHandler;

    .line 31
    const/4 v0, 0x0

    aget-object v0, p1, v0

    const-string v1, "id"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/flurry/android/FlurryDataSenderAsyncOperation;->gh:Ljava/lang/String;

    .line 33
    const/4 v0, 0x0

    aget-object v0, p1, v0

    const-string v1, "url"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 34
    const/4 v1, 0x0

    aget-object v1, p1, v1

    const-string v2, "data"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    check-cast v1, [B

    .line 36
    new-instance v2, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v2, v1}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    .line 37
    const-string v1, "application/octet-stream"

    invoke-virtual {v2, v1}, Lorg/apache/http/entity/ByteArrayEntity;->setContentType(Ljava/lang/String;)V

    .line 40
    new-instance v1, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v1, v0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 42
    invoke-virtual {v1, v2}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 44
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 45
    const/16 v2, 0x2710

    invoke-static {v0, v2}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 46
    const/16 v2, 0x3a98

    invoke-static {v0, v2}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 47
    invoke-virtual {v1}, Lorg/apache/http/client/methods/HttpPost;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v2

    const-string v3, "http.protocol.expect-continue"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lorg/apache/http/params/HttpParams;->setBooleanParameter(Ljava/lang/String;Z)Lorg/apache/http/params/HttpParams;

    .line 49
    invoke-static {v0}, Lcom/flurry/android/ch;->a(Lorg/apache/http/params/HttpParams;)Lorg/apache/http/client/HttpClient;

    move-result-object v0

    .line 50
    invoke-interface {v0, v1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 56
    :goto_0
    return-object v0

    .line 54
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 56
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 17
    check-cast p1, Lorg/apache/http/HttpResponse;

    invoke-virtual {p0, p1}, Lcom/flurry/android/FlurryDataSenderAsyncOperation;->onPostExecute(Lorg/apache/http/HttpResponse;)V

    return-void
.end method

.method protected onPostExecute(Lorg/apache/http/HttpResponse;)V
    .locals 4

    .prologue
    .line 64
    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    if-nez v0, :cond_1

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/flurry/android/FlurryDataSenderAsyncOperation;->ix:Lcom/flurry/android/FlurryDataSenderHandler;

    iget-object v1, p0, Lcom/flurry/android/FlurryDataSenderAsyncOperation;->gh:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/flurry/android/FlurryDataSenderHandler;->onServerError(Ljava/lang/String;)V

    .line 78
    :goto_0
    return-void

    .line 69
    :cond_1
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    .line 70
    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    .line 71
    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v0

    .line 73
    iget-object v2, p0, Lcom/flurry/android/FlurryDataSenderAsyncOperation;->ix:Lcom/flurry/android/FlurryDataSenderHandler;

    iget-object v3, p0, Lcom/flurry/android/FlurryDataSenderAsyncOperation;->gh:Ljava/lang/String;

    invoke-interface {v2, v1, v0, v3}, Lcom/flurry/android/FlurryDataSenderHandler;->onResponse(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 75
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
