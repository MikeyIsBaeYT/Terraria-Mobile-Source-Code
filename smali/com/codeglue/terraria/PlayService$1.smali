.class Lcom/codeglue/terraria/PlayService$1;
.super Ljava/lang/Thread;
.source "PlayService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codeglue/terraria/PlayService;
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
    .line 40
    iput-object p1, p0, Lcom/codeglue/terraria/PlayService$1;->this$0:Lcom/codeglue/terraria/PlayService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 46
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/codeglue/terraria/PlayService$1;->this$0:Lcom/codeglue/terraria/PlayService;

    invoke-static {v1}, Lcom/codeglue/terraria/PlayService;->access$000(Lcom/codeglue/terraria/PlayService;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 48
    iget-object v1, p0, Lcom/codeglue/terraria/PlayService$1;->this$0:Lcom/codeglue/terraria/PlayService;

    iget-object v1, v1, Lcom/codeglue/terraria/PlayService;->client:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v1}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    .line 49
    iget-object v1, p0, Lcom/codeglue/terraria/PlayService$1;->this$0:Lcom/codeglue/terraria/PlayService;

    invoke-static {v1}, Lcom/codeglue/terraria/PlayService;->access$100(Lcom/codeglue/terraria/PlayService;)I

    move-result v1

    int-to-long v2, v1

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 50
    const-string v1, "Octarine"

    const-string v2, "[PLAY] Trying connect from separate thread"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 53
    :catch_0
    move-exception v0

    .line 55
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 57
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    return-void
.end method
