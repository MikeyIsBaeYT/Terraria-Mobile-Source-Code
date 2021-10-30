.class public abstract Lcom/bda/controller/IControllerListener$Stub;
.super Landroid/os/Binder;
.source "IControllerListener.java"

# interfaces
.implements Lcom/bda/controller/IControllerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bda/controller/IControllerListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bda/controller/IControllerListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.bda.controller.IControllerListener"

.field static final TRANSACTION_onKeyEvent:I = 0x1

.field static final TRANSACTION_onMotionEvent:I = 0x2

.field static final TRANSACTION_onStateEvent:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "com.bda.controller.IControllerListener"

    invoke-virtual {p0, p0, v0}, Lcom/bda/controller/IControllerListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/bda/controller/IControllerListener;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 24
    if-nez p0, :cond_0

    .line 25
    const/4 v0, 0x0

    .line 31
    :goto_0
    return-object v0

    .line 27
    :cond_0
    const-string v1, "com.bda.controller.IControllerListener"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/bda/controller/IControllerListener;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Lcom/bda/controller/IControllerListener;

    goto :goto_0

    .line 31
    :cond_1
    new-instance v0, Lcom/bda/controller/IControllerListener$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/bda/controller/IControllerListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 35
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 39
    sparse-switch p1, :sswitch_data_0

    .line 89
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_0
    return v1

    .line 43
    :sswitch_0
    const-string v2, "com.bda.controller.IControllerListener"

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 48
    :sswitch_1
    const-string v2, "com.bda.controller.IControllerListener"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    .line 51
    sget-object v2, Lcom/bda/controller/KeyEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bda/controller/KeyEvent;

    .line 56
    .local v0, "_arg0":Lcom/bda/controller/KeyEvent;
    :goto_1
    invoke-virtual {p0, v0}, Lcom/bda/controller/IControllerListener$Stub;->onKeyEvent(Lcom/bda/controller/KeyEvent;)V

    .line 57
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 54
    .end local v0    # "_arg0":Lcom/bda/controller/KeyEvent;
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcom/bda/controller/KeyEvent;
    goto :goto_1

    .line 62
    .end local v0    # "_arg0":Lcom/bda/controller/KeyEvent;
    :sswitch_2
    const-string v2, "com.bda.controller.IControllerListener"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    .line 65
    sget-object v2, Lcom/bda/controller/MotionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bda/controller/MotionEvent;

    .line 70
    .local v0, "_arg0":Lcom/bda/controller/MotionEvent;
    :goto_2
    invoke-virtual {p0, v0}, Lcom/bda/controller/IControllerListener$Stub;->onMotionEvent(Lcom/bda/controller/MotionEvent;)V

    .line 71
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 68
    .end local v0    # "_arg0":Lcom/bda/controller/MotionEvent;
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcom/bda/controller/MotionEvent;
    goto :goto_2

    .line 76
    .end local v0    # "_arg0":Lcom/bda/controller/MotionEvent;
    :sswitch_3
    const-string v2, "com.bda.controller.IControllerListener"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2

    .line 79
    sget-object v2, Lcom/bda/controller/StateEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bda/controller/StateEvent;

    .line 84
    .local v0, "_arg0":Lcom/bda/controller/StateEvent;
    :goto_3
    invoke-virtual {p0, v0}, Lcom/bda/controller/IControllerListener$Stub;->onStateEvent(Lcom/bda/controller/StateEvent;)V

    .line 85
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 82
    .end local v0    # "_arg0":Lcom/bda/controller/StateEvent;
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcom/bda/controller/StateEvent;
    goto :goto_3

    .line 39
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
