.class final Lcom/flurry/android/ay;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static cZ:Lcom/flurry/android/ay;


# instance fields
.field private final da:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private db:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private dc:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/android/ay;->dc:Z

    .line 71
    new-instance v0, Lcom/flurry/android/dm;

    invoke-direct {v0}, Lcom/flurry/android/dm;-><init>()V

    iput-object v0, p0, Lcom/flurry/android/ay;->db:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 72
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/ay;->da:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 73
    new-instance v0, Lcom/flurry/android/fe;

    invoke-direct {v0, p0}, Lcom/flurry/android/fe;-><init>(Lcom/flurry/android/ay;)V

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 74
    return-void
.end method

.method public static declared-synchronized Y()Lcom/flurry/android/ay;
    .locals 2

    .prologue
    .line 35
    const-class v1, Lcom/flurry/android/ay;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/flurry/android/ay;->cZ:Lcom/flurry/android/ay;

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Lcom/flurry/android/ay;

    invoke-direct {v0}, Lcom/flurry/android/ay;-><init>()V

    sput-object v0, Lcom/flurry/android/ay;->cZ:Lcom/flurry/android/ay;

    .line 39
    :cond_0
    sget-object v0, Lcom/flurry/android/ay;->cZ:Lcom/flurry/android/ay;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 35
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcom/flurry/android/ay;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/flurry/android/ay;->db:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/android/ay;->db:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/flurry/android/ay;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/flurry/android/ay;->da:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/android/ay;->da:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final isEnabled()Z
    .locals 1

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/flurry/android/ay;->dc:Z

    return v0
.end method

.method public final setEnabled(Z)V
    .locals 0

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/flurry/android/ay;->dc:Z

    .line 59
    return-void
.end method
