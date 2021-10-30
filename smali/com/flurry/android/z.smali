.class final Lcom/flurry/android/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jumptap/adtag/JtAdViewListener;


# instance fields
.field private synthetic bl:Lcom/flurry/android/fu;


# direct methods
.method constructor <init>(Lcom/flurry/android/fu;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/flurry/android/z;->bl:Lcom/flurry/android/fu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdError(Lcom/jumptap/adtag/JtAdView;II)V
    .locals 2

    .prologue
    .line 92
    invoke-static {}, Lcom/flurry/android/fu;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Jumptap Interstitial error."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget-object v0, p0, Lcom/flurry/android/z;->bl:Lcom/flurry/android/fu;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/android/fu;->onRenderFailed(Ljava/util/Map;)V

    .line 94
    return-void
.end method

.method public final onFocusChange(Lcom/jumptap/adtag/JtAdView;IZ)V
    .locals 2

    .prologue
    .line 87
    invoke-static {}, Lcom/flurry/android/fu;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Jumptap Interstitial focus changed."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    return-void
.end method

.method public final onInterstitialDismissed(Lcom/jumptap/adtag/JtAdView;I)V
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/flurry/android/z;->bl:Lcom/flurry/android/fu;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/android/fu;->onAdClosed(Ljava/util/Map;)V

    .line 82
    invoke-static {}, Lcom/flurry/android/fu;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Jumptap Interstitial dismissed."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    return-void
.end method

.method public final onNewAd(Lcom/jumptap/adtag/JtAdView;ILjava/lang/String;)V
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/flurry/android/z;->bl:Lcom/flurry/android/fu;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/android/fu;->onAdShown(Ljava/util/Map;)V

    .line 76
    invoke-static {}, Lcom/flurry/android/fu;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Jumptap Interstitial new ad."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    return-void
.end method

.method public final onNoAdFound(Lcom/jumptap/adtag/JtAdView;I)V
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/flurry/android/z;->bl:Lcom/flurry/android/fu;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/android/fu;->onRenderFailed(Ljava/util/Map;)V

    .line 70
    invoke-static {}, Lcom/flurry/android/fu;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Jumptap Interstitial no ad found."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    return-void
.end method
