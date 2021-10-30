.class Lcom/chartboost/sdk/impl/al$1;
.super Lcom/chartboost/sdk/impl/bk;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/impl/al;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/chartboost/sdk/impl/al;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/impl/al;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/chartboost/sdk/impl/al$1;->a:Lcom/chartboost/sdk/impl/al;

    invoke-direct {p0, p2}, Lcom/chartboost/sdk/impl/bk;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/view/MotionEvent;)V
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/chartboost/sdk/impl/al$1;->a:Lcom/chartboost/sdk/impl/al;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/al;->a(Lcom/chartboost/sdk/impl/al;)Lcom/chartboost/sdk/impl/bk;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/bk;->setEnabled(Z)V

    .line 78
    iget-object v0, p0, Lcom/chartboost/sdk/impl/al$1;->a:Lcom/chartboost/sdk/impl/al;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/al;->b(Lcom/chartboost/sdk/impl/al;)Lcom/chartboost/sdk/impl/ai;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/ai;->p()Lcom/chartboost/sdk/impl/ai$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/ai$a;->i()V

    .line 79
    return-void
.end method
