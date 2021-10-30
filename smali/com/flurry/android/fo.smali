.class final Lcom/flurry/android/fo;
.super Lcom/flurry/android/AdNetworkView;
.source "SourceFile"


# static fields
.field private static final p:Ljava/lang/String;


# instance fields
.field private final hJ:Ljava/lang/String;

.field private final q:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/flurry/android/fo;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/android/fo;->p:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/flurry/android/FlurryAds;Lcom/flurry/android/cw;Lcom/flurry/android/AdCreative;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/flurry/android/AdNetworkView;-><init>(Landroid/content/Context;Lcom/flurry/android/FlurryAds;Lcom/flurry/android/cw;Lcom/flurry/android/AdCreative;)V

    .line 39
    const-string v0, "com.flurry.millennial.MYAPID"

    invoke-virtual {p5, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/fo;->q:Ljava/lang/String;

    .line 40
    const-string v0, "com.flurry.millennial.MYAPIDRECTANGLE"

    invoke-virtual {p5, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/fo;->hJ:Ljava/lang/String;

    .line 41
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/flurry/android/fo;->setFocusable(Z)V

    .line 42
    return-void
.end method

.method static synthetic d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/flurry/android/fo;->p:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final initLayout(Landroid/content/Context;)V
    .locals 12

    .prologue
    const/16 v2, 0x140

    const/16 v3, 0x12c

    const/16 v1, 0xfa

    const/16 v0, 0x32

    const/4 v11, 0x0

    .line 47
    invoke-virtual {p0}, Lcom/flurry/android/fo;->getAdCreative()Lcom/flurry/android/AdCreative;

    move-result-object v4

    invoke-virtual {v4}, Lcom/flurry/android/AdCreative;->getWidth()I

    move-result v4

    .line 48
    invoke-virtual {p0}, Lcom/flurry/android/fo;->getAdCreative()Lcom/flurry/android/AdCreative;

    move-result-object v5

    invoke-virtual {v5}, Lcom/flurry/android/AdCreative;->getHeight()I

    move-result v5

    .line 50
    sget-object v6, Lcom/flurry/android/fo;->p:Ljava/lang/String;

    const-string v7, "Ad space width: %d Ad space height: %d"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v11

    const/4 v9, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    if-lt v4, v2, :cond_0

    if-ge v5, v0, :cond_1

    :cond_0
    if-lt v4, v3, :cond_4

    if-lt v5, v1, :cond_4

    .line 55
    :cond_1
    new-instance v6, Lcom/millennialmedia/android/MMAdView;

    check-cast p1, Landroid/app/Activity;

    invoke-direct {v6, p1}, Lcom/millennialmedia/android/MMAdView;-><init>(Landroid/content/Context;)V

    .line 56
    invoke-static {}, Lcom/millennialmedia/android/MMSDK;->getDefaultAdId()I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/flurry/android/fo;->setId(I)V

    .line 61
    if-lt v4, v2, :cond_3

    if-lt v5, v0, :cond_3

    .line 63
    iget-object v1, p0, Lcom/flurry/android/fo;->q:Ljava/lang/String;

    invoke-virtual {v6, v1}, Lcom/millennialmedia/android/MMAdView;->setApid(Ljava/lang/String;)V

    .line 65
    const/16 v1, 0x2d8

    if-lt v4, v1, :cond_2

    const/16 v1, 0x5a

    if-lt v5, v1, :cond_2

    .line 67
    const/16 v1, 0x2d8

    .line 68
    const/16 v0, 0x5a

    .line 84
    :goto_0
    sget-object v2, Lcom/flurry/android/fo;->p:Ljava/lang/String;

    const-string v3, "Determined Millennial AdSize as %d x %d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v11

    const/4 v5, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    invoke-virtual {v6, v1}, Lcom/millennialmedia/android/MMAdView;->setWidth(I)V

    .line 87
    invoke-virtual {v6, v0}, Lcom/millennialmedia/android/MMAdView;->setHeight(I)V

    .line 89
    invoke-virtual {p0, v11}, Lcom/flurry/android/fo;->setHorizontalScrollBarEnabled(Z)V

    .line 90
    invoke-virtual {p0, v11}, Lcom/flurry/android/fo;->setVerticalScrollBarEnabled(Z)V

    .line 91
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/flurry/android/fo;->setGravity(I)V

    .line 124
    new-instance v0, Lcom/flurry/android/fn;

    invoke-direct {v0, p0}, Lcom/flurry/android/fn;-><init>(Lcom/flurry/android/fo;)V

    .line 125
    invoke-virtual {v6, v0}, Lcom/millennialmedia/android/MMAdView;->setListener(Lcom/millennialmedia/android/RequestListener;)V

    .line 127
    invoke-virtual {p0, v6}, Lcom/flurry/android/fo;->addView(Landroid/view/View;)V

    .line 128
    invoke-virtual {v6}, Lcom/millennialmedia/android/MMAdView;->getAd()V

    .line 134
    :goto_1
    return-void

    .line 70
    :cond_2
    const/16 v1, 0x1e0

    if-lt v4, v1, :cond_5

    const/16 v1, 0x3c

    if-lt v5, v1, :cond_5

    .line 72
    const/16 v1, 0x1e0

    .line 73
    const/16 v0, 0x3c

    goto :goto_0

    .line 76
    :cond_3
    if-lt v4, v3, :cond_5

    if-lt v5, v1, :cond_5

    .line 78
    iget-object v0, p0, Lcom/flurry/android/fo;->hJ:Ljava/lang/String;

    invoke-virtual {v6, v0}, Lcom/millennialmedia/android/MMAdView;->setApid(Ljava/lang/String;)V

    move v0, v1

    move v1, v3

    .line 81
    goto :goto_0

    .line 132
    :cond_4
    sget-object v0, Lcom/flurry/android/fo;->p:Ljava/lang/String;

    const-string v1, "**********Could not load Millennial Ad"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    move v1, v2

    goto :goto_0
.end method
