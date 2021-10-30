.class final Lcom/flurry/android/gm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/ads/AdListener;


# instance fields
.field private synthetic iH:Lcom/flurry/android/eo;


# direct methods
.method synthetic constructor <init>(Lcom/flurry/android/eo;)V
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/flurry/android/gm;-><init>(Lcom/flurry/android/eo;B)V

    return-void
.end method

.method private constructor <init>(Lcom/flurry/android/eo;B)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/flurry/android/gm;->iH:Lcom/flurry/android/eo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismissScreen(Lcom/google/ads/Ad;)V
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/flurry/android/gm;->iH:Lcom/flurry/android/eo;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/android/eo;->onAdClosed(Ljava/util/Map;)V

    .line 74
    invoke-static {}, Lcom/flurry/android/eo;->aV()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Admob Interstitial dismissed from screen."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    return-void
.end method

.method public final onFailedToReceiveAd(Lcom/google/ads/Ad;Lcom/google/ads/AdRequest$ErrorCode;)V
    .locals 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/flurry/android/gm;->iH:Lcom/flurry/android/eo;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/android/eo;->onRenderFailed(Ljava/util/Map;)V

    .line 63
    invoke-static {}, Lcom/flurry/android/eo;->aV()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Admob Interstitial failed to receive takeover."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    return-void
.end method

.method public final onLeaveApplication(Lcom/google/ads/Ad;)V
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/flurry/android/gm;->iH:Lcom/flurry/android/eo;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/android/eo;->onAdClicked(Ljava/util/Map;)V

    .line 80
    invoke-static {}, Lcom/flurry/android/eo;->aV()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Admob Interstitial leave application."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    return-void
.end method

.method public final onPresentScreen(Lcom/google/ads/Ad;)V
    .locals 2

    .prologue
    .line 68
    invoke-static {}, Lcom/flurry/android/eo;->aV()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Admob Interstitial present on screen."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    return-void
.end method

.method public final onReceiveAd(Lcom/google/ads/Ad;)V
    .locals 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/flurry/android/gm;->iH:Lcom/flurry/android/eo;

    invoke-static {v0}, Lcom/flurry/android/eo;->a(Lcom/flurry/android/eo;)Lcom/google/ads/InterstitialAd;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 54
    invoke-static {}, Lcom/flurry/android/eo;->aV()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Admob Interstitial received takeover."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    iget-object v0, p0, Lcom/flurry/android/gm;->iH:Lcom/flurry/android/eo;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/android/eo;->onAdShown(Ljava/util/Map;)V

    .line 56
    iget-object v0, p0, Lcom/flurry/android/gm;->iH:Lcom/flurry/android/eo;

    invoke-static {v0}, Lcom/flurry/android/eo;->a(Lcom/flurry/android/eo;)Lcom/google/ads/InterstitialAd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/ads/InterstitialAd;->show()V

    .line 58
    :cond_0
    return-void
.end method
