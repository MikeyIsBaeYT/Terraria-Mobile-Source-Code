.class abstract Lcom/google/android/gms/games/internal/api/SnapshotsImpl$LoadImpl;
.super Lcom/google/android/gms/games/Games$BaseGamesApiMethodImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/api/SnapshotsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "LoadImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/games/Games$BaseGamesApiMethodImpl",
        "<",
        "Lcom/google/android/gms/games/snapshot/Snapshots$LoadSnapshotsResult;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 0
    .param p1, "googleApiClient"    # Lcom/google/android/gms/common/api/GoogleApiClient;

    .prologue
    invoke-direct {p0, p1}, Lcom/google/android/gms/games/Games$BaseGamesApiMethodImpl;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/internal/api/SnapshotsImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/android/gms/common/api/GoogleApiClient;
    .param p2, "x1"    # Lcom/google/android/gms/games/internal/api/SnapshotsImpl$1;

    .prologue
    invoke-direct {p0, p1}, Lcom/google/android/gms/games/internal/api/SnapshotsImpl$LoadImpl;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method public synthetic createFailedResult(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1
    .param p1, "x0"    # Lcom/google/android/gms/common/api/Status;

    .prologue
    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/SnapshotsImpl$LoadImpl;->zzaw(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/games/snapshot/Snapshots$LoadSnapshotsResult;

    move-result-object v0

    return-object v0
.end method

.method public zzaw(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/games/snapshot/Snapshots$LoadSnapshotsResult;
    .locals 1

    new-instance v0, Lcom/google/android/gms/games/internal/api/SnapshotsImpl$LoadImpl$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/games/internal/api/SnapshotsImpl$LoadImpl$1;-><init>(Lcom/google/android/gms/games/internal/api/SnapshotsImpl$LoadImpl;Lcom/google/android/gms/common/api/Status;)V

    return-object v0
.end method
