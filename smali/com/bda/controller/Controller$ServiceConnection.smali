.class Lcom/bda/controller/Controller$ServiceConnection;
.super Ljava/lang/Object;
.source "Controller.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bda/controller/Controller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ServiceConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bda/controller/Controller;


# direct methods
.method constructor <init>(Lcom/bda/controller/Controller;)V
    .locals 0

    .prologue
    .line 538
    iput-object p1, p0, Lcom/bda/controller/Controller$ServiceConnection;->this$0:Lcom/bda/controller/Controller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    const/4 v3, 0x5

    const/4 v2, 0x1

    .line 541
    iget-object v0, p0, Lcom/bda/controller/Controller$ServiceConnection;->this$0:Lcom/bda/controller/Controller;

    invoke-static {p2}, Lcom/bda/controller/IControllerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/bda/controller/IControllerService;

    move-result-object v1

    iput-object v1, v0, Lcom/bda/controller/Controller;->mService:Lcom/bda/controller/IControllerService;

    .line 542
    iget-object v0, p0, Lcom/bda/controller/Controller$ServiceConnection;->this$0:Lcom/bda/controller/Controller;

    invoke-virtual {v0}, Lcom/bda/controller/Controller;->registerListener()V

    .line 543
    iget-object v0, p0, Lcom/bda/controller/Controller$ServiceConnection;->this$0:Lcom/bda/controller/Controller;

    invoke-virtual {v0}, Lcom/bda/controller/Controller;->registerMonitor()V

    .line 544
    iget-object v0, p0, Lcom/bda/controller/Controller$ServiceConnection;->this$0:Lcom/bda/controller/Controller;

    iget v0, v0, Lcom/bda/controller/Controller;->mActivityEvent:I

    if-ne v0, v3, :cond_0

    .line 545
    iget-object v0, p0, Lcom/bda/controller/Controller$ServiceConnection;->this$0:Lcom/bda/controller/Controller;

    invoke-virtual {v0, v2, v3}, Lcom/bda/controller/Controller;->sendMessage(II)V

    .line 546
    iget-object v0, p0, Lcom/bda/controller/Controller$ServiceConnection;->this$0:Lcom/bda/controller/Controller;

    const/4 v1, 0x7

    invoke-virtual {v0, v2, v1}, Lcom/bda/controller/Controller;->sendMessage(II)V

    .line 548
    :cond_0
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "className"    # Landroid/content/ComponentName;

    .prologue
    .line 552
    iget-object v0, p0, Lcom/bda/controller/Controller$ServiceConnection;->this$0:Lcom/bda/controller/Controller;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/bda/controller/Controller;->mService:Lcom/bda/controller/IControllerService;

    .line 553
    return-void
.end method
