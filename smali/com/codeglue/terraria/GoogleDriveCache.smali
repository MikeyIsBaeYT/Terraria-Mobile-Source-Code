.class Lcom/codeglue/terraria/GoogleDriveCache;
.super Ljava/util/TimerTask;
.source "GoogleDriveCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codeglue/terraria/GoogleDriveCache$CachedData;
    }
.end annotation


# instance fields
.field protected activity:Landroid/app/Activity;

.field protected cloudKey:Ljava/lang/String;

.field protected cloudValue:Ljava/lang/String;

.field protected dataFolderString:Ljava/lang/String;

.field protected dataPathString:Ljava/lang/String;

.field protected deletedThisSession:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected fileToWrite:Lcom/google/android/gms/drive/DriveFile;

.field protected isRunning:Z

.field protected playService:Lcom/codeglue/terraria/PlayService;

.field protected rootFolder:Lcom/google/android/gms/drive/DriveId;

.field private final saveCallback:Lcom/google/android/gms/common/api/ResultCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/ResultCallback",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation
.end field

.field protected scheduler:Ljava/util/Timer;

.field private synchronizationTask:Ljava/lang/Runnable;

.field protected updateIntervalMs:J

.field protected uploadedThisSession:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final writeCallback:Lcom/google/android/gms/common/api/ResultCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/ResultCallback",
            "<",
            "Lcom/google/android/gms/drive/DriveApi$DriveContentsResult;",
            ">;"
        }
    .end annotation
.end field

.field protected writeValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/codeglue/terraria/PlayService;)V
    .locals 3
    .param p1, "newActivity"    # Landroid/app/Activity;
    .param p2, "service"    # Lcom/codeglue/terraria/PlayService;

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 92
    new-instance v0, Lcom/codeglue/terraria/GoogleDriveCache$1;

    invoke-direct {v0, p0}, Lcom/codeglue/terraria/GoogleDriveCache$1;-><init>(Lcom/codeglue/terraria/GoogleDriveCache;)V

    iput-object v0, p0, Lcom/codeglue/terraria/GoogleDriveCache;->synchronizationTask:Ljava/lang/Runnable;

    .line 835
    new-instance v0, Lcom/codeglue/terraria/GoogleDriveCache$2;

    invoke-direct {v0, p0}, Lcom/codeglue/terraria/GoogleDriveCache$2;-><init>(Lcom/codeglue/terraria/GoogleDriveCache;)V

    iput-object v0, p0, Lcom/codeglue/terraria/GoogleDriveCache;->writeCallback:Lcom/google/android/gms/common/api/ResultCallback;

    .line 866
    new-instance v0, Lcom/codeglue/terraria/GoogleDriveCache$3;

    invoke-direct {v0, p0}, Lcom/codeglue/terraria/GoogleDriveCache$3;-><init>(Lcom/codeglue/terraria/GoogleDriveCache;)V

    iput-object v0, p0, Lcom/codeglue/terraria/GoogleDriveCache;->saveCallback:Lcom/google/android/gms/common/api/ResultCallback;

    .line 54
    const-string v0, "Octarine"

    const-string v1, "[DRIVE] GoogleDriveCache"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/codeglue/terraria/GoogleDriveCache;->isRunning:Z

    .line 56
    const-wide/32 v0, 0xea60

    iput-wide v0, p0, Lcom/codeglue/terraria/GoogleDriveCache;->updateIntervalMs:J

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/codeglue/terraria/GoogleDriveCache;->rootFolder:Lcom/google/android/gms/drive/DriveId;

    .line 58
    iput-object p2, p0, Lcom/codeglue/terraria/GoogleDriveCache;->playService:Lcom/codeglue/terraria/PlayService;

    .line 59
    iput-object p1, p0, Lcom/codeglue/terraria/GoogleDriveCache;->activity:Landroid/app/Activity;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/codeglue/terraria/GoogleDriveCache;->uploadedThisSession:Ljava/util/ArrayList;

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/codeglue/terraria/GoogleDriveCache;->deletedThisSession:Ljava/util/ArrayList;

    .line 63
    const-string v0, "/google_drive/"

    iput-object v0, p0, Lcom/codeglue/terraria/GoogleDriveCache;->dataFolderString:Ljava/lang/String;

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/codeglue/terraria/GoogleDriveCache;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/codeglue/terraria/GoogleDriveCache;->dataFolderString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/codeglue/terraria/GoogleDriveCache;->dataPathString:Ljava/lang/String;

    .line 65
    const-string v0, "Octarine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DRIVE] dataPathString: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/codeglue/terraria/GoogleDriveCache;->dataPathString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    return-void
.end method

.method private Delete(Lcom/codeglue/terraria/GoogleDriveCache$CachedData;)V
    .locals 4
    .param p1, "data"    # Lcom/codeglue/terraria/GoogleDriveCache$CachedData;

    .prologue
    .line 307
    const-string v1, "Octarine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[DRIVE] Delete: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/codeglue/terraria/GoogleDriveCache$CachedData;->filename:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/codeglue/terraria/GoogleDriveCache;->dataPathString:Ljava/lang/String;

    iget-object v2, p1, Lcom/codeglue/terraria/GoogleDriveCache$CachedData;->filename:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 310
    return-void
.end method

.method private Download(Lcom/codeglue/terraria/GoogleDriveCache$CachedData;)V
    .locals 4
    .param p1, "cloud"    # Lcom/codeglue/terraria/GoogleDriveCache$CachedData;

    .prologue
    .line 314
    const-string v1, "Octarine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[DRIVE] Download: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/codeglue/terraria/GoogleDriveCache$CachedData;->filename:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    iget-object v1, p1, Lcom/codeglue/terraria/GoogleDriveCache$CachedData;->filename:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/codeglue/terraria/GoogleDriveCache;->GetCloudFileContents(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/codeglue/terraria/GoogleDriveCache;->WriteToLocalFile(Lcom/codeglue/terraria/GoogleDriveCache$CachedData;Ljava/lang/String;)V

    .line 317
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/codeglue/terraria/GoogleDriveCache;->dataPathString:Ljava/lang/String;

    iget-object v2, p1, Lcom/codeglue/terraria/GoogleDriveCache$CachedData;->filename:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    .local v0, "file":Ljava/io/File;
    iget-object v1, p1, Lcom/codeglue/terraria/GoogleDriveCache$CachedData;->filename:Ljava/lang/String;

    iget-object v2, p1, Lcom/codeglue/terraria/GoogleDriveCache$CachedData;->modifiedDate:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-direct {p0, v1, v2, v3}, Lcom/codeglue/terraria/GoogleDriveCache;->UpdateLastModifiedTime(Ljava/lang/String;J)V

    .line 319
    return-void
.end method

