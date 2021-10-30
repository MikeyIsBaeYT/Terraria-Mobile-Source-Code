.class Lcom/codeglue/terraria/GoogleDriveCache$3;
.super Ljava/lang/Object;
.source "GoogleDriveCache.java"

# interfaces
.implements Lcom/google/android/gms/common/api/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codeglue/terraria/GoogleDriveCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/ResultCallback",
        "<",
        "Lcom/google/android/gms/common/api/Status;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codeglue/terraria/GoogleDriveCache;


# direct methods
.method constructor <init>(Lcom/codeglue/terraria/GoogleDriveCache;)V
    .locals 0

    .prologue
    .line 867
    iput-object p1, p0, Lcom/codeglue/terraria/GoogleDriveCache$3;->this$0:Lcom/codeglue/terraria/GoogleDriveCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResult(Lcom/google/android/gms/common/api/Result;)V
    .locals 0

    .prologue
    .line 867
    check-cast p1, Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, p1}, Lcom/codeglue/terraria/GoogleDriveCache$3;->onResult(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method

.method public onResult(Lcom/google/android/gms/common/api/Status;)V
    .locals 2
    .param p1, "result"    # Lcom/google/android/gms/common/api/Status;

    .prologue
    .line 871
    const-string v0, "Octarine"

    const-string v1, "[DRIVE] onResult(DriveFileResult result) "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_0

    .line 875
    const-string v0, "Octarine"

    const-string v1, "[DRIVE] Error while trying to save"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 880
    :goto_0
    return-void

    .line 879
    :cond_0
    const-string v0, "Octarine"

    const-string v1, "[DRIVE] Saved"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
