.class public interface abstract Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/google/android/gms/common/data/Freezable;
.implements Lcom/google/android/gms/games/multiplayer/Participatable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Lcom/google/android/gms/common/data/Freezable",
        "<",
        "Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;",
        ">;",
        "Lcom/google/android/gms/games/multiplayer/Participatable;"
    }
.end annotation


# static fields
.field public static final MATCH_STATUS_ACTIVE:I = 0x1

.field public static final MATCH_STATUS_AUTO_MATCHING:I = 0x0

.field public static final MATCH_STATUS_CANCELED:I = 0x4

.field public static final MATCH_STATUS_COMPLETE:I = 0x2

.field public static final MATCH_STATUS_EXPIRED:I = 0x3

.field public static final MATCH_TURN_STATUS_ALL:[I

.field public static final MATCH_TURN_STATUS_COMPLETE:I = 0x3

.field public static final MATCH_TURN_STATUS_INVITED:I = 0x0

.field public static final MATCH_TURN_STATUS_MY_TURN:I = 0x1

.field public static final MATCH_TURN_STATUS_THEIR_TURN:I = 0x2

.field public static final MATCH_VARIANT_DEFAULT:I = -0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->MATCH_TURN_STATUS_ALL:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x3
    .end array-data
.end method


# virtual methods
.method public abstract canRematch()Z
.end method

.method public abstract getAutoMatchCriteria()Landroid/os/Bundle;
.end method

.method public abstract getAvailableAutoMatchSlots()I
.end method

.method public abstract getCreationTimestamp()J
.end method

.method public abstract getCreatorId()Ljava/lang/String;
.end method

.method public abstract getData()[B
.end method

.method public abstract getDescription()Ljava/lang/String;
.end method

.method public abstract getDescription(Landroid/database/CharArrayBuffer;)V
.end method

.method public abstract getDescriptionParticipant()Lcom/google/android/gms/games/multiplayer/Participant;
.end method

.method public abstract getDescriptionParticipantId()Ljava/lang/String;
.end method

.method public abstract getGame()Lcom/google/android/gms/games/Game;
.end method

.method public abstract getLastUpdatedTimestamp()J
.end method

.method public abstract getLastUpdaterId()Ljava/lang/String;
.end method

.method public abstract getMatchId()Ljava/lang/String;
.end method

.method public abstract getMatchNumber()I
.end method

.method public abstract getParticipant(Ljava/lang/String;)Lcom/google/android/gms/games/multiplayer/Participant;
.end method

.method public abstract getParticipantId(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getParticipantIds()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getParticipantStatus(Ljava/lang/String;)I
.end method

.method public abstract getPendingParticipantId()Ljava/lang/String;
.end method

.method public abstract getPreviousMatchData()[B
.end method

.method public abstract getRematchId()Ljava/lang/String;
.end method

.method public abstract getStatus()I
.end method

.method public abstract getTurnStatus()I
.end method

.method public abstract getVariant()I
.end method

.method public abstract getVersion()I
.end method

.method public abstract isLocallyModified()Z
.end method
