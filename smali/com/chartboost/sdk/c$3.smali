.class Lcom/chartboost/sdk/c$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/chartboost/sdk/impl/bb$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/chartboost/sdk/c;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/c;)V
    .locals 0

    .prologue
    .line 234
    iput-object p1, p0, Lcom/chartboost/sdk/c$3;->a:Lcom/chartboost/sdk/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/chartboost/sdk/Model/a;ZLjava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBClickError;Lcom/chartboost/sdk/c$b;)V
    .locals 2

    .prologue
    .line 238
    if-eqz p1, :cond_0

    .line 239
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/chartboost/sdk/Model/a;->o:Z

    .line 240
    invoke-virtual {p1}, Lcom/chartboost/sdk/Model/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 241
    sget-object v0, Lcom/chartboost/sdk/Model/a$b;->e:Lcom/chartboost/sdk/Model/a$b;

    iput-object v0, p1, Lcom/chartboost/sdk/Model/a;->b:Lcom/chartboost/sdk/Model/a$b;

    .line 245
    :cond_0
    if-nez p2, :cond_2

    .line 246
    invoke-static {}, Lcom/chartboost/sdk/b;->d()Lcom/chartboost/sdk/a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 247
    invoke-static {}, Lcom/chartboost/sdk/b;->d()Lcom/chartboost/sdk/a;

    move-result-object v0

    invoke-interface {v0, p3, p4}, Lcom/chartboost/sdk/a;->didFailToRecordClick(Ljava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBClickError;)V

    .line 256
    :cond_1
    :goto_0
    return-void

    .line 249
    :cond_2
    if-eqz p1, :cond_3

    iget-object v0, p1, Lcom/chartboost/sdk/Model/a;->n:Lcom/chartboost/sdk/impl/az;

    if-eqz v0, :cond_3

    .line 250
    iget-object v0, p1, Lcom/chartboost/sdk/Model/a;->n:Lcom/chartboost/sdk/impl/az;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/az;->a(Z)V

    .line 251
    iget-object v0, p1, Lcom/chartboost/sdk/Model/a;->n:Lcom/chartboost/sdk/impl/az;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/az;->s()V

    goto :goto_0

    .line 252
    :cond_3
    if-eqz p5, :cond_1

    .line 253
    invoke-interface {p5}, Lcom/chartboost/sdk/c$b;->a()V

    goto :goto_0
.end method
