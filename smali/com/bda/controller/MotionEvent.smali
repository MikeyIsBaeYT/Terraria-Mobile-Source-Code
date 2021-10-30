.class public final Lcom/bda/controller/MotionEvent;
.super Lcom/bda/controller/BaseEvent;
.source "MotionEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bda/controller/MotionEvent$ParcelableCreator;
    }
.end annotation


# static fields
.field public static final AXIS_LTRIGGER:I = 0x11

.field public static final AXIS_RTRIGGER:I = 0x12

.field public static final AXIS_RZ:I = 0xe

.field public static final AXIS_X:I = 0x0

.field public static final AXIS_Y:I = 0x1

.field public static final AXIS_Z:I = 0xb

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/bda/controller/MotionEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mAxis:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field final mPrecision:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    new-instance v0, Lcom/bda/controller/MotionEvent$ParcelableCreator;

    invoke-direct {v0}, Lcom/bda/controller/MotionEvent$ParcelableCreator;-><init>()V

    sput-object v0, Lcom/bda/controller/MotionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 19
    return-void
.end method

.method public constructor <init>(JIFFFFFF)V
    .locals 5
    .param p1, "eventTime"    # J
    .param p3, "deviceId"    # I
    .param p4, "x"    # F
    .param p5, "y"    # F
    .param p6, "z"    # F
    .param p7, "rz"    # F
    .param p8, "xPrecision"    # F
    .param p9, "yPrecision"    # F

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3}, Lcom/bda/controller/BaseEvent;-><init>(JI)V

    .line 58
    const/4 v0, 0x4

    .line 59
    .local v0, "axis":I
    new-instance v2, Landroid/util/SparseArray;

    const/4 v3, 0x4

    invoke-direct {v2, v3}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v2, p0, Lcom/bda/controller/MotionEvent;->mAxis:Landroid/util/SparseArray;

    .line 60
    iget-object v2, p0, Lcom/bda/controller/MotionEvent;->mAxis:Landroid/util/SparseArray;

    const/4 v3, 0x0

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 61
    iget-object v2, p0, Lcom/bda/controller/MotionEvent;->mAxis:Landroid/util/SparseArray;

    const/4 v3, 0x1

    invoke-static {p5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 62
    iget-object v2, p0, Lcom/bda/controller/MotionEvent;->mAxis:Landroid/util/SparseArray;

    const/16 v3, 0xb

    invoke-static {p6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 63
    iget-object v2, p0, Lcom/bda/controller/MotionEvent;->mAxis:Landroid/util/SparseArray;

    const/16 v3, 0xe

    invoke-static {p7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 65
    const/4 v1, 0x2

    .line 66
    .local v1, "precision":I
    new-instance v2, Landroid/util/SparseArray;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v2, p0, Lcom/bda/controller/MotionEvent;->mPrecision:Landroid/util/SparseArray;

    .line 67
    iget-object v2, p0, Lcom/bda/controller/MotionEvent;->mPrecision:Landroid/util/SparseArray;

    const/4 v3, 0x0

    invoke-static {p8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 68
    iget-object v2, p0, Lcom/bda/controller/MotionEvent;->mPrecision:Landroid/util/SparseArray;

    const/4 v3, 0x1

    invoke-static {p9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 69
    return-void
.end method

.method public constructor <init>(JI[I[F[I[F)V
    .locals 7
    .param p1, "eventTime"    # J
    .param p3, "deviceId"    # I
    .param p4, "axisKey"    # [I
    .param p5, "axisValue"    # [F
    .param p6, "precisionKey"    # [I
    .param p7, "precisionValue"    # [F

    .prologue
    .line 73
    invoke-direct {p0, p1, p2, p3}, Lcom/bda/controller/BaseEvent;-><init>(JI)V

    .line 75
    array-length v0, p4

    .line 76
    .local v0, "axis":I
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3, v0}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v3, p0, Lcom/bda/controller/MotionEvent;->mAxis:Landroid/util/SparseArray;

    .line 77
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 82
    array-length v2, p6

    .line 83
    .local v2, "precision":I
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3, v2}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v3, p0, Lcom/bda/controller/MotionEvent;->mPrecision:Landroid/util/SparseArray;

    .line 84
    const/4 v1, 0x0

    :goto_1
    if-lt v1, v2, :cond_1

    .line 88
    return-void

    .line 79
    .end local v2    # "precision":I
    :cond_0
    iget-object v3, p0, Lcom/bda/controller/MotionEvent;->mAxis:Landroid/util/SparseArray;

    aget v4, p4, v1

    aget v5, p5, v1

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 77
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 86
    .restart local v2    # "precision":I
    :cond_1
    iget-object v3, p0, Lcom/bda/controller/MotionEvent;->mPrecision:Landroid/util/SparseArray;

    aget v4, p6, v1

    aget v5, p7, v1

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 84
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 7
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/bda/controller/BaseEvent;-><init>(Landroid/os/Parcel;)V

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 95
    .local v0, "axis":I
    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5, v0}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v5, p0, Lcom/bda/controller/MotionEvent;->mAxis:Landroid/util/SparseArray;

    .line 96
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 104
    .local v3, "precision":I
    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5, v3}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v5, p0, Lcom/bda/controller/MotionEvent;->mPrecision:Landroid/util/SparseArray;

    .line 105
    const/4 v1, 0x0

    :goto_1
    if-lt v1, v0, :cond_1

    .line 111
    return-void

    .line 98
    .end local v3    # "precision":I
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 99
    .local v2, "key":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v4

    .line 100
    .local v4, "value":F
    iget-object v5, p0, Lcom/bda/controller/MotionEvent;->mAxis:Landroid/util/SparseArray;

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v5, v2, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 96
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 107
    .end local v2    # "key":I
    .end local v4    # "value":F
    .restart local v3    # "precision":I
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 108
    .restart local v2    # "key":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v4

    .line 109
    .restart local v4    # "value":F
    iget-object v5, p0, Lcom/bda/controller/MotionEvent;->mPrecision:Landroid/util/SparseArray;

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v5, v2, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 105
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 116
    const/4 v0, 0x0

    return v0
.end method

.method public final findPointerIndex(I)I
    .locals 1
    .param p1, "pointerId"    # I

    .prologue
    .line 130
    const/4 v0, -0x1

    return v0
.end method

.method public final getAxisValue(I)F
    .locals 1
    .param p1, "axis"    # I

    .prologue
    .line 142
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/bda/controller/MotionEvent;->getAxisValue(II)F

    move-result v0

    return v0
.end method

.method public final getAxisValue(II)F
    .locals 2
    .param p1, "axis"    # I
    .param p2, "pointerIndex"    # I

    .prologue
    const/4 v0, 0x0

    .line 160
    if-nez p2, :cond_0

    .line 162
    iget-object v1, p0, Lcom/bda/controller/MotionEvent;->mAxis:Landroid/util/SparseArray;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 164
    :cond_0
    return v0
.end method

.method public final getPointerCount()I
    .locals 1

    .prologue
    .line 172
    const/4 v0, 0x1

    return v0
.end method

.method public final getPointerId(I)I
    .locals 1
    .param p1, "pointerIndex"    # I

    .prologue
    .line 188
    const/4 v0, 0x0

    return v0
.end method

.method public final getRawX()F
    .locals 1

    .prologue
    .line 196
    invoke-virtual {p0}, Lcom/bda/controller/MotionEvent;->getX()F

    move-result v0

    return v0
.end method

.method public final getRawY()F
    .locals 1

    .prologue
    .line 204
    invoke-virtual {p0}, Lcom/bda/controller/MotionEvent;->getY()F

    move-result v0

    return v0
.end method

.method public final getX()F
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 213
    invoke-virtual {p0, v0, v0}, Lcom/bda/controller/MotionEvent;->getAxisValue(II)F

    move-result v0

    return v0
.end method

.method public final getX(I)F
    .locals 1
    .param p1, "pointerIndex"    # I

    .prologue
    .line 227
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/bda/controller/MotionEvent;->getAxisValue(II)F

    move-result v0

    return v0
.end method

.method public final getXPrecision()F
    .locals 3

    .prologue
    .line 239
    iget-object v0, p0, Lcom/bda/controller/MotionEvent;->mPrecision:Landroid/util/SparseArray;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public final getY()F
    .locals 2

    .prologue
    .line 248
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/bda/controller/MotionEvent;->getAxisValue(II)F

    move-result v0

    return v0
.end method

.method public final getY(I)F
    .locals 1
    .param p1, "pointerIndex"    # I

    .prologue
    .line 262
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/bda/controller/MotionEvent;->getAxisValue(II)F

    move-result v0

    return v0
.end method

.method public final getYPrecision()F
    .locals 3

    .prologue
    .line 274
    iget-object v0, p0, Lcom/bda/controller/MotionEvent;->mPrecision:Landroid/util/SparseArray;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 280
    invoke-super {p0, p1, p2}, Lcom/bda/controller/BaseEvent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 282
    iget-object v3, p0, Lcom/bda/controller/MotionEvent;->mAxis:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 283
    .local v0, "axis":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 284
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 290
    iget-object v3, p0, Lcom/bda/controller/MotionEvent;->mPrecision:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 291
    .local v2, "precision":I
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 292
    const/4 v1, 0x0

    :goto_1
    if-lt v1, v2, :cond_1

    .line 297
    return-void

    .line 286
    .end local v2    # "precision":I
    :cond_0
    iget-object v3, p0, Lcom/bda/controller/MotionEvent;->mAxis:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 287
    iget-object v3, p0, Lcom/bda/controller/MotionEvent;->mAxis:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeFloat(F)V

    .line 284
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 294
    .restart local v2    # "precision":I
    :cond_1
    iget-object v3, p0, Lcom/bda/controller/MotionEvent;->mPrecision:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 295
    iget-object v3, p0, Lcom/bda/controller/MotionEvent;->mPrecision:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeFloat(F)V

    .line 292
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method
