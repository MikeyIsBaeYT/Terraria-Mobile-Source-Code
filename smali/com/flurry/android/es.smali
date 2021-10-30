.class Lcom/flurry/android/es;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/android/IAppCloudModule;


# static fields
.field private static gw:Lcom/flurry/android/es;

.field private static p:Ljava/lang/String;


# instance fields
.field private aA:Ljava/lang/String;

.field private gu:Ljava/lang/String;

.field private volatile gv:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const-string v0, "FlurryAgent"

    sput-object v0, Lcom/flurry/android/es;->p:Ljava/lang/String;

    .line 11
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/flurry/android/es;->gu:Ljava/lang/String;

    .line 17
    return-void
.end method

.method static declared-synchronized aW()Lcom/flurry/android/es;
    .locals 2

    .prologue
    .line 29
    const-class v1, Lcom/flurry/android/es;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/flurry/android/es;->gw:Lcom/flurry/android/es;

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Lcom/flurry/android/es;

    invoke-direct {v0}, Lcom/flurry/android/es;-><init>()V

    sput-object v0, Lcom/flurry/android/es;->gw:Lcom/flurry/android/es;

    .line 33
    :cond_0
    sget-object v0, Lcom/flurry/android/es;->gw:Lcom/flurry/android/es;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 29
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method final a(Lcom/flurry/android/en;)V
    .locals 1

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/flurry/android/es;->gv:Z

    if-nez v0, :cond_0

    .line 44
    iget-object v0, p1, Lcom/flurry/android/en;->aA:Ljava/lang/String;

    iput-object v0, p0, Lcom/flurry/android/es;->aA:Ljava/lang/String;

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/android/es;->gv:Z

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/flurry/android/es;->aA:Ljava/lang/String;

    invoke-static {v0}, Lcom/flurry/android/FlurryAppCloud;->g(Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method public getLastUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    invoke-static {}, Lcom/flurry/android/et;->aZ()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPushToken()Ljava/lang/String;
    .locals 2

    .prologue
    .line 109
    sget-object v0, Lcom/flurry/android/es;->p:Ljava/lang/String;

    const-string v1, "getting push token."

    invoke-static {v0, v1}, Lcom/flurry/android/cy;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lcom/flurry/android/es;->gu:Ljava/lang/String;

    return-object v0
.end method

.method final isInitialized()Z
    .locals 1

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/flurry/android/es;->gv:Z

    return v0
.end method

.method public final setPushToken(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 88
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "NP"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 90
    :cond_0
    sget-object v0, Lcom/flurry/android/es;->p:Ljava/lang/String;

    const-string v1, "setting push token."

    invoke-static {v0, v1}, Lcom/flurry/android/cy;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 94
    iput-object p1, p0, Lcom/flurry/android/es;->gu:Ljava/lang/String;

    .line 104
    :cond_1
    :goto_0
    return-void

    .line 98
    :cond_2
    const-string v0, "NP"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 100
    iput-object p1, p0, Lcom/flurry/android/es;->gu:Ljava/lang/String;

    goto :goto_0
.end method
