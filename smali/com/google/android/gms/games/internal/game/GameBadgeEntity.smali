.class public final Lcom/google/android/gms/games/internal/game/GameBadgeEntity;
.super Lcom/google/android/gms/games/internal/GamesDowngradeableSafeParcel;

# interfaces
.implements Lcom/google/android/gms/games/internal/game/GameBadge;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/games/internal/game/GameBadgeEntity$GameBadgeEntityCreatorCompat;
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/google/android/gms/games/internal/game/GameBadgeEntityCreator;


# instance fields
.field private final zzCY:I

.field private zzSq:I

.field private zzadv:Ljava/lang/String;

.field private zzakM:Ljava/lang/String;

.field private zzanf:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/games/internal/game/GameBadgeEntity$GameBadgeEntityCreatorCompat;

    invoke-direct {v0}, Lcom/google/android/gms/games/internal/game/GameBadgeEntity$GameBadgeEntityCreatorCompat;-><init>()V

    sput-object v0, Lcom/google/android/gms/games/internal/game/GameBadgeEntity;->CREATOR:Lcom/google/android/gms/games/internal/game/GameBadgeEntityCreator;

    return-void
.end method

.method constructor <init>(IILjava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0
    .param p1, "versionCode"    # I
    .param p2, "type"    # I
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "description"    # Ljava/lang/String;
    .param p5, "iconImageUri"    # Landroid/net/Uri;

    .prologue
    invoke-direct {p0}, Lcom/google/android/gms/games/internal/GamesDowngradeableSafeParcel;-><init>()V

    iput p1, p0, Lcom/google/android/gms/games/internal/game/GameBadgeEntity;->zzCY:I

    iput p2, p0, Lcom/google/android/gms/games/internal/game/GameBadgeEntity;->zzSq:I

    iput-object p3, p0, Lcom/google/android/gms/games/internal/game/GameBadgeEntity;->zzadv:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/games/internal/game/GameBadgeEntity;->zzakM:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/games/internal/game/GameBadgeEntity;->zzanf:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/games/internal/game/GameBadge;)V
    .locals 1
    .param p1, "gameBadge"    # Lcom/google/android/gms/games/internal/game/GameBadge;

    .prologue
    invoke-direct {p0}, Lcom/google/android/gms/games/internal/GamesDowngradeableSafeParcel;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/games/internal/game/GameBadgeEntity;->zzCY:I

    invoke-interface {p1}, Lcom/google/android/gms/games/internal/game/GameBadge;->getType()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/games/internal/game/GameBadgeEntity;->zzSq:I

    invoke-interface {p1}, Lcom/google/android/gms/games/internal/game/GameBadge;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/internal/game/GameBadgeEntity;->zzadv:Ljava/lang/String;

    invoke-interface {p1}, Lcom/google/android/gms/games/internal/game/GameBadge;->getDescription()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/internal/game/GameBadgeEntity;->zzakM:Ljava/lang/String;

    invoke-interface {p1}, Lcom/google/android/gms/games/internal/game/GameBadge;->getIconImageUri()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/internal/game/GameBadgeEntity;->zzanf:Landroid/net/Uri;

    return-void
.end method

.method static zza(Lcom/google/android/gms/games/internal/game/GameBadge;)I
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-interface {p0}, Lcom/google/android/gms/games/internal/game/GameBadge;->getType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-interface {p0}, Lcom/google/android/gms/games/internal/game/GameBadge;->getTitle()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-interface {p0}, Lcom/google/android/gms/games/internal/game/GameBadge;->getDescription()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-interface {p0}, Lcom/google/android/gms/games/internal/game/GameBadge;->getIconImageUri()Landroid/net/Uri;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzt;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method static zza(Lcom/google/android/gms/games/internal/game/GameBadge;Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    instance-of v2, p1, Lcom/google/android/gms/games/internal/game/GameBadge;

    if-nez v2, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eq p0, p1, :cond_0

    check-cast p1, Lcom/google/android/gms/games/internal/game/GameBadge;

    invoke-interface {p1}, Lcom/google/android/gms/games/internal/game/GameBadge;->getType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/internal/game/GameBadge;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzt;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/games/internal/game/GameBadge;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/internal/game/GameBadge;->getIconImageUri()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzt;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method static zzb(Lcom/google/android/gms/games/internal/game/GameBadge;)Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzt;->zzt(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzt$zza;

    move-result-object v0

    const-string v1, "Type"

    invoke-interface {p0}, Lcom/google/android/gms/games/internal/game/GameBadge;->getType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzt$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzt$zza;

    move-result-object v0

    const-string v1, "Title"

    invoke-interface {p0}, Lcom/google/android/gms/games/internal/game/GameBadge;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzt$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzt$zza;

    move-result-object v0

    const-string v1, "Description"

    invoke-interface {p0}, Lcom/google/android/gms/games/internal/game/GameBadge;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzt$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzt$zza;

    move-result-object v0

    const-string v1, "IconImageUri"

    invoke-interface {p0}, Lcom/google/android/gms/games/internal/game/GameBadge;->getIconImageUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzt$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzt$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzt$zza;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic zzc(Ljava/lang/Integer;)Z
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/games/internal/game/GameBadgeEntity;->zzd(Ljava/lang/Integer;)Z

    move-result v0

    return v0
.end method

.method static synthetic zzcM(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/games/internal/game/GameBadgeEntity;->zzca(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic zzrH()Ljava/lang/Integer;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/games/internal/game/GameBadgeEntity;->zznE()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    invoke-static {p0, p1}, Lcom/google/android/gms/games/internal/game/GameBadgeEntity;->zza(Lcom/google/android/gms/games/internal/game/GameBadge;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public synthetic freeze()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/game/GameBadgeEntity;->zzti()Lcom/google/android/gms/games/internal/game/GameBadge;

    move-result-object v0

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/internal/game/GameBadgeEntity;->zzakM:Ljava/lang/String;

    return-object v0
.end method

.method public getIconImageUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/internal/game/GameBadgeEntity;->zzanf:Landroid/net/Uri;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/internal/game/GameBadgeEntity;->zzadv:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/games/internal/game/GameBadgeEntity;->zzSq:I

    return v0
.end method

.method public getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/games/internal/game/GameBadgeEntity;->zzCY:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/games/internal/game/GameBadgeEntity;->zza(Lcom/google/android/gms/games/internal/game/GameBadge;)I

    move-result v0

    return v0
.end method

.method public isDataValid()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/games/internal/game/GameBadgeEntity;->zzb(Lcom/google/android/gms/games/internal/game/GameBadge;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/game/GameBadgeEntity;->zznF()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/games/internal/game/GameBadgeEntityCreator;->zza(Lcom/google/android/gms/games/internal/game/GameBadgeEntity;Landroid/os/Parcel;I)V

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/google/android/gms/games/internal/game/GameBadgeEntity;->zzSq:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/google/android/gms/games/internal/game/GameBadgeEntity;->zzadv:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/games/internal/game/GameBadgeEntity;->zzakM:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/games/internal/game/GameBadgeEntity;->zzanf:Landroid/net/Uri;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/games/internal/game/GameBadgeEntity;->zzanf:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public zzti()Lcom/google/android/gms/games/internal/game/GameBadge;
    .locals 0

    return-object p0
.end method
