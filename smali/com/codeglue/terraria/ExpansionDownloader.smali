.class public Lcom/codeglue/terraria/ExpansionDownloader;
.super Ljava/lang/Object;
.source "ExpansionDownloader.java"

# interfaces
.implements Lcom/google/android/vending/expansion/downloader/IDownloaderClient;
.implements Lcom/codeglue/terraria/ObbCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codeglue/terraria/ExpansionDownloader$3;
    }
.end annotation


# static fields
.field static expandingFiles:Z

.field private static final xOBBs:[Lcom/codeglue/terraria/ObbPackage;


# instance fields
.field private completed:Z

.field downloadStub:Lcom/google/android/vending/expansion/downloader/IStub;

.field private remoteService:Lcom/google/android/vending/expansion/downloader/IDownloaderService;

.field protected terraria:Lcom/codeglue/terraria/OctarineActivity;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 50
    new-array v0, v6, [Lcom/codeglue/terraria/ObbPackage;

    new-instance v1, Lcom/codeglue/terraria/ObbPackage;

    const/16 v2, 0x31f1

    const-wide/16 v4, 0x0

    invoke-direct {v1, v6, v2, v4, v5}, Lcom/codeglue/terraria/ObbPackage;-><init>(ZIJ)V

    aput-object v1, v0, v3

    sput-object v0, Lcom/codeglue/terraria/ExpansionDownloader;->xOBBs:[Lcom/codeglue/terraria/ObbPackage;

    .line 58
    sput-boolean v3, Lcom/codeglue/terraria/ExpansionDownloader;->expandingFiles:Z

    return-void
.end method

.method public constructor <init>(Lcom/codeglue/terraria/OctarineActivity;)V
    .locals 2
    .param p1, "activity"    # Lcom/codeglue/terraria/OctarineActivity;

    .prologue
    const/4 v0, 0x0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object v0, p0, Lcom/codeglue/terraria/ExpansionDownloader;->downloadStub:Lcom/google/android/vending/expansion/downloader/IStub;

    .line 56
    iput-object v0, p0, Lcom/codeglue/terraria/ExpansionDownloader;->remoteService:Lcom/google/android/vending/expansion/downloader/IDownloaderService;

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/codeglue/terraria/ExpansionDownloader;->completed:Z

    .line 62
    const-string v0, "Octarine"

    const-string v1, "ExpansionDownloader"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    sput-object p0, Lcom/codeglue/terraria/ExpansionDownloaderBridge;->downloader:Lcom/codeglue/terraria/ExpansionDownloader;

    .line 64
    iput-object p1, p0, Lcom/codeglue/terraria/ExpansionDownloader;->terraria:Lcom/codeglue/terraria/OctarineActivity;

    .line 65
    return-void
.end method

.method private ReadExpansionFile()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 385
    sget-boolean v1, Lcom/codeglue/terraria/ExpansionDownloader;->expandingFiles:Z

    if-eqz v1, :cond_0

    .line 427
    :goto_0
    return-void

    .line 388
    :cond_0
    const-string v1, "Octarine"

    const-string v2, "ExpansionDownloader: ReadExpansionFile()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    const/4 v1, 0x1

    sput-boolean v1, Lcom/codeglue/terraria/ExpansionDownloader;->expandingFiles:Z

    .line 392
    new-instance v1, Lcom/codeglue/terraria/ExpansionDownloader$2;

    invoke-direct {v1, p0}, Lcom/codeglue/terraria/ExpansionDownloader$2;-><init>(Lcom/codeglue/terraria/ExpansionDownloader;)V

    iget-object v2, p0, Lcom/codeglue/terraria/ExpansionDownloader;->terraria:Lcom/codeglue/terraria/OctarineActivity;

    iget-object v3, p0, Lcom/codeglue/terraria/ExpansionDownloader;->terraria:Lcom/codeglue/terraria/OctarineActivity;

    invoke-static {v1, v2, v3, p0}, Lcom/codeglue/terraria/ExpansionDownloader$2;->access$000(Lcom/codeglue/terraria/ExpansionDownloader$2;Lcom/codeglue/terraria/OctarineActivity;Landroid/content/Context;Lcom/codeglue/terraria/ObbCallback;)Ljava/lang/Thread;

    move-result-object v0

    .line 425
    .local v0, "thread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method


# virtual methods
.method protected CheckIfMusicExists(Ljava/lang/String;Lcom/codeglue/terraria/OctarineActivity;)Z
    .locals 6
    .param p1, "extractionPath"    # Ljava/lang/String;
    .param p2, "activity"    # Lcom/codeglue/terraria/OctarineActivity;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 217
    new-instance v0, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/Music_2.ogg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 218
    .local v0, "music_2":Ljava/io/File;
    const-string v3, "Octarine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ExpansionDownloader: Path to music file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 222
    const-string v2, "Octarine"

    const-string v3, "ExpansionDownloader: Could not find music_2"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    new-instance v2, Lcom/codeglue/terraria/ExpansionDownloader$1;

    invoke-direct {v2, p0}, Lcom/codeglue/terraria/ExpansionDownloader$1;-><init>(Lcom/codeglue/terraria/ExpansionDownloader;)V

    invoke-virtual {p2, v2}, Lcom/codeglue/terraria/OctarineActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 234
    iput-boolean v1, p2, Lcom/codeglue/terraria/OctarineActivity;->FoundMusic:Z

    .line 242
    :goto_0
    return v1

    .line 239
    :cond_0
    const-string v1, "Octarine"

    const-string v3, "ExpansionDownloader: Could find music_2"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    iput-boolean v2, p2, Lcom/codeglue/terraria/OctarineActivity;->FoundMusic:Z

    move v1, v2

    .line 242
    goto :goto_0
.end method

.method public DisplayDownloadStatus(Lcom/codeglue/terraria/DownloadStatus;)V
    .locals 8
    .param p1, "newState"    # Lcom/codeglue/terraria/DownloadStatus;

    .prologue
    .line 273
    const-string v2, ""

    .line 274
    .local v2, "infoText":Ljava/lang/String;
    sget-object v5, Lcom/codeglue/terraria/ExpansionDownloader$3;->$SwitchMap$com$codeglue$terraria$DownloadStatus:[I

    invoke-virtual {p1}, Lcom/codeglue/terraria/DownloadStatus;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 367
    :goto_0
    move-object v3, v2

    .line 368
    .local v3, "text":Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .line 370
    .local v0, "duration":I
    iget-object v5, p0, Lcom/codeglue/terraria/ExpansionDownloader;->terraria:Lcom/codeglue/terraria/OctarineActivity;

    invoke-static {v5, v3, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    .line 371
    .local v4, "toast":Landroid/widget/Toast;
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 373
    const-string v5, "Octarine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ExpansionDownloader: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    return-void

    .line 277
    .end local v0    # "duration":I
    .end local v3    # "text":Ljava/lang/CharSequence;
    .end local v4    # "toast":Landroid/widget/Toast;
    :pswitch_0
    const-string v2, "Unknown error"

    .line 278
    goto :goto_0

    .line 280
    :pswitch_1
    const-string v2, "Download is idle"

    .line 281
    goto :goto_0

    .line 283
    :pswitch_2
    const-string v2, "Fetching download url"

    .line 284
    goto :goto_0

    .line 286
    :pswitch_3
    const-string v2, "Connecting to server"

    .line 287
    goto :goto_0

    .line 289
    :pswitch_4
    const-string v2, "Downloading file"

    .line 290
    goto :goto_0

    .line 292
    :pswitch_5
    const-string v2, "Download complete"

    .line 295
    :try_start_0
    invoke-direct {p0}, Lcom/codeglue/terraria/ExpansionDownloader;->ReadExpansionFile()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 297
    :catch_0
    move-exception v1

    .line 299
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 303
    .end local v1    # "e":Ljava/lang/Exception;
    :pswitch_6
    const-string v2, "Network not available"

    .line 304
    goto :goto_0

    .line 306
    :pswitch_7
    const-string v2, "Paused by user"

    .line 307
    goto :goto_0

    .line 309
    :pswitch_8
    const-string v2, "Unable to download, enable Wifi or enable cellular download"

    .line 310
    goto :goto_0

    .line 312
    :pswitch_9
    const-string v2, "Unable to download, enable cellular download"

    .line 313
    goto :goto_0

    .line 315
    :pswitch_a
    const-string v2, "Unable to download, enable Wifi"

    .line 316
    goto :goto_0

    .line 318
    :pswitch_b
    const-string v2, "Unable to download, Wifi download only"

    .line 319
    goto :goto_0

    .line 321
    :pswitch_c
    const-string v2, "Unable to download, enable roaming"

    .line 322
    goto :goto_0

    .line 324
    :pswitch_d
    const-string v2, "Unable to download, setup failed"

    .line 325
    goto :goto_0

    .line 327
    :pswitch_e
    const-string v2, "Unable to download, no SD card found"

    .line 328
    goto :goto_0

    .line 330
    :pswitch_f
    const-string v2, "Unable to download, licence issue"

    .line 334
    :try_start_1
    invoke-direct {p0}, Lcom/codeglue/terraria/ExpansionDownloader;->ReadExpansionFile()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 336
    :catch_1
    move-exception v1

    .line 338
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 343
    .end local v1    # "e":Ljava/lang/Exception;
    :pswitch_10
    const-string v2, "Failed fetching download url"

    .line 347
    :try_start_2
    invoke-direct {p0}, Lcom/codeglue/terraria/ExpansionDownloader;->ReadExpansionFile()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 349
    :catch_2
    move-exception v1

    .line 351
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 357
    .end local v1    # "e":Ljava/lang/Exception;
    :pswitch_11
    const-string v2, "Unable to download, SD card is too full"

    .line 358
    goto :goto_0

    .line 360
    :pswitch_12
    const-string v2, "Cancelled download"

    .line 361
    goto :goto_0

    .line 363
    :pswitch_13
    const-string v2, "Failed download/install"

    goto :goto_0

    .line 274
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
    .end packed-switch
.end method

.method public OnExtractionDone(Ljava/lang/String;)V
    .locals 3
    .param p1, "dataFolder"    # Ljava/lang/String;

    .prologue
    .line 432
    const-string v0, "Octarine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ExpansionDownloader: Extracted files located at: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/codeglue/terraria/ExpansionDownloader;->completed:Z

    .line 436
    invoke-static {p1}, Lcom/codeglue/terraria/OctarineBridge;->nativeOnExpansionFileExtracted(Ljava/lang/String;)V

    .line 437
    return-void
.end method

.method public filesDelivered()Z
    .locals 10

    .prologue
    const/4 v5, 0x0

    .line 69
    sget-object v0, Lcom/codeglue/terraria/ExpansionDownloader;->xOBBs:[Lcom/codeglue/terraria/ObbPackage;

    .local v0, "arr$":[Lcom/codeglue/terraria/ObbPackage;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v4, v0, v2

    .line 71
    .local v4, "obbPackage":Lcom/codeglue/terraria/ObbPackage;
    const-string v6, "Octarine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Finding obb file version: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v4, Lcom/codeglue/terraria/ObbPackage;->fileVersion:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iget-object v6, p0, Lcom/codeglue/terraria/ExpansionDownloader;->terraria:Lcom/codeglue/terraria/OctarineActivity;

    iget-boolean v7, v4, Lcom/codeglue/terraria/ObbPackage;->isMainFile:Z

    iget v8, v4, Lcom/codeglue/terraria/ObbPackage;->fileVersion:I

    invoke-static {v6, v7, v8}, Lcom/google/android/vending/expansion/downloader/Helpers;->getExpansionAPKFileName(Landroid/content/Context;ZI)Ljava/lang/String;

    move-result-object v1

    .line 74
    .local v1, "fileName":Ljava/lang/String;
    iget-object v6, p0, Lcom/codeglue/terraria/ExpansionDownloader;->terraria:Lcom/codeglue/terraria/OctarineActivity;

    iget-wide v8, v4, Lcom/codeglue/terraria/ObbPackage;->fileSize:J

    invoke-static {v6, v1, v8, v9, v5}, Lcom/google/android/vending/expansion/downloader/Helpers;->doesFileExist(Landroid/content/Context;Ljava/lang/String;JZ)Z

    move-result v6

    if-nez v6, :cond_0

    .line 77
    .end local v1    # "fileName":Ljava/lang/String;
    .end local v4    # "obbPackage":Lcom/codeglue/terraria/ObbPackage;
    :goto_1
    return v5

    .line 69
    .restart local v1    # "fileName":Ljava/lang/String;
    .restart local v4    # "obbPackage":Lcom/codeglue/terraria/ObbPackage;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 77
    .end local v1    # "fileName":Ljava/lang/String;
    .end local v4    # "obbPackage":Lcom/codeglue/terraria/ObbPackage;
    :cond_1
    const/4 v5, 0x1

    goto :goto_1
.end method

.method public isCompleted()Z
    .locals 1

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/codeglue/terraria/ExpansionDownloader;->completed:Z

    return v0
.end method

.method public onDownloadProgress(Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;)V
    .locals 4
    .param p1, "progress"    # Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;

    .prologue
    .line 379
    const-string v0, "Octarine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ExpansionDownloader: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p1, Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;->mOverallProgress:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p1, Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;->mOverallTotal:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " downloaded"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    return-void
.end method

.method public onDownloadStateChanged(I)V
    .locals 2
    .param p1, "newState"    # I

    .prologue
    .line 267
    const-string v0, "Octarine"

    const-string v1, "ExpansionDownloader: onDownloadStateChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    invoke-static {}, Lcom/codeglue/terraria/DownloadStatus;->values()[Lcom/codeglue/terraria/DownloadStatus;

    move-result-object v0

    aget-object v0, v0, p1

    invoke-virtual {p0, v0}, Lcom/codeglue/terraria/ExpansionDownloader;->DisplayDownloadStatus(Lcom/codeglue/terraria/DownloadStatus;)V

    .line 269
    return-void
.end method

.method protected onResume()V
    .locals 24

    .prologue
    .line 87
    const-string v21, "Octarine"

    const-string v22, "ExpansionDownloader: onResume"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/codeglue/terraria/ExpansionDownloader;->downloadStub:Lcom/google/android/vending/expansion/downloader/IStub;

    move-object/from16 v21, v0

    if-eqz v21, :cond_0

    .line 97
    const-string v21, "Octarine"

    const-string v22, "ExpansionDownloader: connect to downloadStub"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/codeglue/terraria/ExpansionDownloader;->downloadStub:Lcom/google/android/vending/expansion/downloader/IStub;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/codeglue/terraria/ExpansionDownloader;->terraria:Lcom/codeglue/terraria/OctarineActivity;

    move-object/from16 v22, v0

    invoke-interface/range {v21 .. v22}, Lcom/google/android/vending/expansion/downloader/IStub;->connect(Landroid/content/Context;)V

    .line 101
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/codeglue/terraria/ExpansionDownloader;->terraria:Lcom/codeglue/terraria/OctarineActivity;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    const/16 v23, 0x1

    invoke-static/range {v21 .. v23}, Lcom/google/android/vending/expansion/downloader/Helpers;->getExpansionAPKFileName(Landroid/content/Context;ZI)Ljava/lang/String;

    move-result-object v14

    .line 102
    .local v14, "pathToFile":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/codeglue/terraria/ExpansionDownloader;->terraria:Lcom/codeglue/terraria/OctarineActivity;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-static {v0, v14}, Lcom/google/android/vending/expansion/downloader/Helpers;->generateSaveFileName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 103
    const-string v21, "Octarine"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "ExpansionDownloader: path to fake file: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    const-string v21, "\\"

    const-string v22, "/"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v14, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v13

    .line 106
    .local v13, "path":Ljava/lang/String;
    const-string v21, "/"

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 108
    .local v3, "array":[Ljava/lang/String;
    const-string v15, ""

    .line 109
    .local v15, "pathToFolder":Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    array-length v0, v3

    move/from16 v21, v0

    add-int/lit8 v21, v21, -0x1

    move/from16 v0, v21

    if-ge v8, v0, :cond_1

    .line 111
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    aget-object v22, v3, v8

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "/"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 109
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 113
    :cond_1
    const-string v21, "Octarine"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "ExpansionDownloader: pathToFolder: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 117
    .local v7, "folder":Ljava/io/File;
    const-string v21, "Octarine"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "ExpansionDownloader: folder: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    :try_start_0
    invoke-virtual {v7}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v11

    .line 122
    .local v11, "listOfFiles":[Ljava/io/File;
    const-string v21, "Octarine"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "ExpansionDownloader: listOfFiles length: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    array-length v0, v11

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    const/4 v8, 0x0

    :goto_1
    array-length v0, v11

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v8, v0, :cond_4

    .line 126
    aget-object v21, v11, v8

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->isFile()Z

    move-result v21

    if-eqz v21, :cond_3

    .line 128
    const-string v21, "Octarine"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "ExpansionDownloader: File "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    aget-object v23, v11, v8

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :cond_2
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 130
    :cond_3
    aget-object v21, v11, v8

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->isDirectory()Z

    move-result v21

    if-eqz v21, :cond_2

    .line 132
    const-string v21, "Octarine"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "ExpansionDownloader: Directory "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    aget-object v23, v11, v8

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 136
    .end local v11    # "listOfFiles":[Ljava/io/File;
    :catch_0
    move-exception v5

    .line 138
    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 142
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/codeglue/terraria/ExpansionDownloader;->filesDelivered()Z

    move-result v21

    if-nez v21, :cond_8

    .line 146
    :try_start_1
    const-string v21, "Octarine"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "ExpansionDownloader: try to download file(s), "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    sget-object v23, Lcom/codeglue/terraria/ExpansionDownloader;->xOBBs:[Lcom/codeglue/terraria/ObbPackage;

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " file(s) to download"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    const/high16 v9, 0x14000000

    .line 149
    .local v9, "launchFlags":I
    new-instance v10, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/codeglue/terraria/ExpansionDownloader;->terraria:Lcom/codeglue/terraria/OctarineActivity;

    move-object/from16 v21, v0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-direct {v10, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 150
    .local v10, "launchIntent":Landroid/content/Intent;
    invoke-virtual {v10, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 152
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/codeglue/terraria/ExpansionDownloader;->terraria:Lcom/codeglue/terraria/OctarineActivity;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/high16 v23, 0x8000000

    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-static {v0, v1, v10, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v16

    .line 154
    .local v16, "pendingIntent":Landroid/app/PendingIntent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/codeglue/terraria/ExpansionDownloader;->terraria:Lcom/codeglue/terraria/OctarineActivity;

    move-object/from16 v21, v0

    const-class v22, Lcom/codeglue/terraria/DownloadService;

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Lcom/google/android/vending/expansion/downloader/DownloaderClientMarshaller;->startDownloadServiceIfRequired(Landroid/content/Context;Landroid/app/PendingIntent;Ljava/lang/Class;)Lcom/google/android/vending/expansion/downloader/impl/StatusReport;

    move-result-object v18

    .line 156
    .local v18, "startResult":Lcom/google/android/vending/expansion/downloader/impl/StatusReport;
    move-object/from16 v0, v18

    iget v0, v0, Lcom/google/android/vending/expansion/downloader/impl/StatusReport;->DownloadStatus:I

    move/from16 v21, v0

    if-nez v21, :cond_6

    .line 158
    const-string v21, "Octarine"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "ExpansionDownloader: Something broke, file can\'t be found, but also not required to be downloaded! (Filename: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/android/vending/expansion/downloader/impl/StatusReport;->ObbFileName:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ")"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    const-string v19, "No download required"

    .line 162
    .local v19, "text":Ljava/lang/CharSequence;
    const/4 v4, 0x0

    .line 164
    .local v4, "duration":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/codeglue/terraria/ExpansionDownloader;->terraria:Lcom/codeglue/terraria/OctarineActivity;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v20

    .line 165
    .local v20, "toast":Landroid/widget/Toast;
    invoke-virtual/range {v20 .. v20}, Landroid/widget/Toast;->show()V

    .line 167
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/codeglue/terraria/ExpansionDownloader;->terraria:Lcom/codeglue/terraria/OctarineActivity;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/codeglue/terraria/OctarineActivity;->getPackageName()Ljava/lang/String;

    move-result-object v12

    .line 168
    .local v12, "packageName":Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v17

    .line 169
    .local v17, "root":Ljava/io/File;
    new-instance v6, Ljava/io/File;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "/Android/data/"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 170
    .local v6, "extractionPath":Ljava/io/File;
    const-string v21, "Octarine"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "ExpansionDownloader: Setting path to "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v6}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    invoke-virtual {v6}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/codeglue/terraria/ExpansionDownloader;->terraria:Lcom/codeglue/terraria/OctarineActivity;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/codeglue/terraria/ExpansionDownloader;->CheckIfMusicExists(Ljava/lang/String;Lcom/codeglue/terraria/OctarineActivity;)Z

    move-result v21

    if-eqz v21, :cond_5

    .line 174
    invoke-virtual {v6}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/codeglue/terraria/OctarineBridge;->nativeOnExpansionFileExtracted(Ljava/lang/String;)V

    .line 206
    .end local v4    # "duration":I
    .end local v6    # "extractionPath":Ljava/io/File;
    .end local v9    # "launchFlags":I
    .end local v10    # "launchIntent":Landroid/content/Intent;
    .end local v12    # "packageName":Ljava/lang/String;
    .end local v16    # "pendingIntent":Landroid/app/PendingIntent;
    .end local v17    # "root":Ljava/io/File;
    .end local v18    # "startResult":Lcom/google/android/vending/expansion/downloader/impl/StatusReport;
    .end local v19    # "text":Ljava/lang/CharSequence;
    .end local v20    # "toast":Landroid/widget/Toast;
    :cond_5
    :goto_3
    return-void

    .line 180
    .restart local v9    # "launchFlags":I
    .restart local v10    # "launchIntent":Landroid/content/Intent;
    .restart local v16    # "pendingIntent":Landroid/app/PendingIntent;
    .restart local v18    # "startResult":Lcom/google/android/vending/expansion/downloader/impl/StatusReport;
    :cond_6
    const-string v21, "Octarine"

    const-string v22, "ExpansionDownloader: creating downloadStub"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    const-class v21, Lcom/codeglue/terraria/DownloadService;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/google/android/vending/expansion/downloader/DownloaderClientMarshaller;->CreateStub(Lcom/google/android/vending/expansion/downloader/IDownloaderClient;Ljava/lang/Class;)Lcom/google/android/vending/expansion/downloader/IStub;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/codeglue/terraria/ExpansionDownloader;->downloadStub:Lcom/google/android/vending/expansion/downloader/IStub;

    .line 182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/codeglue/terraria/ExpansionDownloader;->downloadStub:Lcom/google/android/vending/expansion/downloader/IStub;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/codeglue/terraria/ExpansionDownloader;->terraria:Lcom/codeglue/terraria/OctarineActivity;

    move-object/from16 v22, v0

    invoke-interface/range {v21 .. v22}, Lcom/google/android/vending/expansion/downloader/IStub;->connect(Landroid/content/Context;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 203
    .end local v9    # "launchFlags":I
    .end local v10    # "launchIntent":Landroid/content/Intent;
    .end local v16    # "pendingIntent":Landroid/app/PendingIntent;
    .end local v18    # "startResult":Lcom/google/android/vending/expansion/downloader/impl/StatusReport;
    :cond_7
    :goto_4
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/codeglue/terraria/ExpansionDownloader;->completed:Z

    goto :goto_3

    .line 185
    :catch_1
    move-exception v5

    .line 187
    .local v5, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v21, "Octarine"

    const-string v22, "ExpansionDownloader: no package found"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    invoke-virtual {v5}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_4

    .line 191
    .end local v5    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_8
    sget-object v21, Lcom/codeglue/terraria/ExpansionDownloader;->xOBBs:[Lcom/codeglue/terraria/ObbPackage;

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    if-eqz v21, :cond_7

    .line 193
    const-string v21, "Octarine"

    const-string v22, "ExpansionDownloader: Trying to read expansion files"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    :try_start_2
    invoke-direct/range {p0 .. p0}, Lcom/codeglue/terraria/ExpansionDownloader;->ReadExpansionFile()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    .line 198
    :catch_2
    move-exception v5

    .line 200
    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4
.end method

.method public onServiceConnected(Landroid/os/Messenger;)V
    .locals 2
    .param p1, "m"    # Landroid/os/Messenger;

    .prologue
    .line 259
    const-string v0, "Octarine"

    const-string v1, "ExpansionDownloader: onServiceConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    invoke-static {p1}, Lcom/google/android/vending/expansion/downloader/DownloaderServiceMarshaller;->CreateProxy(Landroid/os/Messenger;)Lcom/google/android/vending/expansion/downloader/IDownloaderService;

    move-result-object v0

    iput-object v0, p0, Lcom/codeglue/terraria/ExpansionDownloader;->remoteService:Lcom/google/android/vending/expansion/downloader/IDownloaderService;

    .line 261
    iget-object v0, p0, Lcom/codeglue/terraria/ExpansionDownloader;->remoteService:Lcom/google/android/vending/expansion/downloader/IDownloaderService;

    iget-object v1, p0, Lcom/codeglue/terraria/ExpansionDownloader;->downloadStub:Lcom/google/android/vending/expansion/downloader/IStub;

    invoke-interface {v1}, Lcom/google/android/vending/expansion/downloader/IStub;->getMessenger()Landroid/os/Messenger;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/vending/expansion/downloader/IDownloaderService;->onClientUpdated(Landroid/os/Messenger;)V

    .line 262
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 248
    const/4 v0, 0x0

    sput-boolean v0, Lcom/codeglue/terraria/ExpansionDownloader;->expandingFiles:Z

    .line 249
    const-string v0, "Octarine"

    const-string v1, "ExpansionDownloader: onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    iget-object v0, p0, Lcom/codeglue/terraria/ExpansionDownloader;->downloadStub:Lcom/google/android/vending/expansion/downloader/IStub;

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/codeglue/terraria/ExpansionDownloader;->downloadStub:Lcom/google/android/vending/expansion/downloader/IStub;

    iget-object v1, p0, Lcom/codeglue/terraria/ExpansionDownloader;->terraria:Lcom/codeglue/terraria/OctarineActivity;

    invoke-interface {v0, v1}, Lcom/google/android/vending/expansion/downloader/IStub;->disconnect(Landroid/content/Context;)V

    .line 254
    :cond_0
    return-void
.end method
