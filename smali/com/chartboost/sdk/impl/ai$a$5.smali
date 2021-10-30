.class Lcom/chartboost/sdk/impl/ai$a$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/impl/ai$a;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/chartboost/sdk/impl/ai$a;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/impl/ai$a;)V
    .locals 0

    .prologue
    .line 482
    iput-object p1, p0, Lcom/chartboost/sdk/impl/ai$a$5;->a:Lcom/chartboost/sdk/impl/ai$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 484
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a$5;->a:Lcom/chartboost/sdk/impl/ai$a;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/ai$a;->g:Lcom/chartboost/sdk/impl/ai;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/ai;->u(Lcom/chartboost/sdk/impl/ai;)V

    .line 485
    return-void
.end method
