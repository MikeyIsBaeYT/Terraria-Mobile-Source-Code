.class abstract Lcom/flurry/android/a;
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
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field protected a:Lorg/apache/http/client/HttpClient;

.field protected b:Lorg/apache/http/HttpHost;

.field protected c:Lcom/flurry/android/AppCloudResponseHandler;

.field protected d:Lcom/flurry/android/AppCloudResponseRequestManagerHandler;

.field protected e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 48
    return-void
.end method

.method protected constructor <init>()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 54
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 37
    iput-object v0, p0, Lcom/flurry/android/a;->a:Lorg/apache/http/client/HttpClient;

    .line 42
    iput-object v0, p0, Lcom/flurry/android/a;->b:Lorg/apache/http/HttpHost;

    .line 44
    iput-object v0, p0, Lcom/flurry/android/a;->d:Lcom/flurry/android/AppCloudResponseRequestManagerHandler;

    .line 45
    iput-object v0, p0, Lcom/flurry/android/a;->e:Ljava/util/HashMap;

    .line 57
    :try_start_0
    new-instance v0, Lorg/apache/http/HttpHost;

    invoke-static {}, Lcom/flurry/android/FlurryAppCloud;->I()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1bb

    const-string v3, "https"

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    iput-object v0, p0, Lcom/flurry/android/a;->b:Lorg/apache/http/HttpHost;

    .line 59
    new-instance v0, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v0}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 60
    new-instance v1, Lorg/apache/http/conn/scheme/Scheme;

    const-string v2, "https"

    new-instance v3, Lcom/flurry/android/EasySSLSocketFactory;

    invoke-direct {v3}, Lcom/flurry/android/EasySSLSocketFactory;-><init>()V

    const/16 v4, 0x1bb

    invoke-direct {v1, v2, v3, v4}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v0, v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 62
    new-instance v1, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v1}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 63
    new-instance v2, Lorg/apache/http/impl/conn/SingleClientConnManager;

    invoke-direct {v2, v1, v0}, Lorg/apache/http/impl/conn/SingleClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 64
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0, v2, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    iput-object v0, p0, Lcom/flurry/android/a;->a:Lorg/apache/http/client/HttpClient;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    return-void

    .line 69
    :catch_0
    move-exception v0

    throw v0
.end method

.method protected static a(Lorg/apache/http/message/AbstractHttpMessage;Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/message/AbstractHttpMessage;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 75
    const-string v1, "Authorization"

    const-string v0, "auth"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lorg/apache/http/message/AbstractHttpMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    const-string v1, "APPCLOUD-USER-SESSION"

    const-string v0, "session"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lorg/apache/http/message/AbstractHttpMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    return-void
.end method
