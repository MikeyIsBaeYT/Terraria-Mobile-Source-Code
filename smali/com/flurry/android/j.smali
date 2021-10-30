.class final Lcom/flurry/android/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic B:Lcom/flurry/android/cf;

.field private synthetic C:Lcom/flurry/android/h;


# direct methods
.method constructor <init>(Lcom/flurry/android/h;Lcom/flurry/android/cf;)V
    .locals 0

    .prologue
    .line 429
    iput-object p1, p0, Lcom/flurry/android/j;->C:Lcom/flurry/android/h;

    iput-object p2, p0, Lcom/flurry/android/j;->B:Lcom/flurry/android/cf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 432
    iget-object v0, p0, Lcom/flurry/android/j;->B:Lcom/flurry/android/cf;

    invoke-virtual {v0}, Lcom/flurry/android/cf;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 433
    iget-object v0, p0, Lcom/flurry/android/j;->B:Lcom/flurry/android/cf;

    invoke-virtual {v0}, Lcom/flurry/android/cf;->goBack()V

    .line 437
    :goto_0
    return-void

    .line 435
    :cond_0
    iget-object v0, p0, Lcom/flurry/android/j;->C:Lcom/flurry/android/h;

    iget-object v0, v0, Lcom/flurry/android/h;->u:Lcom/flurry/android/FlurryFullscreenTakeoverActivity;

    invoke-virtual {v0}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->finish()V

    goto :goto_0
.end method
