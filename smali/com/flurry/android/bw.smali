.class final Lcom/flurry/android/bw;
.super Lcom/flurry/android/cd;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 173
    invoke-direct {p0}, Lcom/flurry/android/cd;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/flurry/android/AdSpaceLayout;)Landroid/view/ViewGroup$LayoutParams;
    .locals 3

    .prologue
    .line 176
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, p1, p2}, Lcom/flurry/android/bw;->b(Landroid/content/Context;Lcom/flurry/android/AdSpaceLayout;)I

    move-result v1

    invoke-virtual {p0, p1, p2}, Lcom/flurry/android/bw;->c(Landroid/content/Context;Lcom/flurry/android/AdSpaceLayout;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method
