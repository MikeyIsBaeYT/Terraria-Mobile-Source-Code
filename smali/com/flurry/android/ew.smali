.class final Lcom/flurry/android/ew;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/inmobi/androidsdk/IMAdListener;


# instance fields
.field private synthetic gB:Lcom/flurry/android/ad;


# direct methods
.method constructor <init>(Lcom/flurry/android/ad;)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lcom/flurry/android/ew;->gB:Lcom/flurry/android/ad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdRequestCompleted(Lcom/inmobi/androidsdk/IMAdView;)V
    .locals 2

    .prologue
    .line 150
    iget-object v0, p0, Lcom/flurry/android/ew;->gB:Lcom/flurry/android/ad;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/android/ad;->onAdShown(Ljava/util/Map;)V

    .line 151
    invoke-static {}, Lcom/flurry/android/ad;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InMobi imAdView ad request completed."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    return-void
.end method

.method public final onAdRequestFailed(Lcom/inmobi/androidsdk/IMAdView;Lcom/inmobi/androidsdk/IMAdRequest$ErrorCode;)V
    .locals 3

    .prologue
    .line 142
    iget-object v0, p0, Lcom/flurry/android/ew;->gB:Lcom/flurry/android/ad;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/android/ad;->onRenderFailed(Ljava/util/Map;)V

    .line 143
    invoke-static {}, Lcom/flurry/android/ad;->d()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InMobi imAdView ad request failed. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/inmobi/androidsdk/IMAdRequest$ErrorCode;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    return-void
.end method

.method public final onDismissAdScreen(Lcom/inmobi/androidsdk/IMAdView;)V
    .locals 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/flurry/android/ew;->gB:Lcom/flurry/android/ad;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/android/ad;->onAdClosed(Ljava/util/Map;)V

    .line 136
    invoke-static {}, Lcom/flurry/android/ad;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InMobi imAdView dismiss ad."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    return-void
.end method

.method public final onLeaveApplication(Lcom/inmobi/androidsdk/IMAdView;)V
    .locals 2

    .prologue
    .line 157
    invoke-static {}, Lcom/flurry/android/ad;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InMobi onLeaveApplication"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    return-void
.end method

.method public final onShowAdScreen(Lcom/inmobi/androidsdk/IMAdView;)V
    .locals 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/flurry/android/ew;->gB:Lcom/flurry/android/ad;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/android/ad;->onAdClicked(Ljava/util/Map;)V

    .line 129
    invoke-static {}, Lcom/flurry/android/ad;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InMobi imAdView ad shown."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    return-void
.end method
