.class public Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;
.super Ljava/lang/Object;
.source "DownloadThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$1;,
        Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$RetryDownload;,
        Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;,
        Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;,
        Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mDB:Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;

.field private mInfo:Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;

.field private final mNotification:Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;

.field private mService:Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;

.field private mUserAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;)V
    .locals 2
    .param p1, "info"    # Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;
    .param p2, "service"    # Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;
    .param p3, "notification"    # Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p2, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mContext:Landroid/content/Context;

    .line 63
    iput-object p1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mInfo:Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;

    .line 64
    iput-object p2, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mService:Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;

    .line 65
    iput-object p3, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mNotification:Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;

    .line 66
    invoke-static {p2}, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->getDB(Landroid/content/Context;)Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mDB:Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "APKXDL (Linux; U; Android "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mUserAgent:Ljava/lang/String;

    .line 71
    return-void
.end method

.method private addRequestHeaders(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;Lorg/apache/http/client/methods/HttpGet;)V
    .locals 3
    .param p1, "innerState"    # Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;
    .param p2, "request"    # Lorg/apache/http/client/methods/HttpGet;

    .prologue
    .line 840
    iget-boolean v0, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;->mContinuingDownload:Z

    if-eqz v0, :cond_1

    .line 841
    iget-object v0, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;->mHeaderETag:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 842
    const-string v0, "If-Match"

    iget-object v1, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;->mHeaderETag:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 844
    :cond_0
    const-string v0, "Range"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bytes="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;->mBytesSoFar:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 846
    :cond_1
    return-void
.end method

.method private cannotResume(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;)Z
    .locals 1
    .param p1, "innerState"    # Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;

    .prologue
    .line 576
    iget v0, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;->mBytesSoFar:I

    if-lez v0, :cond_0

    iget-object v0, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;->mHeaderETag:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkConnectivity(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;)V
    .locals 3
    .param p1, "state"    # Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;
        }
    .end annotation

    .prologue
    const/16 v2, 0xc3

    .line 342
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mService:Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;

    iget-object v1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mDB:Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;

    invoke-virtual {v0, v1}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->getNetworkAvailabilityState(Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 359
    :pswitch_0
    return-void

    .line 347
    :pswitch_1
    new-instance v0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;

    const-string v1, "waiting for network to return"

    invoke-direct {v0, p0, v2, v1}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;-><init>(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;ILjava/lang/String;)V

    throw v0

    .line 350
    :pswitch_2
    new-instance v0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;

    const/16 v1, 0xc4

    const-string v2, "waiting for wifi or for download over cellular to be authorized"

    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;-><init>(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;ILjava/lang/String;)V

    throw v0

    .line 354
    :pswitch_3
    new-instance v0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;

    const-string v1, "roaming is not allowed"

    invoke-direct {v0, p0, v2, v1}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;-><init>(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;ILjava/lang/String;)V

    throw v0

    .line 357
    :pswitch_4
    new-instance v0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;

    const/16 v1, 0xc5

    const-string v2, "waiting for wifi"

    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;-><init>(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;ILjava/lang/String;)V

    throw v0

    .line 342
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private checkPausedOrCanceled(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;)V
    .locals 4
    .param p1, "state"    # Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;
        }
    .end annotation

    .prologue
    .line 476
    iget-object v1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mService:Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;

    invoke-virtual {v1}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->getControl()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 477
    iget-object v1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mService:Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;

    invoke-virtual {v1}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->getStatus()I

    move-result v0

    .line 478
    .local v0, "status":I
    packed-switch v0, :pswitch_data_0

    .line 484
    .end local v0    # "status":I
    :cond_0
    return-void

    .line 480
    .restart local v0    # "status":I
    :pswitch_0
    new-instance v1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;

    iget-object v2, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mService:Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;

    invoke-virtual {v2}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->getStatus()I

    move-result v2

    const-string v3, "download paused"

    invoke-direct {v1, p0, v2, v3}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;-><init>(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;ILjava/lang/String;)V

    throw v1

    .line 478
    nop

    :pswitch_data_0
    .packed-switch 0xc1
        :pswitch_0
    .end packed-switch
.end method

