.class Lcom/google/android/gms/games/internal/api/SnapshotsImpl$2;
.super Lcom/google/android/gms/games/internal/api/SnapshotsImpl$OpenImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/games/internal/api/SnapshotsImpl;->open(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;ZI)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzasa:Lcom/google/android/gms/games/internal/api/SnapshotsImpl;

.field final synthetic zzasb:Ljava/lang/String;

.field final synthetic zzasc:Z

.field final synthetic zzasd:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/internal/api/SnapshotsImpl;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;ZI)V
    .locals 1
    .param p2, "x0"    # Lcom/google/android/gms/common/api/GoogleApiClient;

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/games/internal/api/SnapshotsImpl$2;->zzasa:Lcom/google/android/gms/games/internal/api/SnapshotsImpl;

    iput-object p3, p0, Lcom/google/android/gms/games/internal/api/SnapshotsImpl$2;->zzasb:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/google/android/gms/games/internal/api/SnapshotsImpl$2;->zzasc:Z

    iput p5, p0, Lcom/google/android/gms/games/internal/api/SnapshotsImpl$2;->zzasd:I

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/games/internal/api/SnapshotsImpl$OpenImpl;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/internal/api/SnapshotsImpl$1;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Api$Client;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/games/internal/GamesClientImpl;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/SnapshotsImpl$2;->zza(Lcom/google/android/gms/games/internal/GamesClientImpl;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/games/internal/GamesClientImpl;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/games/internal/api/SnapshotsImpl$2;->zzasb:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/google/android/gms/games/internal/api/SnapshotsImpl$2;->zzasc:Z

    iget v2, p0, Lcom/google/android/gms/games/internal/api/SnapshotsImpl$2;->zzasd:I

    invoke-virtual {p1, p0, v0, v1, v2}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zza(Lcom/google/android/gms/common/api/zza$zzb;Ljava/lang/String;ZI)V

    return-void
.end method
