.class public final Lcom/flurry/android/FlurryFullscreenTakeoverActivity;
.super Landroid/app/Activity;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# static fields
.field public static final EXTRA_KEY_ADSPACENAME:Ljava/lang/String; = "adSpaceName"

.field public static final EXTRA_KEY_FRAMEINDEX:Ljava/lang/String; = "frameIndex"

.field public static final EXTRA_KEY_TARGETINTENT:Ljava/lang/String; = "targetIntent"

.field public static final EXTRA_KEY_URL:Ljava/lang/String; = "url"

.field private static final p:Ljava/lang/String;


# instance fields
.field private T:Lcom/flurry/android/AdUnit;

.field private dq:Ljava/lang/String;

.field private fA:J

.field private fr:Lcom/flurry/android/ft;

.field private fs:Landroid/view/ViewGroup;

.field private ft:Lcom/flurry/android/cf;

.field private fu:Landroid/app/ProgressDialog;

.field private fv:Landroid/widget/VideoView;

.field private fw:Z

.field private fx:Landroid/widget/MediaController;

.field private fy:Z

.field private fz:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-class v0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->p:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 453
    return-void
.end method

.method static synthetic a(Lcom/flurry/android/FlurryFullscreenTakeoverActivity;)Landroid/widget/VideoView;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->fv:Landroid/widget/VideoView;

    return-object v0
.end method

.method static synthetic a(Lcom/flurry/android/FlurryFullscreenTakeoverActivity;Landroid/widget/VideoView;)Landroid/widget/VideoView;
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->fv:Landroid/widget/VideoView;

    return-object p1
.end method

