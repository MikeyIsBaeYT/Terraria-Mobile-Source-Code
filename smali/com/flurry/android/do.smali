.class abstract Lcom/flurry/android/do;
.super Lcom/flurry/android/ae;
.source "SourceFile"


# static fields
.field private static final p:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/flurry/android/do;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/android/do;->p:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/flurry/android/FlurryAds;Lcom/flurry/android/cw;Lcom/flurry/android/AdUnit;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/flurry/android/ae;-><init>(Landroid/content/Context;Lcom/flurry/android/FlurryAds;Lcom/flurry/android/cw;Lcom/flurry/android/AdUnit;)V

    .line 20
    return-void
.end method

.method private onEvent(Ljava/lang/String;Ljava/util/Map;)V
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
    const/4 v6, 0x0

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onEvent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    invoke-virtual {p0}, Lcom/flurry/android/do;->L()Lcom/flurry/android/AdUnit;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {p0}, Lcom/flurry/android/do;->J()Lcom/flurry/android/FlurryAds;

    move-result-object v7

    new-instance v0, Lcom/flurry/android/gt;

    invoke-virtual {p0}, Lcom/flurry/android/do;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0}, Lcom/flurry/android/do;->L()Lcom/flurry/android/AdUnit;

    move-result-object v4

    invoke-virtual {p0}, Lcom/flurry/android/do;->K()Lcom/flurry/android/cw;

    move-result-object v5

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/flurry/android/gt;-><init>(Ljava/lang/String;Ljava/util/Map;Landroid/content/Context;Lcom/flurry/android/AdUnit;Lcom/flurry/android/cw;I)V

    invoke-virtual {p0}, Lcom/flurry/android/do;->J()Lcom/flurry/android/FlurryAds;

    move-result-object v1

    invoke-virtual {v7, v0, v1, v6}, Lcom/flurry/android/FlurryAds;->onEvent(Lcom/flurry/android/gt;Lcom/flurry/android/au;I)V

    .line 53
    :cond_0
    return-void
.end method


# virtual methods
.method public final onAdClicked(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 35
    const-string v0, "clicked"

    invoke-direct {p0, v0, p1}, Lcom/flurry/android/do;->onEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 36
    return-void
.end method

.method public final onAdClosed(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 39
    const-string v0, "adClosed"

    invoke-direct {p0, v0, p1}, Lcom/flurry/android/do;->onEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 40
    return-void
.end method

.method public final onAdShown(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 31
    const-string v0, "rendered"

    invoke-direct {p0, v0, p1}, Lcom/flurry/android/do;->onEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 32
    return-void
.end method

.method public final onRenderFailed(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 43
    const-string v0, "renderFailed"

    invoke-direct {p0, v0, p1}, Lcom/flurry/android/do;->onEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 44
    return-void
.end method
