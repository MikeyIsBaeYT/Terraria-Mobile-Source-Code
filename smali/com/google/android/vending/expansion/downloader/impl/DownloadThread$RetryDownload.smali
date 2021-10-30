.class Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$RetryDownload;
.super Ljava/lang/Throwable;
.source "DownloadThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RetryDownload"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x55fcbdf27c25b185L


# instance fields
.field final synthetic this$0:Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;


# direct methods
.method private constructor <init>(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;)V
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$RetryDownload;->this$0:Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;

    invoke-direct {p0}, Ljava/lang/Throwable;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;
    .param p2, "x1"    # Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$1;

    .prologue
    .line 144
    invoke-direct {p0, p1}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$RetryDownload;-><init>(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;)V

    return-void
.end method
