.class public Lcom/google/android/gms/drive/realtime/internal/event/ReferenceShiftedDetails;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/drive/realtime/internal/event/ReferenceShiftedDetails;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final zzCY:I

.field final zzaiT:Ljava/lang/String;

.field final zzaiU:Ljava/lang/String;

.field final zzaiV:I

.field final zzaiW:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/drive/realtime/internal/event/zze;

    invoke-direct {v0}, Lcom/google/android/gms/drive/realtime/internal/event/zze;-><init>()V

    sput-object v0, Lcom/google/android/gms/drive/realtime/internal/event/ReferenceShiftedDetails;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;II)V
    .locals 0
    .param p1, "versionCode"    # I
    .param p2, "oldObjectId"    # Ljava/lang/String;
    .param p3, "newObjectId"    # Ljava/lang/String;
    .param p4, "oldIndex"    # I
    .param p5, "newIndex"    # I

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/drive/realtime/internal/event/ReferenceShiftedDetails;->zzCY:I

    iput-object p2, p0, Lcom/google/android/gms/drive/realtime/internal/event/ReferenceShiftedDetails;->zzaiT:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/drive/realtime/internal/event/ReferenceShiftedDetails;->zzaiU:Ljava/lang/String;

    iput p4, p0, Lcom/google/android/gms/drive/realtime/internal/event/ReferenceShiftedDetails;->zzaiV:I

    iput p5, p0, Lcom/google/android/gms/drive/realtime/internal/event/ReferenceShiftedDetails;->zzaiW:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/drive/realtime/internal/event/zze;->zza(Lcom/google/android/gms/drive/realtime/internal/event/ReferenceShiftedDetails;Landroid/os/Parcel;I)V

    return-void
.end method
