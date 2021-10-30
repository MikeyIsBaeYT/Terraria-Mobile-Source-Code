.class final Lcom/flurry/android/ck;
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
    .line 2439
    iput-object p1, p0, Lcom/flurry/android/ck;->du:Lcom/flurry/android/FlurryAds;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private varargs aw()Ljava/lang/Void;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 2446
    :try_start_0
    iget-object v0, p0, Lcom/flurry/android/ck;->du:Lcom/flurry/android/FlurryAds;

    invoke-static {v0}, Lcom/flurry/android/FlurryAds;->d(Lcom/flurry/android/FlurryAds;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    if-eqz v0, :cond_0

    .line 2452
    :try_start_1
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/flurry/android/ck;->du:Lcom/flurry/android/FlurryAds;

    invoke-static {v1}, Lcom/flurry/android/FlurryAds;->d(Lcom/flurry/android/FlurryAds;)Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 2453
    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2454
    :try_start_2
    iget-object v0, p0, Lcom/flurry/android/ck;->du:Lcom/flurry/android/FlurryAds;

    invoke-virtual {v0, v1}, Lcom/flurry/android/FlurryAds;->a(Ljava/io/DataInputStream;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2462
    :try_start_3
    invoke-static {v1}, Lcom/flurry/android/fl;->a(Ljava/io/Closeable;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    .line 2467
    :goto_0
    :try_start_4
    iget-object v0, p0, Lcom/flurry/android/ck;->du:Lcom/flurry/android/FlurryAds;

    invoke-static {v0}, Lcom/flurry/android/FlurryAds;->e(Lcom/flurry/android/FlurryAds;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2469
    iget-object v0, p0, Lcom/flurry/android/ck;->du:Lcom/flurry/android/FlurryAds;

    invoke-static {v0}, Lcom/flurry/android/FlurryAds;->d(Lcom/flurry/android/FlurryAds;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    move-result v0

    .line 2470
    if-nez v0, :cond_0

    .line 2501
    :cond_0
    :goto_1
    return-object v2

    .line 2456
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 2458
    :goto_2
    :try_start_5
    sget-object v3, Lcom/flurry/android/FlurryAds;->p:Ljava/lang/String;

    const-string v4, "Error when loading persistent freqCap file"

    invoke-static {v3, v4, v0}, Lcom/flurry/android/cy;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 2462
    :try_start_6
    invoke-static {v1}, Lcom/flurry/android/fl;->a(Ljava/io/Closeable;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_0

    .line 2498
    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 2462
    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_3
    :try_start_7
    invoke-static {v1}, Lcom/flurry/android/fl;->a(Ljava/io/Closeable;)V

    throw v0
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1

    .line 2481
    :cond_1
    :try_start_8
    iget-object v0, p0, Lcom/flurry/android/ck;->du:Lcom/flurry/android/FlurryAds;

    iget-object v0, v0, Lcom/flurry/android/FlurryAds;->ho:Lcom/flurry/android/ca;

    invoke-virtual {v0}, Lcom/flurry/android/ca;->as()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_1

    .line 2484
    :catch_2
    move-exception v0

    .line 2486
    :try_start_9
    sget-object v1, Lcom/flurry/android/FlurryAds;->p:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v1, v3, v0}, Lcom/flurry/android/cy;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_1

    goto :goto_1

    .line 2462
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 2456
    :catch_3
    move-exception v0

    goto :goto_2
.end method


# virtual methods
.method protected final bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2439
    invoke-direct {p0}, Lcom/flurry/android/ck;->aw()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
