.class public Lnet/hockeyapp/android/views/AttachmentView;
.super Landroid/widget/FrameLayout;
.source "AttachmentView.java"


# static fields
.field private static final IMAGES_PER_ROW_LANDSCAPE:I = 0x2

.field private static final IMAGES_PER_ROW_PORTRAIT:I = 0x3


# instance fields
.field private final attachment:Lnet/hockeyapp/android/objects/FeedbackAttachment;

.field private final attachmentUri:Landroid/net/Uri;

.field private final context:Landroid/content/Context;

.field private final filename:Ljava/lang/String;

.field private gap:I

.field private imageView:Landroid/widget/ImageView;

.field private maxHeightLandscape:I

.field private maxHeightPortrait:I

.field private orientation:I

.field private final parent:Landroid/view/ViewGroup;

.field private textView:Landroid/widget/TextView;

.field private widthLandscape:I

.field private widthPortrait:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/net/Uri;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "attachmentUri"    # Landroid/net/Uri;
    .param p4, "removable"    # Z

    .prologue
    .line 94
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 96
    iput-object p1, p0, Lnet/hockeyapp/android/views/AttachmentView;->context:Landroid/content/Context;

    .line 97
    iput-object p2, p0, Lnet/hockeyapp/android/views/AttachmentView;->parent:Landroid/view/ViewGroup;

    .line 98
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/hockeyapp/android/views/AttachmentView;->attachment:Lnet/hockeyapp/android/objects/FeedbackAttachment;

    .line 99
    iput-object p3, p0, Lnet/hockeyapp/android/views/AttachmentView;->attachmentUri:Landroid/net/Uri;

    .line 100
    invoke-virtual {p3}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/hockeyapp/android/views/AttachmentView;->filename:Ljava/lang/String;

    .line 102
    const/16 v0, 0x14

    invoke-direct {p0, v0}, Lnet/hockeyapp/android/views/AttachmentView;->calculateDimensions(I)V

    .line 103
    invoke-direct {p0, p1, p4}, Lnet/hockeyapp/android/views/AttachmentView;->initializeView(Landroid/content/Context;Z)V

    .line 105
    iget-object v0, p0, Lnet/hockeyapp/android/views/AttachmentView;->textView:Landroid/widget/TextView;

    iget-object v1, p0, Lnet/hockeyapp/android/views/AttachmentView;->filename:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    new-instance v0, Lnet/hockeyapp/android/views/AttachmentView$1;

    invoke-direct {v0, p0}, Lnet/hockeyapp/android/views/AttachmentView$1;-><init>(Lnet/hockeyapp/android/views/AttachmentView;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 121
    invoke-virtual {v0, v1}, Lnet/hockeyapp/android/views/AttachmentView$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 122
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Lnet/hockeyapp/android/objects/FeedbackAttachment;Z)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "attachment"    # Lnet/hockeyapp/android/objects/FeedbackAttachment;
    .param p4, "removable"    # Z

    .prologue
    const/4 v3, 0x0

    .line 125
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 127
    iput-object p1, p0, Lnet/hockeyapp/android/views/AttachmentView;->context:Landroid/content/Context;

    .line 128
    iput-object p2, p0, Lnet/hockeyapp/android/views/AttachmentView;->parent:Landroid/view/ViewGroup;

    .line 129
    iput-object p3, p0, Lnet/hockeyapp/android/views/AttachmentView;->attachment:Lnet/hockeyapp/android/objects/FeedbackAttachment;

    .line 130
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lnet/hockeyapp/android/Constants;->getHockeyAppStorageDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {p3}, Lnet/hockeyapp/android/objects/FeedbackAttachment;->getCacheId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lnet/hockeyapp/android/views/AttachmentView;->attachmentUri:Landroid/net/Uri;

    .line 131
    invoke-virtual {p3}, Lnet/hockeyapp/android/objects/FeedbackAttachment;->getFilename()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/hockeyapp/android/views/AttachmentView;->filename:Ljava/lang/String;

    .line 133
    const/16 v0, 0x1e

    invoke-direct {p0, v0}, Lnet/hockeyapp/android/views/AttachmentView;->calculateDimensions(I)V

    .line 134
    invoke-direct {p0, p1, p4}, Lnet/hockeyapp/android/views/AttachmentView;->initializeView(Landroid/content/Context;Z)V

    .line 136
    iput v3, p0, Lnet/hockeyapp/android/views/AttachmentView;->orientation:I

    .line 137
    iget-object v0, p0, Lnet/hockeyapp/android/views/AttachmentView;->textView:Landroid/widget/TextView;

    const-string v1, "Loading..."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    invoke-direct {p0, v3}, Lnet/hockeyapp/android/views/AttachmentView;->configureViewForPlaceholder(Z)V

    .line 139
    return-void
