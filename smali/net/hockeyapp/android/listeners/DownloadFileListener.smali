.class public abstract Lnet/hockeyapp/android/listeners/DownloadFileListener;
.super Lnet/hockeyapp/android/StringListener;
.source "DownloadFileListener.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lnet/hockeyapp/android/StringListener;-><init>()V

    return-void
.end method


# virtual methods
.method public downloadFailed(Lnet/hockeyapp/android/tasks/DownloadFileTask;Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "task"    # Lnet/hockeyapp/android/tasks/DownloadFileTask;
    .param p2, "userWantsRetry"    # Ljava/lang/Boolean;

    .prologue
    .line 42
    return-void
.end method

.method public downloadSuccessful(Lnet/hockeyapp/android/tasks/DownloadFileTask;)V
    .locals 0
    .param p1, "task"    # Lnet/hockeyapp/android/tasks/DownloadFileTask;

    .prologue
    .line 45
    return-void
.end method
