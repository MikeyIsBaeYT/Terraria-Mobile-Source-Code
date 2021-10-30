.class final Lcom/flurry/android/ds;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field private synthetic fC:Lcom/flurry/android/co;


# direct methods
.method constructor <init>(Lcom/flurry/android/co;)V
    .locals 0

    .prologue
    .line 374
    iput-object p1, p0, Lcom/flurry/android/ds;->fC:Lcom/flurry/android/co;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Lcom/flurry/android/ds;->fC:Lcom/flurry/android/co;

    iget-object v0, v0, Lcom/flurry/android/co;->dp:Lcom/flurry/android/ft;

    invoke-static {v0}, Lcom/flurry/android/ft;->o(Lcom/flurry/android/ft;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/android/ds;->fC:Lcom/flurry/android/co;

    iget-object v0, v0, Lcom/flurry/android/co;->dp:Lcom/flurry/android/ft;

    invoke-static {v0}, Lcom/flurry/android/ft;->p(Lcom/flurry/android/ft;)Landroid/webkit/WebChromeClient;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 380
    iget-object v0, p0, Lcom/flurry/android/ds;->fC:Lcom/flurry/android/co;

    iget-object v0, v0, Lcom/flurry/android/co;->dp:Lcom/flurry/android/ft;

    invoke-static {v0}, Lcom/flurry/android/ft;->p(Lcom/flurry/android/ft;)Landroid/webkit/WebChromeClient;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebChromeClient;->onHideCustomView()V

    .line 382
    :cond_0
    return-void
.end method
