.class Lcom/google/android/gms/games/internal/api/GamesMetadataImpl$LoadGamesImpl$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/games/GamesMetadata$LoadGamesResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/games/internal/api/GamesMetadataImpl$LoadGamesImpl;->zzZ(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/games/GamesMetadata$LoadGamesResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzOl:Lcom/google/android/gms/common/api/Status;

.field final synthetic zzaqU:Lcom/google/android/gms/games/internal/api/GamesMetadataImpl$LoadGamesImpl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/internal/api/GamesMetadataImpl$LoadGamesImpl;Lcom/google/android/gms/common/api/Status;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/games/internal/api/GamesMetadataImpl$LoadGamesImpl$1;->zzaqU:Lcom/google/android/gms/games/internal/api/GamesMetadataImpl$LoadGamesImpl;

    iput-object p2, p0, Lcom/google/android/gms/games/internal/api/GamesMetadataImpl$LoadGamesImpl$1;->zzOl:Lcom/google/android/gms/common/api/Status;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getGames()Lcom/google/android/gms/games/GameBuffer;
    .locals 2

    new-instance v0, Lcom/google/android/gms/games/GameBuffer;

    const/16 v1, 0xe

    invoke-static {v1}, Lcom/google/android/gms/common/data/DataHolder;->zzbi(I)Lcom/google/android/gms/common/data/DataHolder;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/games/GameBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    return-object v0
.end method

.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/internal/api/GamesMetadataImpl$LoadGamesImpl$1;->zzOl:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

.method public release()V
    .locals 0

    return-void
.end method
