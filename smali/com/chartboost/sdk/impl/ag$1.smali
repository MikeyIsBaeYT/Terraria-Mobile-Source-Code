.class Lcom/chartboost/sdk/impl/ag$1;
.super Lcom/chartboost/sdk/impl/bk;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/impl/ag;->a()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/chartboost/sdk/impl/ag;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/impl/ag;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/chartboost/sdk/impl/ag$1;->a:Lcom/chartboost/sdk/impl/ag;

    invoke-direct {p0, p2}, Lcom/chartboost/sdk/impl/bk;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/view/MotionEvent;)V
    .locals 5

    .prologue
    .line 57
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ag$1;->a:Lcom/chartboost/sdk/impl/ag;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/ag;->a:Lcom/chartboost/sdk/impl/ai;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/ai;->p()Lcom/chartboost/sdk/impl/ai$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/ai$a;->h()V

    .line 58
    const-string v0, "install-click"

    iget-object v1, p0, Lcom/chartboost/sdk/impl/ag$1;->a:Lcom/chartboost/sdk/impl/ag;

    iget-object v1, v1, Lcom/chartboost/sdk/impl/ag;->a:Lcom/chartboost/sdk/impl/ai;

    iget-object v1, v1, Lcom/chartboost/sdk/impl/ai;->s:Ljava/lang/String;

    iget-object v2, p0, Lcom/chartboost/sdk/impl/ag$1;->a:Lcom/chartboost/sdk/impl/ag;

    iget-object v2, v2, Lcom/chartboost/sdk/impl/ag;->a:Lcom/chartboost/sdk/impl/ai;

    iget-object v2, v2, Lcom/chartboost/sdk/impl/ai;->n:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 60
    return-void
.end method
