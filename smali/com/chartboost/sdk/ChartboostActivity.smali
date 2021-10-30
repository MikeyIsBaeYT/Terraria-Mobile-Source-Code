.class public abstract Lcom/chartboost/sdk/ChartboostActivity;
.super Landroid/app/Activity;
.source "SourceFile"

# interfaces
.implements Lcom/chartboost/sdk/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public didCacheInPlay(Ljava/lang/String;)V
    .locals 0
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 422
    return-void
.end method

.method public didCacheInterstitial(Ljava/lang/String;)V
    .locals 0
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 105
    return-void
.end method

.method public didCacheMoreApps(Ljava/lang/String;)V
    .locals 0
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 221
    return-void
.end method

.method public didCacheRewardedVideo(Ljava/lang/String;)V
    .locals 0
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 322
    return-void
.end method

.method public didClickInterstitial(Ljava/lang/String;)V
    .locals 0
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 155
    return-void
.end method

.method public didClickMoreApps(Ljava/lang/String;)V
    .locals 0
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 257
    return-void
.end method

.method public didClickRewardedVideo(Ljava/lang/String;)V
    .locals 0
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 374
    return-void
.end method

.method public didCloseInterstitial(Ljava/lang/String;)V
    .locals 0
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 143
    return-void
.end method

.method public didCloseMoreApps(Ljava/lang/String;)V
    .locals 0
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 245
    return-void
.end method

.method public didCloseRewardedVideo(Ljava/lang/String;)V
    .locals 0
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 362
    return-void
.end method

.method public didCompleteRewardedVideo(Ljava/lang/String;I)V
    .locals 0
    .param p1, "location"    # Ljava/lang/String;
    .param p2, "reward"    # I

    .prologue
    .line 386
    return-void
.end method

.method public didDismissInterstitial(Ljava/lang/String;)V
    .locals 0
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 131
    return-void
.end method

.method public didDismissMoreApps(Ljava/lang/String;)V
    .locals 0
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 233
    return-void
.end method

.method public didDismissRewardedVideo(Ljava/lang/String;)V
    .locals 0
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 349
    return-void
.end method

.method public didDisplayInterstitial(Ljava/lang/String;)V
    .locals 0
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 167
    return-void
.end method

.method public didDisplayMoreApps(Ljava/lang/String;)V
    .locals 0
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 269
    return-void
.end method

.method public didDisplayRewardedVideo(Ljava/lang/String;)V
    .locals 0
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 398
    return-void
.end method

.method public didFailToLoadInPlay(Ljava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V
    .locals 0
    .param p1, "location"    # Ljava/lang/String;
    .param p2, "error"    # Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    .prologue
    .line 437
    return-void
.end method

.method public didFailToLoadInterstitial(Ljava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V
    .locals 0
    .param p1, "location"    # Ljava/lang/String;
    .param p2, "error"    # Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    .prologue
    .line 119
    return-void
.end method

.method public didFailToLoadMoreApps(Ljava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V
    .locals 0
    .param p1, "location"    # Ljava/lang/String;
    .param p2, "error"    # Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    .prologue
    .line 208
    return-void
.end method

.method public didFailToLoadRewardedVideo(Ljava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V
    .locals 0
    .param p1, "location"    # Ljava/lang/String;
    .param p2, "error"    # Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    .prologue
    .line 337
    return-void
.end method

.method public didFailToRecordClick(Ljava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBClickError;)V
    .locals 0
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "error"    # Lcom/chartboost/sdk/Model/CBError$CBClickError;

    .prologue
    .line 282
    return-void
.end method

.method public didPauseClickForConfirmation()V
    .locals 0

    .prologue
    .line 292
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 57
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->onBackPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    :goto_0
    return-void

    .line 60
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 19
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 20
    invoke-static {p0}, Lcom/chartboost/sdk/b;->a(Lcom/chartboost/sdk/a;)V

    .line 21
    invoke-static {p0}, Lcom/chartboost/sdk/Chartboost;->onCreate(Landroid/app/Activity;)V

    .line 22
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 39
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 40
    invoke-static {p0}, Lcom/chartboost/sdk/Chartboost;->onDestroy(Landroid/app/Activity;)V

    .line 41
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 45
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 46
    invoke-static {p0}, Lcom/chartboost/sdk/Chartboost;->onPause(Landroid/app/Activity;)V

    .line 47
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 51
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 52
    invoke-static {p0}, Lcom/chartboost/sdk/Chartboost;->onResume(Landroid/app/Activity;)V

    .line 53
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 27
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 28
    invoke-static {p0}, Lcom/chartboost/sdk/Chartboost;->onStart(Landroid/app/Activity;)V

    .line 29
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 33
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 34
    invoke-static {p0}, Lcom/chartboost/sdk/Chartboost;->onStop(Landroid/app/Activity;)V

    .line 35
    return-void
.end method

.method public shouldDisplayInterstitial(Ljava/lang/String;)Z
    .locals 1
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 91
    const/4 v0, 0x1

    return v0
.end method

.method public shouldDisplayMoreApps(Ljava/lang/String;)Z
    .locals 1
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 193
    const/4 v0, 0x1

    return v0
.end method

.method public shouldDisplayRewardedVideo(Ljava/lang/String;)Z
    .locals 1
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 308
    const/4 v0, 0x1

    return v0
.end method

.method public shouldRequestInterstitial(Ljava/lang/String;)Z
    .locals 1
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 76
    const/4 v0, 0x1

    return v0
.end method

.method public shouldRequestMoreApps(Ljava/lang/String;)Z
    .locals 1
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 177
    const/4 v0, 0x1

    return v0
.end method

.method public willDisplayVideo(Ljava/lang/String;)V
    .locals 0
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 408
    return-void
.end method
