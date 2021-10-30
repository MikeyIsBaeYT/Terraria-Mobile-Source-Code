.class Lnet/hockeyapp/android/FeedbackActivity$3;
.super Landroid/os/Handler;
.source "FeedbackActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/hockeyapp/android/FeedbackActivity;->initParseFeedbackHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/hockeyapp/android/FeedbackActivity;


# direct methods
.method constructor <init>(Lnet/hockeyapp/android/FeedbackActivity;)V
    .locals 0
    .param p1, "this$0"    # Lnet/hockeyapp/android/FeedbackActivity;

    .prologue
    .line 588
    iput-object p1, p0, Lnet/hockeyapp/android/FeedbackActivity$3;->this$0:Lnet/hockeyapp/android/FeedbackActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 591
    const/4 v2, 0x0

    .line 592
    .local v2, "success":Z
    iget-object v3, p0, Lnet/hockeyapp/android/FeedbackActivity$3;->this$0:Lnet/hockeyapp/android/FeedbackActivity;

    new-instance v4, Lnet/hockeyapp/android/objects/ErrorObject;

    invoke-direct {v4}, Lnet/hockeyapp/android/objects/ErrorObject;-><init>()V

    invoke-static {v3, v4}, Lnet/hockeyapp/android/FeedbackActivity;->access$002(Lnet/hockeyapp/android/FeedbackActivity;Lnet/hockeyapp/android/objects/ErrorObject;)Lnet/hockeyapp/android/objects/ErrorObject;

    .line 594
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 595
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 596
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "parse_feedback_response"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lnet/hockeyapp/android/objects/FeedbackResponse;

    .line 597
    .local v1, "feedbackResponse":Lnet/hockeyapp/android/objects/FeedbackResponse;
    if-eqz v1, :cond_0

    .line 598
    invoke-virtual {v1}, Lnet/hockeyapp/android/objects/FeedbackResponse;->getStatus()Ljava/lang/String;

    move-result-object v3

    const-string v4, "success"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 600
    const/4 v2, 0x1

    .line 602
    invoke-virtual {v1}, Lnet/hockeyapp/android/objects/FeedbackResponse;->getToken()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 604
    invoke-static {}, Lnet/hockeyapp/android/utils/PrefsUtil;->getInstance()Lnet/hockeyapp/android/utils/PrefsUtil;

    move-result-object v3

    iget-object v4, p0, Lnet/hockeyapp/android/FeedbackActivity$3;->this$0:Lnet/hockeyapp/android/FeedbackActivity;

    invoke-static {v4}, Lnet/hockeyapp/android/FeedbackActivity;->access$300(Lnet/hockeyapp/android/FeedbackActivity;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v1}, Lnet/hockeyapp/android/objects/FeedbackResponse;->getToken()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lnet/hockeyapp/android/utils/PrefsUtil;->saveFeedbackTokenToPrefs(Landroid/content/Context;Ljava/lang/String;)V

    .line 606
    iget-object v3, p0, Lnet/hockeyapp/android/FeedbackActivity$3;->this$0:Lnet/hockeyapp/android/FeedbackActivity;

    invoke-static {v3, v1}, Lnet/hockeyapp/android/FeedbackActivity;->access$400(Lnet/hockeyapp/android/FeedbackActivity;Lnet/hockeyapp/android/objects/FeedbackResponse;)V

    .line 607
    iget-object v3, p0, Lnet/hockeyapp/android/FeedbackActivity$3;->this$0:Lnet/hockeyapp/android/FeedbackActivity;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lnet/hockeyapp/android/FeedbackActivity;->access$502(Lnet/hockeyapp/android/FeedbackActivity;Z)Z

    .line 617
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "feedbackResponse":Lnet/hockeyapp/android/objects/FeedbackResponse;
    :cond_0
    :goto_0
    if-nez v2, :cond_1

    .line 618
    iget-object v3, p0, Lnet/hockeyapp/android/FeedbackActivity$3;->this$0:Lnet/hockeyapp/android/FeedbackActivity;

    new-instance v4, Lnet/hockeyapp/android/FeedbackActivity$3$1;

    invoke-direct {v4, p0}, Lnet/hockeyapp/android/FeedbackActivity$3$1;-><init>(Lnet/hockeyapp/android/FeedbackActivity$3;)V

    invoke-virtual {v3, v4}, Lnet/hockeyapp/android/FeedbackActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 628
    :cond_1
    iget-object v3, p0, Lnet/hockeyapp/android/FeedbackActivity$3;->this$0:Lnet/hockeyapp/android/FeedbackActivity;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lnet/hockeyapp/android/FeedbackActivity;->enableDisableSendFeedbackButton(Z)V

    .line 629
    return-void

    .line 611
    .restart local v0    # "bundle":Landroid/os/Bundle;
    .restart local v1    # "feedbackResponse":Lnet/hockeyapp/android/objects/FeedbackResponse;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method
