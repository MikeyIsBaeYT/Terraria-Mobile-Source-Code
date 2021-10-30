.class abstract Lcom/flurry/android/p;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field private Q:Landroid/content/Context;

.field R:Lcom/flurry/android/FlurryAds;

.field S:Lcom/flurry/android/cw;

.field T:Lcom/flurry/android/AdUnit;

.field U:I


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/flurry/android/FlurryAds;Lcom/flurry/android/cw;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 21
    iput-object p1, p0, Lcom/flurry/android/p;->Q:Landroid/content/Context;

    .line 22
    iput-object p2, p0, Lcom/flurry/android/p;->R:Lcom/flurry/android/FlurryAds;

    .line 23
    iput-object p3, p0, Lcom/flurry/android/p;->S:Lcom/flurry/android/cw;

    .line 24
    return-void
.end method


# virtual methods
.method public abstract initLayout(Landroid/content/Context;)V
.end method

.method final onEvent(Ljava/lang/String;Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AppSpotBannerView.onEvent "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    iget-object v0, p0, Lcom/flurry/android/p;->T:Lcom/flurry/android/AdUnit;

    if-eqz v0, :cond_0

    .line 56
    iget-object v7, p0, Lcom/flurry/android/p;->R:Lcom/flurry/android/FlurryAds;

    new-instance v0, Lcom/flurry/android/gt;

    iget-object v3, p0, Lcom/flurry/android/p;->Q:Landroid/content/Context;

    iget-object v4, p0, Lcom/flurry/android/p;->T:Lcom/flurry/android/AdUnit;

    iget-object v5, p0, Lcom/flurry/android/p;->S:Lcom/flurry/android/cw;

    iget v6, p0, Lcom/flurry/android/p;->U:I

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/flurry/android/gt;-><init>(Ljava/lang/String;Ljava/util/Map;Landroid/content/Context;Lcom/flurry/android/AdUnit;Lcom/flurry/android/cw;I)V

    iget-object v1, p0, Lcom/flurry/android/p;->R:Lcom/flurry/android/FlurryAds;

    const/4 v2, 0x0

    invoke-virtual {v7, v0, v1, v2}, Lcom/flurry/android/FlurryAds;->onEvent(Lcom/flurry/android/gt;Lcom/flurry/android/au;I)V

    .line 60
    :cond_0
    return-void
.end method

.method shouldRotate()Z
    .locals 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/flurry/android/p;->T:Lcom/flurry/android/AdUnit;

    invoke-virtual {v0}, Lcom/flurry/android/AdUnit;->getAdFrames()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/flurry/android/p;->U:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/AdFrame;

    invoke-virtual {v0}, Lcom/flurry/android/AdFrame;->getAdSpaceLayout()Lcom/flurry/android/AdSpaceLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/AdSpaceLayout;->getFormat()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "takeover"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    const/4 v0, 0x0

    .line 69
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public stop()V
    .locals 0

    .prologue
    .line 77
    return-void
.end method
