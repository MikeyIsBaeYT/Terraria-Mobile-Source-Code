.class public Lcom/google/android/gms/internal/zzlo$zzc;
.super Lcom/google/android/gms/drive/metadata/internal/zzo;

# interfaces
.implements Lcom/google/android/gms/drive/metadata/SearchableMetadataField;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzlo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zzc"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/drive/metadata/internal/zzo;",
        "Lcom/google/android/gms/drive/metadata/SearchableMetadataField",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const-string v0, "mimeType"

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/drive/metadata/internal/zzo;-><init>(Ljava/lang/String;I)V

    return-void
.end method
