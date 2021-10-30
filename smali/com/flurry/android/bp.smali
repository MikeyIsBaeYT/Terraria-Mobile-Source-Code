.class final Lcom/flurry/android/bp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/inmobi/androidsdk/IMAdInterstitialListener;


# instance fields
.field private synthetic dJ:Lcom/flurry/android/dy;


# direct methods
.method constructor <init>(Lcom/flurry/android/dy;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/flurry/android/bp;->dJ:Lcom/flurry/android/dy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdRequestFailed(Lcom/inmobi/androidsdk/IMAdInterstitial;Lcom/inmobi/androidsdk/IMAdRequest$ErrorCode;)V
    .locals 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/flurry/android/bp;->dJ:Lcom/flurry/android/dy;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/android/dy;->onRenderFailed(Ljava/util/Map;)V

    .line 46
    invoke-static {}, Lcom/flurry/android/dy;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InMobi imAdView ad request failed."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    return-void
.end method

.method public final onAdRequestLoaded(Lcom/inmobi/androidsdk/IMAdInterstitial;)V
    .locals 2

    .prologue
    .line 51
    invoke-static {}, Lcom/flurry/android/dy;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InMobi Interstitial ad request completed."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    sget-object v0, Lcom/inmobi/androidsdk/IMAdInterstitial$State;->READY:Lcom/inmobi/androidsdk/IMAdInterstitial$State;

    invoke-virtual {p1}, Lcom/inmobi/androidsdk/IMAdInterstitial;->getState()Lcom/inmobi/androidsdk/IMAdInterstitial$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/IMAdInterstitial$State;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/flurry/android/bp;->dJ:Lcom/flurry/android/dy;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/android/dy;->onAdShown(Ljava/util/Map;)V

    .line 54
    invoke-virtual {p1}, Lcom/inmobi/androidsdk/IMAdInterstitial;->show()V

    .line 56
    :cond_0
    return-void
.end method

.method public final onDismissAdScreen(Lcom/inmobi/androidsdk/IMAdInterstitial;)V
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/flurry/android/bp;->dJ:Lcom/flurry/android/dy;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/android/dy;->onAdClosed(Ljava/util/Map;)V

    .line 61
    invoke-static {}, Lcom/flurry/android/dy;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InMobi Interstitial ad dismissed."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    return-void
.end method

.method public final onLeaveApplication(Lcom/inmobi/androidsdk/IMAdInterstitial;)V
    .locals 2

    .prologue
    .line 71
    invoke-static {}, Lcom/flurry/android/dy;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InMobi onLeaveApplication"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    return-void
.end method

.method public final onShowAdScreen(Lcom/inmobi/androidsdk/IMAdInterstitial;)V
    .locals 2

    .prologue
    .line 66
    invoke-static {}, Lcom/flurry/android/dy;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InMobi Interstitial ad shown."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    return-void
.end method
