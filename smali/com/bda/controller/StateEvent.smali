.class public Lcom/bda/controller/StateEvent;
.super Lcom/bda/controller/BaseEvent;
.source "StateEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bda/controller/StateEvent$ParcelableCreator;
    }
.end annotation


# static fields
.field public static final ACTION_CONNECTED:I = 0x1

.field public static final ACTION_CONNECTING:I = 0x2

.field public static final ACTION_DISCONNECTED:I = 0x0

.field public static final ACTION_FALSE:I = 0x0

.field public static final ACTION_TRUE:I = 0x1

.field public static final ACTION_VERSION_MOGA:I = 0x0

.field public static final ACTION_VERSION_MOGAPRO:I = 0x1

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/bda/controller/StateEvent;",
            ">;"
        }
    .end annotation
.end field

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
.field final mAction:I

.field final mState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 81
    new-instance v0, Lcom/bda/controller/StateEvent$ParcelableCreator;

    invoke-direct {v0}, Lcom/bda/controller/StateEvent$ParcelableCreator;-><init>()V

    sput-object v0, Lcom/bda/controller/StateEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 18
    return-void
.end method

.method public constructor <init>(JIII)V
    .locals 1
    .param p1, "eventTime"    # J
    .param p3, "deviceId"    # I
    .param p4, "state"    # I
    .param p5, "action"    # I

    .prologue
    .line 85
    invoke-direct {p0, p1, p2, p3}, Lcom/bda/controller/BaseEvent;-><init>(JI)V

    .line 86
    iput p4, p0, Lcom/bda/controller/StateEvent;->mState:I

    .line 87
    iput p5, p0, Lcom/bda/controller/StateEvent;->mAction:I

    .line 88
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/bda/controller/BaseEvent;-><init>(Landroid/os/Parcel;)V

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/bda/controller/StateEvent;->mState:I

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/bda/controller/StateEvent;->mAction:I

    .line 95
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x0

    return v0
.end method

.method public final getAction()I
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Lcom/bda/controller/StateEvent;->mAction:I

    return v0
.end method

.method public final getState()I
    .locals 1

    .prologue
    .line 120
    iget v0, p0, Lcom/bda/controller/StateEvent;->mState:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 126
    invoke-super {p0, p1, p2}, Lcom/bda/controller/BaseEvent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 127
    iget v0, p0, Lcom/bda/controller/StateEvent;->mState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 128
    iget v0, p0, Lcom/bda/controller/StateEvent;->mAction:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 129
    return-void
.end method
