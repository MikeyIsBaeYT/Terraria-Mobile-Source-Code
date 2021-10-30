.class final Lcom/flurry/android/ab;
.super Landroid/webkit/WebChromeClient;
.source "SourceFile"


# instance fields
.field private synthetic bR:Lcom/flurry/android/cf;


# direct methods
.method synthetic constructor <init>(Lcom/flurry/android/cf;)V
    .locals 1

    .prologue
    .line 134
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/flurry/android/ab;-><init>(Lcom/flurry/android/cf;B)V

    return-void
.end method

.method private constructor <init>(Lcom/flurry/android/cf;B)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lcom/flurry/android/ab;->bR:Lcom/flurry/android/cf;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onHideCustomView()V
    .locals 2

    .prologue
    .line 160
    iget-object v0, p0, Lcom/flurry/android/ab;->bR:Lcom/flurry/android/cf;

    invoke-static {v0}, Lcom/flurry/android/cf;->d(Lcom/flurry/android/cf;)Lcom/flurry/android/aq;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/flurry/android/ab;->bR:Lcom/flurry/android/cf;

    invoke-static {v0}, Lcom/flurry/android/cf;->d(Lcom/flurry/android/cf;)Lcom/flurry/android/aq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/aq;->U()V

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/flurry/android/ab;->bR:Lcom/flurry/android/cf;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/flurry/android/cf;->b(Lcom/flurry/android/cf;Z)Z

    .line 165
    return-void
.end method

.method public final onShowCustomView(Landroid/view/View;ILandroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 3

    .prologue
    .line 150
    iget-object v0, p0, Lcom/flurry/android/ab;->bR:Lcom/flurry/android/cf;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/flurry/android/cf;->b(Lcom/flurry/android/cf;Z)Z

    .line 152
    iget-object v0, p0, Lcom/flurry/android/ab;->bR:Lcom/flurry/android/cf;

    invoke-static {v0}, Lcom/flurry/android/cf;->d(Lcom/flurry/android/cf;)Lcom/flurry/android/aq;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/flurry/android/ab;->bR:Lcom/flurry/android/cf;

    invoke-static {v0}, Lcom/flurry/android/cf;->d(Lcom/flurry/android/cf;)Lcom/flurry/android/aq;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/android/ab;->bR:Lcom/flurry/android/cf;

    new-instance v2, Lcom/flurry/android/bo;

    invoke-direct {v2, p3}, Lcom/flurry/android/bo;-><init>(Landroid/webkit/WebChromeClient$CustomViewCallback;)V

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/flurry/android/aq;->a(Lcom/flurry/android/cf;Landroid/view/View;ILcom/flurry/android/BasicWebView$BasicWebViewFullScreenTransitionHandler$BasicWebViewFullScreenTransitionCallback;)V

    .line 156
    :cond_0
    return-void
.end method

.method public final onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 4

    .prologue
    .line 138
    iget-object v0, p0, Lcom/flurry/android/ab;->bR:Lcom/flurry/android/cf;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/flurry/android/cf;->b(Lcom/flurry/android/cf;Z)Z

    .line 140
    iget-object v0, p0, Lcom/flurry/android/ab;->bR:Lcom/flurry/android/cf;

    invoke-static {v0}, Lcom/flurry/android/cf;->d(Lcom/flurry/android/cf;)Lcom/flurry/android/aq;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/flurry/android/ab;->bR:Lcom/flurry/android/cf;

    invoke-static {v0}, Lcom/flurry/android/cf;->d(Lcom/flurry/android/cf;)Lcom/flurry/android/aq;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/android/ab;->bR:Lcom/flurry/android/cf;

    new-instance v2, Lcom/flurry/android/bo;

    invoke-direct {v2, p2}, Lcom/flurry/android/bo;-><init>(Landroid/webkit/WebChromeClient$CustomViewCallback;)V

    iget-object v3, v0, Lcom/flurry/android/aq;->u:Lcom/flurry/android/FlurryFullscreenTakeoverActivity;

    invoke-virtual {v3}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->getRequestedOrientation()I

    move-result v3

    invoke-virtual {v0, v1, p1, v3, v2}, Lcom/flurry/android/aq;->a(Lcom/flurry/android/cf;Landroid/view/View;ILcom/flurry/android/BasicWebView$BasicWebViewFullScreenTransitionHandler$BasicWebViewFullScreenTransitionCallback;)V

    .line 144
    :cond_0
    return-void
.end method
