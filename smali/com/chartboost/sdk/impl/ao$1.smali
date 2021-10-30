.class Lcom/chartboost/sdk/impl/ao$1;
.super Lcom/chartboost/sdk/impl/bk;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/impl/ao;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/chartboost/sdk/impl/ao;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/impl/ao;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/chartboost/sdk/impl/ao$1;->a:Lcom/chartboost/sdk/impl/ao;

    invoke-direct {p0, p2}, Lcom/chartboost/sdk/impl/bk;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/view/MotionEvent;)V
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 92
    new-array v0, v3, [Lcom/chartboost/sdk/Libraries/e$b;

    const/4 v1, 0x0

    const-string v2, "paused"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$b;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/chartboost/sdk/Libraries/e;->a([Lcom/chartboost/sdk/Libraries/e$b;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v0

    .line 93
    iget-object v1, p0, Lcom/chartboost/sdk/impl/ao$1;->a:Lcom/chartboost/sdk/impl/ao;

    invoke-static {v1}, Lcom/chartboost/sdk/impl/ao;->a(Lcom/chartboost/sdk/impl/ao;)Lcom/chartboost/sdk/impl/ai;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/chartboost/sdk/impl/ai;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/e$a;)Z

    .line 94
    const-string v0, "install-button"

    iget-object v1, p0, Lcom/chartboost/sdk/impl/ao$1;->a:Lcom/chartboost/sdk/impl/ao;

    invoke-static {v1}, Lcom/chartboost/sdk/impl/ao;->a(Lcom/chartboost/sdk/impl/ao;)Lcom/chartboost/sdk/impl/ai;

    move-result-object v1

    iget-object v1, v1, Lcom/chartboost/sdk/impl/ai;->s:Ljava/lang/String;

    iget-object v2, p0, Lcom/chartboost/sdk/impl/ao$1;->a:Lcom/chartboost/sdk/impl/ao;

    invoke-static {v2}, Lcom/chartboost/sdk/impl/ao;->a(Lcom/chartboost/sdk/impl/ao;)Lcom/chartboost/sdk/impl/ai;

    move-result-object v2

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

    .line 96
    return-void
.end method
