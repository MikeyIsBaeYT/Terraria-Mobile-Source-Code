.class public final Lcom/google/android/gms/drive/events/ChangesAvailableOptions;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/drive/events/ChangesAvailableOptions;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final zzCY:I

.field final zzadP:I

.field final zzadQ:Z

.field final zzadR:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/drive/DriveSpace;",
            ">;"
        }
    .end annotation
.end field

.field private final zzadS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/drive/DriveSpace;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/drive/events/zzd;

    invoke-direct {v0}, Lcom/google/android/gms/drive/events/zzd;-><init>()V

    sput-object v0, Lcom/google/android/gms/drive/events/ChangesAvailableOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IIZLjava/util/List;)V
    .locals 6
    .param p1, "versionCode"    # I
    .param p2, "changesSizeLimit"    # I
    .param p3, "repeats"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIZ",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/drive/DriveSpace;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p4, "spacesList":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/gms/drive/DriveSpace;>;"
    if-nez p4, :cond_0

    const/4 v5, 0x0

    :goto_0
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/drive/events/ChangesAvailableOptions;-><init>(IIZLjava/util/List;Ljava/util/Set;)V

    return-void

    :cond_0
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5, p4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    goto :goto_0
.end method

.method private constructor <init>(IIZLjava/util/List;Ljava/util/Set;)V
    .locals 0
    .param p1, "versionCode"    # I
    .param p2, "changesSizeLimit"    # I
    .param p3, "repeats"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIZ",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/drive/DriveSpace;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/drive/DriveSpace;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p4, "spacesList":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/gms/drive/DriveSpace;>;"
    .local p5, "spaces":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/android/gms/drive/DriveSpace;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/drive/events/ChangesAvailableOptions;->zzCY:I

    iput p2, p0, Lcom/google/android/gms/drive/events/ChangesAvailableOptions;->zzadP:I

    iput-boolean p3, p0, Lcom/google/android/gms/drive/events/ChangesAvailableOptions;->zzadQ:Z

    iput-object p4, p0, Lcom/google/android/gms/drive/events/ChangesAvailableOptions;->zzadR:Ljava/util/List;

    iput-object p5, p0, Lcom/google/android/gms/drive/events/ChangesAvailableOptions;->zzadS:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    :cond_0
    move v0, v1

    .end local p1    # "o":Ljava/lang/Object;
    :cond_1
    :goto_0
    return v0

    .restart local p1    # "o":Ljava/lang/Object;
    :cond_2
    if-eq p1, p0, :cond_1

    check-cast p1, Lcom/google/android/gms/drive/events/ChangesAvailableOptions;

    .end local p1    # "o":Ljava/lang/Object;
    iget-object v2, p0, Lcom/google/android/gms/drive/events/ChangesAvailableOptions;->zzadS:Ljava/util/Set;

    iget-object v3, p1, Lcom/google/android/gms/drive/events/ChangesAvailableOptions;->zzadS:Ljava/util/Set;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzt;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/google/android/gms/drive/events/ChangesAvailableOptions;->zzadP:I

    iget v3, p1, Lcom/google/android/gms/drive/events/ChangesAvailableOptions;->zzadP:I

    if-ne v2, v3, :cond_3

    iget-boolean v2, p0, Lcom/google/android/gms/drive/events/ChangesAvailableOptions;->zzadQ:Z

    iget-boolean v3, p1, Lcom/google/android/gms/drive/events/ChangesAvailableOptions;->zzadQ:Z

    if-eq v2, v3, :cond_1

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/drive/events/ChangesAvailableOptions;->zzadS:Ljava/util/Set;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/drive/events/ChangesAvailableOptions;->zzadP:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-boolean v2, p0, Lcom/google/android/gms/drive/events/ChangesAvailableOptions;->zzadQ:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzt;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "ChangesAvailableOptions[ChangesSizeLimit=%d, Repeats=%s, Spaces=%s]"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/google/android/gms/drive/events/ChangesAvailableOptions;->zzadP:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-boolean v4, p0, Lcom/google/android/gms/drive/events/ChangesAvailableOptions;->zzadQ:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/google/android/gms/drive/events/ChangesAvailableOptions;->zzadR:Ljava/util/List;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/drive/events/zzd;->zza(Lcom/google/android/gms/drive/events/ChangesAvailableOptions;Landroid/os/Parcel;I)V

    return-void
.end method
