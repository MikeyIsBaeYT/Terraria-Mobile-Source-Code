.class public Lcom/google/android/gms/drive/realtime/internal/ParcelableCollaborator;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/drive/realtime/internal/ParcelableCollaborator;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final zzCY:I

.field final zzEO:Ljava/lang/String;

.field final zzFE:Ljava/lang/String;

.field final zzadI:Ljava/lang/String;

.field final zzais:Z

.field final zzait:Z

.field final zzaiu:Ljava/lang/String;

.field final zzaiv:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/drive/realtime/internal/zzp;

    invoke-direct {v0}, Lcom/google/android/gms/drive/realtime/internal/zzp;-><init>()V

    sput-object v0, Lcom/google/android/gms/drive/realtime/internal/ParcelableCollaborator;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "versionCode"    # I
    .param p2, "isMe"    # Z
    .param p3, "isAnonymous"    # Z
    .param p4, "sessionId"    # Ljava/lang/String;
    .param p5, "userId"    # Ljava/lang/String;
    .param p6, "displayName"    # Ljava/lang/String;
    .param p7, "color"    # Ljava/lang/String;
    .param p8, "photoUrl"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/drive/realtime/internal/ParcelableCollaborator;->zzCY:I

    iput-boolean p2, p0, Lcom/google/android/gms/drive/realtime/internal/ParcelableCollaborator;->zzais:Z

    iput-boolean p3, p0, Lcom/google/android/gms/drive/realtime/internal/ParcelableCollaborator;->zzait:Z

    iput-object p4, p0, Lcom/google/android/gms/drive/realtime/internal/ParcelableCollaborator;->zzFE:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/drive/realtime/internal/ParcelableCollaborator;->zzEO:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/drive/realtime/internal/ParcelableCollaborator;->zzadI:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/drive/realtime/internal/ParcelableCollaborator;->zzaiu:Ljava/lang/String;

    iput-object p8, p0, Lcom/google/android/gms/drive/realtime/internal/ParcelableCollaborator;->zzaiv:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    .end local p1    # "obj":Ljava/lang/Object;
    :goto_0
    return v0

    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_0
    instance-of v0, p1, Lcom/google/android/gms/drive/realtime/internal/ParcelableCollaborator;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/google/android/gms/drive/realtime/internal/ParcelableCollaborator;

    .end local p1    # "obj":Ljava/lang/Object;
    iget-object v0, p0, Lcom/google/android/gms/drive/realtime/internal/ParcelableCollaborator;->zzFE:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/gms/drive/realtime/internal/ParcelableCollaborator;->zzFE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/drive/realtime/internal/ParcelableCollaborator;->zzFE:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Collaborator [isMe="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/drive/realtime/internal/ParcelableCollaborator;->zzais:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isAnonymous="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/drive/realtime/internal/ParcelableCollaborator;->zzait:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sessionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/drive/realtime/internal/ParcelableCollaborator;->zzFE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/drive/realtime/internal/ParcelableCollaborator;->zzEO:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", displayName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/drive/realtime/internal/ParcelableCollaborator;->zzadI:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", color="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/drive/realtime/internal/ParcelableCollaborator;->zzaiu:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", photoUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/drive/realtime/internal/ParcelableCollaborator;->zzaiv:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/drive/realtime/internal/zzp;->zza(Lcom/google/android/gms/drive/realtime/internal/ParcelableCollaborator;Landroid/os/Parcel;I)V

    return-void
.end method
