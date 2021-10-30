.class Lcom/chartboost/sdk/e$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/chartboost/sdk/impl/bh$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/e$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/chartboost/sdk/e$2;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/e$2;)V
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Lcom/chartboost/sdk/e$2$1;->a:Lcom/chartboost/sdk/e$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/chartboost/sdk/Model/a;)V
    .locals 2

    .prologue
    .line 144
    invoke-static {}, Lcom/chartboost/sdk/Libraries/CBUtility;->e()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/chartboost/sdk/e$2$1$1;

    invoke-direct {v1, p0, p1}, Lcom/chartboost/sdk/e$2$1$1;-><init>(Lcom/chartboost/sdk/e$2$1;Lcom/chartboost/sdk/Model/a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 150
    invoke-virtual {p1}, Lcom/chartboost/sdk/Model/a;->m()V

    .line 151
    return-void
.end method
