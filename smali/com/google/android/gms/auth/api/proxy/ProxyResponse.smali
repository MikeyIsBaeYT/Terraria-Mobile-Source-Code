.class public Lcom/google/android/gms/auth/api/proxy/ProxyResponse;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/auth/api/proxy/ProxyResponse;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final versionCode:I

.field public final zzPs:[B

.field final zzPt:Landroid/os/Bundle;

.field public final zzPu:I

.field public final zzPv:Landroid/app/PendingIntent;

.field public final zzPw:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/auth/api/proxy/zzc;

    invoke-direct {v0}, Lcom/google/android/gms/auth/api/proxy/zzc;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/api/proxy/ProxyResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IILandroid/app/PendingIntent;ILandroid/os/Bundle;[B)V
    .locals 0
    .param p1, "version"    # I
    .param p2, "googlePlayServicesStatusCode"    # I
    .param p3, "recoveryAction"    # Landroid/app/PendingIntent;
    .param p4, "httpCode"    # I
    .param p5, "headers"    # Landroid/os/Bundle;
    .param p6, "body"    # [B

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/auth/api/proxy/ProxyResponse;->versionCode:I

    iput p2, p0, Lcom/google/android/gms/auth/api/proxy/ProxyResponse;->zzPu:I

    iput p4, p0, Lcom/google/android/gms/auth/api/proxy/ProxyResponse;->zzPw:I

    iput-object p5, p0, Lcom/google/android/gms/auth/api/proxy/ProxyResponse;->zzPt:Landroid/os/Bundle;

    iput-object p6, p0, Lcom/google/android/gms/auth/api/proxy/ProxyResponse;->zzPs:[B

    iput-object p3, p0, Lcom/google/android/gms/auth/api/proxy/ProxyResponse;->zzPv:Landroid/app/PendingIntent;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/auth/api/proxy/zzc;->zza(Lcom/google/android/gms/auth/api/proxy/ProxyResponse;Landroid/os/Parcel;I)V

    return-void
.end method
