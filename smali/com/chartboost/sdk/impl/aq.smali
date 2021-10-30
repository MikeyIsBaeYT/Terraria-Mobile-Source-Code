.class public Lcom/chartboost/sdk/impl/aq;
.super Lcom/chartboost/sdk/impl/ap;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Lcom/chartboost/sdk/impl/aw;Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 18
    invoke-direct {p0, p2}, Lcom/chartboost/sdk/impl/ap;-><init>(Landroid/content/Context;)V

    .line 20
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/aq;->a:Landroid/widget/ImageView;

    .line 21
    iget-object v0, p0, Lcom/chartboost/sdk/impl/aq;->a:Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/chartboost/sdk/impl/aq;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 23
    return-void
.end method


# virtual methods
.method public a()I
    .locals 2

    .prologue
    .line 44
    const/16 v0, 0x6e

    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/aq;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBUtility;->a(ILandroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public a(Lcom/chartboost/sdk/Libraries/e$a;I)V
    .locals 6

    .prologue
    .line 27
    invoke-static {}, Lcom/chartboost/sdk/Libraries/CBUtility;->c()Lcom/chartboost/sdk/Libraries/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/f;->b()Z

    move-result v0

    .line 29
    const-string v1, "assets"

    invoke-virtual {p1, v1}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v1

    if-eqz v0, :cond_2

    const-string v0, "portrait"

    :goto_0
    invoke-virtual {v1, v0}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v1

    .line 30
    invoke-virtual {v1}, Lcom/chartboost/sdk/Libraries/e$a;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 31
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 32
    const-string v0, "index"

    invoke-virtual {v5, v0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 33
    const-string v2, ""

    .line 34
    const-string v0, "checksum"

    invoke-virtual {v1, v0}, Lcom/chartboost/sdk/Libraries/e$a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "checksum"

    invoke-virtual {v1, v0}, Lcom/chartboost/sdk/Libraries/e$a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 35
    const-string v0, "checksum"

    invoke-virtual {v1, v0}, Lcom/chartboost/sdk/Libraries/e$a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 37
    :cond_0
    invoke-static {}, Lcom/chartboost/sdk/impl/bc;->a()Lcom/chartboost/sdk/impl/bc;

    move-result-object v0

    const-string v3, "url"

    invoke-virtual {v1, v3}, Lcom/chartboost/sdk/Libraries/e$a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/chartboost/sdk/impl/aq;->a:Landroid/widget/ImageView;

    invoke-virtual/range {v0 .. v5}, Lcom/chartboost/sdk/impl/bc;->a(Ljava/lang/String;Ljava/lang/String;Lcom/chartboost/sdk/impl/bc$b;Landroid/widget/ImageView;Landroid/os/Bundle;)V

    .line 40
    :cond_1
    return-void

    .line 29
    :cond_2
    const-string v0, "landscape"

    goto :goto_0
.end method
