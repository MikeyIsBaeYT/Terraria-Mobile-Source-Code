.class final Lcom/flurry/android/em;
.super Lcom/flurry/android/AdNetworkView;
.source "SourceFile"


# static fields
.field private static final gm:Ljava/lang/String;


# instance fields
.field private final bU:Z

.field private final gn:Ljava/lang/String;

.field private final q:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/flurry/android/em;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/android/em;->gm:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/flurry/android/FlurryAds;Lcom/flurry/android/cw;Lcom/flurry/android/AdCreative;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/flurry/android/AdNetworkView;-><init>(Landroid/content/Context;Lcom/flurry/android/FlurryAds;Lcom/flurry/android/cw;Lcom/flurry/android/AdCreative;)V

    .line 31
    const-string v0, "com.flurry.admob.MY_AD_UNIT_ID"

    invoke-virtual {p5, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/em;->q:Ljava/lang/String;

    .line 32
    const-string v0, "com.flurry.admob.MYTEST_AD_DEVICE_ID"

    invoke-virtual {p5, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/em;->gn:Ljava/lang/String;

    .line 33
    const-string v0, "com.flurry.admob.test"

    invoke-virtual {p5, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/flurry/android/em;->bU:Z

    .line 34
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/flurry/android/em;->setFocusable(Z)V

    .line 35
    return-void
.end method

.method static synthetic ap()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/flurry/android/em;->gm:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final initLayout(Landroid/content/Context;)V
    .locals 6

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/flurry/android/em;->getAdCreative()Lcom/flurry/android/AdCreative;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/AdCreative;->getWidth()I

    move-result v3

    .line 65
    invoke-virtual {p0}, Lcom/flurry/android/em;->getAdCreative()Lcom/flurry/android/AdCreative;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/AdCreative;->getHeight()I

    move-result v2

    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v0, v0

    iget v4, v1, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v0, v4

    float-to-int v0, v0

    iget v4, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v4, v4

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    div-float v1, v4, v1

    float-to-int v1, v1

    if-lez v3, :cond_0

    if-le v3, v1, :cond_2

    :cond_0
    :goto_0
    if-lez v2, :cond_1

    if-le v2, v0, :cond_3

    :cond_1
    :goto_1
    const/16 v4, 0x2d8

    if-lt v1, v4, :cond_4

    const/16 v4, 0x5a

    if-lt v0, v4, :cond_4

    sget-object v0, Lcom/google/ads/AdSize;->IAB_LEADERBOARD:Lcom/google/ads/AdSize;

    move-object v1, v0

    .line 67
    :goto_2
    if-nez v1, :cond_8

    .line 68
    sget-object v0, Lcom/flurry/android/em;->gm:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not find Admob AdSize that matches {width = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", height "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/flurry/android/cy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    :goto_3
    return-void

    :cond_2
    move v1, v3

    .line 66
    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1

    :cond_4
    const/16 v4, 0x1d4

    if-lt v1, v4, :cond_5

    const/16 v4, 0x3c

    if-lt v0, v4, :cond_5

    sget-object v0, Lcom/google/ads/AdSize;->IAB_BANNER:Lcom/google/ads/AdSize;

    move-object v1, v0

    goto :goto_2

    :cond_5
    const/16 v4, 0x140

    if-lt v1, v4, :cond_6

    const/16 v4, 0x32

    if-lt v0, v4, :cond_6

    sget-object v0, Lcom/google/ads/AdSize;->BANNER:Lcom/google/ads/AdSize;

    move-object v1, v0

    goto :goto_2

    :cond_6
    const/16 v4, 0x12c

    if-lt v1, v4, :cond_7

    const/16 v1, 0xfa

    if-lt v0, v1, :cond_7

    sget-object v0, Lcom/google/ads/AdSize;->IAB_MRECT:Lcom/google/ads/AdSize;

    move-object v1, v0

    goto :goto_2

    :cond_7
    const-string v0, "FlurryAgent"

    const-string v1, "Could not find AdMob AdSize that matches size"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    move-object v1, v0

    goto :goto_2

    .line 73
    :cond_8
    sget-object v0, Lcom/flurry/android/em;->gm:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Determined Admob AdSize as "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " that best matches {width = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", height = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/flurry/android/cy;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    new-instance v2, Lcom/google/ads/AdView;

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    iget-object v3, p0, Lcom/flurry/android/em;->q:Ljava/lang/String;

    invoke-direct {v2, v0, v1, v3}, Lcom/google/ads/AdView;-><init>(Landroid/app/Activity;Lcom/google/ads/AdSize;Ljava/lang/String;)V

    .line 77
    new-instance v0, Lcom/flurry/android/w;

    invoke-direct {v0, p0}, Lcom/flurry/android/w;-><init>(Lcom/flurry/android/em;)V

    invoke-virtual {v2, v0}, Lcom/google/ads/AdView;->setAdListener(Lcom/google/ads/AdListener;)V

    .line 79
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/flurry/android/em;->setGravity(I)V

    .line 80
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v1, p1}, Lcom/google/ads/AdSize;->getWidthInPixels(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v1, p1}, Lcom/google/ads/AdSize;->getHeightInPixels(Landroid/content/Context;)I

    move-result v1

    invoke-direct {v0, v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v2, v0}, Lcom/flurry/android/em;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 84
    new-instance v0, Lcom/google/ads/AdRequest;

    invoke-direct {v0}, Lcom/google/ads/AdRequest;-><init>()V

    .line 85
    iget-boolean v1, p0, Lcom/flurry/android/em;->bU:Z

    if-eqz v1, :cond_9

    .line 86
    sget-object v1, Lcom/flurry/android/em;->gm:Ljava/lang/String;

    const-string v3, "Admob AdView set to Test Mode."

    invoke-static {v1, v3}, Lcom/flurry/android/cy;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    sget-object v1, Lcom/google/ads/AdRequest;->TEST_EMULATOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/ads/AdRequest;->addTestDevice(Ljava/lang/String;)Lcom/google/ads/AdRequest;

    .line 89
    iget-object v1, p0, Lcom/flurry/android/em;->gn:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 90
    iget-object v1, p0, Lcom/flurry/android/em;->gn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/ads/AdRequest;->addTestDevice(Ljava/lang/String;)Lcom/google/ads/AdRequest;

    .line 94
    :cond_9
    invoke-virtual {v2, v0}, Lcom/google/ads/AdView;->loadAd(Lcom/google/ads/AdRequest;)V

    goto/16 :goto_3
.end method
