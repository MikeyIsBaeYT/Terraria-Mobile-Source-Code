.class abstract Lcom/flurry/android/cd;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method synthetic constructor <init>()V
    .locals 1

    .prologue
    .line 130
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/flurry/android/cd;-><init>(B)V

    return-void
.end method

.method private constructor <init>(B)V
    .locals 0

    .prologue
    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Landroid/content/Context;Lcom/flurry/android/AdSpaceLayout;)Landroid/view/ViewGroup$LayoutParams;
.end method

.method public final b(Landroid/content/Context;Lcom/flurry/android/AdSpaceLayout;)I
    .locals 1

    .prologue
    .line 135
    invoke-virtual {p2}, Lcom/flurry/android/AdSpaceLayout;->getAdWidth()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/flurry/android/AdSpaceLayout;->getAdWidth()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p1, v0}, Lcom/flurry/android/fl;->b(Landroid/content/Context;I)I

    move-result v0

    :goto_1
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public final c(Landroid/content/Context;Lcom/flurry/android/AdSpaceLayout;)I
    .locals 1

    .prologue
    .line 140
    invoke-virtual {p2}, Lcom/flurry/android/AdSpaceLayout;->getAdHeight()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/flurry/android/AdSpaceLayout;->getAdHeight()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p1, v0}, Lcom/flurry/android/fl;->b(Landroid/content/Context;I)I

    move-result v0

    :goto_1
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/flurry/android/cd;->m()I

    move-result v0

    goto :goto_1
.end method

.method public m()I
    .locals 1

    .prologue
    .line 157
    const/4 v0, -0x2

    return v0
.end method
