.class Lcom/codeglue/terraria/GoogleDriveCache$2;
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
        "Lcom/google/android/gms/drive/DriveApi$DriveContentsResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codeglue/terraria/GoogleDriveCache;


# direct methods
.method constructor <init>(Lcom/codeglue/terraria/GoogleDriveCache;)V
    .locals 0

    .prologue
    .line 836
    iput-object p1, p0, Lcom/codeglue/terraria/GoogleDriveCache$2;->this$0:Lcom/codeglue/terraria/GoogleDriveCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResult(Lcom/google/android/gms/common/api/Result;)V
    .locals 0

    .prologue
    .line 836
    check-cast p1, Lcom/google/android/gms/drive/DriveApi$DriveContentsResult;

    invoke-virtual {p0, p1}, Lcom/codeglue/terraria/GoogleDriveCache$2;->onResult(Lcom/google/android/gms/drive/DriveApi$DriveContentsResult;)V

    return-void
.end method

.method public onResult(Lcom/google/android/gms/drive/DriveApi$DriveContentsResult;)V
    .locals 1
    .param p1, "result"    # Lcom/google/android/gms/drive/DriveApi$DriveContentsResult;

    .prologue
    .line 840
    new-instance v0, Lcom/codeglue/terraria/GoogleDriveCache$2$1;

    invoke-direct {v0, p0, p1}, Lcom/codeglue/terraria/GoogleDriveCache$2$1;-><init>(Lcom/codeglue/terraria/GoogleDriveCache$2;Lcom/google/android/gms/drive/DriveApi$DriveContentsResult;)V

    .line 862
    .local v0, "thread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 863
    return-void
.end method
