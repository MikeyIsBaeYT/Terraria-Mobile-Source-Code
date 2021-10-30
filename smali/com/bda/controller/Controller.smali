.class public final Lcom/bda/controller/Controller;
.super Ljava/lang/Object;
.source "Controller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bda/controller/Controller$IControllerListenerStub;,
        Lcom/bda/controller/Controller$IControllerMonitorStub;,
        Lcom/bda/controller/Controller$KeyRunnable;,
        Lcom/bda/controller/Controller$MotionRunnable;,
        Lcom/bda/controller/Controller$ServiceConnection;,
        Lcom/bda/controller/Controller$StateRunnable;
    }
.end annotation


# static fields
.field public static final ACTION_CONNECTED:I = 0x1

.field public static final ACTION_CONNECTING:I = 0x2

.field public static final ACTION_DISCONNECTED:I = 0x0

.field public static final ACTION_DOWN:I = 0x0

.field public static final ACTION_FALSE:I = 0x0

.field public static final ACTION_TRUE:I = 0x1

.field public static final ACTION_UP:I = 0x1

.field public static final ACTION_VERSION_MOGA:I = 0x0

.field public static final ACTION_VERSION_MOGAPRO:I = 0x1

.field public static final AXIS_LTRIGGER:I = 0x11

.field public static final AXIS_RTRIGGER:I = 0x12

.field public static final AXIS_RZ:I = 0xe

.field public static final AXIS_X:I = 0x0

.field public static final AXIS_Y:I = 0x1

.field public static final AXIS_Z:I = 0xb

.field static final CONTROLLER_ID:I = 0x1

.field public static final INFO_ACTIVE_DEVICE_COUNT:I = 0x2

.field public static final INFO_KNOWN_DEVICE_COUNT:I = 0x1

.field public static final INFO_UNKNOWN:I = 0x0

.field public static final KEYCODE_BUTTON_A:I = 0x60

.field public static final KEYCODE_BUTTON_B:I = 0x61

.field public static final KEYCODE_BUTTON_L1:I = 0x66

.field public static final KEYCODE_BUTTON_L2:I = 0x68

.field public static final KEYCODE_BUTTON_R1:I = 0x67

.field public static final KEYCODE_BUTTON_R2:I = 0x69

.field public static final KEYCODE_BUTTON_SELECT:I = 0x6d

.field public static final KEYCODE_BUTTON_START:I = 0x6c

.field public static final KEYCODE_BUTTON_THUMBL:I = 0x6a

.field public static final KEYCODE_BUTTON_THUMBR:I = 0x6b

.field public static final KEYCODE_BUTTON_X:I = 0x63

.field public static final KEYCODE_BUTTON_Y:I = 0x64

.field public static final KEYCODE_DPAD_DOWN:I = 0x14

.field public static final KEYCODE_DPAD_LEFT:I = 0x15

.field public static final KEYCODE_DPAD_RIGHT:I = 0x16

.field public static final KEYCODE_DPAD_UP:I = 0x13

.field public static final KEYCODE_UNKNOWN:I = 0x0

.field static final LEGACY_KEYCODE_BUTTON_X:I = 0x62

.field static final LEGACY_KEYCODE_BUTTON_Y:I = 0x63

.field public static final STATE_CONNECTION:I = 0x1

.field public static final STATE_CURRENT_PRODUCT_VERSION:I = 0x4

.field public static final STATE_POWER_LOW:I = 0x2

.field public static final STATE_SELECTED_VERSION:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final STATE_SUPPORTED_PRODUCT_VERSION:I = 0x3

.field public static final STATE_SUPPORTED_VERSION:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final STATE_UNKNOWN:I


# instance fields
.field mActivityEvent:I

.field final mContext:Landroid/content/Context;

.field mHandler:Landroid/os/Handler;

.field mIsBound:Z

.field mListener:Lcom/bda/controller/ControllerListener;

.field final mListenerStub:Lcom/bda/controller/IControllerListener$Stub;

.field mMonitor:Lcom/bda/controller/ControllerMonitor;

.field final mMonitorStub:Lcom/bda/controller/IControllerMonitor$Stub;

