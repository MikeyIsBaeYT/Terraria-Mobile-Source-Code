.class Lcom/chartboost/sdk/impl/ao$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/impl/ao;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/chartboost/sdk/impl/ao;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/impl/ao;)V
    .locals 0

    .prologue
    .line 276
    iput-object p1, p0, Lcom/chartboost/sdk/impl/ao$3;->a:Lcom/chartboost/sdk/impl/ao;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 278
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ao$3;->a:Lcom/chartboost/sdk/impl/ao;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/ao;->b(Lcom/chartboost/sdk/impl/ao;)Lcom/chartboost/sdk/impl/an;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ao$3;->a:Lcom/chartboost/sdk/impl/ao;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/ao;->b(Lcom/chartboost/sdk/impl/ao;)Lcom/chartboost/sdk/impl/an;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/an;->setVisibility(I)V

    .line 280
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ao$3;->a:Lcom/chartboost/sdk/impl/ao;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/ao;->a(Lcom/chartboost/sdk/impl/ao;)Lcom/chartboost/sdk/impl/ai;

    move-result-object v0

    iget-boolean v0, v0, Lcom/chartboost/sdk/impl/ai;->J:Z

    if-eqz v0, :cond_1

    .line 281
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ao$3;->a:Lcom/chartboost/sdk/impl/ao;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/ao;->c(Lcom/chartboost/sdk/impl/ao;)Lcom/chartboost/sdk/impl/ak;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/ak;->setVisibility(I)V

    .line 282
    :cond_1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ao$3;->a:Lcom/chartboost/sdk/impl/ao;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/ao;->d(Lcom/chartboost/sdk/impl/ao;)Lcom/chartboost/sdk/impl/an;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/an;->setVisibility(I)V

    .line 283
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ao$3;->a:Lcom/chartboost/sdk/impl/ao;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/ao;->e(Lcom/chartboost/sdk/impl/ao;)Lcom/chartboost/sdk/impl/bk;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 284
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ao$3;->a:Lcom/chartboost/sdk/impl/ao;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/ao;->e(Lcom/chartboost/sdk/impl/ao;)Lcom/chartboost/sdk/impl/bk;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/bk;->setEnabled(Z)V

    .line 285
    :cond_2
    return-void
.end method
