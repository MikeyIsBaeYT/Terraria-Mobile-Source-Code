.class final Lcom/flurry/android/cj;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic du:Lcom/flurry/android/FlurryAds;


# direct methods
.method constructor <init>(Lcom/flurry/android/FlurryAds;)V
    .locals 0

    .prologue
    .line 2335
    iput-object p1, p0, Lcom/flurry/android/cj;->du:Lcom/flurry/android/FlurryAds;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private varargs aw()Ljava/lang/Void;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 2342
    :try_start_0
    iget-object v0, p0, Lcom/flurry/android/cj;->du:Lcom/flurry/android/FlurryAds;

    invoke-static {v0}, Lcom/flurry/android/FlurryAds;->a(Lcom/flurry/android/FlurryAds;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    if-eqz v0, :cond_0

    .line 2347
    :try_start_1
    new-instance v1, Ljava/io/DataInputStream;

    new-instance v0, Ljava/io/FileInputStream;

    iget-object v3, p0, Lcom/flurry/android/cj;->du:Lcom/flurry/android/FlurryAds;

    invoke-static {v3}, Lcom/flurry/android/FlurryAds;->a(Lcom/flurry/android/FlurryAds;)Ljava/io/File;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2348
    :try_start_2
    invoke-static {v1}, Lcom/flurry/android/cg;->a(Ljava/io/DataInput;)Ljava/util/List;

    move-result-object v0

    .line 2349
    iget-object v3, p0, Lcom/flurry/android/cj;->du:Lcom/flurry/android/FlurryAds;

    iget-object v3, v3, Lcom/flurry/android/FlurryAds;->hv:Ljava/util/List;

    monitor-enter v3
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 2351
    :try_start_3
    iget-object v4, p0, Lcom/flurry/android/cj;->du:Lcom/flurry/android/FlurryAds;

    iget-object v4, v4, Lcom/flurry/android/FlurryAds;->hv:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2352
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2353
    :try_start_4
    iget-object v0, p0, Lcom/flurry/android/cj;->du:Lcom/flurry/android/FlurryAds;

    invoke-static {v0}, Lcom/flurry/android/FlurryAds;->b(Lcom/flurry/android/FlurryAds;)Z
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 2361
    :try_start_5
    invoke-static {v1}, Lcom/flurry/android/fl;->a(Ljava/io/Closeable;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    .line 2366
    :goto_0
    :try_start_6
    iget-object v0, p0, Lcom/flurry/android/cj;->du:Lcom/flurry/android/FlurryAds;

    invoke-static {v0}, Lcom/flurry/android/FlurryAds;->c(Lcom/flurry/android/FlurryAds;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2368
    iget-object v0, p0, Lcom/flurry/android/cj;->du:Lcom/flurry/android/FlurryAds;

    invoke-static {v0}, Lcom/flurry/android/FlurryAds;->a(Lcom/flurry/android/FlurryAds;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2

    move-result v0

    .line 2369
    if-nez v0, :cond_0

    .line 2396
    :cond_0
    :goto_1
    return-object v2

    .line 2352
    :catchall_0
    move-exception v0

    :try_start_7
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    throw v0
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 2355
    :catch_0
    move-exception v0

    .line 2357
    :goto_2
    :try_start_9
    sget-object v3, Lcom/flurry/android/FlurryAds;->p:Ljava/lang/String;

    const-string v4, "Error when loading ad log data: "

    invoke-static {v3, v4, v0}, Lcom/flurry/android/cy;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 2361
    :try_start_a
    invoke-static {v1}, Lcom/flurry/android/fl;->a(Ljava/io/Closeable;)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_1

    goto :goto_0

    .line 2393
    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 2361
    :catchall_1
    move-exception v0

    move-object v1, v2

    :goto_3
    :try_start_b
    invoke-static {v1}, Lcom/flurry/android/fl;->a(Ljava/io/Closeable;)V

    throw v0

    .line 2379
    :catch_2
    move-exception v0

    .line 2381
    sget-object v1, Lcom/flurry/android/FlurryAds;->p:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v1, v3, v0}, Lcom/flurry/android/cy;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_1

    goto :goto_1

    .line 2361
    :catchall_2
    move-exception v0

    goto :goto_3

    .line 2355
    :catch_3
    move-exception v0

    move-object v1, v2

    goto :goto_2
.end method


# virtual methods
.method protected final bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2335
    invoke-direct {p0}, Lcom/flurry/android/cj;->aw()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
