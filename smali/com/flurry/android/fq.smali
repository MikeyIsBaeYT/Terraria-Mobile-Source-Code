.class final Lcom/flurry/android/fq;
.super Lcom/flurry/android/cd;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 181
    invoke-direct {p0}, Lcom/flurry/android/cd;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/flurry/android/AdSpaceLayout;)Landroid/view/ViewGroup$LayoutParams;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 184
    new-instance v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    invoke-virtual {p0, p1, p2}, Lcom/flurry/android/fq;->b(Landroid/content/Context;Lcom/flurry/android/AdSpaceLayout;)I

    move-result v1

    invoke-virtual {p0, p1, p2}, Lcom/flurry/android/fq;->c(Landroid/content/Context;Lcom/flurry/android/AdSpaceLayout;)I

    move-result v2

    invoke-direct {v0, v1, v2, v3, v3}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    return-object v0
.end method