.method private cleanupDestination(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;I)V
    .locals 2
    .param p1, "state"    # Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;
    .param p2, "finalStatus"    # I

    .prologue
    .line 417
    invoke-direct {p0, p1}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->closeDestination(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;)V

    .line 418
    iget-object v0, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mFilename:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {p2}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->isStatusError(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 419
    new-instance v0, Ljava/io/File;

    iget-object v1, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mFilename:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 420
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mFilename:Ljava/lang/String;

    .line 422
    :cond_0
    return-void
.end method

.method private closeDestination(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;)V
    .locals 4
    .param p1, "state"    # Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;

    .prologue
    .line 459
    :try_start_0
    iget-object v1, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mStream:Ljava/io/FileOutputStream;

    if-eqz v1, :cond_0

    .line 460
    iget-object v1, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mStream:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 461
    const/4 v1, 0x0

    iput-object v1, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mStream:Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 469
    :cond_0
    :goto_0
    return-void

    .line 463
    :catch_0
    move-exception v0

    .line 465
    .local v0, "ex":Ljava/io/IOException;
    const-string v1, "Octarine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception when closing the file after download : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private executeDownload(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;Lcom/google/android/vending/expansion/downloader/impl/AndroidHttpClient;Lorg/apache/http/client/methods/HttpGet;)V
    .locals 7
    .param p1, "state"    # Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;
    .param p2, "client"    # Lcom/google/android/vending/expansion/downloader/impl/AndroidHttpClient;
    .param p3, "request"    # Lorg/apache/http/client/methods/HttpGet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;,
            Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$RetryDownload;
        }
    .end annotation

    .prologue
    .line 310
    new-instance v2, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;

    const/4 v4, 0x0

    invoke-direct {v2, v4}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;-><init>(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$1;)V

    .line 311
    .local v2, "innerState":Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;
    const/16 v4, 0x1000

    new-array v0, v4, [B

    .line 313
    .local v0, "data":[B
    invoke-direct {p0, p1}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->checkPausedOrCanceled(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;)V

    .line 315
    invoke-direct {p0, p1, v2}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->setupDestinationFile(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;)V

    .line 316
    invoke-direct {p0, v2, p3}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->addRequestHeaders(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;Lorg/apache/http/client/methods/HttpGet;)V

    .line 320
    invoke-direct {p0, p1}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->checkConnectivity(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;)V

    .line 322
    iget-object v4, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mNotification:Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->onDownloadStateChanged(I)V

    .line 323
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->sendRequest(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;Lcom/google/android/vending/expansion/downloader/impl/AndroidHttpClient;Lorg/apache/http/client/methods/HttpGet;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    .line 324
    .local v3, "response":Lorg/apache/http/HttpResponse;
    invoke-direct {p0, p1, v2, v3}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->handleExceptionalStatus(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;Lorg/apache/http/HttpResponse;)V

    .line 328
    const-string v4, "Octarine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ExpansionDownloader: received response for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mInfo:Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;

    iget-object v6, v6, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mUri:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    invoke-direct {p0, p1, v2, v3}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->processResponseHeaders(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;Lorg/apache/http/HttpResponse;)V

    .line 332
    invoke-direct {p0, p1, v3}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->openResponseEntity(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;Lorg/apache/http/HttpResponse;)Ljava/io/InputStream;

    move-result-object v1

    .line 333
    .local v1, "entityStream":Ljava/io/InputStream;
    iget-object v4, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mNotification:Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->onDownloadStateChanged(I)V

    .line 334
    invoke-direct {p0, p1, v2, v0, v1}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->transferData(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;[BLjava/io/InputStream;)V

    .line 335
    return-void
.end method

.method private finalizeDestinationFile(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;)V
    .locals 8
    .param p1, "state"    # Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;
        }
    .end annotation

    .prologue
    .line 394
    invoke-direct {p0, p1}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->syncDestination(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;)V

    .line 395
    iget-object v3, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mFilename:Ljava/lang/String;

    .line 396
    .local v3, "tempFilename":Ljava/lang/String;
    iget-object v4, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mService:Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;

    iget-object v5, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mInfo:Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;

    iget-object v5, v5, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mFileName:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/google/android/vending/expansion/downloader/Helpers;->generateSaveFileName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 397
    .local v1, "finalFilename":Ljava/lang/String;
    iget-object v4, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mFilename:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 398
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 399
    .local v2, "startFile":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 400
    .local v0, "destFile":Ljava/io/File;
    iget-object v4, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mInfo:Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;

    iget-wide v4, v4, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mTotalBytes:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mInfo:Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;

    iget-wide v4, v4, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mCurrentBytes:J

    iget-object v6, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mInfo:Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;

    iget-wide v6, v6, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mTotalBytes:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    .line 401
    invoke-virtual {v2, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 402
    new-instance v4, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;

    const/16 v5, 0x1ec

    const-string v6, "unable to finalize destination file"

    invoke-direct {v4, p0, v5, v6}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;-><init>(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;ILjava/lang/String;)V

    throw v4

    .line 406
    :cond_0
    new-instance v4, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;

    const/16 v5, 0x1e7

    const-string v6, "file delivered with incorrect size. probably due to network not browser configured"

    invoke-direct {v4, p0, v5, v6}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;-><init>(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;ILjava/lang/String;)V

    throw v4

    .line 410
    .end local v0    # "destFile":Ljava/io/File;
    .end local v2    # "startFile":Ljava/io/File;
    :cond_1
    return-void
.end method

.method private getFinalStatusForHttpError(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;)I
    .locals 3
    .param p1, "state"    # Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;

    .prologue
    const/4 v2, 0x1

    .line 901
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mService:Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;

    iget-object v1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mDB:Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;

    invoke-virtual {v0, v1}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->getNetworkAvailabilityState(Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;)I

    move-result v0

    if-eq v0, v2, :cond_0

    .line 902
    const/16 v0, 0xc3

    .line 908
    :goto_0
    return v0

    .line 903
    :cond_0
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mInfo:Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;

    iget v0, v0, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mNumFailed:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_1

    .line 904
    iput-boolean v2, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mCountRetry:Z

    .line 905
    const/16 v0, 0xc2

    goto :goto_0

    .line 907
    :cond_1
    const-string v0, "Octarine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reached max retries for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mInfo:Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;

    iget v2, v2, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mNumFailed:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    const/16 v0, 0x1ef

    goto :goto_0
.end method

.method private handleEndOfStream(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;)V
    .locals 4
    .param p1, "state"    # Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;
    .param p2, "innerState"    # Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;
        }
    .end annotation

    .prologue
    .line 555
    iget-object v1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mInfo:Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;

    iget v2, p2, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;->mBytesSoFar:I

    int-to-long v2, v2

    iput-wide v2, v1, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mCurrentBytes:J

    .line 560
    iget-object v1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mDB:Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;

    iget-object v2, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mInfo:Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;

    invoke-virtual {v1, v2}, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->updateDownload(Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;)Z

    .line 562
    iget-object v1, p2, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;->mHeaderContentLength:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget v1, p2, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;->mBytesSoFar:I

    iget-object v2, p2, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;->mHeaderContentLength:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    .line 564
    .local v0, "lengthMismatched":Z
    :goto_0
    if-eqz v0, :cond_2

    .line 565
    invoke-direct {p0, p2}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->cannotResume(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 566
    new-instance v1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;

    const/16 v2, 0x1e9

    const-string v3, "mismatched content length"

    invoke-direct {v1, p0, v2, v3}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;-><init>(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;ILjava/lang/String;)V

    throw v1

    .line 562
    .end local v0    # "lengthMismatched":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 569
    .restart local v0    # "lengthMismatched":Z
    :cond_1
    new-instance v1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;

    invoke-direct {p0, p1}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->getFinalStatusForHttpError(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;)I

    move-result v2

    const-string v3, "closed socket before end of file"

    invoke-direct {v1, p0, v2, v3}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;-><init>(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;ILjava/lang/String;)V

    throw v1

    .line 573
    :cond_2
    return-void
.end method

.method private handleExceptionalStatus(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;Lorg/apache/http/HttpResponse;)V
    .locals 4
    .param p1, "state"    # Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;
    .param p2, "innerState"    # Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;
    .param p3, "response"    # Lorg/apache/http/HttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;,
            Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$RetryDownload;
        }
    .end annotation

    .prologue
    .line 760
    invoke-interface {p3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    .line 761
    .local v1, "statusCode":I
    const/16 v2, 0x1f7

    if-ne v1, v2, :cond_0

    iget-object v2, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mInfo:Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;

    iget v2, v2, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mNumFailed:I

    const/4 v3, 0x5

    if-ge v2, v3, :cond_0

    .line 762
    invoke-direct {p0, p1, p3}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->handleServiceUnavailable(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;Lorg/apache/http/HttpResponse;)V

    .line 764
    :cond_0
    const/16 v2, 0x12d

    if-eq v1, v2, :cond_1

    const/16 v2, 0x12e

    if-eq v1, v2, :cond_1

    const/16 v2, 0x12f

    if-eq v1, v2, :cond_1

    const/16 v2, 0x133

    if-ne v1, v2, :cond_2

    .line 765
    :cond_1
    invoke-direct {p0, p1, p3, v1}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->handleRedirect(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;Lorg/apache/http/HttpResponse;I)V

    .line 768
    :cond_2
    iget-boolean v2, p2, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;->mContinuingDownload:Z

    if-eqz v2, :cond_3

    const/16 v0, 0xce

    .line 770
    .local v0, "expectedStatus":I
    :goto_0
    if-eq v1, v0, :cond_4

    .line 771
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->handleOtherStatus(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;I)V

    .line 776
    :goto_1
    return-void

    .line 768
    .end local v0    # "expectedStatus":I
    :cond_3
    const/16 v0, 0xc8

    goto :goto_0

    .line 774
    .restart local v0    # "expectedStatus":I
    :cond_4
    const/4 v2, 0x0

    iput v2, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mRedirectCount:I

    goto :goto_1
.end method

.method private handleOtherStatus(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;I)V
    .locals 4
    .param p1, "state"    # Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;
    .param p2, "innerState"    # Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;
    .param p3, "statusCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;
        }
    .end annotation

    .prologue
    .line 784
    invoke-static {p3}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->isStatusError(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 785
    move v0, p3

    .line 793
    .local v0, "finalStatus":I
    :goto_0
    new-instance v1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v0, v2}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;-><init>(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;ILjava/lang/String;)V

    throw v1

    .line 786
    .end local v0    # "finalStatus":I
    :cond_0
    const/16 v1, 0x12c

    if-lt p3, v1, :cond_1

    const/16 v1, 0x190

    if-ge p3, v1, :cond_1

    .line 787
    const/16 v0, 0x1ed

    .restart local v0    # "finalStatus":I
    goto :goto_0

    .line 788
    .end local v0    # "finalStatus":I
    :cond_1
    iget-boolean v1, p2, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;->mContinuingDownload:Z

    if-eqz v1, :cond_2

    const/16 v1, 0xc8

    if-ne p3, v1, :cond_2

    .line 789
    const/16 v0, 0x1e9

    .restart local v0    # "finalStatus":I
    goto :goto_0

    .line 791
    .end local v0    # "finalStatus":I
    :cond_2
    const/16 v0, 0x1ee

    .restart local v0    # "finalStatus":I
    goto :goto_0
.end method

.method private handleRedirect(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;Lorg/apache/http/HttpResponse;I)V
    .locals 6
    .param p1, "state"    # Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;
    .param p2, "response"    # Lorg/apache/http/HttpResponse;
    .param p3, "statusCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;,
            Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$RetryDownload;
        }
    .end annotation

    .prologue
    .line 804
    iget v3, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mRedirectCount:I

    const/4 v4, 0x5

    if-lt v3, v4, :cond_0

    .line 805
    new-instance v3, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;

    const/16 v4, 0x1f1

    const-string v5, "too many redirects"

    invoke-direct {v3, p0, v4, v5}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;-><init>(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;ILjava/lang/String;)V

    throw v3

    .line 807
    :cond_0
    const-string v3, "Location"

    invoke-interface {p2, v3}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v1

    .line 808
    .local v1, "header":Lorg/apache/http/Header;
    if-nez v1, :cond_1

    .line 809
    return-void

    .line 817
    :cond_1
    :try_start_0
    new-instance v3, Ljava/net/URI;

    iget-object v4, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mInfo:Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;

    iget-object v4, v4, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mUri:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/net/URI;

    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/net/URI;->resolve(Ljava/net/URI;)Ljava/net/URI;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URI;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 826
    .local v2, "newUri":Ljava/lang/String;
    iget v3, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mRedirectCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mRedirectCount:I

    .line 827
    iput-object v2, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mRequestUri:Ljava/lang/String;

    .line 828
    const/16 v3, 0x12d

    if-eq p3, v3, :cond_2

    const/16 v3, 0x12f

    if-ne p3, v3, :cond_3

    .line 831
    :cond_2
    iput-object v2, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mNewUri:Ljava/lang/String;

    .line 833
    :cond_3
    new-instance v3, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$RetryDownload;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$RetryDownload;-><init>(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$1;)V

    throw v3

    .line 818
    .end local v2    # "newUri":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 820
    .local v0, "ex":Ljava/net/URISyntaxException;
    const-string v3, "Octarine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Couldn\'t resolve redirect URI "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mInfo:Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;

    iget-object v5, v5, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mUri:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    new-instance v3, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;

    const/16 v4, 0x1ef

    const-string v5, "Couldn\'t resolve redirect URI"

    invoke-direct {v3, p0, v4, v5}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;-><init>(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;ILjava/lang/String;)V

    throw v3
.end method

.method private handleServiceUnavailable(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;Lorg/apache/http/HttpResponse;)V
    .locals 4
    .param p1, "state"    # Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;
    .param p2, "response"    # Lorg/apache/http/HttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;
        }
    .end annotation

    .prologue
    const v3, 0x15180

    const/16 v2, 0x1e

    .line 856
    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mCountRetry:Z

    .line 857
    const-string v1, "Retry-After"

    invoke-interface {p2, v1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    .line 858
    .local v0, "header":Lorg/apache/http/Header;
    if-eqz v0, :cond_0

    .line 863
    :try_start_0
    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mRetryAfter:I

    .line 864
    iget v1, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mRetryAfter:I

    if-gez v1, :cond_1

    .line 865
    const/4 v1, 0x0

    iput v1, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mRetryAfter:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 879
    :cond_0
    :goto_0
    new-instance v1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;

    const/16 v2, 0xc2

    const-string v3, "got 503 Service Unavailable, will retry later"

    invoke-direct {v1, p0, v2, v3}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;-><init>(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;ILjava/lang/String;)V

    throw v1

    .line 867
    :cond_1
    :try_start_1
    iget v1, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mRetryAfter:I

    if-ge v1, v2, :cond_3

    .line 868
    const/16 v1, 0x1e

    iput v1, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mRetryAfter:I

    .line 872
    :cond_2
    :goto_1
    iget v1, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mRetryAfter:I

    sget-object v2, Lcom/google/android/vending/expansion/downloader/Helpers;->sRandom:Ljava/util/Random;

    const/16 v3, 0x1f

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mRetryAfter:I

    .line 873
    iget v1, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mRetryAfter:I

    mul-int/lit16 v1, v1, 0x3e8

    iput v1, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mRetryAfter:I

    goto :goto_0

    .line 875
    :catch_0
    move-exception v1

    goto :goto_0

    .line 869
    :cond_3
    iget v1, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mRetryAfter:I

    if-le v1, v3, :cond_2

    .line 870
    const v1, 0x15180

    iput v1, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mRetryAfter:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private static final isLocalHost(Ljava/lang/String;)Z
    .locals 4
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 178
    if-nez p0, :cond_1

    .line 200
    :cond_0
    :goto_0
    return v2

    .line 183
    :cond_1
    :try_start_0
    invoke-static {p0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    .line 184
    .local v1, "uri":Ljava/net/URI;
    invoke-virtual {v1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 185
    .local v0, "host":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 190
    const-string v3, "localhost"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "127.0.0.1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "[::1]"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    .line 193
    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    .line 196
    .end local v0    # "host":Ljava/lang/String;
    .end local v1    # "uri":Ljava/net/URI;
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private logNetworkState()V
    .locals 4

    .prologue
    .line 625
    const-string v1, "Octarine"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Net "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mService:Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;

    iget-object v3, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mDB:Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;

    invoke-virtual {v0, v3}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->getNetworkAvailabilityState(Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;)I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    const-string v0, "Up"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    return-void

    .line 625
    :cond_0
    const-string v0, "Down"

    goto :goto_0
.end method

.method private notifyDownloadCompleted(IZIIZLjava/lang/String;)V
    .locals 1
    .param p1, "status"    # I
    .param p2, "countRetry"    # Z
    .param p3, "retryAfter"    # I
    .param p4, "redirectCount"    # I
    .param p5, "gotData"    # Z
    .param p6, "filename"    # Ljava/lang/String;

    .prologue
    .line 968
    invoke-direct/range {p0 .. p6}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->updateDownloadDatabase(IZIIZLjava/lang/String;)V

    .line 969
    invoke-static {p1}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->isStatusCompleted(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 973
    :cond_0
    return-void
.end method

.method private openResponseEntity(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;Lorg/apache/http/HttpResponse;)Ljava/io/InputStream;
    .locals 5
    .param p1, "state"    # Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;
    .param p2, "response"    # Lorg/apache/http/HttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;
        }
    .end annotation

    .prologue
    .line 615
    :try_start_0
    invoke-interface {p2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 616
    :catch_0
    move-exception v0

    .line 617
    .local v0, "ex":Ljava/io/IOException;
    invoke-direct {p0}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->logNetworkState()V

    .line 618
    new-instance v1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;

    invoke-direct {p0, p1}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->getFinalStatusForHttpError(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;)I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "while getting entity: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3, v0}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;-><init>(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private processResponseHeaders(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;Lorg/apache/http/HttpResponse;)V
    .locals 8
    .param p1, "state"    # Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;
    .param p2, "innerState"    # Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;
    .param p3, "response"    # Lorg/apache/http/HttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;
        }
    .end annotation

    .prologue
    .line 638
    iget-boolean v3, p2, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;->mContinuingDownload:Z

    if-eqz v3, :cond_0

    .line 671
    :goto_0
    return-void

    .line 643
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->readResponseHeaders(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;Lorg/apache/http/HttpResponse;)V

    .line 646
    :try_start_0
    iget-object v3, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mService:Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;

    iget-object v4, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mInfo:Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;

    iget-object v4, v4, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mFileName:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mInfo:Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;

    iget-wide v6, v5, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mTotalBytes:J

    invoke-virtual {v3, v4, v6, v7}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->generateSaveFile(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mFilename:Ljava/lang/String;
    :try_end_0
    .catch Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$GenerateSaveFileError; {:try_start_0 .. :try_end_0} :catch_0

    .line 651
    :try_start_1
    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mFilename:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    iput-object v3, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mStream:Ljava/io/FileOutputStream;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 665
    :cond_1
    :goto_1
    const-string v3, "Octarine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "writing "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mInfo:Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;

    iget-object v5, v5, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mUri:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mFilename:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    invoke-direct {p0, p1, p2}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->updateDatabaseFromHeaders(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;)V

    .line 670
    invoke-direct {p0, p1}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->checkConnectivity(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;)V

    goto :goto_0

    .line 647
    :catch_0
    move-exception v1

    .line 648
    .local v1, "exc":Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$GenerateSaveFileError;
    new-instance v3, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;

    iget v4, v1, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$GenerateSaveFileError;->mStatus:I

    iget-object v5, v1, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$GenerateSaveFileError;->mMessage:Ljava/lang/String;

    invoke-direct {v3, p0, v4, v5}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;-><init>(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;ILjava/lang/String;)V

    throw v3

    .line 652
    .end local v1    # "exc":Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$GenerateSaveFileError;
    :catch_1
    move-exception v1

    .line 654
    .local v1, "exc":Ljava/io/FileNotFoundException;
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mService:Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;

    invoke-static {v3}, Lcom/google/android/vending/expansion/downloader/Helpers;->getSaveFilePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 656
    .local v2, "pathFile":Ljava/io/File;
    :try_start_2
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 657
    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mFilename:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    iput-object v3, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mStream:Ljava/io/FileOutputStream;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    .line 659
    :catch_2
    move-exception v0

    .line 660
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v3, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;

    const/16 v4, 0x1ec

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "while opening destination file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, p0, v4, v5, v1}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;-><init>(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method private readFromResponse(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;[BLjava/io/InputStream;)I
    .locals 6
    .param p1, "state"    # Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;
    .param p2, "innerState"    # Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;
    .param p3, "data"    # [B
    .param p4, "entityStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;
        }
    .end annotation

    .prologue
    .line 590
    :try_start_0
    invoke-virtual {p4, p3}, Ljava/io/InputStream;->read([B)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 591
    :catch_0
    move-exception v0

    .line 592
    .local v0, "ex":Ljava/io/IOException;
    invoke-direct {p0}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->logNetworkState()V

    .line 593
    iget-object v2, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mInfo:Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;

    iget v3, p2, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;->mBytesSoFar:I

    int-to-long v4, v3

    iput-wide v4, v2, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mCurrentBytes:J

    .line 594
    iget-object v2, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mDB:Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;

    iget-object v3, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mInfo:Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;

    invoke-virtual {v2, v3}, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->updateDownload(Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;)Z

    .line 595
    invoke-direct {p0, p2}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->cannotResume(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 596
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "while reading response: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", can\'t resume interrupted download with no ETag"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 598
    .local v1, "message":Ljava/lang/String;
    new-instance v2, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;

    const/16 v3, 0x1e9

    invoke-direct {v2, p0, v3, v1, v0}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;-><init>(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 601
    .end local v1    # "message":Ljava/lang/String;
    :cond_0
    new-instance v2, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;

    invoke-direct {p0, p1}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->getFinalStatusForHttpError(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;)I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "while reading response: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4, v0}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;-><init>(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private readResponseHeaders(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;Lorg/apache/http/HttpResponse;)V
    .locals 9
    .param p1, "state"    # Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;
    .param p2, "innerState"    # Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;
    .param p3, "response"    # Lorg/apache/http/HttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;
        }
    .end annotation

    .prologue
    .line 687
    const-string v6, "Content-Disposition"

    invoke-interface {p3, v6}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v2

    .line 688
    .local v2, "header":Lorg/apache/http/Header;
    if-eqz v2, :cond_0

    .line 689
    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p2, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;->mHeaderContentDisposition:Ljava/lang/String;

    .line 691
    :cond_0
    const-string v6, "Content-Location"

    invoke-interface {p3, v6}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v2

    .line 692
    if-eqz v2, :cond_1

    .line 693
    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p2, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;->mHeaderContentLocation:Ljava/lang/String;

    .line 695
    :cond_1
    const-string v6, "ETag"

    invoke-interface {p3, v6}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v2

    .line 696
    if-eqz v2, :cond_2

    .line 697
    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p2, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;->mHeaderETag:Ljava/lang/String;

    .line 699
    :cond_2
    const/4 v4, 0x0

    .line 700
    .local v4, "headerTransferEncoding":Ljava/lang/String;
    const-string v6, "Transfer-Encoding"

    invoke-interface {p3, v6}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v2

    .line 701
    if-eqz v2, :cond_3

    .line 702
    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 704
    :cond_3
    const/4 v3, 0x0

    .line 705
    .local v3, "headerContentType":Ljava/lang/String;
    const-string v6, "Content-Type"

    invoke-interface {p3, v6}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v2

    .line 706
    if-eqz v2, :cond_4

    .line 707
    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 708
    const-string v6, "application/vnd.android.obb"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 709
    new-instance v6, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;

    const/16 v7, 0x1e7

    const-string v8, "file delivered with incorrect Mime type"

    invoke-direct {v6, p0, v7, v8}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;-><init>(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;ILjava/lang/String;)V

    throw v6

    .line 714
    :cond_4
    if-nez v4, :cond_5

    .line 715
    const-string v6, "Content-Length"

    invoke-interface {p3, v6}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v2

    .line 716
    if-eqz v2, :cond_5

    .line 717
    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p2, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;->mHeaderContentLength:Ljava/lang/String;

    .line 719
    iget-object v6, p2, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;->mHeaderContentLength:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 720
    .local v0, "contentLength":J
    const-wide/16 v6, -0x1

    cmp-long v6, v0, v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mInfo:Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;

    iget-wide v6, v6, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mTotalBytes:J

    cmp-long v6, v0, v6

    if-eqz v6, :cond_5

    .line 726
    const-string v6, "Octarine"

    const-string v7, "Incorrect file size delivered."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    .end local v0    # "contentLength":J
    :cond_5
    iget-object v6, p2, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;->mHeaderContentLength:Ljava/lang/String;

    if-nez v6, :cond_7

    if-eqz v4, :cond_6

    const-string v6, "chunked"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_7

    :cond_6
    const/4 v5, 0x1

    .line 748
    .local v5, "noSizeInfo":Z
    :goto_0
    if-eqz v5, :cond_8

    .line 749
    new-instance v6, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;

    const/16 v7, 0x1ef

    const-string v8, "can\'t know size of download, giving up"

    invoke-direct {v6, p0, v7, v8}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;-><init>(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;ILjava/lang/String;)V

    throw v6

    .line 745
    .end local v5    # "noSizeInfo":Z
    :cond_7
    const/4 v5, 0x0

    goto :goto_0

    .line 752
    .restart local v5    # "noSizeInfo":Z
    :cond_8
    return-void
.end method

.method private reportProgress(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;)V
    .locals 8
    .param p1, "state"    # Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;
    .param p2, "innerState"    # Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;

    .prologue
    .line 490
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 491
    .local v0, "now":J
    iget v4, p2, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;->mBytesSoFar:I

    iget v5, p2, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;->mBytesNotified:I

    sub-int/2addr v4, v5

    const/16 v5, 0x1000

    if-le v4, v5, :cond_0

    iget-wide v4, p2, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;->mTimeLastNotification:J

    sub-long v4, v0, v4

    const-wide/16 v6, 0x3e8

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    .line 496
    iget-object v4, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mInfo:Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;

    iget v5, p2, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;->mBytesSoFar:I

    int-to-long v6, v5

    iput-wide v6, v4, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mCurrentBytes:J

    .line 497
    iget-object v4, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mDB:Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;

    iget-object v5, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mInfo:Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;

    invoke-virtual {v4, v5}, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->updateDownloadCurrentBytes(Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;)V

    .line 499
    iget v4, p2, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;->mBytesSoFar:I

    iput v4, p2, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;->mBytesNotified:I

    .line 500
    iput-wide v0, p2, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;->mTimeLastNotification:J

    .line 502
    iget v4, p2, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;->mBytesThisSession:I

    int-to-long v4, v4

    iget-object v6, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mService:Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;

    iget-wide v6, v6, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mBytesSoFar:J

    add-long v2, v4, v6

    .line 511
    .local v2, "totalBytesSoFar":J
    iget-object v4, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mService:Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;

    invoke-virtual {v4, v2, v3}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->notifyUpdateBytes(J)V

    .line 513
    .end local v2    # "totalBytesSoFar":J
    :cond_0
    return-void
.end method

.method private sendRequest(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;Lcom/google/android/vending/expansion/downloader/impl/AndroidHttpClient;Lorg/apache/http/client/methods/HttpGet;)Lorg/apache/http/HttpResponse;
    .locals 5
    .param p1, "state"    # Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;
    .param p2, "client"    # Lcom/google/android/vending/expansion/downloader/impl/AndroidHttpClient;
    .param p3, "request"    # Lorg/apache/http/client/methods/HttpGet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;
        }
    .end annotation

    .prologue
    .line 889
    :try_start_0
    invoke-virtual {p2, p3}, Lcom/google/android/vending/expansion/downloader/impl/AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    return-object v1

    .line 890
    :catch_0
    move-exception v0

    .line 891
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    new-instance v1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;

    const/16 v2, 0x1ef

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "while trying to execute request: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3, v0}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;-><init>(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 893
    .end local v0    # "ex":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 894
    .local v0, "ex":Ljava/io/IOException;
    invoke-direct {p0}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->logNetworkState()V

    .line 895
    new-instance v1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;

    invoke-direct {p0, p1}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->getFinalStatusForHttpError(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;)I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "while trying to execute request: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3, v0}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;-><init>(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private setupDestinationFile(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;)V
    .locals 9
    .param p1, "state"    # Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;
    .param p2, "innerState"    # Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;
        }
    .end annotation

    .prologue
    const/16 v7, 0x1ec

    const/4 v8, 0x1

    .line 918
    iget-object v4, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mFilename:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 920
    iget-object v4, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mFilename:Ljava/lang/String;

    invoke-static {v4}, Lcom/google/android/vending/expansion/downloader/Helpers;->isFilenameValid(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 922
    new-instance v4, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;

    const-string v5, "found invalid internal destination filename"

    invoke-direct {v4, p0, v7, v5}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;-><init>(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;ILjava/lang/String;)V

    throw v4

    .line 926
    :cond_0
    new-instance v1, Ljava/io/File;

    iget-object v4, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mFilename:Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 927
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 928
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    .line 929
    .local v2, "fileLength":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_3

    .line 932
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 933
    const/4 v4, 0x0

    iput-object v4, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mFilename:Ljava/lang/String;

    .line 957
    .end local v1    # "f":Ljava/io/File;
    .end local v2    # "fileLength":J
    :cond_1
    :goto_0
    iget-object v4, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mStream:Ljava/io/FileOutputStream;

    if-eqz v4, :cond_2

    .line 958
    invoke-direct {p0, p1}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->closeDestination(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;)V

    .line 960
    :cond_2
    return-void

    .line 934
    .restart local v1    # "f":Ljava/io/File;
    .restart local v2    # "fileLength":J
    :cond_3
    iget-object v4, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mInfo:Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;

    iget-object v4, v4, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mETag:Ljava/lang/String;

    if-nez v4, :cond_4

    .line 936
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 937
    new-instance v4, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;

    const/16 v5, 0x1e9

    const-string v6, "Trying to resume a download that can\'t be resumed"

    invoke-direct {v4, p0, v5, v6}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;-><init>(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;ILjava/lang/String;)V

    throw v4

    .line 942
    :cond_4
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    iget-object v5, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mFilename:Ljava/lang/String;

    const/4 v6, 0x1

    invoke-direct {v4, v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    iput-object v4, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mStream:Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 947
    long-to-int v4, v2

    iput v4, p2, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;->mBytesSoFar:I

    .line 948
    iget-object v4, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mInfo:Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;

    iget-wide v4, v4, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mTotalBytes:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_5

    .line 949
    iget-object v4, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mInfo:Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;

    iget-wide v4, v4, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mTotalBytes:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p2, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;->mHeaderContentLength:Ljava/lang/String;

    .line 951
    :cond_5
    iget-object v4, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mInfo:Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;

    iget-object v4, v4, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mETag:Ljava/lang/String;

    iput-object v4, p2, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;->mHeaderETag:Ljava/lang/String;

    .line 952
    iput-boolean v8, p2, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;->mContinuingDownload:Z

    goto :goto_0

    .line 943
    :catch_0
    move-exception v0

    .line 944
    .local v0, "exc":Ljava/io/FileNotFoundException;
    new-instance v4, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "while opening destination for resuming: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, p0, v7, v5, v0}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;-><init>(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method private syncDestination(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;)V
    .locals 6
    .param p1, "state"    # Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;

    .prologue
    .line 428
    const/4 v0, 0x0

    .line 430
    .local v0, "downloadedFileStream":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v3, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mFilename:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/SyncFailedException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_b
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 431
    .end local v0    # "downloadedFileStream":Ljava/io/FileOutputStream;
    .local v1, "downloadedFileStream":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/FileDescriptor;->sync()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_13
    .catch Ljava/io/SyncFailedException; {:try_start_1 .. :try_end_1} :catch_12
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_11
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_10
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 441
    if-eqz v1, :cond_2

    .line 443
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    move-object v0, v1

    .line 451
    .end local v1    # "downloadedFileStream":Ljava/io/FileOutputStream;
    .restart local v0    # "downloadedFileStream":Ljava/io/FileOutputStream;
    :cond_0
    :goto_0
    return-void

    .line 444
    .end local v0    # "downloadedFileStream":Ljava/io/FileOutputStream;
    .restart local v1    # "downloadedFileStream":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v2

    .line 445
    .local v2, "ex":Ljava/io/IOException;
    const-string v3, "Octarine"

    const-string v4, "IOException while closing synced file: "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    .line 448
    .end local v1    # "downloadedFileStream":Ljava/io/FileOutputStream;
    .restart local v0    # "downloadedFileStream":Ljava/io/FileOutputStream;
    goto :goto_0

    .line 446
    .end local v0    # "downloadedFileStream":Ljava/io/FileOutputStream;
    .end local v2    # "ex":Ljava/io/IOException;
    .restart local v1    # "downloadedFileStream":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v2

    .line 447
    .local v2, "ex":Ljava/lang/RuntimeException;
    const-string v3, "Octarine"

    const-string v4, "exception while closing file: "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    .line 448
    .end local v1    # "downloadedFileStream":Ljava/io/FileOutputStream;
    .restart local v0    # "downloadedFileStream":Ljava/io/FileOutputStream;
    goto :goto_0

    .line 432
    .end local v2    # "ex":Ljava/lang/RuntimeException;
    :catch_2
    move-exception v2

    .line 433
    .local v2, "ex":Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_3
    const-string v3, "Octarine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mFilename:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " not found: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 441
    if-eqz v0, :cond_0

    .line 443
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_0

    .line 444
    :catch_3
    move-exception v2

    .line 445
    .local v2, "ex":Ljava/io/IOException;
    const-string v3, "Octarine"

    const-string v4, "IOException while closing synced file: "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 446
    .local v2, "ex":Ljava/io/FileNotFoundException;
    :catch_4
    move-exception v2

    .line 447
    .local v2, "ex":Ljava/lang/RuntimeException;
    const-string v3, "Octarine"

    const-string v4, "exception while closing file: "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 434
    .end local v2    # "ex":Ljava/lang/RuntimeException;
    :catch_5
    move-exception v2

    .line 435
    .local v2, "ex":Ljava/io/SyncFailedException;
    :goto_2
    :try_start_5
    const-string v3, "Octarine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mFilename:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " sync failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 441
    if-eqz v0, :cond_0

    .line 443
    :try_start_6
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_7

    goto :goto_0

    .line 444
    :catch_6
    move-exception v2

    .line 445
    .local v2, "ex":Ljava/io/IOException;
    const-string v3, "Octarine"

    const-string v4, "IOException while closing synced file: "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 446
    .local v2, "ex":Ljava/io/SyncFailedException;
    :catch_7
    move-exception v2

    .line 447
    .local v2, "ex":Ljava/lang/RuntimeException;
    const-string v3, "Octarine"

    const-string v4, "exception while closing file: "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 436
    .end local v2    # "ex":Ljava/lang/RuntimeException;
    :catch_8
    move-exception v2

    .line 437
    .local v2, "ex":Ljava/io/IOException;
    :goto_3
    :try_start_7
    const-string v3, "Octarine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IOException trying to sync "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mFilename:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 441
    if-eqz v0, :cond_0

    .line 443
    :try_start_8
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_9
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_a

    goto/16 :goto_0

    .line 444
    :catch_9
    move-exception v2

    .line 445
    const-string v3, "Octarine"

    const-string v4, "IOException while closing synced file: "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 446
    :catch_a
    move-exception v2

    .line 447
    .local v2, "ex":Ljava/lang/RuntimeException;
    const-string v3, "Octarine"

    const-string v4, "exception while closing file: "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 438
    .end local v2    # "ex":Ljava/lang/RuntimeException;
    :catch_b
    move-exception v2

    .line 439
    .restart local v2    # "ex":Ljava/lang/RuntimeException;
    :goto_4
    :try_start_9
    const-string v3, "Octarine"

    const-string v4, "exception while syncing file: "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 441
    if-eqz v0, :cond_0

    .line 443
    :try_start_a
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_c
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_d

    goto/16 :goto_0

    .line 444
    :catch_c
    move-exception v2

    .line 445
    .local v2, "ex":Ljava/io/IOException;
    const-string v3, "Octarine"

    const-string v4, "IOException while closing synced file: "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 446
    .local v2, "ex":Ljava/lang/RuntimeException;
    :catch_d
    move-exception v2

    .line 447
    const-string v3, "Octarine"

    const-string v4, "exception while closing file: "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 441
    .end local v2    # "ex":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v3

    :goto_5
    if-eqz v0, :cond_1

    .line 443
    :try_start_b
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_e
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_f

    .line 448
    :cond_1
    :goto_6
    throw v3

    .line 444
    :catch_e
    move-exception v2

    .line 445
    .local v2, "ex":Ljava/io/IOException;
    const-string v4, "Octarine"

    const-string v5, "IOException while closing synced file: "

    invoke-static {v4, v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .line 446
    .end local v2    # "ex":Ljava/io/IOException;
    :catch_f
    move-exception v2

    .line 447
    .local v2, "ex":Ljava/lang/RuntimeException;
    const-string v4, "Octarine"

    const-string v5, "exception while closing file: "

    invoke-static {v4, v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .line 441
    .end local v0    # "downloadedFileStream":Ljava/io/FileOutputStream;
    .end local v2    # "ex":Ljava/lang/RuntimeException;
    .restart local v1    # "downloadedFileStream":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v3

    move-object v0, v1

    .end local v1    # "downloadedFileStream":Ljava/io/FileOutputStream;
    .restart local v0    # "downloadedFileStream":Ljava/io/FileOutputStream;
    goto :goto_5

    .line 438
    .end local v0    # "downloadedFileStream":Ljava/io/FileOutputStream;
    .restart local v1    # "downloadedFileStream":Ljava/io/FileOutputStream;
    :catch_10
    move-exception v2

    move-object v0, v1

    .end local v1    # "downloadedFileStream":Ljava/io/FileOutputStream;
    .restart local v0    # "downloadedFileStream":Ljava/io/FileOutputStream;
    goto :goto_4

    .line 436
    .end local v0    # "downloadedFileStream":Ljava/io/FileOutputStream;
    .restart local v1    # "downloadedFileStream":Ljava/io/FileOutputStream;
    :catch_11
    move-exception v2

    move-object v0, v1

    .end local v1    # "downloadedFileStream":Ljava/io/FileOutputStream;
    .restart local v0    # "downloadedFileStream":Ljava/io/FileOutputStream;
    goto/16 :goto_3

    .line 434
    .end local v0    # "downloadedFileStream":Ljava/io/FileOutputStream;
    .restart local v1    # "downloadedFileStream":Ljava/io/FileOutputStream;
    :catch_12
    move-exception v2

    move-object v0, v1

    .end local v1    # "downloadedFileStream":Ljava/io/FileOutputStream;
    .restart local v0    # "downloadedFileStream":Ljava/io/FileOutputStream;
    goto/16 :goto_2

    .line 432
    .end local v0    # "downloadedFileStream":Ljava/io/FileOutputStream;
    .restart local v1    # "downloadedFileStream":Ljava/io/FileOutputStream;
    :catch_13
    move-exception v2

    move-object v0, v1

    .end local v1    # "downloadedFileStream":Ljava/io/FileOutputStream;
    .restart local v0    # "downloadedFileStream":Ljava/io/FileOutputStream;
    goto/16 :goto_1

    .end local v0    # "downloadedFileStream":Ljava/io/FileOutputStream;
    .restart local v1    # "downloadedFileStream":Ljava/io/FileOutputStream;
    :cond_2
    move-object v0, v1

    .end local v1    # "downloadedFileStream":Ljava/io/FileOutputStream;
    .restart local v0    # "downloadedFileStream":Ljava/io/FileOutputStream;
    goto/16 :goto_0
.end method

.method private transferData(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;[BLjava/io/InputStream;)V
    .locals 2
    .param p1, "state"    # Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;
    .param p2, "innerState"    # Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;
    .param p3, "data"    # [B
    .param p4, "entityStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;
        }
    .end annotation

    .prologue
    .line 372
    :goto_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->readFromResponse(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;[BLjava/io/InputStream;)I

    move-result v0

    .line 373
    .local v0, "bytesRead":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 375
    invoke-direct {p0, p1, p2}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->handleEndOfStream(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;)V

    .line 376
    return-void

    .line 379
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mGotData:Z

    .line 380
    invoke-direct {p0, p1, p3, v0}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->writeDataToDestination(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;[BI)V

    .line 381
    iget v1, p2, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;->mBytesSoFar:I

    add-int/2addr v1, v0

    iput v1, p2, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;->mBytesSoFar:I

    .line 382
    iget v1, p2, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;->mBytesThisSession:I

    add-int/2addr v1, v0

    iput v1, p2, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;->mBytesThisSession:I

    .line 383
    invoke-direct {p0, p1, p2}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->reportProgress(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;)V

    .line 385
    invoke-direct {p0, p1}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->checkPausedOrCanceled(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;)V

    goto :goto_0
.end method

.method private updateDatabaseFromHeaders(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;)V
    .locals 2
    .param p1, "state"    # Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;
    .param p2, "innerState"    # Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;

    .prologue
    .line 678
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mInfo:Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;

    iget-object v1, p2, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;->mHeaderETag:Ljava/lang/String;

    iput-object v1, v0, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mETag:Ljava/lang/String;

    .line 679
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mDB:Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;

    iget-object v1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mInfo:Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;

    invoke-virtual {v0, v1}, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->updateDownload(Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;)Z

    .line 680
    return-void
.end method

.method private updateDownloadDatabase(IZIIZLjava/lang/String;)V
    .locals 4
    .param p1, "status"    # I
    .param p2, "countRetry"    # Z
    .param p3, "retryAfter"    # I
    .param p4, "redirectCount"    # I
    .param p5, "gotData"    # Z
    .param p6, "filename"    # Ljava/lang/String;

    .prologue
    .line 977
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mInfo:Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;

    invoke-virtual {v0, p1}, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->setStatus(I)V

    .line 978
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mInfo:Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;

    iput p3, v0, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mRetryAfter:I

    .line 979
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mInfo:Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;

    iput p4, v0, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mRedirectCount:I

    .line 980
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mInfo:Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mLastMod:J

    .line 981
    if-nez p2, :cond_0

    .line 982
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mInfo:Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;

    const/4 v1, 0x0

    iput v1, v0, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mNumFailed:I

    .line 988
    :goto_0
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mDB:Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;

    iget-object v1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mInfo:Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;

    invoke-virtual {v0, v1}, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->updateDownload(Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;)Z

    .line 989
    return-void

    .line 983
    :cond_0
    if-eqz p5, :cond_1

    .line 984
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mInfo:Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;

    const/4 v1, 0x1

    iput v1, v0, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mNumFailed:I

    goto :goto_0

    .line 986
    :cond_1
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mInfo:Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;

    iget v1, v0, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mNumFailed:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mNumFailed:I

    goto :goto_0
.end method

.method private userAgent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mUserAgent:Ljava/lang/String;

    return-object v0
.end method

.method private writeDataToDestination(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;[BI)V
    .locals 7
    .param p1, "state"    # Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;
    .param p2, "data"    # [B
    .param p3, "bytesRead"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;
        }
    .end annotation

    .prologue
    .line 525
    :try_start_0
    iget-object v3, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mStream:Ljava/io/FileOutputStream;

    if-nez v3, :cond_0

    .line 526
    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mFilename:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    iput-object v3, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mStream:Ljava/io/FileOutputStream;

    .line 528
    :cond_0
    iget-object v3, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mStream:Ljava/io/FileOutputStream;

    const/4 v4, 0x0

    invoke-virtual {v3, p2, v4, p3}, Ljava/io/FileOutputStream;->write([BII)V

    .line 530
    invoke-direct {p0, p1}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->closeDestination(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 531
    return-void

    .line 532
    :catch_0
    move-exception v2

    .line 533
    .local v2, "ex":Ljava/io/IOException;
    invoke-static {}, Lcom/google/android/vending/expansion/downloader/Helpers;->isExternalMediaMounted()Z

    move-result v3

    if-nez v3, :cond_1

    .line 534
    new-instance v3, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;

    const/16 v4, 0x1f3

    const-string v5, "external media not mounted while writing destination file"

    invoke-direct {v3, p0, v4, v5}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;-><init>(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;ILjava/lang/String;)V

    throw v3

    .line 538
    :cond_1
    iget-object v3, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mFilename:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/vending/expansion/downloader/Helpers;->getFilesystemRoot(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/vending/expansion/downloader/Helpers;->getAvailableBytes(Ljava/io/File;)J

    move-result-wide v0

    .line 540
    .local v0, "availableBytes":J
    int-to-long v4, p3

    cmp-long v3, v0, v4

    if-gez v3, :cond_2

    .line 541
    new-instance v3, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;

    const/16 v4, 0x1f2

    const-string v5, "insufficient space while writing destination file"

    invoke-direct {v3, p0, v4, v5, v2}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;-><init>(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 544
    :cond_2
    new-instance v3, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;

    const/16 v4, 0x1ec

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "while writing destination file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, p0, v4, v5, v2}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;-><init>(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method


# virtual methods
.method public getPreferredHttpHost(Landroid/content/Context;Ljava/lang/String;)Lorg/apache/http/HttpHost;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 167
    invoke-static {p2}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->isLocalHost(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mService:Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;

    invoke-virtual {v1}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->isWiFi()Z

    move-result v1

    if-nez v1, :cond_0

    .line 168
    invoke-static {p1}, Landroid/net/Proxy;->getHost(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 169
    .local v0, "proxyHost":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 170
    new-instance v1, Lorg/apache/http/HttpHost;

    invoke-static {p1}, Landroid/net/Proxy;->getPort(Landroid/content/Context;)I

    move-result v2

    const-string v3, "http"

    invoke-direct {v1, v0, v2, v3}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 174
    .end local v0    # "proxyHost":Ljava/lang/String;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public run()V
    .locals 17

    .prologue
    .line 208
    const/16 v1, 0xa

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 210
    new-instance v14, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mInfo:Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mService:Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;

    invoke-direct {v14, v1, v3}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;-><init>(Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;)V

    .line 211
    .local v14, "state":Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;
    const/4 v8, 0x0

    .line 212
    .local v8, "client":Lcom/google/android/vending/expansion/downloader/impl/AndroidHttpClient;
    const/4 v15, 0x0

    .line 213
    .local v15, "wakeLock":Landroid/os/PowerManager$WakeLock;
    const/16 v2, 0x1eb

    .line 217
    .local v2, "finalStatus":I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mContext:Landroid/content/Context;

    const-string v3, "power"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/PowerManager;

    .line 218
    .local v12, "pm":Landroid/os/PowerManager;
    const/4 v1, 0x1

    const-string v3, "Octarine"

    invoke-virtual {v12, v1, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v15

    .line 219
    invoke-virtual {v15}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 223
    const-string v1, "Octarine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ExpansionDownloader: initiating download for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mInfo:Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;

    iget-object v4, v4, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mFileName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mInfo:Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;

    iget-object v4, v4, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mUri:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    invoke-direct/range {p0 .. p0}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->userAgent()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mContext:Landroid/content/Context;

    invoke-static {v1, v3}, Lcom/google/android/vending/expansion/downloader/impl/AndroidHttpClient;->newInstance(Ljava/lang/String;Landroid/content/Context;)Lcom/google/android/vending/expansion/downloader/impl/AndroidHttpClient;

    move-result-object v8

    .line 228
    const/4 v11, 0x0

    .line 229
    .local v11, "finished":Z
    :goto_0
    if-nez v11, :cond_2

    .line 233
    const-string v1, "Octarine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ExpansionDownloader: initiating download for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mInfo:Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;

    iget-object v4, v4, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mFileName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mInfo:Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;

    iget-object v4, v4, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mUri:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    invoke-virtual {v8}, Lcom/google/android/vending/expansion/downloader/impl/AndroidHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mContext:Landroid/content/Context;

    iget-object v4, v14, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mRequestUri:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->getPreferredHttpHost(Landroid/content/Context;Ljava/lang/String;)Lorg/apache/http/HttpHost;

    move-result-object v3

    invoke-static {v1, v3}, Lorg/apache/http/conn/params/ConnRouteParams;->setDefaultProxy(Lorg/apache/http/params/HttpParams;Lorg/apache/http/HttpHost;)V

    .line 240
    new-instance v13, Lorg/apache/http/client/methods/HttpGet;

    iget-object v1, v14, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mRequestUri:Ljava/lang/String;

    invoke-direct {v13, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 244
    .local v13, "request":Lorg/apache/http/client/methods/HttpGet;
    :try_start_1
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v8, v13}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->executeDownload(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;Lcom/google/android/vending/expansion/downloader/impl/AndroidHttpClient;Lorg/apache/http/client/methods/HttpGet;)V
    :try_end_1
    .catch Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$RetryDownload; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 245
    const/4 v11, 0x1

    .line 253
    :try_start_2
    invoke-virtual {v13}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 254
    const/4 v13, 0x0

    .line 255
    goto :goto_0

    .line 247
    :catch_0
    move-exception v1

    .line 253
    invoke-virtual {v13}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 254
    const/4 v13, 0x0

    .line 255
    goto :goto_0

    .line 253
    :catchall_0
    move-exception v1

    invoke-virtual {v13}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 254
    const/4 v13, 0x0

    throw v1
    :try_end_2
    .catch Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 266
    .end local v11    # "finished":Z
    .end local v12    # "pm":Landroid/os/PowerManager;
    .end local v13    # "request":Lorg/apache/http/client/methods/HttpGet;
    :catch_1
    move-exception v9

    .line 269
    .local v9, "error":Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;
    :try_start_3
    const-string v1, "Octarine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ExpansionDownloader: Aborting request for download "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mInfo:Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;

    iget-object v4, v4, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mFileName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v9}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    invoke-virtual {v9}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;->printStackTrace()V

    .line 271
    iget v2, v9, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;->mFinalStatus:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 287
    if-eqz v15, :cond_0

    .line 289
    invoke-virtual {v15}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 290
    const/4 v15, 0x0

    .line 293
    :cond_0
    if-eqz v8, :cond_1

    .line 295
    invoke-virtual {v8}, Lcom/google/android/vending/expansion/downloader/impl/AndroidHttpClient;->close()V

    .line 296
    const/4 v8, 0x0

    .line 299
    :cond_1
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v2}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->cleanupDestination(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;I)V

    .line 300
    iget-boolean v3, v14, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mCountRetry:Z

    iget v4, v14, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mRetryAfter:I

    iget v5, v14, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mRedirectCount:I

    iget-boolean v6, v14, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mGotData:Z

    iget-object v7, v14, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mFilename:Ljava/lang/String;

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->notifyDownloadCompleted(IZIIZLjava/lang/String;)V

    .line 302
    .end local v9    # "error":Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;
    :goto_1
    return-void

    .line 260
    .restart local v11    # "finished":Z
    .restart local v12    # "pm":Landroid/os/PowerManager;
    :cond_2
    :try_start_4
    const-string v1, "Octarine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ExpansionDownloader: download completed for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mInfo:Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;

    iget-object v4, v4, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mFileName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->finalizeDestinationFile(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;)V
    :try_end_4
    .catch Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 264
    const/16 v2, 0xc8

    .line 287
    if-eqz v15, :cond_3

    .line 289
    invoke-virtual {v15}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 290
    const/4 v15, 0x0

    .line 293
    :cond_3
    if-eqz v8, :cond_4

    .line 295
    invoke-virtual {v8}, Lcom/google/android/vending/expansion/downloader/impl/AndroidHttpClient;->close()V

    .line 296
    const/4 v8, 0x0

    .line 299
    :cond_4
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v2}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->cleanupDestination(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;I)V

    .line 300
    iget-boolean v3, v14, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mCountRetry:Z

    iget v4, v14, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mRetryAfter:I

    iget v5, v14, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mRedirectCount:I

    iget-boolean v6, v14, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mGotData:Z

    iget-object v7, v14, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mFilename:Ljava/lang/String;

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->notifyDownloadCompleted(IZIIZLjava/lang/String;)V

    goto :goto_1

    .line 274
    .end local v11    # "finished":Z
    .end local v12    # "pm":Landroid/os/PowerManager;
    :catch_2
    move-exception v10

    .line 277
    .local v10, "ex":Ljava/lang/Throwable;
    :try_start_5
    const-string v1, "Octarine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ExpansionDownloader: Exception for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mInfo:Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;

    iget-object v4, v4, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mFileName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    invoke-virtual {v10}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 282
    const/16 v2, 0x1eb

    .line 287
    if-eqz v15, :cond_5

    .line 289
    invoke-virtual {v15}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 290
    const/4 v15, 0x0

    .line 293
    :cond_5
    if-eqz v8, :cond_6

    .line 295
    invoke-virtual {v8}, Lcom/google/android/vending/expansion/downloader/impl/AndroidHttpClient;->close()V

    .line 296
    const/4 v8, 0x0

    .line 299
    :cond_6
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v2}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->cleanupDestination(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;I)V

    .line 300
    iget-boolean v3, v14, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mCountRetry:Z

    iget v4, v14, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mRetryAfter:I

    iget v5, v14, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mRedirectCount:I

    iget-boolean v6, v14, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mGotData:Z

    iget-object v7, v14, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mFilename:Ljava/lang/String;

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->notifyDownloadCompleted(IZIIZLjava/lang/String;)V

    goto/16 :goto_1

    .line 287
    .end local v10    # "ex":Ljava/lang/Throwable;
    :catchall_1
    move-exception v1

    move-object/from16 v16, v1

    if-eqz v15, :cond_7

    .line 289
    invoke-virtual {v15}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 290
    const/4 v15, 0x0

    .line 293
    :cond_7
    if-eqz v8, :cond_8

    .line 295
    invoke-virtual {v8}, Lcom/google/android/vending/expansion/downloader/impl/AndroidHttpClient;->close()V

    .line 296
    const/4 v8, 0x0

    .line 299
    :cond_8
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v2}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->cleanupDestination(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;I)V

    .line 300
    iget-boolean v3, v14, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mCountRetry:Z

    iget v4, v14, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mRetryAfter:I

    iget v5, v14, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mRedirectCount:I

    iget-boolean v6, v14, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mGotData:Z

    iget-object v7, v14, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mFilename:Ljava/lang/String;

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->notifyDownloadCompleted(IZIIZLjava/lang/String;)V

    throw v16
.end method
