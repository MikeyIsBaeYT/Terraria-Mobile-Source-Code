.class public Lnet/hockeyapp/android/FeedbackActivity;
.super Landroid/app/Activity;
.source "FeedbackActivity.java"

# interfaces
.implements Lnet/hockeyapp/android/FeedbackActivityInterface;
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final MAX_ATTACHMENTS_PER_MSG:I = 0x3


# instance fields
.field private final ATTACH_FILE:I

.field private final ATTACH_PICTURE:I

.field private final DIALOG_ERROR_ID:I

.field private final PAINT_IMAGE:I

.field private addAttachmentButton:Landroid/widget/Button;

.field private addResponseButton:Landroid/widget/Button;

.field private context:Landroid/content/Context;

.field private emailInput:Landroid/widget/EditText;

.field private error:Lnet/hockeyapp/android/objects/ErrorObject;

.field private feedbackHandler:Landroid/os/Handler;

.field private feedbackMessages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lnet/hockeyapp/android/objects/FeedbackMessage;",
            ">;"
        }
    .end annotation
.end field

.field private feedbackScrollView:Landroid/widget/ScrollView;

.field private feedbackViewInitialized:Z

.field private inSendFeedback:Z

.field private lastUpdatedTextView:Landroid/widget/TextView;

.field private messagesAdapter:Lnet/hockeyapp/android/adapters/MessagesAdapter;

.field private messagesListView:Landroid/widget/ListView;

.field private nameInput:Landroid/widget/EditText;

.field private parseFeedbackHandler:Landroid/os/Handler;

.field private parseFeedbackTask:Lnet/hockeyapp/android/tasks/ParseFeedbackTask;

.field private refreshButton:Landroid/widget/Button;

.field private sendFeedbackButton:Landroid/widget/Button;

.field private sendFeedbackTask:Lnet/hockeyapp/android/tasks/SendFeedbackTask;

.field private subjectInput:Landroid/widget/EditText;

.field private textInput:Landroid/widget/EditText;

.field private token:Ljava/lang/String;

.field private url:Ljava/lang/String;

.field private wrapperLayoutFeedbackAndMessages:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 80
    const/4 v0, 0x0

    iput v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->DIALOG_ERROR_ID:I

    .line 82
    const/4 v0, 0x1

    iput v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->ATTACH_PICTURE:I

    .line 83
    const/4 v0, 0x2

    iput v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->ATTACH_FILE:I

    .line 84
    const/4 v0, 0x3

    iput v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->PAINT_IMAGE:I

    return-void
.end method

.method static synthetic access$000(Lnet/hockeyapp/android/FeedbackActivity;)Lnet/hockeyapp/android/objects/ErrorObject;
    .locals 1
    .param p0, "x0"    # Lnet/hockeyapp/android/FeedbackActivity;

    .prologue
    .line 75
    iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->error:Lnet/hockeyapp/android/objects/ErrorObject;

    return-object v0
.end method

.method static synthetic access$002(Lnet/hockeyapp/android/FeedbackActivity;Lnet/hockeyapp/android/objects/ErrorObject;)Lnet/hockeyapp/android/objects/ErrorObject;
    .locals 0
    .param p0, "x0"    # Lnet/hockeyapp/android/FeedbackActivity;
    .param p1, "x1"    # Lnet/hockeyapp/android/objects/ErrorObject;

    .prologue
    .line 75
    iput-object p1, p0, Lnet/hockeyapp/android/FeedbackActivity;->error:Lnet/hockeyapp/android/objects/ErrorObject;

    return-object p1
.end method

.method static synthetic access$100(Lnet/hockeyapp/android/FeedbackActivity;)V
    .locals 0
    .param p0, "x0"    # Lnet/hockeyapp/android/FeedbackActivity;

    .prologue
    .line 75
    invoke-direct {p0}, Lnet/hockeyapp/android/FeedbackActivity;->resetFeedbackView()V

    return-void
.end method