.end method

.method static synthetic access$000(Lnet/hockeyapp/android/views/AttachmentView;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lnet/hockeyapp/android/views/AttachmentView;

    .prologue
    .line 61
    invoke-direct {p0}, Lnet/hockeyapp/android/views/AttachmentView;->loadImageThumbnail()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lnet/hockeyapp/android/views/AttachmentView;Landroid/graphics/Bitmap;Z)V
    .locals 0
    .param p0, "x0"    # Lnet/hockeyapp/android/views/AttachmentView;
    .param p1, "x1"    # Landroid/graphics/Bitmap;
    .param p2, "x2"    # Z

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lnet/hockeyapp/android/views/AttachmentView;->configureViewForThumbnail(Landroid/graphics/Bitmap;Z)V

    return-void
.end method

.method static synthetic access$200(Lnet/hockeyapp/android/views/AttachmentView;Z)V
    .locals 0
    .param p0, "x0"    # Lnet/hockeyapp/android/views/AttachmentView;
    .param p1, "x1"    # Z

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lnet/hockeyapp/android/views/AttachmentView;->configureViewForPlaceholder(Z)V

    return-void
.end method

.method static synthetic access$300(Lnet/hockeyapp/android/views/AttachmentView;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lnet/hockeyapp/android/views/AttachmentView;

    .prologue
    .line 61
    iget-object v0, p0, Lnet/hockeyapp/android/views/AttachmentView;->attachmentUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$400(Lnet/hockeyapp/android/views/AttachmentView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lnet/hockeyapp/android/views/AttachmentView;

    .prologue
    .line 61
    iget-object v0, p0, Lnet/hockeyapp/android/views/AttachmentView;->context:Landroid/content/Context;

    return-object v0
.end method

.method private calculateDimensions(I)V
    .locals 7
    .param p1, "marginDip"    # I

    .prologue
    const/4 v6, 0x1

    .line 182
    invoke-virtual {p0}, Lnet/hockeyapp/android/views/AttachmentView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 183
    .local v2, "metrics":Landroid/util/DisplayMetrics;
    const/high16 v5, 0x41200000    # 10.0f

    invoke-static {v6, v5, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    iput v5, p0, Lnet/hockeyapp/android/views/AttachmentView;->gap:I

    .line 185
    int-to-float v5, p1

    invoke-static {v6, v5, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 186
    .local v1, "layoutMargin":I
    iget v0, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 188
    .local v0, "displayWidth":I
    mul-int/lit8 v5, v1, 0x2

    sub-int v5, v0, v5

    iget v6, p0, Lnet/hockeyapp/android/views/AttachmentView;->gap:I

    mul-int/lit8 v6, v6, 0x2

    sub-int v4, v5, v6

    .line 189
    .local v4, "parentWidthPortrait":I
    mul-int/lit8 v5, v1, 0x2

    sub-int v5, v0, v5

    iget v6, p0, Lnet/hockeyapp/android/views/AttachmentView;->gap:I

    mul-int/lit8 v6, v6, 0x1

    sub-int v3, v5, v6

    .line 191
    .local v3, "parentWidthLandscape":I
    div-int/lit8 v5, v4, 0x3

    iput v5, p0, Lnet/hockeyapp/android/views/AttachmentView;->widthPortrait:I

    .line 192
    div-int/lit8 v5, v3, 0x2

    iput v5, p0, Lnet/hockeyapp/android/views/AttachmentView;->widthLandscape:I

    .line 194
    iget v5, p0, Lnet/hockeyapp/android/views/AttachmentView;->widthPortrait:I

    mul-int/lit8 v5, v5, 0x2

    iput v5, p0, Lnet/hockeyapp/android/views/AttachmentView;->maxHeightPortrait:I

    .line 195
    iget v5, p0, Lnet/hockeyapp/android/views/AttachmentView;->widthLandscape:I

    iput v5, p0, Lnet/hockeyapp/android/views/AttachmentView;->maxHeightLandscape:I

    .line 196
    return-void
.end method

.method private configureViewForPlaceholder(Z)V
    .locals 3
    .param p1, "openOnClick"    # Z

    .prologue
    const/4 v2, -0x2

    .line 272
    iget-object v0, p0, Lnet/hockeyapp/android/views/AttachmentView;->textView:Landroid/widget/TextView;

    iget v1, p0, Lnet/hockeyapp/android/views/AttachmentView;->widthPortrait:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 273
    iget-object v0, p0, Lnet/hockeyapp/android/views/AttachmentView;->textView:Landroid/widget/TextView;

    iget v1, p0, Lnet/hockeyapp/android/views/AttachmentView;->widthPortrait:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMinWidth(I)V

    .line 275
    iget-object v0, p0, Lnet/hockeyapp/android/views/AttachmentView;->imageView:Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 276
    iget-object v0, p0, Lnet/hockeyapp/android/views/AttachmentView;->imageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 277
    iget-object v0, p0, Lnet/hockeyapp/android/views/AttachmentView;->imageView:Landroid/widget/ImageView;

    const-string v1, "#eeeeee"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 278
    iget-object v0, p0, Lnet/hockeyapp/android/views/AttachmentView;->imageView:Landroid/widget/ImageView;

    iget v1, p0, Lnet/hockeyapp/android/views/AttachmentView;->widthPortrait:I

    int-to-float v1, v1

    const v2, 0x3f99999a    # 1.2f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setMinimumHeight(I)V

    .line 279
    iget-object v0, p0, Lnet/hockeyapp/android/views/AttachmentView;->imageView:Landroid/widget/ImageView;

    iget v1, p0, Lnet/hockeyapp/android/views/AttachmentView;->widthPortrait:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setMinimumWidth(I)V

    .line 280
    iget-object v0, p0, Lnet/hockeyapp/android/views/AttachmentView;->imageView:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 281
    iget-object v0, p0, Lnet/hockeyapp/android/views/AttachmentView;->imageView:Landroid/widget/ImageView;

    const-string v1, "ic_menu_attachment"

    invoke-direct {p0, v1}, Lnet/hockeyapp/android/views/AttachmentView;->getSystemIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 282
    iget-object v0, p0, Lnet/hockeyapp/android/views/AttachmentView;->imageView:Landroid/widget/ImageView;

    new-instance v1, Lnet/hockeyapp/android/views/AttachmentView$4;

    invoke-direct {v1, p0, p1}, Lnet/hockeyapp/android/views/AttachmentView$4;-><init>(Lnet/hockeyapp/android/views/AttachmentView;Z)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 295
    return-void
.end method

.method private configureViewForThumbnail(Landroid/graphics/Bitmap;Z)V
    .locals 6
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "openOnClick"    # Z

    .prologue
    const/4 v5, -0x2

    const/4 v4, 0x1

    .line 243
    iget v2, p0, Lnet/hockeyapp/android/views/AttachmentView;->orientation:I

    if-ne v2, v4, :cond_0

    iget v1, p0, Lnet/hockeyapp/android/views/AttachmentView;->widthLandscape:I

    .line 244
    .local v1, "width":I
    :goto_0
    iget v2, p0, Lnet/hockeyapp/android/views/AttachmentView;->orientation:I

    if-ne v2, v4, :cond_1

    iget v0, p0, Lnet/hockeyapp/android/views/AttachmentView;->maxHeightLandscape:I

    .line 246
    .local v0, "height":I
    :goto_1
    iget-object v2, p0, Lnet/hockeyapp/android/views/AttachmentView;->textView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 247
    iget-object v2, p0, Lnet/hockeyapp/android/views/AttachmentView;->textView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setMinWidth(I)V

    .line 249
    iget-object v2, p0, Lnet/hockeyapp/android/views/AttachmentView;->imageView:Landroid/widget/ImageView;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 250
    iget-object v2, p0, Lnet/hockeyapp/android/views/AttachmentView;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 251
    iget-object v2, p0, Lnet/hockeyapp/android/views/AttachmentView;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setMinimumWidth(I)V

    .line 252
    iget-object v2, p0, Lnet/hockeyapp/android/views/AttachmentView;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setMaxWidth(I)V

    .line 253
    iget-object v2, p0, Lnet/hockeyapp/android/views/AttachmentView;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setMaxHeight(I)V

    .line 254
    iget-object v2, p0, Lnet/hockeyapp/android/views/AttachmentView;->imageView:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 255
    iget-object v2, p0, Lnet/hockeyapp/android/views/AttachmentView;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 256
    iget-object v2, p0, Lnet/hockeyapp/android/views/AttachmentView;->imageView:Landroid/widget/ImageView;

    new-instance v3, Lnet/hockeyapp/android/views/AttachmentView$3;

    invoke-direct {v3, p0, p2}, Lnet/hockeyapp/android/views/AttachmentView$3;-><init>(Lnet/hockeyapp/android/views/AttachmentView;Z)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 269
    return-void

    .line 243
    .end local v0    # "height":I
    .end local v1    # "width":I
    :cond_0
    iget v1, p0, Lnet/hockeyapp/android/views/AttachmentView;->widthPortrait:I

    goto :goto_0

    .line 244
    .restart local v1    # "width":I
    :cond_1
    iget v0, p0, Lnet/hockeyapp/android/views/AttachmentView;->maxHeightPortrait:I

    goto :goto_1
.end method

.method private getSystemIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 311
    invoke-virtual {p0}, Lnet/hockeyapp/android/views/AttachmentView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lnet/hockeyapp/android/views/AttachmentView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "drawable"

    const-string v3, "android"

    invoke-virtual {v1, p1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private initializeView(Landroid/content/Context;Z)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "removable"    # Z

    .prologue
    const/4 v9, 0x1

    const/16 v8, 0x50

    const/4 v7, -0x1

    const/4 v6, 0x0

    const/4 v5, -0x2

    .line 199
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v5, v5, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p0, v2}, Lnet/hockeyapp/android/views/AttachmentView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 200
    iget v2, p0, Lnet/hockeyapp/android/views/AttachmentView;->gap:I

    invoke-virtual {p0, v6, v2, v6, v6}, Lnet/hockeyapp/android/views/AttachmentView;->setPadding(IIII)V

    .line 203
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lnet/hockeyapp/android/views/AttachmentView;->imageView:Landroid/widget/ImageView;

    .line 206
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 207
    .local v0, "bottomView":Landroid/widget/LinearLayout;
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v7, v5, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 208
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 209
    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 210
    const-string v2, "#80262626"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 213
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lnet/hockeyapp/android/views/AttachmentView;->textView:Landroid/widget/TextView;

    .line 214
    iget-object v2, p0, Lnet/hockeyapp/android/views/AttachmentView;->textView:Landroid/widget/TextView;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v4, 0x11

    invoke-direct {v3, v7, v5, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 215
    iget-object v2, p0, Lnet/hockeyapp/android/views/AttachmentView;->textView:Landroid/widget/TextView;

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 216
    iget-object v2, p0, Lnet/hockeyapp/android/views/AttachmentView;->textView:Landroid/widget/TextView;

    const-string v3, "#FFFFFF"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 217
    iget-object v2, p0, Lnet/hockeyapp/android/views/AttachmentView;->textView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->setSingleLine()V

    .line 218
    iget-object v2, p0, Lnet/hockeyapp/android/views/AttachmentView;->textView:Landroid/widget/TextView;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 221
    if-eqz p2, :cond_0

    .line 222
    new-instance v1, Landroid/widget/ImageButton;

    invoke-direct {v1, p1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 223
    .local v1, "imageButton":Landroid/widget/ImageButton;
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v7, v5, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 224
    invoke-virtual {v1, v9}, Landroid/widget/ImageButton;->setAdjustViewBounds(Z)V

    .line 225
    const-string v2, "ic_menu_delete"

    invoke-direct {p0, v2}, Lnet/hockeyapp/android/views/AttachmentView;->getSystemIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 226
    invoke-virtual {v1, v6}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 227
    new-instance v2, Lnet/hockeyapp/android/views/AttachmentView$2;

    invoke-direct {v2, p0}, Lnet/hockeyapp/android/views/AttachmentView$2;-><init>(Lnet/hockeyapp/android/views/AttachmentView;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 234
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 237
    .end local v1    # "imageButton":Landroid/widget/ImageButton;
    :cond_0
    iget-object v2, p0, Lnet/hockeyapp/android/views/AttachmentView;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 238
    iget-object v2, p0, Lnet/hockeyapp/android/views/AttachmentView;->imageView:Landroid/widget/ImageView;

    invoke-virtual {p0, v2}, Lnet/hockeyapp/android/views/AttachmentView;->addView(Landroid/view/View;)V

    .line 239
    invoke-virtual {p0, v0}, Lnet/hockeyapp/android/views/AttachmentView;->addView(Landroid/view/View;)V

    .line 240
    return-void
.end method

.method private loadImageThumbnail()Landroid/graphics/Bitmap;
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 299
    :try_start_0
    iget-object v3, p0, Lnet/hockeyapp/android/views/AttachmentView;->context:Landroid/content/Context;

    iget-object v4, p0, Lnet/hockeyapp/android/views/AttachmentView;->attachmentUri:Landroid/net/Uri;

    invoke-static {v3, v4}, Lnet/hockeyapp/android/utils/ImageUtils;->determineOrientation(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v3

    iput v3, p0, Lnet/hockeyapp/android/views/AttachmentView;->orientation:I

    .line 300
    iget v3, p0, Lnet/hockeyapp/android/views/AttachmentView;->orientation:I

    if-ne v3, v5, :cond_0

    iget v2, p0, Lnet/hockeyapp/android/views/AttachmentView;->widthLandscape:I

    .line 301
    .local v2, "width":I
    :goto_0
    iget v3, p0, Lnet/hockeyapp/android/views/AttachmentView;->orientation:I

    if-ne v3, v5, :cond_1

    iget v0, p0, Lnet/hockeyapp/android/views/AttachmentView;->maxHeightLandscape:I

    .line 303
    .local v0, "height":I
    :goto_1
    iget-object v3, p0, Lnet/hockeyapp/android/views/AttachmentView;->context:Landroid/content/Context;

    iget-object v4, p0, Lnet/hockeyapp/android/views/AttachmentView;->attachmentUri:Landroid/net/Uri;

    invoke-static {v3, v4, v2, v0}, Lnet/hockeyapp/android/utils/ImageUtils;->decodeSampledBitmap(Landroid/content/Context;Landroid/net/Uri;II)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 306
    .end local v0    # "height":I
    .end local v2    # "width":I
    :goto_2
    return-object v3

    .line 300
    :cond_0
    iget v2, p0, Lnet/hockeyapp/android/views/AttachmentView;->widthPortrait:I

    goto :goto_0

    .line 301
    .restart local v2    # "width":I
    :cond_1
    iget v0, p0, Lnet/hockeyapp/android/views/AttachmentView;->maxHeightPortrait:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 305
    .end local v2    # "width":I
    :catch_0
    move-exception v1

    .line 306
    .local v1, "t":Ljava/lang/Throwable;
    const/4 v3, 0x0

    goto :goto_2
.end method


# virtual methods
.method public getAttachment()Lnet/hockeyapp/android/objects/FeedbackAttachment;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lnet/hockeyapp/android/views/AttachmentView;->attachment:Lnet/hockeyapp/android/objects/FeedbackAttachment;

    return-object v0
.end method

.method public getAttachmentUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lnet/hockeyapp/android/views/AttachmentView;->attachmentUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getEffectiveMaxHeight()I
    .locals 2

    .prologue
    .line 158
    iget v0, p0, Lnet/hockeyapp/android/views/AttachmentView;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lnet/hockeyapp/android/views/AttachmentView;->maxHeightLandscape:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lnet/hockeyapp/android/views/AttachmentView;->maxHeightPortrait:I

    goto :goto_0
.end method

.method public getGap()I
    .locals 1

    .prologue
    .line 155
    iget v0, p0, Lnet/hockeyapp/android/views/AttachmentView;->gap:I

    return v0
.end method

.method public getMaxHeightLandscape()I
    .locals 1

    .prologue
    .line 153
    iget v0, p0, Lnet/hockeyapp/android/views/AttachmentView;->maxHeightLandscape:I

    return v0
.end method

.method public getMaxHeightPortrait()I
    .locals 1

    .prologue
    .line 149
    iget v0, p0, Lnet/hockeyapp/android/views/AttachmentView;->maxHeightPortrait:I

    return v0
.end method

.method public getWidthLandscape()I
    .locals 1

    .prologue
    .line 151
    iget v0, p0, Lnet/hockeyapp/android/views/AttachmentView;->widthLandscape:I

    return v0
.end method

.method public getWidthPortrait()I
    .locals 1

    .prologue
    .line 147
    iget v0, p0, Lnet/hockeyapp/android/views/AttachmentView;->widthPortrait:I

    return v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lnet/hockeyapp/android/views/AttachmentView;->parent:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 163
    return-void
.end method

.method public setImage(Landroid/graphics/Bitmap;I)V
    .locals 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "orientation"    # I

    .prologue
    const/4 v2, 0x1

    .line 166
    iget-object v0, p0, Lnet/hockeyapp/android/views/AttachmentView;->textView:Landroid/widget/TextView;

    iget-object v1, p0, Lnet/hockeyapp/android/views/AttachmentView;->filename:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    iput p2, p0, Lnet/hockeyapp/android/views/AttachmentView;->orientation:I

    .line 169
    if-nez p1, :cond_0

    .line 170
    invoke-direct {p0, v2}, Lnet/hockeyapp/android/views/AttachmentView;->configureViewForPlaceholder(Z)V

    .line 175
    :goto_0
    return-void

    .line 173
    :cond_0
    invoke-direct {p0, p1, v2}, Lnet/hockeyapp/android/views/AttachmentView;->configureViewForThumbnail(Landroid/graphics/Bitmap;Z)V

    goto :goto_0
.end method

.method public signalImageLoadingError()V
    .locals 2

    .prologue
    .line 178
    iget-object v0, p0, Lnet/hockeyapp/android/views/AttachmentView;->textView:Landroid/widget/TextView;

    const-string v1, "Error"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    return-void
.end method
