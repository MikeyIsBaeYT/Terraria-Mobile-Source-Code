.class Lnet/hockeyapp/android/UpdateActivity$2;
.super Lnet/hockeyapp/android/listeners/DownloadFileListener;
.source "UpdateActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/hockeyapp/android/UpdateActivity;->startDownloadTask(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/hockeyapp/android/UpdateActivity;


# direct methods
.method constructor <init>(Lnet/hockeyapp/android/UpdateActivity;)V
    .locals 0
    .param p1, "this$0"    # Lnet/hockeyapp/android/UpdateActivity;

    .prologue
    .line 185
    iput-object p1, p0, Lnet/hockeyapp/android/UpdateActivity$2;->this$0:Lnet/hockeyapp/android/UpdateActivity;

    invoke-direct {p0}, Lnet/hockeyapp/android/listeners/DownloadFileListener;-><init>()V

    return-void
.end method


# virtual methods
.method public downloadFailed(Lnet/hockeyapp/android/tasks/DownloadFileTask;Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "task"    # Lnet/hockeyapp/android/tasks/DownloadFileTask;
    .param p2, "userWantsRetry"    # Ljava/lang/Boolean;

    .prologue
    .line 191
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lnet/hockeyapp/android/UpdateActivity$2;->this$0:Lnet/hockeyapp/android/UpdateActivity;

    invoke-virtual {v0}, Lnet/hockeyapp/android/UpdateActivity;->startDownloadTask()V

    .line 197
    :goto_0
    return-void

    .line 195
    :cond_0
    iget-object v0, p0, Lnet/hockeyapp/android/UpdateActivity$2;->this$0:Lnet/hockeyapp/android/UpdateActivity;

    invoke-virtual {v0}, Lnet/hockeyapp/android/UpdateActivity;->enableUpdateButton()V

    goto :goto_0
.end method

.method public downloadSuccessful(Lnet/hockeyapp/android/tasks/DownloadFileTask;)V
    .locals 1
    .param p1, "task"    # Lnet/hockeyapp/android/tasks/DownloadFileTask;

    .prologue
    .line 187
    iget-object v0, p0, Lnet/hockeyapp/android/UpdateActivity$2;->this$0:Lnet/hockeyapp/android/UpdateActivity;

    invoke-virtual {v0}, Lnet/hockeyapp/android/UpdateActivity;->enableUpdateButton()V

    .line 188
    return-void
.end method

.method public getStringForResource(I)Ljava/lang/String;
    .locals 2
    .param p1, "resourceID"    # I

    .prologue
    .line 200
    invoke-static {}, Lnet/hockeyapp/android/UpdateManager;->getLastListener()Lnet/hockeyapp/android/UpdateManagerListener;

    move-result-object v0

    .line 201
    .local v0, "listener":Lnet/hockeyapp/android/UpdateManagerListener;
    if-eqz v0, :cond_0

    .line 202
    invoke-virtual {v0, p1}, Lnet/hockeyapp/android/UpdateManagerListener;->getStringForResource(I)Ljava/lang/String;

    move-result-object v1

    .line 205
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
