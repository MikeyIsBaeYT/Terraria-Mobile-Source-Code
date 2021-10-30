.class final Lcom/flurry/android/s;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/view/Window;)V
    .locals 3

    .prologue
    const/high16 v2, 0x1000000

    .line 24
    if-nez p0, :cond_1

    .line 32
    :cond_0
    :goto_0
    return-void

    .line 28
    :cond_1
    sget v0, Lcom/flurry/android/n;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 29
    invoke-virtual {p0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    goto :goto_0
.end method
