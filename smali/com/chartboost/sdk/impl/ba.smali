.class public Lcom/chartboost/sdk/impl/ba;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Observer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chartboost/sdk/impl/ba$b;,
        Lcom/chartboost/sdk/impl/ba$d;,
        Lcom/chartboost/sdk/impl/ba$c;,
        Lcom/chartboost/sdk/impl/ba$e;,
        Lcom/chartboost/sdk/impl/ba$a;
    }
.end annotation


# static fields
.field private static b:Lcom/chartboost/sdk/impl/ba;

.field private static e:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Lcom/chartboost/sdk/impl/az;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private static f:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Lcom/chartboost/sdk/impl/az;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private static h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Lcom/chartboost/sdk/impl/ay;

.field private c:Lcom/chartboost/sdk/impl/m;

.field private d:Lcom/chartboost/sdk/Libraries/h;

.field private g:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/chartboost/sdk/impl/ba$b;",
            ">;"
        }
    .end annotation
.end field

.field private i:Landroid/os/CountDownTimer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/chartboost/sdk/impl/ba;->h:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chartboost/sdk/impl/ba;->a:Lcom/chartboost/sdk/impl/ay;

    .line 95
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/chartboost/sdk/impl/ad;->a(Landroid/content/Context;)Lcom/chartboost/sdk/impl/m;

    move-result-object v0

    iput-object v0, p0, Lcom/chartboost/sdk/impl/ba;->c:Lcom/chartboost/sdk/impl/m;

    .line 96
    invoke-static {}, Lcom/chartboost/sdk/impl/ay;->a()Lcom/chartboost/sdk/impl/ay;

    move-result-object v0

    iput-object v0, p0, Lcom/chartboost/sdk/impl/ba;->a:Lcom/chartboost/sdk/impl/ay;

    .line 97
    new-instance v0, Lcom/chartboost/sdk/Libraries/h;

    const-string v1, "CBRequestManager"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/chartboost/sdk/Libraries/h;-><init>(Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/ba;->d:Lcom/chartboost/sdk/Libraries/h;

    .line 98
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/chartboost/sdk/impl/ba;->e:Ljava/util/concurrent/ConcurrentHashMap;

    .line 99
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/chartboost/sdk/impl/ba;->f:Ljava/util/concurrent/ConcurrentHashMap;

    .line 100
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/ba;->g:Ljava/util/concurrent/ConcurrentHashMap;

    .line 101
    invoke-direct {p0}, Lcom/chartboost/sdk/impl/ba;->m()V

    .line 102
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ba;->a:Lcom/chartboost/sdk/impl/ay;

    invoke-virtual {v0, p0}, Lcom/chartboost/sdk/impl/ay;->addObserver(Ljava/util/Observer;)V

    .line 103
    return-void
.end method

.method private a(Ljava/lang/String;)Lcom/chartboost/sdk/impl/az;
    .locals 2

    .prologue
    .line 545
    const/4 v0, 0x0

    .line 546
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 547
    iget-object v1, p0, Lcom/chartboost/sdk/impl/ba;->d:Lcom/chartboost/sdk/Libraries/h;

    invoke-virtual {v1, p1}, Lcom/chartboost/sdk/Libraries/h;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v1

    .line 548
    if-eqz v1, :cond_0

    .line 549
    invoke-static {v1}, Lcom/chartboost/sdk/impl/az;->a(Lcom/chartboost/sdk/Libraries/e$a;)Lcom/chartboost/sdk/impl/az;

    move-result-object v0

    .line 551
    :cond_0
    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lcom/chartboost/sdk/impl/ba;
    .locals 2

    .prologue
    .line 80
    sget-object v0, Lcom/chartboost/sdk/impl/ba;->b:Lcom/chartboost/sdk/impl/ba;

    if-nez v0, :cond_1

    .line 81
    const-class v1, Lcom/chartboost/sdk/impl/ba;

    monitor-enter v1

    .line 82
    :try_start_0
    sget-object v0, Lcom/chartboost/sdk/impl/ba;->b:Lcom/chartboost/sdk/impl/ba;

    if-nez v0, :cond_0

    .line 83
    new-instance v0, Lcom/chartboost/sdk/impl/ba;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/impl/ba;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/chartboost/sdk/impl/ba;->b:Lcom/chartboost/sdk/impl/ba;

    .line 85
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    :cond_1
    sget-object v0, Lcom/chartboost/sdk/impl/ba;->b:Lcom/chartboost/sdk/impl/ba;

    return-object v0

    .line 85
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Lcom/chartboost/sdk/impl/ba;)Lcom/chartboost/sdk/impl/m;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ba;->c:Lcom/chartboost/sdk/impl/m;

    return-object v0
