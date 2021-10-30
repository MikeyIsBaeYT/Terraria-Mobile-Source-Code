.class final Lcom/flurry/android/aj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mobclix/android/sdk/MobclixFullScreenAdViewListener;


# instance fields
.field private synthetic cd:Lcom/flurry/android/bx;


# direct methods
.method constructor <init>(Lcom/flurry/android/bx;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/flurry/android/aj;->cd:Lcom/flurry/android/bx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final keywords()Ljava/lang/String;
    .locals 2

    .prologue
    .line 56
    invoke-static {}, Lcom/flurry/android/bx;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Mobclix keyword callback."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    const/4 v0, 0x0

    return-object v0
.end method

.method public final onDismissAd(Lcom/mobclix/android/sdk/MobclixFullScreenAdView;)V
    .locals 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/flurry/android/aj;->cd:Lcom/flurry/android/bx;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/android/bx;->onAdClosed(Ljava/util/Map;)V

    .line 34
    invoke-static {}, Lcom/flurry/android/bx;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Mobclix Interstitial ad dismissed."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    return-void
.end method

.method public final onFailedLoad(Lcom/mobclix/android/sdk/MobclixFullScreenAdView;I)V
    .locals 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/flurry/android/aj;->cd:Lcom/flurry/android/bx;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/android/bx;->onRenderFailed(Ljava/util/Map;)V

    .line 40
    invoke-static {}, Lcom/flurry/android/bx;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Mobclix Interstitial ad failed to load."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    return-void
.end method

.method public final onFinishLoad(Lcom/mobclix/android/sdk/MobclixFullScreenAdView;)V
    .locals 2

    .prologue
    .line 45
    invoke-static {}, Lcom/flurry/android/bx;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Mobclix Interstitial ad successfully loaded."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    return-void
.end method

.method public final onPresentAd(Lcom/mobclix/android/sdk/MobclixFullScreenAdView;)V
    .locals 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/flurry/android/aj;->cd:Lcom/flurry/android/bx;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/android/bx;->onAdShown(Ljava/util/Map;)V

    .line 51
    invoke-static {}, Lcom/flurry/android/bx;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Mobclix Interstitial ad successfully shown."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    return-void
.end method

.method public final query()Ljava/lang/String;
    .locals 2

    .prologue
    .line 62
    invoke-static {}, Lcom/flurry/android/bx;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Mobclix query callback."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    const/4 v0, 0x0

    return-object v0
.end method
