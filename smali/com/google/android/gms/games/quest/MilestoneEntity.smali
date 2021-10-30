.class public final Lcom/google/android/gms/games/quest/MilestoneEntity;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.implements Lcom/google/android/gms/games/quest/Milestone;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/games/quest/MilestoneEntity;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mState:I

.field private final zzCY:I

.field private final zzaoK:Ljava/lang/String;

.field private final zzapR:Ljava/lang/String;

.field private final zzauS:J

.field private final zzauT:J

.field private final zzauU:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/games/quest/MilestoneEntityCreator;

    invoke-direct {v0}, Lcom/google/android/gms/games/quest/MilestoneEntityCreator;-><init>()V

    sput-object v0, Lcom/google/android/gms/games/quest/MilestoneEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;JJ[BILjava/lang/String;)V
    .locals 1
    .param p1, "versionCode"    # I
    .param p2, "milestoneId"    # Ljava/lang/String;
    .param p3, "currentProgress"    # J
    .param p5, "targetProgress"    # J
    .param p7, "completionBlob"    # [B
    .param p8, "state"    # I
    .param p9, "eventId"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/games/quest/MilestoneEntity;->zzCY:I

    iput-object p2, p0, Lcom/google/android/gms/games/quest/MilestoneEntity;->zzapR:Ljava/lang/String;

    iput-wide p3, p0, Lcom/google/android/gms/games/quest/MilestoneEntity;->zzauS:J

    iput-wide p5, p0, Lcom/google/android/gms/games/quest/MilestoneEntity;->zzauT:J

    iput-object p7, p0, Lcom/google/android/gms/games/quest/MilestoneEntity;->zzauU:[B

    iput p8, p0, Lcom/google/android/gms/games/quest/MilestoneEntity;->mState:I

    iput-object p9, p0, Lcom/google/android/gms/games/quest/MilestoneEntity;->zzaoK:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/games/quest/Milestone;)V
    .locals 4
    .param p1, "milestone"    # Lcom/google/android/gms/games/quest/Milestone;

    .prologue
    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    iput v0, p0, Lcom/google/android/gms/games/quest/MilestoneEntity;->zzCY:I

    invoke-interface {p1}, Lcom/google/android/gms/games/quest/Milestone;->getMilestoneId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/quest/MilestoneEntity;->zzapR:Ljava/lang/String;

    invoke-interface {p1}, Lcom/google/android/gms/games/quest/Milestone;->getCurrentProgress()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/games/quest/MilestoneEntity;->zzauS:J

    invoke-interface {p1}, Lcom/google/android/gms/games/quest/Milestone;->getTargetProgress()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/games/quest/MilestoneEntity;->zzauT:J

    invoke-interface {p1}, Lcom/google/android/gms/games/quest/Milestone;->getState()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/games/quest/MilestoneEntity;->mState:I

    invoke-interface {p1}, Lcom/google/android/gms/games/quest/Milestone;->getEventId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/quest/MilestoneEntity;->zzaoK:Ljava/lang/String;

    invoke-interface {p1}, Lcom/google/android/gms/games/quest/Milestone;->getCompletionRewardData()[B

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/games/quest/MilestoneEntity;->zzauU:[B

    :goto_0
    return-void

    :cond_0
    array-length v1, v0

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/google/android/gms/games/quest/MilestoneEntity;->zzauU:[B

    iget-object v1, p0, Lcom/google/android/gms/games/quest/MilestoneEntity;->zzauU:[B

    array-length v2, v0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method static zza(Lcom/google/android/gms/games/quest/Milestone;)I
    .locals 4

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-interface {p0}, Lcom/google/android/gms/games/quest/Milestone;->getMilestoneId()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-interface {p0}, Lcom/google/android/gms/games/quest/Milestone;->getCurrentProgress()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-interface {p0}, Lcom/google/android/gms/games/quest/Milestone;->getTargetProgress()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-interface {p0}, Lcom/google/android/gms/games/quest/Milestone;->getState()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    invoke-interface {p0}, Lcom/google/android/gms/games/quest/Milestone;->getEventId()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzt;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method static zza(Lcom/google/android/gms/games/quest/Milestone;Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    instance-of v2, p1, Lcom/google/android/gms/games/quest/Milestone;

    if-nez v2, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eq p0, p1, :cond_0

    check-cast p1, Lcom/google/android/gms/games/quest/Milestone;

    invoke-interface {p1}, Lcom/google/android/gms/games/quest/Milestone;->getMilestoneId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/quest/Milestone;->getMilestoneId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzt;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/games/quest/Milestone;->getCurrentProgress()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/quest/Milestone;->getCurrentProgress()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzt;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/games/quest/Milestone;->getTargetProgress()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/quest/Milestone;->getTargetProgress()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzt;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/games/quest/Milestone;->getState()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/quest/Milestone;->getState()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzt;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/games/quest/Milestone;->getEventId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/quest/Milestone;->getEventId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzt;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method static zzb(Lcom/google/android/gms/games/quest/Milestone;)Ljava/lang/String;
    .locals 4

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzt;->zzt(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzt$zza;

    move-result-object v0

    const-string v1, "MilestoneId"

    invoke-interface {p0}, Lcom/google/android/gms/games/quest/Milestone;->getMilestoneId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzt$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzt$zza;

    move-result-object v0

    const-string v1, "CurrentProgress"

    invoke-interface {p0}, Lcom/google/android/gms/games/quest/Milestone;->getCurrentProgress()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzt$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzt$zza;

    move-result-object v0

    const-string v1, "TargetProgress"

    invoke-interface {p0}, Lcom/google/android/gms/games/quest/Milestone;->getTargetProgress()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzt$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzt$zza;

    move-result-object v0

    const-string v1, "State"

    invoke-interface {p0}, Lcom/google/android/gms/games/quest/Milestone;->getState()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzt$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzt$zza;

    move-result-object v0

    const-string v1, "CompletionRewardData"

    invoke-interface {p0}, Lcom/google/android/gms/games/quest/Milestone;->getCompletionRewardData()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzt$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzt$zza;

    move-result-object v0

    const-string v1, "EventId"

    invoke-interface {p0}, Lcom/google/android/gms/games/quest/Milestone;->getEventId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzt$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzt$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzt$zza;->toString()Ljava/lang/String;

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
    invoke-static {p0, p1}, Lcom/google/android/gms/games/quest/MilestoneEntity;->zza(Lcom/google/android/gms/games/quest/Milestone;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public freeze()Lcom/google/android/gms/games/quest/Milestone;
    .locals 0

    return-object p0
.end method

.method public bridge synthetic freeze()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/games/quest/MilestoneEntity;->freeze()Lcom/google/android/gms/games/quest/Milestone;

    move-result-object v0

    return-object v0
.end method

.method public getCompletionRewardData()[B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/quest/MilestoneEntity;->zzauU:[B

    return-object v0
.end method

.method public getCurrentProgress()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/games/quest/MilestoneEntity;->zzauS:J

    return-wide v0
.end method

.method public getEventId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/quest/MilestoneEntity;->zzaoK:Ljava/lang/String;

    return-object v0
.end method

.method public getMilestoneId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/quest/MilestoneEntity;->zzapR:Ljava/lang/String;

    return-object v0
.end method

.method public getState()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/games/quest/MilestoneEntity;->mState:I

    return v0
.end method

.method public getTargetProgress()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/games/quest/MilestoneEntity;->zzauT:J

    return-wide v0
.end method

.method public getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/games/quest/MilestoneEntity;->zzCY:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/games/quest/MilestoneEntity;->zza(Lcom/google/android/gms/games/quest/Milestone;)I

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

    invoke-static {p0}, Lcom/google/android/gms/games/quest/MilestoneEntity;->zzb(Lcom/google/android/gms/games/quest/Milestone;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/games/quest/MilestoneEntityCreator;->zza(Lcom/google/android/gms/games/quest/MilestoneEntity;Landroid/os/Parcel;I)V

    return-void
.end method
