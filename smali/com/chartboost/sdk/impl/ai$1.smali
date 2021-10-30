.class Lcom/chartboost/sdk/impl/ai$1;
.super Lcom/chartboost/sdk/impl/bl$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/impl/ai;->n()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/chartboost/sdk/impl/ai;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/impl/ai;)V
    .locals 0

    .prologue
    .line 549
    iput-object p1, p0, Lcom/chartboost/sdk/impl/ai$1;->a:Lcom/chartboost/sdk/impl/ai;

    invoke-direct {p0}, Lcom/chartboost/sdk/impl/bl$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/chartboost/sdk/impl/bl;)V
    .locals 1

    .prologue
    .line 552
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$1;->a:Lcom/chartboost/sdk/impl/ai;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/ai;->p()Lcom/chartboost/sdk/impl/ai$a;

    move-result-object v0

    .line 553
    if-eqz v0, :cond_0

    .line 554
    invoke-static {v0}, Lcom/chartboost/sdk/impl/ai$a;->b(Lcom/chartboost/sdk/impl/ai$a;)Lcom/chartboost/sdk/impl/ao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/ao;->e()V

    .line 555
    :cond_0
    return-void
.end method

.method public a(Lcom/chartboost/sdk/impl/bl;I)V
    .locals 2

    .prologue
    .line 559
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$1;->a:Lcom/chartboost/sdk/impl/ai;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/ai;->p()Lcom/chartboost/sdk/impl/ai$a;

    move-result-object v0

    .line 560
    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    .line 561
    if-eqz v0, :cond_0

    .line 562
    invoke-static {v0}, Lcom/chartboost/sdk/impl/ai$a;->b(Lcom/chartboost/sdk/impl/ai$a;)Lcom/chartboost/sdk/impl/ao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/ao;->e()V

    .line 571
    :cond_0
    :goto_0
    return-void

    .line 565
    :cond_1
    if-eqz v0, :cond_2

    .line 566
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/chartboost/sdk/impl/ai$a;->a(Lcom/chartboost/sdk/impl/ai$a;Z)V

    .line 567
    invoke-static {v0}, Lcom/chartboost/sdk/impl/ai$a;->b(Lcom/chartboost/sdk/impl/ai$a;)Lcom/chartboost/sdk/impl/ao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/ao;->h()V

    .line 569
    :cond_2
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$1;->a:Lcom/chartboost/sdk/impl/ai;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/ai;->w(Lcom/chartboost/sdk/impl/ai;)V

    goto :goto_0
.end method
