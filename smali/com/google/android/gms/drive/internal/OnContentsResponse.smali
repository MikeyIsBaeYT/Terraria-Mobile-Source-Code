.class public Lcom/google/android/gms/drive/internal/OnContentsResponse;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/drive/internal/OnContentsResponse;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final zzCY:I

.field final zzafa:Lcom/google/android/gms/drive/Contents;

.field final zzage:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/drive/internal/zzau;

    invoke-direct {v0}, Lcom/google/android/gms/drive/internal/zzau;-><init>()V

    sput-object v0, Lcom/google/android/gms/drive/internal/OnContentsResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/drive/Contents;Z)V
    .locals 0
    .param p1, "versionCode"    # I
    .param p2, "contents"    # Lcom/google/android/gms/drive/Contents;
    .param p3, "outOfDate"    # Z

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/drive/internal/OnContentsResponse;->zzCY:I

    iput-object p2, p0, Lcom/google/android/gms/drive/internal/OnContentsResponse;->zzafa:Lcom/google/android/gms/drive/Contents;

    iput-boolean p3, p0, Lcom/google/android/gms/drive/internal/OnContentsResponse;->zzage:Z

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
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/drive/internal/zzau;->zza(Lcom/google/android/gms/drive/internal/OnContentsResponse;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzpJ()Lcom/google/android/gms/drive/Contents;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/drive/internal/OnContentsResponse;->zzafa:Lcom/google/android/gms/drive/Contents;

    return-object v0
.end method

.method public zzpK()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/drive/internal/OnContentsResponse;->zzage:Z

    return v0
.end method
