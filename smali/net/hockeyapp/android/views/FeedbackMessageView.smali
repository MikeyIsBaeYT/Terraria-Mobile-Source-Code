.class public Lnet/hockeyapp/android/views/FeedbackMessageView;
.super Landroid/widget/LinearLayout;
.source "FeedbackMessageView.java"


# static fields
.field public static final ATTACHMENT_LIST_VIEW_ID:I = 0x3004

.field public static final AUTHOR_TEXT_VIEW_ID:I = 0x3001

.field public static final DATE_TEXT_VIEW_ID:I = 0x3002

.field public static final MESSAGE_TEXT_VIEW_ID:I = 0x3003


# instance fields
.field private attachmentListView:Lnet/hockeyapp/android/views/AttachmentListView;

.field private authorTextView:Landroid/widget/TextView;

.field private dateTextView:Landroid/widget/TextView;

.field private messageTextView:Landroid/widget/TextView;

.field private ownMessage:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 60
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lnet/hockeyapp/android/views/FeedbackMessageView;-><init>(Landroid/content/Context;Z)V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ownMessage"    # Z

    .prologue
    .line 64
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 66
    iput-boolean p2, p0, Lnet/hockeyapp/android/views/FeedbackMessageView;->ownMessage:Z

    .line 68
    invoke-direct {p0, p1}, Lnet/hockeyapp/android/views/FeedbackMessageView;->loadLayoutParams(Landroid/content/Context;)V

    .line 69
    invoke-direct {p0, p1}, Lnet/hockeyapp/android/views/FeedbackMessageView;->loadAuthorLabel(Landroid/content/Context;)V

    .line 70
    invoke-direct {p0, p1}, Lnet/hockeyapp/android/views/FeedbackMessageView;->loadDateLabel(Landroid/content/Context;)V

    .line 71
    invoke-direct {p0, p1}, Lnet/hockeyapp/android/views/FeedbackMessageView;->loadMessageLabel(Landroid/content/Context;)V

    .line 72
    invoke-direct {p0, p1}, Lnet/hockeyapp/android/views/FeedbackMessageView;->loadAttachmentList(Landroid/content/Context;)V

    .line 73
    return-void
.end method

