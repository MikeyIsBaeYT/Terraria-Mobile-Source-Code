.class Lcom/chartboost/sdk/impl/br$b;
.super Landroid/webkit/WebView;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "SetJavaScriptEnabled"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/impl/br;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/chartboost/sdk/impl/br;


# direct methods
.method public constructor <init>(Lcom/chartboost/sdk/impl/br;Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 74
    iput-object p1, p0, Lcom/chartboost/sdk/impl/br$b;->a:Lcom/chartboost/sdk/impl/br;

    .line 75
    invoke-direct {p0, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 76
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/br$b;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 77
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/br$b;->setBackgroundColor(I)V

    .line 78
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/br$b;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 79
    return-void
.end method


# virtual methods
.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 82
    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/br$b;->a:Lcom/chartboost/sdk/impl/br;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/br;->a(Lcom/chartboost/sdk/impl/br;)V

    .line 85
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method
