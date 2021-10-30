.class Lcom/bda/controller/Controller$KeyRunnable;
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
    name = "KeyRunnable"
.end annotation


# instance fields
.field final mEvent:Lcom/bda/controller/KeyEvent;

.field final synthetic this$0:Lcom/bda/controller/Controller;


# direct methods
.method public constructor <init>(Lcom/bda/controller/Controller;Lcom/bda/controller/KeyEvent;)V
    .locals 0
    .param p2, "event"    # Lcom/bda/controller/KeyEvent;

    .prologue
    .line 511
    iput-object p1, p0, Lcom/bda/controller/Controller$KeyRunnable;->this$0:Lcom/bda/controller/Controller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 512
    iput-object p2, p0, Lcom/bda/controller/Controller$KeyRunnable;->mEvent:Lcom/bda/controller/KeyEvent;

    .line 513
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 517
    iget-object v0, p0, Lcom/bda/controller/Controller$KeyRunnable;->this$0:Lcom/bda/controller/Controller;

    iget-object v0, v0, Lcom/bda/controller/Controller;->mListener:Lcom/bda/controller/ControllerListener;

    if-eqz v0, :cond_0

    .line 518
    iget-object v0, p0, Lcom/bda/controller/Controller$KeyRunnable;->this$0:Lcom/bda/controller/Controller;

    iget-object v0, v0, Lcom/bda/controller/Controller;->mListener:Lcom/bda/controller/ControllerListener;

    iget-object v1, p0, Lcom/bda/controller/Controller$KeyRunnable;->mEvent:Lcom/bda/controller/KeyEvent;

    invoke-interface {v0, v1}, Lcom/bda/controller/ControllerListener;->onKeyEvent(Lcom/bda/controller/KeyEvent;)V

    .line 520
    :cond_0
    return-void
.end method
