.class final Lcom/flurry/android/co;
.super Landroid/webkit/WebChromeClient;
.source "SourceFile"


# instance fields
.field final synthetic dp:Lcom/flurry/android/ft;


# direct methods
.method synthetic constructor <init>(Lcom/flurry/android/ft;)V
    .locals 1

    .prologue
    .line 277
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/flurry/android/co;-><init>(Lcom/flurry/android/ft;B)V

    return-void
.end method

.method private constructor <init>(Lcom/flurry/android/ft;B)V
    .locals 0

    .prologue
    .line 277
    iput-object p1, p0, Lcom/flurry/android/co;->dp:Lcom/flurry/android/ft;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onHideCustomView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 395
    iget-object v0, p0, Lcom/flurry/android/co;->dp:Lcom/flurry/android/ft;

    invoke-static {v0}, Lcom/flurry/android/ft;->n(Lcom/flurry/android/ft;)Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 431
    :cond_0
    :goto_0
    return-void

    .line 401
    :cond_1
    iget-object v0, p0, Lcom/flurry/android/co;->dp:Lcom/flurry/android/ft;

    invoke-static {v0}, Lcom/flurry/android/ft;->o(Lcom/flurry/android/ft;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 406
    iget-object v0, p0, Lcom/flurry/android/co;->dp:Lcom/flurry/android/ft;

    invoke-static {v0}, Lcom/flurry/android/ft;->s(Lcom/flurry/android/ft;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 408
    iget-object v0, p0, Lcom/flurry/android/co;->dp:Lcom/flurry/android/ft;

    invoke-static {v0}, Lcom/flurry/android/ft;->s(Lcom/flurry/android/ft;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 411
    :cond_2
    iget-object v0, p0, Lcom/flurry/android/co;->dp:Lcom/flurry/android/ft;

    invoke-static {v0}, Lcom/flurry/android/ft;->n(Lcom/flurry/android/ft;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 412
    iget-object v1, p0, Lcom/flurry/android/co;->dp:Lcom/flurry/android/ft;

    invoke-static {v1}, Lcom/flurry/android/ft;->q(Lcom/flurry/android/ft;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 413
    iget-object v0, p0, Lcom/flurry/android/co;->dp:Lcom/flurry/android/ft;

    invoke-static {v0}, Lcom/flurry/android/ft;->q(Lcom/flurry/android/ft;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/android/co;->dp:Lcom/flurry/android/ft;

    invoke-static {v1}, Lcom/flurry/android/ft;->o(Lcom/flurry/android/ft;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 415
    iget-object v0, p0, Lcom/flurry/android/co;->dp:Lcom/flurry/android/ft;

    invoke-static {v0}, Lcom/flurry/android/ft;->r(Lcom/flurry/android/ft;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/flurry/android/co;->dp:Lcom/flurry/android/ft;

    invoke-static {v0}, Lcom/flurry/android/ft;->r(Lcom/flurry/android/ft;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 417
    iget-object v0, p0, Lcom/flurry/android/co;->dp:Lcom/flurry/android/ft;

    invoke-static {v0}, Lcom/flurry/android/ft;->r(Lcom/flurry/android/ft;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V

    .line 418
    iget-object v0, p0, Lcom/flurry/android/co;->dp:Lcom/flurry/android/ft;

    invoke-static {v0}, Lcom/flurry/android/ft;->r(Lcom/flurry/android/ft;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 419
    iget-object v0, p0, Lcom/flurry/android/co;->dp:Lcom/flurry/android/ft;

    invoke-static {v0}, Lcom/flurry/android/ft;->r(Lcom/flurry/android/ft;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 421
    :cond_3
    iget-object v0, p0, Lcom/flurry/android/co;->dp:Lcom/flurry/android/ft;

    invoke-static {v0, v2}, Lcom/flurry/android/ft;->a(Lcom/flurry/android/ft;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 423
    iget-object v0, p0, Lcom/flurry/android/co;->dp:Lcom/flurry/android/ft;

    invoke-static {v0}, Lcom/flurry/android/ft;->n(Lcom/flurry/android/ft;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/android/co;->dp:Lcom/flurry/android/ft;

    invoke-static {v1}, Lcom/flurry/android/ft;->t(Lcom/flurry/android/ft;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/flurry/android/fd;->a(Landroid/app/Activity;I)V

    .line 424
    iget-object v0, p0, Lcom/flurry/android/co;->dp:Lcom/flurry/android/ft;

    invoke-static {v0}, Lcom/flurry/android/ft;->u(Lcom/flurry/android/ft;)Landroid/webkit/WebChromeClient$CustomViewCallback;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    .line 426
    iget-object v0, p0, Lcom/flurry/android/co;->dp:Lcom/flurry/android/ft;

    invoke-static {v0, v2}, Lcom/flurry/android/ft;->a(Lcom/flurry/android/ft;Landroid/webkit/WebChromeClient$CustomViewCallback;)Landroid/webkit/WebChromeClient$CustomViewCallback;

    .line 427
    iget-object v0, p0, Lcom/flurry/android/co;->dp:Lcom/flurry/android/ft;

    invoke-static {v0, v2}, Lcom/flurry/android/ft;->a(Lcom/flurry/android/ft;Landroid/widget/FrameLayout;)Landroid/widget/FrameLayout;

    .line 428
    iget-object v0, p0, Lcom/flurry/android/co;->dp:Lcom/flurry/android/ft;

    invoke-static {v0, v2}, Lcom/flurry/android/ft;->a(Lcom/flurry/android/ft;Landroid/view/View;)Landroid/view/View;

    .line 430
    iget-object v0, p0, Lcom/flurry/android/co;->dp:Lcom/flurry/android/ft;

    iget-object v0, v0, Lcom/flurry/android/ft;->R:Lcom/flurry/android/FlurryAds;

    iget-object v1, p0, Lcom/flurry/android/co;->dp:Lcom/flurry/android/ft;

    invoke-static {v1}, Lcom/flurry/android/ft;->m(Lcom/flurry/android/ft;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/android/co;->dp:Lcom/flurry/android/ft;

    iget-object v2, v2, Lcom/flurry/android/ft;->T:Lcom/flurry/android/AdUnit;

    invoke-virtual {v2}, Lcom/flurry/android/AdUnit;->getAdSpace()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/flurry/android/FlurryAds;->onCloseFullScreen(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public final onShowCustomView(Landroid/view/View;ILandroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    .line 303
    iget-object v0, p0, Lcom/flurry/android/co;->dp:Lcom/flurry/android/ft;

    invoke-static {v0}, Lcom/flurry/android/ft;->n(Lcom/flurry/android/ft;)Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 391
    :goto_0
    return-void

    .line 309
    :cond_0
    iget-object v0, p0, Lcom/flurry/android/co;->dp:Lcom/flurry/android/ft;

    invoke-static {v0}, Lcom/flurry/android/ft;->o(Lcom/flurry/android/ft;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/flurry/android/co;->dp:Lcom/flurry/android/ft;

    invoke-static {v0}, Lcom/flurry/android/ft;->p(Lcom/flurry/android/ft;)Landroid/webkit/WebChromeClient;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 311
    iget-object v0, p0, Lcom/flurry/android/co;->dp:Lcom/flurry/android/ft;

    invoke-static {v0}, Lcom/flurry/android/ft;->p(Lcom/flurry/android/ft;)Landroid/webkit/WebChromeClient;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebChromeClient;->onHideCustomView()V

    goto :goto_0

    .line 315
    :cond_1
    iget-object v0, p0, Lcom/flurry/android/co;->dp:Lcom/flurry/android/ft;

    invoke-static {v0, p1}, Lcom/flurry/android/ft;->a(Lcom/flurry/android/ft;Landroid/view/View;)Landroid/view/View;

    .line 316
    iget-object v0, p0, Lcom/flurry/android/co;->dp:Lcom/flurry/android/ft;

    iget-object v1, p0, Lcom/flurry/android/co;->dp:Lcom/flurry/android/ft;

    invoke-static {v1}, Lcom/flurry/android/ft;->n(Lcom/flurry/android/ft;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v1

    invoke-static {v0, v1}, Lcom/flurry/android/ft;->a(Lcom/flurry/android/ft;I)I

    .line 317
    iget-object v0, p0, Lcom/flurry/android/co;->dp:Lcom/flurry/android/ft;

    invoke-static {v0, p3}, Lcom/flurry/android/ft;->a(Lcom/flurry/android/ft;Landroid/webkit/WebChromeClient$CustomViewCallback;)Landroid/webkit/WebChromeClient$CustomViewCallback;

    .line 319
    iget-object v0, p0, Lcom/flurry/android/co;->dp:Lcom/flurry/android/ft;

    new-instance v1, Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/flurry/android/co;->dp:Lcom/flurry/android/ft;

    invoke-static {v2}, Lcom/flurry/android/ft;->m(Lcom/flurry/android/ft;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/flurry/android/ft;->a(Lcom/flurry/android/ft;Landroid/widget/FrameLayout;)Landroid/widget/FrameLayout;

    .line 320
    iget-object v0, p0, Lcom/flurry/android/co;->dp:Lcom/flurry/android/ft;

    invoke-static {v0}, Lcom/flurry/android/ft;->q(Lcom/flurry/android/ft;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 321
    iget-object v0, p0, Lcom/flurry/android/co;->dp:Lcom/flurry/android/ft;

    invoke-static {v0}, Lcom/flurry/android/ft;->q(Lcom/flurry/android/ft;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/android/co;->dp:Lcom/flurry/android/ft;

    invoke-static {v1}, Lcom/flurry/android/ft;->o(Lcom/flurry/android/ft;)Landroid/view/View;

    move-result-object v1

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v3, 0x11

    invoke-direct {v2, v4, v4, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 328
    iget-object v0, p0, Lcom/flurry/android/co;->dp:Lcom/flurry/android/ft;

    invoke-static {v0}, Lcom/flurry/android/ft;->n(Lcom/flurry/android/ft;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 329
    iget-object v1, p0, Lcom/flurry/android/co;->dp:Lcom/flurry/android/ft;

    invoke-static {v1}, Lcom/flurry/android/ft;->q(Lcom/flurry/android/ft;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 334
    iget-object v0, p0, Lcom/flurry/android/co;->dp:Lcom/flurry/android/ft;

    invoke-static {v0}, Lcom/flurry/android/ft;->r(Lcom/flurry/android/ft;)Landroid/app/Dialog;

    move-result-object v0

    if-nez v0, :cond_2

    .line 336
    iget-object v0, p0, Lcom/flurry/android/co;->dp:Lcom/flurry/android/ft;

    new-instance v1, Lcom/flurry/android/dv;

    iget-object v2, p0, Lcom/flurry/android/co;->dp:Lcom/flurry/android/ft;

    invoke-static {v2}, Lcom/flurry/android/ft;->m(Lcom/flurry/android/ft;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x1030011

    invoke-direct {v1, p0, v2, v3}, Lcom/flurry/android/dv;-><init>(Lcom/flurry/android/co;Landroid/content/Context;I)V

    invoke-static {v0, v1}, Lcom/flurry/android/ft;->a(Lcom/flurry/android/ft;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 361
    iget-object v0, p0, Lcom/flurry/android/co;->dp:Lcom/flurry/android/ft;

    invoke-static {v0}, Lcom/flurry/android/ft;->r(Lcom/flurry/android/ft;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 363
    iget-object v0, p0, Lcom/flurry/android/co;->dp:Lcom/flurry/android/ft;

    invoke-static {v0}, Lcom/flurry/android/ft;->r(Lcom/flurry/android/ft;)Landroid/app/Dialog;

    move-result-object v0

    new-instance v1, Lcom/flurry/android/dt;

    invoke-direct {v1, p0}, Lcom/flurry/android/dt;-><init>(Lcom/flurry/android/co;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 373
    iget-object v0, p0, Lcom/flurry/android/co;->dp:Lcom/flurry/android/ft;

    invoke-static {v0}, Lcom/flurry/android/ft;->r(Lcom/flurry/android/ft;)Landroid/app/Dialog;

    move-result-object v0

    new-instance v1, Lcom/flurry/android/ds;

    invoke-direct {v1, p0}, Lcom/flurry/android/ds;-><init>(Lcom/flurry/android/co;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 384
    iget-object v0, p0, Lcom/flurry/android/co;->dp:Lcom/flurry/android/ft;

    invoke-static {v0}, Lcom/flurry/android/ft;->r(Lcom/flurry/android/ft;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 385
    iget-object v0, p0, Lcom/flurry/android/co;->dp:Lcom/flurry/android/ft;

    invoke-static {v0}, Lcom/flurry/android/ft;->r(Lcom/flurry/android/ft;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 388
    :cond_2
    iget-object v0, p0, Lcom/flurry/android/co;->dp:Lcom/flurry/android/ft;

    invoke-static {v0}, Lcom/flurry/android/ft;->n(Lcom/flurry/android/ft;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p2, v5}, Lcom/flurry/android/fd;->a(Landroid/app/Activity;IZ)Z

    .line 390
    iget-object v0, p0, Lcom/flurry/android/co;->dp:Lcom/flurry/android/ft;

    iget-object v0, v0, Lcom/flurry/android/ft;->R:Lcom/flurry/android/FlurryAds;

    iget-object v1, p0, Lcom/flurry/android/co;->dp:Lcom/flurry/android/ft;

    invoke-static {v1}, Lcom/flurry/android/ft;->m(Lcom/flurry/android/ft;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/android/co;->dp:Lcom/flurry/android/ft;

    iget-object v2, v2, Lcom/flurry/android/ft;->T:Lcom/flurry/android/AdUnit;

    invoke-virtual {v2}, Lcom/flurry/android/AdUnit;->getAdSpace()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/flurry/android/FlurryAds;->onOpenFullScreen(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public final onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lcom/flurry/android/co;->dp:Lcom/flurry/android/ft;

    invoke-static {v0}, Lcom/flurry/android/ft;->n(Lcom/flurry/android/ft;)Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 297
    :goto_0
    return-void

    .line 295
    :cond_0
    iget-object v0, p0, Lcom/flurry/android/co;->dp:Lcom/flurry/android/ft;

    invoke-static {v0}, Lcom/flurry/android/ft;->n(Lcom/flurry/android/ft;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/flurry/android/co;->onShowCustomView(Landroid/view/View;ILandroid/webkit/WebChromeClient$CustomViewCallback;)V

    goto :goto_0
.end method
