.class final Lcom/flurry/android/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/ads/AdListener;


# instance fields
.field private synthetic al:Lcom/flurry/android/em;


# direct methods
.method synthetic constructor <init>(Lcom/flurry/android/em;)V
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/flurry/android/w;-><init>(Lcom/flurry/android/em;B)V

    return-void
.end method

.method private constructor <init>(Lcom/flurry/android/em;B)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/flurry/android/w;->al:Lcom/flurry/android/em;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismissScreen(Lcom/google/ads/Ad;)V
    .locals 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/flurry/android/w;->al:Lcom/flurry/android/em;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/android/em;->onAdClosed(Ljava/util/Map;)V

    .line 118
    invoke-static {}, Lcom/flurry/android/em;->ap()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Admob AdView dismissed from screen."

    invoke-static {v0, v1}, Lcom/flurry/android/cy;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    return-void
.end method

.method public final onFailedToReceiveAd(Lcom/google/ads/Ad;Lcom/google/ads/AdRequest$ErrorCode;)V
    .locals 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/flurry/android/w;->al:Lcom/flurry/android/em;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/android/em;->onRenderFailed(Ljava/util/Map;)V

    .line 107
    invoke-static {}, Lcom/flurry/android/em;->ap()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Admob AdView failed to receive ad."

    invoke-static {v0, v1}, Lcom/flurry/android/cy;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    return-void
.end method

.method public final onLeaveApplication(Lcom/google/ads/Ad;)V
    .locals 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/flurry/android/w;->al:Lcom/flurry/android/em;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/android/em;->onAdClicked(Ljava/util/Map;)V

    .line 124
    invoke-static {}, Lcom/flurry/android/em;->ap()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Admob AdView leave application."

    invoke-static {v0, v1}, Lcom/flurry/android/cy;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    return-void
.end method

.method public final onPresentScreen(Lcom/google/ads/Ad;)V
    .locals 2

    .prologue
    .line 112
    invoke-static {}, Lcom/flurry/android/em;->ap()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Admob AdView present on screen."

    invoke-static {v0, v1}, Lcom/flurry/android/cy;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    return-void
.end method

.method public final onReceiveAd(Lcom/google/ads/Ad;)V
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/flurry/android/w;->al:Lcom/flurry/android/em;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/android/em;->onAdShown(Ljava/util/Map;)V

    .line 101
    invoke-static {}, Lcom/flurry/android/em;->ap()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Admob AdView received ad."

    invoke-static {v0, v1}, Lcom/flurry/android/cy;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    return-void
.end method
