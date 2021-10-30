.class Lnet/hockeyapp/android/FeedbackActivity$4;
.super Ljava/lang/Object;
.source "FeedbackActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/hockeyapp/android/FeedbackActivity;->loadFeedbackMessages(Lnet/hockeyapp/android/objects/FeedbackResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/hockeyapp/android/FeedbackActivity;

.field final synthetic val$feedbackResponse:Lnet/hockeyapp/android/objects/FeedbackResponse;


# direct methods
.method constructor <init>(Lnet/hockeyapp/android/FeedbackActivity;Lnet/hockeyapp/android/objects/FeedbackResponse;)V
    .locals 0
    .param p1, "this$0"    # Lnet/hockeyapp/android/FeedbackActivity;

    .prologue
    .line 638
    iput-object p1, p0, Lnet/hockeyapp/android/FeedbackActivity$4;->this$0:Lnet/hockeyapp/android/FeedbackActivity;

    iput-object p2, p0, Lnet/hockeyapp/android/FeedbackActivity$4;->val$feedbackResponse:Lnet/hockeyapp/android/objects/FeedbackResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v6, 0x1

    .line 642
    iget-object v5, p0, Lnet/hockeyapp/android/FeedbackActivity$4;->this$0:Lnet/hockeyapp/android/FeedbackActivity;

    invoke-virtual {v5, v6}, Lnet/hockeyapp/android/FeedbackActivity;->configureFeedbackView(Z)V

    .line 644
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v5, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    invoke-direct {v2, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 645
    .local v2, "format":Ljava/text/SimpleDateFormat;
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v5, "d MMM h:mm a"

    invoke-direct {v3, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 647
    .local v3, "formatNew":Ljava/text/SimpleDateFormat;
    const/4 v0, 0x0

    .line 648
    .local v0, "date":Ljava/util/Date;
    iget-object v5, p0, Lnet/hockeyapp/android/FeedbackActivity$4;->val$feedbackResponse:Lnet/hockeyapp/android/objects/FeedbackResponse;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lnet/hockeyapp/android/FeedbackActivity$4;->val$feedbackResponse:Lnet/hockeyapp/android/objects/FeedbackResponse;

    invoke-virtual {v5}, Lnet/hockeyapp/android/objects/FeedbackResponse;->getFeedback()Lnet/hockeyapp/android/objects/Feedback;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lnet/hockeyapp/android/FeedbackActivity$4;->val$feedbackResponse:Lnet/hockeyapp/android/objects/FeedbackResponse;

    .line 649
    invoke-virtual {v5}, Lnet/hockeyapp/android/objects/FeedbackResponse;->getFeedback()Lnet/hockeyapp/android/objects/Feedback;

    move-result-object v5

    invoke-virtual {v5}, Lnet/hockeyapp/android/objects/Feedback;->getMessages()Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lnet/hockeyapp/android/FeedbackActivity$4;->val$feedbackResponse:Lnet/hockeyapp/android/objects/FeedbackResponse;

    .line 650
    invoke-virtual {v5}, Lnet/hockeyapp/android/objects/FeedbackResponse;->getFeedback()Lnet/hockeyapp/android/objects/Feedback;

    move-result-object v5

    invoke-virtual {v5}, Lnet/hockeyapp/android/objects/Feedback;->getMessages()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 652
    iget-object v5, p0, Lnet/hockeyapp/android/FeedbackActivity$4;->this$0:Lnet/hockeyapp/android/FeedbackActivity;

    iget-object v6, p0, Lnet/hockeyapp/android/FeedbackActivity$4;->val$feedbackResponse:Lnet/hockeyapp/android/objects/FeedbackResponse;

    invoke-virtual {v6}, Lnet/hockeyapp/android/objects/FeedbackResponse;->getFeedback()Lnet/hockeyapp/android/objects/Feedback;

    move-result-object v6

    invoke-virtual {v6}, Lnet/hockeyapp/android/objects/Feedback;->getMessages()Ljava/util/ArrayList;

    move-result-object v6

    invoke-static {v5, v6}, Lnet/hockeyapp/android/FeedbackActivity;->access$602(Lnet/hockeyapp/android/FeedbackActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 654
    iget-object v5, p0, Lnet/hockeyapp/android/FeedbackActivity$4;->this$0:Lnet/hockeyapp/android/FeedbackActivity;

    invoke-static {v5}, Lnet/hockeyapp/android/FeedbackActivity;->access$600(Lnet/hockeyapp/android/FeedbackActivity;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 658
    :try_start_0
    iget-object v5, p0, Lnet/hockeyapp/android/FeedbackActivity$4;->this$0:Lnet/hockeyapp/android/FeedbackActivity;

    invoke-static {v5}, Lnet/hockeyapp/android/FeedbackActivity;->access$600(Lnet/hockeyapp/android/FeedbackActivity;)Ljava/util/ArrayList;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnet/hockeyapp/android/objects/FeedbackMessage;

    invoke-virtual {v5}, Lnet/hockeyapp/android/objects/FeedbackMessage;->getCreatedAt()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 659
    iget-object v5, p0, Lnet/hockeyapp/android/FeedbackActivity$4;->this$0:Lnet/hockeyapp/android/FeedbackActivity;

    invoke-static {v5}, Lnet/hockeyapp/android/FeedbackActivity;->access$700(Lnet/hockeyapp/android/FeedbackActivity;)Landroid/widget/TextView;

    move-result-object v5

    const-string v6, "Last Updated: %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {v3, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 665
    :goto_0
    iget-object v5, p0, Lnet/hockeyapp/android/FeedbackActivity$4;->this$0:Lnet/hockeyapp/android/FeedbackActivity;

    invoke-static {v5}, Lnet/hockeyapp/android/FeedbackActivity;->access$800(Lnet/hockeyapp/android/FeedbackActivity;)Lnet/hockeyapp/android/adapters/MessagesAdapter;

    move-result-object v5

    if-nez v5, :cond_1

    .line 666
    iget-object v5, p0, Lnet/hockeyapp/android/FeedbackActivity$4;->this$0:Lnet/hockeyapp/android/FeedbackActivity;

    new-instance v6, Lnet/hockeyapp/android/adapters/MessagesAdapter;

    iget-object v7, p0, Lnet/hockeyapp/android/FeedbackActivity$4;->this$0:Lnet/hockeyapp/android/FeedbackActivity;

    invoke-static {v7}, Lnet/hockeyapp/android/FeedbackActivity;->access$300(Lnet/hockeyapp/android/FeedbackActivity;)Landroid/content/Context;

    move-result-object v7

    iget-object v8, p0, Lnet/hockeyapp/android/FeedbackActivity$4;->this$0:Lnet/hockeyapp/android/FeedbackActivity;

    invoke-static {v8}, Lnet/hockeyapp/android/FeedbackActivity;->access$600(Lnet/hockeyapp/android/FeedbackActivity;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lnet/hockeyapp/android/adapters/MessagesAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    invoke-static {v5, v6}, Lnet/hockeyapp/android/FeedbackActivity;->access$802(Lnet/hockeyapp/android/FeedbackActivity;Lnet/hockeyapp/android/adapters/MessagesAdapter;)Lnet/hockeyapp/android/adapters/MessagesAdapter;

    .line 677
    :goto_1
    iget-object v5, p0, Lnet/hockeyapp/android/FeedbackActivity$4;->this$0:Lnet/hockeyapp/android/FeedbackActivity;

    invoke-static {v5}, Lnet/hockeyapp/android/FeedbackActivity;->access$900(Lnet/hockeyapp/android/FeedbackActivity;)Landroid/widget/ListView;

    move-result-object v5

    iget-object v6, p0, Lnet/hockeyapp/android/FeedbackActivity$4;->this$0:Lnet/hockeyapp/android/FeedbackActivity;

    invoke-static {v6}, Lnet/hockeyapp/android/FeedbackActivity;->access$800(Lnet/hockeyapp/android/FeedbackActivity;)Lnet/hockeyapp/android/adapters/MessagesAdapter;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 679
    :cond_0
    return-void

    .line 661
    :catch_0
    move-exception v1

    .line 662
    .local v1, "e1":Ljava/text/ParseException;
    invoke-virtual {v1}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_0

    .line 669
    .end local v1    # "e1":Ljava/text/ParseException;
    :cond_1
    iget-object v5, p0, Lnet/hockeyapp/android/FeedbackActivity$4;->this$0:Lnet/hockeyapp/android/FeedbackActivity;

    invoke-static {v5}, Lnet/hockeyapp/android/FeedbackActivity;->access$800(Lnet/hockeyapp/android/FeedbackActivity;)Lnet/hockeyapp/android/adapters/MessagesAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lnet/hockeyapp/android/adapters/MessagesAdapter;->clear()V

    .line 670
    iget-object v5, p0, Lnet/hockeyapp/android/FeedbackActivity$4;->this$0:Lnet/hockeyapp/android/FeedbackActivity;

    invoke-static {v5}, Lnet/hockeyapp/android/FeedbackActivity;->access$600(Lnet/hockeyapp/android/FeedbackActivity;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/hockeyapp/android/objects/FeedbackMessage;

    .line 671
    .local v4, "message":Lnet/hockeyapp/android/objects/FeedbackMessage;
    iget-object v6, p0, Lnet/hockeyapp/android/FeedbackActivity$4;->this$0:Lnet/hockeyapp/android/FeedbackActivity;

    invoke-static {v6}, Lnet/hockeyapp/android/FeedbackActivity;->access$800(Lnet/hockeyapp/android/FeedbackActivity;)Lnet/hockeyapp/android/adapters/MessagesAdapter;

    move-result-object v6

    invoke-virtual {v6, v4}, Lnet/hockeyapp/android/adapters/MessagesAdapter;->add(Lnet/hockeyapp/android/objects/FeedbackMessage;)V

    goto :goto_2

    .line 674
    .end local v4    # "message":Lnet/hockeyapp/android/objects/FeedbackMessage;
    :cond_2
    iget-object v5, p0, Lnet/hockeyapp/android/FeedbackActivity$4;->this$0:Lnet/hockeyapp/android/FeedbackActivity;

    invoke-static {v5}, Lnet/hockeyapp/android/FeedbackActivity;->access$800(Lnet/hockeyapp/android/FeedbackActivity;)Lnet/hockeyapp/android/adapters/MessagesAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lnet/hockeyapp/android/adapters/MessagesAdapter;->notifyDataSetChanged()V

    goto :goto_1
.end method