.method private GetAllCachedKeys()Ljava/util/ArrayList;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/codeglue/terraria/GoogleDriveCache$CachedData;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    .line 693
    const-string v12, "Octarine"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[DRIVE] GetAllCachedKeys: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/codeglue/terraria/GoogleDriveCache;->dataPathString:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 696
    .local v7, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/codeglue/terraria/GoogleDriveCache$CachedData;>;"
    new-instance v8, Ljava/io/File;

    iget-object v12, p0, Lcom/codeglue/terraria/GoogleDriveCache;->dataPathString:Ljava/lang/String;

    invoke-direct {v8, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 698
    .local v8, "root":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 700
    .local v3, "files":[Ljava/io/File;
    const-string v12, "Octarine"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[DRIVE] GetAllCachedKeys: files "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    if-eqz v3, :cond_2

    :goto_0
    invoke-static {v9}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v12, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    if-eqz v3, :cond_3

    .line 703
    move-object v0, v3

    .local v0, "arr$":[Ljava/io/File;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_1
    if-ge v4, v5, :cond_3

    aget-object v2, v0, v4

    .line 705
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 707
    const-string v9, "Octarine"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[DRIVE] LocalFile: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v12, "\\."

    invoke-virtual {v9, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 713
    .local v6, "parts":[Ljava/lang/String;
    const/4 v9, 0x1

    :try_start_0
    aget-object v9, v6, v9

    const-string v12, "csworld"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    const/4 v9, 0x1

    aget-object v9, v6, v9

    const-string v12, "cs"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 715
    :cond_0
    new-instance v1, Lcom/codeglue/terraria/GoogleDriveCache$CachedData;

    invoke-direct {v1, p0}, Lcom/codeglue/terraria/GoogleDriveCache$CachedData;-><init>(Lcom/codeglue/terraria/GoogleDriveCache;)V

    .line 716
    .local v1, "cachedData":Lcom/codeglue/terraria/GoogleDriveCache$CachedData;
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v1, Lcom/codeglue/terraria/GoogleDriveCache$CachedData;->filename:Ljava/lang/String;

    .line 718
    const-string v9, "Octarine"

    const-string v12, "[DRIVE] Added"

    invoke-static {v9, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    iget-object v9, v1, Lcom/codeglue/terraria/GoogleDriveCache$CachedData;->filename:Ljava/lang/String;

    invoke-direct {p0, v9}, Lcom/codeglue/terraria/GoogleDriveCache;->GetLastModifiedTime(Ljava/lang/String;)J

    move-result-wide v10

    .line 722
    .local v10, "time":J
    new-instance v9, Ljava/util/Date;

    invoke-direct {v9}, Ljava/util/Date;-><init>()V

    iput-object v9, v1, Lcom/codeglue/terraria/GoogleDriveCache$CachedData;->modifiedDate:Ljava/util/Date;

    .line 723
    iget-object v9, v1, Lcom/codeglue/terraria/GoogleDriveCache$CachedData;->modifiedDate:Ljava/util/Date;

    invoke-virtual {v9, v10, v11}, Ljava/util/Date;->setTime(J)V

    .line 725
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 703
    .end local v1    # "cachedData":Lcom/codeglue/terraria/GoogleDriveCache$CachedData;
    .end local v6    # "parts":[Ljava/lang/String;
    .end local v10    # "time":J
    :cond_1
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 700
    .end local v0    # "arr$":[Ljava/io/File;
    .end local v2    # "file":Ljava/io/File;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    :cond_2
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 736
    :cond_3
    return-object v7

    .line 728
    .restart local v0    # "arr$":[Ljava/io/File;
    .restart local v2    # "file":Ljava/io/File;
    .restart local v4    # "i$":I
    .restart local v5    # "len$":I
    .restart local v6    # "parts":[Ljava/lang/String;
    :catch_0
    move-exception v9

    goto :goto_2
.end method

.method private GetAllCloudKeys()Ljava/util/ArrayList;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/codeglue/terraria/GoogleDriveCache$CachedData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 741
    const-string v16, "Octarine"

    const-string v17, "[DRIVE] GetAllCloudKeys"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 744
    .local v12, "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/codeglue/terraria/GoogleDriveCache$CachedData;>;"
    invoke-direct/range {p0 .. p0}, Lcom/codeglue/terraria/GoogleDriveCache;->GetRootFolder()Lcom/google/android/gms/drive/DriveId;

    move-result-object v7

    .line 746
    .local v7, "folderId":Lcom/google/android/gms/drive/DriveId;
    if-eqz v7, :cond_5

    .line 748
    sget-object v16, Lcom/google/android/gms/drive/Drive;->DriveApi:Lcom/google/android/gms/drive/DriveApi;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/codeglue/terraria/GoogleDriveCache;->playService:Lcom/codeglue/terraria/PlayService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/codeglue/terraria/PlayService;->client:Lcom/google/android/gms/common/api/GoogleApiClient;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-interface {v0, v1, v7}, Lcom/google/android/gms/drive/DriveApi;->getFolder(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/drive/DriveId;)Lcom/google/android/gms/drive/DriveFolder;

    move-result-object v4

    .line 750
    .local v4, "fileFolder":Lcom/google/android/gms/drive/DriveFolder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/codeglue/terraria/GoogleDriveCache;->playService:Lcom/codeglue/terraria/PlayService;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/codeglue/terraria/PlayService;->client:Lcom/google/android/gms/common/api/GoogleApiClient;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-interface {v4, v0}, Lcom/google/android/gms/drive/DriveFolder;->listChildren(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Lcom/google/android/gms/common/api/PendingResult;->await()Lcom/google/android/gms/common/api/Result;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/drive/DriveApi$MetadataBufferResult;

    .line 751
    .local v8, "folderResult":Lcom/google/android/gms/drive/DriveApi$MetadataBufferResult;
    invoke-interface {v8}, Lcom/google/android/gms/drive/DriveApi$MetadataBufferResult;->getMetadataBuffer()Lcom/google/android/gms/drive/MetadataBuffer;

    move-result-object v6

    .line 753
    .local v6, "folderBuffer":Lcom/google/android/gms/drive/MetadataBuffer;
    const-string v16, "Octarine"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "[DRIVE] File count: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v6}, Lcom/google/android/gms/drive/MetadataBuffer;->getCount()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    invoke-virtual {v6}, Lcom/google/android/gms/drive/MetadataBuffer;->getCount()I

    move-result v16

    move/from16 v0, v16

    if-ge v9, v0, :cond_4

    .line 756
    invoke-virtual {v6, v9}, Lcom/google/android/gms/drive/MetadataBuffer;->get(I)Lcom/google/android/gms/drive/Metadata;

    move-result-object v3

    .line 757
    .local v3, "data":Lcom/google/android/gms/drive/Metadata;
    const-string v16, "Octarine"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "[DRIVE] Cloud file: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v3}, Lcom/google/android/gms/drive/Metadata;->getTitle()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " mime: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v3}, Lcom/google/android/gms/drive/Metadata;->getMimeType()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " size: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v3}, Lcom/google/android/gms/drive/Metadata;->getFileSize()J

    move-result-wide v18

    invoke-virtual/range {v17 .. v19}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    invoke-virtual {v3}, Lcom/google/android/gms/drive/Metadata;->isTrashed()Z

    move-result v16

    if-nez v16, :cond_1

    const/4 v15, 0x1

    .line 760
    .local v15, "notTrashed":Z
    :goto_1
    invoke-virtual {v3}, Lcom/google/android/gms/drive/Metadata;->isFolder()Z

    move-result v16

    if-nez v16, :cond_2

    const/4 v14, 0x1

    .line 761
    .local v14, "notAFolder":Z
    :goto_2
    invoke-virtual {v3}, Lcom/google/android/gms/drive/Metadata;->getFileSize()J

    move-result-wide v16

    const-wide/16 v18, 0x0

    cmp-long v16, v16, v18

    if-lez v16, :cond_3

    const/4 v5, 0x1

    .line 763
    .local v5, "fileIsNotEmpty":Z
    :goto_3
    invoke-virtual {v3}, Lcom/google/android/gms/drive/Metadata;->getMimeType()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    .line 764
    .local v13, "lowercaseMime":Ljava/lang/String;
    const-string v16, "terraria/player"

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    .line 765
    .local v10, "isPlayerFile":Z
    const-string v16, "terraria/world"

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    .line 767
    .local v11, "isWorldFile":Z
    if-eqz v15, :cond_0

    if-eqz v14, :cond_0

    if-eqz v5, :cond_0

    .line 769
    const-string v16, "Octarine"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "[DRIVE] GetAllKeys: Added key: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v3}, Lcom/google/android/gms/drive/Metadata;->getTitle()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " mime: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v3}, Lcom/google/android/gms/drive/Metadata;->getMimeType()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    new-instance v2, Lcom/codeglue/terraria/GoogleDriveCache$CachedData;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/codeglue/terraria/GoogleDriveCache$CachedData;-><init>(Lcom/codeglue/terraria/GoogleDriveCache;)V

    .line 772
    .local v2, "cachedData":Lcom/codeglue/terraria/GoogleDriveCache$CachedData;
    invoke-virtual {v3}, Lcom/google/android/gms/drive/Metadata;->getTitle()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v2, Lcom/codeglue/terraria/GoogleDriveCache$CachedData;->filename:Ljava/lang/String;

    .line 773
    invoke-virtual {v3}, Lcom/google/android/gms/drive/Metadata;->getModifiedDate()Ljava/util/Date;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v2, Lcom/codeglue/terraria/GoogleDriveCache$CachedData;->modifiedDate:Ljava/util/Date;

    .line 774
    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 754
    .end local v2    # "cachedData":Lcom/codeglue/terraria/GoogleDriveCache$CachedData;
    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    .line 759
    .end local v5    # "fileIsNotEmpty":Z
    .end local v10    # "isPlayerFile":Z
    .end local v11    # "isWorldFile":Z
    .end local v13    # "lowercaseMime":Ljava/lang/String;
    .end local v14    # "notAFolder":Z
    .end local v15    # "notTrashed":Z
    :cond_1
    const/4 v15, 0x0

    goto :goto_1

    .line 760
    .restart local v15    # "notTrashed":Z
    :cond_2
    const/4 v14, 0x0

    goto :goto_2

    .line 761
    .restart local v14    # "notAFolder":Z
    :cond_3
    const/4 v5, 0x0

    goto :goto_3

    .line 777
    .end local v3    # "data":Lcom/google/android/gms/drive/Metadata;
    .end local v14    # "notAFolder":Z
    .end local v15    # "notTrashed":Z
    :cond_4
    invoke-interface {v8}, Lcom/google/android/gms/drive/DriveApi$MetadataBufferResult;->release()V

    .line 778
    invoke-virtual {v6}, Lcom/google/android/gms/drive/MetadataBuffer;->release()V

    .line 785
    .end local v4    # "fileFolder":Lcom/google/android/gms/drive/DriveFolder;
    .end local v6    # "folderBuffer":Lcom/google/android/gms/drive/MetadataBuffer;
    .end local v8    # "folderResult":Lcom/google/android/gms/drive/DriveApi$MetadataBufferResult;
    .end local v9    # "i":I
    :goto_4
    return-object v12

    .line 782
    :cond_5
    const-string v16, "Octarine"

    const-string v17, "[DRIVE] GetAllKeys: folderId == null"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method private GetCloudFileContents(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 528
    const-string v10, "Octarine"

    const-string v11, "[DRIVE] GetCloudFileContents"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    invoke-direct {p0}, Lcom/codeglue/terraria/GoogleDriveCache;->GetRootFolder()Lcom/google/android/gms/drive/DriveId;

    move-result-object v5

    .line 530
    .local v5, "folderId":Lcom/google/android/gms/drive/DriveId;
    invoke-virtual {p0, v5, p1}, Lcom/codeglue/terraria/GoogleDriveCache;->FindDriveFile(Lcom/google/android/gms/drive/DriveId;Ljava/lang/String;)Lcom/google/android/gms/drive/DriveId;

    move-result-object v4

    .line 532
    .local v4, "fileId":Lcom/google/android/gms/drive/DriveId;
    if-nez v4, :cond_0

    .line 534
    const-string v10, "Octarine"

    const-string v11, "[DRIVE] GetCloudFileContents returning null 1"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    :goto_0
    return-object v9

    .line 538
    :cond_0
    sget-object v10, Lcom/google/android/gms/drive/Drive;->DriveApi:Lcom/google/android/gms/drive/DriveApi;

    iget-object v11, p0, Lcom/codeglue/terraria/GoogleDriveCache;->playService:Lcom/codeglue/terraria/PlayService;

    iget-object v11, v11, Lcom/codeglue/terraria/PlayService;->client:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v10, v11, v4}, Lcom/google/android/gms/drive/DriveApi;->getFile(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/drive/DriveId;)Lcom/google/android/gms/drive/DriveFile;

    move-result-object v2

    .line 540
    .local v2, "driveFile":Lcom/google/android/gms/drive/DriveFile;
    iget-object v10, p0, Lcom/codeglue/terraria/GoogleDriveCache;->playService:Lcom/codeglue/terraria/PlayService;

    iget-object v10, v10, Lcom/codeglue/terraria/PlayService;->client:Lcom/google/android/gms/common/api/GoogleApiClient;

    const/high16 v11, 0x10000000

    invoke-interface {v2, v10, v11, v9}, Lcom/google/android/gms/drive/DriveFile;->open(Lcom/google/android/gms/common/api/GoogleApiClient;ILcom/google/android/gms/drive/DriveFile$DownloadProgressListener;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v10

    invoke-interface {v10}, Lcom/google/android/gms/common/api/PendingResult;->await()Lcom/google/android/gms/common/api/Result;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/drive/DriveApi$DriveContentsResult;

    .line 541
    .local v1, "content":Lcom/google/android/gms/drive/DriveApi$DriveContentsResult;
    invoke-interface {v1}, Lcom/google/android/gms/drive/DriveApi$DriveContentsResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v10

    if-nez v10, :cond_1

    .line 543
    const-string v10, "Octarine"

    const-string v11, "[DRIVE] GetCloudFileContents returning null 2"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 548
    :cond_1
    invoke-interface {v1}, Lcom/google/android/gms/drive/DriveApi$DriveContentsResult;->getDriveContents()Lcom/google/android/gms/drive/DriveContents;

    move-result-object v7

    .line 549
    .local v7, "mContent":Lcom/google/android/gms/drive/DriveContents;
    new-instance v8, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/InputStreamReader;

    invoke-interface {v7}, Lcom/google/android/gms/drive/DriveContents;->getInputStream()Ljava/io/InputStream;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v8, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 550
    .local v8, "reader":Ljava/io/BufferedReader;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 551
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v6, ""

    .line 555
    .local v6, "line":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 562
    :goto_1
    if-eqz v6, :cond_2

    .line 564
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 567
    :try_start_1
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v6

    goto :goto_1

    .line 557
    :catch_0
    move-exception v3

    .line 559
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 569
    .end local v3    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v3

    .line 571
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 575
    .end local v3    # "e":Ljava/io/IOException;
    :cond_2
    const-string v9, "Octarine"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[DRIVE] GetCloudFileContents returning: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_0
.end method

.method private GetLastModifiedTime(Ljava/lang/String;)J
    .locals 14
    .param p1, "localKey"    # Ljava/lang/String;

    .prologue
    .line 454
    :try_start_0
    new-instance v4, Ljava/io/File;

    iget-object v9, p0, Lcom/codeglue/terraria/GoogleDriveCache;->dataPathString:Ljava/lang/String;

    invoke-direct {v4, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 455
    .local v4, "folder":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "meta"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v2, v9, v12}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    .local v2, "f":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_0

    .line 459
    const-string v9, "Octarine"

    const-string v12, "[DRIVE] GetLastModifiedTime: File does not exist!"

    invoke-static {v9, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    const-wide/16 v10, 0x0

    .line 492
    .end local v2    # "f":Ljava/io/File;
    .end local v4    # "folder":Ljava/io/File;
    :goto_0
    return-wide v10

    .line 463
    .restart local v2    # "f":Ljava/io/File;
    .restart local v4    # "folder":Ljava/io/File;
    :cond_0
    const-string v9, "Octarine"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[DRIVE] GetLastModifiedTime getAbsolutePath: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 466
    .local v8, "stream":Ljava/io/FileInputStream;
    new-instance v7, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/InputStreamReader;

    invoke-direct {v9, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v7, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 469
    .local v7, "reader":Ljava/io/BufferedReader;
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 470
    .local v3, "fileData":Ljava/lang/StringBuffer;
    const/16 v9, 0x400

    new-array v0, v9, [C

    .line 471
    .local v0, "buf":[C
    const/4 v5, 0x0

    .line 473
    .local v5, "numRead":I
    :goto_1
    invoke-virtual {v7, v0}, Ljava/io/BufferedReader;->read([C)I

    move-result v5

    const/4 v9, -0x1

    if-eq v5, v9, :cond_1

    .line 475
    const/4 v9, 0x0

    invoke-static {v0, v9, v5}, Ljava/lang/String;->valueOf([CII)Ljava/lang/String;

    move-result-object v6

    .line 476
    .local v6, "readData":Ljava/lang/String;
    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 486
    .end local v0    # "buf":[C
    .end local v2    # "f":Ljava/io/File;
    .end local v3    # "fileData":Ljava/lang/StringBuffer;
    .end local v4    # "folder":Ljava/io/File;
    .end local v5    # "numRead":I
    .end local v6    # "readData":Ljava/lang/String;
    .end local v7    # "reader":Ljava/io/BufferedReader;
    .end local v8    # "stream":Ljava/io/FileInputStream;
    :catch_0
    move-exception v1

    .line 488
    .local v1, "e":Ljava/lang/Exception;
    const-string v9, "Octarine"

    const-string v12, "[DRIVE] GetLastModifiedTime EXCEPTION"

    invoke-static {v9, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 492
    const-wide/16 v10, 0x0

    goto :goto_0

    .line 479
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "buf":[C
    .restart local v2    # "f":Ljava/io/File;
    .restart local v3    # "fileData":Ljava/lang/StringBuffer;
    .restart local v4    # "folder":Ljava/io/File;
    .restart local v5    # "numRead":I
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    .restart local v8    # "stream":Ljava/io/FileInputStream;
    :cond_1
    :try_start_1
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V

    .line 481
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    .line 482
    .local v10, "time":J
    const-string v9, "Octarine"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[DRIVE] GetLastModifiedTime time: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private GetLocalFileContents(Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 357
    invoke-virtual {p0, p1}, Lcom/codeglue/terraria/GoogleDriveCache;->HasLocalKey(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 359
    const-string v10, "Octarine"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[DRIVE] GetLocalFileContents does NOT have local key: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    :goto_0
    return-object v9

    .line 363
    :cond_0
    const-string v10, "Octarine"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[DRIVE] GetLocalFileContents: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/codeglue/terraria/GoogleDriveCache;->dataPathString:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " | "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    :try_start_0
    const-string v10, "Octarine"

    const-string v11, "[DRIVE] GetLocalFileContents: Getting folder"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    new-instance v4, Ljava/io/File;

    iget-object v10, p0, Lcom/codeglue/terraria/GoogleDriveCache;->dataPathString:Ljava/lang/String;

    invoke-direct {v4, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 368
    .local v4, "folder":Ljava/io/File;
    const-string v10, "Octarine"

    const-string v11, "[DRIVE] GetLocalFileContents: Getting file"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    new-instance v2, Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v2, v10, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    .local v2, "f":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_1

    .line 373
    const-string v10, "Octarine"

    const-string v11, "[DRIVE] GetLocalFileContents: File does not exist!"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    const-string v9, ""

    goto :goto_0

    .line 377
    :cond_1
    const-string v10, "Octarine"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[DRIVE] File getAbsolutePath: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    const-string v10, "Octarine"

    const-string v11, "[DRIVE] GetLocalFileContents: Creating filestream"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 381
    .local v8, "stream":Ljava/io/FileInputStream;
    const-string v10, "Octarine"

    const-string v11, "[DRIVE] GetLocalFileContents: Creating buffered reader"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    new-instance v7, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/InputStreamReader;

    invoke-direct {v10, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v7, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 384
    .local v7, "reader":Ljava/io/BufferedReader;
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 385
    .local v3, "fileData":Ljava/lang/StringBuffer;
    const/16 v10, 0x400

    new-array v0, v10, [C

    .line 386
    .local v0, "buf":[C
    const/4 v5, 0x0

    .line 388
    .local v5, "numRead":I
    :goto_1
    invoke-virtual {v7, v0}, Ljava/io/BufferedReader;->read([C)I

    move-result v5

    const/4 v10, -0x1

    if-eq v5, v10, :cond_2

    .line 390
    const-string v10, "Octarine"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[DRIVE] GetLocalFileContents: read "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " bytes"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    const/4 v10, 0x0

    invoke-static {v0, v10, v5}, Ljava/lang/String;->valueOf([CII)Ljava/lang/String;

    move-result-object v6

    .line 392
    .local v6, "readData":Ljava/lang/String;
    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 400
    .end local v0    # "buf":[C
    .end local v2    # "f":Ljava/io/File;
    .end local v3    # "fileData":Ljava/lang/StringBuffer;
    .end local v4    # "folder":Ljava/io/File;
    .end local v5    # "numRead":I
    .end local v6    # "readData":Ljava/lang/String;
    .end local v7    # "reader":Ljava/io/BufferedReader;
    .end local v8    # "stream":Ljava/io/FileInputStream;
    :catch_0
    move-exception v1

    .line 402
    .local v1, "e":Ljava/lang/Exception;
    const-string v10, "Octarine"

    const-string v11, "[DRIVE] GetLocalFileContents EXCEPTION"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 395
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "buf":[C
    .restart local v2    # "f":Ljava/io/File;
    .restart local v3    # "fileData":Ljava/lang/StringBuffer;
    .restart local v4    # "folder":Ljava/io/File;
    .restart local v5    # "numRead":I
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    .restart local v8    # "stream":Ljava/io/FileInputStream;
    :cond_2
    :try_start_1
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V

    .line 397
    const-string v10, "Octarine"

    const-string v11, "[DRIVE] GetLocalFileContents: succes"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v9

    goto/16 :goto_0
.end method

.method private GetRootFolder()Lcom/google/android/gms/drive/DriveId;
    .locals 10

    .prologue
    .line 790
    const-string v8, "Octarine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[DRIVE] GetRootFolder: haveRootFolder:"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v7, p0, Lcom/codeglue/terraria/GoogleDriveCache;->rootFolder:Lcom/google/android/gms/drive/DriveId;

    if-eqz v7, :cond_0

    const/4 v7, 0x1

    :goto_0
    invoke-static {v7}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    iget-object v7, p0, Lcom/codeglue/terraria/GoogleDriveCache;->rootFolder:Lcom/google/android/gms/drive/DriveId;

    if-eqz v7, :cond_1

    .line 792
    iget-object v7, p0, Lcom/codeglue/terraria/GoogleDriveCache;->rootFolder:Lcom/google/android/gms/drive/DriveId;

    .line 824
    :goto_1
    return-object v7

    .line 790
    :cond_0
    const/4 v7, 0x0

    goto :goto_0

    .line 794
    :cond_1
    sget-object v7, Lcom/google/android/gms/drive/Drive;->DriveApi:Lcom/google/android/gms/drive/DriveApi;

    iget-object v8, p0, Lcom/codeglue/terraria/GoogleDriveCache;->playService:Lcom/codeglue/terraria/PlayService;

    iget-object v8, v8, Lcom/codeglue/terraria/PlayService;->client:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v7, v8}, Lcom/google/android/gms/drive/DriveApi;->getRootFolder(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/drive/DriveFolder;

    move-result-object v7

    iget-object v8, p0, Lcom/codeglue/terraria/GoogleDriveCache;->playService:Lcom/codeglue/terraria/PlayService;

    iget-object v8, v8, Lcom/codeglue/terraria/PlayService;->client:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v7, v8}, Lcom/google/android/gms/drive/DriveFolder;->listChildren(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v7

    invoke-interface {v7}, Lcom/google/android/gms/common/api/PendingResult;->await()Lcom/google/android/gms/common/api/Result;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/drive/DriveApi$MetadataBufferResult;

    .line 795
    .local v6, "rootResult":Lcom/google/android/gms/drive/DriveApi$MetadataBufferResult;
    invoke-interface {v6}, Lcom/google/android/gms/drive/DriveApi$MetadataBufferResult;->getMetadataBuffer()Lcom/google/android/gms/drive/MetadataBuffer;

    move-result-object v5

    .line 797
    .local v5, "rootBuffer":Lcom/google/android/gms/drive/MetadataBuffer;
    const/4 v3, 0x0

    .line 798
    .local v3, "foundDrive":Z
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    invoke-virtual {v5}, Lcom/google/android/gms/drive/MetadataBuffer;->getCount()I

    move-result v7

    if-ge v4, v7, :cond_2

    .line 800
    invoke-virtual {v5, v4}, Lcom/google/android/gms/drive/MetadataBuffer;->get(I)Lcom/google/android/gms/drive/Metadata;

    move-result-object v1

    .line 801
    .local v1, "data":Lcom/google/android/gms/drive/Metadata;
    invoke-virtual {v1}, Lcom/google/android/gms/drive/Metadata;->getTitle()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Terraria"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 803
    const-string v7, "Octarine"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[DRIVE] FindDriveFolder: DriveFolder found with ID: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Lcom/google/android/gms/drive/Metadata;->getDriveId()Lcom/google/android/gms/drive/DriveId;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    invoke-virtual {v1}, Lcom/google/android/gms/drive/Metadata;->getDriveId()Lcom/google/android/gms/drive/DriveId;

    move-result-object v7

    iput-object v7, p0, Lcom/codeglue/terraria/GoogleDriveCache;->rootFolder:Lcom/google/android/gms/drive/DriveId;

    .line 805
    const/4 v3, 0x1

    .line 809
    .end local v1    # "data":Lcom/google/android/gms/drive/Metadata;
    :cond_2
    invoke-interface {v6}, Lcom/google/android/gms/drive/DriveApi$MetadataBufferResult;->release()V

    .line 810
    invoke-virtual {v5}, Lcom/google/android/gms/drive/MetadataBuffer;->release()V

    .line 812
    if-nez v3, :cond_4

    .line 814
    const-string v7, "Octarine"

    const-string v8, "[DRIVE] FindDriveFolder: No DriveFolder found, creating folder"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    new-instance v7, Lcom/google/android/gms/drive/MetadataChangeSet$Builder;

    invoke-direct {v7}, Lcom/google/android/gms/drive/MetadataChangeSet$Builder;-><init>()V

    const-string v8, "Terraria"

    invoke-virtual {v7, v8}, Lcom/google/android/gms/drive/MetadataChangeSet$Builder;->setTitle(Ljava/lang/String;)Lcom/google/android/gms/drive/MetadataChangeSet$Builder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/drive/MetadataChangeSet$Builder;->build()Lcom/google/android/gms/drive/MetadataChangeSet;

    move-result-object v0

    .line 816
    .local v0, "changeSet":Lcom/google/android/gms/drive/MetadataChangeSet;
    sget-object v7, Lcom/google/android/gms/drive/Drive;->DriveApi:Lcom/google/android/gms/drive/DriveApi;

    iget-object v8, p0, Lcom/codeglue/terraria/GoogleDriveCache;->playService:Lcom/codeglue/terraria/PlayService;

    iget-object v8, v8, Lcom/codeglue/terraria/PlayService;->client:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v7, v8}, Lcom/google/android/gms/drive/DriveApi;->getRootFolder(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/drive/DriveFolder;

    move-result-object v7

    iget-object v8, p0, Lcom/codeglue/terraria/GoogleDriveCache;->playService:Lcom/codeglue/terraria/PlayService;

    iget-object v8, v8, Lcom/codeglue/terraria/PlayService;->client:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v7, v8, v0}, Lcom/google/android/gms/drive/DriveFolder;->createFolder(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/drive/MetadataChangeSet;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v7

    invoke-interface {v7}, Lcom/google/android/gms/common/api/PendingResult;->await()Lcom/google/android/gms/common/api/Result;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/drive/DriveFolder$DriveFolderResult;

    .line 817
    .local v2, "folderResult":Lcom/google/android/gms/drive/DriveFolder$DriveFolderResult;
    invoke-interface {v2}, Lcom/google/android/gms/drive/DriveFolder$DriveFolderResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v7

    if-nez v7, :cond_3

    .line 819
    const-string v7, "Octarine"

    const-string v8, "[DRIVE] FindDriveFolder: Failed to create new folder"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    :cond_3
    invoke-interface {v2}, Lcom/google/android/gms/drive/DriveFolder$DriveFolderResult;->getDriveFolder()Lcom/google/android/gms/drive/DriveFolder;

    move-result-object v7

    invoke-interface {v7}, Lcom/google/android/gms/drive/DriveFolder;->getDriveId()Lcom/google/android/gms/drive/DriveId;

    move-result-object v7

    iput-object v7, p0, Lcom/codeglue/terraria/GoogleDriveCache;->rootFolder:Lcom/google/android/gms/drive/DriveId;

    .line 824
    .end local v0    # "changeSet":Lcom/google/android/gms/drive/MetadataChangeSet;
    .end local v2    # "folderResult":Lcom/google/android/gms/drive/DriveFolder$DriveFolderResult;
    :cond_4
    iget-object v7, p0, Lcom/codeglue/terraria/GoogleDriveCache;->rootFolder:Lcom/google/android/gms/drive/DriveId;

    goto/16 :goto_1

    .line 798
    .restart local v1    # "data":Lcom/google/android/gms/drive/Metadata;
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2
.end method

.method private Synchronize()V
    .locals 23

    .prologue
    .line 180
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/codeglue/terraria/GoogleDriveCache;->playService:Lcom/codeglue/terraria/PlayService;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/codeglue/terraria/PlayService;->IsSignedIn()Z

    move-result v20

    if-nez v20, :cond_1

    .line 182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/codeglue/terraria/GoogleDriveCache;->playService:Lcom/codeglue/terraria/PlayService;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/codeglue/terraria/PlayService;->LoginOnlyIfPreviouslyDoneByUser()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 303
    :cond_0
    :goto_0
    return-void

    .line 186
    :catch_0
    move-exception v10

    .line 188
    .local v10, "e":Ljava/lang/Exception;
    const-string v20, "Octarine"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "[DRIVE] Exception: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v10}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    .end local v10    # "e":Ljava/lang/Exception;
    :cond_1
    :try_start_1
    const-string v20, "Octarine"

    const-string v21, "[DRIVE] Synchronize 1"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    invoke-direct/range {p0 .. p0}, Lcom/codeglue/terraria/GoogleDriveCache;->GetAllCachedKeys()Ljava/util/ArrayList;

    move-result-object v17

    .line 195
    .local v17, "localData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/codeglue/terraria/GoogleDriveCache$CachedData;>;"
    invoke-direct/range {p0 .. p0}, Lcom/codeglue/terraria/GoogleDriveCache;->GetAllCloudKeys()Ljava/util/ArrayList;

    move-result-object v5

    .line 197
    .local v5, "cloudData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/codeglue/terraria/GoogleDriveCache$CachedData;>;"
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_2

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/codeglue/terraria/GoogleDriveCache$CachedData;

    .line 199
    .local v16, "local":Lcom/codeglue/terraria/GoogleDriveCache$CachedData;
    const-string v20, "Octarine"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "[DRIVE] LocalData: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/codeglue/terraria/GoogleDriveCache$CachedData;->filename:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 299
    .end local v5    # "cloudData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/codeglue/terraria/GoogleDriveCache$CachedData;>;"
    .end local v14    # "i$":Ljava/util/Iterator;
    .end local v16    # "local":Lcom/codeglue/terraria/GoogleDriveCache$CachedData;
    .end local v17    # "localData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/codeglue/terraria/GoogleDriveCache$CachedData;>;"
    :catch_1
    move-exception v10

    .line 301
    .restart local v10    # "e":Ljava/lang/Exception;
    const-string v20, "Octarine"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "[DRIVE] Exception: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v10}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 201
    .end local v10    # "e":Ljava/lang/Exception;
    .restart local v5    # "cloudData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/codeglue/terraria/GoogleDriveCache$CachedData;>;"
    .restart local v14    # "i$":Ljava/util/Iterator;
    .restart local v17    # "localData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/codeglue/terraria/GoogleDriveCache$CachedData;>;"
    :cond_2
    :try_start_2
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_3

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/codeglue/terraria/GoogleDriveCache$CachedData;

    .line 203
    .local v4, "cloud":Lcom/codeglue/terraria/GoogleDriveCache$CachedData;
    const-string v20, "Octarine"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "[DRIVE] CloudData: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    iget-object v0, v4, Lcom/codeglue/terraria/GoogleDriveCache$CachedData;->filename:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 206
    .end local v4    # "cloud":Lcom/codeglue/terraria/GoogleDriveCache$CachedData;
    :cond_3
    const-string v20, "Octarine"

    const-string v21, "[DRIVE] Synchronize 2"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .end local v14    # "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_8

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/codeglue/terraria/GoogleDriveCache$CachedData;

    .line 210
    .restart local v16    # "local":Lcom/codeglue/terraria/GoogleDriveCache$CachedData;
    const/16 v18, 0x0

    .line 211
    .local v18, "localIsContainedInCloud":Z
    const/4 v6, 0x0

    .line 212
    .local v6, "cloudEquiv":Lcom/codeglue/terraria/GoogleDriveCache$CachedData;
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, "i$":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_5

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/codeglue/terraria/GoogleDriveCache$CachedData;

    .line 214
    .restart local v4    # "cloud":Lcom/codeglue/terraria/GoogleDriveCache$CachedData;
    iget-object v0, v4, Lcom/codeglue/terraria/GoogleDriveCache$CachedData;->filename:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/codeglue/terraria/GoogleDriveCache$CachedData;->filename:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_4

    .line 216
    const/16 v18, 0x1

    .line 217
    move-object v6, v4

    .line 225
    .end local v4    # "cloud":Lcom/codeglue/terraria/GoogleDriveCache$CachedData;
    :cond_5
    if-nez v18, :cond_7

    .line 227
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/codeglue/terraria/GoogleDriveCache;->uploadedThisSession:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/codeglue/terraria/GoogleDriveCache$CachedData;->filename:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_6

    .line 229
    const-string v20, "Octarine"

    const-string v21, "[DRIVE] localIsContainedInCloud = false && uploadedThisSession.contains(local.filename) == false -> deleting"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/codeglue/terraria/GoogleDriveCache;->Delete(Lcom/codeglue/terraria/GoogleDriveCache$CachedData;)V

    goto :goto_3

    .line 234
    :cond_6
    const-string v20, "Octarine"

    const-string v21, "[DRIVE] Synchronize write to cloud"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/codeglue/terraria/GoogleDriveCache$CachedData;->filename:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/codeglue/terraria/GoogleDriveCache$CachedData;->filename:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/codeglue/terraria/GoogleDriveCache;->GetLocalFileContents(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/codeglue/terraria/GoogleDriveCache;->WriteToCloud(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 240
    :cond_7
    const-string v20, "Octarine"

    const-string v21, "[DRIVE] Synchronize Update"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v6}, Lcom/codeglue/terraria/GoogleDriveCache;->Update(Lcom/codeglue/terraria/GoogleDriveCache$CachedData;Lcom/codeglue/terraria/GoogleDriveCache$CachedData;)V

    goto/16 :goto_3

    .line 245
    .end local v6    # "cloudEquiv":Lcom/codeglue/terraria/GoogleDriveCache$CachedData;
    .end local v15    # "i$":Ljava/util/Iterator;
    .end local v16    # "local":Lcom/codeglue/terraria/GoogleDriveCache$CachedData;
    .end local v18    # "localIsContainedInCloud":Z
    :cond_8
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_9
    :goto_4
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_0

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/codeglue/terraria/GoogleDriveCache$CachedData;

    .line 247
    .restart local v4    # "cloud":Lcom/codeglue/terraria/GoogleDriveCache$CachedData;
    const/4 v7, 0x0

    .line 248
    .local v7, "cloudIsContainedInLocal":Z
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .restart local v15    # "i$":Ljava/util/Iterator;
    :cond_a
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_b

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/codeglue/terraria/GoogleDriveCache$CachedData;

    .line 250
    .restart local v16    # "local":Lcom/codeglue/terraria/GoogleDriveCache$CachedData;
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/codeglue/terraria/GoogleDriveCache$CachedData;->filename:Ljava/lang/String;

    move-object/from16 v20, v0

    iget-object v0, v4, Lcom/codeglue/terraria/GoogleDriveCache$CachedData;->filename:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_a

    .line 252
    const/4 v7, 0x1

    .line 258
    .end local v16    # "local":Lcom/codeglue/terraria/GoogleDriveCache$CachedData;
    :cond_b
    if-nez v7, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/codeglue/terraria/GoogleDriveCache;->deletedThisSession:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    iget-object v0, v4, Lcom/codeglue/terraria/GoogleDriveCache$CachedData;->filename:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_c

    .line 260
    const-string v20, "Octarine"

    const-string v21, "[DRIVE] Synchronize Download: !cloudIsContainedInLocal && !deletedThisSession.contains(cloud.filename)   111"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/codeglue/terraria/GoogleDriveCache;->Download(Lcom/codeglue/terraria/GoogleDriveCache$CachedData;)V

    goto :goto_4

    .line 263
    :cond_c
    if-nez v7, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/codeglue/terraria/GoogleDriveCache;->deletedThisSession:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    iget-object v0, v4, Lcom/codeglue/terraria/GoogleDriveCache$CachedData;->filename:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_9

    .line 265
    const-string v20, "Octarine"

    const-string v21, "[DRIVE] Synchronize Download: !cloudIsContainedInLocal && deletedThisSession.contains(cloud.filename)   222"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    invoke-direct/range {p0 .. p0}, Lcom/codeglue/terraria/GoogleDriveCache;->GetRootFolder()Lcom/google/android/gms/drive/DriveId;

    move-result-object v13

    .line 268
    .local v13, "folderId":Lcom/google/android/gms/drive/DriveId;
    iget-object v0, v4, Lcom/codeglue/terraria/GoogleDriveCache$CachedData;->filename:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v13, v1}, Lcom/codeglue/terraria/GoogleDriveCache;->FindDriveFile(Lcom/google/android/gms/drive/DriveId;Ljava/lang/String;)Lcom/google/android/gms/drive/DriveId;

    move-result-object v12

    .line 270
    .local v12, "fileId":Lcom/google/android/gms/drive/DriveId;
    sget-object v20, Lcom/google/android/gms/drive/Drive;->DriveApi:Lcom/google/android/gms/drive/DriveApi;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/codeglue/terraria/GoogleDriveCache;->playService:Lcom/codeglue/terraria/PlayService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/codeglue/terraria/PlayService;->client:Lcom/google/android/gms/common/api/GoogleApiClient;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v0, v1, v12}, Lcom/google/android/gms/drive/DriveApi;->getFile(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/drive/DriveId;)Lcom/google/android/gms/drive/DriveFile;

    move-result-object v9

    .line 272
    .local v9, "driveFile":Lcom/google/android/gms/drive/DriveFile;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/codeglue/terraria/GoogleDriveCache;->playService:Lcom/codeglue/terraria/PlayService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/codeglue/terraria/PlayService;->client:Lcom/google/android/gms/common/api/GoogleApiClient;

    move-object/from16 v20, v0

    const/high16 v21, 0x20000000

    const/16 v22, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-interface {v9, v0, v1, v2}, Lcom/google/android/gms/drive/DriveFile;->open(Lcom/google/android/gms/common/api/GoogleApiClient;ILcom/google/android/gms/drive/DriveFile$DownloadProgressListener;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Lcom/google/android/gms/common/api/PendingResult;->await()Lcom/google/android/gms/common/api/Result;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/drive/DriveApi$DriveContentsResult;

    .line 273
    .local v8, "content":Lcom/google/android/gms/drive/DriveApi$DriveContentsResult;
    invoke-interface {v8}, Lcom/google/android/gms/drive/DriveApi$DriveContentsResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v20

    if-nez v20, :cond_d

    .line 275
    const-string v20, "Octarine"

    const-string v21, "[DRIVE] Synchronize ERROR retrieving file contents on drive"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 279
    :cond_d
    invoke-interface {v8}, Lcom/google/android/gms/drive/DriveApi$DriveContentsResult;->getDriveContents()Lcom/google/android/gms/drive/DriveContents;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v19

    .line 282
    .local v19, "mContent":Lcom/google/android/gms/drive/DriveContents;
    :try_start_3
    invoke-interface/range {v19 .. v19}, Lcom/google/android/gms/drive/DriveContents;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v20

    const-string v21, "deleted"

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->getBytes()[B

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/io/OutputStream;->write([B)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 290
    :goto_5
    :try_start_4
    new-instance v20, Lcom/google/android/gms/drive/MetadataChangeSet$Builder;

    invoke-direct/range {v20 .. v20}, Lcom/google/android/gms/drive/MetadataChangeSet$Builder;-><init>()V

    const-string v21, "terraria/removed"

    invoke-virtual/range {v20 .. v21}, Lcom/google/android/gms/drive/MetadataChangeSet$Builder;->setMimeType(Ljava/lang/String;)Lcom/google/android/gms/drive/MetadataChangeSet$Builder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/google/android/gms/drive/MetadataChangeSet$Builder;->build()Lcom/google/android/gms/drive/MetadataChangeSet;

    move-result-object v3

    .line 291
    .local v3, "changeSet":Lcom/google/android/gms/drive/MetadataChangeSet;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/codeglue/terraria/GoogleDriveCache;->playService:Lcom/codeglue/terraria/PlayService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/codeglue/terraria/PlayService;->client:Lcom/google/android/gms/common/api/GoogleApiClient;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v9, v0, v3}, Lcom/google/android/gms/drive/DriveFile;->updateMetadata(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/drive/MetadataChangeSet;)Lcom/google/android/gms/common/api/PendingResult;

    .line 293
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/codeglue/terraria/GoogleDriveCache;->playService:Lcom/codeglue/terraria/PlayService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/codeglue/terraria/PlayService;->client:Lcom/google/android/gms/common/api/GoogleApiClient;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-interface/range {v19 .. v21}, Lcom/google/android/gms/drive/DriveContents;->commit(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/drive/MetadataChangeSet;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Lcom/google/android/gms/common/api/PendingResult;->await()Lcom/google/android/gms/common/api/Result;

    .line 295
    const-string v20, "Octarine"

    const-string v21, "[DRIVE] Synchronize succesfully deleted file on drive"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 284
    .end local v3    # "changeSet":Lcom/google/android/gms/drive/MetadataChangeSet;
    :catch_2
    move-exception v11

    .line 286
    .local v11, "exception":Ljava/io/IOException;
    const-string v20, "Octarine"

    const-string v21, "[DRIVE] Synchronize ERROR writing file contents on drive"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_5
.end method

.method private Update(Lcom/codeglue/terraria/GoogleDriveCache$CachedData;Lcom/codeglue/terraria/GoogleDriveCache$CachedData;)V
    .locals 10
    .param p1, "local"    # Lcom/codeglue/terraria/GoogleDriveCache$CachedData;
    .param p2, "cloud"    # Lcom/codeglue/terraria/GoogleDriveCache$CachedData;

    .prologue
    .line 410
    const-string v6, "Octarine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[DRIVE] Update: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Lcom/codeglue/terraria/GoogleDriveCache$CachedData;->modifiedDate:Ljava/util/Date;

    invoke-virtual {v8}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " vs "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p2, Lcom/codeglue/terraria/GoogleDriveCache$CachedData;->modifiedDate:Ljava/util/Date;

    invoke-virtual {v8}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    iget-object v6, p1, Lcom/codeglue/terraria/GoogleDriveCache$CachedData;->modifiedDate:Ljava/util/Date;

    iget-object v7, p2, Lcom/codeglue/terraria/GoogleDriveCache$CachedData;->modifiedDate:Ljava/util/Date;

    invoke-virtual {v6, v7}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v1

    .line 412
    .local v1, "compareResult":I
    const-string v6, "Octarine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[DRIVE] Date, compare: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    iget-object v6, p2, Lcom/codeglue/terraria/GoogleDriveCache$CachedData;->modifiedDate:Ljava/util/Date;

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 415
    .local v2, "cloudTime":J
    iget-object v6, p1, Lcom/codeglue/terraria/GoogleDriveCache$CachedData;->modifiedDate:Ljava/util/Date;

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    .line 417
    .local v4, "localTime":J
    const-string v6, "Octarine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[DRIVE] Date, cloudTime: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " localTime: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    if-eqz v1, :cond_0

    cmp-long v6, v2, v4

    if-nez v6, :cond_1

    .line 421
    :cond_0
    const-string v6, "Octarine"

    const-string v7, "[DRIVE] Same Date, ignoring"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    :goto_0
    return-void

    .line 425
    :cond_1
    iget-object v6, p1, Lcom/codeglue/terraria/GoogleDriveCache$CachedData;->modifiedDate:Ljava/util/Date;

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    iget-object v8, p2, Lcom/codeglue/terraria/GoogleDriveCache$CachedData;->modifiedDate:Ljava/util/Date;

    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-gez v6, :cond_3

    .line 428
    const-string v6, "Octarine"

    const-string v7, "[DRIVE] Update from cloud.."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    iget-object v6, p2, Lcom/codeglue/terraria/GoogleDriveCache$CachedData;->filename:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/codeglue/terraria/GoogleDriveCache;->GetCloudFileContents(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 431
    .local v0, "cloudContent":Ljava/lang/String;
    if-nez v0, :cond_2

    .line 433
    const-string v0, "deleted"

    .line 435
    :cond_2
    invoke-direct {p0, p1, v0}, Lcom/codeglue/terraria/GoogleDriveCache;->WriteToLocalFile(Lcom/codeglue/terraria/GoogleDriveCache$CachedData;Ljava/lang/String;)V

    .line 437
    iget-object v6, p1, Lcom/codeglue/terraria/GoogleDriveCache$CachedData;->filename:Ljava/lang/String;

    invoke-direct {p0, v6, v2, v3}, Lcom/codeglue/terraria/GoogleDriveCache;->UpdateLastModifiedTime(Ljava/lang/String;J)V

    .line 439
    const-string v6, "Octarine"

    const-string v7, "[DRIVE] Update from cloud success"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 445
    .end local v0    # "cloudContent":Ljava/lang/String;
    :cond_3
    const-string v6, "Octarine"

    const-string v7, "[DRIVE] Update from local.."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    iget-object v6, p1, Lcom/codeglue/terraria/GoogleDriveCache$CachedData;->filename:Ljava/lang/String;

    iget-object v7, p1, Lcom/codeglue/terraria/GoogleDriveCache$CachedData;->filename:Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/codeglue/terraria/GoogleDriveCache;->GetLocalFileContents(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lcom/codeglue/terraria/GoogleDriveCache;->WriteToCloud(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private UpdateLastModifiedTime(Ljava/lang/String;J)V
    .locals 10
    .param p1, "localKey"    # Ljava/lang/String;
    .param p2, "time"    # J

    .prologue
    .line 497
    const-string v7, "Octarine"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[DRIVE] UpdateLastModifiedTime: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/codeglue/terraria/GoogleDriveCache;->dataPathString:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " | "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "meta"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    :try_start_0
    new-instance v3, Ljava/io/File;

    iget-object v7, p0, Lcom/codeglue/terraria/GoogleDriveCache;->dataPathString:Ljava/lang/String;

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 501
    .local v3, "folder":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_0

    .line 503
    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 504
    .local v4, "result":Ljava/lang/Boolean;
    const-string v7, "Octarine"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[DRIVE] Folder exists(): "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    .end local v4    # "result":Ljava/lang/Boolean;
    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "meta"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    .local v2, "f":Ljava/io/File;
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 510
    .local v5, "stream":Ljava/io/FileOutputStream;
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v7, Ljava/io/OutputStreamWriter;

    invoke-direct {v7, v5}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v7}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 512
    .local v0, "buf":Ljava/io/BufferedWriter;
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    .line 513
    .local v6, "timeValue":Ljava/lang/String;
    invoke-virtual {v0, v6}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 514
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V

    .line 515
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    .line 517
    const-string v7, "Octarine"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[DRIVE] UpdateLastModifiedTime: succeed: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 524
    .end local v0    # "buf":Ljava/io/BufferedWriter;
    .end local v2    # "f":Ljava/io/File;
    .end local v3    # "folder":Ljava/io/File;
    .end local v5    # "stream":Ljava/io/FileOutputStream;
    .end local v6    # "timeValue":Ljava/lang/String;
    :goto_0
    return-void

    .line 519
    :catch_0
    move-exception v1

    .line 521
    .local v1, "e":Ljava/lang/Exception;
    const-string v7, "Octarine"

    const-string v8, "[DRIVE] UpdateLastModifiedTime EXCEPTION"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private WriteToLocalFile(Lcom/codeglue/terraria/GoogleDriveCache$CachedData;Ljava/lang/String;)V
    .locals 9
    .param p1, "local"    # Lcom/codeglue/terraria/GoogleDriveCache$CachedData;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 323
    const-string v6, "Octarine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[DRIVE] WriteToLocalFile: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/codeglue/terraria/GoogleDriveCache;->dataPathString:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " | "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Lcom/codeglue/terraria/GoogleDriveCache$CachedData;->filename:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    :try_start_0
    new-instance v3, Ljava/io/File;

    iget-object v6, p0, Lcom/codeglue/terraria/GoogleDriveCache;->dataPathString:Ljava/lang/String;

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 327
    .local v3, "folder":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    .line 329
    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 330
    .local v4, "result":Ljava/lang/Boolean;
    const-string v6, "Octarine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[DRIVE] Folder exists(): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    .end local v4    # "result":Ljava/lang/Boolean;
    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p1, Lcom/codeglue/terraria/GoogleDriveCache$CachedData;->filename:Ljava/lang/String;

    invoke-direct {v2, v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    .local v2, "f":Ljava/io/File;
    const-string v6, "Octarine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[DRIVE] File exists: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    const-string v6, "Octarine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[DRIVE] File getAbsolutePath: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 339
    .local v5, "stream":Ljava/io/FileOutputStream;
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v6, Ljava/io/OutputStreamWriter;

    invoke-direct {v6, v5}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v6}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 342
    .local v0, "buf":Ljava/io/BufferedWriter;
    invoke-virtual {v0, p2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 343
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V

    .line 344
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    .line 346
    const-string v6, "Octarine"

    const-string v7, "[DRIVE] WriteToLocalFile: succeed"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 353
    .end local v0    # "buf":Ljava/io/BufferedWriter;
    .end local v2    # "f":Ljava/io/File;
    .end local v3    # "folder":Ljava/io/File;
    .end local v5    # "stream":Ljava/io/FileOutputStream;
    :goto_0
    return-void

    .line 348
    :catch_0
    move-exception v1

    .line 350
    .local v1, "e":Ljava/io/IOException;
    const-string v6, "Octarine"

    const-string v7, "[DRIVE] WriteToLocalFile EXCEPTION"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/codeglue/terraria/GoogleDriveCache;)V
    .locals 0
    .param p0, "x0"    # Lcom/codeglue/terraria/GoogleDriveCache;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/codeglue/terraria/GoogleDriveCache;->Synchronize()V

    return-void
.end method

.method static synthetic access$100(Lcom/codeglue/terraria/GoogleDriveCache;)Lcom/google/android/gms/common/api/ResultCallback;
    .locals 1
    .param p0, "x0"    # Lcom/codeglue/terraria/GoogleDriveCache;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/codeglue/terraria/GoogleDriveCache;->saveCallback:Lcom/google/android/gms/common/api/ResultCallback;

    return-object v0
.end method


# virtual methods
.method public FindDriveFile(Lcom/google/android/gms/drive/DriveId;Ljava/lang/String;)Lcom/google/android/gms/drive/DriveId;
    .locals 15
    .param p1, "folder"    # Lcom/google/android/gms/drive/DriveId;
    .param p2, "filename"    # Ljava/lang/String;

    .prologue
    .line 660
    const-string v12, "Octarine"

    const-string v13, "[DRIVE] FindDriveFile"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    sget-object v12, Lcom/google/android/gms/drive/Drive;->DriveApi:Lcom/google/android/gms/drive/DriveApi;

    iget-object v13, p0, Lcom/codeglue/terraria/GoogleDriveCache;->playService:Lcom/codeglue/terraria/PlayService;

    iget-object v13, v13, Lcom/codeglue/terraria/PlayService;->client:Lcom/google/android/gms/common/api/GoogleApiClient;

    move-object/from16 v0, p1

    invoke-interface {v12, v13, v0}, Lcom/google/android/gms/drive/DriveApi;->getFolder(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/drive/DriveId;)Lcom/google/android/gms/drive/DriveFolder;

    move-result-object v2

    .line 663
    .local v2, "fileFolder":Lcom/google/android/gms/drive/DriveFolder;
    iget-object v12, p0, Lcom/codeglue/terraria/GoogleDriveCache;->playService:Lcom/codeglue/terraria/PlayService;

    iget-object v12, v12, Lcom/codeglue/terraria/PlayService;->client:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v2, v12}, Lcom/google/android/gms/drive/DriveFolder;->listChildren(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v12

    invoke-interface {v12}, Lcom/google/android/gms/common/api/PendingResult;->await()Lcom/google/android/gms/common/api/Result;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/drive/DriveApi$MetadataBufferResult;

    .line 664
    .local v4, "folderResult":Lcom/google/android/gms/drive/DriveApi$MetadataBufferResult;
    invoke-interface {v4}, Lcom/google/android/gms/drive/DriveApi$MetadataBufferResult;->getMetadataBuffer()Lcom/google/android/gms/drive/MetadataBuffer;

    move-result-object v3

    .line 666
    .local v3, "folderBuffer":Lcom/google/android/gms/drive/MetadataBuffer;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-virtual {v3}, Lcom/google/android/gms/drive/MetadataBuffer;->getCount()I

    move-result v12

    if-ge v5, v12, :cond_4

    .line 668
    invoke-virtual {v3, v5}, Lcom/google/android/gms/drive/MetadataBuffer;->get(I)Lcom/google/android/gms/drive/Metadata;

    move-result-object v1

    .line 670
    .local v1, "data":Lcom/google/android/gms/drive/Metadata;
    invoke-virtual {v1}, Lcom/google/android/gms/drive/Metadata;->getTitle()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 671
    .local v6, "isKeyName":Z
    invoke-virtual {v1}, Lcom/google/android/gms/drive/Metadata;->isTrashed()Z

    move-result v12

    if-nez v12, :cond_1

    const/4 v11, 0x1

    .line 672
    .local v11, "notTrashed":Z
    :goto_1
    invoke-virtual {v1}, Lcom/google/android/gms/drive/Metadata;->isFolder()Z

    move-result v12

    if-nez v12, :cond_2

    const/4 v10, 0x1

    .line 674
    .local v10, "notAFolder":Z
    :goto_2
    invoke-virtual {v1}, Lcom/google/android/gms/drive/Metadata;->getMimeType()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    .line 675
    .local v9, "lowercaseMime":Ljava/lang/String;
    const-string v12, "terraria/player"

    invoke-virtual {v9, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    .line 676
    .local v7, "isPlayerFile":Z
    const-string v12, "terraria/world"

    invoke-virtual {v9, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    .line 678
    .local v8, "isWorldFile":Z
    if-eqz v6, :cond_3

    if-eqz v11, :cond_3

    if-eqz v10, :cond_3

    if-nez v7, :cond_0

    if-eqz v8, :cond_3

    .line 680
    :cond_0
    const-string v12, "Octarine"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[DRIVE] FindDriveFile: Found file: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    invoke-virtual {v1}, Lcom/google/android/gms/drive/Metadata;->getDriveId()Lcom/google/android/gms/drive/DriveId;

    move-result-object v12

    .line 688
    .end local v1    # "data":Lcom/google/android/gms/drive/Metadata;
    .end local v6    # "isKeyName":Z
    .end local v7    # "isPlayerFile":Z
    .end local v8    # "isWorldFile":Z
    .end local v9    # "lowercaseMime":Ljava/lang/String;
    .end local v10    # "notAFolder":Z
    .end local v11    # "notTrashed":Z
    :goto_3
    return-object v12

    .line 671
    .restart local v1    # "data":Lcom/google/android/gms/drive/Metadata;
    .restart local v6    # "isKeyName":Z
    :cond_1
    const/4 v11, 0x0

    goto :goto_1

    .line 672
    .restart local v11    # "notTrashed":Z
    :cond_2
    const/4 v10, 0x0

    goto :goto_2

    .line 666
    .restart local v7    # "isPlayerFile":Z
    .restart local v8    # "isWorldFile":Z
    .restart local v9    # "lowercaseMime":Ljava/lang/String;
    .restart local v10    # "notAFolder":Z
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 684
    .end local v1    # "data":Lcom/google/android/gms/drive/Metadata;
    .end local v6    # "isKeyName":Z
    .end local v7    # "isPlayerFile":Z
    .end local v8    # "isWorldFile":Z
    .end local v9    # "lowercaseMime":Ljava/lang/String;
    .end local v10    # "notAFolder":Z
    .end local v11    # "notTrashed":Z
    :cond_4
    invoke-interface {v4}, Lcom/google/android/gms/drive/DriveApi$MetadataBufferResult;->release()V

    .line 685
    invoke-virtual {v3}, Lcom/google/android/gms/drive/MetadataBuffer;->release()V

    .line 687
    const-string v12, "Octarine"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[DRIVE] FindDriveFile: NOT Found file "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    const/4 v12, 0x0

    goto :goto_3
.end method

.method public Get(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 111
    const-string v0, "Octarine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DRIVE] Get: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    invoke-virtual {p0, p1}, Lcom/codeglue/terraria/GoogleDriveCache;->HasLocalKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 114
    const-string v0, "Octarine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DRIVE] Local key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not found, returning NULL"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    const/4 v0, 0x0

    .line 118
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/codeglue/terraria/GoogleDriveCache;->GetLocalFileContents(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public GetAllKeys()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 123
    const-string v4, "Octarine"

    const-string v5, "[DRIVE] GetAllKeys"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 125
    .local v3, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/codeglue/terraria/GoogleDriveCache;->GetAllCachedKeys()Ljava/util/ArrayList;

    move-result-object v0

    .line 127
    .local v0, "cache":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/codeglue/terraria/GoogleDriveCache$CachedData;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codeglue/terraria/GoogleDriveCache$CachedData;

    .line 129
    .local v1, "data":Lcom/codeglue/terraria/GoogleDriveCache$CachedData;
    iget-object v4, v1, Lcom/codeglue/terraria/GoogleDriveCache$CachedData;->filename:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 132
    .end local v1    # "data":Lcom/codeglue/terraria/GoogleDriveCache$CachedData;
    :cond_0
    return-object v3
.end method

.method public HasCloudKey(Ljava/lang/String;)Z
    .locals 5
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 589
    const-string v3, "Octarine"

    const-string v4, "[DRIVE] HasCloudKey"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    invoke-direct {p0}, Lcom/codeglue/terraria/GoogleDriveCache;->GetAllCloudKeys()Ljava/util/ArrayList;

    move-result-object v1

    .line 592
    .local v1, "cloudData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/codeglue/terraria/GoogleDriveCache$CachedData;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codeglue/terraria/GoogleDriveCache$CachedData;

    .line 594
    .local v0, "cloud":Lcom/codeglue/terraria/GoogleDriveCache$CachedData;
    iget-object v3, v0, Lcom/codeglue/terraria/GoogleDriveCache$CachedData;->filename:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 595
    const/4 v3, 0x1

    .line 598
    .end local v0    # "cloud":Lcom/codeglue/terraria/GoogleDriveCache$CachedData;
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public HasLocalKey(Ljava/lang/String;)Z
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 582
    const-string v1, "Octarine"

    const-string v2, "[DRIVE] HasLocalKey"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/codeglue/terraria/GoogleDriveCache;->dataPathString:Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    return v1
.end method

.method public Remove(Ljava/lang/String;)V
    .locals 6
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 137
    const-string v3, "Octarine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[DRIVE] Remove: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Lcom/codeglue/terraria/GoogleDriveCache;->dataPathString:Ljava/lang/String;

    invoke-direct {v0, v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 141
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 142
    iget-object v3, p0, Lcom/codeglue/terraria/GoogleDriveCache;->deletedThisSession:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    const-string v3, "Octarine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[DRIVE] Remove: deleted key: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "meta"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 147
    .local v1, "metaFileKey":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/codeglue/terraria/GoogleDriveCache;->dataPathString:Ljava/lang/String;

    invoke-direct {v2, v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    .local v2, "metafile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 150
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 151
    const-string v3, "Octarine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[DRIVE] Succesfully removed metadata for key: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    .end local v1    # "metaFileKey":Ljava/lang/String;
    .end local v2    # "metafile":Ljava/io/File;
    :cond_0
    :goto_0
    return-void

    .line 156
    :cond_1
    const-string v3, "Octarine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[DRIVE] Remove, key: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " not found"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public Set(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 162
    const-string v1, "Octarine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[DRIVE] Set: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    invoke-virtual {p0, p1}, Lcom/codeglue/terraria/GoogleDriveCache;->HasLocalKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 165
    const-string v1, "Octarine"

    const-string v2, "[DRIVE] Set, local key not found, so adding to uploadedThisSession"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iget-object v1, p0, Lcom/codeglue/terraria/GoogleDriveCache;->uploadedThisSession:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 169
    :cond_0
    new-instance v0, Lcom/codeglue/terraria/GoogleDriveCache$CachedData;

    invoke-direct {v0, p0}, Lcom/codeglue/terraria/GoogleDriveCache$CachedData;-><init>(Lcom/codeglue/terraria/GoogleDriveCache;)V

    .line 170
    .local v0, "local":Lcom/codeglue/terraria/GoogleDriveCache$CachedData;
    iput-object p1, v0, Lcom/codeglue/terraria/GoogleDriveCache$CachedData;->filename:Ljava/lang/String;

    .line 171
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    iput-object v1, v0, Lcom/codeglue/terraria/GoogleDriveCache$CachedData;->modifiedDate:Ljava/util/Date;

    .line 172
    invoke-direct {p0, v0, p2}, Lcom/codeglue/terraria/GoogleDriveCache;->WriteToLocalFile(Lcom/codeglue/terraria/GoogleDriveCache$CachedData;Ljava/lang/String;)V

    .line 173
    iget-object v1, v0, Lcom/codeglue/terraria/GoogleDriveCache$CachedData;->modifiedDate:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-direct {p0, p1, v2, v3}, Lcom/codeglue/terraria/GoogleDriveCache;->UpdateLastModifiedTime(Ljava/lang/String;J)V

    .line 174
    return-void
.end method

.method public Start()V
    .locals 6

    .prologue
    .line 70
    const-string v0, "Octarine"

    const-string v1, "[DRIVE] Start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    iget-object v0, p0, Lcom/codeglue/terraria/GoogleDriveCache;->scheduler:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 72
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/codeglue/terraria/GoogleDriveCache;->scheduler:Ljava/util/Timer;

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/codeglue/terraria/GoogleDriveCache;->scheduler:Ljava/util/Timer;

    const-wide/16 v2, 0x0

    iget-wide v4, p0, Lcom/codeglue/terraria/GoogleDriveCache;->updateIntervalMs:J

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 75
    return-void
.end method

.method public ThreadedSynchronize()V
    .locals 3

    .prologue
    .line 103
    const-string v1, "Octarine"

    const-string v2, "[DRIVE] Threaded synchronization"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/codeglue/terraria/GoogleDriveCache;->synchronizationTask:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 105
    .local v0, "thread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 106
    return-void
.end method

.method public WriteToCloud(Ljava/lang/String;Ljava/lang/String;)V
    .locals 13
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 603
    const-string v10, "Octarine"

    const-string v11, "[DRIVE] WriteToCloud"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    const-string v10, "Octarine"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[DRIVE] StoreKeyValue: key "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    invoke-virtual {p0, p1}, Lcom/codeglue/terraria/GoogleDriveCache;->HasCloudKey(Ljava/lang/String;)Z

    move-result v0

    .line 606
    .local v0, "canStoreKey":Z
    invoke-direct {p0}, Lcom/codeglue/terraria/GoogleDriveCache;->GetRootFolder()Lcom/google/android/gms/drive/DriveId;

    move-result-object v6

    .line 608
    .local v6, "folderId":Lcom/google/android/gms/drive/DriveId;
    if-nez v0, :cond_3

    .line 610
    const-string v10, "Octarine"

    const-string v11, "[DRIVE] StoreKeyValue: Create new file"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    if-eqz v6, :cond_1

    .line 614
    sget-object v10, Lcom/google/android/gms/drive/Drive;->DriveApi:Lcom/google/android/gms/drive/DriveApi;

    iget-object v11, p0, Lcom/codeglue/terraria/GoogleDriveCache;->playService:Lcom/codeglue/terraria/PlayService;

    iget-object v11, v11, Lcom/codeglue/terraria/PlayService;->client:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v10, v11}, Lcom/google/android/gms/drive/DriveApi;->newDriveContents(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v10

    invoke-interface {v10}, Lcom/google/android/gms/common/api/PendingResult;->await()Lcom/google/android/gms/common/api/Result;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/drive/DriveApi$DriveContentsResult;

    .line 616
    .local v9, "result":Lcom/google/android/gms/drive/DriveApi$DriveContentsResult;
    const-string v8, ""

    .line 617
    .local v8, "mime":Ljava/lang/String;
    const-string v10, ".csworld"

    invoke-virtual {p1, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 618
    const-string v8, "terraria/world"

    .line 622
    :cond_0
    :goto_0
    new-instance v10, Lcom/google/android/gms/drive/MetadataChangeSet$Builder;

    invoke-direct {v10}, Lcom/google/android/gms/drive/MetadataChangeSet$Builder;-><init>()V

    invoke-virtual {v10, p1}, Lcom/google/android/gms/drive/MetadataChangeSet$Builder;->setTitle(Ljava/lang/String;)Lcom/google/android/gms/drive/MetadataChangeSet$Builder;

    move-result-object v10

    invoke-virtual {v10, v8}, Lcom/google/android/gms/drive/MetadataChangeSet$Builder;->setMimeType(Ljava/lang/String;)Lcom/google/android/gms/drive/MetadataChangeSet$Builder;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/android/gms/drive/MetadataChangeSet$Builder;->build()Lcom/google/android/gms/drive/MetadataChangeSet;

    move-result-object v1

    .line 627
    .local v1, "changeSet":Lcom/google/android/gms/drive/MetadataChangeSet;
    invoke-interface {v9}, Lcom/google/android/gms/drive/DriveApi$DriveContentsResult;->getDriveContents()Lcom/google/android/gms/drive/DriveContents;

    move-result-object v2

    .line 630
    .local v2, "contents":Lcom/google/android/gms/drive/DriveContents;
    :try_start_0
    invoke-interface {v2}, Lcom/google/android/gms/drive/DriveContents;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v10

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 639
    :goto_1
    invoke-direct {p0}, Lcom/codeglue/terraria/GoogleDriveCache;->GetRootFolder()Lcom/google/android/gms/drive/DriveId;

    move-result-object v7

    .line 640
    .local v7, "id":Lcom/google/android/gms/drive/DriveId;
    sget-object v10, Lcom/google/android/gms/drive/Drive;->DriveApi:Lcom/google/android/gms/drive/DriveApi;

    iget-object v11, p0, Lcom/codeglue/terraria/GoogleDriveCache;->playService:Lcom/codeglue/terraria/PlayService;

    iget-object v11, v11, Lcom/codeglue/terraria/PlayService;->client:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v10, v11, v7}, Lcom/google/android/gms/drive/DriveApi;->getFolder(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/drive/DriveId;)Lcom/google/android/gms/drive/DriveFolder;

    move-result-object v10

    iget-object v11, p0, Lcom/codeglue/terraria/GoogleDriveCache;->playService:Lcom/codeglue/terraria/PlayService;

    iget-object v11, v11, Lcom/codeglue/terraria/PlayService;->client:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v10, v11, v1, v2}, Lcom/google/android/gms/drive/DriveFolder;->createFile(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/drive/MetadataChangeSet;Lcom/google/android/gms/drive/DriveContents;)Lcom/google/android/gms/common/api/PendingResult;

    .line 642
    const-string v10, "Octarine"

    const-string v11, "[DRIVE] WriteToFile: Commit changes"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    .end local v1    # "changeSet":Lcom/google/android/gms/drive/MetadataChangeSet;
    .end local v2    # "contents":Lcom/google/android/gms/drive/DriveContents;
    .end local v7    # "id":Lcom/google/android/gms/drive/DriveId;
    .end local v8    # "mime":Ljava/lang/String;
    .end local v9    # "result":Lcom/google/android/gms/drive/DriveApi$DriveContentsResult;
    :cond_1
    :goto_2
    return-void

    .line 619
    .restart local v8    # "mime":Ljava/lang/String;
    .restart local v9    # "result":Lcom/google/android/gms/drive/DriveApi$DriveContentsResult;
    :cond_2
    const-string v10, ".cs"

    invoke-virtual {p1, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 620
    const-string v8, "terraria/player"

    goto :goto_0

    .line 632
    .restart local v1    # "changeSet":Lcom/google/android/gms/drive/MetadataChangeSet;
    .restart local v2    # "contents":Lcom/google/android/gms/drive/DriveContents;
    :catch_0
    move-exception v4

    .line 634
    .local v4, "exception":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 648
    .end local v1    # "changeSet":Lcom/google/android/gms/drive/MetadataChangeSet;
    .end local v2    # "contents":Lcom/google/android/gms/drive/DriveContents;
    .end local v4    # "exception":Ljava/io/IOException;
    .end local v8    # "mime":Ljava/lang/String;
    .end local v9    # "result":Lcom/google/android/gms/drive/DriveApi$DriveContentsResult;
    :cond_3
    const-string v10, "Octarine"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[DRIVE] StoreKeyValue: Write value to "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    invoke-virtual {p0, v6, p1}, Lcom/codeglue/terraria/GoogleDriveCache;->FindDriveFile(Lcom/google/android/gms/drive/DriveId;Ljava/lang/String;)Lcom/google/android/gms/drive/DriveId;

    move-result-object v5

    .line 652
    .local v5, "fileId":Lcom/google/android/gms/drive/DriveId;
    sget-object v10, Lcom/google/android/gms/drive/Drive;->DriveApi:Lcom/google/android/gms/drive/DriveApi;

    iget-object v11, p0, Lcom/codeglue/terraria/GoogleDriveCache;->playService:Lcom/codeglue/terraria/PlayService;

    iget-object v11, v11, Lcom/codeglue/terraria/PlayService;->client:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v10, v11, v5}, Lcom/google/android/gms/drive/DriveApi;->getFile(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/drive/DriveId;)Lcom/google/android/gms/drive/DriveFile;

    move-result-object v3

    .line 654
    .local v3, "driveFile":Lcom/google/android/gms/drive/DriveFile;
    invoke-virtual {p0, v3, p2}, Lcom/codeglue/terraria/GoogleDriveCache;->WriteToFile(Lcom/google/android/gms/drive/DriveFile;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public WriteToFile(Lcom/google/android/gms/drive/DriveFile;Ljava/lang/String;)V
    .locals 3
    .param p1, "file"    # Lcom/google/android/gms/drive/DriveFile;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 829
    const-string v0, "Octarine"

    const-string v1, "[DRIVE] WriteToFile"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    iput-object p2, p0, Lcom/codeglue/terraria/GoogleDriveCache;->writeValue:Ljava/lang/String;

    .line 831
    iput-object p1, p0, Lcom/codeglue/terraria/GoogleDriveCache;->fileToWrite:Lcom/google/android/gms/drive/DriveFile;

    .line 832
    iget-object v0, p0, Lcom/codeglue/terraria/GoogleDriveCache;->playService:Lcom/codeglue/terraria/PlayService;

    iget-object v0, v0, Lcom/codeglue/terraria/PlayService;->client:Lcom/google/android/gms/common/api/GoogleApiClient;

    const/high16 v1, 0x20000000

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/gms/drive/DriveFile;->open(Lcom/google/android/gms/common/api/GoogleApiClient;ILcom/google/android/gms/drive/DriveFile$DownloadProgressListener;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    iget-object v1, p0, Lcom/codeglue/terraria/GoogleDriveCache;->writeCallback:Lcom/google/android/gms/common/api/ResultCallback;

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    .line 833
    return-void
.end method

.method public run()V
    .locals 4

    .prologue
    .line 79
    const-string v2, "Octarine"

    const-string v3, "[DRIVE] Run"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    move-object v1, p0

    .line 84
    .local v1, "self":Lcom/codeglue/terraria/GoogleDriveCache;
    :try_start_0
    invoke-direct {v1}, Lcom/codeglue/terraria/GoogleDriveCache;->Synchronize()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    :goto_0
    return-void

    .line 86
    :catch_0
    move-exception v0

    .line 88
    .local v0, "exception":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
