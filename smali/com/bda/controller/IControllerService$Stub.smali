.class public abstract Lcom/bda/controller/IControllerService$Stub;
.super Landroid/os/Binder;
.source "IControllerService.java"

# interfaces
.implements Lcom/bda/controller/IControllerService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bda/controller/IControllerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bda/controller/IControllerService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.bda.controller.IControllerService"

.field static final TRANSACTION_allowNewConnections:I = 0xc

.field static final TRANSACTION_disallowNewConnections:I = 0xd

.field static final TRANSACTION_getAxisValue:I = 0x7

.field static final TRANSACTION_getInfo:I = 0x5

.field static final TRANSACTION_getKeyCode:I = 0x6

.field static final TRANSACTION_getKeyCode2:I = 0xb

.field static final TRANSACTION_getState:I = 0x8

.field static final TRANSACTION_isAllowingNewConnections:I = 0xe

.field static final TRANSACTION_registerListener:I = 0x1

.field static final TRANSACTION_registerListener2:I = 0xa

.field static final TRANSACTION_registerMonitor:I = 0x3

.field static final TRANSACTION_sendMessage:I = 0x9

.field static final TRANSACTION_unregisterListener:I = 0x2

.field static final TRANSACTION_unregisterMonitor:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "com.bda.controller.IControllerService"

    invoke-virtual {p0, p0, v0}, Lcom/bda/controller/IControllerService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/bda/controller/IControllerService;
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
    const-string v1, "com.bda.controller.IControllerService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/bda/controller/IControllerService;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Lcom/bda/controller/IControllerService;

    goto :goto_0

    .line 31
    :cond_1
    new-instance v0, Lcom/bda/controller/IControllerService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/bda/controller/IControllerService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 5
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
    const/4 v4, 0x1

    .line 39
    sparse-switch p1, :sswitch_data_0

    .line 193
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    .line 43
    :sswitch_0
    const-string v3, "com.bda.controller.IControllerService"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 48
    :sswitch_1
    const-string v3, "com.bda.controller.IControllerService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/bda/controller/IControllerListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/bda/controller/IControllerListener;

    move-result-object v0

    .line 52
    .local v0, "_arg0":Lcom/bda/controller/IControllerListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 53
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/bda/controller/IControllerService$Stub;->registerListener(Lcom/bda/controller/IControllerListener;I)V

    .line 54
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 59
    .end local v0    # "_arg0":Lcom/bda/controller/IControllerListener;
    .end local v1    # "_arg1":I
    :sswitch_2
    const-string v3, "com.bda.controller.IControllerService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/bda/controller/IControllerListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/bda/controller/IControllerListener;

    move-result-object v0

    .line 63
    .restart local v0    # "_arg0":Lcom/bda/controller/IControllerListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 64
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/bda/controller/IControllerService$Stub;->unregisterListener(Lcom/bda/controller/IControllerListener;I)V

    .line 65
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 70
    .end local v0    # "_arg0":Lcom/bda/controller/IControllerListener;
    .end local v1    # "_arg1":I
    :sswitch_3
    const-string v3, "com.bda.controller.IControllerService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/bda/controller/IControllerMonitor$Stub;->asInterface(Landroid/os/IBinder;)Lcom/bda/controller/IControllerMonitor;

    move-result-object v0

    .line 74
    .local v0, "_arg0":Lcom/bda/controller/IControllerMonitor;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 75
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/bda/controller/IControllerService$Stub;->registerMonitor(Lcom/bda/controller/IControllerMonitor;I)V

    .line 76
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 81
    .end local v0    # "_arg0":Lcom/bda/controller/IControllerMonitor;
    .end local v1    # "_arg1":I
    :sswitch_4
    const-string v3, "com.bda.controller.IControllerService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/bda/controller/IControllerMonitor$Stub;->asInterface(Landroid/os/IBinder;)Lcom/bda/controller/IControllerMonitor;

    move-result-object v0

    .line 85
    .restart local v0    # "_arg0":Lcom/bda/controller/IControllerMonitor;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 86
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/bda/controller/IControllerService$Stub;->unregisterMonitor(Lcom/bda/controller/IControllerMonitor;I)V

    .line 87
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 92
    .end local v0    # "_arg0":Lcom/bda/controller/IControllerMonitor;
    .end local v1    # "_arg1":I
    :sswitch_5
    const-string v3, "com.bda.controller.IControllerService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 95
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/bda/controller/IControllerService$Stub;->getInfo(I)I

    move-result v2

    .line 96
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 97
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 102
    .end local v0    # "_arg0":I
    .end local v2    # "_result":I
    :sswitch_6
    const-string v3, "com.bda.controller.IControllerService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 106
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 107
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/bda/controller/IControllerService$Stub;->getKeyCode(II)I

    move-result v2

    .line 108
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 109
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 114
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":I
    :sswitch_7
    const-string v3, "com.bda.controller.IControllerService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 118
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 119
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/bda/controller/IControllerService$Stub;->getAxisValue(II)F

    move-result v2

    .line 120
    .local v2, "_result":F
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 121
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeFloat(F)V

    goto/16 :goto_0

    .line 126
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":F
    :sswitch_8
    const-string v3, "com.bda.controller.IControllerService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 130
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 131
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/bda/controller/IControllerService$Stub;->getState(II)I

    move-result v2

    .line 132
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 133
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 138
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":I
    :sswitch_9
    const-string v3, "com.bda.controller.IControllerService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 140
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 142
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 143
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/bda/controller/IControllerService$Stub;->sendMessage(II)V

    .line 144
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 149
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :sswitch_a
    const-string v3, "com.bda.controller.IControllerService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/bda/controller/IControllerListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/bda/controller/IControllerListener;

    move-result-object v0

    .line 153
    .local v0, "_arg0":Lcom/bda/controller/IControllerListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 154
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/bda/controller/IControllerService$Stub;->registerListener2(Lcom/bda/controller/IControllerListener;I)V

    .line 155
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 160
    .end local v0    # "_arg0":Lcom/bda/controller/IControllerListener;
    .end local v1    # "_arg1":I
    :sswitch_b
    const-string v3, "com.bda.controller.IControllerService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 162
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 164
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 165
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/bda/controller/IControllerService$Stub;->getKeyCode2(II)I

    move-result v2

    .line 166
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 167
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 172
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":I
    :sswitch_c
    const-string v3, "com.bda.controller.IControllerService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 173
    invoke-virtual {p0}, Lcom/bda/controller/IControllerService$Stub;->allowNewConnections()V

    .line 174
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 179
    :sswitch_d
    const-string v3, "com.bda.controller.IControllerService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 180
    invoke-virtual {p0}, Lcom/bda/controller/IControllerService$Stub;->disallowNewConnections()V

    .line 181
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 186
    :sswitch_e
    const-string v3, "com.bda.controller.IControllerService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 187
    invoke-virtual {p0}, Lcom/bda/controller/IControllerService$Stub;->isAllowingNewConnections()Z

    move-result v2

    .line 188
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 189
    if-eqz v2, :cond_0

    move v3, v4

    :goto_1
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    .line 39
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
