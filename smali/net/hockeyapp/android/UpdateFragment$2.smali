.class Lnet/hockeyapp/android/UpdateFragment$2;
.super Lnet/hockeyapp/android/listeners/DownloadFileListener;
.source "UpdateFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/hockeyapp/android/UpdateFragment;->startDownloadTask(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/hockeyapp/android/UpdateFragment;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lnet/hockeyapp/android/UpdateFragment;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lnet/hockeyapp/android/UpdateFragment;

    .prologue
    .line 187
    iput-object p1, p0, Lnet/hockeyapp/android/UpdateFragment$2;->this$0:Lnet/hockeyapp/android/UpdateFragment;

    iput-object p2, p0, Lnet/hockeyapp/android/UpdateFragment$2;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Lnet/hockeyapp/android/listeners/DownloadFileListener;-><init>()V

    return-void
.end method


# virtual methods
.method public downloadFailed(Lnet/hockeyapp/android/tasks/DownloadFileTask;Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "task"    # Lnet/hockeyapp/android/tasks/DownloadFileTask;
    .param p2, "userWantsRetry"    # Ljava/lang/Boolean;

    .prologue
    .line 189
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lnet/hockeyapp/android/UpdateFragment$2;->this$0:Lnet/hockeyapp/android/UpdateFragment;

    iget-object v1, p0, Lnet/hockeyapp/android/UpdateFragment$2;->val$activity:Landroid/app/Activity;

    invoke-static {v0, v1}, Lnet/hockeyapp/android/UpdateFragment;->access$000(Lnet/hockeyapp/android/UpdateFragment;Landroid/app/Activity;)V

    .line 192
    :cond_0
    return-void
.end method

.method public downloadSuccessful(Lnet/hockeyapp/android/tasks/DownloadFileTask;)V
    .locals 0
    .param p1, "task"    # Lnet/hockeyapp/android/tasks/DownloadFileTask;

    .prologue
    .line 196
    return-void
.end method

.method public getStringForResource(I)Ljava/lang/String;
    .locals 2
    .param p1, "resourceID"    # I

    .prologue
    .line 199
    invoke-static {}, Lnet/hockeyapp/android/UpdateManager;->getLastListener()Lnet/hockeyapp/android/UpdateManagerListener;

    move-result-object v0

    .line 200
    .local v0, "listener":Lnet/hockeyapp/android/UpdateManagerListener;
    if-eqz v0, :cond_0

    .line 201
    invoke-virtual {v0, p1}, Lnet/hockeyapp/android/UpdateManagerListener;->getStringForResource(I)Ljava/lang/String;

    move-result-object v1

    .line 204
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
