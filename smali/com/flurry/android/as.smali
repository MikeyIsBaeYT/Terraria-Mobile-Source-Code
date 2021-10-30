.class final Lcom/flurry/android/as;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mobclix/android/sdk/MobclixAdViewListener;


# instance fields
.field private synthetic cT:Lcom/flurry/android/fc;


# direct methods
.method constructor <init>(Lcom/flurry/android/fc;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/flurry/android/as;->cT:Lcom/flurry/android/fc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final keywords()Ljava/lang/String;
    .locals 2

    .prologue
    .line 97
    invoke-static {}, Lcom/flurry/android/fc;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Mobclix keyword callback."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    const/4 v0, 0x0

    return-object v0
.end method

.method public final onAdClick(Lcom/mobclix/android/sdk/MobclixAdView;)V
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/flurry/android/as;->cT:Lcom/flurry/android/fc;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/android/fc;->onAdClicked(Ljava/util/Map;)V

    .line 84
    invoke-static {}, Lcom/flurry/android/fc;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Mobclix AdView ad clicked."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    return-void
.end method

.method public final onCustomAdTouchThrough(Lcom/mobclix/android/sdk/MobclixAdView;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/flurry/android/as;->cT:Lcom/flurry/android/fc;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/android/fc;->onAdClicked(Ljava/util/Map;)V

    .line 91
    invoke-static {}, Lcom/flurry/android/fc;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Mobclix AdView custom ad clicked."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    return-void
.end method

.method public final onFailedLoad(Lcom/mobclix/android/sdk/MobclixAdView;I)V
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/flurry/android/as;->cT:Lcom/flurry/android/fc;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/android/fc;->onRenderFailed(Ljava/util/Map;)V

    .line 70
    invoke-static {}, Lcom/flurry/android/fc;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Mobclix AdView ad failed to load."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    return-void
.end method

.method public final onOpenAllocationLoad(Lcom/mobclix/android/sdk/MobclixAdView;I)Z
    .locals 2

    .prologue
    .line 76
    invoke-static {}, Lcom/flurry/android/fc;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Mobclix AdView loaded an open allocation ad."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    const/4 v0, 0x1

    return v0
.end method

.method public final onSuccessfulLoad(Lcom/mobclix/android/sdk/MobclixAdView;)V
    .locals 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/flurry/android/as;->cT:Lcom/flurry/android/fc;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/android/fc;->onAdShown(Ljava/util/Map;)V

    .line 63
    invoke-static {}, Lcom/flurry/android/fc;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Mobclix AdView ad successfully loaded."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    return-void
.end method

.method public final query()Ljava/lang/String;
    .locals 2

    .prologue
    .line 104
    invoke-static {}, Lcom/flurry/android/fc;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Mobclix query callback."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    const/4 v0, 0x0

    return-object v0
.end method