.field mService:Lcom/bda/controller/IControllerService;

.field final mServiceConnection:Lcom/bda/controller/Controller$ServiceConnection;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 207
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bda/controller/Controller;->mIsBound:Z

    .line 208
    iput-object v1, p0, Lcom/bda/controller/Controller;->mService:Lcom/bda/controller/IControllerService;

    .line 209
    new-instance v0, Lcom/bda/controller/Controller$IControllerListenerStub;

    invoke-direct {v0, p0}, Lcom/bda/controller/Controller$IControllerListenerStub;-><init>(Lcom/bda/controller/Controller;)V

    iput-object v0, p0, Lcom/bda/controller/Controller;->mListenerStub:Lcom/bda/controller/IControllerListener$Stub;

    .line 210
    new-instance v0, Lcom/bda/controller/Controller$IControllerMonitorStub;

    invoke-direct {v0, p0}, Lcom/bda/controller/Controller$IControllerMonitorStub;-><init>(Lcom/bda/controller/Controller;)V

    iput-object v0, p0, Lcom/bda/controller/Controller;->mMonitorStub:Lcom/bda/controller/IControllerMonitor$Stub;

    .line 211
    new-instance v0, Lcom/bda/controller/Controller$ServiceConnection;

    invoke-direct {v0, p0}, Lcom/bda/controller/Controller$ServiceConnection;-><init>(Lcom/bda/controller/Controller;)V

    iput-object v0, p0, Lcom/bda/controller/Controller;->mServiceConnection:Lcom/bda/controller/Controller$ServiceConnection;

    .line 212
    const/4 v0, 0x6

    iput v0, p0, Lcom/bda/controller/Controller;->mActivityEvent:I

    .line 213
    iput-object v1, p0, Lcom/bda/controller/Controller;->mHandler:Landroid/os/Handler;

    .line 214
    iput-object v1, p0, Lcom/bda/controller/Controller;->mListener:Lcom/bda/controller/ControllerListener;

    .line 215
    iput-object v1, p0, Lcom/bda/controller/Controller;->mMonitor:Lcom/bda/controller/ControllerMonitor;

    .line 218
    iput-object p1, p0, Lcom/bda/controller/Controller;->mContext:Landroid/content/Context;

    .line 219
    return-void
.end method

.method public static final getInstance(Landroid/content/Context;)Lcom/bda/controller/Controller;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 203
    new-instance v0, Lcom/bda/controller/Controller;

    invoke-direct {v0, p0}, Lcom/bda/controller/Controller;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public allowNewConnections()V
    .locals 1

    .prologue
    .line 425
    iget-object v0, p0, Lcom/bda/controller/Controller;->mService:Lcom/bda/controller/IControllerService;

    if-eqz v0, :cond_0

    .line 427
    :try_start_0
    iget-object v0, p0, Lcom/bda/controller/Controller;->mService:Lcom/bda/controller/IControllerService;

    invoke-interface {v0}, Lcom/bda/controller/IControllerService;->allowNewConnections()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 431
    :cond_0
    :goto_0
    return-void

    .line 428
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public disallowNewConnections()V
    .locals 1

    .prologue
    .line 434
    iget-object v0, p0, Lcom/bda/controller/Controller;->mService:Lcom/bda/controller/IControllerService;

    if-eqz v0, :cond_0

    .line 436
    :try_start_0
    iget-object v0, p0, Lcom/bda/controller/Controller;->mService:Lcom/bda/controller/IControllerService;

    invoke-interface {v0}, Lcom/bda/controller/IControllerService;->disallowNewConnections()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 440
    :cond_0
    :goto_0
    return-void

    .line 437
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final exit()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 225
    invoke-virtual {p0, v0, v0}, Lcom/bda/controller/Controller;->setListener(Lcom/bda/controller/ControllerListener;Landroid/os/Handler;)V

    .line 226
    invoke-virtual {p0, v0}, Lcom/bda/controller/Controller;->setMonitor(Lcom/bda/controller/ControllerMonitor;)V

    .line 228
    iget-boolean v0, p0, Lcom/bda/controller/Controller;->mIsBound:Z

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/bda/controller/Controller;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/bda/controller/Controller;->mServiceConnection:Lcom/bda/controller/Controller$ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 230
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bda/controller/Controller;->mIsBound:Z

    .line 232
    :cond_0
    return-void
