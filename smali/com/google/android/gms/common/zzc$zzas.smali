.class final Lcom/google/android/gms/common/zzc$zzas;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/zzc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "zzas"
.end annotation


# static fields
.field static final zzVR:[Lcom/google/android/gms/common/zzc$zza;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/android/gms/common/zzc$zza;

    const/4 v1, 0x0

    new-instance v2, Lcom/google/android/gms/common/zzc$zzas$1;

    const-string v3, "0\u0082\u0003\u00cf0\u0082\u0002\u00b7\u00a0\u0003\u0002\u0001\u0002\u0002\t\u0000\u0088\u001e,\u0002\u00a3z\u0095\u00d50"

    invoke-static {v3}, Lcom/google/android/gms/common/zzc$zza;->zzbO(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/gms/common/zzc$zzas$1;-><init>([B)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/google/android/gms/common/zzc$zzas$2;

    const-string v3, "0\u0082\u0003\u00cf0\u0082\u0002\u00b7\u00a0\u0003\u0002\u0001\u0002\u0002\t\u0000\u0097\u0008\u00d7\r\u0094\u00d01\u00ac0"

    invoke-static {v3}, Lcom/google/android/gms/common/zzc$zza;->zzbO(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/gms/common/zzc$zzas$2;-><init>([B)V

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gms/common/zzc$zzas;->zzVR:[Lcom/google/android/gms/common/zzc$zza;

    return-void
.end method
