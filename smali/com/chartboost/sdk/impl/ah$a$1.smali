.class Lcom/chartboost/sdk/impl/ah$a$1;
.super Lcom/chartboost/sdk/impl/bk;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/impl/ah$a;-><init>(Lcom/chartboost/sdk/impl/ah;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/chartboost/sdk/impl/ah;

.field final synthetic b:Lcom/chartboost/sdk/impl/ah$a;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/impl/ah$a;Landroid/content/Context;Lcom/chartboost/sdk/impl/ah;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/chartboost/sdk/impl/ah$a$1;->b:Lcom/chartboost/sdk/impl/ah$a;

    iput-object p3, p0, Lcom/chartboost/sdk/impl/ah$a$1;->a:Lcom/chartboost/sdk/impl/ah;

    invoke-direct {p0, p2}, Lcom/chartboost/sdk/impl/bk;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/view/MotionEvent;)V
    .locals 3

    .prologue
    .line 66
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ah$a$1;->b:Lcom/chartboost/sdk/impl/ah$a;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/chartboost/sdk/impl/ah$a;->a(FF)V

    .line 67
    return-void
.end method
