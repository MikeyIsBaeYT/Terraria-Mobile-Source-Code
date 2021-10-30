.class public Lcom/chartboost/sdk/Libraries/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static f:Lcom/chartboost/sdk/Libraries/h;


# instance fields
.field public a:Landroid/content/Context;

.field private b:Ljava/io/File;

.field private c:Ljava/io/File;

.field private d:Ljava/io/File;

.field private e:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-static {}, Lcom/chartboost/sdk/b;->v()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/chartboost/sdk/Libraries/h;->a:Landroid/content/Context;

    .line 45
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/h;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 46
    const-string v0, "CBFileCache"

    const-string v1, "RunTime error: Cannot find context object"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    :goto_0
    return-void

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/h;->a:Landroid/content/Context;

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    .line 50
    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/chartboost/sdk/Libraries/h;->e:Z

    .line 52
    if-eqz p1, :cond_2

    .line 53
    invoke-direct {p0, p1, p2}, Lcom/chartboost/sdk/Libraries/h;->a(Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/chartboost/sdk/Libraries/h;->b:Ljava/io/File;

    goto :goto_0

    .line 50
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 55
    :cond_2
    const-string v0, "CBCommonCacheFolder"

    invoke-direct {p0, v0, p2}, Lcom/chartboost/sdk/Libraries/h;->a(Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/chartboost/sdk/Libraries/h;->b:Ljava/io/File;

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Z)Ljava/io/File;
    .locals 3

    .prologue
    .line 65
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/h;->b:Ljava/io/File;

    if-eqz v0, :cond_1

    .line 66
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/h;->b:Ljava/io/File;

    .line 85
    :cond_0
    :goto_0
    return-object v0

    .line 71
    :cond_1
    if-eqz p2, :cond_2

    invoke-direct {p0}, Lcom/chartboost/sdk/Libraries/h;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 72
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/h;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    .line 73
    new-instance v1, Ljava/io/File;

    const-string v2, "__chartboost"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 74
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 75
    iput-object v0, p0, Lcom/chartboost/sdk/Libraries/h;->d:Ljava/io/File;

    .line 83
    :goto_1
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 84
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    goto :goto_0

    .line 77
    :cond_2
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/h;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 78
    new-instance v1, Ljava/io/File;

    const-string v2, "__chartboost"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 79
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 80
    iput-object v0, p0, Lcom/chartboost/sdk/Libraries/h;->c:Ljava/io/File;

    goto :goto_1
.end method

.method public static declared-synchronized c()Lcom/chartboost/sdk/Libraries/h;
    .locals 4

    .prologue
    .line 340
    const-class v1, Lcom/chartboost/sdk/Libraries/h;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/chartboost/sdk/Libraries/h;->f:Lcom/chartboost/sdk/Libraries/h;

    if-nez v0, :cond_0

    .line 341
    new-instance v0, Lcom/chartboost/sdk/Libraries/h;

    const-string v2, "CBVideoCompletion"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Lcom/chartboost/sdk/Libraries/h;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/chartboost/sdk/Libraries/h;->f:Lcom/chartboost/sdk/Libraries/h;

    .line 343
    :cond_0
    sget-object v0, Lcom/chartboost/sdk/Libraries/h;->f:Lcom/chartboost/sdk/Libraries/h;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 340
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private d()Z
    .locals 2

    .prologue
    .line 302
    iget-boolean v0, p0, Lcom/chartboost/sdk/Libraries/h;->e:Z

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 304
    const/4 v0, 0x1

    .line 306
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized a(Ljava/io/File;)Lcom/chartboost/sdk/Libraries/e$a;
    .locals 4

    .prologue
    .line 193
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/h;->d:Ljava/io/File;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/chartboost/sdk/Libraries/h;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 194
    sget-object v0, Lcom/chartboost/sdk/Libraries/e$a;->a:Lcom/chartboost/sdk/Libraries/e$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
    :goto_0
    monitor-exit p0

    return-object v0

    .line 195
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/h;->b:Ljava/io/File;

    if-nez v0, :cond_1

    .line 196
    sget-object v0, Lcom/chartboost/sdk/Libraries/e$a;->a:Lcom/chartboost/sdk/Libraries/e$a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 198
    :cond_1
    const/4 v1, 0x0

    .line 200
    :try_start_2
    new-instance v0, Ljava/lang/String;

    invoke-static {p1}, Lcom/chartboost/sdk/impl/cc;->b(Ljava/io/File;)[B

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 204
    :goto_1
    :try_start_3
    invoke-static {v0}, Lcom/chartboost/sdk/Libraries/e$a;->j(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v0

    goto :goto_0

    .line 201
    :catch_0
    move-exception v0

    .line 202
    const-string v2, "CBFileCache"

    const-string v3, "Error loading cache from disk"

    invoke-static {v2, v3, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v0, v1

    goto :goto_1

    .line 193
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;
    .locals 2

    .prologue
    .line 175
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/h;->d:Ljava/io/File;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/chartboost/sdk/Libraries/h;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 176
    sget-object v0, Lcom/chartboost/sdk/Libraries/e$a;->a:Lcom/chartboost/sdk/Libraries/e$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    :goto_0
    monitor-exit p0

    return-object v0

    .line 177
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/h;->b:Ljava/io/File;

    if-eqz v0, :cond_1

    if-nez p1, :cond_2

    .line 178
    :cond_1
    sget-object v0, Lcom/chartboost/sdk/Libraries/e$a;->a:Lcom/chartboost/sdk/Libraries/e$a;

    goto :goto_0

    .line 180
    :cond_2
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/chartboost/sdk/Libraries/h;->b:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 181
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_3

    .line 182
    sget-object v0, Lcom/chartboost/sdk/Libraries/e$a;->a:Lcom/chartboost/sdk/Libraries/e$a;

    goto :goto_0

    .line 184
    :cond_3
    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/Libraries/h;->a(Ljava/io/File;)Lcom/chartboost/sdk/Libraries/e$a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 175
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Ljava/io/File;Lcom/chartboost/sdk/Libraries/e$a;)Ljava/io/File;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 112
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/chartboost/sdk/Libraries/h;->d:Ljava/io/File;

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/chartboost/sdk/Libraries/h;->d()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    .line 126
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    .line 114
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/chartboost/sdk/Libraries/h;->b:Ljava/io/File;

    if-eqz v1, :cond_0

    .line 117
    if-nez p1, :cond_2

    .line 118
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/chartboost/sdk/Libraries/h;->b:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 122
    :goto_1
    :try_start_2
    invoke-virtual {p2}, Lcom/chartboost/sdk/Libraries/e$a;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chartboost/sdk/impl/cc;->a(Ljava/io/File;[B)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 123
    :catch_0
    move-exception v1

    .line 124
    :try_start_3
    const-string v2, "CBFileCache"

    const-string v3, "IOException attempting to write cache to disk"

    invoke-static {v2, v3, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 112
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    move-object v0, p1

    goto :goto_1
.end method

.method public declared-synchronized a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/e$a;)Ljava/io/File;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 94
    monitor-enter p0

    .line 95
    :try_start_0
    iget-object v1, p0, Lcom/chartboost/sdk/Libraries/h;->d:Ljava/io/File;

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/chartboost/sdk/Libraries/h;->d()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    .line 103
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    .line 97
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/chartboost/sdk/Libraries/h;->b:Ljava/io/File;

    if-eqz v1, :cond_0

    .line 98
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 99
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/chartboost/sdk/Libraries/h;->b:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    :cond_2
    invoke-virtual {p0, v0, p2}, Lcom/chartboost/sdk/Libraries/h;->a(Ljava/io/File;Lcom/chartboost/sdk/Libraries/e$a;)Ljava/io/File;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 94
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Ljava/io/File;[B)V
    .locals 4

    .prologue
    .line 153
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/h;->d:Ljava/io/File;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/chartboost/sdk/Libraries/h;->d()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 167
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 155
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/h;->b:Ljava/io/File;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 158
    if-nez p1, :cond_2

    .line 159
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/h;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 163
    :cond_2
    :try_start_2
    invoke-static {p1, p2}, Lcom/chartboost/sdk/impl/cc;->a(Ljava/io/File;[B)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 164
    :catch_0
    move-exception v0

    .line 165
    :try_start_3
    const-string v1, "CBFileCache"

    const-string v2, "IOException attempting to write cache to disk"

    invoke-static {v1, v2, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 153
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Ljava/lang/String;[B)V
    .locals 2

    .prologue
    .line 135
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/h;->d:Ljava/io/File;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/chartboost/sdk/Libraries/h;->d()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 145
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 137
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/h;->b:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 138
    const/4 v0, 0x0

    .line 139
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 140
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/chartboost/sdk/Libraries/h;->b:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    :cond_2
    invoke-virtual {p0, v0, p2}, Lcom/chartboost/sdk/Libraries/h;->a(Ljava/io/File;[B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 135
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a()[Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 243
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/chartboost/sdk/Libraries/h;->d:Ljava/io/File;

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/chartboost/sdk/Libraries/h;->d()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    .line 247
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    .line 245
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/chartboost/sdk/Libraries/h;->b:Ljava/io/File;

    if-eqz v1, :cond_0

    .line 247
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/h;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 243
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 273
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/chartboost/sdk/Libraries/h;->d:Ljava/io/File;

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/chartboost/sdk/Libraries/h;->d()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    .line 296
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 275
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/chartboost/sdk/Libraries/h;->b:Ljava/io/File;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_0

    .line 279
    :try_start_2
    iget-object v1, p0, Lcom/chartboost/sdk/Libraries/h;->d:Ljava/io/File;

    if-eqz v1, :cond_2

    .line 280
    iget-object v1, p0, Lcom/chartboost/sdk/Libraries/h;->d:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 281
    if-eqz v2, :cond_2

    .line 282
    array-length v3, v2

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_2

    aget-object v4, v2, v1

    .line 283
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 282
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 286
    :cond_2
    iget-object v1, p0, Lcom/chartboost/sdk/Libraries/h;->c:Ljava/io/File;

    if-eqz v1, :cond_0

    .line 287
    iget-object v1, p0, Lcom/chartboost/sdk/Libraries/h;->c:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 288
    if-eqz v1, :cond_0

    .line 289
    array-length v2, v1

    :goto_2
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 290
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 289
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 293
    :catch_0
    move-exception v0

    .line 294
    :try_start_3
    const-string v0, "CBFileCache"

    const-string v1, "Error while clearing the file cache"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 273
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 265
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 266
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/Libraries/h;->d(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/Libraries/h;->c(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 267
    :cond_0
    monitor-exit p0

    return-void

    .line 265
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(Ljava/io/File;)[B
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 212
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/chartboost/sdk/Libraries/h;->d:Ljava/io/File;

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/chartboost/sdk/Libraries/h;->d()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    .line 223
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    .line 214
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/chartboost/sdk/Libraries/h;->b:Ljava/io/File;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_0

    .line 219
    :try_start_2
    invoke-static {p1}, Lcom/chartboost/sdk/impl/cc;->b(Ljava/io/File;)[B
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 220
    :catch_0
    move-exception v1

    .line 221
    :try_start_3
    const-string v2, "CBFileCache"

    const-string v3, "Error loading cache from disk"

    invoke-static {v2, v3, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 212
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c(Ljava/io/File;)V
    .locals 1

    .prologue
    .line 256
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 257
    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 258
    :cond_0
    monitor-exit p0

    return-void

    .line 256
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c(Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 312
    iget-object v1, p0, Lcom/chartboost/sdk/Libraries/h;->d:Ljava/io/File;

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/chartboost/sdk/Libraries/h;->d()Z

    move-result v1

    if-nez v1, :cond_1

    .line 317
    :cond_0
    :goto_0
    return v0

    .line 314
    :cond_1
    iget-object v1, p0, Lcom/chartboost/sdk/Libraries/h;->b:Ljava/io/File;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 316
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/chartboost/sdk/Libraries/h;->b:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    goto :goto_0
.end method

.method public d(Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 322
    iget-object v1, p0, Lcom/chartboost/sdk/Libraries/h;->d:Ljava/io/File;

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/chartboost/sdk/Libraries/h;->d()Z

    move-result v1

    if-nez v1, :cond_1

    .line 327
    :cond_0
    :goto_0
    return-object v0

    .line 324
    :cond_1
    iget-object v1, p0, Lcom/chartboost/sdk/Libraries/h;->b:Ljava/io/File;

    if-eqz v1, :cond_0

    .line 326
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/chartboost/sdk/Libraries/h;->b:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
