.class public Lnet/hockeyapp/android/adapters/MessagesAdapter;
.super Landroid/widget/BaseAdapter;
.source "MessagesAdapter.java"


# instance fields
.field private attachmentListView:Lnet/hockeyapp/android/views/AttachmentListView;

.field private authorTextView:Landroid/widget/TextView;

.field private context:Landroid/content/Context;

.field private date:Ljava/util/Date;

.field private dateTextView:Landroid/widget/TextView;

.field private format:Ljava/text/SimpleDateFormat;

.field private formatNew:Ljava/text/SimpleDateFormat;

.field private messageTextView:Landroid/widget/TextView;

.field private messagesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lnet/hockeyapp/android/objects/FeedbackMessage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lnet/hockeyapp/android/objects/FeedbackMessage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 59
    .local p2, "messagesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/hockeyapp/android/objects/FeedbackMessage;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 60
    iput-object p1, p0, Lnet/hockeyapp/android/adapters/MessagesAdapter;->context:Landroid/content/Context;

    .line 61
    iput-object p2, p0, Lnet/hockeyapp/android/adapters/MessagesAdapter;->messagesList:Ljava/util/ArrayList;

    .line 63
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lnet/hockeyapp/android/adapters/MessagesAdapter;->format:Ljava/text/SimpleDateFormat;

    .line 64
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "d MMM h:mm a"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lnet/hockeyapp/android/adapters/MessagesAdapter;->formatNew:Ljava/text/SimpleDateFormat;

    .line 65
    return-void
.end method


