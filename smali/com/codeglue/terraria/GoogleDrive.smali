.class Lcom/codeglue/terraria/GoogleDrive;
.super Ljava/lang/Object;
.source "GoogleDrive.java"


# static fields
.field protected static final NEXT_AVAILABLE_REQUEST_CODE:I = 0x2

.field protected static final REQUEST_CODE_RESOLUTION:I = 0x1


# instance fields
.field public cache:Lcom/codeglue/terraria/GoogleDriveCache;

.field protected cloudKey:Ljava/lang/String;

.field protected cloudValue:Ljava/lang/String;

.field protected fileToWrite:Lcom/google/android/gms/drive/DriveFile;

.field public folder:Lcom/google/android/gms/drive/DriveId;

.field public service:Lcom/codeglue/terraria/PlayService;

.field protected terraria:Landroid/app/Activity;

.field protected writeValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/codeglue/terraria/PlayService;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "service"    # Lcom/codeglue/terraria/PlayService;

    .prologue
    const/4 v1, 0x0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lcom/codeglue/terraria/GoogleDrive;->writeValue:Ljava/lang/String;

    .line 23
    iput-object v1, p0, Lcom/codeglue/terraria/GoogleDrive;->fileToWrite:Lcom/google/android/gms/drive/DriveFile;

    .line 25
    iput-object v1, p0, Lcom/codeglue/terraria/GoogleDrive;->folder:Lcom/google/android/gms/drive/DriveId;

    .line 31
    sput-object p0, Lcom/codeglue/terraria/GoogleDriveBridge;->drive:Lcom/codeglue/terraria/GoogleDrive;

    .line 32
    iput-object p1, p0, Lcom/codeglue/terraria/GoogleDrive;->terraria:Landroid/app/Activity;

    .line 33
    iput-object p2, p0, Lcom/codeglue/terraria/GoogleDrive;->service:Lcom/codeglue/terraria/PlayService;

    .line 34
    new-instance v0, Lcom/codeglue/terraria/GoogleDriveCache;

    invoke-direct {v0, p1, p2}, Lcom/codeglue/terraria/GoogleDriveCache;-><init>(Landroid/app/Activity;Lcom/codeglue/terraria/PlayService;)V

    iput-object v0, p0, Lcom/codeglue/terraria/GoogleDrive;->cache:Lcom/codeglue/terraria/GoogleDriveCache;

    .line 35
    return-void
.end method


# virtual methods
.method public GetAllKeys()Ljava/util/ArrayList;
    .locals 1
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
    .line 66
    iget-object v0, p0, Lcom/codeglue/terraria/GoogleDrive;->cache:Lcom/codeglue/terraria/GoogleDriveCache;

    invoke-virtual {v0}, Lcom/codeglue/terraria/GoogleDriveCache;->GetAllKeys()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public GetValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/codeglue/terraria/GoogleDrive;->cache:Lcom/codeglue/terraria/GoogleDriveCache;

    invoke-virtual {v0, p1}, Lcom/codeglue/terraria/GoogleDriveCache;->Get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public HasKey(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/codeglue/terraria/GoogleDrive;->cache:Lcom/codeglue/terraria/GoogleDriveCache;

    invoke-virtual {v0, p1}, Lcom/codeglue/terraria/GoogleDriveCache;->HasLocalKey(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public IsConnected()Z
    .locals 4

    .prologue
    .line 39
    iget-object v1, p0, Lcom/codeglue/terraria/GoogleDrive;->service:Lcom/codeglue/terraria/PlayService;

    iget-object v1, v1, Lcom/codeglue/terraria/PlayService;->client:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v1}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    .line 40
    .local v0, "result":Z
    const-string v1, "Octarine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GoogleDrive-IsConnected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    return v0
.end method

.method public RemoveValue(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/codeglue/terraria/GoogleDrive;->cache:Lcom/codeglue/terraria/GoogleDriveCache;

    invoke-virtual {v0, p1}, Lcom/codeglue/terraria/GoogleDriveCache;->Remove(Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method public StoreKeyValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/codeglue/terraria/GoogleDrive;->cache:Lcom/codeglue/terraria/GoogleDriveCache;

    invoke-virtual {v0, p1, p2}, Lcom/codeglue/terraria/GoogleDriveCache;->Set(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method public Synchronize()V
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/codeglue/terraria/GoogleDrive;->cache:Lcom/codeglue/terraria/GoogleDriveCache;

    if-eqz v0, :cond_0

    .line 73
    const-string v0, "Octarine"

    const-string v1, "[DRIVE] synchronize scheduled "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iget-object v0, p0, Lcom/codeglue/terraria/GoogleDrive;->cache:Lcom/codeglue/terraria/GoogleDriveCache;

    invoke-virtual {v0}, Lcom/codeglue/terraria/GoogleDriveCache;->ThreadedSynchronize()V

    .line 76
    :cond_0
    return-void
.end method
