.class final Lcom/flurry/android/ep;
.super Lcom/flurry/android/ff;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/flurry/android/ff;-><init>()V

    return-void
.end method


# virtual methods
.method protected final O()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    const-string v0, "Mobclix"

    return-object v0
.end method

.method protected final P()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/cs;",
            ">;"
        }
    .end annotation

    .prologue
    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 33
    new-instance v1, Lcom/flurry/android/cs;

    const-string v2, "mobclix"

    const-string v3, "3.2.1"

    const-string v4, "com.mobclix.android.sdk.MobclixFullScreenAdView"

    invoke-direct {v1, v2, v3, v4}, Lcom/flurry/android/cs;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    return-object v0
.end method

.method protected final Q()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ActivityInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 44
    new-instance v1, Landroid/content/pm/ActivityInfo;

    invoke-direct {v1}, Landroid/content/pm/ActivityInfo;-><init>()V

    .line 45
    const-string v2, "com.mobclix.android.sdk.MobclixBrowserActivity"

    iput-object v2, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 46
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    return-object v0
.end method

.method protected final R()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/cs;",
            ">;"
        }
    .end annotation

    .prologue
    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 53
    new-instance v1, Lcom/flurry/android/cs;

    const-string v2, "mobclix"

    const-string v3, "3.2.1"

    const-string v4, "com.mobclix.android.sdk.MobclixAdView"

    invoke-direct {v1, v2, v3, v4}, Lcom/flurry/android/cs;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    return-object v0
.end method

.method protected final S()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 62
    const-string v1, "com.mobclix.APPLICATION_ID"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    return-object v0
.end method

.method protected final T()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 71
    const-string v1, "android.permission.INTERNET"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    return-object v0
.end method

.method protected final a(Landroid/content/Context;Lcom/flurry/android/FlurryAds;Lcom/flurry/android/cw;Lcom/flurry/android/AdUnit;Landroid/os/Bundle;)Lcom/flurry/android/ae;
    .locals 1

    .prologue
    .line 79
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    if-nez p5, :cond_1

    .line 81
    :cond_0
    const/4 v0, 0x0

    .line 84
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/flurry/android/bx;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/flurry/android/bx;-><init>(Landroid/content/Context;Lcom/flurry/android/FlurryAds;Lcom/flurry/android/cw;Lcom/flurry/android/AdUnit;)V

    goto :goto_0
.end method

.method protected final a(Landroid/content/Context;Lcom/flurry/android/FlurryAds;Lcom/flurry/android/cw;Lcom/flurry/android/AdCreative;Landroid/os/Bundle;)Lcom/flurry/android/p;
    .locals 1

    .prologue
    .line 90
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    if-nez p5, :cond_1

    .line 92
    :cond_0
    const/4 v0, 0x0

    .line 95
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/flurry/android/fc;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/flurry/android/fc;-><init>(Landroid/content/Context;Lcom/flurry/android/FlurryAds;Lcom/flurry/android/cw;Lcom/flurry/android/AdCreative;)V

    goto :goto_0
.end method