.method static synthetic access$200(Lnet/hockeyapp/android/FeedbackActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lnet/hockeyapp/android/FeedbackActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 75
    invoke-direct {p0, p1, p2}, Lnet/hockeyapp/android/FeedbackActivity;->startParseFeedbackTask(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lnet/hockeyapp/android/FeedbackActivity;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lnet/hockeyapp/android/FeedbackActivity;

    .prologue
    .line 75
    iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lnet/hockeyapp/android/FeedbackActivity;Lnet/hockeyapp/android/objects/FeedbackResponse;)V
    .locals 0
    .param p0, "x0"    # Lnet/hockeyapp/android/FeedbackActivity;
    .param p1, "x1"    # Lnet/hockeyapp/android/objects/FeedbackResponse;

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lnet/hockeyapp/android/FeedbackActivity;->loadFeedbackMessages(Lnet/hockeyapp/android/objects/FeedbackResponse;)V

    return-void
.end method

.method static synthetic access$502(Lnet/hockeyapp/android/FeedbackActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lnet/hockeyapp/android/FeedbackActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 75
    iput-boolean p1, p0, Lnet/hockeyapp/android/FeedbackActivity;->inSendFeedback:Z

    return p1
.end method

.method static synthetic access$600(Lnet/hockeyapp/android/FeedbackActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lnet/hockeyapp/android/FeedbackActivity;

    .prologue
    .line 75
    iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->feedbackMessages:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$602(Lnet/hockeyapp/android/FeedbackActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lnet/hockeyapp/android/FeedbackActivity;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 75
    iput-object p1, p0, Lnet/hockeyapp/android/FeedbackActivity;->feedbackMessages:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$700(Lnet/hockeyapp/android/FeedbackActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lnet/hockeyapp/android/FeedbackActivity;

    .prologue
    .line 75
    iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->lastUpdatedTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$800(Lnet/hockeyapp/android/FeedbackActivity;)Lnet/hockeyapp/android/adapters/MessagesAdapter;
    .locals 1
    .param p0, "x0"    # Lnet/hockeyapp/android/FeedbackActivity;

    .prologue
    .line 75
    iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->messagesAdapter:Lnet/hockeyapp/android/adapters/MessagesAdapter;

    return-object v0
.end method

.method static synthetic access$802(Lnet/hockeyapp/android/FeedbackActivity;Lnet/hockeyapp/android/adapters/MessagesAdapter;)Lnet/hockeyapp/android/adapters/MessagesAdapter;
    .locals 0
    .param p0, "x0"    # Lnet/hockeyapp/android/FeedbackActivity;
    .param p1, "x1"    # Lnet/hockeyapp/android/adapters/MessagesAdapter;

    .prologue
    .line 75
    iput-object p1, p0, Lnet/hockeyapp/android/FeedbackActivity;->messagesAdapter:Lnet/hockeyapp/android/adapters/MessagesAdapter;

    return-object p1
.end method

.method static synthetic access$900(Lnet/hockeyapp/android/FeedbackActivity;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lnet/hockeyapp/android/FeedbackActivity;

    .prologue
    .line 75
    iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->messagesListView:Landroid/widget/ListView;

    return-object v0
.end method

.method private addAttachment(I)Z
    .locals 4
    .param p1, "request"    # I

    .prologue
    const/4 v3, 0x2

    const/4 v1, 0x1

    .line 487
    if-ne p1, v3, :cond_0

    .line 488
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 489
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "*/*"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 490
    const-string v2, "android.intent.action.GET_CONTENT"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 491
    const-string v2, "Select File"

    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2, v3}, Lnet/hockeyapp/android/FeedbackActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 501
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return v1

    .line 494
    :cond_0
    if-ne p1, v1, :cond_1

    .line 495
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 496
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v2, "image/*"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 497
    const-string v2, "android.intent.action.GET_CONTENT"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 498
    const-string v2, "Select Picture"

    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lnet/hockeyapp/android/FeedbackActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 501
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private configureAppropriateView()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 506
    invoke-static {}, Lnet/hockeyapp/android/utils/PrefsUtil;->getInstance()Lnet/hockeyapp/android/utils/PrefsUtil;

    move-result-object v0

    invoke-virtual {v0, p0}, Lnet/hockeyapp/android/utils/PrefsUtil;->getFeedbackTokenFromPrefs(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->token:Ljava/lang/String;

    .line 507
    iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->token:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->inSendFeedback:Z

    if-eqz v0, :cond_1

    .line 509
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnet/hockeyapp/android/FeedbackActivity;->configureFeedbackView(Z)V

    .line 516
    :goto_0
    return-void

    .line 513
    :cond_1
    invoke-virtual {p0, v9}, Lnet/hockeyapp/android/FeedbackActivity;->configureFeedbackView(Z)V

    .line 514
    iget-object v1, p0, Lnet/hockeyapp/android/FeedbackActivity;->url:Ljava/lang/String;

    iget-object v7, p0, Lnet/hockeyapp/android/FeedbackActivity;->token:Ljava/lang/String;

    iget-object v8, p0, Lnet/hockeyapp/android/FeedbackActivity;->feedbackHandler:Landroid/os/Handler;

    move-object v0, p0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    invoke-direct/range {v0 .. v9}, Lnet/hockeyapp/android/FeedbackActivity;->sendFetchFeedback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Landroid/os/Handler;Z)V

    goto :goto_0
.end method

.method private createParseFeedbackTask(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "feedbackResponseString"    # Ljava/lang/String;
    .param p2, "requestType"    # Ljava/lang/String;

    .prologue
    .line 523
    new-instance v0, Lnet/hockeyapp/android/tasks/ParseFeedbackTask;

    iget-object v1, p0, Lnet/hockeyapp/android/FeedbackActivity;->parseFeedbackHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, p1, v1, p2}, Lnet/hockeyapp/android/tasks/ParseFeedbackTask;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->parseFeedbackTask:Lnet/hockeyapp/android/tasks/ParseFeedbackTask;

    .line 524
    return-void
.end method

.method private hideKeyboard()V
    .locals 3

    .prologue
    .line 527
    iget-object v1, p0, Lnet/hockeyapp/android/FeedbackActivity;->textInput:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    .line 528
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lnet/hockeyapp/android/FeedbackActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 529
    .local v0, "manager":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lnet/hockeyapp/android/FeedbackActivity;->textInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 531
    .end local v0    # "manager":Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    return-void
.end method

.method private initFeedbackHandler()V
    .locals 1

    .prologue
    .line 537
    new-instance v0, Lnet/hockeyapp/android/FeedbackActivity$2;

    invoke-direct {v0, p0}, Lnet/hockeyapp/android/FeedbackActivity$2;-><init>(Lnet/hockeyapp/android/FeedbackActivity;)V

    iput-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->feedbackHandler:Landroid/os/Handler;

    .line 582
    return-void
.end method

.method private initParseFeedbackHandler()V
    .locals 1

    .prologue
    .line 588
    new-instance v0, Lnet/hockeyapp/android/FeedbackActivity$3;

    invoke-direct {v0, p0}, Lnet/hockeyapp/android/FeedbackActivity$3;-><init>(Lnet/hockeyapp/android/FeedbackActivity;)V

    iput-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->parseFeedbackHandler:Landroid/os/Handler;

    .line 631
    return-void
.end method

.method private loadFeedbackMessages(Lnet/hockeyapp/android/objects/FeedbackResponse;)V
    .locals 1
    .param p1, "feedbackResponse"    # Lnet/hockeyapp/android/objects/FeedbackResponse;

    .prologue
    .line 638
    new-instance v0, Lnet/hockeyapp/android/FeedbackActivity$4;

    invoke-direct {v0, p0, p1}, Lnet/hockeyapp/android/FeedbackActivity$4;-><init>(Lnet/hockeyapp/android/FeedbackActivity;Lnet/hockeyapp/android/objects/FeedbackResponse;)V

    invoke-virtual {p0, v0}, Lnet/hockeyapp/android/FeedbackActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 681
    return-void
.end method

.method private resetFeedbackView()V
    .locals 1

    .prologue
    .line 684
    new-instance v0, Lnet/hockeyapp/android/FeedbackActivity$5;

    invoke-direct {v0, p0}, Lnet/hockeyapp/android/FeedbackActivity$5;-><init>(Lnet/hockeyapp/android/FeedbackActivity;)V

    invoke-virtual {p0, v0}, Lnet/hockeyapp/android/FeedbackActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 697
    return-void
.end method

.method private sendFeedback()V
    .locals 11

    .prologue
    const/4 v9, 0x0

    .line 703
    invoke-virtual {p0, v9}, Lnet/hockeyapp/android/FeedbackActivity;->enableDisableSendFeedbackButton(Z)V

    .line 704
    invoke-direct {p0}, Lnet/hockeyapp/android/FeedbackActivity;->hideKeyboard()V

    .line 706
    invoke-static {}, Lnet/hockeyapp/android/utils/PrefsUtil;->getInstance()Lnet/hockeyapp/android/utils/PrefsUtil;

    move-result-object v0

    iget-object v1, p0, Lnet/hockeyapp/android/FeedbackActivity;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lnet/hockeyapp/android/utils/PrefsUtil;->getFeedbackTokenFromPrefs(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 708
    .local v7, "token":Ljava/lang/String;
    iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->nameInput:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 709
    .local v2, "name":Ljava/lang/String;
    iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->emailInput:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 710
    .local v3, "email":Ljava/lang/String;
    iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->subjectInput:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 711
    .local v4, "subject":Ljava/lang/String;
    iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->textInput:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 713
    .local v5, "text":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 714
    iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->subjectInput:Landroid/widget/EditText;

    invoke-virtual {v0, v9}, Landroid/widget/EditText;->setVisibility(I)V

    .line 715
    iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->subjectInput:Landroid/widget/EditText;

    const/16 v1, 0x40e

    invoke-direct {p0, v0, v1}, Lnet/hockeyapp/android/FeedbackActivity;->setError(Landroid/widget/EditText;I)V

    .line 740
    :goto_0
    return-void

    .line 717
    :cond_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 718
    iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->nameInput:Landroid/widget/EditText;

    const/16 v1, 0x411

    invoke-direct {p0, v0, v1}, Lnet/hockeyapp/android/FeedbackActivity;->setError(Landroid/widget/EditText;I)V

    goto :goto_0

    .line 720
    :cond_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 721
    iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->emailInput:Landroid/widget/EditText;

    const/16 v1, 0x412

    invoke-direct {p0, v0, v1}, Lnet/hockeyapp/android/FeedbackActivity;->setError(Landroid/widget/EditText;I)V

    goto :goto_0

    .line 723
    :cond_2
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 724
    iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->textInput:Landroid/widget/EditText;

    const/16 v1, 0x413

    invoke-direct {p0, v0, v1}, Lnet/hockeyapp/android/FeedbackActivity;->setError(Landroid/widget/EditText;I)V

    goto :goto_0

    .line 726
    :cond_3
    invoke-static {v3}, Lnet/hockeyapp/android/utils/Util;->isValidEmail(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 727
    iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->emailInput:Landroid/widget/EditText;

    const/16 v1, 0x40f

    invoke-direct {p0, v0, v1}, Lnet/hockeyapp/android/FeedbackActivity;->setError(Landroid/widget/EditText;I)V

    goto :goto_0

    .line 731
    :cond_4
    invoke-static {}, Lnet/hockeyapp/android/utils/PrefsUtil;->getInstance()Lnet/hockeyapp/android/utils/PrefsUtil;

    move-result-object v0

    iget-object v1, p0, Lnet/hockeyapp/android/FeedbackActivity;->context:Landroid/content/Context;

    invoke-virtual {v0, v1, v2, v3, v4}, Lnet/hockeyapp/android/utils/PrefsUtil;->saveNameEmailSubjectToPrefs(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 734
    const/16 v0, 0x2011

    invoke-virtual {p0, v0}, Lnet/hockeyapp/android/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lnet/hockeyapp/android/views/AttachmentListView;

    .line 735
    .local v10, "attachmentListView":Lnet/hockeyapp/android/views/AttachmentListView;
    invoke-virtual {v10}, Lnet/hockeyapp/android/views/AttachmentListView;->getAttachments()Ljava/util/ArrayList;

    move-result-object v6

    .line 738
    .local v6, "attachmentUris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    iget-object v1, p0, Lnet/hockeyapp/android/FeedbackActivity;->url:Ljava/lang/String;

    iget-object v8, p0, Lnet/hockeyapp/android/FeedbackActivity;->feedbackHandler:Landroid/os/Handler;

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lnet/hockeyapp/android/FeedbackActivity;->sendFetchFeedback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Landroid/os/Handler;Z)V

    goto :goto_0
.end method

.method private sendFetchFeedback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Landroid/os/Handler;Z)V
    .locals 11
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "email"    # Ljava/lang/String;
    .param p4, "subject"    # Ljava/lang/String;
    .param p5, "text"    # Ljava/lang/String;
    .param p7, "token"    # Ljava/lang/String;
    .param p8, "feedbackHandler"    # Landroid/os/Handler;
    .param p9, "isFetchMessages"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/os/Handler;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 759
    .local p6, "attachmentUris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    new-instance v0, Lnet/hockeyapp/android/tasks/SendFeedbackTask;

    iget-object v1, p0, Lnet/hockeyapp/android/FeedbackActivity;->context:Landroid/content/Context;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lnet/hockeyapp/android/tasks/SendFeedbackTask;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Landroid/os/Handler;Z)V

    iput-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->sendFeedbackTask:Lnet/hockeyapp/android/tasks/SendFeedbackTask;

    .line 760
    iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->sendFeedbackTask:Lnet/hockeyapp/android/tasks/SendFeedbackTask;

    invoke-static {v0}, Lnet/hockeyapp/android/utils/AsyncTaskUtils;->execute(Landroid/os/AsyncTask;)V

    .line 761
    return-void
.end method

.method private setError(Landroid/widget/EditText;I)V
    .locals 1
    .param p1, "inputField"    # Landroid/widget/EditText;
    .param p2, "feedbackStringId"    # I

    .prologue
    .line 743
    invoke-static {p2}, Lnet/hockeyapp/android/Strings;->get(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 744
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lnet/hockeyapp/android/FeedbackActivity;->enableDisableSendFeedbackButton(Z)V

    .line 745
    return-void
.end method

.method private startParseFeedbackTask(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "feedbackResponseString"    # Ljava/lang/String;
    .param p2, "requestType"    # Ljava/lang/String;

    .prologue
    .line 768
    invoke-direct {p0, p1, p2}, Lnet/hockeyapp/android/FeedbackActivity;->createParseFeedbackTask(Ljava/lang/String;Ljava/lang/String;)V

    .line 769
    iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->parseFeedbackTask:Lnet/hockeyapp/android/tasks/ParseFeedbackTask;

    invoke-static {v0}, Lnet/hockeyapp/android/utils/AsyncTaskUtils;->execute(Landroid/os/AsyncTask;)V

    .line 770
    return-void
.end method


# virtual methods
.method protected configureFeedbackView(Z)V
    .locals 9
    .param p1, "haveToken"    # Z

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 283
    const v3, 0x20017

    invoke-virtual {p0, v3}, Lnet/hockeyapp/android/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ScrollView;

    iput-object v3, p0, Lnet/hockeyapp/android/FeedbackActivity;->feedbackScrollView:Landroid/widget/ScrollView;

    .line 284
    const v3, 0x20015

    invoke-virtual {p0, v3}, Lnet/hockeyapp/android/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lnet/hockeyapp/android/FeedbackActivity;->wrapperLayoutFeedbackAndMessages:Landroid/widget/LinearLayout;

    .line 285
    const v3, 0x20016

    invoke-virtual {p0, v3}, Lnet/hockeyapp/android/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    iput-object v3, p0, Lnet/hockeyapp/android/FeedbackActivity;->messagesListView:Landroid/widget/ListView;

    .line 287
    if-eqz p1, :cond_0

    .line 289
    iget-object v3, p0, Lnet/hockeyapp/android/FeedbackActivity;->wrapperLayoutFeedbackAndMessages:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 290
    iget-object v3, p0, Lnet/hockeyapp/android/FeedbackActivity;->feedbackScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v3, v6}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 292
    const/16 v3, 0x2000

    invoke-virtual {p0, v3}, Lnet/hockeyapp/android/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lnet/hockeyapp/android/FeedbackActivity;->lastUpdatedTextView:Landroid/widget/TextView;

    .line 294
    const v3, 0x20010

    invoke-virtual {p0, v3}, Lnet/hockeyapp/android/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lnet/hockeyapp/android/FeedbackActivity;->addResponseButton:Landroid/widget/Button;

    .line 295
    iget-object v3, p0, Lnet/hockeyapp/android/FeedbackActivity;->addResponseButton:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 297
    const v3, 0x20011

    invoke-virtual {p0, v3}, Lnet/hockeyapp/android/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lnet/hockeyapp/android/FeedbackActivity;->refreshButton:Landroid/widget/Button;

    .line 298
    iget-object v3, p0, Lnet/hockeyapp/android/FeedbackActivity;->refreshButton:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 365
    :goto_0
    return-void

    .line 302
    :cond_0
    iget-object v3, p0, Lnet/hockeyapp/android/FeedbackActivity;->wrapperLayoutFeedbackAndMessages:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 303
    iget-object v3, p0, Lnet/hockeyapp/android/FeedbackActivity;->feedbackScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v3, v5}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 305
    const/16 v3, 0x2002

    invoke-virtual {p0, v3}, Lnet/hockeyapp/android/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lnet/hockeyapp/android/FeedbackActivity;->nameInput:Landroid/widget/EditText;

    .line 306
    const/16 v3, 0x2004

    invoke-virtual {p0, v3}, Lnet/hockeyapp/android/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lnet/hockeyapp/android/FeedbackActivity;->emailInput:Landroid/widget/EditText;

    .line 307
    const/16 v3, 0x2006

    invoke-virtual {p0, v3}, Lnet/hockeyapp/android/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lnet/hockeyapp/android/FeedbackActivity;->subjectInput:Landroid/widget/EditText;

    .line 308
    const/16 v3, 0x2008

    invoke-virtual {p0, v3}, Lnet/hockeyapp/android/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lnet/hockeyapp/android/FeedbackActivity;->textInput:Landroid/widget/EditText;

    .line 311
    iget-boolean v3, p0, Lnet/hockeyapp/android/FeedbackActivity;->feedbackViewInitialized:Z

    if-nez v3, :cond_2

    .line 312
    invoke-static {}, Lnet/hockeyapp/android/utils/PrefsUtil;->getInstance()Lnet/hockeyapp/android/utils/PrefsUtil;

    move-result-object v3

    iget-object v4, p0, Lnet/hockeyapp/android/FeedbackActivity;->context:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lnet/hockeyapp/android/utils/PrefsUtil;->getNameEmailFromPrefs(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 313
    .local v1, "nameEmailSubject":Ljava/lang/String;
    if-eqz v1, :cond_4

    .line 315
    const-string v3, "\\|"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 316
    .local v2, "nameEmailSubjectArray":[Ljava/lang/String;
    if-eqz v2, :cond_1

    array-length v3, v2

    if-lt v3, v8, :cond_1

    .line 317
    iget-object v3, p0, Lnet/hockeyapp/android/FeedbackActivity;->nameInput:Landroid/widget/EditText;

    aget-object v4, v2, v5

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 318
    iget-object v3, p0, Lnet/hockeyapp/android/FeedbackActivity;->emailInput:Landroid/widget/EditText;

    aget-object v4, v2, v7

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 320
    array-length v3, v2

    const/4 v4, 0x3

    if-lt v3, v4, :cond_3

    .line 321
    iget-object v3, p0, Lnet/hockeyapp/android/FeedbackActivity;->subjectInput:Landroid/widget/EditText;

    aget-object v4, v2, v8

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 322
    iget-object v3, p0, Lnet/hockeyapp/android/FeedbackActivity;->textInput:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->requestFocus()Z

    .line 337
    .end local v2    # "nameEmailSubjectArray":[Ljava/lang/String;
    :cond_1
    :goto_1
    iput-boolean v7, p0, Lnet/hockeyapp/android/FeedbackActivity;->feedbackViewInitialized:Z

    .line 341
    .end local v1    # "nameEmailSubject":Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Lnet/hockeyapp/android/FeedbackActivity;->textInput:Landroid/widget/EditText;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 344
    invoke-static {}, Lnet/hockeyapp/android/utils/PrefsUtil;->getInstance()Lnet/hockeyapp/android/utils/PrefsUtil;

    move-result-object v3

    iget-object v4, p0, Lnet/hockeyapp/android/FeedbackActivity;->context:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lnet/hockeyapp/android/utils/PrefsUtil;->getFeedbackTokenFromPrefs(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 346
    iget-object v3, p0, Lnet/hockeyapp/android/FeedbackActivity;->subjectInput:Landroid/widget/EditText;

    invoke-virtual {v3, v6}, Landroid/widget/EditText;->setVisibility(I)V

    .line 354
    :goto_2
    const/16 v3, 0x2011

    invoke-virtual {p0, v3}, Lnet/hockeyapp/android/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 355
    .local v0, "attachmentListView":Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 358
    const/16 v3, 0x2010

    invoke-virtual {p0, v3}, Lnet/hockeyapp/android/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lnet/hockeyapp/android/FeedbackActivity;->addAttachmentButton:Landroid/widget/Button;

    .line 359
    iget-object v3, p0, Lnet/hockeyapp/android/FeedbackActivity;->addAttachmentButton:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 360
    iget-object v3, p0, Lnet/hockeyapp/android/FeedbackActivity;->addAttachmentButton:Landroid/widget/Button;

    invoke-virtual {p0, v3}, Lnet/hockeyapp/android/FeedbackActivity;->registerForContextMenu(Landroid/view/View;)V

    .line 362
    const/16 v3, 0x2009

    invoke-virtual {p0, v3}, Lnet/hockeyapp/android/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lnet/hockeyapp/android/FeedbackActivity;->sendFeedbackButton:Landroid/widget/Button;

    .line 363
    iget-object v3, p0, Lnet/hockeyapp/android/FeedbackActivity;->sendFeedbackButton:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 325
    .end local v0    # "attachmentListView":Landroid/view/ViewGroup;
    .restart local v1    # "nameEmailSubject":Ljava/lang/String;
    .restart local v2    # "nameEmailSubjectArray":[Ljava/lang/String;
    :cond_3
    iget-object v3, p0, Lnet/hockeyapp/android/FeedbackActivity;->subjectInput:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_1

    .line 331
    .end local v2    # "nameEmailSubjectArray":[Ljava/lang/String;
    :cond_4
    iget-object v3, p0, Lnet/hockeyapp/android/FeedbackActivity;->nameInput:Landroid/widget/EditText;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 332
    iget-object v3, p0, Lnet/hockeyapp/android/FeedbackActivity;->emailInput:Landroid/widget/EditText;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 333
    iget-object v3, p0, Lnet/hockeyapp/android/FeedbackActivity;->subjectInput:Landroid/widget/EditText;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 334
    iget-object v3, p0, Lnet/hockeyapp/android/FeedbackActivity;->nameInput:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_1

    .line 350
    .end local v1    # "nameEmailSubject":Ljava/lang/String;
    :cond_5
    iget-object v3, p0, Lnet/hockeyapp/android/FeedbackActivity;->subjectInput:Landroid/widget/EditText;

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setVisibility(I)V

    goto :goto_2
.end method

.method public enableDisableSendFeedbackButton(Z)V
    .locals 1
    .param p1, "isEnable"    # Z

    .prologue
    .line 133
    iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->sendFeedbackButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->sendFeedbackButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 136
    :cond_0
    return-void
.end method

.method public bridge synthetic getLayoutView()Landroid/view/View;
    .locals 1

    .prologue
    .line 75
    invoke-virtual {p0}, Lnet/hockeyapp/android/FeedbackActivity;->getLayoutView()Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method

.method public getLayoutView()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 144
    new-instance v0, Lnet/hockeyapp/android/views/FeedbackView;

    invoke-direct {v0, p0}, Lnet/hockeyapp/android/views/FeedbackView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 8
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/16 v7, 0x2011

    const/4 v6, 0x3

    const/4 v5, 0x1

    .line 371
    const/4 v4, -0x1

    if-eq p2, v4, :cond_1

    .line 410
    :cond_0
    :goto_0
    return-void

    .line 375
    :cond_1
    const/4 v4, 0x2

    if-ne p1, v4, :cond_2

    .line 377
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 379
    .local v3, "uri":Landroid/net/Uri;
    if-eqz v3, :cond_0

    .line 380
    invoke-virtual {p0, v7}, Lnet/hockeyapp/android/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 381
    .local v0, "attachments":Landroid/view/ViewGroup;
    new-instance v4, Lnet/hockeyapp/android/views/AttachmentView;

    invoke-direct {v4, p0, v0, v3, v5}, Lnet/hockeyapp/android/views/AttachmentView;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/net/Uri;Z)V

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 384
    .end local v0    # "attachments":Landroid/view/ViewGroup;
    .end local v3    # "uri":Landroid/net/Uri;
    :cond_2
    if-ne p1, v5, :cond_3

    .line 386
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 389
    .restart local v3    # "uri":Landroid/net/Uri;
    if-eqz v3, :cond_0

    .line 391
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-class v4, Lnet/hockeyapp/android/PaintActivity;

    invoke-direct {v2, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 392
    .local v2, "intent":Landroid/content/Intent;
    const-string v4, "imageUri"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 393
    const/4 v4, 0x3

    invoke-virtual {p0, v2, v4}, Lnet/hockeyapp/android/FeedbackActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 394
    .end local v2    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 395
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    const-string v4, "HockeyApp"

    const-string v5, "Paint activity not declared!"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 400
    .end local v1    # "e":Landroid/content/ActivityNotFoundException;
    .end local v3    # "uri":Landroid/net/Uri;
    :cond_3
    if-ne p1, v6, :cond_0

    .line 402
    const-string v4, "imageUri"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    .line 404
    .restart local v3    # "uri":Landroid/net/Uri;
    if-eqz v3, :cond_0

    .line 405
    invoke-virtual {p0, v7}, Lnet/hockeyapp/android/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 406
    .restart local v0    # "attachments":Landroid/view/ViewGroup;
    new-instance v4, Lnet/hockeyapp/android/views/AttachmentView;

    invoke-direct {v4, p0, v0, v3, v5}, Lnet/hockeyapp/android/views/AttachmentView;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/net/Uri;Z)V

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 11
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 153
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 179
    :goto_0
    return-void

    .line 155
    :sswitch_0
    invoke-direct {p0}, Lnet/hockeyapp/android/FeedbackActivity;->sendFeedback()V

    goto :goto_0

    .line 159
    :sswitch_1
    const/16 v0, 0x2011

    invoke-virtual {p0, v0}, Lnet/hockeyapp/android/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup;

    .line 160
    .local v10, "attachments":Landroid/view/ViewGroup;
    invoke-virtual {v10}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    .line 161
    const-string v0, "Only 3 attachments allowed."

    const/16 v1, 0x3e8

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 163
    :cond_0
    invoke-virtual {p0, p1}, Lnet/hockeyapp/android/FeedbackActivity;->openContextMenu(Landroid/view/View;)V

    goto :goto_0

    .line 168
    .end local v10    # "attachments":Landroid/view/ViewGroup;
    :sswitch_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnet/hockeyapp/android/FeedbackActivity;->configureFeedbackView(Z)V

    .line 169
    iput-boolean v9, p0, Lnet/hockeyapp/android/FeedbackActivity;->inSendFeedback:Z

    goto :goto_0

    .line 173
    :sswitch_3
    iget-object v1, p0, Lnet/hockeyapp/android/FeedbackActivity;->url:Ljava/lang/String;

    invoke-static {}, Lnet/hockeyapp/android/utils/PrefsUtil;->getInstance()Lnet/hockeyapp/android/utils/PrefsUtil;

    move-result-object v0

    iget-object v3, p0, Lnet/hockeyapp/android/FeedbackActivity;->context:Landroid/content/Context;

    invoke-virtual {v0, v3}, Lnet/hockeyapp/android/utils/PrefsUtil;->getFeedbackTokenFromPrefs(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lnet/hockeyapp/android/FeedbackActivity;->feedbackHandler:Landroid/os/Handler;

    move-object v0, p0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    invoke-direct/range {v0 .. v9}, Lnet/hockeyapp/android/FeedbackActivity;->sendFetchFeedback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Landroid/os/Handler;Z)V

    goto :goto_0

    .line 153
    nop

    :sswitch_data_0
    .sparse-switch
        0x2009 -> :sswitch_0
        0x2010 -> :sswitch_1
        0x20010 -> :sswitch_2
        0x20011 -> :sswitch_3
    .end sparse-switch
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 186
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 192
    invoke-super {p0, p1}, Landroid/app/Activity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 189
    :pswitch_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    invoke-direct {p0, v0}, Lnet/hockeyapp/android/FeedbackActivity;->addAttachment(I)Z

    move-result v0

    goto :goto_0

    .line 186
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 203
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 205
    invoke-virtual {p0}, Lnet/hockeyapp/android/FeedbackActivity;->getLayoutView()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {p0, v2}, Lnet/hockeyapp/android/FeedbackActivity;->setContentView(Landroid/view/View;)V

    .line 207
    const/16 v2, 0x40b

    invoke-static {v2}, Lnet/hockeyapp/android/Strings;->get(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lnet/hockeyapp/android/FeedbackActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 208
    iput-object p0, p0, Lnet/hockeyapp/android/FeedbackActivity;->context:Landroid/content/Context;

    .line 210
    invoke-virtual {p0}, Lnet/hockeyapp/android/FeedbackActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 211
    .local v0, "extras":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 212
    const-string v2, "url"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lnet/hockeyapp/android/FeedbackActivity;->url:Ljava/lang/String;

    .line 215
    :cond_0
    if-eqz p1, :cond_1

    .line 216
    const-string v2, "feedbackViewInitialized"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lnet/hockeyapp/android/FeedbackActivity;->feedbackViewInitialized:Z

    .line 217
    const-string v2, "inSendFeedback"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lnet/hockeyapp/android/FeedbackActivity;->inSendFeedback:Z

    .line 225
    :goto_0
    const-string v2, "notification"

    invoke-virtual {p0, v2}, Lnet/hockeyapp/android/FeedbackActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 226
    .local v1, "notificationManager":Landroid/app/NotificationManager;
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 228
    invoke-direct {p0}, Lnet/hockeyapp/android/FeedbackActivity;->initFeedbackHandler()V

    .line 229
    invoke-direct {p0}, Lnet/hockeyapp/android/FeedbackActivity;->initParseFeedbackHandler()V

    .line 230
    invoke-direct {p0}, Lnet/hockeyapp/android/FeedbackActivity;->configureAppropriateView()V

    .line 231
    return-void

    .line 220
    .end local v1    # "notificationManager":Landroid/app/NotificationManager;
    :cond_1
    iput-boolean v3, p0, Lnet/hockeyapp/android/FeedbackActivity;->inSendFeedback:Z

    .line 221
    iput-boolean v3, p0, Lnet/hockeyapp/android/FeedbackActivity;->feedbackViewInitialized:Z

    goto :goto_0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    const/4 v2, 0x0

    .line 238
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 240
    const/4 v0, 0x2

    const-string v1, "Attach File"

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 241
    const/4 v0, 0x1

    const-string v1, "Attach Picture"

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 242
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 414
    packed-switch p1, :pswitch_data_0

    .line 429
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 416
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "An error has occured"

    .line 417
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 418
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Error"

    .line 419
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    .line 420
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "OK"

    new-instance v2, Lnet/hockeyapp/android/FeedbackActivity$1;

    invoke-direct {v2, p0}, Lnet/hockeyapp/android/FeedbackActivity$1;-><init>(Lnet/hockeyapp/android/FeedbackActivity;)V

    .line 421
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 426
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 414
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 246
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 247
    iget-boolean v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->inSendFeedback:Z

    if-eqz v0, :cond_0

    .line 248
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->inSendFeedback:Z

    .line 249
    invoke-direct {p0}, Lnet/hockeyapp/android/FeedbackActivity;->configureAppropriateView()V

    .line 254
    :goto_0
    const/4 v0, 0x1

    .line 257
    :goto_1
    return v0

    .line 251
    :cond_0
    invoke-virtual {p0}, Lnet/hockeyapp/android/FeedbackActivity;->finish()V

    goto :goto_0

    .line 257
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_1
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "dialog"    # Landroid/app/Dialog;

    .prologue
    .line 434
    packed-switch p1, :pswitch_data_0

    .line 447
    :goto_0
    return-void

    :pswitch_0
    move-object v0, p2

    .line 436
    check-cast v0, Landroid/app/AlertDialog;

    .line 437
    .local v0, "messageDialogError":Landroid/app/AlertDialog;
    iget-object v1, p0, Lnet/hockeyapp/android/FeedbackActivity;->error:Lnet/hockeyapp/android/objects/ErrorObject;

    if-eqz v1, :cond_0

    .line 439
    iget-object v1, p0, Lnet/hockeyapp/android/FeedbackActivity;->error:Lnet/hockeyapp/android/objects/ErrorObject;

    invoke-virtual {v1}, Lnet/hockeyapp/android/objects/ErrorObject;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 442
    :cond_0
    const/16 v1, 0x410

    invoke-static {v1}, Lnet/hockeyapp/android/Strings;->get(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 434
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 454
    if-eqz p1, :cond_1

    .line 455
    const/16 v3, 0x2011

    invoke-virtual {p0, v3}, Lnet/hockeyapp/android/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 456
    .local v0, "attachmentList":Landroid/view/ViewGroup;
    const-string v3, "attachments"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 457
    .local v2, "attachmentsUris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 458
    .local v1, "attachmentUri":Landroid/net/Uri;
    new-instance v4, Lnet/hockeyapp/android/views/AttachmentView;

    const/4 v5, 0x1

    invoke-direct {v4, p0, v0, v1, v5}, Lnet/hockeyapp/android/views/AttachmentView;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/net/Uri;Z)V

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 461
    .end local v1    # "attachmentUri":Landroid/net/Uri;
    :cond_0
    const-string v3, "feedbackViewInitialized"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lnet/hockeyapp/android/FeedbackActivity;->feedbackViewInitialized:Z

    .line 464
    .end local v0    # "attachmentList":Landroid/view/ViewGroup;
    .end local v2    # "attachmentsUris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 465
    return-void
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->sendFeedbackTask:Lnet/hockeyapp/android/tasks/SendFeedbackTask;

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->sendFeedbackTask:Lnet/hockeyapp/android/tasks/SendFeedbackTask;

    invoke-virtual {v0}, Lnet/hockeyapp/android/tasks/SendFeedbackTask;->detach()V

    .line 273
    :cond_0
    iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->sendFeedbackTask:Lnet/hockeyapp/android/tasks/SendFeedbackTask;

    return-object v0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 472
    const/16 v1, 0x2011

    invoke-virtual {p0, v1}, Lnet/hockeyapp/android/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lnet/hockeyapp/android/views/AttachmentListView;

    .line 474
    .local v0, "attachmentListView":Lnet/hockeyapp/android/views/AttachmentListView;
    const-string v1, "attachments"

    invoke-virtual {v0}, Lnet/hockeyapp/android/views/AttachmentListView;->getAttachments()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 475
    const-string v1, "feedbackViewInitialized"

    iget-boolean v2, p0, Lnet/hockeyapp/android/FeedbackActivity;->feedbackViewInitialized:Z

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 476
    const-string v1, "inSendFeedback"

    iget-boolean v2, p0, Lnet/hockeyapp/android/FeedbackActivity;->inSendFeedback:Z

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 478
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 479
    return-void
.end method
