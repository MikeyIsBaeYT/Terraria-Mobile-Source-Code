.class Lcom/flurry/android/e;
.super Lcom/flurry/android/AdNetworkView;
.source "SourceFile"


# static fields
.field private static final p:Ljava/lang/String;


# instance fields
.field private final q:Ljava/lang/String;

.field private final r:Ljava/lang/String;

.field private final s:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/flurry/android/e;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/android/e;->p:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/flurry/android/FlurryAds;Lcom/flurry/android/cw;Lcom/flurry/android/AdCreative;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/flurry/android/AdNetworkView;-><init>(Landroid/content/Context;Lcom/flurry/android/FlurryAds;Lcom/flurry/android/cw;Lcom/flurry/android/AdCreative;)V

    .line 30
    const-string v0, "com.flurry.jumptap.PUBLISHER_ID"

    invoke-virtual {p5, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/e;->q:Ljava/lang/String;

    .line 31
    const-string v0, "com.flurry.jumptap.SPOT_ID"

    invoke-virtual {p5, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/e;->r:Ljava/lang/String;

    .line 32
    const-string v0, "com.flurry.jumptap.SITE_ID"

    invoke-virtual {p5, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/e;->s:Ljava/lang/String;

    .line 34
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/flurry/android/e;->setFocusable(Z)V

    .line 35
    return-void
.end method

.method static synthetic d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/flurry/android/e;->p:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public initLayout(Landroid/content/Context;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/high16 v5, 0x3f000000    # 0.5f

    .line 39
    invoke-static {}, Lcom/jumptap/adtag/JtAdWidgetSettingsFactory;->createWidgetSettings()Lcom/jumptap/adtag/JtAdWidgetSettings;

    move-result-object v2

    .line 40
    iget-object v0, p0, Lcom/flurry/android/e;->q:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/jumptap/adtag/JtAdWidgetSettings;->setPublisherId(Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Lcom/flurry/android/e;->r:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/flurry/android/e;->r:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/jumptap/adtag/JtAdWidgetSettings;->setSpotId(Ljava/lang/String;)V

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/flurry/android/e;->s:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 47
    iget-object v0, p0, Lcom/flurry/android/e;->s:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/jumptap/adtag/JtAdWidgetSettings;->setSiteId(Ljava/lang/String;)V

    .line 50
    :cond_1
    invoke-virtual {p0}, Lcom/flurry/android/e;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/flurry/android/aw;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/jumptap/adtag/JtAdWidgetSettings;->setApplicationId(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0}, Lcom/flurry/android/e;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/flurry/android/aw;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/jumptap/adtag/JtAdWidgetSettings;->setApplicationVersion(Ljava/lang/String;)V

    .line 54
    invoke-virtual {v2, v1}, Lcom/jumptap/adtag/JtAdWidgetSettings;->setRefreshPeriod(I)V

    .line 56
    invoke-virtual {v2, v1}, Lcom/jumptap/adtag/JtAdWidgetSettings;->setShouldSendLocation(Z)V

    .line 57
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/flurry/android/e;->setGravity(I)V

    .line 59
    const/4 v1, 0x0

    .line 61
    :try_start_0
    new-instance v0, Lcom/jumptap/adtag/JtAdView;

    check-cast p1, Landroid/app/Activity;

    invoke-direct {v0, p1, v2}, Lcom/jumptap/adtag/JtAdView;-><init>(Landroid/content/Context;Lcom/jumptap/adtag/JtAdWidgetSettings;)V
    :try_end_0
    .catch Lcom/jumptap/adtag/utils/JtException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    :try_start_1
    invoke-virtual {p0}, Lcom/flurry/android/e;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 64
    sget-object v2, Lcom/flurry/android/e;->p:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "scale is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/flurry/android/cy;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    const/high16 v2, 0x43a00000    # 320.0f

    mul-float/2addr v2, v1

    add-float/2addr v2, v5

    float-to-int v2, v2

    .line 66
    const/high16 v3, 0x42480000    # 50.0f

    mul-float/2addr v1, v3

    add-float/2addr v1, v5

    float-to-int v1, v1

    .line 67
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3}, Lcom/jumptap/adtag/JtAdView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_1
    .catch Lcom/jumptap/adtag/utils/JtException; {:try_start_1 .. :try_end_1} :catch_1

    .line 104
    :goto_0
    new-instance v1, Lcom/flurry/android/u;

    invoke-direct {v1, p0}, Lcom/flurry/android/u;-><init>(Lcom/flurry/android/e;)V

    .line 105
    invoke-virtual {v0, v1}, Lcom/jumptap/adtag/JtAdView;->setAdViewListener(Lcom/jumptap/adtag/JtAdViewListener;)V

    .line 108
    invoke-virtual {p0, v0}, Lcom/flurry/android/e;->addView(Landroid/view/View;)V

    .line 109
    return-void

    .line 69
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 70
    :goto_1
    sget-object v1, Lcom/flurry/android/e;->p:Ljava/lang/String;

    const-string v2, "Jumptap JtException when creating ad object."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 69
    :catch_1
    move-exception v1

    goto :goto_1
.end method
