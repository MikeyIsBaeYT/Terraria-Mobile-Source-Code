.class final Lcom/flurry/android/dt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# instance fields
.field private synthetic fC:Lcom/flurry/android/co;


# direct methods
.method constructor <init>(Lcom/flurry/android/co;)V
    .locals 0

    .prologue
    .line 364
    iput-object p1, p0, Lcom/flurry/android/dt;->fC:Lcom/flurry/android/co;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onShow(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 367
    iget-object v0, p0, Lcom/flurry/android/dt;->fC:Lcom/flurry/android/co;

    iget-object v0, v0, Lcom/flurry/android/co;->dp:Lcom/flurry/android/ft;

    invoke-static {v0}, Lcom/flurry/android/ft;->s(Lcom/flurry/android/ft;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 369
    iget-object v0, p0, Lcom/flurry/android/dt;->fC:Lcom/flurry/android/co;

    iget-object v0, v0, Lcom/flurry/android/co;->dp:Lcom/flurry/android/ft;

    invoke-static {v0}, Lcom/flurry/android/ft;->s(Lcom/flurry/android/ft;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V

    .line 371
    :cond_0
    return-void
.end method
