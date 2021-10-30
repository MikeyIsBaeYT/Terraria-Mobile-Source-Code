.class public Lcom/chartboost/sdk/impl/bd;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chartboost/sdk/impl/bd$c;,
        Lcom/chartboost/sdk/impl/bd$b;,
        Lcom/chartboost/sdk/impl/bd$a;
    }
.end annotation


# static fields
.field public static a:Lcom/chartboost/sdk/impl/bd;

.field private static final b:Ljava/lang/String;

.field private static c:Lcom/chartboost/sdk/Libraries/h;

.field private static d:Lcom/chartboost/sdk/impl/m;

.field private static e:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/chartboost/sdk/impl/bd$b;",
            ">;"
        }
    .end annotation
.end field

.field private static f:Lcom/chartboost/sdk/impl/bd$a;

.field private static g:Lcom/chartboost/sdk/impl/bd$a;

.field private static h:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static i:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static j:Z

.field private static volatile k:Lcom/chartboost/sdk/Model/a;

.field private static l:Z

.field private static m:Ljava/util/Observer;

.field private static n:Lcom/chartboost/sdk/impl/az$c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 84
    const-class v0, Lcom/chartboost/sdk/impl/bd;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/chartboost/sdk/impl/bd;->b:Ljava/lang/String;

    .line 99
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/chartboost/sdk/impl/bd;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 102
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/chartboost/sdk/impl/bd;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 105
    const/4 v0, 0x1

    sput-boolean v0, Lcom/chartboost/sdk/impl/bd;->j:Z

    .line 109
    const/4 v0, 0x0

    sput-boolean v0, Lcom/chartboost/sdk/impl/bd;->l:Z

    .line 113
    new-instance v0, Lcom/chartboost/sdk/impl/bd$1;

    invoke-direct {v0}, Lcom/chartboost/sdk/impl/bd$1;-><init>()V

    sput-object v0, Lcom/chartboost/sdk/impl/bd;->m:Ljava/util/Observer;

    .line 215
    new-instance v0, Lcom/chartboost/sdk/impl/bd$2;

    invoke-direct {v0}, Lcom/chartboost/sdk/impl/bd$2;-><init>()V

    sput-object v0, Lcom/chartboost/sdk/impl/bd;->n:Lcom/chartboost/sdk/impl/az$c;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    return-void
.end method

.method static synthetic a(Lcom/chartboost/sdk/impl/bd$a;)Lcom/chartboost/sdk/impl/bd$a;
    .locals 0

    .prologue
    .line 53
    sput-object p0, Lcom/chartboost/sdk/impl/bd;->f:Lcom/chartboost/sdk/impl/bd$a;

    return-object p0
.end method

