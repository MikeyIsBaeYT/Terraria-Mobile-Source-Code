.class final Lcom/flurry/android/cm;
.super Lcom/flurry/android/fp;
.source "SourceFile"


# instance fields
.field private synthetic du:Lcom/flurry/android/FlurryAds;

.field private synthetic n:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/flurry/android/FlurryAds;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1887
    iput-object p1, p0, Lcom/flurry/android/cm;->du:Lcom/flurry/android/FlurryAds;

    iput-object p2, p0, Lcom/flurry/android/cm;->n:Landroid/content/Context;

    invoke-direct {p0}, Lcom/flurry/android/fp;-><init>()V

    return-void
.end method


# virtual methods
.method public final c()V
    .locals 6

    .prologue
    .line 1891
    iget-object v0, p0, Lcom/flurry/android/cm;->du:Lcom/flurry/android/FlurryAds;

    iget-object v1, p0, Lcom/flurry/android/cm;->n:Landroid/content/Context;

    const-string v2, ""

    const/4 v3, 0x0

    const/4 v4, 0x1

    sget-object v5, Lcom/flurry/android/FlurryAdSize;->BANNER_BOTTOM:Lcom/flurry/android/FlurryAdSize;

    invoke-virtual/range {v0 .. v5}, Lcom/flurry/android/FlurryAds;->a(Landroid/content/Context;Ljava/lang/String;Landroid/view/ViewGroup;ZLcom/flurry/android/FlurryAdSize;)Ljava/util/List;

    move-result-object v0

    .line 1892
    iget-object v1, p0, Lcom/flurry/android/cm;->du:Lcom/flurry/android/FlurryAds;

    iget-object v2, p0, Lcom/flurry/android/cm;->n:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lcom/flurry/android/FlurryAds;->b(Landroid/content/Context;Ljava/util/List;)V

    .line 1893
    return-void
.end method
