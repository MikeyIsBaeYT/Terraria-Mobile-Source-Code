.class final Lcom/chartboost/sdk/impl/bd$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/impl/bd;->o()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 464
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 466
    invoke-static {}, Lcom/chartboost/sdk/impl/bd;->h()Lcom/chartboost/sdk/Model/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/Model/a;->w()Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v0

    invoke-static {v0}, Lcom/chartboost/sdk/impl/bd;->c(Lcom/chartboost/sdk/Libraries/e$a;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 467
    invoke-static {}, Lcom/chartboost/sdk/impl/bd;->h()Lcom/chartboost/sdk/Model/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/Model/a;->q()Lcom/chartboost/sdk/d;

    move-result-object v0

    invoke-static {}, Lcom/chartboost/sdk/impl/bd;->h()Lcom/chartboost/sdk/Model/a;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/chartboost/sdk/d;->a(Lcom/chartboost/sdk/Model/a;Z)V

    .line 470
    :goto_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/chartboost/sdk/impl/bd;->b(Lcom/chartboost/sdk/Model/a;)Lcom/chartboost/sdk/Model/a;

    .line 471
    return-void

    .line 469
    :cond_0
    invoke-static {}, Lcom/chartboost/sdk/impl/bd;->h()Lcom/chartboost/sdk/Model/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/Model/a;->q()Lcom/chartboost/sdk/d;

    move-result-object v0

    invoke-static {}, Lcom/chartboost/sdk/impl/bd;->h()Lcom/chartboost/sdk/Model/a;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/chartboost/sdk/d;->a(Lcom/chartboost/sdk/Model/a;Z)V

    goto :goto_0
.end method