.method static synthetic a(Lcom/flurry/android/FlurryFullscreenTakeoverActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->u(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/flurry/android/FlurryFullscreenTakeoverActivity;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 33
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "link"

    invoke-virtual {v1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic a(Lcom/flurry/android/FlurryFullscreenTakeoverActivity;Z)Z
    .locals 0

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->fw:Z

    return p1
.end method

.method private aG()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 382
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->fu:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    .line 383
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->fu:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 384
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->fu:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 386
    :cond_0
    iput-object v2, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->fu:Landroid/app/ProgressDialog;

    .line 389
    :cond_1
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->ft:Lcom/flurry/android/cf;

    if-eqz v0, :cond_2

    .line 390
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->ft:Lcom/flurry/android/cf;

    invoke-virtual {v0, v3}, Lcom/flurry/android/cf;->setVisibility(I)V

    .line 393
    :cond_2
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->fv:Landroid/widget/VideoView;

    if-eqz v0, :cond_5

    .line 394
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->fv:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 395
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->fv:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    .line 398
    :cond_3
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->fs:Landroid/view/ViewGroup;

    if-eqz v0, :cond_4

    .line 399
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->fs:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->fv:Landroid/widget/VideoView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 402
    :cond_4
    iput-object v2, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->fv:Landroid/widget/VideoView;

    .line 405
    :cond_5
    iput-boolean v3, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->fw:Z

    .line 406
    iput-object v2, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->fx:Landroid/widget/MediaController;

    .line 407
    return-void
.end method

.method static synthetic b(Lcom/flurry/android/FlurryFullscreenTakeoverActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->dq:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/flurry/android/FlurryFullscreenTakeoverActivity;Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 33
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "market"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private static t(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 316
    .line 317
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 318
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v1

    invoke-static {p0}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 320
    if-eqz v1, :cond_0

    const-string v2, "video/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 322
    :cond_0
    return v0
.end method

.method private u(Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 354
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->fv:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->fs:Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    .line 379
    :cond_0
    :goto_0
    return-void

    .line 358
    :cond_1
    new-instance v0, Landroid/widget/MediaController;

    invoke-direct {v0, p0}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->fx:Landroid/widget/MediaController;

    .line 360
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->fv:Landroid/widget/VideoView;

    invoke-virtual {v0, p0}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 361
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->fv:Landroid/widget/VideoView;

    invoke-virtual {v0, p0}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 362
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->fv:Landroid/widget/VideoView;

    invoke-virtual {v0, p0}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 363
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->fv:Landroid/widget/VideoView;

    iget-object v1, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->fx:Landroid/widget/MediaController;

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setMediaController(Landroid/widget/MediaController;)V

    .line 364
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->fv:Landroid/widget/VideoView;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 366
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->fs:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->fv:Landroid/widget/VideoView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v3, 0x11

    invoke-direct {v2, v4, v4, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 370
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->fu:Landroid/app/ProgressDialog;

    .line 371
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->fu:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 372
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->fu:Landroid/app/ProgressDialog;

    const-string v1, "Loading..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 373
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->fu:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 374
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->fu:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 376
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->ft:Lcom/flurry/android/cf;

    if-eqz v0, :cond_0

    .line 377
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->ft:Lcom/flurry/android/cf;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/flurry/android/cf;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic v(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 33
    invoke-static {p0}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->t(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method final L()Lcom/flurry/android/AdUnit;
    .locals 1

    .prologue
    .line 516
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->T:Lcom/flurry/android/AdUnit;

    return-object v0
.end method

.method final aH()Lcom/flurry/android/ft;
    .locals 1

    .prologue
    .line 521
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->fr:Lcom/flurry/android/ft;

    return-object v0
.end method

.method public final onCompletion(Landroid/media/MediaPlayer;)V
    .locals 0

    .prologue
    .line 297
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .prologue
    .line 164
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 166
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 7

    .prologue
    const/4 v5, -0x1

    const/4 v6, -0x2

    .line 65
    const v0, 0x1030007

    invoke-virtual {p0, v0}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->setTheme(I)V

    .line 67
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 69
    invoke-virtual {p0}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lcom/flurry/android/s;->a(Landroid/view/Window;)V

    .line 71
    invoke-virtual {p0}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 72
    const-string v0, "targetIntent"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->fz:Landroid/content/Intent;

    .line 73
    const-string v0, "adSpaceName"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->dq:Ljava/lang/String;

    .line 75
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->fz:Landroid/content/Intent;

    if-eqz v0, :cond_1

    .line 77
    :try_start_0
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->fz:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->startActivity(Landroid/content/Intent;)V

    .line 78
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->fA:J
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    :cond_0
    :goto_0
    invoke-static {}, Lcom/flurry/android/FlurryAds;->getInstance()Lcom/flurry/android/FlurryAds;

    move-result-object v0

    .line 128
    invoke-virtual {v0, p0}, Lcom/flurry/android/FlurryAds;->a(Landroid/app/Activity;)V

    .line 129
    return-void

    .line 79
    :catch_0
    move-exception v0

    .line 80
    sget-object v1, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->p:Ljava/lang/String;

    const-string v2, "Cannot launch Activity"

    invoke-static {v1, v2, v0}, Lcom/flurry/android/cy;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 81
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->fz:Landroid/content/Intent;

    .line 82
    invoke-virtual {p0}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->finish()V

    goto :goto_0

    .line 85
    :cond_1
    const-string v0, "url"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 86
    if-nez v0, :cond_4

    .line 88
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->fs:Landroid/view/ViewGroup;

    .line 90
    if-nez p1, :cond_3

    .line 91
    :goto_1
    if-gez v5, :cond_2

    .line 93
    const-string v0, "frameIndex"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 95
    :cond_2
    invoke-static {}, Lcom/flurry/android/FlurryAds;->getInstance()Lcom/flurry/android/FlurryAds;

    move-result-object v2

    .line 96
    invoke-virtual {v2}, Lcom/flurry/android/FlurryAds;->br()Lcom/flurry/android/AdUnit;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->T:Lcom/flurry/android/AdUnit;

    .line 97
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->T:Lcom/flurry/android/AdUnit;

    if-eqz v0, :cond_0

    .line 98
    new-instance v0, Lcom/flurry/android/ft;

    invoke-virtual {v2}, Lcom/flurry/android/FlurryAds;->bq()Lcom/flurry/android/cw;

    move-result-object v3

    iget-object v4, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->T:Lcom/flurry/android/AdUnit;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/flurry/android/ft;-><init>(Landroid/content/Context;Lcom/flurry/android/FlurryAds;Lcom/flurry/android/cw;Lcom/flurry/android/AdUnit;I)V

    iput-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->fr:Lcom/flurry/android/ft;

    .line 99
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->fr:Lcom/flurry/android/ft;

    invoke-virtual {v0, p0}, Lcom/flurry/android/ft;->initLayout(Landroid/content/Context;)V

    .line 100
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 101
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 102
    iget-object v1, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->fs:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->fr:Lcom/flurry/android/ft;

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 103
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->fs:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->setContentView(Landroid/view/View;)V

    goto :goto_0

    .line 90
    :cond_3
    const-string v0, "frameIndex"

    invoke-virtual {p1, v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    goto :goto_1

    .line 110
    :cond_4
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->fs:Landroid/view/ViewGroup;

    .line 111
    iget-object v1, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->fs:Landroid/view/ViewGroup;

    invoke-virtual {p0, v1}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->setContentView(Landroid/view/View;)V

    .line 113
    invoke-static {v0}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->t(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 114
    new-instance v1, Lcom/flurry/android/gk;

    invoke-direct {v1, p0}, Lcom/flurry/android/gk;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->fv:Landroid/widget/VideoView;

    .line 115
    invoke-direct {p0, v0}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->u(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 117
    :cond_5
    new-instance v1, Lcom/flurry/android/cf;

    invoke-direct {v1, p0, v0}, Lcom/flurry/android/cf;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->ft:Lcom/flurry/android/cf;

    .line 118
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->ft:Lcom/flurry/android/cf;

    new-instance v1, Lcom/flurry/android/h;

    invoke-direct {v1, p0}, Lcom/flurry/android/h;-><init>(Lcom/flurry/android/FlurryFullscreenTakeoverActivity;)V

    invoke-virtual {v0, v1}, Lcom/flurry/android/cf;->a(Lcom/flurry/android/h;)V

    .line 119
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->ft:Lcom/flurry/android/cf;

    new-instance v1, Lcom/flurry/android/ee;

    invoke-direct {v1, p0}, Lcom/flurry/android/ee;-><init>(Lcom/flurry/android/FlurryFullscreenTakeoverActivity;)V

    invoke-virtual {v0, v1}, Lcom/flurry/android/cf;->a(Lcom/flurry/android/ee;)V

    .line 120
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->ft:Lcom/flurry/android/cf;

    new-instance v1, Lcom/flurry/android/aq;

    invoke-direct {v1, p0}, Lcom/flurry/android/aq;-><init>(Lcom/flurry/android/FlurryFullscreenTakeoverActivity;)V

    invoke-virtual {v0, v1}, Lcom/flurry/android/cf;->a(Lcom/flurry/android/aq;)V

    .line 122
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->fs:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->ft:Lcom/flurry/android/cf;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto/16 :goto_0
.end method

.method protected final onDestroy()V
    .locals 1

    .prologue
    .line 205
    invoke-direct {p0}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->aG()V

    .line 207
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->ft:Lcom/flurry/android/cf;

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->ft:Lcom/flurry/android/cf;

    invoke-virtual {v0}, Lcom/flurry/android/cf;->destroy()V

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->fr:Lcom/flurry/android/ft;

    if-eqz v0, :cond_1

    .line 212
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->fr:Lcom/flurry/android/ft;

    invoke-virtual {v0}, Lcom/flurry/android/ft;->stop()V

    .line 215
    :cond_1
    invoke-static {}, Lcom/flurry/android/FlurryAds;->getInstance()Lcom/flurry/android/FlurryAds;

    move-result-object v0

    .line 216
    invoke-virtual {v0, p0}, Lcom/flurry/android/FlurryAds;->b(Landroid/app/Activity;)V

    .line 218
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 219
    return-void
.end method

.method public final onError(Landroid/media/MediaPlayer;II)Z
    .locals 2

    .prologue
    .line 272
    sget-object v0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->p:Ljava/lang/String;

    const-string v1, "error occurs during video playback"

    invoke-static {v0, v1}, Lcom/flurry/android/cy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->ft:Lcom/flurry/android/cf;

    if-eqz v0, :cond_2

    .line 277
    iget-boolean v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->fw:Z

    if-eqz v0, :cond_1

    .line 278
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->ft:Lcom/flurry/android/cf;

    invoke-virtual {v0}, Lcom/flurry/android/cf;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->ft:Lcom/flurry/android/cf;

    invoke-virtual {v0}, Lcom/flurry/android/cf;->goBack()V

    .line 280
    invoke-direct {p0}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->aG()V

    .line 291
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 282
    :cond_0
    invoke-virtual {p0}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->finish()V

    goto :goto_0

    .line 285
    :cond_1
    invoke-direct {p0}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->aG()V

    goto :goto_0

    .line 288
    :cond_2
    invoke-virtual {p0}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->finish()V

    goto :goto_0
.end method

.method public final onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 240
    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    .line 241
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->fr:Lcom/flurry/android/ft;

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->fr:Lcom/flurry/android/ft;

    const-string v1, "adWillClose"

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->fr:Lcom/flurry/android/ft;

    iget-object v3, v3, Lcom/flurry/android/ft;->T:Lcom/flurry/android/AdUnit;

    iget-object v4, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->fr:Lcom/flurry/android/ft;

    iget-object v4, v4, Lcom/flurry/android/ft;->S:Lcom/flurry/android/cw;

    iget-object v5, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->fr:Lcom/flurry/android/ft;

    iget v5, v5, Lcom/flurry/android/ft;->U:I

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/flurry/android/ft;->a(Ljava/lang/String;Ljava/util/Map;Lcom/flurry/android/AdUnit;Lcom/flurry/android/cw;II)V

    move v0, v7

    .line 266
    :goto_0
    return v0

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->fv:Landroid/widget/VideoView;

    if-eqz v0, :cond_2

    .line 245
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->ft:Lcom/flurry/android/cf;

    if-eqz v0, :cond_3

    .line 247
    iget-boolean v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->fw:Z

    if-eqz v0, :cond_1

    .line 248
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->ft:Lcom/flurry/android/cf;

    invoke-virtual {v0}, Lcom/flurry/android/cf;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 249
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->ft:Lcom/flurry/android/cf;

    invoke-virtual {v0}, Lcom/flurry/android/cf;->goBack()V

    .line 250
    invoke-direct {p0}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->aG()V

    move v0, v7

    .line 251
    goto :goto_0

    .line 254
    :cond_1
    invoke-direct {p0}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->aG()V

    move v0, v7

    .line 255
    goto :goto_0

    .line 258
    :cond_2
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->ft:Lcom/flurry/android/cf;

    if-eqz v0, :cond_3

    .line 259
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->ft:Lcom/flurry/android/cf;

    invoke-virtual {v0}, Lcom/flurry/android/cf;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 260
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->ft:Lcom/flurry/android/cf;

    invoke-virtual {v0}, Lcom/flurry/android/cf;->goBack()V

    move v0, v7

    .line 261
    goto :goto_0

    .line 266
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected final onPause()V
    .locals 1

    .prologue
    .line 191
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 193
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->fy:Z

    .line 194
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->fv:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->fv:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->fv:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->pause()V

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->fr:Lcom/flurry/android/ft;

    if-eqz v0, :cond_1

    .line 200
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->fr:Lcom/flurry/android/ft;

    invoke-virtual {v0}, Lcom/flurry/android/ft;->pause()V

    .line 202
    :cond_1
    return-void
.end method

.method public final onPrepared(Landroid/media/MediaPlayer;)V
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->fu:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->fu:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->fu:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 309
    :cond_0
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->fv:Landroid/widget/VideoView;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->fy:Z

    if-eqz v0, :cond_1

    .line 311
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->fv:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 313
    :cond_1
    return-void
.end method

.method protected final onRestart()V
    .locals 0

    .prologue
    .line 170
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 172
    return-void
.end method

.method protected final onResume()V
    .locals 2

    .prologue
    .line 176
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 178
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->fy:Z

    .line 179
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->fx:Landroid/widget/MediaController;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->fx:Landroid/widget/MediaController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/MediaController;->show(I)V

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->fr:Lcom/flurry/android/ft;

    if-eqz v0, :cond_1

    .line 185
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->fr:Lcom/flurry/android/ft;

    invoke-virtual {v0}, Lcom/flurry/android/ft;->resume()V

    .line 187
    :cond_1
    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 154
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 155
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->fr:Lcom/flurry/android/ft;

    if-eqz v0, :cond_0

    .line 157
    const-string v0, "frameIndex"

    iget-object v1, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->fr:Lcom/flurry/android/ft;

    iget v1, v1, Lcom/flurry/android/ft;->U:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 159
    :cond_0
    return-void
.end method

.method public final onStart()V
    .locals 1

    .prologue
    .line 134
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 136
    invoke-static {}, Lcom/flurry/android/FlurryAgent;->y()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 137
    invoke-static {}, Lcom/flurry/android/FlurryAgent;->y()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    .line 141
    :goto_0
    return-void

    .line 139
    :cond_0
    invoke-virtual {p0}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->finish()V

    goto :goto_0
.end method

.method public final onStop()V
    .locals 0

    .prologue
    .line 146
    invoke-static {p0}, Lcom/flurry/android/FlurryAgent;->onEndSession(Landroid/content/Context;)V

    .line 148
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 149
    return-void
.end method

.method public final onWindowFocusChanged(Z)V
    .locals 4

    .prologue
    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onWindowFocusChanged hasFocus = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 224
    iget-boolean v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->fy:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 225
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->fz:Landroid/content/Intent;

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->fA:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xfa

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 226
    invoke-virtual {p0}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->finish()V

    .line 231
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 232
    return-void
.end method