.end method

.method private a(Lcom/chartboost/sdk/impl/az;)V
    .locals 3

    .prologue
    .line 523
    if-eqz p1, :cond_1

    .line 524
    const/4 v1, 0x0

    .line 525
    invoke-virtual {p1}, Lcom/chartboost/sdk/impl/az;->k()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 526
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ba;->g:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/chartboost/sdk/impl/az;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/impl/ba$b;

    .line 527
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/ba$b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/ba$b;->c()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 528
    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/impl/ba$b;->a(Lcom/chartboost/sdk/impl/az;)Lcom/chartboost/sdk/impl/az;

    move-result-object p1

    .line 529
    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/ba$b;->a()Ljava/lang/String;

    move-result-object v0

    .line 530
    iget-object v1, p0, Lcom/chartboost/sdk/impl/ba;->d:Lcom/chartboost/sdk/Libraries/h;

    invoke-virtual {p1}, Lcom/chartboost/sdk/impl/az;->t()Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/chartboost/sdk/Libraries/h;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/e$a;)Ljava/io/File;

    move-result-object v0

    .line 535
    :goto_0
    invoke-virtual {p1}, Lcom/chartboost/sdk/impl/az;->k()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/chartboost/sdk/impl/az;->m()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    if-eqz v0, :cond_1

    .line 536
    sget-object v1, Lcom/chartboost/sdk/impl/ba;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 539
    :cond_1
    return-void

    .line 532
    :cond_2
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ba;->d:Lcom/chartboost/sdk/Libraries/h;

    invoke-virtual {p1}, Lcom/chartboost/sdk/impl/az;->t()Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/chartboost/sdk/Libraries/h;->a(Ljava/io/File;Lcom/chartboost/sdk/Libraries/e$a;)Ljava/io/File;

    move-result-object v0

    goto :goto_0

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method private a(Lcom/chartboost/sdk/impl/az;Lcom/chartboost/sdk/impl/i;Lcom/chartboost/sdk/Model/CBError;Z)V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 116
    if-nez p1, :cond_0

    .line 135
    :goto_0
    return-void

    .line 120
    :cond_0
    const/4 v0, 0x5

    new-array v1, v0, [Lcom/chartboost/sdk/Libraries/e$b;

    const/4 v0, 0x0

    const-string v2, "endpoint"

    invoke-virtual {p1}, Lcom/chartboost/sdk/impl/az;->g()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$b;

    move-result-object v2

    aput-object v2, v1, v0

    const/4 v2, 0x1

    const-string v4, "statuscode"

    if-nez p2, :cond_1

    const-string v0, "None"

    :goto_1
    invoke-static {v4, v0}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$b;

    move-result-object v0

    aput-object v0, v1, v2

    const/4 v2, 0x2

    const-string v4, "error"

    if-nez p3, :cond_2

    const-string v0, "None"

    :goto_2
    invoke-static {v4, v0}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$b;

    move-result-object v0

    aput-object v0, v1, v2

    const/4 v2, 0x3

    const-string v4, "errorDescription"

    if-nez p3, :cond_3

    const-string v0, "None"

    :goto_3
    invoke-static {v4, v0}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$b;

    move-result-object v0

    aput-object v0, v1, v2

    const/4 v0, 0x4

    const-string v2, "retryCount"

    invoke-virtual {p1}, Lcom/chartboost/sdk/impl/az;->o()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$b;

    move-result-object v2

    aput-object v2, v1, v0

    invoke-static {v1}, Lcom/chartboost/sdk/Libraries/e;->a([Lcom/chartboost/sdk/Libraries/e$b;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v4

    .line 127
    const-string v0, "request_manager"

    const-string v1, "request"

    if-eqz p4, :cond_4

    const-string v2, "success"

    :goto_4
    invoke-virtual {v4}, Lcom/chartboost/sdk/Libraries/e$a;->e()Lorg/json/JSONObject;

    move-result-object v6

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v6}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 120
    :cond_1
    iget v0, p2, Lcom/chartboost/sdk/impl/i;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1

    :cond_2
    invoke-virtual {p3}, Lcom/chartboost/sdk/Model/CBError;->a()Lcom/chartboost/sdk/Model/CBError$a;

    move-result-object v0

    goto :goto_2

    :cond_3
    invoke-virtual {p3}, Lcom/chartboost/sdk/Model/CBError;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 127
    :cond_4
    const-string v2, "failure"

    goto :goto_4
.end method

.method static synthetic a(Lcom/chartboost/sdk/impl/ba;Lcom/chartboost/sdk/impl/az;Lcom/chartboost/sdk/impl/i;Lcom/chartboost/sdk/Model/CBError;Z)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/chartboost/sdk/impl/ba;->a(Lcom/chartboost/sdk/impl/az;Lcom/chartboost/sdk/impl/i;Lcom/chartboost/sdk/Model/CBError;Z)V

    return-void
.end method

.method static synthetic b(Lcom/chartboost/sdk/impl/ba;)Lcom/chartboost/sdk/Libraries/h;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ba;->d:Lcom/chartboost/sdk/Libraries/h;

    return-object v0
.end method

.method public static b()V
    .locals 3

    .prologue
    .line 191
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 192
    const-class v1, Lcom/chartboost/sdk/Libraries/c;

    monitor-enter v1

    .line 193
    :try_start_0
    sget-object v2, Lcom/chartboost/sdk/impl/ba;->h:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 194
    sget-object v2, Lcom/chartboost/sdk/impl/ba;->h:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 195
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 197
    invoke-static {}, Lcom/chartboost/sdk/impl/ax;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 195
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 199
    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/chartboost/sdk/impl/ba;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ba;->g:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic d(Lcom/chartboost/sdk/impl/ba;)Lcom/chartboost/sdk/impl/ay;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ba;->a:Lcom/chartboost/sdk/impl/ay;

    return-object v0
.end method

.method public static declared-synchronized d()V
    .locals 8

    .prologue
    .line 445
    const-class v2, Lcom/chartboost/sdk/impl/ba;

    monitor-enter v2

    :try_start_0
    invoke-static {}, Lcom/chartboost/sdk/Libraries/h;->c()Lcom/chartboost/sdk/Libraries/h;

    move-result-object v3

    .line 446
    const/4 v0, 0x0

    .line 447
    if-eqz v3, :cond_3

    .line 448
    invoke-virtual {v3}, Lcom/chartboost/sdk/Libraries/h;->a()[Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 449
    :goto_0
    if-eqz v1, :cond_2

    array-length v0, v1

    if-lez v0, :cond_2

    .line 450
    array-length v4, v1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v4, :cond_2

    aget-object v5, v1, v0

    .line 451
    invoke-virtual {v3, v5}, Lcom/chartboost/sdk/Libraries/h;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v6

    .line 452
    invoke-virtual {v6}, Lcom/chartboost/sdk/Libraries/e$a;->c()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 453
    invoke-virtual {v3, v5}, Lcom/chartboost/sdk/Libraries/h;->b(Ljava/lang/String;)V

    .line 454
    invoke-static {v6}, Lcom/chartboost/sdk/impl/az;->a(Lcom/chartboost/sdk/Libraries/e$a;)Lcom/chartboost/sdk/impl/az;

    move-result-object v5

    .line 455
    if-eqz v5, :cond_1

    .line 456
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/chartboost/sdk/impl/az;->a(Z)V

    .line 457
    invoke-virtual {v5}, Lcom/chartboost/sdk/impl/az;->s()V

    .line 450
    :cond_0
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 460
    :cond_1
    const-string v5, "CBRequestManager"

    const-string v6, "Error processing video completeion event"

    invoke-static {v5, v6}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 464
    :catch_0
    move-exception v0

    .line 465
    :try_start_1
    const-string v1, "CBRequestManager"

    const-string v3, "Error executing saved requests"

    invoke-static {v1, v3, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 467
    :cond_2
    monitor-exit v2

    return-void

    .line 445
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_3
    move-object v1, v0

    goto :goto_0
.end method

.method public static declared-synchronized h()Z
    .locals 2

    .prologue
    .line 588
    const-class v1, Lcom/chartboost/sdk/impl/ba;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/chartboost/sdk/impl/ba;->f:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/chartboost/sdk/impl/ba;->f:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 589
    const/4 v0, 0x1

    .line 590
    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 588
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic k()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/chartboost/sdk/impl/ba;->e:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic l()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/chartboost/sdk/impl/ba;->f:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method private m()V
    .locals 4

    .prologue
    .line 620
    new-instance v0, Lcom/chartboost/sdk/impl/ba$b;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/impl/ba$b;-><init>(Lcom/chartboost/sdk/impl/ba;)V

    .line 621
    const-string v1, "track_info"

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/ba$b;->a(Ljava/lang/String;)V

    .line 622
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/ba$b;->a(Z)V

    .line 623
    iget-object v1, p0, Lcom/chartboost/sdk/impl/ba;->g:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v2, "/post-install-event/"

    const-string v3, "tracking"

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 624
    return-void
.end method


# virtual methods
.method public a()Lcom/chartboost/sdk/impl/m;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ba;->c:Lcom/chartboost/sdk/impl/m;

    return-object v0
.end method

.method protected a(Lcom/chartboost/sdk/impl/az;Lcom/chartboost/sdk/impl/az$c;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 143
    if-nez p1, :cond_1

    .line 171
    :cond_0
    :goto_0
    return-void

    .line 147
    :cond_1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ba;->a:Lcom/chartboost/sdk/impl/ay;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/ay;->c()Z

    move-result v0

    if-nez v0, :cond_3

    .line 148
    new-instance v0, Lcom/chartboost/sdk/Model/CBError;

    sget-object v1, Lcom/chartboost/sdk/Model/CBError$a;->b:Lcom/chartboost/sdk/Model/CBError$a;

    invoke-direct {v0, v1, v3}, Lcom/chartboost/sdk/Model/CBError;-><init>(Lcom/chartboost/sdk/Model/CBError$a;Ljava/lang/String;)V

    .line 149
    invoke-virtual {p1, v2}, Lcom/chartboost/sdk/impl/az;->d(Z)V

    .line 150
    invoke-virtual {p1}, Lcom/chartboost/sdk/impl/az;->h()Z

    move-result v1

    if-nez v1, :cond_0

    .line 151
    invoke-virtual {p1}, Lcom/chartboost/sdk/impl/az;->p()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 152
    invoke-virtual {p1, v2}, Lcom/chartboost/sdk/impl/az;->c(Z)V

    .line 153
    invoke-direct {p0, p1}, Lcom/chartboost/sdk/impl/ba;->a(Lcom/chartboost/sdk/impl/az;)V

    .line 155
    :cond_2
    invoke-direct {p0, p1, v3, v0, v2}, Lcom/chartboost/sdk/impl/ba;->a(Lcom/chartboost/sdk/impl/az;Lcom/chartboost/sdk/impl/i;Lcom/chartboost/sdk/Model/CBError;Z)V

    .line 156
    if-eqz p2, :cond_0

    .line 157
    invoke-interface {p2, v3, p1, v0}, Lcom/chartboost/sdk/impl/az$c;->a(Lcom/chartboost/sdk/Libraries/e$a;Lcom/chartboost/sdk/impl/az;Lcom/chartboost/sdk/Model/CBError;)V

    goto :goto_0

    .line 162
    :cond_3
    invoke-virtual {p1}, Lcom/chartboost/sdk/impl/az;->h()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p1}, Lcom/chartboost/sdk/impl/az;->p()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 163
    invoke-virtual {p1, v2}, Lcom/chartboost/sdk/impl/az;->c(Z)V

    .line 164
    invoke-direct {p0, p1}, Lcom/chartboost/sdk/impl/ba;->a(Lcom/chartboost/sdk/impl/az;)V

    .line 169
    :cond_4
    new-instance v0, Lcom/chartboost/sdk/impl/ba$e;

    invoke-direct {v0, p0, p1}, Lcom/chartboost/sdk/impl/ba$e;-><init>(Lcom/chartboost/sdk/impl/ba;Lcom/chartboost/sdk/impl/az;)V

    .line 170
    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/ba;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/Runnable;)V
    .locals 4

    .prologue
    .line 176
    const/4 v0, 0x0

    .line 177
    const-class v1, Lcom/chartboost/sdk/Libraries/c;

    monitor-enter v1

    .line 178
    :try_start_0
    invoke-static {}, Lcom/chartboost/sdk/Libraries/c;->c()Lcom/chartboost/sdk/Libraries/c$a;

    move-result-object v2

    .line 179
    sget-object v3, Lcom/chartboost/sdk/Libraries/c$a;->a:Lcom/chartboost/sdk/Libraries/c$a;

    if-eq v2, v3, :cond_0

    sget-object v3, Lcom/chartboost/sdk/Libraries/c$a;->b:Lcom/chartboost/sdk/Libraries/c$a;

    if-ne v2, v3, :cond_2

    .line 180
    :cond_0
    sget-object v2, Lcom/chartboost/sdk/impl/ba;->h:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    if-eqz v0, :cond_1

    .line 186
    invoke-static {}, Lcom/chartboost/sdk/impl/ax;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 187
    :cond_1
    return-void

    .line 182
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 184
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized c()V
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 413
    monitor-enter p0

    :try_start_0
    sget-object v1, Lcom/chartboost/sdk/impl/ba;->e:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/chartboost/sdk/impl/ba;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 414
    sget-object v0, Lcom/chartboost/sdk/impl/ba;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/impl/az;

    .line 415
    if-eqz v0, :cond_0

    .line 416
    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/az;->q()Z

    move-result v2

    if-nez v2, :cond_0

    .line 417
    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/az;->o()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/impl/az;->a(I)V

    .line 418
    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/az;->r()Lcom/chartboost/sdk/impl/az$c;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/impl/az;->a(Lcom/chartboost/sdk/impl/az$c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 413
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 423
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/chartboost/sdk/impl/ba;->d:Lcom/chartboost/sdk/Libraries/h;

    invoke-virtual {v1}, Lcom/chartboost/sdk/Libraries/h;->a()[Ljava/lang/String;

    move-result-object v1

    .line 424
    if-eqz v1, :cond_3

    .line 425
    array-length v2, v1

    :goto_1
    if-ge v0, v2, :cond_3

    aget-object v3, v1, v0

    .line 426
    invoke-direct {p0, v3}, Lcom/chartboost/sdk/impl/ba;->a(Ljava/lang/String;)Lcom/chartboost/sdk/impl/az;

    move-result-object v4

    .line 427
    if-eqz v4, :cond_2

    .line 428
    sget-object v5, Lcom/chartboost/sdk/impl/ba;->e:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v6, p0, Lcom/chartboost/sdk/impl/ba;->d:Lcom/chartboost/sdk/Libraries/h;

    invoke-virtual {v6, v3}, Lcom/chartboost/sdk/Libraries/h;->d(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v5, v4, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    const/4 v3, 0x0

    invoke-virtual {v4, v3}, Lcom/chartboost/sdk/impl/az;->c(Z)V

    .line 430
    invoke-virtual {v4}, Lcom/chartboost/sdk/impl/az;->o()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v4, v3}, Lcom/chartboost/sdk/impl/az;->a(I)V

    .line 431
    invoke-virtual {v4}, Lcom/chartboost/sdk/impl/az;->r()Lcom/chartboost/sdk/impl/az$c;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/chartboost/sdk/impl/az;->a(Lcom/chartboost/sdk/impl/az$c;)V

    .line 425
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 436
    :cond_3
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/ba;->e()V

    .line 437
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/ba;->f()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 438
    monitor-exit p0

    return-void
.end method

.method public e()V
    .locals 10

    .prologue
    .line 474
    invoke-static {}, Lcom/chartboost/sdk/Tracking/a;->a()Lcom/chartboost/sdk/Tracking/a;

    move-result-object v2

    .line 475
    invoke-static {}, Lcom/chartboost/sdk/b;->j()Z

    move-result v0

    if-nez v0, :cond_1

    .line 476
    sget-object v0, Lcom/chartboost/sdk/impl/ba;->f:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/chartboost/sdk/impl/ba;->f:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 477
    sget-object v0, Lcom/chartboost/sdk/impl/ba;->f:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 479
    :cond_0
    invoke-virtual {v2}, Lcom/chartboost/sdk/Tracking/a;->l()Lcom/chartboost/sdk/Libraries/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/h;->b()V

    .line 517
    :goto_0
    return-void

    .line 483
    :cond_1
    monitor-enter p0

    .line 484
    :try_start_0
    sget-object v0, Lcom/chartboost/sdk/impl/ba;->f:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_4

    .line 486
    :try_start_1
    invoke-virtual {v2}, Lcom/chartboost/sdk/Tracking/a;->l()Lcom/chartboost/sdk/Libraries/h;

    move-result-object v3

    .line 487
    const/4 v0, 0x0

    .line 488
    if-eqz v3, :cond_6

    .line 489
    invoke-virtual {v3}, Lcom/chartboost/sdk/Libraries/h;->a()[Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 490
    :goto_1
    if-eqz v1, :cond_3

    .line 491
    array-length v4, v1

    const/4 v0, 0x0

    :goto_2
    if-ge v0, v4, :cond_3

    aget-object v5, v1, v0

    .line 492
    invoke-virtual {v2, v5}, Lcom/chartboost/sdk/Tracking/a;->b(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 493
    invoke-virtual {v3, v5}, Lcom/chartboost/sdk/Libraries/h;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v6

    .line 494
    invoke-virtual {v6}, Lcom/chartboost/sdk/Libraries/e$a;->c()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 495
    const-string v7, "CBRequestManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "### Flushing out "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "track events from cache to server..."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 496
    invoke-virtual {v2, v6}, Lcom/chartboost/sdk/Tracking/a;->a(Lcom/chartboost/sdk/Libraries/e$a;)Lcom/chartboost/sdk/impl/az;

    move-result-object v6

    .line 497
    sget-object v7, Lcom/chartboost/sdk/impl/ba;->f:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v5}, Lcom/chartboost/sdk/Libraries/h;->d(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v7, v6, v5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 498
    invoke-virtual {v6}, Lcom/chartboost/sdk/impl/az;->s()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 491
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 503
    :catch_0
    move-exception v0

    .line 504
    :try_start_2
    const-string v1, "CBRequestManager"

    const-string v2, "Error executing saved requests"

    invoke-static {v1, v2, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 516
    :cond_3
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 507
    :cond_4
    :try_start_3
    sget-object v0, Lcom/chartboost/sdk/impl/ba;->f:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/impl/az;

    .line 508
    if-eqz v0, :cond_5

    .line 509
    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/az;->q()Z

    move-result v2

    if-nez v2, :cond_5

    .line 510
    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/az;->o()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/impl/az;->a(I)V

    .line 511
    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/az;->r()Lcom/chartboost/sdk/impl/az$c;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/impl/az;->a(Lcom/chartboost/sdk/impl/az$c;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    :cond_6
    move-object v1, v0

    goto/16 :goto_1
.end method

.method public f()V
    .locals 6

    .prologue
    .line 557
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ba;->i:Landroid/os/CountDownTimer;

    if-nez v0, :cond_0

    .line 558
    new-instance v0, Lcom/chartboost/sdk/impl/ba$1;

    const-wide/32 v2, 0x3a980

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/chartboost/sdk/impl/ba$1;-><init>(Lcom/chartboost/sdk/impl/ba;JJ)V

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/ba$1;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/chartboost/sdk/impl/ba;->i:Landroid/os/CountDownTimer;

    .line 566
    :cond_0
    return-void
.end method

.method public g()V
    .locals 2

    .prologue
    .line 569
    const-string v0, "CBRequestManager"

    const-string v1, "Timer stopped:"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 570
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ba;->i:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 571
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ba;->i:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 572
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chartboost/sdk/impl/ba;->i:Landroid/os/CountDownTimer;

    .line 574
    :cond_0
    return-void
.end method

.method public i()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Lcom/chartboost/sdk/impl/az;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 603
    sget-object v0, Lcom/chartboost/sdk/impl/ba;->e:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method public j()Lcom/chartboost/sdk/Libraries/h;
    .locals 1

    .prologue
    .line 607
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ba;->d:Lcom/chartboost/sdk/Libraries/h;

    return-object v0
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 1
    .param p1, "observable"    # Ljava/util/Observable;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 578
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ba;->i:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 579
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/ba;->g()V

    .line 580
    :cond_0
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/ba;->c()V

    .line 581
    return-void
.end method
