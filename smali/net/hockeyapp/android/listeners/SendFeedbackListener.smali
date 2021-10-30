.class public abstract Lnet/hockeyapp/android/listeners/SendFeedbackListener;
.super Lnet/hockeyapp/android/StringListener;
.source "SendFeedbackListener.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lnet/hockeyapp/android/StringListener;-><init>()V

    return-void
.end method


# virtual methods
.method public feedbackFailed(Lnet/hockeyapp/android/tasks/SendFeedbackTask;Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "task"    # Lnet/hockeyapp/android/tasks/SendFeedbackTask;
    .param p2, "userWantsRetry"    # Ljava/lang/Boolean;

    .prologue
    .line 46
    return-void
.end method

.method public feedbackSuccessful(Lnet/hockeyapp/android/tasks/SendFeedbackTask;)V
    .locals 0
    .param p1, "task"    # Lnet/hockeyapp/android/tasks/SendFeedbackTask;

    .prologue
    .line 43
    return-void
.end method
