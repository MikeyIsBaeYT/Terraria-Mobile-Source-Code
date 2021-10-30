.class Lcom/bda/controller/BaseEvent;
.super Ljava/lang/Object;
.source "BaseEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bda/controller/BaseEvent$ParcelableCreator;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/bda/controller/BaseEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mControllerId:I

.field final mEventTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    new-instance v0, Lcom/bda/controller/BaseEvent$ParcelableCreator;

    invoke-direct {v0}, Lcom/bda/controller/BaseEvent$ParcelableCreator;-><init>()V

    sput-object v0, Lcom/bda/controller/BaseEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 16
    return-void
.end method

.method public constructor <init>(JI)V
    .locals 1
    .param p1, "eventTime"    # J
    .param p3, "deviceId"    # I

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-wide p1, p0, Lcom/bda/controller/BaseEvent;->mEventTime:J

    .line 26
    iput p3, p0, Lcom/bda/controller/BaseEvent;->mControllerId:I

    .line 27
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bda/controller/BaseEvent;->mEventTime:J

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/bda/controller/BaseEvent;->mControllerId:I

    .line 33
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    return v0
.end method

.method public final getControllerId()I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/bda/controller/BaseEvent;->mControllerId:I

    return v0
.end method

.method public final getEventTime()J
    .locals 2

    .prologue
    .line 55
    iget-wide v0, p0, Lcom/bda/controller/BaseEvent;->mEventTime:J

    return-wide v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 61
    iget-wide v0, p0, Lcom/bda/controller/BaseEvent;->mEventTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 62
    iget v0, p0, Lcom/bda/controller/BaseEvent;->mControllerId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 63
    return-void
.end method
