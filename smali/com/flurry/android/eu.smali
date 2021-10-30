.class final Lcom/flurry/android/eu;
.super Lcom/flurry/android/cd;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 192
    invoke-direct {p0}, Lcom/flurry/android/cd;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/flurry/android/AdSpaceLayout;)Landroid/view/ViewGroup$LayoutParams;
    .locals 4

    .prologue
    .line 195
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0, p1, p2}, Lcom/flurry/android/eu;->b(Landroid/content/Context;Lcom/flurry/android/AdSpaceLayout;)I

    move-result v1

    invoke-virtual {p0, p1, p2}, Lcom/flurry/android/eu;->c(Landroid/content/Context;Lcom/flurry/android/AdSpaceLayout;)I

    move-result v2

    const/16 v3, 0x11

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    return-object v0
.end method
