.class final Lcom/flurry/android/gh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/millennialmedia/android/RequestListener;


# instance fields
.field private synthetic iy:Lcom/flurry/android/ah;


# direct methods
.method constructor <init>(Lcom/flurry/android/ah;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/flurry/android/gh;->iy:Lcom/flurry/android/ah;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final MMAdOverlayLaunched(Lcom/millennialmedia/android/MMAd;)V
    .locals 4

    .prologue
    .line 61
    iget-object v0, p0, Lcom/flurry/android/gh;->iy:Lcom/flurry/android/ah;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/android/ah;->onAdShown(Ljava/util/Map;)V

    .line 62
    iget-object v0, p0, Lcom/flurry/android/gh;->iy:Lcom/flurry/android/ah;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/android/ah;->onAdClosed(Ljava/util/Map;)V

    .line 64
    invoke-static {}, Lcom/flurry/android/ah;->d()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Millennial MMAdView Interstitial overlay launched."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    return-void
.end method

.method public final MMAdRequestIsCaching(Lcom/millennialmedia/android/MMAd;)V
    .locals 2

    .prologue
    .line 72
    invoke-static {}, Lcom/flurry/android/ah;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Millennial MMAdView Interstitial request is caching."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    return-void
.end method

.method public final requestCompleted(Lcom/millennialmedia/android/MMAd;)V
    .locals 4

    .prologue
    .line 49
    invoke-static {}, Lcom/flurry/android/ah;->d()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Millennial MMAdView returned interstitial ad: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    iget-object v0, p0, Lcom/flurry/android/gh;->iy:Lcom/flurry/android/ah;

    invoke-static {v0}, Lcom/flurry/android/ah;->a(Lcom/flurry/android/ah;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/flurry/android/gh;->iy:Lcom/flurry/android/ah;

    iget-object v0, v0, Lcom/flurry/android/ah;->ca:Lcom/millennialmedia/android/MMInterstitial;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMInterstitial;->display()Z

    .line 56
    :cond_0
    return-void
.end method

.method public final requestFailed(Lcom/millennialmedia/android/MMAd;Lcom/millennialmedia/android/MMException;)V
    .locals 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/flurry/android/gh;->iy:Lcom/flurry/android/ah;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/android/ah;->onRenderFailed(Ljava/util/Map;)V

    .line 43
    invoke-static {}, Lcom/flurry/android/ah;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Millennial MMAdView Interstitial failed to load ad."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    return-void
.end method
