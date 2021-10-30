.class Lcom/chartboost/sdk/impl/bb$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/impl/bb$1;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/chartboost/sdk/impl/bb$1;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/impl/bb$1;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lcom/chartboost/sdk/impl/bb$1$1;->b:Lcom/chartboost/sdk/impl/bb$1;

    iput-object p2, p0, Lcom/chartboost/sdk/impl/bb$1$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 111
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bb$1$1;->b:Lcom/chartboost/sdk/impl/bb$1;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/bb$1;->d:Lcom/chartboost/sdk/impl/bb;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/bb$1$1;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/chartboost/sdk/impl/bb$1$1;->b:Lcom/chartboost/sdk/impl/bb$1;

    iget-object v2, v2, Lcom/chartboost/sdk/impl/bb$1;->b:Landroid/app/Activity;

    iget-object v3, p0, Lcom/chartboost/sdk/impl/bb$1$1;->b:Lcom/chartboost/sdk/impl/bb$1;

    iget-object v3, v3, Lcom/chartboost/sdk/impl/bb$1;->c:Lcom/chartboost/sdk/c$b;

    invoke-static {v0, v1, v2, v3}, Lcom/chartboost/sdk/impl/bb;->a(Lcom/chartboost/sdk/impl/bb;Ljava/lang/String;Landroid/content/Context;Lcom/chartboost/sdk/c$b;)V

    .line 112
    return-void
.end method