.method public static declared-synchronized a()Lcom/chartboost/sdk/impl/bd;
    .locals 2

    .prologue
    .line 132
    const-class v1, Lcom/chartboost/sdk/impl/bd;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/chartboost/sdk/impl/bd;->a:Lcom/chartboost/sdk/impl/bd;

    if-nez v0, :cond_0

    .line 133
    new-instance v0, Lcom/chartboost/sdk/impl/bd;

    invoke-direct {v0}, Lcom/chartboost/sdk/impl/bd;-><init>()V

    sput-object v0, Lcom/chartboost/sdk/impl/bd;->a:Lcom/chartboost/sdk/impl/bd;

    .line 134
    invoke-static {}, Lcom/chartboost/sdk/impl/bd;->m()V

    .line 136
    :cond_0
    sget-object v0, Lcom/chartboost/sdk/impl/bd;->a:Lcom/chartboost/sdk/impl/bd;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 132
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 401
    sget-object v0, Lcom/chartboost/sdk/impl/bd;->c:Lcom/chartboost/sdk/Libraries/h;

    invoke-virtual {v0, p0}, Lcom/chartboost/sdk/Libraries/h;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 402
    sget-object v0, Lcom/chartboost/sdk/impl/bd;->c:Lcom/chartboost/sdk/Libraries/h;

    invoke-virtual {v0, p0}, Lcom/chartboost/sdk/Libraries/h;->d(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 404
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static declared-synchronized a(Lcom/chartboost/sdk/Libraries/e$a;)V
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 240
    const-class v1, Lcom/chartboost/sdk/impl/bd;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/chartboost/sdk/Tracking/a;->e()V

    .line 242
    if-eqz p0, :cond_5

    .line 243
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 244
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 245
    invoke-static {}, Lcom/chartboost/sdk/impl/bd;->c()[Ljava/lang/String;

    move-result-object v4

    .line 246
    :goto_0
    invoke-virtual {p0}, Lcom/chartboost/sdk/Libraries/e$a;->o()I

    move-result v5

    if-ge v0, v5, :cond_3

    .line 247
    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/Libraries/e$a;->c(I)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v5

    .line 248
    const-string v6, "id"

    invoke-virtual {v5, v6}, Lcom/chartboost/sdk/Libraries/e$a;->b(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "video"

    invoke-virtual {v5, v6}, Lcom/chartboost/sdk/Libraries/e$a;->b(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 246
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 250
    :cond_1
    const-string v6, "id"

    invoke-virtual {v5, v6}, Lcom/chartboost/sdk/Libraries/e$a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 251
    const-string v7, "video"

    invoke-virtual {v5, v7}, Lcom/chartboost/sdk/Libraries/e$a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 252
    sget-object v7, Lcom/chartboost/sdk/impl/bd;->c:Lcom/chartboost/sdk/Libraries/h;

    invoke-virtual {v7, v6}, Lcom/chartboost/sdk/Libraries/h;->c(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_2

    .line 253
    invoke-virtual {v3, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    sget-object v7, Lcom/chartboost/sdk/impl/bd;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 256
    :cond_2
    invoke-virtual {v2, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 240
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 258
    :cond_3
    :try_start_1
    sget-boolean v0, Lcom/chartboost/sdk/impl/bd;->j:Z

    if-eqz v0, :cond_4

    .line 259
    const/4 v0, 0x0

    sput-boolean v0, Lcom/chartboost/sdk/impl/bd;->j:Z

    .line 260
    :cond_4
    sget-object v0, Lcom/chartboost/sdk/impl/bd;->b:Ljava/lang/String;

    const-string v5, "synchronizeVideos: Delete and Download new videos"

    invoke-static {v0, v5}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 262
    invoke-static {v2, v4}, Lcom/chartboost/sdk/impl/bd;->a(Ljava/util/HashMap;[Ljava/lang/String;)V

    .line 264
    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 265
    invoke-static {v3}, Lcom/chartboost/sdk/impl/bd;->a(Ljava/util/HashMap;)V

    .line 266
    sget-object v0, Lcom/chartboost/sdk/impl/bd$a;->b:Lcom/chartboost/sdk/impl/bd$a;

    sput-object v0, Lcom/chartboost/sdk/impl/bd;->g:Lcom/chartboost/sdk/impl/bd$a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 273
    :cond_5
    :goto_2
    monitor-exit v1

    return-void

    .line 267
    :cond_6
    :try_start_2
    sget-object v0, Lcom/chartboost/sdk/impl/bd;->k:Lcom/chartboost/sdk/Model/a;

    if-eqz v0, :cond_5

    .line 268
    invoke-static {}, Lcom/chartboost/sdk/impl/bd;->a()Lcom/chartboost/sdk/impl/bd;

    move-result-object v2

    monitor-enter v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 269
    :try_start_3
    invoke-static {}, Lcom/chartboost/sdk/impl/bd;->o()V

    .line 270
    monitor-exit v2

    goto :goto_2

    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public static declared-synchronized a(Lcom/chartboost/sdk/Model/a;)V
    .locals 2

    .prologue
    .line 476
    const-class v0, Lcom/chartboost/sdk/impl/bd;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lcom/chartboost/sdk/impl/bd;->k:Lcom/chartboost/sdk/Model/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 477
    monitor-exit v0

    return-void

    .line 476
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static declared-synchronized a(Ljava/util/HashMap;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 299
    const-class v2, Lcom/chartboost/sdk/impl/bd;

    monitor-enter v2

    :try_start_0
    sget-object v0, Lcom/chartboost/sdk/impl/bd;->b:Ljava/lang/String;

    const-string v1, "downloadVideos: Downloading videos from server"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 300
    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 301
    new-instance v4, Lcom/chartboost/sdk/impl/bd$c;

    const/4 v1, 0x0

    invoke-direct {v4, v1}, Lcom/chartboost/sdk/impl/bd$c;-><init>(Lcom/chartboost/sdk/impl/bd$1;)V

    .line 302
    new-instance v5, Lcom/chartboost/sdk/impl/bd$b;

    const/4 v6, 0x0

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v5, v6, v1, v4, v0}, Lcom/chartboost/sdk/impl/bd$b;-><init>(ILjava/lang/String;Lcom/chartboost/sdk/impl/bd$c;Ljava/lang/String;)V

    .line 303
    new-instance v1, Lcom/chartboost/sdk/impl/d;

    const/16 v6, 0x7530

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {v1, v6, v7, v8}, Lcom/chartboost/sdk/impl/d;-><init>(IIF)V

    invoke-virtual {v5, v1}, Lcom/chartboost/sdk/impl/bd$b;->a(Lcom/chartboost/sdk/impl/p;)Lcom/chartboost/sdk/impl/l;

    .line 306
    invoke-static {v4, v5}, Lcom/chartboost/sdk/impl/bd$c;->a(Lcom/chartboost/sdk/impl/bd$c;Lcom/chartboost/sdk/impl/bd$b;)Lcom/chartboost/sdk/impl/bd$b;

    .line 307
    sget-object v1, Lcom/chartboost/sdk/impl/bd;->m:Ljava/util/Observer;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/chartboost/sdk/impl/bd$b;->a(Ljava/lang/Object;)Lcom/chartboost/sdk/impl/l;

    .line 308
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    sget-object v0, Lcom/chartboost/sdk/impl/bd;->d:Lcom/chartboost/sdk/impl/m;

    invoke-virtual {v0, v5}, Lcom/chartboost/sdk/impl/m;->a(Lcom/chartboost/sdk/impl/l;)Lcom/chartboost/sdk/impl/l;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 299
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    .line 311
    :cond_0
    monitor-exit v2

    return-void
.end method

.method private static declared-synchronized a(Ljava/util/HashMap;[Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 281
    const-class v1, Lcom/chartboost/sdk/impl/bd;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/chartboost/sdk/impl/bd;->b:Ljava/lang/String;

    const-string v2, "deleteVideos: Deleteing videos in cache"

    invoke-static {v0, v2}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 282
    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 283
    array-length v2, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, p1, v0

    .line 284
    invoke-virtual {p0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 285
    sget-object v4, Lcom/chartboost/sdk/impl/bd;->c:Lcom/chartboost/sdk/Libraries/h;

    invoke-virtual {v4, v3}, Lcom/chartboost/sdk/Libraries/h;->d(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 286
    if-eqz v3, :cond_0

    .line 287
    sget-object v4, Lcom/chartboost/sdk/impl/bd;->c:Lcom/chartboost/sdk/Libraries/h;

    invoke-virtual {v4, v3}, Lcom/chartboost/sdk/Libraries/h;->c(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 283
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 291
    :cond_1
    monitor-exit v1

    return-void

    .line 281
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic b(Lcom/chartboost/sdk/Model/a;)Lcom/chartboost/sdk/Model/a;
    .locals 0

    .prologue
    .line 53
    sput-object p0, Lcom/chartboost/sdk/impl/bd;->k:Lcom/chartboost/sdk/Model/a;

    return-object p0
.end method

.method static synthetic b(Lcom/chartboost/sdk/impl/bd$a;)Lcom/chartboost/sdk/impl/bd$a;
    .locals 0

    .prologue
    .line 53
    sput-object p0, Lcom/chartboost/sdk/impl/bd;->g:Lcom/chartboost/sdk/impl/bd$a;

    return-object p0
.end method

.method public static b(Lcom/chartboost/sdk/Libraries/e$a;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 408
    if-nez p0, :cond_0

    move-object v0, v1

    .line 427
    :goto_0
    return-object v0

    .line 411
    :cond_0
    const-string v0, "assets"

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v2

    .line 413
    invoke-virtual {v2}, Lcom/chartboost/sdk/Libraries/e$a;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, v1

    .line 414
    goto :goto_0

    .line 416
    :cond_1
    invoke-static {}, Lcom/chartboost/sdk/Libraries/CBUtility;->c()Lcom/chartboost/sdk/Libraries/f;

    move-result-object v0

    .line 417
    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/f;->b()Z

    move-result v0

    .line 418
    if-eqz v0, :cond_2

    const-string v0, "video-portrait"

    :goto_1
    invoke-virtual {v2, v0}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v0

    .line 420
    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/e$a;->b()Z

    move-result v2

    if-eqz v2, :cond_3

    move-object v0, v1

    .line 421
    goto :goto_0

    .line 418
    :cond_2
    const-string v0, "video-landscape"

    goto :goto_1

    .line 423
    :cond_3
    const-string v2, "id"

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/Libraries/e$a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 424
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    move-object v0, v1

    .line 425
    goto :goto_0

    .line 426
    :cond_4
    invoke-static {v0}, Lcom/chartboost/sdk/impl/bd;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static declared-synchronized b()V
    .locals 9

    .prologue
    const/4 v0, 0x0

    .line 161
    const-class v1, Lcom/chartboost/sdk/impl/bd;

    monitor-enter v1

    :try_start_0
    sget-boolean v2, Lcom/chartboost/sdk/impl/bd;->l:Z

    if-nez v2, :cond_0

    .line 162
    invoke-static {}, Lcom/chartboost/sdk/impl/bd;->m()V

    .line 165
    :cond_0
    invoke-static {}, Lcom/chartboost/sdk/b;->u()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_2

    .line 210
    :cond_1
    :goto_0
    monitor-exit v1

    return-void

    .line 168
    :cond_2
    :try_start_1
    sget-object v2, Lcom/chartboost/sdk/impl/bd;->b:Ljava/lang/String;

    const-string v3, "Prefetching the Video list"

    invoke-static {v2, v3}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 171
    sget-object v2, Lcom/chartboost/sdk/impl/bd$a;->b:Lcom/chartboost/sdk/impl/bd$a;

    sget-object v3, Lcom/chartboost/sdk/impl/bd;->f:Lcom/chartboost/sdk/impl/bd$a;

    if-eq v2, v3, :cond_1

    sget-object v2, Lcom/chartboost/sdk/impl/bd$a;->b:Lcom/chartboost/sdk/impl/bd$a;

    sget-object v3, Lcom/chartboost/sdk/impl/bd;->g:Lcom/chartboost/sdk/impl/bd$a;

    if-eq v2, v3, :cond_1

    .line 175
    sget-object v2, Lcom/chartboost/sdk/impl/bd;->e:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v2, :cond_3

    sget-object v2, Lcom/chartboost/sdk/impl/bd;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 176
    sget-object v2, Lcom/chartboost/sdk/impl/bd;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 177
    sget-object v2, Lcom/chartboost/sdk/impl/bd;->d:Lcom/chartboost/sdk/impl/m;

    sget-object v3, Lcom/chartboost/sdk/impl/bd;->m:Ljava/util/Observer;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/chartboost/sdk/impl/m;->a(Ljava/lang/Object;)V

    .line 178
    sget-object v2, Lcom/chartboost/sdk/impl/bd$a;->a:Lcom/chartboost/sdk/impl/bd$a;

    sput-object v2, Lcom/chartboost/sdk/impl/bd;->g:Lcom/chartboost/sdk/impl/bd$a;

    .line 179
    sget-object v2, Lcom/chartboost/sdk/impl/bd;->b:Ljava/lang/String;

    const-string v3, "prefetchVideo: Clearing all volley request for new start"

    invoke-static {v2, v3}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 183
    :cond_3
    sget-object v2, Lcom/chartboost/sdk/impl/bd$a;->b:Lcom/chartboost/sdk/impl/bd$a;

    sput-object v2, Lcom/chartboost/sdk/impl/bd;->f:Lcom/chartboost/sdk/impl/bd$a;

    .line 186
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 187
    invoke-static {}, Lcom/chartboost/sdk/impl/bd;->c()[Ljava/lang/String;

    move-result-object v3

    .line 188
    if-eqz v3, :cond_4

    .line 189
    invoke-static {}, Lcom/chartboost/sdk/impl/bd;->c()[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    :goto_1
    if-ge v0, v4, :cond_4

    aget-object v5, v3, v0

    .line 190
    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 189
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 194
    :cond_4
    invoke-static {}, Lcom/chartboost/sdk/Tracking/a;->d()V

    .line 197
    sget-object v0, Lcom/chartboost/sdk/impl/bd;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 198
    sget-object v0, Lcom/chartboost/sdk/impl/bd;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 201
    new-instance v0, Lcom/chartboost/sdk/impl/az;

    const-string v3, "/api/video-prefetch"

    invoke-direct {v0, v3}, Lcom/chartboost/sdk/impl/az;-><init>(Ljava/lang/String;)V

    .line 202
    const-string v3, "local-videos"

    invoke-virtual {v0, v3, v2}, Lcom/chartboost/sdk/impl/az;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 203
    const/4 v2, 0x2

    new-array v2, v2, [Lcom/chartboost/sdk/Libraries/g$k;

    const/4 v3, 0x0

    const-string v4, "status"

    sget-object v5, Lcom/chartboost/sdk/Libraries/a;->a:Lcom/chartboost/sdk/Libraries/g$a;

    invoke-static {v4, v5}, Lcom/chartboost/sdk/Libraries/g;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$k;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "videos"

    const/4 v5, 0x2

    new-array v5, v5, [Lcom/chartboost/sdk/Libraries/g$k;

    const/4 v6, 0x0

    const-string v7, "video"

    invoke-static {}, Lcom/chartboost/sdk/Libraries/g;->a()Lcom/chartboost/sdk/Libraries/g$a;

    move-result-object v8

    invoke-static {v8}, Lcom/chartboost/sdk/Libraries/g;->a(Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$a;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/chartboost/sdk/Libraries/g;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$k;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "id"

    invoke-static {}, Lcom/chartboost/sdk/Libraries/g;->a()Lcom/chartboost/sdk/Libraries/g$a;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/chartboost/sdk/Libraries/g;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$k;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v5}, Lcom/chartboost/sdk/Libraries/g;->a([Lcom/chartboost/sdk/Libraries/g$k;)Lcom/chartboost/sdk/Libraries/g$a;

    move-result-object v5

    invoke-static {v5}, Lcom/chartboost/sdk/Libraries/g;->b(Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$a;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/chartboost/sdk/Libraries/g;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$k;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/chartboost/sdk/Libraries/g;->a([Lcom/chartboost/sdk/Libraries/g$k;)Lcom/chartboost/sdk/Libraries/g$a;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/impl/az;->a(Lcom/chartboost/sdk/Libraries/g$a;)V

    .line 208
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/impl/az;->b(Z)V

    .line 209
    sget-object v2, Lcom/chartboost/sdk/impl/bd;->n:Lcom/chartboost/sdk/impl/az$c;

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/impl/az;->a(Lcom/chartboost/sdk/impl/az$c;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 161
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 431
    sget-object v0, Lcom/chartboost/sdk/impl/bd;->c:Lcom/chartboost/sdk/Libraries/h;

    invoke-virtual {v0, p0}, Lcom/chartboost/sdk/Libraries/h;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 432
    sget-object v0, Lcom/chartboost/sdk/impl/bd;->c:Lcom/chartboost/sdk/Libraries/h;

    invoke-virtual {v0, p0}, Lcom/chartboost/sdk/Libraries/h;->b(Ljava/lang/String;)V

    .line 433
    :cond_0
    return-void
.end method

.method public static c(Lcom/chartboost/sdk/Libraries/e$a;)Z
    .locals 1

    .prologue
    .line 438
    invoke-static {p0}, Lcom/chartboost/sdk/impl/bd;->b(Lcom/chartboost/sdk/Libraries/e$a;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 317
    sget-object v0, Lcom/chartboost/sdk/impl/bd;->c:Lcom/chartboost/sdk/Libraries/h;

    if-nez v0, :cond_0

    .line 318
    const/4 v0, 0x0

    .line 319
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/chartboost/sdk/impl/bd;->c:Lcom/chartboost/sdk/Libraries/h;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/h;->a()[Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static declared-synchronized d()V
    .locals 3

    .prologue
    .line 397
    const-class v1, Lcom/chartboost/sdk/impl/bd;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/chartboost/sdk/impl/bd;->d:Lcom/chartboost/sdk/impl/m;

    sget-object v2, Lcom/chartboost/sdk/impl/bd;->m:Ljava/util/Observer;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/impl/m;->a(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 398
    monitor-exit v1

    return-void

    .line 397
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic e()V
    .locals 0

    .prologue
    .line 53
    invoke-static {}, Lcom/chartboost/sdk/impl/bd;->n()V

    return-void
.end method

.method static synthetic f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/chartboost/sdk/impl/bd;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g()Lcom/chartboost/sdk/Libraries/h;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/chartboost/sdk/impl/bd;->c:Lcom/chartboost/sdk/Libraries/h;

    return-object v0
.end method

.method static synthetic h()Lcom/chartboost/sdk/Model/a;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/chartboost/sdk/impl/bd;->k:Lcom/chartboost/sdk/Model/a;

    return-object v0
.end method

.method static synthetic i()V
    .locals 0

    .prologue
    .line 53
    invoke-static {}, Lcom/chartboost/sdk/impl/bd;->o()V

    return-void
.end method

.method static synthetic j()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/chartboost/sdk/impl/bd;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic k()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/chartboost/sdk/impl/bd;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic l()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/chartboost/sdk/impl/bd;->e:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method private static declared-synchronized m()V
    .locals 4

    .prologue
    .line 143
    const-class v1, Lcom/chartboost/sdk/impl/bd;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/chartboost/sdk/impl/bd;->l:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 155
    :goto_0
    monitor-exit v1

    return-void

    .line 145
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    sput-boolean v0, Lcom/chartboost/sdk/impl/bd;->l:Z

    .line 147
    new-instance v0, Lcom/chartboost/sdk/Libraries/h;

    const-string v2, "CBVideoDirectory"

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3}, Lcom/chartboost/sdk/Libraries/h;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/chartboost/sdk/impl/bd;->c:Lcom/chartboost/sdk/Libraries/h;

    .line 148
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/chartboost/sdk/impl/bd;->e:Ljava/util/concurrent/ConcurrentHashMap;

    .line 149
    sget-object v0, Lcom/chartboost/sdk/impl/bd$a;->a:Lcom/chartboost/sdk/impl/bd$a;

    sput-object v0, Lcom/chartboost/sdk/impl/bd;->f:Lcom/chartboost/sdk/impl/bd$a;

    .line 150
    sget-object v0, Lcom/chartboost/sdk/impl/bd$a;->a:Lcom/chartboost/sdk/impl/bd$a;

    sput-object v0, Lcom/chartboost/sdk/impl/bd;->g:Lcom/chartboost/sdk/impl/bd$a;

    .line 151
    invoke-static {}, Lcom/chartboost/sdk/b;->v()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/chartboost/sdk/impl/ba;->a(Landroid/content/Context;)Lcom/chartboost/sdk/impl/ba;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/ba;->a()Lcom/chartboost/sdk/impl/m;

    move-result-object v0

    sput-object v0, Lcom/chartboost/sdk/impl/bd;->d:Lcom/chartboost/sdk/impl/m;

    .line 154
    invoke-static {}, Lcom/chartboost/sdk/impl/ay;->a()Lcom/chartboost/sdk/impl/ay;

    move-result-object v0

    sget-object v2, Lcom/chartboost/sdk/impl/bd;->m:Ljava/util/Observer;

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/impl/ay;->addObserver(Ljava/util/Observer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 143
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static declared-synchronized n()V
    .locals 5

    .prologue
    .line 449
    const-class v2, Lcom/chartboost/sdk/impl/bd;

    monitor-enter v2

    :try_start_0
    sget-object v0, Lcom/chartboost/sdk/impl/bd;->b:Ljava/lang/String;

    const-string v1, "Process Request called"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 450
    sget-object v0, Lcom/chartboost/sdk/impl/bd;->f:Lcom/chartboost/sdk/impl/bd$a;

    sget-object v1, Lcom/chartboost/sdk/impl/bd$a;->b:Lcom/chartboost/sdk/impl/bd$a;

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/chartboost/sdk/impl/bd;->g:Lcom/chartboost/sdk/impl/bd$a;

    sget-object v1, Lcom/chartboost/sdk/impl/bd$a;->b:Lcom/chartboost/sdk/impl/bd$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_1

    .line 461
    :cond_0
    monitor-exit v2

    return-void

    .line 452
    :cond_1
    :try_start_1
    sget-object v0, Lcom/chartboost/sdk/impl/bd;->g:Lcom/chartboost/sdk/impl/bd$a;

    sget-object v1, Lcom/chartboost/sdk/impl/bd$a;->a:Lcom/chartboost/sdk/impl/bd$a;

    if-ne v0, v1, :cond_2

    sget-object v0, Lcom/chartboost/sdk/impl/bd;->e:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v0, :cond_3

    :cond_2
    sget-object v0, Lcom/chartboost/sdk/impl/bd;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 454
    :cond_3
    sget-object v0, Lcom/chartboost/sdk/impl/bd;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 455
    sget-object v1, Lcom/chartboost/sdk/impl/bd$a;->b:Lcom/chartboost/sdk/impl/bd$a;

    sput-object v1, Lcom/chartboost/sdk/impl/bd;->g:Lcom/chartboost/sdk/impl/bd$a;

    .line 456
    sget-object v4, Lcom/chartboost/sdk/impl/bd;->d:Lcom/chartboost/sdk/impl/m;

    sget-object v1, Lcom/chartboost/sdk/impl/bd;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chartboost/sdk/impl/l;

    invoke-virtual {v4, v1}, Lcom/chartboost/sdk/impl/m;->a(Lcom/chartboost/sdk/impl/l;)Lcom/chartboost/sdk/impl/l;

    .line 457
    sget-object v1, Lcom/chartboost/sdk/impl/bd;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 449
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method private static o()V
    .locals 2

    .prologue
    .line 464
    invoke-static {}, Lcom/chartboost/sdk/Libraries/CBUtility;->e()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/chartboost/sdk/impl/bd$3;

    invoke-direct {v1}, Lcom/chartboost/sdk/impl/bd$3;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 473
    return-void
.end method
