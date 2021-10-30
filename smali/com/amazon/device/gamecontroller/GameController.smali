.class public Lcom/amazon/device/gamecontroller/GameController;
.super Ljava/lang/Object;
.source "GameController.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "UseSparseArrays"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/device/gamecontroller/GameController$PlayerNumberNotFoundException;,
        Lcom/amazon/device/gamecontroller/GameController$DeviceNotFoundException;
    }
.end annotation


# static fields
.field public static final AXIS_STICK_LEFT_X:I = 0x0

.field public static final AXIS_STICK_LEFT_Y:I = 0x1

.field public static final AXIS_STICK_RIGHT_X:I = 0xb

.field public static final AXIS_STICK_RIGHT_Y:I = 0xe

.field public static final AXIS_TRIGGER_LEFT:I = 0x17

.field public static final AXIS_TRIGGER_RIGHT:I = 0x16

.field public static final BUTTON_A:I = 0x60

.field public static final BUTTON_B:I = 0x61

.field public static final BUTTON_DPAD_CENTER:I = 0x17

.field public static final BUTTON_DPAD_DOWN:I = 0x14

.field public static final BUTTON_DPAD_LEFT:I = 0x15

.field public static final BUTTON_DPAD_RIGHT:I = 0x16

.field public static final BUTTON_DPAD_UP:I = 0x13

.field public static final BUTTON_SHOULDER_LEFT:I = 0x66

.field public static final BUTTON_SHOULDER_RIGHT:I = 0x67

.field public static final BUTTON_STICK_LEFT:I = 0x6a

.field public static final BUTTON_STICK_RIGHT:I = 0x6b

.field public static final BUTTON_TRIGGER_LEFT:I = 0x68

.field public static final BUTTON_TRIGGER_RIGHT:I = 0x69

.field public static final BUTTON_X:I = 0x63

.field public static final BUTTON_Y:I = 0x64

.field public static final DEAD_ZONE:F

.field public static final MAX_PLAYERS:I = 0x4


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    sput v0, Lcom/amazon/device/gamecontroller/GameController;->DEAD_ZONE:F

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static declared-synchronized getControllerByPlayer(I)Lcom/amazon/device/gamecontroller/GameController;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/device/gamecontroller/GameController$PlayerNumberNotFoundException;
        }
    .end annotation

    .prologue
    .line 39
    const-class v1, Lcom/amazon/device/gamecontroller/GameController;

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Stub! You are bundling a stubbed jar in the apk! Please move it to the classpath instead."

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getDeviceId(I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/device/gamecontroller/GameController$DeviceNotFoundException;
        }
    .end annotation

    .prologue
    .line 37
    const-class v1, Lcom/amazon/device/gamecontroller/GameController;

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Stub! You are bundling a stubbed jar in the apk! Please move it to the classpath instead."

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getPlayerCount()I
    .locals 3

    .prologue
    .line 38
    const-class v1, Lcom/amazon/device/gamecontroller/GameController;

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Stub! You are bundling a stubbed jar in the apk! Please move it to the classpath instead."

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getPlayerNumber(I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/device/gamecontroller/GameController$PlayerNumberNotFoundException;
        }
    .end annotation

    .prologue
    .line 36
    const-class v1, Lcom/amazon/device/gamecontroller/GameController;

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Stub! You are bundling a stubbed jar in the apk! Please move it to the classpath instead."

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 35
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub! You are bundling a stubbed jar in the apk! Please move it to the classpath instead."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static declared-synchronized onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/device/gamecontroller/GameController$DeviceNotFoundException;
        }
    .end annotation

    .prologue
    .line 42
    const-class v1, Lcom/amazon/device/gamecontroller/GameController;

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Stub! You are bundling a stubbed jar in the apk! Please move it to the classpath instead."

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/device/gamecontroller/GameController$DeviceNotFoundException;
        }
    .end annotation

    .prologue
    .line 40
    const-class v1, Lcom/amazon/device/gamecontroller/GameController;

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Stub! You are bundling a stubbed jar in the apk! Please move it to the classpath instead."

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/device/gamecontroller/GameController$DeviceNotFoundException;
        }
    .end annotation

    .prologue
    .line 41
    const-class v1, Lcom/amazon/device/gamecontroller/GameController;

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Stub! You are bundling a stubbed jar in the apk! Please move it to the classpath instead."

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized startFrame()V
    .locals 3

    .prologue
    .line 48
    const-class v1, Lcom/amazon/device/gamecontroller/GameController;

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Stub! You are bundling a stubbed jar in the apk! Please move it to the classpath instead."

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public declared-synchronized getAxisValue(I)F
    .locals 2

    .prologue
    .line 43
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub! You are bundling a stubbed jar in the apk! Please move it to the classpath instead."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isButtonPressed(I)Z
    .locals 2

    .prologue
    .line 44
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub! You are bundling a stubbed jar in the apk! Please move it to the classpath instead."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized wasAxisChanged(I)Z
    .locals 2

    .prologue
    .line 47
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub! You are bundling a stubbed jar in the apk! Please move it to the classpath instead."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized wasButtonPressed(I)Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 45
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub! You are bundling a stubbed jar in the apk! Please move it to the classpath instead."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized wasButtonReleased(I)Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 46
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub! You are bundling a stubbed jar in the apk! Please move it to the classpath instead."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
