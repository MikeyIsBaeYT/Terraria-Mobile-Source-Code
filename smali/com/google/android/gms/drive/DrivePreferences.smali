.class public Lcom/google/android/gms/drive/DrivePreferences;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/drive/DrivePreferences;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final zzCY:I

.field final zzadh:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/drive/zze;

    invoke-direct {v0}, Lcom/google/android/gms/drive/zze;-><init>()V

    sput-object v0, Lcom/google/android/gms/drive/DrivePreferences;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IZ)V
    .locals 0
    .param p1, "versionCode"    # I
    .param p2, "syncOverWifiOnly"    # Z

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/drive/DrivePreferences;->zzCY:I

    iput-boolean p2, p0, Lcom/google/android/gms/drive/DrivePreferences;->zzadh:Z

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
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/drive/zze;->zza(Lcom/google/android/gms/drive/DrivePreferences;Landroid/os/Parcel;I)V

    return-void
.end method
