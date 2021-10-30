.class final Lcom/flurry/android/v;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# static fields
.field private static p:Ljava/lang/String;


# instance fields
.field private final Q:Landroid/content/Context;

.field private final ae:Lcom/flurry/android/FlurryAds;

.field private final af:Ljava/lang/String;

.field private final ag:Landroid/view/ViewGroup;

.field private ah:J

.field private final ai:Ljava/util/concurrent/ScheduledExecutorService;

.field private final aj:Ljava/lang/Runnable;

.field private ak:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-string v0, "FlurryAgent"

    sput-object v0, Lcom/flurry/android/v;->p:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/flurry/android/FlurryAds;Landroid/content/Context;Ljava/lang/String;Landroid/view/ViewGroup;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 26
    new-instance v0, Lcom/flurry/android/dh;

    invoke-direct {v0, p0}, Lcom/flurry/android/dh;-><init>(Lcom/flurry/android/v;)V

    iput-object v0, p0, Lcom/flurry/android/v;->aj:Ljava/lang/Runnable;

    .line 32
    iput-object p1, p0, Lcom/flurry/android/v;->ae:Lcom/flurry/android/FlurryAds;

    .line 33
    iput-object p2, p0, Lcom/flurry/android/v;->Q:Landroid/content/Context;

    .line 34
    iput-object p3, p0, Lcom/flurry/android/v;->af:Ljava/lang/String;

    .line 35
    iput-object p4, p0, Lcom/flurry/android/v;->ag:Landroid/view/ViewGroup;

    .line 36
    iput-object p5, p0, Lcom/flurry/android/v;->ai:Ljava/util/concurrent/ScheduledExecutorService;

    .line 37
    return-void
.end method

.method static synthetic a(Lcom/flurry/android/v;)Z
    .locals 2

    .prologue
    .line 16
    iget-object v0, p0, Lcom/flurry/android/v;->Q:Landroid/content/Context;

    invoke-static {v0}, Lcom/flurry/android/FlurryAds;->n(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Device is locked: banner will NOT rotate for adSpace: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/android/v;->af:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_0
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_1
    iget-object v0, p0, Lcom/flurry/android/v;->ae:Lcom/flurry/android/FlurryAds;

    invoke-virtual {v0}, Lcom/flurry/android/FlurryAds;->bg()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ad fullscreen panel is opened: banner will NOT rotate for adSpace: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/android/v;->af:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/flurry/android/v;->l()Lcom/flurry/android/p;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/flurry/android/p;->shouldRotate()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1
.end method

.method static synthetic b(Lcom/flurry/android/v;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/flurry/android/v;->aj:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic c(Lcom/flurry/android/v;)V
    .locals 8

    .prologue
    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Rotating banner for adSpace: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/android/v;->af:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v1, p0, Lcom/flurry/android/v;->ae:Lcom/flurry/android/FlurryAds;

    iget-object v2, p0, Lcom/flurry/android/v;->Q:Landroid/content/Context;

    iget-object v3, p0, Lcom/flurry/android/v;->af:Ljava/lang/String;

    sget-object v4, Lcom/flurry/android/FlurryAdSize;->BANNER_BOTTOM:Lcom/flurry/android/FlurryAdSize;

    iget-object v5, p0, Lcom/flurry/android/v;->ag:Landroid/view/ViewGroup;

    const-wide/16 v6, 0x1

    invoke-virtual/range {v1 .. v7}, Lcom/flurry/android/FlurryAds;->a(Landroid/content/Context;Ljava/lang/String;Lcom/flurry/android/FlurryAdSize;Landroid/view/ViewGroup;J)Z

    return-void
.end method

.method private declared-synchronized j()V
    .locals 2

    .prologue
    .line 64
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/flurry/android/v;->k()V

    .line 65
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/flurry/android/v;->ah:J

    .line 66
    iget-object v0, p0, Lcom/flurry/android/v;->aj:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/flurry/android/v;->removeCallbacks(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    monitor-exit p0

    return-void

    .line 64
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private k()V
    .locals 4

    .prologue
    .line 89
    iget-object v0, p0, Lcom/flurry/android/v;->ak:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cancel banner rotation for adSpace = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/android/v;->af:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " with fixed rate in milliseconds = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/flurry/android/v;->ah:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    iget-object v0, p0, Lcom/flurry/android/v;->ak:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 93
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/android/v;->ak:Ljava/util/concurrent/ScheduledFuture;

    .line 95
    :cond_0
    return-void
.end method

.method private l()Lcom/flurry/android/p;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 106
    invoke-virtual {p0}, Lcom/flurry/android/v;->getChildCount()I

    move-result v0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    move-object v0, v1

    .line 113
    :goto_0
    return-object v0

    .line 109
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/flurry/android/v;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 111
    :try_start_0
    check-cast v0, Lcom/flurry/android/p;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 113
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public final declared-synchronized a(J)V
    .locals 7

    .prologue
    .line 56
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/flurry/android/v;->ah:J

    cmp-long v0, v0, p1

    if-eqz v0, :cond_0

    .line 57
    invoke-direct {p0}, Lcom/flurry/android/v;->k()V

    .line 58
    iput-wide p1, p0, Lcom/flurry/android/v;->ah:J

    .line 59
    iget-object v0, p0, Lcom/flurry/android/v;->ai:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/android/v;->ak:Ljava/util/concurrent/ScheduledFuture;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    iget-wide v2, p0, Lcom/flurry/android/v;->ah:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "schedule banner rotation for adSpace = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/android/v;->af:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " with fixed rate in milliseconds = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/flurry/android/v;->ah:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v0, p0, Lcom/flurry/android/v;->ai:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/flurry/android/ak;

    invoke-direct {v1, p0}, Lcom/flurry/android/ak;-><init>(Lcom/flurry/android/v;)V

    iget-wide v2, p0, Lcom/flurry/android/v;->ah:J

    iget-wide v4, p0, Lcom/flurry/android/v;->ah:J

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/v;->ak:Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    :cond_0
    monitor-exit p0

    return-void

    .line 56
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final h()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/flurry/android/v;->ag:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/flurry/android/v;->af:Ljava/lang/String;

    return-object v0
.end method

.method public final stop()V
    .locals 1

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/flurry/android/v;->j()V

    .line 99
    invoke-direct {p0}, Lcom/flurry/android/v;->l()Lcom/flurry/android/p;

    move-result-object v0

    .line 100
    if-eqz v0, :cond_0

    .line 101
    invoke-virtual {v0}, Lcom/flurry/android/p;->stop()V

    .line 103
    :cond_0
    return-void
.end method