# virtual methods
.method public add(Lnet/hockeyapp/android/objects/FeedbackMessage;)V
    .locals 1
    .param p1, "message"    # Lnet/hockeyapp/android/objects/FeedbackMessage;

    .prologue
    .line 129
    if-eqz p1, :cond_0

    iget-object v0, p0, Lnet/hockeyapp/android/adapters/MessagesAdapter;->messagesList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lnet/hockeyapp/android/adapters/MessagesAdapter;->messagesList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    :cond_0
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lnet/hockeyapp/android/adapters/MessagesAdapter;->messagesList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lnet/hockeyapp/android/adapters/MessagesAdapter;->messagesList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 126
    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lnet/hockeyapp/android/adapters/MessagesAdapter;->messagesList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 114
    iget-object v0, p0, Lnet/hockeyapp/android/adapters/MessagesAdapter;->messagesList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 119
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v6, 0x0

    .line 73
    iget-object v5, p0, Lnet/hockeyapp/android/adapters/MessagesAdapter;->messagesList:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/hockeyapp/android/objects/FeedbackMessage;

    .line 76
    .local v3, "feedbackMessage":Lnet/hockeyapp/android/objects/FeedbackMessage;
    if-nez p2, :cond_0

    .line 77
    new-instance v4, Lnet/hockeyapp/android/views/FeedbackMessageView;

    iget-object v5, p0, Lnet/hockeyapp/android/adapters/MessagesAdapter;->context:Landroid/content/Context;

    invoke-direct {v4, v5}, Lnet/hockeyapp/android/views/FeedbackMessageView;-><init>(Landroid/content/Context;)V

    .line 83
    .local v4, "view":Lnet/hockeyapp/android/views/FeedbackMessageView;
    :goto_0
    if-eqz v3, :cond_1

    .line 84
    const/16 v5, 0x3001

    invoke-virtual {v4, v5}, Lnet/hockeyapp/android/views/FeedbackMessageView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lnet/hockeyapp/android/adapters/MessagesAdapter;->authorTextView:Landroid/widget/TextView;

    .line 85
    const/16 v5, 0x3002

    invoke-virtual {v4, v5}, Lnet/hockeyapp/android/views/FeedbackMessageView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lnet/hockeyapp/android/adapters/MessagesAdapter;->dateTextView:Landroid/widget/TextView;

    .line 86
    const/16 v5, 0x3003

    invoke-virtual {v4, v5}, Lnet/hockeyapp/android/views/FeedbackMessageView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lnet/hockeyapp/android/adapters/MessagesAdapter;->messageTextView:Landroid/widget/TextView;

    .line 87
    const/16 v5, 0x3004

    invoke-virtual {v4, v5}, Lnet/hockeyapp/android/views/FeedbackMessageView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lnet/hockeyapp/android/views/AttachmentListView;

    iput-object v5, p0, Lnet/hockeyapp/android/adapters/MessagesAdapter;->attachmentListView:Lnet/hockeyapp/android/views/AttachmentListView;

    .line 90
    :try_start_0
    iget-object v5, p0, Lnet/hockeyapp/android/adapters/MessagesAdapter;->format:Ljava/text/SimpleDateFormat;

    invoke-virtual {v3}, Lnet/hockeyapp/android/objects/FeedbackMessage;->getCreatedAt()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5

    iput-object v5, p0, Lnet/hockeyapp/android/adapters/MessagesAdapter;->date:Ljava/util/Date;

    .line 91
    iget-object v5, p0, Lnet/hockeyapp/android/adapters/MessagesAdapter;->dateTextView:Landroid/widget/TextView;

    iget-object v7, p0, Lnet/hockeyapp/android/adapters/MessagesAdapter;->formatNew:Ljava/text/SimpleDateFormat;

    iget-object v8, p0, Lnet/hockeyapp/android/adapters/MessagesAdapter;->date:Ljava/util/Date;

    invoke-virtual {v7, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    :goto_1
    iget-object v5, p0, Lnet/hockeyapp/android/adapters/MessagesAdapter;->authorTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Lnet/hockeyapp/android/objects/FeedbackMessage;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    iget-object v5, p0, Lnet/hockeyapp/android/adapters/MessagesAdapter;->messageTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Lnet/hockeyapp/android/objects/FeedbackMessage;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    iget-object v5, p0, Lnet/hockeyapp/android/adapters/MessagesAdapter;->attachmentListView:Lnet/hockeyapp/android/views/AttachmentListView;

    invoke-virtual {v5}, Lnet/hockeyapp/android/views/AttachmentListView;->removeAllViews()V

    .line 100
    invoke-virtual {v3}, Lnet/hockeyapp/android/objects/FeedbackMessage;->getFeedbackAttachments()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/hockeyapp/android/objects/FeedbackAttachment;

    .line 101
    .local v2, "feedbackAttachment":Lnet/hockeyapp/android/objects/FeedbackAttachment;
    new-instance v0, Lnet/hockeyapp/android/views/AttachmentView;

    iget-object v7, p0, Lnet/hockeyapp/android/adapters/MessagesAdapter;->context:Landroid/content/Context;

    iget-object v8, p0, Lnet/hockeyapp/android/adapters/MessagesAdapter;->attachmentListView:Lnet/hockeyapp/android/views/AttachmentListView;

    invoke-direct {v0, v7, v8, v2, v6}, Lnet/hockeyapp/android/views/AttachmentView;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lnet/hockeyapp/android/objects/FeedbackAttachment;Z)V

    .line 102
    .local v0, "attachmentView":Lnet/hockeyapp/android/views/AttachmentView;
    invoke-static {}, Lnet/hockeyapp/android/tasks/AttachmentDownloader;->getInstance()Lnet/hockeyapp/android/tasks/AttachmentDownloader;

    move-result-object v7

    invoke-virtual {v7, v2, v0}, Lnet/hockeyapp/android/tasks/AttachmentDownloader;->download(Lnet/hockeyapp/android/objects/FeedbackAttachment;Lnet/hockeyapp/android/views/AttachmentView;)V

    .line 103
    iget-object v7, p0, Lnet/hockeyapp/android/adapters/MessagesAdapter;->attachmentListView:Lnet/hockeyapp/android/views/AttachmentListView;

    invoke-virtual {v7, v0}, Lnet/hockeyapp/android/views/AttachmentListView;->addView(Landroid/view/View;)V

    goto :goto_2

    .end local v0    # "attachmentView":Lnet/hockeyapp/android/views/AttachmentView;
    .end local v2    # "feedbackAttachment":Lnet/hockeyapp/android/objects/FeedbackAttachment;
    .end local v4    # "view":Lnet/hockeyapp/android/views/FeedbackMessageView;
    :cond_0
    move-object v4, p2

    .line 80
    check-cast v4, Lnet/hockeyapp/android/views/FeedbackMessageView;

    .restart local v4    # "view":Lnet/hockeyapp/android/views/FeedbackMessageView;
    goto/16 :goto_0

    .line 92
    :catch_0
    move-exception v1

    .line 93
    .local v1, "e":Ljava/text/ParseException;
    invoke-virtual {v1}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_1

    .line 107
    .end local v1    # "e":Ljava/text/ParseException;
    :cond_1
    rem-int/lit8 v5, p1, 0x2

    if-nez v5, :cond_2

    move v5, v6

    :goto_3
    invoke-virtual {v4, v5}, Lnet/hockeyapp/android/views/FeedbackMessageView;->setFeedbackMessageViewBgAndTextColor(I)V

    .line 109
    return-object v4

    .line 107
    :cond_2
    const/4 v5, 0x1

    goto :goto_3
.end method
