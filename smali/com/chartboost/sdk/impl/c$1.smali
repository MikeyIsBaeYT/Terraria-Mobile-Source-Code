.class Lcom/chartboost/sdk/impl/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/impl/c;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/chartboost/sdk/impl/c;

.field private final synthetic b:Lcom/chartboost/sdk/impl/l;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/impl/c;Lcom/chartboost/sdk/impl/l;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/chartboost/sdk/impl/c$1;->a:Lcom/chartboost/sdk/impl/c;

    iput-object p2, p0, Lcom/chartboost/sdk/impl/c$1;->b:Lcom/chartboost/sdk/impl/l;

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 141
    :try_start_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/c$1;->a:Lcom/chartboost/sdk/impl/c;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/c;->a(Lcom/chartboost/sdk/impl/c;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    iget-object v1, p0, Lcom/chartboost/sdk/impl/c$1;->b:Lcom/chartboost/sdk/impl/l;

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    :goto_0
    return-void

    .line 142
    :catch_0
    move-exception v0

    goto :goto_0
.end method
