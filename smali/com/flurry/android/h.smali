.class final Lcom/flurry/android/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic u:Lcom/flurry/android/FlurryFullscreenTakeoverActivity;


# direct methods
.method synthetic constructor <init>(Lcom/flurry/android/FlurryFullscreenTakeoverActivity;)V
    .locals 1

    .prologue
    .line 409
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/flurry/android/h;-><init>(Lcom/flurry/android/FlurryFullscreenTakeoverActivity;B)V

    return-void
.end method

.method private constructor <init>(Lcom/flurry/android/FlurryFullscreenTakeoverActivity;B)V
    .locals 0

    .prologue
    .line 409
    iput-object p1, p0, Lcom/flurry/android/h;->u:Lcom/flurry/android/FlurryFullscreenTakeoverActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/flurry/android/cf;Ljava/lang/String;Z)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 412
    const/4 v0, 0x0

    .line 413
    invoke-static {p2}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->v(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 414
    iget-object v0, p0, Lcom/flurry/android/h;->u:Lcom/flurry/android/FlurryFullscreenTakeoverActivity;

    new-instance v2, Landroid/widget/VideoView;

    iget-object v3, p0, Lcom/flurry/android/h;->u:Lcom/flurry/android/FlurryFullscreenTakeoverActivity;

    invoke-direct {v2, v3}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v2}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->a(Lcom/flurry/android/FlurryFullscreenTakeoverActivity;Landroid/widget/VideoView;)Landroid/widget/VideoView;

    .line 415
    iget-object v0, p0, Lcom/flurry/android/h;->u:Lcom/flurry/android/FlurryFullscreenTakeoverActivity;

    invoke-static {v0}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->a(Lcom/flurry/android/FlurryFullscreenTakeoverActivity;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setFocusable(Z)V

    .line 416
    iget-object v0, p0, Lcom/flurry/android/h;->u:Lcom/flurry/android/FlurryFullscreenTakeoverActivity;

    invoke-static {v0}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->a(Lcom/flurry/android/FlurryFullscreenTakeoverActivity;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setFocusableInTouchMode(Z)V

    .line 417
    iget-object v0, p0, Lcom/flurry/android/h;->u:Lcom/flurry/android/FlurryFullscreenTakeoverActivity;

    invoke-static {v0, p3}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->a(Lcom/flurry/android/FlurryFullscreenTakeoverActivity;Z)Z

    .line 418
    iget-object v0, p0, Lcom/flurry/android/h;->u:Lcom/flurry/android/FlurryFullscreenTakeoverActivity;

    invoke-static {v0, p2}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->a(Lcom/flurry/android/FlurryFullscreenTakeoverActivity;Ljava/lang/String;)V

    :cond_0
    :goto_0
    move v0, v1

    .line 442
    :cond_1
    return v0

    .line 420
    :cond_2
    iget-object v2, p0, Lcom/flurry/android/h;->u:Lcom/flurry/android/FlurryFullscreenTakeoverActivity;

    invoke-static {v2, p2}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->b(Lcom/flurry/android/FlurryFullscreenTakeoverActivity;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 422
    if-nez p3, :cond_3

    .line 423
    iget-object v0, p0, Lcom/flurry/android/h;->u:Lcom/flurry/android/FlurryFullscreenTakeoverActivity;

    invoke-virtual {p1}, Lcom/flurry/android/cf;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, p2, v2}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->a(Lcom/flurry/android/FlurryFullscreenTakeoverActivity;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p3

    .line 426
    :cond_3
    invoke-static {}, Lcom/flurry/android/FlurryAds;->getInstance()Lcom/flurry/android/FlurryAds;

    move-result-object v0

    .line 427
    iget-object v2, p0, Lcom/flurry/android/h;->u:Lcom/flurry/android/FlurryFullscreenTakeoverActivity;

    iget-object v3, p0, Lcom/flurry/android/h;->u:Lcom/flurry/android/FlurryFullscreenTakeoverActivity;

    invoke-static {v3}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->b(Lcom/flurry/android/FlurryFullscreenTakeoverActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, p2, v3}, Lcom/flurry/android/FlurryAds;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    if-eqz p3, :cond_0

    .line 429
    new-instance v0, Lcom/flurry/android/j;

    invoke-direct {v0, p0, p1}, Lcom/flurry/android/j;-><init>(Lcom/flurry/android/h;Lcom/flurry/android/cf;)V

    invoke-virtual {p1, v0}, Lcom/flurry/android/cf;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