.method private loadAttachmentList(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, -0x1

    .line 183
    new-instance v2, Lnet/hockeyapp/android/views/AttachmentListView;

    invoke-direct {v2, p1}, Lnet/hockeyapp/android/views/AttachmentListView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lnet/hockeyapp/android/views/FeedbackMessageView;->attachmentListView:Lnet/hockeyapp/android/views/AttachmentListView;

    .line 184
    iget-object v2, p0, Lnet/hockeyapp/android/views/FeedbackMessageView;->attachmentListView:Lnet/hockeyapp/android/views/AttachmentListView;

    const/16 v3, 0x3004

    invoke-virtual {v2, v3}, Lnet/hockeyapp/android/views/AttachmentListView;->setId(I)V

    .line 186
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 187
    .local v1, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v2, 0x1

    const/high16 v3, 0x41a00000    # 20.0f

    .line 188
    invoke-virtual {p0}, Lnet/hockeyapp/android/views/FeedbackMessageView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 187
    invoke-static {v2, v3, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v0, v2

    .line 190
    .local v0, "margin":I
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 191
    iget-object v2, p0, Lnet/hockeyapp/android/views/FeedbackMessageView;->attachmentListView:Lnet/hockeyapp/android/views/AttachmentListView;

    invoke-virtual {v2, v1}, Lnet/hockeyapp/android/views/AttachmentListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 193
    iget-object v2, p0, Lnet/hockeyapp/android/views/FeedbackMessageView;->attachmentListView:Lnet/hockeyapp/android/views/AttachmentListView;

    invoke-virtual {p0, v2}, Lnet/hockeyapp/android/views/FeedbackMessageView;->addView(Landroid/view/View;)V

    .line 194
    return-void
.end method

.method private loadAuthorLabel(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v4, -0x2

    const/high16 v5, 0x3f800000    # 1.0f

    .line 82
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lnet/hockeyapp/android/views/FeedbackMessageView;->authorTextView:Landroid/widget/TextView;

    .line 83
    iget-object v2, p0, Lnet/hockeyapp/android/views/FeedbackMessageView;->authorTextView:Landroid/widget/TextView;

    const/16 v3, 0x3001

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setId(I)V

    .line 85
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 86
    .local v1, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v2, 0x41a00000    # 20.0f

    .line 87
    invoke-virtual {p0}, Lnet/hockeyapp/android/views/FeedbackMessageView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 86
    invoke-static {v7, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v0, v2

    .line 89
    .local v0, "margin":I
    invoke-virtual {v1, v0, v0, v0, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 90
    iget-object v2, p0, Lnet/hockeyapp/android/views/FeedbackMessageView;->authorTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 91
    iget-object v2, p0, Lnet/hockeyapp/android/views/FeedbackMessageView;->authorTextView:Landroid/widget/TextView;

    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-virtual {v2, v5, v3, v5, v4}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 92
    iget-object v2, p0, Lnet/hockeyapp/android/views/FeedbackMessageView;->authorTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 93
    iget-object v2, p0, Lnet/hockeyapp/android/views/FeedbackMessageView;->authorTextView:Landroid/widget/TextView;

    const v3, -0x777778

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 94
    iget-object v2, p0, Lnet/hockeyapp/android/views/FeedbackMessageView;->authorTextView:Landroid/widget/TextView;

    const/4 v3, 0x2

    const/high16 v4, 0x41700000    # 15.0f

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 95
    iget-object v2, p0, Lnet/hockeyapp/android/views/FeedbackMessageView;->authorTextView:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 97
    iget-object v2, p0, Lnet/hockeyapp/android/views/FeedbackMessageView;->authorTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lnet/hockeyapp/android/views/FeedbackMessageView;->addView(Landroid/view/View;)V

    .line 98
    return-void
.end method

.method private loadDateLabel(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v4, -0x2

    const/high16 v5, 0x3f800000    # 1.0f

    .line 117
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lnet/hockeyapp/android/views/FeedbackMessageView;->dateTextView:Landroid/widget/TextView;

    .line 118
    iget-object v2, p0, Lnet/hockeyapp/android/views/FeedbackMessageView;->dateTextView:Landroid/widget/TextView;

    const/16 v3, 0x3002

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setId(I)V

    .line 120
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 121
    .local v1, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v2, 0x41a00000    # 20.0f

    .line 122
    invoke-virtual {p0}, Lnet/hockeyapp/android/views/FeedbackMessageView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 121
    invoke-static {v7, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v0, v2

    .line 124
    .local v0, "margin":I
    invoke-virtual {v1, v0, v6, v0, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 125
    iget-object v2, p0, Lnet/hockeyapp/android/views/FeedbackMessageView;->dateTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 126
    iget-object v2, p0, Lnet/hockeyapp/android/views/FeedbackMessageView;->dateTextView:Landroid/widget/TextView;

    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-virtual {v2, v5, v3, v5, v4}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 127
    iget-object v2, p0, Lnet/hockeyapp/android/views/FeedbackMessageView;->dateTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 128
    iget-object v2, p0, Lnet/hockeyapp/android/views/FeedbackMessageView;->dateTextView:Landroid/widget/TextView;

    const v3, -0x777778

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 129
    iget-object v2, p0, Lnet/hockeyapp/android/views/FeedbackMessageView;->dateTextView:Landroid/widget/TextView;

    const/high16 v3, 0x41700000    # 15.0f

    invoke-virtual {v2, v8, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 130
    iget-object v2, p0, Lnet/hockeyapp/android/views/FeedbackMessageView;->dateTextView:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 132
    iget-object v2, p0, Lnet/hockeyapp/android/views/FeedbackMessageView;->dateTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lnet/hockeyapp/android/views/FeedbackMessageView;->addView(Landroid/view/View;)V

    .line 133
    return-void
.end method

.method private loadLayoutParams(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 76
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lnet/hockeyapp/android/views/FeedbackMessageView;->setOrientation(I)V

    .line 77
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lnet/hockeyapp/android/views/FeedbackMessageView;->setGravity(I)V

    .line 78
    const v0, -0x333334

    invoke-virtual {p0, v0}, Lnet/hockeyapp/android/views/FeedbackMessageView;->setBackgroundColor(I)V

    .line 79
    return-void
.end method

.method private loadMessageLabel(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, -0x2

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    .line 152
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lnet/hockeyapp/android/views/FeedbackMessageView;->messageTextView:Landroid/widget/TextView;

    .line 153
    iget-object v2, p0, Lnet/hockeyapp/android/views/FeedbackMessageView;->messageTextView:Landroid/widget/TextView;

    const/16 v3, 0x3003

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setId(I)V

    .line 155
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 156
    .local v1, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v2, 0x1

    const/high16 v3, 0x41a00000    # 20.0f

    .line 157
    invoke-virtual {p0}, Lnet/hockeyapp/android/views/FeedbackMessageView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 156
    invoke-static {v2, v3, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v0, v2

    .line 159
    .local v0, "margin":I
    invoke-virtual {v1, v0, v5, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 160
    iget-object v2, p0, Lnet/hockeyapp/android/views/FeedbackMessageView;->messageTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 161
    iget-object v2, p0, Lnet/hockeyapp/android/views/FeedbackMessageView;->messageTextView:Landroid/widget/TextView;

    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-virtual {v2, v6, v3, v6, v4}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 162
    iget-object v2, p0, Lnet/hockeyapp/android/views/FeedbackMessageView;->messageTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 163
    iget-object v2, p0, Lnet/hockeyapp/android/views/FeedbackMessageView;->messageTextView:Landroid/widget/TextView;

    const/high16 v3, -0x1000000

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 164
    iget-object v2, p0, Lnet/hockeyapp/android/views/FeedbackMessageView;->messageTextView:Landroid/widget/TextView;

    const/4 v3, 0x2

    const/high16 v4, 0x41900000    # 18.0f

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 165
    iget-object v2, p0, Lnet/hockeyapp/android/views/FeedbackMessageView;->messageTextView:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 167
    iget-object v2, p0, Lnet/hockeyapp/android/views/FeedbackMessageView;->messageTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lnet/hockeyapp/android/views/FeedbackMessageView;->addView(Landroid/view/View;)V

    .line 168
    return-void
.end method

.method private setAuthorLaberColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 111
    iget-object v0, p0, Lnet/hockeyapp/android/views/FeedbackMessageView;->authorTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lnet/hockeyapp/android/views/FeedbackMessageView;->authorTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 114
    :cond_0
    return-void
.end method

.method private setDateLaberColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 146
    iget-object v0, p0, Lnet/hockeyapp/android/views/FeedbackMessageView;->dateTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lnet/hockeyapp/android/views/FeedbackMessageView;->dateTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 149
    :cond_0
    return-void
.end method

.method private setMessageLaberColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 177
    iget-object v0, p0, Lnet/hockeyapp/android/views/FeedbackMessageView;->messageTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lnet/hockeyapp/android/views/FeedbackMessageView;->messageTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 180
    :cond_0
    return-void
.end method


# virtual methods
.method public setAuthorLabelText(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 105
    iget-object v0, p0, Lnet/hockeyapp/android/views/FeedbackMessageView;->authorTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 106
    iget-object v0, p0, Lnet/hockeyapp/android/views/FeedbackMessageView;->authorTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    :cond_0
    return-void
.end method

.method public setDateLabelText(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 140
    iget-object v0, p0, Lnet/hockeyapp/android/views/FeedbackMessageView;->dateTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 141
    iget-object v0, p0, Lnet/hockeyapp/android/views/FeedbackMessageView;->dateTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    :cond_0
    return-void
.end method

.method public setFeedbackMessageViewBgAndTextColor(I)V
    .locals 3
    .param p1, "decisionValue"    # I

    .prologue
    const/4 v2, -0x1

    const v1, -0x333334

    .line 203
    if-nez p1, :cond_1

    .line 204
    invoke-virtual {p0, v1}, Lnet/hockeyapp/android/views/FeedbackMessageView;->setBackgroundColor(I)V

    .line 205
    invoke-direct {p0, v2}, Lnet/hockeyapp/android/views/FeedbackMessageView;->setAuthorLaberColor(I)V

    .line 206
    invoke-direct {p0, v2}, Lnet/hockeyapp/android/views/FeedbackMessageView;->setDateLaberColor(I)V

    .line 213
    :cond_0
    :goto_0
    const/high16 v0, -0x1000000

    invoke-direct {p0, v0}, Lnet/hockeyapp/android/views/FeedbackMessageView;->setMessageLaberColor(I)V

    .line 214
    return-void

    .line 207
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 208
    invoke-virtual {p0, v2}, Lnet/hockeyapp/android/views/FeedbackMessageView;->setBackgroundColor(I)V

    .line 209
    invoke-direct {p0, v1}, Lnet/hockeyapp/android/views/FeedbackMessageView;->setAuthorLaberColor(I)V

    .line 210
    invoke-direct {p0, v1}, Lnet/hockeyapp/android/views/FeedbackMessageView;->setDateLaberColor(I)V

    goto :goto_0
.end method

.method public setMessageLabelText(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 171
    iget-object v0, p0, Lnet/hockeyapp/android/views/FeedbackMessageView;->messageTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 172
    iget-object v0, p0, Lnet/hockeyapp/android/views/FeedbackMessageView;->messageTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    :cond_0
    return-void
.end method
