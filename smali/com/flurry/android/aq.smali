.class final Lcom/flurry/android/aq;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private cJ:Landroid/view/View;

.field private cK:I

.field private cL:Lcom/flurry/android/BasicWebView$BasicWebViewFullScreenTransitionHandler$BasicWebViewFullScreenTransitionCallback;

.field private cM:Landroid/widget/FrameLayout;

.field final synthetic u:Lcom/flurry/android/FlurryFullscreenTakeoverActivity;


# direct methods
.method synthetic constructor <init>(Lcom/flurry/android/FlurryFullscreenTakeoverActivity;)V
    .locals 1

    .prologue
    .line 453
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/flurry/android/aq;-><init>(Lcom/flurry/android/FlurryFullscreenTakeoverActivity;B)V

    return-void
.end method

.method private constructor <init>(Lcom/flurry/android/FlurryFullscreenTakeoverActivity;B)V
    .locals 0

    .prologue
    .line 453
    iput-object p1, p0, Lcom/flurry/android/aq;->u:Lcom/flurry/android/FlurryFullscreenTakeoverActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final U()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 494
    iget-object v0, p0, Lcom/flurry/android/aq;->cJ:Landroid/view/View;

    if-nez v0, :cond_0

    .line 511
    :goto_0
    return-void

    .line 498
    :cond_0
    iget-object v0, p0, Lcom/flurry/android/aq;->u:Lcom/flurry/android/FlurryFullscreenTakeoverActivity;

    invoke-virtual {v0}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 499
    iget-object v1, p0, Lcom/flurry/android/aq;->cM:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 500
    iget-object v0, p0, Lcom/flurry/android/aq;->cM:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/flurry/android/aq;->cJ:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 502
    iget-object v0, p0, Lcom/flurry/android/aq;->cL:Lcom/flurry/android/BasicWebView$BasicWebViewFullScreenTransitionHandler$BasicWebViewFullScreenTransitionCallback;

    if-eqz v0, :cond_1

    .line 503
    iget-object v0, p0, Lcom/flurry/android/aq;->cL:Lcom/flurry/android/BasicWebView$BasicWebViewFullScreenTransitionHandler$BasicWebViewFullScreenTransitionCallback;

    invoke-interface {v0}, Lcom/flurry/android/BasicWebView$BasicWebViewFullScreenTransitionHandler$BasicWebViewFullScreenTransitionCallback;->onBasicWebViewTransitionFromFullScreenFinished()V

    .line 506
    :cond_1
    iget-object v0, p0, Lcom/flurry/android/aq;->u:Lcom/flurry/android/FlurryFullscreenTakeoverActivity;

    iget v1, p0, Lcom/flurry/android/aq;->cK:I

    invoke-virtual {v0, v1}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->setRequestedOrientation(I)V

    .line 508
    iput-object v2, p0, Lcom/flurry/android/aq;->cL:Lcom/flurry/android/BasicWebView$BasicWebViewFullScreenTransitionHandler$BasicWebViewFullScreenTransitionCallback;

    .line 509
    iput-object v2, p0, Lcom/flurry/android/aq;->cM:Landroid/widget/FrameLayout;

    .line 510
    iput-object v2, p0, Lcom/flurry/android/aq;->cJ:Landroid/view/View;

    goto :goto_0
.end method

.method public final a(Lcom/flurry/android/cf;Landroid/view/View;ILcom/flurry/android/BasicWebView$BasicWebViewFullScreenTransitionHandler$BasicWebViewFullScreenTransitionCallback;)V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 471
    iget-object v0, p0, Lcom/flurry/android/aq;->cJ:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 472
    invoke-virtual {p0}, Lcom/flurry/android/aq;->U()V

    .line 475
    :cond_0
    iput-object p2, p0, Lcom/flurry/android/aq;->cJ:Landroid/view/View;

    .line 476
    iget-object v0, p0, Lcom/flurry/android/aq;->u:Lcom/flurry/android/FlurryFullscreenTakeoverActivity;

    invoke-virtual {v0}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->getRequestedOrientation()I

    move-result v0

    iput v0, p0, Lcom/flurry/android/aq;->cK:I

    .line 477
    iput-object p4, p0, Lcom/flurry/android/aq;->cL:Lcom/flurry/android/BasicWebView$BasicWebViewFullScreenTransitionHandler$BasicWebViewFullScreenTransitionCallback;

    .line 479
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/flurry/android/aq;->u:Lcom/flurry/android/FlurryFullscreenTakeoverActivity;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/flurry/android/aq;->cM:Landroid/widget/FrameLayout;

    .line 480
    iget-object v0, p0, Lcom/flurry/android/aq;->cM:Landroid/widget/FrameLayout;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 481
    iget-object v0, p0, Lcom/flurry/android/aq;->cM:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/flurry/android/aq;->cJ:Landroid/view/View;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v3, 0x11

    invoke-direct {v2, v4, v4, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 485
    iget-object v0, p0, Lcom/flurry/android/aq;->u:Lcom/flurry/android/FlurryFullscreenTakeoverActivity;

    invoke-virtual {v0}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 486
    iget-object v1, p0, Lcom/flurry/android/aq;->cM:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1, v4, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 489
    iget-object v0, p0, Lcom/flurry/android/aq;->u:Lcom/flurry/android/FlurryFullscreenTakeoverActivity;

    invoke-virtual {v0, p3}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->setRequestedOrientation(I)V

    .line 490
    return-void
.end method
