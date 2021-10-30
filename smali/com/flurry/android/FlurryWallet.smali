.class public Lcom/flurry/android/FlurryWallet;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field protected static EMAIL_END:Ljava/lang/String;

.field private static cO:Lcom/flurry/android/AppCloudUser;

.field private static mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 17
    sput-object v0, Lcom/flurry/android/FlurryWallet;->mContext:Landroid/content/Context;

    .line 18
    sput-object v0, Lcom/flurry/android/FlurryWallet;->cO:Lcom/flurry/android/AppCloudUser;

    .line 21
    const-string v0, ".flurry.com"

    sput-object v0, Lcom/flurry/android/FlurryWallet;->EMAIL_END:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/flurry/android/AppCloudUser;)Lcom/flurry/android/AppCloudUser;
    .locals 0

    .prologue
    .line 15
    sput-object p0, Lcom/flurry/android/FlurryWallet;->cO:Lcom/flurry/android/AppCloudUser;

    return-object p0
.end method

.method public static addObserverForCurrencyKey(Ljava/lang/String;Lcom/flurry/android/FlurryWalletHandler;)V
    .locals 4

    .prologue
    .line 34
    invoke-static {}, Lcom/flurry/android/et;->aZ()Ljava/lang/String;

    move-result-object v0

    .line 35
    invoke-static {}, Lcom/flurry/android/et;->bd()Ljava/lang/String;

    move-result-object v1

    .line 37
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 38
    :cond_0
    const-string v0, "FlurryWallet"

    const-string v1, "There is no last logged in user"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    invoke-static {}, Lcom/flurry/android/FlurryWallet;->generateDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 43
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/flurry/android/FlurryWallet;->EMAIL_END:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 44
    const/4 v2, 0x1

    :try_start_0
    new-instance v3, Lcom/flurry/android/du;

    invoke-direct {v3, p0, p1}, Lcom/flurry/android/du;-><init>(Ljava/lang/String;Lcom/flurry/android/FlurryWalletHandler;)V

    invoke-static {v0, v0, v1, v2, v3}, Lcom/flurry/android/AppCloudUser;->loginUserWithName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/flurry/android/responses/AppCloudLoginResponseHandler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    :goto_0
    return-void

    .line 44
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 48
    :cond_1
    sput-object v1, Lcom/flurry/android/FlurryAppCloudRequestManager;->UserSession:Ljava/lang/String;

    .line 49
    invoke-static {}, Lcom/flurry/android/et;->aY()Lcom/flurry/android/AppCloudUser;

    move-result-object v1

    invoke-static {v1}, Lcom/flurry/android/AppCloudUser;->setCurrentUser(Lcom/flurry/android/AppCloudUser;)V

    .line 50
    invoke-static {p0, v0, p1}, Lcom/flurry/android/FlurryWallet;->addObserverForUser(Ljava/lang/String;Ljava/lang/String;Lcom/flurry/android/FlurryWalletHandler;)V

    goto :goto_0
.end method

.method protected static addObserverForUser(Ljava/lang/String;Ljava/lang/String;Lcom/flurry/android/FlurryWalletHandler;)V
    .locals 3

    .prologue
    .line 84
    sget-object v0, Lcom/flurry/android/FlurryWallet;->cO:Lcom/flurry/android/AppCloudUser;

    if-nez v0, :cond_0

    .line 85
    invoke-static {}, Lcom/flurry/android/et;->aY()Lcom/flurry/android/AppCloudUser;

    move-result-object v0

    sput-object v0, Lcom/flurry/android/FlurryWallet;->cO:Lcom/flurry/android/AppCloudUser;

    .line 87
    :cond_0
    sget-object v0, Lcom/flurry/android/FlurryWallet;->cO:Lcom/flurry/android/AppCloudUser;

    invoke-virtual {v0}, Lcom/flurry/android/AppCloudUser;->getId()Ljava/lang/String;

    move-result-object v0

    .line 88
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 90
    new-instance v0, Lcom/flurry/android/responses/AppCloudError;

    const/16 v1, 0x190

    const-string v2, "Please assign an object id."

    invoke-direct {v0, v1, v2}, Lcom/flurry/android/responses/AppCloudError;-><init>(ILjava/lang/String;)V

    invoke-interface {p2, v0}, Lcom/flurry/android/FlurryWalletHandler;->onError(Lcom/flurry/android/responses/AppCloudError;)V

    .line 96
    :goto_0
    return-void

    .line 94
    :cond_1
    invoke-static {v0, p0, p2}, Lcom/flurry/android/r;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 95
    invoke-static {v0}, Lcom/flurry/android/r;->b(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method static g(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 24
    sput-object p0, Lcom/flurry/android/FlurryWallet;->mContext:Landroid/content/Context;

    .line 25
    return-void
.end method

.method protected static generateDeviceId()Ljava/lang/String;
    .locals 8

    .prologue
    .line 99
    sget-object v0, Lcom/flurry/android/FlurryWallet;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 102
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 103
    const-string v1, ""

    .line 104
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/flurry/android/FlurryWallet;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "android_id"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 106
    new-instance v3, Ljava/util/UUID;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    int-to-long v4, v2

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    int-to-long v6, v0

    const/16 v0, 0x20

    shl-long/2addr v6, v0

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    int-to-long v0, v0

    or-long/2addr v0, v6

    invoke-direct {v3, v4, v5, v0, v1}, Ljava/util/UUID;-><init>(JJ)V

    .line 107
    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 108
    return-object v0
.end method

.method public static removeAllObservers()Z
    .locals 1

    .prologue
    .line 159
    invoke-static {}, Lcom/flurry/android/et;->aY()Lcom/flurry/android/AppCloudUser;

    move-result-object v0

    .line 160
    if-eqz v0, :cond_0

    .line 161
    invoke-virtual {v0}, Lcom/flurry/android/AppCloudUser;->removeAllObservers()Z

    move-result v0

    .line 165
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static removeObserver(Lcom/flurry/android/FlurryWalletHandler;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 139
    invoke-static {}, Lcom/flurry/android/et;->aY()Lcom/flurry/android/AppCloudUser;

    move-result-object v1

    .line 140
    if-eqz v1, :cond_0

    .line 141
    invoke-virtual {v1}, Lcom/flurry/android/AppCloudUser;->getId()Ljava/lang/String;

    move-result-object v1

    .line 143
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 151
    :cond_0
    :goto_0
    return v0

    .line 147
    :cond_1
    invoke-static {v1, p0}, Lcom/flurry/android/r;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public static removeObserversForCurrencyKey(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 118
    invoke-static {}, Lcom/flurry/android/et;->aY()Lcom/flurry/android/AppCloudUser;

    move-result-object v1

    .line 119
    if-eqz v1, :cond_0

    .line 120
    invoke-virtual {v1}, Lcom/flurry/android/AppCloudUser;->getId()Ljava/lang/String;

    move-result-object v1

    .line 121
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 129
    :cond_0
    :goto_0
    return v0

    .line 125
    :cond_1
    invoke-static {v1, p0}, Lcom/flurry/android/r;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method
