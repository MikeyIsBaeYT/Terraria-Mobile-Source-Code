.class Lcom/chartboost/sdk/e$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/e;->b(Lcom/chartboost/sdk/Model/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/chartboost/sdk/Model/a;

.field final synthetic b:Lcom/chartboost/sdk/e;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/e;Lcom/chartboost/sdk/Model/a;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lcom/chartboost/sdk/e$2;->b:Lcom/chartboost/sdk/e;

    iput-object p2, p0, Lcom/chartboost/sdk/e$2;->a:Lcom/chartboost/sdk/Model/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 128
    iget-object v0, p0, Lcom/chartboost/sdk/e$2;->a:Lcom/chartboost/sdk/Model/a;

    sget-object v1, Lcom/chartboost/sdk/Model/a$b;->e:Lcom/chartboost/sdk/Model/a$b;

    iput-object v1, v0, Lcom/chartboost/sdk/Model/a;->b:Lcom/chartboost/sdk/Model/a$b;

    .line 130
    sget-object v0, Lcom/chartboost/sdk/impl/bh$b;->a:Lcom/chartboost/sdk/impl/bh$b;

    .line 131
    iget-object v1, p0, Lcom/chartboost/sdk/e$2;->a:Lcom/chartboost/sdk/Model/a;

    iget-object v1, v1, Lcom/chartboost/sdk/Model/a;->c:Lcom/chartboost/sdk/Model/a$c;

    sget-object v2, Lcom/chartboost/sdk/Model/a$c;->b:Lcom/chartboost/sdk/Model/a$c;

    if-ne v1, v2, :cond_0

    .line 132
    sget-object v0, Lcom/chartboost/sdk/impl/bh$b;->c:Lcom/chartboost/sdk/impl/bh$b;

    .line 133
    :cond_0
    iget-object v1, p0, Lcom/chartboost/sdk/e$2;->a:Lcom/chartboost/sdk/Model/a;

    invoke-virtual {v1}, Lcom/chartboost/sdk/Model/a;->w()Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v1

    const-string v2, "animation"

    invoke-virtual {v1, v2}, Lcom/chartboost/sdk/Libraries/e$a;->f(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/chartboost/sdk/impl/bh$b;->a(I)Lcom/chartboost/sdk/impl/bh$b;

    move-result-object v1

    .line 134
    if-eqz v1, :cond_1

    move-object v0, v1

    .line 136
    :cond_1
    invoke-static {}, Lcom/chartboost/sdk/b;->f()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 137
    sget-object v0, Lcom/chartboost/sdk/impl/bh$b;->g:Lcom/chartboost/sdk/impl/bh$b;

    .line 139
    :cond_2
    iget-object v1, p0, Lcom/chartboost/sdk/e$2;->a:Lcom/chartboost/sdk/Model/a;

    new-instance v2, Lcom/chartboost/sdk/e$2$1;

    invoke-direct {v2, p0}, Lcom/chartboost/sdk/e$2$1;-><init>(Lcom/chartboost/sdk/e$2;)V

    invoke-static {v0, v1, v2}, Lcom/chartboost/sdk/impl/bh;->b(Lcom/chartboost/sdk/impl/bh$b;Lcom/chartboost/sdk/Model/a;Lcom/chartboost/sdk/impl/bh$a;)V

    .line 153
    return-void
.end method