.end method

.method public final getAxisValue(I)F
    .locals 2
    .param p1, "axis"    # I

    .prologue
    .line 243
    iget-object v0, p0, Lcom/bda/controller/Controller;->mService:Lcom/bda/controller/IControllerService;

    if-eqz v0, :cond_0

    .line 245
    :try_start_0
    iget-object v0, p0, Lcom/bda/controller/Controller;->mService:Lcom/bda/controller/IControllerService;

    const/4 v1, 0x1

    invoke-interface {v0, v1, p1}, Lcom/bda/controller/IControllerService;->getAxisValue(II)F
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 249
    :goto_0
    return v0

    .line 246
    :catch_0
    move-exception v0

    .line 249
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getInfo(I)I
    .locals 1
    .param p1, "info"    # I

    .prologue
    .line 260
    iget-object v0, p0, Lcom/bda/controller/Controller;->mService:Lcom/bda/controller/IControllerService;

    if-eqz v0, :cond_0

    .line 262
    :try_start_0
    iget-object v0, p0, Lcom/bda/controller/Controller;->mService:Lcom/bda/controller/IControllerService;

    invoke-interface {v0, p1}, Lcom/bda/controller/IControllerService;->getInfo(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 266
    :goto_0
    return v0

    .line 263
    :catch_0
    move-exception v0

    .line 266
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getKeyCode(I)I
    .locals 4
    .param p1, "keyCode"    # I

    .prologue
    const/4 v1, 0x1

    .line 278
    iget-object v2, p0, Lcom/bda/controller/Controller;->mService:Lcom/bda/controller/IControllerService;

    if-eqz v2, :cond_0

    .line 280
    :try_start_0
    iget-object v2, p0, Lcom/bda/controller/Controller;->mService:Lcom/bda/controller/IControllerService;

    const/4 v3, 0x1

    invoke-interface {v2, v3, p1}, Lcom/bda/controller/IControllerService;->getKeyCode2(II)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 297
    :cond_0
    :goto_0
    return v1

    .line 281
    :catch_0
    move-exception v0

    .line 283
    .local v0, "e":Landroid/os/RemoteException;
    packed-switch p1, :pswitch_data_0

    .line 292
    :goto_1
    :try_start_1
    iget-object v2, p0, Lcom/bda/controller/Controller;->mService:Lcom/bda/controller/IControllerService;

    const/4 v3, 0x1

    invoke-interface {v2, v3, p1}, Lcom/bda/controller/IControllerService;->getKeyCode(II)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    goto :goto_0

    .line 285
    :pswitch_0
    const/16 p1, 0x62

    .line 286
    goto :goto_1

    .line 289
    :pswitch_1
    const/16 p1, 0x63

    goto :goto_1

    .line 293
    :catch_1
    move-exception v2

    goto :goto_0

    .line 283
    nop

    :pswitch_data_0
    .packed-switch 0x63
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final getState(I)I
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 310
    iget-object v0, p0, Lcom/bda/controller/Controller;->mService:Lcom/bda/controller/IControllerService;

    if-eqz v0, :cond_0

    .line 312
    :try_start_0
    iget-object v0, p0, Lcom/bda/controller/Controller;->mService:Lcom/bda/controller/IControllerService;

    const/4 v1, 0x1

    invoke-interface {v0, v1, p1}, Lcom/bda/controller/IControllerService;->getState(II)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 316
    :goto_0
    return v0

    .line 313
    :catch_0
    move-exception v0

    .line 316
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final init()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 323
    iget-boolean v1, p0, Lcom/bda/controller/Controller;->mIsBound:Z

    if-nez v1, :cond_0

    .line 324
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/bda/controller/IControllerService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 325
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/bda/controller/Controller;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 326
    iget-object v1, p0, Lcom/bda/controller/Controller;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/bda/controller/Controller;->mServiceConnection:Lcom/bda/controller/Controller$ServiceConnection;

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 327
    iput-boolean v3, p0, Lcom/bda/controller/Controller;->mIsBound:Z

    .line 329
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    iget-boolean v1, p0, Lcom/bda/controller/Controller;->mIsBound:Z

    return v1
.end method

.method public isAllowingNewConnections()V
    .locals 1

    .prologue
    .line 443
    iget-object v0, p0, Lcom/bda/controller/Controller;->mService:Lcom/bda/controller/IControllerService;

    if-eqz v0, :cond_0

    .line 445
    :try_start_0
    iget-object v0, p0, Lcom/bda/controller/Controller;->mService:Lcom/bda/controller/IControllerService;

    invoke-interface {v0}, Lcom/bda/controller/IControllerService;->isAllowingNewConnections()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 449
    :cond_0
    :goto_0
    return-void

    .line 446
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final onPause()V
    .locals 2

    .prologue
    .line 336
    const/4 v0, 0x6

    iput v0, p0, Lcom/bda/controller/Controller;->mActivityEvent:I

    .line 337
    const/4 v0, 0x1

    iget v1, p0, Lcom/bda/controller/Controller;->mActivityEvent:I

    invoke-virtual {p0, v0, v1}, Lcom/bda/controller/Controller;->sendMessage(II)V

    .line 338
    invoke-virtual {p0}, Lcom/bda/controller/Controller;->registerListener()V

    .line 339
    return-void
.end method

.method public final onResume()V
    .locals 2

    .prologue
    .line 345
    const/4 v0, 0x5

    iput v0, p0, Lcom/bda/controller/Controller;->mActivityEvent:I

    .line 346
    const/4 v0, 0x1

    iget v1, p0, Lcom/bda/controller/Controller;->mActivityEvent:I

    invoke-virtual {p0, v0, v1}, Lcom/bda/controller/Controller;->sendMessage(II)V

    .line 347
    invoke-virtual {p0}, Lcom/bda/controller/Controller;->registerListener()V

    .line 348
    return-void
.end method

.method registerListener()V
    .locals 4

    .prologue
    .line 351
    iget-object v1, p0, Lcom/bda/controller/Controller;->mListener:Lcom/bda/controller/ControllerListener;

    if-eqz v1, :cond_0

    .line 352
    iget-object v1, p0, Lcom/bda/controller/Controller;->mService:Lcom/bda/controller/IControllerService;

    if-eqz v1, :cond_0

    .line 354
    :try_start_0
    iget-object v1, p0, Lcom/bda/controller/Controller;->mService:Lcom/bda/controller/IControllerService;

    iget-object v2, p0, Lcom/bda/controller/Controller;->mListenerStub:Lcom/bda/controller/IControllerListener$Stub;

    iget v3, p0, Lcom/bda/controller/Controller;->mActivityEvent:I

    invoke-interface {v1, v2, v3}, Lcom/bda/controller/IControllerService;->registerListener2(Lcom/bda/controller/IControllerListener;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 363
    :cond_0
    :goto_0
    return-void

    .line 355
    :catch_0
    move-exception v0

    .line 357
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    iget-object v1, p0, Lcom/bda/controller/Controller;->mService:Lcom/bda/controller/IControllerService;

    iget-object v2, p0, Lcom/bda/controller/Controller;->mListenerStub:Lcom/bda/controller/IControllerListener$Stub;

    iget v3, p0, Lcom/bda/controller/Controller;->mActivityEvent:I

    invoke-interface {v1, v2, v3}, Lcom/bda/controller/IControllerService;->registerListener(Lcom/bda/controller/IControllerListener;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 358
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method registerMonitor()V
    .locals 3

    .prologue
    .line 366
    iget-object v0, p0, Lcom/bda/controller/Controller;->mMonitor:Lcom/bda/controller/ControllerMonitor;

    if-eqz v0, :cond_0

    .line 367
    iget-object v0, p0, Lcom/bda/controller/Controller;->mService:Lcom/bda/controller/IControllerService;

    if-eqz v0, :cond_0

    .line 369
    :try_start_0
    iget-object v0, p0, Lcom/bda/controller/Controller;->mService:Lcom/bda/controller/IControllerService;

    iget-object v1, p0, Lcom/bda/controller/Controller;->mMonitorStub:Lcom/bda/controller/IControllerMonitor$Stub;

    iget v2, p0, Lcom/bda/controller/Controller;->mActivityEvent:I

    invoke-interface {v0, v1, v2}, Lcom/bda/controller/IControllerService;->registerMonitor(Lcom/bda/controller/IControllerMonitor;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 374
    :cond_0
    :goto_0
    return-void

    .line 370
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method sendMessage(II)V
    .locals 1
    .param p1, "msg"    # I
    .param p2, "param"    # I

    .prologue
    .line 377
    iget-object v0, p0, Lcom/bda/controller/Controller;->mService:Lcom/bda/controller/IControllerService;

    if-eqz v0, :cond_0

    .line 379
    :try_start_0
    iget-object v0, p0, Lcom/bda/controller/Controller;->mService:Lcom/bda/controller/IControllerService;

    invoke-interface {v0, p1, p2}, Lcom/bda/controller/IControllerService;->sendMessage(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 383
    :cond_0
    :goto_0
    return-void

    .line 380
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final setListener(Lcom/bda/controller/ControllerListener;Landroid/os/Handler;)V
    .locals 0
    .param p1, "listener"    # Lcom/bda/controller/ControllerListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 394
    invoke-virtual {p0}, Lcom/bda/controller/Controller;->unregisterListener()V

    .line 395
    iput-object p1, p0, Lcom/bda/controller/Controller;->mListener:Lcom/bda/controller/ControllerListener;

    .line 396
    iput-object p2, p0, Lcom/bda/controller/Controller;->mHandler:Landroid/os/Handler;

    .line 397
    invoke-virtual {p0}, Lcom/bda/controller/Controller;->registerListener()V

    .line 398
    return-void
.end method

.method public final setMonitor(Lcom/bda/controller/ControllerMonitor;)V
    .locals 0
    .param p1, "monitor"    # Lcom/bda/controller/ControllerMonitor;

    .prologue
    .line 401
    invoke-virtual {p0}, Lcom/bda/controller/Controller;->unregisterMonitor()V

    .line 402
    iput-object p1, p0, Lcom/bda/controller/Controller;->mMonitor:Lcom/bda/controller/ControllerMonitor;

    .line 403
    invoke-virtual {p0}, Lcom/bda/controller/Controller;->registerMonitor()V

    .line 404
    return-void
.end method

.method unregisterListener()V
    .locals 3

    .prologue
    .line 407
    iget-object v0, p0, Lcom/bda/controller/Controller;->mService:Lcom/bda/controller/IControllerService;

    if-eqz v0, :cond_0

    .line 409
    :try_start_0
    iget-object v0, p0, Lcom/bda/controller/Controller;->mService:Lcom/bda/controller/IControllerService;

    iget-object v1, p0, Lcom/bda/controller/Controller;->mListenerStub:Lcom/bda/controller/IControllerListener$Stub;

    iget v2, p0, Lcom/bda/controller/Controller;->mActivityEvent:I

    invoke-interface {v0, v1, v2}, Lcom/bda/controller/IControllerService;->unregisterListener(Lcom/bda/controller/IControllerListener;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 413
    :cond_0
    :goto_0
    return-void

    .line 410
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method unregisterMonitor()V
    .locals 3

    .prologue
    .line 416
    iget-object v0, p0, Lcom/bda/controller/Controller;->mService:Lcom/bda/controller/IControllerService;

    if-eqz v0, :cond_0

    .line 418
    :try_start_0
    iget-object v0, p0, Lcom/bda/controller/Controller;->mService:Lcom/bda/controller/IControllerService;

    iget-object v1, p0, Lcom/bda/controller/Controller;->mMonitorStub:Lcom/bda/controller/IControllerMonitor$Stub;

    iget v2, p0, Lcom/bda/controller/Controller;->mActivityEvent:I

    invoke-interface {v0, v1, v2}, Lcom/bda/controller/IControllerService;->unregisterMonitor(Lcom/bda/controller/IControllerMonitor;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 422
    :cond_0
    :goto_0
    return-void

    .line 419
    :catch_0
    move-exception v0

    goto :goto_0
.end method
