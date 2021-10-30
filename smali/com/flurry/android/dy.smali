.class Lcom/flurry/android/dy;
.super Lcom/flurry/android/do;
.source "SourceFile"


# static fields
.field private static final p:Ljava/lang/String;


# instance fields
.field private final bU:Z

.field private final fH:Ljava/lang/reflect/Method;

.field private final q:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/flurry/android/dy;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/android/dy;->p:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/flurry/android/FlurryAds;Lcom/flurry/android/cw;Lcom/flurry/android/AdUnit;Landroid/os/Bundle;)V
    .locals 7

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/flurry/android/do;-><init>(Landroid/content/Context;Lcom/flurry/android/FlurryAds;Lcom/flurry/android/cw;Lcom/flurry/android/AdUnit;)V

    .line 27
    const-string v0, "com.flurry.inmobi.MY_APP_ID"

    invoke-virtual {p5, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/dy;->q:Ljava/lang/String;

    .line 28
    const-string v0, "com.flurry.inmobi.test"

    invoke-virtual {p5, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/flurry/android/dy;->bU:Z

    .line 29
    const/4 v1, 0x0

    const-class v0, Lcom/inmobi/androidsdk/IMAdInterstitial;

    invoke-virtual {v0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v3

    array-length v4, v3

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v4, :cond_2

    aget-object v0, v3, v2

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "setIMAdInterstitialListener"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "setImAdInterstitialListener"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    :goto_1
    iput-object v0, p0, Lcom/flurry/android/dy;->fH:Ljava/lang/reflect/Method;

    .line 30
    return-void

    .line 29
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method static synthetic d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/flurry/android/dy;->p:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final M()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 37
    new-instance v1, Lcom/inmobi/androidsdk/IMAdInterstitial;

    invoke-virtual {p0}, Lcom/flurry/android/dy;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iget-object v2, p0, Lcom/flurry/android/dy;->q:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Lcom/inmobi/androidsdk/IMAdInterstitial;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    .line 76
    new-instance v0, Lcom/flurry/android/bp;

    invoke-direct {v0, p0}, Lcom/flurry/android/bp;-><init>(Lcom/flurry/android/dy;)V

    .line 77
    iget-object v2, p0, Lcom/flurry/android/dy;->fH:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_0

    if-nez v1, :cond_2

    .line 81
    :cond_0
    :goto_0
    new-instance v0, Lcom/inmobi/androidsdk/IMAdRequest;

    invoke-direct {v0}, Lcom/inmobi/androidsdk/IMAdRequest;-><init>()V

    .line 82
    iget-boolean v2, p0, Lcom/flurry/android/dy;->bU:Z

    if-eqz v2, :cond_1

    .line 83
    sget-object v2, Lcom/flurry/android/dy;->p:Ljava/lang/String;

    const-string v3, "InMobi Interstitial set to Test Mode."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    invoke-virtual {v0, v5}, Lcom/inmobi/androidsdk/IMAdRequest;->setTestMode(Z)V

    .line 88
    :cond_1
    invoke-virtual {v1, v0}, Lcom/inmobi/androidsdk/IMAdInterstitial;->loadNewAd(Lcom/inmobi/androidsdk/IMAdRequest;)V

    .line 89
    return-void

    .line 77
    :cond_2
    :try_start_0
    iget-object v2, p0, Lcom/flurry/android/dy;->fH:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method
