.class Lnet/hockeyapp/android/tasks/AttachmentDownloader$1;
.super Landroid/os/Handler;
.source "AttachmentDownloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/hockeyapp/android/tasks/AttachmentDownloader;->downloadNext()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/hockeyapp/android/tasks/AttachmentDownloader;


# direct methods
.method constructor <init>(Lnet/hockeyapp/android/tasks/AttachmentDownloader;)V
    .locals 0
    .param p1, "this$0"    # Lnet/hockeyapp/android/tasks/AttachmentDownloader;

    .prologue
    .line 91
    iput-object p1, p0, Lnet/hockeyapp/android/tasks/AttachmentDownloader$1;->this$0:Lnet/hockeyapp/android/tasks/AttachmentDownloader;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 94
    iget-object v1, p0, Lnet/hockeyapp/android/tasks/AttachmentDownloader$1;->this$0:Lnet/hockeyapp/android/tasks/AttachmentDownloader;

    invoke-static {v1}, Lnet/hockeyapp/android/tasks/AttachmentDownloader;->access$200(Lnet/hockeyapp/android/tasks/AttachmentDownloader;)Ljava/util/Queue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/hockeyapp/android/tasks/AttachmentDownloader$DownloadJob;

    .line 95
    .local v0, "retryCandidate":Lnet/hockeyapp/android/tasks/AttachmentDownloader$DownloadJob;
    invoke-virtual {v0}, Lnet/hockeyapp/android/tasks/AttachmentDownloader$DownloadJob;->isSuccess()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lnet/hockeyapp/android/tasks/AttachmentDownloader$DownloadJob;->consumeRetry()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 96
    new-instance v1, Lnet/hockeyapp/android/tasks/AttachmentDownloader$1$1;

    invoke-direct {v1, p0, v0}, Lnet/hockeyapp/android/tasks/AttachmentDownloader$1$1;-><init>(Lnet/hockeyapp/android/tasks/AttachmentDownloader$1;Lnet/hockeyapp/android/tasks/AttachmentDownloader$DownloadJob;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {p0, v1, v2, v3}, Lnet/hockeyapp/android/tasks/AttachmentDownloader$1;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 104
    :cond_0
    iget-object v1, p0, Lnet/hockeyapp/android/tasks/AttachmentDownloader$1;->this$0:Lnet/hockeyapp/android/tasks/AttachmentDownloader;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lnet/hockeyapp/android/tasks/AttachmentDownloader;->access$402(Lnet/hockeyapp/android/tasks/AttachmentDownloader;Z)Z

    .line 105
    iget-object v1, p0, Lnet/hockeyapp/android/tasks/AttachmentDownloader$1;->this$0:Lnet/hockeyapp/android/tasks/AttachmentDownloader;

    invoke-static {v1}, Lnet/hockeyapp/android/tasks/AttachmentDownloader;->access$300(Lnet/hockeyapp/android/tasks/AttachmentDownloader;)V

    .line 106
    return-void
.end method
