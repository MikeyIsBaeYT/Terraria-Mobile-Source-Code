.class Lcom/chartboost/sdk/impl/ai$a$1;
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
    .line 114
    iput-object p1, p0, Lcom/chartboost/sdk/impl/ai$a$1;->b:Lcom/chartboost/sdk/impl/ai$a;

    iput-object p3, p0, Lcom/chartboost/sdk/impl/ai$a$1;->a:Lcom/chartboost/sdk/impl/ai;

    invoke-direct {p0, p2}, Lcom/chartboost/sdk/impl/bk;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/view/MotionEvent;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 117
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a$1;->b:Lcom/chartboost/sdk/impl/ai$a;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/ai$a;->g:Lcom/chartboost/sdk/impl/ai;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/ai;->c(Lcom/chartboost/sdk/impl/ai;)Lcom/chartboost/sdk/Model/a;

    move-result-object v0

    iget-object v0, v0, Lcom/chartboost/sdk/Model/a;->e:Lcom/chartboost/sdk/Model/a$d;

    sget-object v1, Lcom/chartboost/sdk/Model/a$d;->c:Lcom/chartboost/sdk/Model/a$d;

    if-ne v0, v1, :cond_0

    .line 118
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a$1;->b:Lcom/chartboost/sdk/impl/ai$a;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/ai$a;->a(Lcom/chartboost/sdk/impl/ai$a;)Lcom/chartboost/sdk/impl/aj;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/impl/aj;->a(Z)V

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a$1;->b:Lcom/chartboost/sdk/impl/ai$a;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/ai$a;->g:Lcom/chartboost/sdk/impl/ai;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/ai;->p:Lcom/chartboost/sdk/impl/ai$b;

    sget-object v1, Lcom/chartboost/sdk/impl/ai$b;->b:Lcom/chartboost/sdk/impl/ai$b;

    if-ne v0, v1, :cond_1

    .line 120
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a$1;->b:Lcom/chartboost/sdk/impl/ai$a;

    invoke-static {v0, v2}, Lcom/chartboost/sdk/impl/ai$a;->a(Lcom/chartboost/sdk/impl/ai$a;Z)V

    .line 121
    :cond_1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a$1;->b:Lcom/chartboost/sdk/impl/ai$a;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/ai$a;->g:Lcom/chartboost/sdk/impl/ai;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/ai;->s:Ljava/lang/String;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/ai$a$1;->b:Lcom/chartboost/sdk/impl/ai$a;

    iget-object v1, v1, Lcom/chartboost/sdk/impl/ai$a;->g:Lcom/chartboost/sdk/impl/ai;

    invoke-static {v1}, Lcom/chartboost/sdk/impl/ai;->d(Lcom/chartboost/sdk/impl/ai;)Lcom/chartboost/sdk/Model/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chartboost/sdk/Model/a;->p()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Tracking/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a$1;->b:Lcom/chartboost/sdk/impl/ai$a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/chartboost/sdk/impl/ai$a;->b(Lcom/chartboost/sdk/impl/ai$a;Z)V

    .line 123
    return-void
.end method
