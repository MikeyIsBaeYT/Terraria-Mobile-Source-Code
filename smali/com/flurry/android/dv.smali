.class final Lcom/flurry/android/dv;
.super Landroid/app/Dialog;
.source "SourceFile"


# instance fields
.field private synthetic fC:Lcom/flurry/android/co;


# direct methods
.method constructor <init>(Lcom/flurry/android/co;Landroid/content/Context;I)V
    .locals 0

    .prologue
    .line 338
    iput-object p1, p0, Lcom/flurry/android/dv;->fC:Lcom/flurry/android/co;

    invoke-direct {p0, p2, p3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    .line 342
    const/4 v0, 0x0

    .line 343
    iget-object v1, p0, Lcom/flurry/android/dv;->fC:Lcom/flurry/android/co;

    iget-object v1, v1, Lcom/flurry/android/co;->dp:Lcom/flurry/android/ft;

    invoke-static {v1}, Lcom/flurry/android/ft;->n(Lcom/flurry/android/ft;)Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 345
    iget-object v0, p0, Lcom/flurry/android/dv;->fC:Lcom/flurry/android/co;

    iget-object v0, v0, Lcom/flurry/android/co;->dp:Lcom/flurry/android/ft;

    invoke-static {v0}, Lcom/flurry/android/ft;->n(Lcom/flurry/android/ft;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 347
    :cond_0
    return v0
.end method

.method public final dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    .line 353
    const/4 v0, 0x0

    .line 354
    iget-object v1, p0, Lcom/flurry/android/dv;->fC:Lcom/flurry/android/co;

    iget-object v1, v1, Lcom/flurry/android/co;->dp:Lcom/flurry/android/ft;

    invoke-static {v1}, Lcom/flurry/android/ft;->n(Lcom/flurry/android/ft;)Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 356
    iget-object v0, p0, Lcom/flurry/android/dv;->fC:Lcom/flurry/android/co;

    iget-object v0, v0, Lcom/flurry/android/co;->dp:Lcom/flurry/android/ft;

    invoke-static {v0}, Lcom/flurry/android/ft;->n(Lcom/flurry/android/ft;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 358
    :cond_0
    return v0
.end method
