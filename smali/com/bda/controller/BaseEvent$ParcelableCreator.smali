.class Lcom/bda/controller/BaseEvent$ParcelableCreator;
.super Ljava/lang/Object;
.source "BaseEvent.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bda/controller/BaseEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ParcelableCreator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/bda/controller/BaseEvent;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/bda/controller/BaseEvent;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 70
    new-instance v0, Lcom/bda/controller/BaseEvent;

    invoke-direct {v0, p1}, Lcom/bda/controller/BaseEvent;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/bda/controller/BaseEvent$ParcelableCreator;->createFromParcel(Landroid/os/Parcel;)Lcom/bda/controller/BaseEvent;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/bda/controller/BaseEvent;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 76
    new-array v0, p1, [Lcom/bda/controller/BaseEvent;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/bda/controller/BaseEvent$ParcelableCreator;->newArray(I)[Lcom/bda/controller/BaseEvent;

    move-result-object v0

    return-object v0
.end method
