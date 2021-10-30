.class Lnet/hockeyapp/android/FeedbackActivity$2$1;
.super Ljava/lang/Object;
.source "FeedbackActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/hockeyapp/android/FeedbackActivity$2;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lnet/hockeyapp/android/FeedbackActivity$2;


# direct methods
.method constructor <init>(Lnet/hockeyapp/android/FeedbackActivity$2;)V
    .locals 0
    .param p1, "this$1"    # Lnet/hockeyapp/android/FeedbackActivity$2;

    .prologue
    .line 570
    iput-object p1, p0, Lnet/hockeyapp/android/FeedbackActivity$2$1;->this$1:Lnet/hockeyapp/android/FeedbackActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 575
    iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity$2$1;->this$1:Lnet/hockeyapp/android/FeedbackActivity$2;

    iget-object v0, v0, Lnet/hockeyapp/android/FeedbackActivity$2;->this$0:Lnet/hockeyapp/android/FeedbackActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lnet/hockeyapp/android/FeedbackActivity;->enableDisableSendFeedbackButton(Z)V

    .line 576
    iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity$2$1;->this$1:Lnet/hockeyapp/android/FeedbackActivity$2;

    iget-object v0, v0, Lnet/hockeyapp/android/FeedbackActivity$2;->this$0:Lnet/hockeyapp/android/FeedbackActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/hockeyapp/android/FeedbackActivity;->showDialog(I)V

    .line 577
    return-void
.end method
