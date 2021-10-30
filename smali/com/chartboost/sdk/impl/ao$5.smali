.class Lcom/chartboost/sdk/impl/ao$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/impl/ao;->e()V
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
    .line 387
    iput-object p1, p0, Lcom/chartboost/sdk/impl/ao$5;->a:Lcom/chartboost/sdk/impl/ao;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 389
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ao$5;->a:Lcom/chartboost/sdk/impl/ao;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/ao;->f(Lcom/chartboost/sdk/impl/ao;)Lcom/chartboost/sdk/impl/bg;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/bg;->setVisibility(I)V

    .line 390
    return-void
.end method
