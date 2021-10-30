.class public Lcom/google/android/gms/drive/query/internal/FieldWithSortOrder;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/drive/query/internal/zzc;


# instance fields
.field final zzCY:I

.field final zzagy:Ljava/lang/String;

.field final zzahT:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/drive/query/internal/zzc;

    invoke-direct {v0}, Lcom/google/android/gms/drive/query/internal/zzc;-><init>()V

    sput-object v0, Lcom/google/android/gms/drive/query/internal/FieldWithSortOrder;->CREATOR:Lcom/google/android/gms/drive/query/internal/zzc;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Z)V
    .locals 0
    .param p1, "versionCode"    # I
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "isSortAscending"    # Z

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/drive/query/internal/FieldWithSortOrder;->zzCY:I

    iput-object p2, p0, Lcom/google/android/gms/drive/query/internal/FieldWithSortOrder;->zzagy:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/google/android/gms/drive/query/internal/FieldWithSortOrder;->zzahT:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "isSortAscending"    # Z

    .prologue
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/gms/drive/query/internal/FieldWithSortOrder;-><init>(ILjava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "FieldWithSortOrder[%s %s]"

    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    iget-object v4, p0, Lcom/google/android/gms/drive/query/internal/FieldWithSortOrder;->zzagy:Ljava/lang/String;

    aput-object v4, v3, v0

    const/4 v4, 0x1

    iget-boolean v0, p0, Lcom/google/android/gms/drive/query/internal/FieldWithSortOrder;->zzahT:Z

    if-eqz v0, :cond_0

    const-string v0, "ASC"

    :goto_0
    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "DESC"

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/drive/query/internal/zzc;->zza(Lcom/google/android/gms/drive/query/internal/FieldWithSortOrder;Landroid/os/Parcel;I)V

    return-void
.end method
