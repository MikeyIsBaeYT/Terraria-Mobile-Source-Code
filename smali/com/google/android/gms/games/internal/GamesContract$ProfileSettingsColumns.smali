.class public interface abstract Lcom/google/android/gms/games/internal/GamesContract$ProfileSettingsColumns;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ProfileSettingsColumns"
.end annotation


# static fields
.field public static final zzaqp:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "profile_visible"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "profile_visibility_explicitly_set"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gms/games/internal/GamesContract$ProfileSettingsColumns;->zzaqp:[Ljava/lang/String;

    return-void
.end method
