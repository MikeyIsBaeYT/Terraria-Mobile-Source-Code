.class Lcom/bda/controller/Controller$StateRunnable;
.super Ljava/lang/Object;
.source "Controller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bda/controller/Controller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StateRunnable"
.end annotation


# instance fields
.field final mEvent:Lcom/bda/controller/StateEvent;

.field final synthetic this$0:Lcom/bda/controller/Controller;


# direct methods
.method public constructor <init>(Lcom/bda/controller/Controller;Lcom/bda/controller/StateEvent;)V
    .locals 0
    .param p2, "event"    # Lcom/bda/controller/StateEvent;

    .prologue
    .line 559
    iput-object p1, p0, Lcom/bda/controller/Controller$StateRunnable;->this$0:Lcom/bda/controller/Controller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 560
    iput-object p2, p0, Lcom/bda/controller/Controller$StateRunnable;->mEvent:Lcom/bda/controller/StateEvent;

    .line 561
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 565
    iget-object v0, p0, Lcom/bda/controller/Controller$StateRunnable;->this$0:Lcom/bda/controller/Controller;

    iget-object v0, v0, Lcom/bda/controller/Controller;->mListener:Lcom/bda/controller/ControllerListener;

    if-eqz v0, :cond_0

    .line 566
    iget-object v0, p0, Lcom/bda/controller/Controller$StateRunnable;->this$0:Lcom/bda/controller/Controller;

    iget-object v0, v0, Lcom/bda/controller/Controller;->mListener:Lcom/bda/controller/ControllerListener;

    iget-object v1, p0, Lcom/bda/controller/Controller$StateRunnable;->mEvent:Lcom/bda/controller/StateEvent;

    invoke-interface {v0, v1}, Lcom/bda/controller/ControllerListener;->onStateEvent(Lcom/bda/controller/StateEvent;)V

    .line 568
    :cond_0
    return-void
.end method
