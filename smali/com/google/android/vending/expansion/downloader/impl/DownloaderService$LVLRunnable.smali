.class Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable;
.super Ljava/lang/Object;
.source "DownloaderService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LVLRunnable"
.end annotation


# instance fields
.field final mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;


# direct methods
.method constructor <init>(Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;Landroid/content/Context;Landroid/app/PendingIntent;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "intent"    # Landroid/app/PendingIntent;

    .prologue
    .line 761
    iput-object p1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable;->this$0:Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 762
    iput-object p2, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable;->mContext:Landroid/content/Context;

    .line 763
    invoke-static {p1, p3}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->access$002(Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;

    .line 764
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 771
    const/4 v3, 0x1

    invoke-static {v3}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->access$100(Z)V

    .line 772
    iget-object v3, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable;->this$0:Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;

    invoke-static {v3}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->access$200(Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;)Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->onDownloadStateChanged(I)V

    .line 773
    iget-object v3, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "android_id"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 776
    .local v2, "deviceId":Ljava/lang/String;
    new-instance v0, Lcom/google/android/vending/licensing/APKExpansionPolicy;

    iget-object v3, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/google/android/vending/licensing/AESObfuscator;

    iget-object v5, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable;->this$0:Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;

    invoke-virtual {v5}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->getSALT()[B

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6, v2}, Lcom/google/android/vending/licensing/AESObfuscator;-><init>([BLjava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v3, v4}, Lcom/google/android/vending/licensing/APKExpansionPolicy;-><init>(Landroid/content/Context;Lcom/google/android/vending/licensing/Obfuscator;)V

    .line 780
    .local v0, "aep":Lcom/google/android/vending/licensing/APKExpansionPolicy;
    invoke-virtual {v0}, Lcom/google/android/vending/licensing/APKExpansionPolicy;->resetPolicy()V

    .line 784
    new-instance v1, Lcom/google/android/vending/licensing/LicenseChecker;

    iget-object v3, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable;->this$0:Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;

    invoke-virtual {v4}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->getPublicKey()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v0, v4}, Lcom/google/android/vending/licensing/LicenseChecker;-><init>(Landroid/content/Context;Lcom/google/android/vending/licensing/Policy;Ljava/lang/String;)V

    .line 786
    .local v1, "checker":Lcom/google/android/vending/licensing/LicenseChecker;
    new-instance v3, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable$1;

    invoke-direct {v3, p0, v0}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable$1;-><init>(Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable;Lcom/google/android/vending/licensing/APKExpansionPolicy;)V

    invoke-virtual {v1, v3}, Lcom/google/android/vending/licensing/LicenseChecker;->checkAccess(Lcom/google/android/vending/licensing/LicenseCheckerCallback;)V

    .line 936
    return-void
.end method
