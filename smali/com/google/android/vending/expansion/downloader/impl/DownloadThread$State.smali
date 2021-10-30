.class Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;
.super Ljava/lang/Object;
.source "DownloadThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "State"
.end annotation


# instance fields
.field public mCountRetry:Z

.field public mFilename:Ljava/lang/String;

.field public mGotData:Z

.field public mNewUri:Ljava/lang/String;

.field public mRedirectCount:I

.field public mRequestUri:Ljava/lang/String;

.field public mRetryAfter:I

.field public mStream:Ljava/io/FileOutputStream;


# direct methods
.method public constructor <init>(Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;)V
    .locals 1
    .param p1, "info"    # Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;
    .param p2, "service"    # Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;

    .prologue
    const/4 v0, 0x0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-boolean v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mCountRetry:Z

    .line 87
    iput v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mRetryAfter:I

    .line 88
    iput v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mRedirectCount:I

    .line 90
    iput-boolean v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mGotData:Z

    .line 94
    iget v0, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mRedirectCount:I

    iput v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mRedirectCount:I

    .line 95
    iget-object v0, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mUri:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mRequestUri:Ljava/lang/String;

    .line 96
    iget-object v0, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mFileName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->generateTempSaveFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mFilename:Ljava/lang/String;

    .line 97
    return-void
.end method
