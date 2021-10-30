.class Lcom/codeglue/terraria/PlayService$2;
.super Ljava/lang/Thread;
.source "PlayService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codeglue/terraria/PlayService;->onConnected(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codeglue/terraria/PlayService;


# direct methods
.method constructor <init>(Lcom/codeglue/terraria/PlayService;)V
    .locals 0

    .prologue
    .line 190
    iput-object p1, p0, Lcom/codeglue/terraria/PlayService$2;->this$0:Lcom/codeglue/terraria/PlayService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 196
    const-wide/16 v2, 0x64

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 197
    sget-object v1, Lcom/codeglue/terraria/GoogleDriveBridge;->drive:Lcom/codeglue/terraria/GoogleDrive;

    iget-object v1, v1, Lcom/codeglue/terraria/GoogleDrive;->cache:Lcom/codeglue/terraria/GoogleDriveCache;

    invoke-virtual {v1}, Lcom/codeglue/terraria/GoogleDriveCache;->Start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    :goto_0
    return-void

    .line 199
    :catch_0
    move-exception v0

    .line 201
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
