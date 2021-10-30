.class Lcom/bda/controller/Controller$IControllerMonitorStub;
.super Lcom/bda/controller/IControllerMonitor$Stub;
.source "Controller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bda/controller/Controller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IControllerMonitorStub"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bda/controller/Controller;


# direct methods
.method constructor <init>(Lcom/bda/controller/Controller;)V
    .locals 0

    .prologue
    .line 499
    iput-object p1, p0, Lcom/bda/controller/Controller$IControllerMonitorStub;->this$0:Lcom/bda/controller/Controller;

    invoke-direct {p0}, Lcom/bda/controller/IControllerMonitor$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onLog(IILjava/lang/String;)V
    .locals 1
    .param p1, "level"    # I
    .param p2, "id"    # I
    .param p3, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 502
    iget-object v0, p0, Lcom/bda/controller/Controller$IControllerMonitorStub;->this$0:Lcom/bda/controller/Controller;

    iget-object v0, v0, Lcom/bda/controller/Controller;->mMonitor:Lcom/bda/controller/ControllerMonitor;

    if-eqz v0, :cond_0

    .line 503
    iget-object v0, p0, Lcom/bda/controller/Controller$IControllerMonitorStub;->this$0:Lcom/bda/controller/Controller;

    iget-object v0, v0, Lcom/bda/controller/Controller;->mMonitor:Lcom/bda/controller/ControllerMonitor;

    invoke-interface {v0, p1, p2, p3}, Lcom/bda/controller/ControllerMonitor;->onLog(IILjava/lang/String;)V

    .line 505
    :cond_0
    return-void
.end method
