.class Lcom/chartboost/sdk/d$2;
.super Lcom/chartboost/sdk/impl/az$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/d;->k(Lcom/chartboost/sdk/Model/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/chartboost/sdk/Model/a;

.field final synthetic b:Lcom/chartboost/sdk/d;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/d;Lcom/chartboost/sdk/Model/a;)V
    .locals 0

    .prologue
    .line 318
    iput-object p1, p0, Lcom/chartboost/sdk/d$2;->b:Lcom/chartboost/sdk/d;

    iput-object p2, p0, Lcom/chartboost/sdk/d$2;->a:Lcom/chartboost/sdk/Model/a;

    invoke-direct {p0}, Lcom/chartboost/sdk/impl/az$d;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/chartboost/sdk/Libraries/e$a;Lcom/chartboost/sdk/impl/az;)V
    .locals 2

    .prologue
    .line 321
    invoke-static {}, Lcom/chartboost/sdk/b;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chartboost/sdk/d$2;->b:Lcom/chartboost/sdk/d;

    iget-object v1, p0, Lcom/chartboost/sdk/d$2;->a:Lcom/chartboost/sdk/Model/a;

    iget-object v1, v1, Lcom/chartboost/sdk/Model/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/d;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 322
    iget-object v0, p0, Lcom/chartboost/sdk/d$2;->b:Lcom/chartboost/sdk/d;

    iget-object v1, p0, Lcom/chartboost/sdk/d$2;->a:Lcom/chartboost/sdk/Model/a;

    iget-object v1, v1, Lcom/chartboost/sdk/Model/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/d;->b(Ljava/lang/String;)V

    .line 323
    :cond_0
    return-void
.end method
