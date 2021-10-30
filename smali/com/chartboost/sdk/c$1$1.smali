.class Lcom/chartboost/sdk/c$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/c$1;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/chartboost/sdk/c$1;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/c$1;Z)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/chartboost/sdk/c$1$1;->b:Lcom/chartboost/sdk/c$1;

    iput-boolean p2, p0, Lcom/chartboost/sdk/c$1$1;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/chartboost/sdk/c$1$1;->a:Z

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/chartboost/sdk/c$1$1;->b:Lcom/chartboost/sdk/c$1;

    iget-object v0, v0, Lcom/chartboost/sdk/c$1;->d:Lcom/chartboost/sdk/c;

    iget-object v1, p0, Lcom/chartboost/sdk/c$1$1;->b:Lcom/chartboost/sdk/c$1;

    iget-object v1, v1, Lcom/chartboost/sdk/c$1;->a:Lcom/chartboost/sdk/Model/a;

    iget-object v2, p0, Lcom/chartboost/sdk/c$1$1;->b:Lcom/chartboost/sdk/c$1;

    iget-object v2, v2, Lcom/chartboost/sdk/c$1;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/chartboost/sdk/c$1$1;->b:Lcom/chartboost/sdk/c$1;

    iget-object v3, v3, Lcom/chartboost/sdk/c$1;->c:Lcom/chartboost/sdk/c$b;

    invoke-virtual {v0, v1, v2, v3}, Lcom/chartboost/sdk/c;->a(Lcom/chartboost/sdk/Model/a;Ljava/lang/String;Lcom/chartboost/sdk/c$b;)V

    .line 95
    :goto_0
    return-void

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/c$1$1;->b:Lcom/chartboost/sdk/c$1;

    iget-object v0, v0, Lcom/chartboost/sdk/c$1;->d:Lcom/chartboost/sdk/c;

    iget-object v0, v0, Lcom/chartboost/sdk/c;->b:Lcom/chartboost/sdk/impl/bb$a;

    iget-object v1, p0, Lcom/chartboost/sdk/c$1$1;->b:Lcom/chartboost/sdk/c$1;

    iget-object v1, v1, Lcom/chartboost/sdk/c$1;->a:Lcom/chartboost/sdk/Model/a;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/chartboost/sdk/c$1$1;->b:Lcom/chartboost/sdk/c$1;

    iget-object v3, v3, Lcom/chartboost/sdk/c$1;->b:Ljava/lang/String;

    sget-object v4, Lcom/chartboost/sdk/Model/CBError$CBClickError;->AGE_GATE_FAILURE:Lcom/chartboost/sdk/Model/CBError$CBClickError;

    iget-object v5, p0, Lcom/chartboost/sdk/c$1$1;->b:Lcom/chartboost/sdk/c$1;

    iget-object v5, v5, Lcom/chartboost/sdk/c$1;->c:Lcom/chartboost/sdk/c$b;

    invoke-interface/range {v0 .. v5}, Lcom/chartboost/sdk/impl/bb$a;->a(Lcom/chartboost/sdk/Model/a;ZLjava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBClickError;Lcom/chartboost/sdk/c$b;)V

    goto :goto_0
.end method
