.class public Lcom/chartboost/sdk/impl/br$a;
.super Lcom/chartboost/sdk/f$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/impl/br;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public b:Landroid/webkit/WebView;

.field final synthetic c:Lcom/chartboost/sdk/impl/br;


# direct methods
.method public constructor <init>(Lcom/chartboost/sdk/impl/br;Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 33
    iput-object p1, p0, Lcom/chartboost/sdk/impl/br$a;->c:Lcom/chartboost/sdk/impl/br;

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/chartboost/sdk/f$a;-><init>(Lcom/chartboost/sdk/f;Landroid/content/Context;)V

    .line 35
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/br$a;->setFocusable(Z)V

    .line 36
    new-instance v0, Lcom/chartboost/sdk/impl/br$b;

    invoke-direct {v0, p1, p2}, Lcom/chartboost/sdk/impl/br$b;-><init>(Lcom/chartboost/sdk/impl/br;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/br$a;->b:Landroid/webkit/WebView;

    .line 37
    iget-object v0, p0, Lcom/chartboost/sdk/impl/br$a;->b:Landroid/webkit/WebView;

    new-instance v1, Lcom/chartboost/sdk/impl/br$c;

    invoke-direct {v1, p1, v5}, Lcom/chartboost/sdk/impl/br$c;-><init>(Lcom/chartboost/sdk/impl/br;Lcom/chartboost/sdk/impl/br$1;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 38
    iget-object v0, p0, Lcom/chartboost/sdk/impl/br$a;->b:Landroid/webkit/WebView;

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/br$a;->addView(Landroid/view/View;)V

    .line 39
    iget-object v0, p0, Lcom/chartboost/sdk/impl/br$a;->b:Landroid/webkit/WebView;

    const-string v1, "file:///android_asset/"

    const-string v3, "text/html"

    const-string v4, "utf-8"

    move-object v2, p3

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    return-void
.end method


# virtual methods
.method protected a(II)V
    .locals 0

    .prologue
    .line 45
    return-void
.end method
