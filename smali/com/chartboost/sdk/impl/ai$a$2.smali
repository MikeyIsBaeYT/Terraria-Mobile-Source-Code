.class Lcom/chartboost/sdk/impl/ai$a$2;
.super Lcom/chartboost/sdk/impl/bk;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/impl/ai$a;-><init>(Lcom/chartboost/sdk/impl/ai;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/chartboost/sdk/impl/ai;

.field final synthetic b:Lcom/chartboost/sdk/impl/ai$a;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/impl/ai$a;Landroid/content/Context;Lcom/chartboost/sdk/impl/ai;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lcom/chartboost/sdk/impl/ai$a$2;->b:Lcom/chartboost/sdk/impl/ai$a;

    iput-object p3, p0, Lcom/chartboost/sdk/impl/ai$a$2;->a:Lcom/chartboost/sdk/impl/ai;

    invoke-direct {p0, p2}, Lcom/chartboost/sdk/impl/bk;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/view/MotionEvent;)V
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a$2;->b:Lcom/chartboost/sdk/impl/ai$a;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/ai$a;->e()V

    .line 133
    return-void
.end method
