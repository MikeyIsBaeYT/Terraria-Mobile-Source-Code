.class abstract Lcom/google/android/gms/internal/zzko;
.super Lcom/google/android/gms/common/api/zza$zza;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzko$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R::",
        "Lcom/google/android/gms/common/api/Result;",
        ">",
        "Lcom/google/android/gms/common/api/zza$zza",
        "<TR;",
        "Lcom/google/android/gms/internal/zzkp;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzkl;->zzNX:Lcom/google/android/gms/common/api/Api$ClientKey;

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/common/api/zza$zza;-><init>(Lcom/google/android/gms/common/api/Api$ClientKey;Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method
