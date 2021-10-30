.class public Lcom/chartboost/sdk/impl/at;
.super Lcom/chartboost/sdk/impl/ap;
.source "SourceFile"


# instance fields
.field private a:Landroid/webkit/WebView;

.field private b:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Lcom/chartboost/sdk/impl/aw;Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 26
    invoke-direct {p0, p2}, Lcom/chartboost/sdk/impl/ap;-><init>(Landroid/content/Context;)V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chartboost/sdk/impl/at;->b:Landroid/view/View$OnClickListener;

    .line 28
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/at;->a:Landroid/webkit/WebView;

    .line 29
    iget-object v0, p0, Lcom/chartboost/sdk/impl/at;->a:Landroid/webkit/WebView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/chartboost/sdk/impl/at;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 31
    iget-object v0, p0, Lcom/chartboost/sdk/impl/at;->a:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 32
    iget-object v0, p0, Lcom/chartboost/sdk/impl/at;->a:Landroid/webkit/WebView;

    new-instance v1, Lcom/chartboost/sdk/impl/at$1;

    invoke-direct {v1, p0}, Lcom/chartboost/sdk/impl/at$1;-><init>(Lcom/chartboost/sdk/impl/at;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 48
    return-void
.end method

.method static synthetic a(Lcom/chartboost/sdk/impl/at;)Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/chartboost/sdk/impl/at;->b:Landroid/view/View$OnClickListener;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 2

    .prologue
    .line 71
    const/16 v0, 0x64

    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/at;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBUtility;->a(ILandroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public a(Lcom/chartboost/sdk/Libraries/e$a;I)V
    .locals 6

    .prologue
    .line 58
    const-string v0, "html"

    invoke-virtual {p1, v0}, Lcom/chartboost/sdk/Libraries/e$a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 59
    if-eqz v2, :cond_0

    .line 61
    :try_start_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/at;->a:Landroid/webkit/WebView;

    const-string v1, "file:///android_res/"

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    :cond_0
    :goto_0
    return-void

    .line 63
    :catch_0
    move-exception v0

    .line 64
    const-string v1, "AppCellWebView"

    const-string v2, "Exception raised loading data into webview"

    invoke-static {v1, v2, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "clickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 52
    invoke-super {p0, p1}, Lcom/chartboost/sdk/impl/ap;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    iput-object p1, p0, Lcom/chartboost/sdk/impl/at;->b:Landroid/view/View$OnClickListener;

    .line 54
    return-void
.end method
