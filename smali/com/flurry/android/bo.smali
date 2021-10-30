.class final Lcom/flurry/android/bo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/android/BasicWebView$BasicWebViewFullScreenTransitionHandler$BasicWebViewFullScreenTransitionCallback;


# instance fields
.field private dI:Landroid/webkit/WebChromeClient$CustomViewCallback;


# direct methods
.method public constructor <init>(Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 0

    .prologue
    .line 293
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 294
    iput-object p1, p0, Lcom/flurry/android/bo;->dI:Landroid/webkit/WebChromeClient$CustomViewCallback;

    .line 295
    return-void
.end method


# virtual methods
.method public final onBasicWebViewTransitionFromFullScreenFinished()V
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcom/flurry/android/bo;->dI:Landroid/webkit/WebChromeClient$CustomViewCallback;

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/flurry/android/bo;->dI:Landroid/webkit/WebChromeClient$CustomViewCallback;

    invoke-interface {v0}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    .line 302
    :cond_0
    return-void
.end method
