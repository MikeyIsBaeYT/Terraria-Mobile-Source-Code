.class final Lcom/flurry/android/c;
.super Lcom/flurry/android/fp;
.source "SourceFile"


# instance fields
.field final synthetic j:Landroid/content/Context;

.field final synthetic l:Lcom/flurry/android/FlurryAgent;

.field private synthetic m:Z


# direct methods
.method constructor <init>(Lcom/flurry/android/FlurryAgent;ZLandroid/content/Context;)V
    .locals 0

    .prologue
    .line 1220
    iput-object p1, p0, Lcom/flurry/android/c;->l:Lcom/flurry/android/FlurryAgent;

    iput-boolean p2, p0, Lcom/flurry/android/c;->m:Z

    iput-object p3, p0, Lcom/flurry/android/c;->j:Landroid/content/Context;

    invoke-direct {p0}, Lcom/flurry/android/fp;-><init>()V

    return-void
.end method


# virtual methods
.method public final c()V
    .locals 4

    .prologue
    .line 1224
    iget-object v0, p0, Lcom/flurry/android/c;->l:Lcom/flurry/android/FlurryAgent;

    invoke-static {v0}, Lcom/flurry/android/FlurryAgent;->b(Lcom/flurry/android/FlurryAgent;)Lcom/flurry/android/am;

    move-result-object v0

    .line 1225
    iget-object v1, p0, Lcom/flurry/android/c;->l:Lcom/flurry/android/FlurryAgent;

    invoke-static {v1}, Lcom/flurry/android/FlurryAgent;->c(Lcom/flurry/android/FlurryAgent;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1227
    iget-object v0, p0, Lcom/flurry/android/c;->l:Lcom/flurry/android/FlurryAgent;

    invoke-static {v0}, Lcom/flurry/android/FlurryAgent;->d(Lcom/flurry/android/FlurryAgent;)V

    .line 1228
    iget-boolean v0, p0, Lcom/flurry/android/c;->m:Z

    if-nez v0, :cond_0

    .line 1231
    iget-object v0, p0, Lcom/flurry/android/c;->l:Lcom/flurry/android/FlurryAgent;

    invoke-static {v0}, Lcom/flurry/android/FlurryAgent;->e(Lcom/flurry/android/FlurryAgent;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/flurry/android/af;

    invoke-direct {v1, p0}, Lcom/flurry/android/af;-><init>(Lcom/flurry/android/c;)V

    invoke-static {}, Lcom/flurry/android/FlurryAgent;->A()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1240
    :cond_0
    invoke-static {}, Lcom/flurry/android/FlurryAgent;->r()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1242
    const-string v0, "FlurryAgent"

    const-string v1, "Attempting to persist AdLogs"

    invoke-static {v0, v1}, Lcom/flurry/android/cy;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1243
    iget-object v0, p0, Lcom/flurry/android/c;->l:Lcom/flurry/android/FlurryAgent;

    iget-object v0, v0, Lcom/flurry/android/FlurryAgent;->be:Lcom/flurry/android/IFlurryAds;

    invoke-interface {v0}, Lcom/flurry/android/IFlurryAds;->savePersistentAdLogData()V

    .line 1244
    const-string v0, "FlurryAgent"

    const-string v1, "Attempting to persist FreqCap"

    invoke-static {v0, v1}, Lcom/flurry/android/cy;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1245
    iget-object v0, p0, Lcom/flurry/android/c;->l:Lcom/flurry/android/FlurryAgent;

    iget-object v0, v0, Lcom/flurry/android/FlurryAgent;->be:Lcom/flurry/android/IFlurryAds;

    invoke-interface {v0}, Lcom/flurry/android/IFlurryAds;->savePersistentFreqCapData()V

    .line 1247
    :cond_1
    return-void
.end method
