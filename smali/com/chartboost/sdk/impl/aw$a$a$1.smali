.class Lcom/chartboost/sdk/impl/aw$a$a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/impl/aw$a$a;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/chartboost/sdk/Libraries/e$a;

.field final synthetic b:I

.field final synthetic c:Lcom/chartboost/sdk/impl/aw$a$a;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/impl/aw$a$a;Lcom/chartboost/sdk/Libraries/e$a;I)V
    .locals 0

    .prologue
    .line 283
    iput-object p1, p0, Lcom/chartboost/sdk/impl/aw$a$a$1;->c:Lcom/chartboost/sdk/impl/aw$a$a;

    iput-object p2, p0, Lcom/chartboost/sdk/impl/aw$a$a$1;->a:Lcom/chartboost/sdk/Libraries/e$a;

    iput p3, p0, Lcom/chartboost/sdk/impl/aw$a$a$1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 286
    iget-object v0, p0, Lcom/chartboost/sdk/impl/aw$a$a$1;->a:Lcom/chartboost/sdk/Libraries/e$a;

    const-string v1, "deep-link"

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/Libraries/e$a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 287
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/chartboost/sdk/impl/bb;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 288
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/aw$a$a$1;->a:Lcom/chartboost/sdk/Libraries/e$a;

    const-string v1, "link"

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/Libraries/e$a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 289
    :cond_1
    iget-object v1, p0, Lcom/chartboost/sdk/impl/aw$a$a$1;->c:Lcom/chartboost/sdk/impl/aw$a$a;

    iget-object v1, v1, Lcom/chartboost/sdk/impl/aw$a$a;->a:Lcom/chartboost/sdk/impl/aw$a;

    iget-object v1, v1, Lcom/chartboost/sdk/impl/aw$a;->b:Lcom/chartboost/sdk/impl/aw;

    iget-object v2, p0, Lcom/chartboost/sdk/impl/aw$a$a$1;->a:Lcom/chartboost/sdk/Libraries/e$a;

    invoke-virtual {v1, v0, v2}, Lcom/chartboost/sdk/impl/aw;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/e$a;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 290
    iget-object v0, p0, Lcom/chartboost/sdk/impl/aw$a$a$1;->c:Lcom/chartboost/sdk/impl/aw$a$a;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/aw$a$a;->a:Lcom/chartboost/sdk/impl/aw$a;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/aw$a;->b:Lcom/chartboost/sdk/impl/aw;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/aw;->n(Lcom/chartboost/sdk/impl/aw;)Lcom/chartboost/sdk/Model/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/Model/a;->q()Lcom/chartboost/sdk/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/d;->e()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/chartboost/sdk/impl/aw$a$a$1;->a:Lcom/chartboost/sdk/Libraries/e$a;

    const-string v2, "location"

    invoke-virtual {v1, v2}, Lcom/chartboost/sdk/Libraries/e$a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/chartboost/sdk/impl/aw$a$a$1;->a:Lcom/chartboost/sdk/Libraries/e$a;

    const-string v3, "ad_id"

    invoke-virtual {v2, v3}, Lcom/chartboost/sdk/Libraries/e$a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/chartboost/sdk/impl/aw$a$a$1;->b:I

    invoke-static {v0, v1, v2, v3}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 293
    :cond_2
    return-void
.end method
