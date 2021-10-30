.class public Lcom/flurry/android/FlurryAppCloudRequestManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static UserSession:Ljava/lang/String;

.field private static dR:Ljava/lang/String;

.field private static dS:Ljava/lang/String;

.field private static dT:Ljava/lang/String;

.field private static dU:Ljava/lang/String;

.field private static dV:Ljava/lang/String;

.field public static fInternalApi:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-string v0, ""

    sput-object v0, Lcom/flurry/android/FlurryAppCloudRequestManager;->UserSession:Ljava/lang/String;

    .line 19
    const-string v0, ""

    sput-object v0, Lcom/flurry/android/FlurryAppCloudRequestManager;->dR:Ljava/lang/String;

    .line 20
    const/4 v0, 0x0

    sput-boolean v0, Lcom/flurry/android/FlurryAppCloudRequestManager;->fInternalApi:Z

    .line 22
    const-string v0, "{code: \"400\", note: \"Please use FlurryAppCloud.saveOrCreateUser() for updating users.\"}"

    sput-object v0, Lcom/flurry/android/FlurryAppCloudRequestManager;->dS:Ljava/lang/String;

    .line 23
    const-string v0, "{code: \"400\", note: \"Please use FlurryAppCloud.saveOrCreateUser() for creating users.\"}"

    sput-object v0, Lcom/flurry/android/FlurryAppCloudRequestManager;->dT:Ljava/lang/String;

    .line 24
    const-string v0, "{code: \"400\", note: \"Please use FlurryAppCloud.deleteUser() for deleting users.\"}"

    sput-object v0, Lcom/flurry/android/FlurryAppCloudRequestManager;->dU:Ljava/lang/String;

    .line 26
    const-string v0, "del_internal"

    sput-object v0, Lcom/flurry/android/FlurryAppCloudRequestManager;->dV:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method public static Delete(Ljava/lang/String;Lcom/flurry/android/AppCloudResponseHandler;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 144
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 145
    invoke-static {v0}, Lcom/flurry/android/FlurryAppCloudRequestManager;->a(Ljava/util/HashMap;)V

    .line 147
    new-instance v1, Lcom/flurry/android/ek;

    invoke-direct {v1}, Lcom/flurry/android/ek;-><init>()V

    .line 159
    sget-object v2, Lcom/flurry/android/FlurryAppCloudRequestManager;->dV:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    const-string v1, "del"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    const-string v1, "url"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    const-string v1, "v1/user"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/flurry/android/FlurryAppCloudRequestManager;->fInternalApi:Z

    if-nez v1, :cond_0

    .line 165
    new-instance v0, Lorg/json/JSONObject;

    sget-object v1, Lcom/flurry/android/FlurryAppCloudRequestManager;->dU:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 166
    new-instance v1, Lcom/flurry/android/AppCloudResponse;

    invoke-direct {v1, v0}, Lcom/flurry/android/AppCloudResponse;-><init>(Lorg/json/JSONObject;)V

    .line 167
    invoke-interface {p1, v1}, Lcom/flurry/android/AppCloudResponseHandler;->handleResponse(Lcom/flurry/android/AppCloudResponse;)V

    .line 173
    :goto_0
    return-void

    .line 170
    :cond_0
    new-instance v1, Lcom/flurry/android/fb;

    invoke-direct {v1}, Lcom/flurry/android/fb;-><init>()V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/util/HashMap;

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/flurry/android/fb;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 171
    sput-boolean v3, Lcom/flurry/android/FlurryAppCloudRequestManager;->fInternalApi:Z

    goto :goto_0
.end method

.method public static Get(Ljava/lang/String;Ljava/util/List;Lcom/flurry/android/AppCloudResponseHandler;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;",
            "Lcom/flurry/android/AppCloudResponseHandler;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 116
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 117
    invoke-static {v0}, Lcom/flurry/android/FlurryAppCloudRequestManager;->a(Ljava/util/HashMap;)V

    .line 119
    new-instance v1, Lcom/flurry/android/ej;

    invoke-direct {v1}, Lcom/flurry/android/ej;-><init>()V

    .line 131
    sget-object v2, Lcom/flurry/android/FlurryAppCloudRequestManager;->dV:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    const-string v1, "del"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    if-eqz p1, :cond_0

    .line 135
    const-string v1, "url"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/flurry/android/ec;->g(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    :goto_0
    new-instance v1, Lcom/flurry/android/fw;

    invoke-direct {v1}, Lcom/flurry/android/fw;-><init>()V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/util/HashMap;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/flurry/android/fw;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 141
    return-void

    .line 137
    :cond_0
    const-string v1, "url"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static Post(Ljava/lang/String;Ljava/util/List;Lcom/flurry/android/AppCloudResponseHandler;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;",
            "Lcom/flurry/android/AppCloudResponseHandler;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 46
    invoke-static {v0}, Lcom/flurry/android/FlurryAppCloudRequestManager;->a(Ljava/util/HashMap;)V

    .line 48
    new-instance v1, Lcom/flurry/android/eh;

    invoke-direct {v1}, Lcom/flurry/android/eh;-><init>()V

    .line 60
    sget-object v2, Lcom/flurry/android/FlurryAppCloudRequestManager;->dV:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    const-string v1, "del"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    const-string v1, "url"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    const-string v1, "data"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    const-string v1, "v1/user"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/flurry/android/FlurryAppCloudRequestManager;->fInternalApi:Z

    if-nez v1, :cond_0

    .line 68
    new-instance v0, Lorg/json/JSONObject;

    sget-object v1, Lcom/flurry/android/FlurryAppCloudRequestManager;->dT:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 69
    new-instance v1, Lcom/flurry/android/AppCloudResponse;

    invoke-direct {v1, v0}, Lcom/flurry/android/AppCloudResponse;-><init>(Lorg/json/JSONObject;)V

    .line 70
    invoke-interface {p2, v1}, Lcom/flurry/android/AppCloudResponseHandler;->handleResponse(Lcom/flurry/android/AppCloudResponse;)V

    .line 76
    :goto_0
    return-void

    .line 73
    :cond_0
    new-instance v1, Lcom/flurry/android/ap;

    invoke-direct {v1}, Lcom/flurry/android/ap;-><init>()V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/util/HashMap;

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/flurry/android/ap;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 74
    sput-boolean v3, Lcom/flurry/android/FlurryAppCloudRequestManager;->fInternalApi:Z

    goto :goto_0
.end method

.method public static Put(Ljava/lang/String;Ljava/util/List;Lcom/flurry/android/AppCloudResponseHandler;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;",
            "Lcom/flurry/android/AppCloudResponseHandler;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 79
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 80
    invoke-static {v0}, Lcom/flurry/android/FlurryAppCloudRequestManager;->a(Ljava/util/HashMap;)V

    .line 82
    new-instance v1, Lcom/flurry/android/ei;

    invoke-direct {v1}, Lcom/flurry/android/ei;-><init>()V

    .line 94
    sget-object v2, Lcom/flurry/android/FlurryAppCloudRequestManager;->dV:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    const-string v1, "del"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    const-string v1, "url"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    if-nez p1, :cond_0

    .line 99
    const-string v1, "data"

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    :goto_0
    const-string v1, "v1/user"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/flurry/android/FlurryAppCloudRequestManager;->fInternalApi:Z

    if-nez v1, :cond_1

    .line 105
    new-instance v0, Lorg/json/JSONObject;

    sget-object v1, Lcom/flurry/android/FlurryAppCloudRequestManager;->dS:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 106
    new-instance v1, Lcom/flurry/android/AppCloudResponse;

    invoke-direct {v1, v0}, Lcom/flurry/android/AppCloudResponse;-><init>(Lorg/json/JSONObject;)V

    .line 107
    invoke-interface {p2, v1}, Lcom/flurry/android/AppCloudResponseHandler;->handleResponse(Lcom/flurry/android/AppCloudResponse;)V

    .line 113
    :goto_1
    return-void

    .line 101
    :cond_0
    const-string v1, "data"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 110
    :cond_1
    new-instance v1, Lcom/flurry/android/bt;

    invoke-direct {v1}, Lcom/flurry/android/bt;-><init>()V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/util/HashMap;

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/flurry/android/bt;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 111
    sput-boolean v3, Lcom/flurry/android/FlurryAppCloudRequestManager;->fInternalApi:Z

    goto :goto_1
.end method

.method static synthetic a(Lcom/flurry/android/AppCloudResponse;Lcom/flurry/android/AppCloudResponseHandler;Lcom/flurry/android/gq;Ljava/util/HashMap;)V
    .locals 3

    .prologue
    .line 16
    :try_start_0
    invoke-virtual {p0}, Lcom/flurry/android/AppCloudResponse;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1, p0}, Lcom/flurry/android/AppCloudResponseHandler;->handleResponse(Lcom/flurry/android/AppCloudResponse;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/flurry/android/AppCloudResponse;->getHTTPResponseCode()I

    move-result v0

    const/16 v1, 0x190

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/flurry/android/AppCloudResponse;->getResponseMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "invalid user session"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "FlurryAppCloudRequestManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CURRENT USER SESSION = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/flurry/android/FlurryAppCloudRequestManager;->UserSession:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " IS NOT VALID!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, ""

    sput-object v0, Lcom/flurry/android/FlurryAppCloudRequestManager;->UserSession:Ljava/lang/String;

    invoke-static {}, Lcom/flurry/android/et;->aX()V

    invoke-static {}, Lcom/flurry/android/et;->aY()Lcom/flurry/android/AppCloudUser;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/flurry/android/et;->be()V

    invoke-interface {p1, p0}, Lcom/flurry/android/AppCloudResponseHandler;->handleResponse(Lcom/flurry/android/AppCloudResponse;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-static {}, Lcom/flurry/android/et;->aY()Lcom/flurry/android/AppCloudUser;

    move-result-object v0

    invoke-static {v0}, Lcom/flurry/android/AppCloudUser;->setCurrentUser(Lcom/flurry/android/AppCloudUser;)V

    const-string v0, "FlurryAppCloudRequestManager"

    const-string v1, "TRYING TO RELOGIN WITH LAST USER!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/flurry/android/et;->bb()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/flurry/android/et;->bc()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/flurry/android/ed;

    invoke-direct {v2, p3, p2, p1}, Lcom/flurry/android/ed;-><init>(Ljava/util/HashMap;Lcom/flurry/android/gq;Lcom/flurry/android/AppCloudResponseHandler;)V

    invoke-static {v0, v1, v2}, Lcom/flurry/android/AppCloudUser;->loginWithEmail(Ljava/lang/String;Ljava/lang/String;Lcom/flurry/android/responses/AppCloudLoginResponseHandler;)V

    goto :goto_0

    :cond_2
    invoke-interface {p1, p0}, Lcom/flurry/android/AppCloudResponseHandler;->handleResponse(Lcom/flurry/android/AppCloudResponse;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private static a(Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 40
    const-string v0, "session"

    sget-object v1, Lcom/flurry/android/FlurryAppCloudRequestManager;->UserSession:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    const-string v0, "auth"

    sget-object v1, Lcom/flurry/android/FlurryAppCloudRequestManager;->dR:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    return-void
.end method

.method static synthetic ap()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/flurry/android/FlurryAppCloudRequestManager;->dV:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Ljava/util/HashMap;)V
    .locals 0

    .prologue
    .line 16
    invoke-static {p0}, Lcom/flurry/android/FlurryAppCloudRequestManager;->a(Ljava/util/HashMap;)V

    return-void
.end method

.method static g(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Basic "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/16 v2, 0xa

    invoke-static {v0, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/android/FlurryAppCloudRequestManager;->dR:Ljava/lang/String;

    .line 37
    return-void
.end method
