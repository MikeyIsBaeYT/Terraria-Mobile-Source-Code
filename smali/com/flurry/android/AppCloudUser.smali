.class public Lcom/flurry/android/AppCloudUser;
.super Lcom/flurry/android/cx;
.source "SourceFile"


# static fields
.field private static cN:Lcom/flurry/android/AppCloudUser;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    sput-object v0, Lcom/flurry/android/AppCloudUser;->cN:Lcom/flurry/android/AppCloudUser;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/flurry/android/cx;-><init>()V

    .line 29
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/flurry/android/cx;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/flurry/android/AppCloudUser;->mUsername:Ljava/lang/String;

    .line 35
    iput-object p2, p0, Lcom/flurry/android/AppCloudUser;->mEmail:Ljava/lang/String;

    .line 36
    iput-object p3, p0, Lcom/flurry/android/AppCloudUser;->password:Ljava/lang/String;

    .line 37
    return-void
.end method

.method constructor <init>(Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/flurry/android/cx;-><init>()V

    .line 42
    invoke-virtual {p0, p1}, Lcom/flurry/android/AppCloudUser;->createUser(Lorg/json/JSONObject;)V

    .line 43
    return-void
.end method

.method protected static Search()Lcom/flurry/android/AppCloudSearch;
    .locals 1

    .prologue
    .line 86
    invoke-static {}, Lcom/flurry/android/AppCloudUser;->getCurrentUser()Lcom/flurry/android/AppCloudUser;

    move-result-object v0

    if-nez v0, :cond_0

    .line 87
    const/4 v0, 0x0

    .line 92
    :goto_0
    return-object v0

    .line 90
    :cond_0
    new-instance v0, Lcom/flurry/android/AppCloudSearch;

    invoke-direct {v0}, Lcom/flurry/android/AppCloudSearch;-><init>()V

    goto :goto_0
.end method

.method static synthetic V()Lcom/flurry/android/AppCloudUser;
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    sput-object v0, Lcom/flurry/android/AppCloudUser;->cN:Lcom/flurry/android/AppCloudUser;

    return-object v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Lcom/flurry/android/responses/AppCloudCommonOperationResponseHandler;)V
    .locals 3

    .prologue
    .line 456
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 458
    if-eqz p0, :cond_1

    .line 459
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "username"

    invoke-direct {v1, v2, p0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 468
    :cond_0
    :goto_0
    const/4 v1, 0x1

    sput-boolean v1, Lcom/flurry/android/FlurryAppCloudRequestManager;->fInternalApi:Z

    .line 469
    const-string v1, "v1/user/forgot"

    new-instance v2, Lcom/flurry/android/di;

    invoke-direct {v2, p2}, Lcom/flurry/android/di;-><init>(Lcom/flurry/android/responses/AppCloudCommonOperationResponseHandler;)V

    invoke-static {v1, v0, v2}, Lcom/flurry/android/FlurryAppCloudRequestManager;->Post(Ljava/lang/String;Ljava/util/List;Lcom/flurry/android/AppCloudResponseHandler;)V

    .line 496
    :goto_1
    return-void

    .line 461
    :cond_1
    if-eqz p1, :cond_0

    .line 462
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "email"

    invoke-direct {v1, v2, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 491
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Lcom/flurry/android/responses/AppCloudLoginResponseHandler;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 132
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 134
    invoke-static {}, Lcom/flurry/android/et;->ba()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/flurry/android/et;->bc()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/flurry/android/et;->aZ()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 137
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "userid"

    invoke-static {}, Lcom/flurry/android/et;->aZ()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "password"

    invoke-direct {v1, v2, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    :goto_0
    invoke-static {v0, p1, p2}, Lcom/flurry/android/AppCloudUser;->a(Ljava/util/List;Ljava/lang/String;Lcom/flurry/android/responses/AppCloudLoginResponseHandler;)V

    .line 146
    return-void

    .line 141
    :cond_0
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "username"

    invoke-direct {v1, v2, p0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "password"

    invoke-direct {v1, v2, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private static a(Ljava/util/List;Ljava/lang/String;Lcom/flurry/android/responses/AppCloudLoginResponseHandler;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/flurry/android/responses/AppCloudLoginResponseHandler;",
            ")V"
        }
    .end annotation

    .prologue
    .line 150
    :try_start_0
    const-string v0, "v1/user/login"

    new-instance v1, Lcom/flurry/android/dg;

    invoke-direct {v1, p1, p2}, Lcom/flurry/android/dg;-><init>(Ljava/lang/String;Lcom/flurry/android/responses/AppCloudLoginResponseHandler;)V

    invoke-static {v0, p0, v1}, Lcom/flurry/android/FlurryAppCloudRequestManager;->Get(Ljava/lang/String;Ljava/util/List;Lcom/flurry/android/AppCloudResponseHandler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    :goto_0
    return-void

    .line 193
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getCurrentUser()Lcom/flurry/android/AppCloudUser;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lcom/flurry/android/AppCloudUser;->cN:Lcom/flurry/android/AppCloudUser;

    return-object v0
.end method

.method public static getUserById(Ljava/lang/String;Lcom/flurry/android/responses/AppCloudGetUserByIDResponseHandler;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 507
    new-instance v0, Lcom/flurry/android/AppCloudUser;

    invoke-direct {v0}, Lcom/flurry/android/AppCloudUser;-><init>()V

    .line 508
    invoke-virtual {v0, p0}, Lcom/flurry/android/AppCloudUser;->setId(Ljava/lang/String;)V

    .line 509
    new-instance v1, Lcom/flurry/android/dj;

    invoke-direct {v1, p1}, Lcom/flurry/android/dj;-><init>(Lcom/flurry/android/responses/AppCloudGetUserByIDResponseHandler;)V

    invoke-virtual {v0, v1}, Lcom/flurry/android/AppCloudUser;->getObjectOrUser(Lcom/flurry/android/AppCloudResponseHandler;)V

    .line 531
    return-void
.end method

.method public static loginUserWithName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/flurry/android/responses/AppCloudLoginResponseHandler;)V
    .locals 3

    .prologue
    const/16 v2, 0x190

    .line 216
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    new-instance v0, Lcom/flurry/android/responses/AppCloudError;

    const-string v1, "User name is not set."

    invoke-direct {v0, v2, v1}, Lcom/flurry/android/responses/AppCloudError;-><init>(ILjava/lang/String;)V

    invoke-interface {p4, v0}, Lcom/flurry/android/responses/AppCloudLoginResponseHandler;->onError(Lcom/flurry/android/responses/AppCloudError;)V

    .line 282
    :goto_0
    return-void

    .line 221
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 222
    new-instance v0, Lcom/flurry/android/responses/AppCloudError;

    const-string v1, "Password is not set."

    invoke-direct {v0, v2, v1}, Lcom/flurry/android/responses/AppCloudError;-><init>(ILjava/lang/String;)V

    invoke-interface {p4, v0}, Lcom/flurry/android/responses/AppCloudLoginResponseHandler;->onError(Lcom/flurry/android/responses/AppCloudError;)V

    goto :goto_0

    .line 226
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 227
    new-instance v0, Lcom/flurry/android/responses/AppCloudError;

    const-string v1, "Email is not set."

    invoke-direct {v0, v2, v1}, Lcom/flurry/android/responses/AppCloudError;-><init>(ILjava/lang/String;)V

    invoke-interface {p4, v0}, Lcom/flurry/android/responses/AppCloudLoginResponseHandler;->onError(Lcom/flurry/android/responses/AppCloudError;)V

    goto :goto_0

    .line 232
    :cond_2
    if-nez p3, :cond_3

    .line 233
    :try_start_0
    invoke-static {p0, p1, p4}, Lcom/flurry/android/AppCloudUser;->a(Ljava/lang/String;Ljava/lang/String;Lcom/flurry/android/responses/AppCloudLoginResponseHandler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 278
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 236
    :cond_3
    :try_start_1
    new-instance v0, Lcom/flurry/android/cz;

    invoke-direct {v0, p4, p0, p2, p1}, Lcom/flurry/android/cz;-><init>(Lcom/flurry/android/responses/AppCloudLoginResponseHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, p1, v0}, Lcom/flurry/android/AppCloudUser;->a(Ljava/lang/String;Ljava/lang/String;Lcom/flurry/android/responses/AppCloudLoginResponseHandler;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static loginWithEmail(Ljava/lang/String;Ljava/lang/String;Lcom/flurry/android/responses/AppCloudLoginResponseHandler;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 107
    invoke-static {}, Lcom/flurry/android/et;->bb()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/flurry/android/et;->bc()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/flurry/android/et;->aZ()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 110
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "userid"

    invoke-static {}, Lcom/flurry/android/et;->aZ()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "password"

    invoke-direct {v1, v2, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    :goto_0
    invoke-static {v0, p1, p2}, Lcom/flurry/android/AppCloudUser;->a(Ljava/util/List;Ljava/lang/String;Lcom/flurry/android/responses/AppCloudLoginResponseHandler;)V

    .line 120
    return-void

    .line 114
    :cond_0
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "email"

    invoke-direct {v1, v2, p0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "password"

    invoke-direct {v1, v2, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static resetPasswordForUserViaEmail(Ljava/lang/String;Lcom/flurry/android/responses/AppCloudCommonOperationResponseHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 431
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lcom/flurry/android/AppCloudUser;->a(Ljava/lang/String;Ljava/lang/String;Lcom/flurry/android/responses/AppCloudCommonOperationResponseHandler;)V

    .line 432
    return-void
.end method

.method public static resetPasswordForUserViaUsername(Ljava/lang/String;Lcom/flurry/android/responses/AppCloudCommonOperationResponseHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 418
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/flurry/android/AppCloudUser;->a(Ljava/lang/String;Ljava/lang/String;Lcom/flurry/android/responses/AppCloudCommonOperationResponseHandler;)V

    .line 419
    return-void
.end method

.method protected static setCurrentUser(Lcom/flurry/android/AppCloudUser;)V
    .locals 0

    .prologue
    .line 76
    sput-object p0, Lcom/flurry/android/AppCloudUser;->cN:Lcom/flurry/android/AppCloudUser;

    .line 77
    return-void
.end method


# virtual methods
.method public addObserverForKey(Ljava/lang/String;Lcom/flurry/android/AppCloudValueUpdateHandler;)V
    .locals 3

    .prologue
    .line 673
    iget-object v0, p0, Lcom/flurry/android/AppCloudUser;->mId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 675
    const-string v0, "AppCloudUser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mId of user is  = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/android/AppCloudUser;->mId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    new-instance v0, Lcom/flurry/android/responses/AppCloudError;

    const/16 v1, 0x190

    const-string v2, "Please assign an object id."

    invoke-direct {v0, v1, v2}, Lcom/flurry/android/responses/AppCloudError;-><init>(ILjava/lang/String;)V

    invoke-interface {p2, v0}, Lcom/flurry/android/AppCloudValueUpdateHandler;->onError(Lcom/flurry/android/responses/AppCloudError;)V

    .line 681
    :goto_0
    return-void

    .line 680
    :cond_0
    iget-object v0, p0, Lcom/flurry/android/AppCloudUser;->mId:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Lcom/flurry/android/r;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public bridge synthetic containsObserver()Z
    .locals 1

    .prologue
    .line 21
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
    .line 661
    iget-object v0, p0, Lcom/flurry/android/AppCloudUser;->mId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 662
    new-instance v0, Lorg/json/JSONObject;

    const-string v1, "{code:\"400\",note:\"Please assign an object id.\"}"

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 663
    new-instance v1, Lcom/flurry/android/AppCloudResponse;

    invoke-direct {v1, v0}, Lcom/flurry/android/AppCloudResponse;-><init>(Lorg/json/JSONObject;)V

    .line 664
    new-instance v0, Lcom/flurry/android/responses/AppCloudError;

    invoke-virtual {v1}, Lcom/flurry/android/AppCloudResponse;->getHTTPResponseCode()I

    move-result v2

    invoke-virtual {v1}, Lcom/flurry/android/AppCloudResponse;->getResponseMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/flurry/android/responses/AppCloudError;-><init>(ILjava/lang/String;)V

    invoke-interface {p3, v0}, Lcom/flurry/android/responses/AppCloudCommonOperationResponseHandler;->onError(Lcom/flurry/android/responses/AppCloudError;)V

    .line 669
    :goto_0
    return-void

    .line 667
    :cond_0
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
    .line 647
    iget-object v0, p0, Lcom/flurry/android/AppCloudUser;->mId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 648
    new-instance v0, Lorg/json/JSONObject;

    const-string v1, "{code:\"400\",note:\"Please assign an object id.\"}"

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 649
    new-instance v1, Lcom/flurry/android/AppCloudResponse;

    invoke-direct {v1, v0}, Lcom/flurry/android/AppCloudResponse;-><init>(Lorg/json/JSONObject;)V

    .line 651
    new-instance v0, Lcom/flurry/android/responses/AppCloudError;

    invoke-virtual {v1}, Lcom/flurry/android/AppCloudResponse;->getHTTPResponseCode()I

    move-result v2

    invoke-virtual {v1}, Lcom/flurry/android/AppCloudResponse;->getResponseMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/flurry/android/responses/AppCloudError;-><init>(ILjava/lang/String;)V

    invoke-interface {p3, v0}, Lcom/flurry/android/responses/AppCloudCommonOperationResponseHandler;->onError(Lcom/flurry/android/responses/AppCloudError;)V

    .line 656
    :goto_0
    return-void

    .line 654
    :cond_0
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
    .line 568
    :try_start_0
    iget-object v0, p0, Lcom/flurry/android/AppCloudUser;->mId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 570
    new-instance v0, Lorg/json/JSONObject;

    const-string v1, "{code:\"400\",note:\"Please assign an object id.\"}"

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 571
    new-instance v1, Lcom/flurry/android/AppCloudResponse;

    invoke-direct {v1, v0}, Lcom/flurry/android/AppCloudResponse;-><init>(Lorg/json/JSONObject;)V

    .line 572
    new-instance v0, Lcom/flurry/android/responses/AppCloudError;

    invoke-virtual {v1}, Lcom/flurry/android/AppCloudResponse;->getHTTPResponseCode()I

    move-result v2

    invoke-virtual {v1}, Lcom/flurry/android/AppCloudResponse;->getResponseMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/flurry/android/responses/AppCloudError;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/flurry/android/responses/AppCloudCommonOperationResponseHandler;->onError(Lcom/flurry/android/responses/AppCloudError;)V

    .line 614
    :goto_0
    return-void

    .line 576
    :cond_0
    new-instance v0, Lcom/flurry/android/dl;

    invoke-direct {v0, p0, p1}, Lcom/flurry/android/dl;-><init>(Lcom/flurry/android/AppCloudUser;Lcom/flurry/android/responses/AppCloudCommonOperationResponseHandler;)V

    invoke-virtual {p0, v0}, Lcom/flurry/android/AppCloudUser;->delete(Lcom/flurry/android/AppCloudResponseHandler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 611
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public bridge synthetic get(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    invoke-super {p0, p1}, Lcom/flurry/android/cx;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/flurry/android/AppCloudUser;->mEmail:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getFloat(Ljava/lang/String;)F
    .locals 1

    .prologue
    .line 21
    invoke-super {p0, p1}, Lcom/flurry/android/cx;->getFloat(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public bridge synthetic getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    invoke-super {p0}, Lcom/flurry/android/cx;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getInt(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 21
    invoke-super {p0, p1}, Lcom/flurry/android/cx;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic getKeyValues()Ljava/util/Vector;
    .locals 1

    .prologue
    .line 21
    invoke-super {p0}, Lcom/flurry/android/cx;->getKeyValues()Ljava/util/Vector;

    move-result-object v0

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/flurry/android/AppCloudUser;->password:Ljava/lang/String;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/flurry/android/AppCloudUser;->mUsername:Ljava/lang/String;

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
    .line 535
    iget-object v0, p0, Lcom/flurry/android/AppCloudUser;->mId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 537
    new-instance v0, Lorg/json/JSONObject;

    const-string v1, "{code:\"400\",note:\"Please assign an object id.\"}"

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 538
    new-instance v1, Lcom/flurry/android/AppCloudResponse;

    invoke-direct {v1, v0}, Lcom/flurry/android/AppCloudResponse;-><init>(Lorg/json/JSONObject;)V

    .line 539
    new-instance v0, Lcom/flurry/android/responses/AppCloudError;

    invoke-virtual {v1}, Lcom/flurry/android/AppCloudResponse;->getHTTPResponseCode()I

    move-result v2

    invoke-virtual {v1}, Lcom/flurry/android/AppCloudResponse;->getResponseMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/flurry/android/responses/AppCloudError;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/flurry/android/responses/AppCloudCommonOperationResponseHandler;->onError(Lcom/flurry/android/responses/AppCloudError;)V

    .line 561
    :goto_0
    return-void

    .line 542
    :cond_0
    new-instance v0, Lcom/flurry/android/dk;

    invoke-direct {v0, p1}, Lcom/flurry/android/dk;-><init>(Lcom/flurry/android/responses/AppCloudCommonOperationResponseHandler;)V

    invoke-virtual {p0, v0}, Lcom/flurry/android/AppCloudUser;->getObjectOrUser(Lcom/flurry/android/AppCloudResponseHandler;)V

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
    .line 633
    iget-object v0, p0, Lcom/flurry/android/AppCloudUser;->mId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 634
    new-instance v0, Lorg/json/JSONObject;

    const-string v1, "{code:\"400\",note:\"Please assign an object id.\"}"

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 635
    new-instance v1, Lcom/flurry/android/AppCloudResponse;

    invoke-direct {v1, v0}, Lcom/flurry/android/AppCloudResponse;-><init>(Lorg/json/JSONObject;)V

    .line 637
    new-instance v0, Lcom/flurry/android/responses/AppCloudError;

    invoke-virtual {v1}, Lcom/flurry/android/AppCloudResponse;->getHTTPResponseCode()I

    move-result v2

    invoke-virtual {v1}, Lcom/flurry/android/AppCloudResponse;->getResponseMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/flurry/android/responses/AppCloudError;-><init>(ILjava/lang/String;)V

    invoke-interface {p3, v0}, Lcom/flurry/android/responses/AppCloudCommonOperationResponseHandler;->onError(Lcom/flurry/android/responses/AppCloudError;)V

    .line 642
    :goto_0
    return-void

    .line 640
    :cond_0
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
    .line 619
    iget-object v0, p0, Lcom/flurry/android/AppCloudUser;->mId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 620
    new-instance v0, Lorg/json/JSONObject;

    const-string v1, "{code:\"400\",note:\"Please assign an object id.\"}"

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 621
    new-instance v1, Lcom/flurry/android/AppCloudResponse;

    invoke-direct {v1, v0}, Lcom/flurry/android/AppCloudResponse;-><init>(Lorg/json/JSONObject;)V

    .line 623
    new-instance v0, Lcom/flurry/android/responses/AppCloudError;

    invoke-virtual {v1}, Lcom/flurry/android/AppCloudResponse;->getHTTPResponseCode()I

    move-result v2

    invoke-virtual {v1}, Lcom/flurry/android/AppCloudResponse;->getResponseMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/flurry/android/responses/AppCloudError;-><init>(ILjava/lang/String;)V

    invoke-interface {p3, v0}, Lcom/flurry/android/responses/AppCloudCommonOperationResponseHandler;->onError(Lcom/flurry/android/responses/AppCloudError;)V

    .line 628
    :goto_0
    return-void

    .line 626
    :cond_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, p1, v0, p3}, Lcom/flurry/android/cx;->increment(Ljava/lang/String;Ljava/lang/String;Lcom/flurry/android/responses/AppCloudCommonOperationResponseHandler;)V

    goto :goto_0
.end method

.method public bridge synthetic isAutoSyncEnabled()Z
    .locals 1

    .prologue
    .line 21
    invoke-super {p0}, Lcom/flurry/android/cx;->isAutoSyncEnabled()Z

    move-result v0

    return v0
.end method

.method public loginCreatingIfNewWithCompletionHandler(Lcom/flurry/android/responses/AppCloudLoginResponseHandler;)V
    .locals 4

    .prologue
    .line 329
    invoke-static {}, Lcom/flurry/android/et;->ba()Ljava/lang/String;

    move-result-object v0

    .line 330
    invoke-static {}, Lcom/flurry/android/et;->bc()Ljava/lang/String;

    move-result-object v1

    .line 331
    invoke-static {}, Lcom/flurry/android/et;->bb()Ljava/lang/String;

    move-result-object v2

    .line 334
    const/4 v3, 0x1

    :try_start_0
    invoke-static {v0, v1, v2, v3, p1}, Lcom/flurry/android/AppCloudUser;->loginUserWithName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/flurry/android/responses/AppCloudLoginResponseHandler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 338
    :goto_0
    return-void

    .line 335
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public logoutWithCompletionHandler(Lcom/flurry/android/responses/AppCloudCommonOperationResponseHandler;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 347
    const/4 v0, 0x1

    sput-boolean v0, Lcom/flurry/android/FlurryAppCloudRequestManager;->fInternalApi:Z

    .line 349
    const-string v0, "AppCloudUser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Logout, mId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/android/AppCloudUser;->mId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    const-string v0, "v1/user/logout"

    const/4 v1, 0x0

    new-instance v2, Lcom/flurry/android/de;

    invoke-direct {v2, p1}, Lcom/flurry/android/de;-><init>(Lcom/flurry/android/responses/AppCloudCommonOperationResponseHandler;)V

    invoke-static {v0, v1, v2}, Lcom/flurry/android/FlurryAppCloudRequestManager;->Put(Ljava/lang/String;Ljava/util/List;Lcom/flurry/android/AppCloudResponseHandler;)V

    .line 375
    return-void
.end method

.method public bridge synthetic removeAllObservers()Z
    .locals 1

    .prologue
    .line 21
    invoke-super {p0}, Lcom/flurry/android/cx;->removeAllObservers()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic removeObserver(Lcom/flurry/android/AppCloudValueUpdateHandler;)Z
    .locals 1

    .prologue
    .line 21
    invoke-super {p0, p1}, Lcom/flurry/android/cx;->removeObserver(Lcom/flurry/android/AppCloudValueUpdateHandler;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic removeObserverForKey(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 21
    invoke-super {p0, p1}, Lcom/flurry/android/cx;->removeObserverForKey(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public resendSignupValidationEmailWithCompletionHandler(Lcom/flurry/android/responses/AppCloudCommonOperationResponseHandler;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 384
    const/4 v0, 0x1

    sput-boolean v0, Lcom/flurry/android/FlurryAppCloudRequestManager;->fInternalApi:Z

    .line 385
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "v1/user/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/android/AppCloudUser;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/resend"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-instance v2, Lcom/flurry/android/df;

    invoke-direct {v2, p1}, Lcom/flurry/android/df;-><init>(Lcom/flurry/android/responses/AppCloudCommonOperationResponseHandler;)V

    invoke-static {v0, v1, v2}, Lcom/flurry/android/FlurryAppCloudRequestManager;->Post(Ljava/lang/String;Ljava/util/List;Lcom/flurry/android/AppCloudResponseHandler;)V

    .line 406
    return-void
.end method

.method public resetPasswordWithCompletionHandler(Lcom/flurry/android/responses/AppCloudCommonOperationResponseHandler;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 440
    iget-object v0, p0, Lcom/flurry/android/AppCloudUser;->mUsername:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/android/AppCloudUser;->mEmail:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 441
    new-instance v0, Lcom/flurry/android/responses/AppCloudError;

    const/16 v1, 0x190

    const-string v2, "Current user has neither username nor email"

    invoke-direct {v0, v1, v2}, Lcom/flurry/android/responses/AppCloudError;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/flurry/android/responses/AppCloudCommonOperationResponseHandler;->onError(Lcom/flurry/android/responses/AppCloudError;)V

    .line 451
    :goto_0
    return-void

    .line 444
    :cond_0
    iget-object v0, p0, Lcom/flurry/android/AppCloudUser;->mEmail:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 445
    iget-object v0, p0, Lcom/flurry/android/AppCloudUser;->mEmail:Ljava/lang/String;

    invoke-static {v1, v0, p1}, Lcom/flurry/android/AppCloudUser;->a(Ljava/lang/String;Ljava/lang/String;Lcom/flurry/android/responses/AppCloudCommonOperationResponseHandler;)V

    goto :goto_0

    .line 448
    :cond_1
    iget-object v0, p0, Lcom/flurry/android/AppCloudUser;->mUsername:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/flurry/android/AppCloudUser;->a(Ljava/lang/String;Ljava/lang/String;Lcom/flurry/android/responses/AppCloudCommonOperationResponseHandler;)V

    goto :goto_0
.end method

.method public saveOrCreateWithCompletionHandler(Lcom/flurry/android/responses/AppCloudApplyOperationResonseHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 287
    new-instance v0, Lcom/flurry/android/dd;

    invoke-direct {v0, p0, p1}, Lcom/flurry/android/dd;-><init>(Lcom/flurry/android/AppCloudUser;Lcom/flurry/android/responses/AppCloudApplyOperationResonseHandler;)V

    invoke-super {p0, v0}, Lcom/flurry/android/cx;->saveOrCreateWithCompletionHandler(Lcom/flurry/android/responses/AppCloudApplyOperationResonseHandler;)V

    .line 319
    return-void
.end method

.method public bridge synthetic saveToCache()V
    .locals 0

    .prologue
    .line 21
    invoke-super {p0}, Lcom/flurry/android/cx;->saveToCache()V

    return-void
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 21
    invoke-super {p0, p1, p2}, Lcom/flurry/android/cx;->set(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic setAutoSyncEnabled(Z)Z
    .locals 1

    .prologue
    .line 21
    invoke-super {p0, p1}, Lcom/flurry/android/cx;->setAutoSyncEnabled(Z)Z

    move-result v0

    return v0
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/flurry/android/AppCloudUser;->mEmail:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/flurry/android/AppCloudUser;->password:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/flurry/android/AppCloudUser;->mUsername:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    invoke-super {p0}, Lcom/flurry/android/cx;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
