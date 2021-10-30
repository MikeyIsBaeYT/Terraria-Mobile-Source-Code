.class Lcom/codeglue/terraria/GoogleDriveCache$2$1;
.super Ljava/lang/Thread;
.source "GoogleDriveCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codeglue/terraria/GoogleDriveCache$2;->onResult(Lcom/google/android/gms/drive/DriveApi$DriveContentsResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/codeglue/terraria/GoogleDriveCache$2;

.field final synthetic val$result:Lcom/google/android/gms/drive/DriveApi$DriveContentsResult;


# direct methods
.method constructor <init>(Lcom/codeglue/terraria/GoogleDriveCache$2;Lcom/google/android/gms/drive/DriveApi$DriveContentsResult;)V
    .locals 0

    .prologue
    .line 841
    iput-object p1, p0, Lcom/codeglue/terraria/GoogleDriveCache$2$1;->this$1:Lcom/codeglue/terraria/GoogleDriveCache$2;

    iput-object p2, p0, Lcom/codeglue/terraria/GoogleDriveCache$2$1;->val$result:Lcom/google/android/gms/drive/DriveApi$DriveContentsResult;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 845
    iget-object v2, p0, Lcom/codeglue/terraria/GoogleDriveCache$2$1;->val$result:Lcom/google/android/gms/drive/DriveApi$DriveContentsResult;

    invoke-interface {v2}, Lcom/google/android/gms/drive/DriveApi$DriveContentsResult;->getDriveContents()Lcom/google/android/gms/drive/DriveContents;

    move-result-object v1

    .line 848
    .local v1, "mContent":Lcom/google/android/gms/drive/DriveContents;
    :try_start_0
    invoke-interface {v1}, Lcom/google/android/gms/drive/DriveContents;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    iget-object v3, p0, Lcom/codeglue/terraria/GoogleDriveCache$2$1;->this$1:Lcom/codeglue/terraria/GoogleDriveCache$2;

    iget-object v3, v3, Lcom/codeglue/terraria/GoogleDriveCache$2;->this$0:Lcom/codeglue/terraria/GoogleDriveCache;

    iget-object v3, v3, Lcom/codeglue/terraria/GoogleDriveCache;->writeValue:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 854
    :goto_0
    const-string v2, "Octarine"

    const-string v3, "[DRIVE] WriteToFile: Commit changes"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    iget-object v2, p0, Lcom/codeglue/terraria/GoogleDriveCache$2$1;->this$1:Lcom/codeglue/terraria/GoogleDriveCache$2;

    iget-object v2, v2, Lcom/codeglue/terraria/GoogleDriveCache$2;->this$0:Lcom/codeglue/terraria/GoogleDriveCache;

    iget-object v2, v2, Lcom/codeglue/terraria/GoogleDriveCache;->playService:Lcom/codeglue/terraria/PlayService;

    iget-object v2, v2, Lcom/codeglue/terraria/PlayService;->client:Lcom/google/android/gms/common/api/GoogleApiClient;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/google/android/gms/drive/DriveContents;->commit(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/drive/MetadataChangeSet;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v2

    iget-object v3, p0, Lcom/codeglue/terraria/GoogleDriveCache$2$1;->this$1:Lcom/codeglue/terraria/GoogleDriveCache$2;

    iget-object v3, v3, Lcom/codeglue/terraria/GoogleDriveCache$2;->this$0:Lcom/codeglue/terraria/GoogleDriveCache;

    invoke-static {v3}, Lcom/codeglue/terraria/GoogleDriveCache;->access$100(Lcom/codeglue/terraria/GoogleDriveCache;)Lcom/google/android/gms/common/api/ResultCallback;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    .line 858
    iget-object v2, p0, Lcom/codeglue/terraria/GoogleDriveCache$2$1;->this$1:Lcom/codeglue/terraria/GoogleDriveCache$2;

    iget-object v2, v2, Lcom/codeglue/terraria/GoogleDriveCache$2;->this$0:Lcom/codeglue/terraria/GoogleDriveCache;

    const-string v3, ""

    iput-object v3, v2, Lcom/codeglue/terraria/GoogleDriveCache;->writeValue:Ljava/lang/String;

    .line 859
    return-void

    .line 850
    :catch_0
    move-exception v0

    .line 852
    .local v0, "exception":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
