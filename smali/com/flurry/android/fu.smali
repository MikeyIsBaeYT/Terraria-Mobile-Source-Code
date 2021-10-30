.class final Lcom/flurry/android/fu;
.super Lcom/flurry/android/do;
.source "SourceFile"


# static fields
.field private static final p:Ljava/lang/String;


# instance fields
.field private final q:Ljava/lang/String;

.field private final r:Ljava/lang/String;

.field private final s:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/flurry/android/fu;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/android/fu;->p:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/flurry/android/FlurryAds;Lcom/flurry/android/cw;Lcom/flurry/android/AdUnit;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/flurry/android/do;-><init>(Landroid/content/Context;Lcom/flurry/android/FlurryAds;Lcom/flurry/android/cw;Lcom/flurry/android/AdUnit;)V

    .line 29
    const-string v0, "com.flurry.jumptap.PUBLISHER_ID"

    invoke-virtual {p5, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/fu;->q:Ljava/lang/String;

    .line 30
    const-string v0, "com.flurry.jumptap.INT_SPOT_ID"

    invoke-virtual {p5, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/fu;->r:Ljava/lang/String;

    .line 31
    const-string v0, "com.flurry.jumptap.INT_SITE_ID"

    invoke-virtual {p5, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/fu;->s:Ljava/lang/String;

    .line 32
    return-void
.end method

.method static synthetic d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/flurry/android/fu;->p:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final M()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 38
    invoke-static {}, Lcom/jumptap/adtag/JtAdWidgetSettingsFactory;->createWidgetSettings()Lcom/jumptap/adtag/JtAdWidgetSettings;

    move-result-object v3

    .line 39
    iget-object v0, p0, Lcom/flurry/android/fu;->q:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/jumptap/adtag/JtAdWidgetSettings;->setPublisherId(Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lcom/flurry/android/fu;->r:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/flurry/android/fu;->r:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/jumptap/adtag/JtAdWidgetSettings;->setSpotId(Ljava/lang/String;)V

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/flurry/android/fu;->s:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 46
    iget-object v0, p0, Lcom/flurry/android/fu;->s:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/jumptap/adtag/JtAdWidgetSettings;->setSiteId(Ljava/lang/String;)V

    .line 49
    :cond_1
    invoke-virtual {p0}, Lcom/flurry/android/fu;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/flurry/android/aw;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/jumptap/adtag/JtAdWidgetSettings;->setApplicationId(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p0}, Lcom/flurry/android/fu;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/flurry/android/aw;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/jumptap/adtag/JtAdWidgetSettings;->setApplicationVersion(Ljava/lang/String;)V

    .line 53
    invoke-virtual {v3, v1}, Lcom/jumptap/adtag/JtAdWidgetSettings;->setRefreshPeriod(I)V

    .line 55
    invoke-virtual {v3, v1}, Lcom/jumptap/adtag/JtAdWidgetSettings;->setShouldSendLocation(Z)V

    .line 58
    const/4 v2, 0x0

    .line 60
    :try_start_0
    new-instance v1, Lcom/jumptap/adtag/JtAdInterstitial;

    invoke-virtual {p0}, Lcom/flurry/android/fu;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-direct {v1, v0, v3}, Lcom/jumptap/adtag/JtAdInterstitial;-><init>(Landroid/content/Context;Lcom/jumptap/adtag/JtAdWidgetSettings;)V
    :try_end_0
    .catch Lcom/jumptap/adtag/utils/JtException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 96
    :goto_0
    new-instance v1, Lcom/flurry/android/z;

    invoke-direct {v1, p0}, Lcom/flurry/android/z;-><init>(Lcom/flurry/android/fu;)V

    .line 97
    invoke-virtual {v0, v1}, Lcom/jumptap/adtag/JtAdInterstitial;->setAdViewListener(Lcom/jumptap/adtag/JtAdViewListener;)V

    .line 100
    invoke-virtual {v0}, Lcom/jumptap/adtag/JtAdInterstitial;->showAsPopup()V

    .line 101
    return-void

    .line 62
    :catch_0
    move-exception v0

    sget-object v0, Lcom/flurry/android/fu;->p:Ljava/lang/String;

    const-string v1, "Jumptap JtException when creating ad object."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v2

    goto :goto_0
.end method
