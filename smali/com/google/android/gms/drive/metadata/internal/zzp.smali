.class public Lcom/google/android/gms/drive/metadata/internal/zzp;
.super Lcom/google/android/gms/drive/metadata/internal/zzj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/drive/metadata/internal/zzj",
        "<",
        "Lcom/google/android/gms/drive/UserMetadata;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2

    invoke-static {p1}, Lcom/google/android/gms/drive/metadata/internal/zzp;->zzcz(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/google/android/gms/drive/metadata/internal/zzj;-><init>(Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;I)V

    return-void
.end method

.method private zzcy(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/drive/metadata/internal/zzp;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/gms/drive/metadata/internal/zzp;->zzw(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static zzcz(Ljava/lang/String;)Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "permissionId"

    invoke-static {p0, v2}, Lcom/google/android/gms/drive/metadata/internal/zzp;->zzw(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "displayName"

    invoke-static {p0, v2}, Lcom/google/android/gms/drive/metadata/internal/zzp;->zzw(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "picture"

    invoke-static {p0, v2}, Lcom/google/android/gms/drive/metadata/internal/zzp;->zzw(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "isAuthenticatedUser"

    invoke-static {p0, v2}, Lcom/google/android/gms/drive/metadata/internal/zzp;->zzw(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "emailAddress"

    invoke-static {p0, v2}, Lcom/google/android/gms/drive/metadata/internal/zzp;->zzw(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static zzw(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected zzb(Lcom/google/android/gms/common/data/DataHolder;II)Z
    .locals 1

    const-string v0, "permissionId"

    invoke-direct {p0, v0}, Lcom/google/android/gms/drive/metadata/internal/zzp;->zzcy(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/data/DataHolder;->zzbV(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "permissionId"

    invoke-direct {p0, v0}, Lcom/google/android/gms/drive/metadata/internal/zzp;->zzcy(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p2, p3}, Lcom/google/android/gms/common/data/DataHolder;->zzi(Ljava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected synthetic zzc(Lcom/google/android/gms/common/data/DataHolder;II)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/drive/metadata/internal/zzp;->zzj(Lcom/google/android/gms/common/data/DataHolder;II)Lcom/google/android/gms/drive/UserMetadata;

    move-result-object v0

    return-object v0
.end method

.method protected zzj(Lcom/google/android/gms/common/data/DataHolder;II)Lcom/google/android/gms/drive/UserMetadata;
    .locals 6

    const-string v0, "permissionId"

    invoke-direct {p0, v0}, Lcom/google/android/gms/drive/metadata/internal/zzp;->zzcy(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p2, p3}, Lcom/google/android/gms/common/data/DataHolder;->zzd(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v0, "displayName"

    invoke-direct {p0, v0}, Lcom/google/android/gms/drive/metadata/internal/zzp;->zzcy(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p2, p3}, Lcom/google/android/gms/common/data/DataHolder;->zzd(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    const-string v0, "picture"

    invoke-direct {p0, v0}, Lcom/google/android/gms/drive/metadata/internal/zzp;->zzcy(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p2, p3}, Lcom/google/android/gms/common/data/DataHolder;->zzd(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v3

    const-string v0, "isAuthenticatedUser"

    invoke-direct {p0, v0}, Lcom/google/android/gms/drive/metadata/internal/zzp;->zzcy(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p2, p3}, Lcom/google/android/gms/common/data/DataHolder;->zze(Ljava/lang/String;II)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string v0, "emailAddress"

    invoke-direct {p0, v0}, Lcom/google/android/gms/drive/metadata/internal/zzp;->zzcy(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p2, p3}, Lcom/google/android/gms/common/data/DataHolder;->zzd(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v5

    new-instance v0, Lcom/google/android/gms/drive/UserMetadata;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/drive/UserMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
