.class final Lcom/flurry/android/cq;
.super Lcom/flurry/android/fp;
.source "SourceFile"


# instance fields
.field private synthetic du:Lcom/flurry/android/FlurryAds;

.field private synthetic eH:Ljava/lang/String;

.field private synthetic eI:Z

.field private synthetic eJ:Lcom/flurry/android/AdUnit;

.field private synthetic n:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/flurry/android/FlurryAds;Landroid/content/Context;Ljava/lang/String;ZLcom/flurry/android/AdUnit;)V
    .locals 1

    .prologue
    .line 1706
    iput-object p1, p0, Lcom/flurry/android/cq;->du:Lcom/flurry/android/FlurryAds;

    iput-object p2, p0, Lcom/flurry/android/cq;->n:Landroid/content/Context;

    iput-object p3, p0, Lcom/flurry/android/cq;->eH:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/android/cq;->eI:Z

    iput-object p5, p0, Lcom/flurry/android/cq;->eJ:Lcom/flurry/android/AdUnit;

    invoke-direct {p0}, Lcom/flurry/android/fp;-><init>()V

    return-void
.end method


# virtual methods
.method public final c()V
    .locals 5

    .prologue
    .line 1710
    iget-object v0, p0, Lcom/flurry/android/cq;->du:Lcom/flurry/android/FlurryAds;

    iget-object v1, p0, Lcom/flurry/android/cq;->n:Landroid/content/Context;

    iget-object v2, p0, Lcom/flurry/android/cq;->eH:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/flurry/android/FlurryAds;->h(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1711
    if-eqz v0, :cond_0

    .line 1713
    iget-object v1, p0, Lcom/flurry/android/cq;->du:Lcom/flurry/android/FlurryAds;

    iget-object v2, p0, Lcom/flurry/android/cq;->n:Landroid/content/Context;

    iget-boolean v3, p0, Lcom/flurry/android/cq;->eI:Z

    iget-object v4, p0, Lcom/flurry/android/cq;->eJ:Lcom/flurry/android/AdUnit;

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/flurry/android/FlurryAds;->a(Landroid/content/Context;Ljava/lang/String;ZLcom/flurry/android/AdUnit;)V

    .line 1719
    :goto_0
    return-void

    .line 1717
    :cond_0
    sget-object v0, Lcom/flurry/android/FlurryAds;->p:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Redirect URL could not be found for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/android/cq;->eH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/flurry/android/cy;->g(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
