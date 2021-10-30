.class final Lcom/flurry/android/gk;
.super Landroid/widget/VideoView;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 15
    invoke-direct {p0, p1}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    .line 16
    invoke-virtual {p0, v0}, Lcom/flurry/android/gk;->setFocusable(Z)V

    .line 17
    invoke-virtual {p0, v0}, Lcom/flurry/android/gk;->setFocusableInTouchMode(Z)V

    .line 18
    return-void
.end method


# virtual methods
.method public final seekTo(I)V
    .locals 1

    .prologue
    .line 24
    invoke-virtual {p0}, Lcom/flurry/android/gk;->getCurrentPosition()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 25
    invoke-super {p0, p1}, Landroid/widget/VideoView;->seekTo(I)V

    .line 26
    :cond_0
    return-void
.end method
