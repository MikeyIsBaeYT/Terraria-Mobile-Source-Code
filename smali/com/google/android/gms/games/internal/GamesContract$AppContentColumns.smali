.class public interface abstract Lcom/google/android/gms/games/internal/GamesContract$AppContentColumns;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AppContentColumns"
.end annotation


# static fields
.field public static final zzaqp:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "experiments"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "json"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "page_token"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "screen_name"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "server_cookie"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gms/games/internal/GamesContract$AppContentColumns;->zzaqp:[Ljava/lang/String;

    return-void
.end method
