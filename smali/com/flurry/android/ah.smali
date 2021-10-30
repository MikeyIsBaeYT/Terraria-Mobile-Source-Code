.class final Lcom/flurry/android/ah;
.super Lcom/flurry/android/do;
.source "SourceFile"


# static fields
.field private static final p:Ljava/lang/String;


# instance fields
.field private bZ:Z

.field ca:Lcom/millennialmedia/android/MMInterstitial;

.field private final q:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/flurry/android/ah;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/android/ah;->p:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/flurry/android/FlurryAds;Lcom/flurry/android/cw;Lcom/flurry/android/AdUnit;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/flurry/android/do;-><init>(Landroid/content/Context;Lcom/flurry/android/FlurryAds;Lcom/flurry/android/cw;Lcom/flurry/android/AdUnit;)V

    .line 25
    const-string v0, "com.flurry.millennial.MYAPIDINTERSTITIAL"

    invoke-virtual {p5, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/ah;->q:Ljava/lang/String;

    .line 26
    return-void
.end method

.method static synthetic a(Lcom/flurry/android/ah;)Z
    .locals 1

    .prologue
    .line 16
    iget-boolean v0, p0, Lcom/flurry/android/ah;->bZ:Z

    return v0
.end method

.method static synthetic d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/flurry/android/ah;->p:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final M()V
    .locals 4

    .prologue
    .line 33
    new-instance v1, Lcom/millennialmedia/android/MMInterstitial;

    invoke-virtual {p0}, Lcom/flurry/android/ah;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-direct {v1, v0}, Lcom/millennialmedia/android/MMInterstitial;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/flurry/android/ah;->ca:Lcom/millennialmedia/android/MMInterstitial;

    .line 34
    iget-object v0, p0, Lcom/flurry/android/ah;->ca:Lcom/millennialmedia/android/MMInterstitial;

    iget-object v1, p0, Lcom/flurry/android/ah;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/MMInterstitial;->setApid(Ljava/lang/String;)V

    .line 76
    new-instance v0, Lcom/flurry/android/gh;

    invoke-direct {v0, p0}, Lcom/flurry/android/gh;-><init>(Lcom/flurry/android/ah;)V

    .line 77
    iget-object v1, p0, Lcom/flurry/android/ah;->ca:Lcom/millennialmedia/android/MMInterstitial;

    invoke-virtual {v1, v0}, Lcom/millennialmedia/android/MMInterstitial;->setListener(Lcom/millennialmedia/android/RequestListener;)V

    .line 81
    iget-object v0, p0, Lcom/flurry/android/ah;->ca:Lcom/millennialmedia/android/MMInterstitial;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMInterstitial;->fetch()V

    .line 82
    iget-object v0, p0, Lcom/flurry/android/ah;->ca:Lcom/millennialmedia/android/MMInterstitial;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMInterstitial;->display()Z

    move-result v0

    iput-boolean v0, p0, Lcom/flurry/android/ah;->bZ:Z

    .line 84
    iget-boolean v0, p0, Lcom/flurry/android/ah;->bZ:Z

    if-eqz v0, :cond_0

    .line 85
    sget-object v0, Lcom/flurry/android/ah;->p:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Millennial MMAdView Interstitial ad displayed immediately:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/flurry/android/ah;->bZ:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :goto_0
    return-void

    .line 89
    :cond_0
    sget-object v0, Lcom/flurry/android/ah;->p:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Millennial MMAdView Interstitial ad did not display immediately:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/flurry/android/ah;->bZ:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
