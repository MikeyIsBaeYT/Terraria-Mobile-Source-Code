.class Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable$1;
.super Ljava/lang/Object;
.source "DownloaderService.java"

# interfaces
.implements Lcom/google/android/vending/licensing/LicenseCheckerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable;

.field final synthetic val$aep:Lcom/google/android/vending/licensing/APKExpansionPolicy;


# direct methods
.method constructor <init>(Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable;Lcom/google/android/vending/licensing/APKExpansionPolicy;)V
    .locals 0

    .prologue
    .line 787
    iput-object p1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable$1;->this$1:Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable;

    iput-object p2, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable$1;->val$aep:Lcom/google/android/vending/licensing/APKExpansionPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public allow(I)V
    .locals 15
    .param p1, "reason"    # I

    .prologue
    .line 794
    :try_start_0
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable$1;->val$aep:Lcom/google/android/vending/licensing/APKExpansionPolicy;

    invoke-virtual {v0}, Lcom/google/android/vending/licensing/APKExpansionPolicy;->getExpansionURLCount()I

    move-result v6

    .line 795
    .local v6, "count":I
    const-string v0, "Octarine"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "ExpansionDownloader: getExpansionURLCount: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v0, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable$1;->this$1:Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable;

    iget-object v0, v0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->getDB(Landroid/content/Context;)Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;

    move-result-object v1

    .line 798
    .local v1, "db":Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;
    const/4 v12, 0x0

    .line 799
    .local v12, "status":I
    if-eqz v6, :cond_3

    .line 801
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v6, :cond_3

    .line 803
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable$1;->val$aep:Lcom/google/android/vending/licensing/APKExpansionPolicy;

    invoke-virtual {v0, v2}, Lcom/google/android/vending/licensing/APKExpansionPolicy;->getExpansionFileName(I)Ljava/lang/String;

    move-result-object v3

    .line 804
    .local v3, "currentFileName":Ljava/lang/String;
    const-string v0, "Octarine"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "ExpansionDownloader: getExpansionFileName: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v0, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    if-eqz v3, :cond_0

    .line 808
    new-instance v8, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;

    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable$1;->this$1:Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable;

    iget-object v0, v0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v2, v3, v0}, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 810
    .local v8, "di":Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable$1;->val$aep:Lcom/google/android/vending/licensing/APKExpansionPolicy;

    invoke-virtual {v0, v2}, Lcom/google/android/vending/licensing/APKExpansionPolicy;->getExpansionFileSize(I)J

    move-result-wide v4

    .line 811
    .local v4, "fileSize":J
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable$1;->this$1:Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable;

    iget-object v0, v0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable;->this$0:Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->handleFileUpdated(Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;ILjava/lang/String;J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 813
    const-string v0, "Octarine"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "ExpansionDownloader: Start downloading: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable$1;->val$aep:Lcom/google/android/vending/licensing/APKExpansionPolicy;

    invoke-virtual {v14, v2}, Lcom/google/android/vending/licensing/APKExpansionPolicy;->getExpansionURL(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v0, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    or-int/lit8 v12, v12, -0x1

    .line 815
    invoke-virtual {v8}, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->resetDownload()V

    .line 816
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable$1;->val$aep:Lcom/google/android/vending/licensing/APKExpansionPolicy;

    invoke-virtual {v0, v2}, Lcom/google/android/vending/licensing/APKExpansionPolicy;->getExpansionURL(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mUri:Ljava/lang/String;

    .line 817
    iput-wide v4, v8, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mTotalBytes:J

    .line 818
    invoke-virtual {v8, v12}, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->setStatus(I)V

    .line 819
    invoke-virtual {v1, v8}, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->updateDownload(Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;)Z

    .line 801
    .end local v4    # "fileSize":J
    .end local v8    # "di":Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 827
    .restart local v4    # "fileSize":J
    .restart local v8    # "di":Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;
    :cond_1
    iget-object v0, v8, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mFileName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->getDownloadInfoByFileName(Ljava/lang/String;)Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;

    move-result-object v7

    .line 828
    .local v7, "dbdi":Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;
    if-nez v7, :cond_2

    .line 836
    const-string v0, "Octarine"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "ExpansionDownloader: file "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v8, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mFileName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " found. Not downloading."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v0, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    const/16 v0, 0xc8

    invoke-virtual {v8, v0}, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->setStatus(I)V

    .line 838
    iput-wide v4, v8, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mTotalBytes:J

    .line 839
    iput-wide v4, v8, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mCurrentBytes:J

    .line 840
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable$1;->val$aep:Lcom/google/android/vending/licensing/APKExpansionPolicy;

    invoke-virtual {v0, v2}, Lcom/google/android/vending/licensing/APKExpansionPolicy;->getExpansionURL(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mUri:Ljava/lang/String;

    .line 841
    invoke-virtual {v1, v8}, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->updateDownload(Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 890
    .end local v1    # "db":Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;
    .end local v2    # "i":I
    .end local v3    # "currentFileName":Ljava/lang/String;
    .end local v4    # "fileSize":J
    .end local v6    # "count":I
    .end local v7    # "dbdi":Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;
    .end local v8    # "di":Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;
    .end local v12    # "status":I
    :catchall_0
    move-exception v0

    const/4 v13, 0x0

    invoke-static {v13}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->access$100(Z)V

    throw v0

    .line 843
    .restart local v1    # "db":Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;
    .restart local v2    # "i":I
    .restart local v3    # "currentFileName":Ljava/lang/String;
    .restart local v4    # "fileSize":J
    .restart local v6    # "count":I
    .restart local v7    # "dbdi":Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;
    .restart local v8    # "di":Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;
    .restart local v12    # "status":I
    :cond_2
    :try_start_1
    invoke-virtual {v7}, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->getStatus()I

    move-result v0

    const/16 v13, 0xc8

    if-eq v0, v13, :cond_0

    .line 845
    const-string v0, "Octarine"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "ExpansionDownloader: Update download: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable$1;->val$aep:Lcom/google/android/vending/licensing/APKExpansionPolicy;

    invoke-virtual {v14, v2}, Lcom/google/android/vending/licensing/APKExpansionPolicy;->getExpansionURL(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v0, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable$1;->val$aep:Lcom/google/android/vending/licensing/APKExpansionPolicy;

    invoke-virtual {v0, v2}, Lcom/google/android/vending/licensing/APKExpansionPolicy;->getExpansionURL(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mUri:Ljava/lang/String;

    .line 848
    invoke-virtual {v1, v7}, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->updateDownload(Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 849
    or-int/lit8 v12, v12, -0x1

    goto :goto_1

    .line 861
    .end local v2    # "i":I
    .end local v3    # "currentFileName":Ljava/lang/String;
    .end local v4    # "fileSize":J
    .end local v7    # "dbdi":Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;
    .end local v8    # "di":Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;
    :cond_3
    :try_start_2
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable$1;->this$1:Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable;

    iget-object v0, v0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v13, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable$1;->this$1:Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable;

    iget-object v13, v13, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v0, v13, v14}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v10

    .line 862
    .local v10, "pi":Landroid/content/pm/PackageInfo;
    iget v0, v10, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v1, v0, v12}, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->updateMetadata(II)Z

    .line 863
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable$1;->this$1:Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable;

    iget-object v0, v0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable;->this$0:Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    .line 864
    .local v11, "serviceClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable$1;->this$1:Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable;

    iget-object v0, v0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable;->mContext:Landroid/content/Context;

    iget-object v13, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable$1;->this$1:Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable;

    iget-object v13, v13, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable;->this$0:Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;

    invoke-static {v13}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->access$000(Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;)Landroid/app/PendingIntent;

    move-result-object v13

    invoke-static {v0, v13, v11}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->startDownloadServiceIfRequired(Landroid/content/Context;Landroid/app/PendingIntent;Ljava/lang/Class;)Lcom/google/android/vending/expansion/downloader/impl/StatusReport;

    move-result-object v0

    iget v0, v0, Lcom/google/android/vending/expansion/downloader/impl/StatusReport;->DownloadStatus:I
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    packed-switch v0, :pswitch_data_0

    .line 890
    :goto_2
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->access$100(Z)V

    .line 892
    return-void

    .line 867
    :pswitch_0
    :try_start_3
    const-string v0, "Octarine"

    const-string v13, "ExpansionDownloader: NO_DOWNLOAD_REQUIRED"

    invoke-static {v0, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable$1;->this$1:Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable;

    iget-object v0, v0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable;->this$0:Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;

    invoke-static {v0}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->access$200(Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;)Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;

    move-result-object v0

    const/4 v13, 0x5

    invoke-virtual {v0, v13}, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->onDownloadStateChanged(I)V
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 882
    .end local v10    # "pi":Landroid/content/pm/PackageInfo;
    .end local v11    # "serviceClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v9

    .line 884
    .local v9, "e1":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_4
    invoke-virtual {v9}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 885
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v13, "Error with getting information from package name"

    invoke-direct {v0, v13}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 872
    .end local v9    # "e1":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v10    # "pi":Landroid/content/pm/PackageInfo;
    .restart local v11    # "serviceClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :pswitch_1
    :try_start_5
    const-string v0, "Octarine"

    const-string v13, "ExpansionDownloader: In LVL checking loop!"

    invoke-static {v0, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable$1;->this$1:Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable;

    iget-object v0, v0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable;->this$0:Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;

    invoke-static {v0}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->access$200(Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;)Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;

    move-result-object v0

    const/16 v13, 0xf

    invoke-virtual {v0, v13}, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->onDownloadStateChanged(I)V

    .line 874
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v13, "Error with LVL checking and database integrity"

    invoke-direct {v0, v13}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 864
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public applicationError(I)V
    .locals 3
    .param p1, "errorCode"    # I

    .prologue
    const/4 v2, 0x0

    .line 926
    :try_start_0
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable$1;->this$1:Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable;

    iget-object v0, v0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable;->this$0:Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;

    invoke-static {v0}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->access$200(Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;)Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->onDownloadStateChanged(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 930
    invoke-static {v2}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->access$100(Z)V

    .line 932
    return-void

    .line 930
    :catchall_0
    move-exception v0

    invoke-static {v2}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->access$100(Z)V

    throw v0
.end method

.method public dontAllow(I)V
    .locals 3
    .param p1, "reason"    # I

    .prologue
    const/4 v2, 0x0

    .line 898
    const-string v0, "Octarine"

    const-string v1, "ExpansionDownloader: dontAllow"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    sparse-switch p1, :sswitch_data_0

    .line 916
    :goto_0
    invoke-static {v2}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->access$100(Z)V

    .line 919
    return-void

    .line 905
    :sswitch_0
    :try_start_0
    const-string v0, "Octarine"

    const-string v1, "ExpansionDownloader: IDownloaderClient.STATE_FAILED_UNLICENSED"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 906
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable$1;->this$1:Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable;

    iget-object v0, v0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable;->this$0:Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;

    invoke-static {v0}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->access$200(Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;)Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;

    move-result-object v0

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->onDownloadStateChanged(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 916
    :catchall_0
    move-exception v0

    invoke-static {v2}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->access$100(Z)V

    throw v0

    .line 909
    :sswitch_1
    :try_start_1
    const-string v0, "Octarine"

    const-string v1, "ExpansionDownloader: IDownloaderClient.STATE_FAILED_FETCHING_URL"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 910
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable$1;->this$1:Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable;

    iget-object v0, v0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable;->this$0:Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;

    invoke-static {v0}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->access$200(Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;)Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->onDownloadStateChanged(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 902
    :sswitch_data_0
    .sparse-switch
        0x123 -> :sswitch_1
        0x231 -> :sswitch_0
    .end sparse-switch
.end method
