.class final Lcom/flurry/android/ad;
.super Lcom/flurry/android/AdNetworkView;
.source "SourceFile"


# static fields
.field private static final p:Ljava/lang/String;


# instance fields
.field private final bU:Z

.field private final q:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/flurry/android/ad;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/android/ad;->p:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/flurry/android/FlurryAds;Lcom/flurry/android/cw;Lcom/flurry/android/AdCreative;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/flurry/android/AdNetworkView;-><init>(Landroid/content/Context;Lcom/flurry/android/FlurryAds;Lcom/flurry/android/cw;Lcom/flurry/android/AdCreative;)V

    .line 28
    const-string v0, "com.flurry.inmobi.MY_APP_ID"

    invoke-virtual {p5, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/ad;->q:Ljava/lang/String;

    .line 29
    const-string v0, "com.flurry.inmobi.test"

    invoke-virtual {p5, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/flurry/android/ad;->bU:Z

    .line 30
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/flurry/android/ad;->setFocusable(Z)V

    .line 31
    return-void
.end method

.method static synthetic d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/flurry/android/ad;->p:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final initLayout(Landroid/content/Context;)V
    .locals 8

    .prologue
    const/16 v3, 0xa

    const/high16 v7, 0x3f000000    # 0.5f

    const/16 v1, 0x140

    const/16 v0, 0x32

    const/4 v4, -0x1

    .line 70
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 71
    iget v5, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v5, v5

    iget v6, v2, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v5, v6

    float-to-int v5, v5

    .line 72
    iget v6, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v6, v6

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    div-float v2, v6, v2

    float-to-int v2, v2

    .line 81
    const/16 v6, 0x2d8

    if-lt v2, v6, :cond_6

    const/16 v6, 0x5a

    if-lt v5, v6, :cond_6

    sget-object v2, Lcom/flurry/android/ad;->p:Ljava/lang/String;

    const-string v5, "Determined InMobi AdSize as 728x90"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0xb

    .line 83
    :goto_0
    if-eq v2, v4, :cond_b

    .line 86
    new-instance v5, Lcom/inmobi/androidsdk/IMAdView;

    check-cast p1, Landroid/app/Activity;

    iget-object v6, p0, Lcom/flurry/android/ad;->q:Ljava/lang/String;

    invoke-direct {v5, p1, v2, v6}, Lcom/inmobi/androidsdk/IMAdView;-><init>(Landroid/app/Activity;ILjava/lang/String;)V

    .line 91
    const/16 v6, 0xf

    if-ne v2, v6, :cond_0

    .line 96
    :cond_0
    const/16 v6, 0xb

    if-ne v2, v6, :cond_1

    .line 98
    const/16 v1, 0x2d8

    .line 99
    const/16 v0, 0x5a

    .line 101
    :cond_1
    const/16 v6, 0xc

    if-ne v2, v6, :cond_2

    .line 103
    const/16 v1, 0x1d4

    .line 104
    const/16 v0, 0x3c

    .line 106
    :cond_2
    if-ne v2, v3, :cond_3

    .line 108
    const/16 v1, 0x12c

    .line 109
    const/16 v0, 0xfa

    .line 111
    :cond_3
    const/16 v3, 0xd

    if-ne v2, v3, :cond_4

    .line 113
    const/16 v1, 0x78

    .line 114
    const/16 v0, 0x258

    .line 118
    :cond_4
    invoke-virtual {p0}, Lcom/flurry/android/ad;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    .line 119
    int-to-float v1, v1

    mul-float/2addr v1, v2

    add-float/2addr v1, v7

    float-to-int v1, v1

    .line 120
    int-to-float v0, v0

    mul-float/2addr v0, v2

    add-float/2addr v0, v7

    float-to-int v0, v0

    .line 121
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v1, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v2}, Lcom/inmobi/androidsdk/IMAdView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 160
    new-instance v0, Lcom/flurry/android/ew;

    invoke-direct {v0, p0}, Lcom/flurry/android/ew;-><init>(Lcom/flurry/android/ad;)V

    .line 161
    invoke-virtual {v5, v0}, Lcom/inmobi/androidsdk/IMAdView;->setIMAdListener(Lcom/inmobi/androidsdk/IMAdListener;)V

    .line 162
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/flurry/android/ad;->setGravity(I)V

    .line 163
    invoke-virtual {p0, v5}, Lcom/flurry/android/ad;->addView(Landroid/view/View;)V

    .line 167
    new-instance v0, Lcom/inmobi/androidsdk/IMAdRequest;

    invoke-direct {v0}, Lcom/inmobi/androidsdk/IMAdRequest;-><init>()V

    .line 168
    iget-boolean v1, p0, Lcom/flurry/android/ad;->bU:Z

    if-eqz v1, :cond_5

    .line 170
    sget-object v1, Lcom/flurry/android/ad;->p:Ljava/lang/String;

    const-string v2, "InMobi AdView set to Test Mode."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/IMAdRequest;->setTestMode(Z)V

    .line 179
    :cond_5
    invoke-virtual {v5, v0}, Lcom/inmobi/androidsdk/IMAdView;->setIMAdRequest(Lcom/inmobi/androidsdk/IMAdRequest;)V

    .line 182
    invoke-virtual {v5, v4}, Lcom/inmobi/androidsdk/IMAdView;->setRefreshInterval(I)V

    .line 185
    invoke-virtual {v5}, Lcom/inmobi/androidsdk/IMAdView;->loadNewAd()V

    .line 191
    :goto_1
    return-void

    .line 81
    :cond_6
    const/16 v6, 0x1d4

    if-lt v2, v6, :cond_7

    const/16 v6, 0x3c

    if-lt v5, v6, :cond_7

    sget-object v2, Lcom/flurry/android/ad;->p:Ljava/lang/String;

    const-string v5, "Determined InMobi AdSize as 468x60"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0xc

    goto/16 :goto_0

    :cond_7
    if-lt v2, v1, :cond_8

    if-lt v5, v0, :cond_8

    sget-object v2, Lcom/flurry/android/ad;->p:Ljava/lang/String;

    const-string v5, "Determined InMobi AdSize as 320x50"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0xf

    goto/16 :goto_0

    :cond_8
    const/16 v6, 0x12c

    if-lt v2, v6, :cond_9

    const/16 v6, 0xfa

    if-lt v5, v6, :cond_9

    sget-object v2, Lcom/flurry/android/ad;->p:Ljava/lang/String;

    const-string v5, "Determined InMobi AdSize as 300x250"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    goto/16 :goto_0

    :cond_9
    const/16 v6, 0x78

    if-lt v2, v6, :cond_a

    const/16 v2, 0x258

    if-lt v5, v2, :cond_a

    sget-object v2, Lcom/flurry/android/ad;->p:Ljava/lang/String;

    const-string v5, "Determined InMobi AdSize as 120x600"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0xd

    goto/16 :goto_0

    :cond_a
    sget-object v2, Lcom/flurry/android/ad;->p:Ljava/lang/String;

    const-string v5, "Could not find InMobi AdSize that matches size"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v4

    goto/16 :goto_0

    .line 189
    :cond_b
    sget-object v0, Lcom/flurry/android/ad;->p:Ljava/lang/String;

    const-string v1, "**********Could not load InMobi Ad"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
