.class Lcom/bda/controller/KeyEvent$ParcelableCreator;
.super Ljava/lang/Object;
.source "KeyEvent.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bda/controller/KeyEvent;
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
        "Lcom/bda/controller/KeyEvent;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/bda/controller/KeyEvent;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 149
    new-instance v0, Lcom/bda/controller/KeyEvent;

    invoke-direct {v0, p1}, Lcom/bda/controller/KeyEvent;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/bda/controller/KeyEvent$ParcelableCreator;->createFromParcel(Landroid/os/Parcel;)Lcom/bda/controller/KeyEvent;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/bda/controller/KeyEvent;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 155
    new-array v0, p1, [Lcom/bda/controller/KeyEvent;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/bda/controller/KeyEvent$ParcelableCreator;->newArray(I)[Lcom/bda/controller/KeyEvent;

    move-result-object v0

    return-object v0
.end method
