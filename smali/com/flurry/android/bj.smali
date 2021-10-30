.class final Lcom/flurry/android/bj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field private synthetic dp:Lcom/flurry/android/ft;


# direct methods
.method constructor <init>(Lcom/flurry/android/ft;)V
    .locals 0

    .prologue
    .line 1078
    iput-object p1, p0, Lcom/flurry/android/bj;->dp:Lcom/flurry/android/ft;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .prologue
    .line 1081
    iget-object v0, p0, Lcom/flurry/android/bj;->dp:Lcom/flurry/android/ft;

    invoke-static {v0}, Lcom/flurry/android/ft;->b(Lcom/flurry/android/ft;)Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1084
    iget-object v0, p0, Lcom/flurry/android/bj;->dp:Lcom/flurry/android/ft;

    invoke-static {v0}, Lcom/flurry/android/ft;->b(Lcom/flurry/android/ft;)Landroid/webkit/WebView;

    move-result-object v0

    const-string v1, "javascript:if(window.mraid){window.mraid.close();};"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 1086
    :cond_0
    return-void
.end method
