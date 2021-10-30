.class public Lcom/chartboost/sdk/impl/ay;
.super Ljava/util/Observable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chartboost/sdk/impl/ay$a;,
        Lcom/chartboost/sdk/impl/ay$b;
    }
.end annotation


# static fields
.field private static c:Lcom/chartboost/sdk/impl/ay;

.field private static d:Lcom/chartboost/sdk/impl/ay$b;


# instance fields
.field private a:Z

.field private b:Z

.field private e:Lcom/chartboost/sdk/impl/ay$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    sput-object v0, Lcom/chartboost/sdk/impl/ay;->c:Lcom/chartboost/sdk/impl/ay;

    .line 21
    sget-object v0, Lcom/chartboost/sdk/impl/ay$b;->a:Lcom/chartboost/sdk/impl/ay$b;

    sput-object v0, Lcom/chartboost/sdk/impl/ay;->d:Lcom/chartboost/sdk/impl/ay$b;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    .line 18
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/chartboost/sdk/impl/ay;->a:Z

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/chartboost/sdk/impl/ay;->b:Z

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chartboost/sdk/impl/ay;->e:Lcom/chartboost/sdk/impl/ay$a;

    .line 26
    new-instance v0, Lcom/chartboost/sdk/impl/ay$a;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/impl/ay$a;-><init>(Lcom/chartboost/sdk/impl/ay;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/ay;->e:Lcom/chartboost/sdk/impl/ay$a;

    .line 27
    return-void
.end method

.method public static a()Lcom/chartboost/sdk/impl/ay;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/chartboost/sdk/impl/ay;->c:Lcom/chartboost/sdk/impl/ay;

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Lcom/chartboost/sdk/impl/ay;

    invoke-direct {v0}, Lcom/chartboost/sdk/impl/ay;-><init>()V

    sput-object v0, Lcom/chartboost/sdk/impl/ay;->c:Lcom/chartboost/sdk/impl/ay;

    .line 35
    :cond_0
    sget-object v0, Lcom/chartboost/sdk/impl/ay;->c:Lcom/chartboost/sdk/impl/ay;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 104
    :try_start_0
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 105
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 108
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 109
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/chartboost/sdk/impl/ay;->a(Z)V

    .line 110
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 111
    sget-object v0, Lcom/chartboost/sdk/impl/ay$b;->c:Lcom/chartboost/sdk/impl/ay$b;

    sput-object v0, Lcom/chartboost/sdk/impl/ay;->d:Lcom/chartboost/sdk/impl/ay$b;

    .line 112
    const-string v0, "CBReachability"

    const-string v1, "NETWORK TYPE: TYPE_WIFI"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    :cond_0
    :goto_0
    return-void

    .line 114
    :cond_1
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-nez v0, :cond_0

    .line 115
    sget-object v0, Lcom/chartboost/sdk/impl/ay$b;->d:Lcom/chartboost/sdk/impl/ay$b;

    sput-object v0, Lcom/chartboost/sdk/impl/ay;->d:Lcom/chartboost/sdk/impl/ay$b;

    .line 116
    const-string v0, "CBReachability"

    const-string v1, "NETWORK TYPE: TYPE_MOBILE"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 124
    :catch_0
    move-exception v0

    .line 125
    sget-object v0, Lcom/chartboost/sdk/impl/ay$b;->a:Lcom/chartboost/sdk/impl/ay$b;

    sput-object v0, Lcom/chartboost/sdk/impl/ay;->d:Lcom/chartboost/sdk/impl/ay$b;

    .line 126
    const-string v0, "CBReachability"

    const-string v1, "Chartboost SDK requires \'android.permission.ACCESS_NETWORK_STATE\' permission set in your AndroidManifest.xml"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 120
    :cond_2
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/ay;->a(Z)V

    .line 121
    sget-object v0, Lcom/chartboost/sdk/impl/ay$b;->b:Lcom/chartboost/sdk/impl/ay$b;

    sput-object v0, Lcom/chartboost/sdk/impl/ay;->d:Lcom/chartboost/sdk/impl/ay$b;

    .line 122
    const-string v0, "CBReachability"

    const-string v1, "NETWORK TYPE: NO Network"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 151
    iput-boolean p1, p0, Lcom/chartboost/sdk/impl/ay;->a:Z

    .line 152
    return-void
.end method

.method public b()I
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/chartboost/sdk/impl/ay;->d:Lcom/chartboost/sdk/impl/ay$b;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/ay$b;->a()I

    move-result v0

    return v0
.end method

.method public b(Landroid/content/Context;)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 172
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/chartboost/sdk/impl/ay;->b:Z

    if-nez v0, :cond_0

    .line 173
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/ay;->b(Z)V

    .line 174
    const-string v0, "CBReachability"

    const-string v1, "Network broadcast successfully registered"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 175
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ay;->e:Lcom/chartboost/sdk/impl/ay$a;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    .line 177
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Z)V
    .locals 0

    .prologue
    .line 206
    iput-boolean p1, p0, Lcom/chartboost/sdk/impl/ay;->b:Z

    .line 207
    return-void
.end method

.method public c(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 186
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/chartboost/sdk/impl/ay;->b:Z

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ay;->e:Lcom/chartboost/sdk/impl/ay$a;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 188
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/ay;->b(Z)V

    .line 189
    const-string v0, "CBReachability"

    const-string v1, "Network broadcast successfully unregistered"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 191
    :cond_0
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 160
    iget-boolean v0, p0, Lcom/chartboost/sdk/impl/ay;->a:Z

    return v0
.end method

.method public notifyObservers()V
    .locals 1

    .prologue
    .line 138
    iget-boolean v0, p0, Lcom/chartboost/sdk/impl/ay;->a:Z

    if-eqz v0, :cond_0

    .line 139
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/ay;->setChanged()V

    .line 140
    invoke-super {p0, p0}, Ljava/util/Observable;->notifyObservers(Ljava/lang/Object;)V

    .line 142
    :cond_0
    return-void
.end method
