.class final Lcom/flurry/android/fr;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field private hL:Z

.field private hM:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/flurry/android/FlurryAgent;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/flurry/android/FlurryAgent;)V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 39
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/flurry/android/fr;->hM:Ljava/lang/ref/WeakReference;

    .line 40
    iput-object p1, p0, Lcom/flurry/android/fr;->mContext:Landroid/content/Context;

    .line 41
    invoke-static {p1}, Lcom/flurry/android/fr;->v(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/flurry/android/fr;->hL:Z

    .line 42
    return-void
.end method

.method private static v(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 74
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 76
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 77
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final bu()Z
    .locals 1

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/flurry/android/fr;->hL:Z

    return v0
.end method

.method public final bv()V
    .locals 3

    .prologue
    .line 49
    iget-object v0, p0, Lcom/flurry/android/fr;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/flurry/android/fr;->v(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/flurry/android/fr;->hL:Z

    .line 50
    iget-object v0, p0, Lcom/flurry/android/fr;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 51
    return-void
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 59
    invoke-static {p1}, Lcom/flurry/android/fr;->v(Landroid/content/Context;)Z

    move-result v1

    .line 61
    iget-object v0, p0, Lcom/flurry/android/fr;->hM:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/FlurryAgent;

    .line 62
    if-nez v0, :cond_1

    .line 71
    :cond_0
    :goto_0
    return-void

    .line 66
    :cond_1
    iget-boolean v2, p0, Lcom/flurry/android/fr;->hL:Z

    if-eq v2, v1, :cond_0

    .line 67
    iput-boolean v1, p0, Lcom/flurry/android/fr;->hL:Z

    .line 68
    iget-boolean v1, p0, Lcom/flurry/android/fr;->hL:Z

    invoke-virtual {v0, v1}, Lcom/flurry/android/FlurryAgent;->onNetworkStateChanged(Z)V

    goto :goto_0
.end method
