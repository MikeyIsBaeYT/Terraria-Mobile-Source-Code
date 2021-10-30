.class public abstract Lcom/chartboost/sdk/ChartboostDelegate;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/chartboost/sdk/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public didCacheInPlay(Ljava/lang/String;)V
    .locals 0
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 399
    return-void
.end method

.method public didCacheInterstitial(Ljava/lang/String;)V
    .locals 0
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 56
    return-void
.end method

.method public didCacheMoreApps(Ljava/lang/String;)V
    .locals 0
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 148
    return-void
.end method

.method public didCacheRewardedVideo(Ljava/lang/String;)V
    .locals 0
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 291
    return-void
.end method

.method public didClickInterstitial(Ljava/lang/String;)V
    .locals 0
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 110
    return-void
.end method

.method public didClickMoreApps(Ljava/lang/String;)V
    .locals 0
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 218
    return-void
.end method

.method public didClickRewardedVideo(Ljava/lang/String;)V
    .locals 0
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 345
    return-void
.end method

.method public didCloseInterstitial(Ljava/lang/String;)V
    .locals 0
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 97
    return-void
.end method

.method public didCloseMoreApps(Ljava/lang/String;)V
    .locals 0
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 205
    return-void
.end method

.method public didCloseRewardedVideo(Ljava/lang/String;)V
    .locals 0
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 332
    return-void
.end method

.method public didCompleteRewardedVideo(Ljava/lang/String;I)V
    .locals 0
    .param p1, "location"    # Ljava/lang/String;
    .param p2, "reward"    # I

    .prologue
    .line 358
    return-void
.end method

.method public didDismissInterstitial(Ljava/lang/String;)V
    .locals 0
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 84
    return-void
.end method

.method public didDismissMoreApps(Ljava/lang/String;)V
    .locals 0
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 192
    return-void
.end method

.method public didDismissRewardedVideo(Ljava/lang/String;)V
    .locals 0
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 319
    return-void
.end method

.method public didDisplayInterstitial(Ljava/lang/String;)V
    .locals 0
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 123
    return-void
.end method

.method public didDisplayMoreApps(Ljava/lang/String;)V
    .locals 0
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 231
    return-void
.end method

.method public didDisplayRewardedVideo(Ljava/lang/String;)V
    .locals 0
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 371
    return-void
.end method

.method public didFailToLoadInPlay(Ljava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V
    .locals 0
    .param p1, "location"    # Ljava/lang/String;
    .param p2, "error"    # Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    .prologue
    .line 414
    return-void
.end method

.method public didFailToLoadInterstitial(Ljava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V
    .locals 0
    .param p1, "location"    # Ljava/lang/String;
    .param p2, "error"    # Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    .prologue
    .line 71
    return-void
.end method

.method public didFailToLoadMoreApps(Ljava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V
    .locals 0
    .param p1, "location"    # Ljava/lang/String;
    .param p2, "error"    # Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    .prologue
    .line 179
    return-void
.end method

.method public didFailToLoadRewardedVideo(Ljava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V
    .locals 0
    .param p1, "location"    # Ljava/lang/String;
    .param p2, "error"    # Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    .prologue
    .line 306
    return-void
.end method

.method public didFailToRecordClick(Ljava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBClickError;)V
    .locals 0
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "error"    # Lcom/chartboost/sdk/Model/CBError$CBClickError;

    .prologue
    .line 245
    return-void
.end method

.method public didPauseClickForConfirmation()V
    .locals 0

    .prologue
    .line 255
    return-void
.end method

.method public shouldDisplayInterstitial(Ljava/lang/String;)Z
    .locals 1
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 41
    const/4 v0, 0x1

    return v0
.end method

.method public shouldDisplayMoreApps(Ljava/lang/String;)Z
    .locals 1
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 163
    const/4 v0, 0x1

    return v0
.end method

.method public shouldDisplayRewardedVideo(Ljava/lang/String;)Z
    .locals 1
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 276
    const/4 v0, 0x1

    return v0
.end method

.method public shouldRequestInterstitial(Ljava/lang/String;)Z
    .locals 1
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 26
    const/4 v0, 0x1

    return v0
.end method

.method public shouldRequestMoreApps(Ljava/lang/String;)Z
    .locals 1
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 133
    const/4 v0, 0x1

    return v0
.end method

.method public willDisplayVideo(Ljava/lang/String;)V
    .locals 0
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 381
    return-void
.end method
