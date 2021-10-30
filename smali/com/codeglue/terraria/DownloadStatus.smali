.class public final enum Lcom/codeglue/terraria/DownloadStatus;
.super Ljava/lang/Enum;
.source "DownloadStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/codeglue/terraria/DownloadStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/codeglue/terraria/DownloadStatus;

.field public static final enum Completed:Lcom/codeglue/terraria/DownloadStatus;

.field public static final enum Connecting:Lcom/codeglue/terraria/DownloadStatus;

.field public static final enum Downloading:Lcom/codeglue/terraria/DownloadStatus;

.field public static final enum Failed:Lcom/codeglue/terraria/DownloadStatus;

.field public static final enum FailedCanceled:Lcom/codeglue/terraria/DownloadStatus;

.field public static final enum FailedFetchingUrl:Lcom/codeglue/terraria/DownloadStatus;

.field public static final enum FailedSdCardFull:Lcom/codeglue/terraria/DownloadStatus;

.field public static final enum FailedUnlicensed:Lcom/codeglue/terraria/DownloadStatus;

.field public static final enum FetchingUrl:Lcom/codeglue/terraria/DownloadStatus;

.field public static final enum Idle:Lcom/codeglue/terraria/DownloadStatus;

.field public static final enum PausedByRequest:Lcom/codeglue/terraria/DownloadStatus;

.field public static final enum PausedNeedCellularPermission:Lcom/codeglue/terraria/DownloadStatus;

.field public static final enum PausedNeedWifi:Lcom/codeglue/terraria/DownloadStatus;

.field public static final enum PausedNetworkSetupFailure:Lcom/codeglue/terraria/DownloadStatus;

.field public static final enum PausedNetworkUnavailable:Lcom/codeglue/terraria/DownloadStatus;

.field public static final enum PausedRoaming:Lcom/codeglue/terraria/DownloadStatus;

.field public static final enum PausedSdCardUnavailable:Lcom/codeglue/terraria/DownloadStatus;

.field public static final enum PausedWifiDisabled:Lcom/codeglue/terraria/DownloadStatus;

.field public static final enum PausedWifiDisabledNeedCellularPermission:Lcom/codeglue/terraria/DownloadStatus;

.field public static final enum Unknown:Lcom/codeglue/terraria/DownloadStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 5
    new-instance v0, Lcom/codeglue/terraria/DownloadStatus;

    const-string v1, "Unknown"

    invoke-direct {v0, v1, v3}, Lcom/codeglue/terraria/DownloadStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codeglue/terraria/DownloadStatus;->Unknown:Lcom/codeglue/terraria/DownloadStatus;

    .line 6
    new-instance v0, Lcom/codeglue/terraria/DownloadStatus;

    const-string v1, "Idle"

    invoke-direct {v0, v1, v4}, Lcom/codeglue/terraria/DownloadStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codeglue/terraria/DownloadStatus;->Idle:Lcom/codeglue/terraria/DownloadStatus;

    .line 7
    new-instance v0, Lcom/codeglue/terraria/DownloadStatus;

    const-string v1, "FetchingUrl"

    invoke-direct {v0, v1, v5}, Lcom/codeglue/terraria/DownloadStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codeglue/terraria/DownloadStatus;->FetchingUrl:Lcom/codeglue/terraria/DownloadStatus;

    .line 8
    new-instance v0, Lcom/codeglue/terraria/DownloadStatus;

    const-string v1, "Connecting"

    invoke-direct {v0, v1, v6}, Lcom/codeglue/terraria/DownloadStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codeglue/terraria/DownloadStatus;->Connecting:Lcom/codeglue/terraria/DownloadStatus;

    .line 9
    new-instance v0, Lcom/codeglue/terraria/DownloadStatus;

    const-string v1, "Downloading"

    invoke-direct {v0, v1, v7}, Lcom/codeglue/terraria/DownloadStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codeglue/terraria/DownloadStatus;->Downloading:Lcom/codeglue/terraria/DownloadStatus;

    .line 10
    new-instance v0, Lcom/codeglue/terraria/DownloadStatus;

    const-string v1, "Completed"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/codeglue/terraria/DownloadStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codeglue/terraria/DownloadStatus;->Completed:Lcom/codeglue/terraria/DownloadStatus;

    .line 11
    new-instance v0, Lcom/codeglue/terraria/DownloadStatus;

    const-string v1, "PausedNetworkUnavailable"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/codeglue/terraria/DownloadStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codeglue/terraria/DownloadStatus;->PausedNetworkUnavailable:Lcom/codeglue/terraria/DownloadStatus;

    .line 12
    new-instance v0, Lcom/codeglue/terraria/DownloadStatus;

    const-string v1, "PausedByRequest"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/codeglue/terraria/DownloadStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codeglue/terraria/DownloadStatus;->PausedByRequest:Lcom/codeglue/terraria/DownloadStatus;

    .line 13
    new-instance v0, Lcom/codeglue/terraria/DownloadStatus;

    const-string v1, "PausedWifiDisabledNeedCellularPermission"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/codeglue/terraria/DownloadStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codeglue/terraria/DownloadStatus;->PausedWifiDisabledNeedCellularPermission:Lcom/codeglue/terraria/DownloadStatus;

    .line 14
    new-instance v0, Lcom/codeglue/terraria/DownloadStatus;

    const-string v1, "PausedNeedCellularPermission"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/codeglue/terraria/DownloadStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codeglue/terraria/DownloadStatus;->PausedNeedCellularPermission:Lcom/codeglue/terraria/DownloadStatus;

    .line 15
    new-instance v0, Lcom/codeglue/terraria/DownloadStatus;

    const-string v1, "PausedWifiDisabled"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/codeglue/terraria/DownloadStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codeglue/terraria/DownloadStatus;->PausedWifiDisabled:Lcom/codeglue/terraria/DownloadStatus;

    .line 16
    new-instance v0, Lcom/codeglue/terraria/DownloadStatus;

    const-string v1, "PausedNeedWifi"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/codeglue/terraria/DownloadStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codeglue/terraria/DownloadStatus;->PausedNeedWifi:Lcom/codeglue/terraria/DownloadStatus;

    .line 17
    new-instance v0, Lcom/codeglue/terraria/DownloadStatus;

    const-string v1, "PausedRoaming"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/codeglue/terraria/DownloadStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codeglue/terraria/DownloadStatus;->PausedRoaming:Lcom/codeglue/terraria/DownloadStatus;

    .line 18
    new-instance v0, Lcom/codeglue/terraria/DownloadStatus;

    const-string v1, "PausedNetworkSetupFailure"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/codeglue/terraria/DownloadStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codeglue/terraria/DownloadStatus;->PausedNetworkSetupFailure:Lcom/codeglue/terraria/DownloadStatus;

    .line 19
    new-instance v0, Lcom/codeglue/terraria/DownloadStatus;

    const-string v1, "PausedSdCardUnavailable"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/codeglue/terraria/DownloadStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codeglue/terraria/DownloadStatus;->PausedSdCardUnavailable:Lcom/codeglue/terraria/DownloadStatus;

    .line 20
    new-instance v0, Lcom/codeglue/terraria/DownloadStatus;

    const-string v1, "FailedUnlicensed"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/codeglue/terraria/DownloadStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codeglue/terraria/DownloadStatus;->FailedUnlicensed:Lcom/codeglue/terraria/DownloadStatus;

    .line 21
    new-instance v0, Lcom/codeglue/terraria/DownloadStatus;

    const-string v1, "FailedFetchingUrl"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/codeglue/terraria/DownloadStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codeglue/terraria/DownloadStatus;->FailedFetchingUrl:Lcom/codeglue/terraria/DownloadStatus;

    .line 22
    new-instance v0, Lcom/codeglue/terraria/DownloadStatus;

    const-string v1, "FailedSdCardFull"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/codeglue/terraria/DownloadStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codeglue/terraria/DownloadStatus;->FailedSdCardFull:Lcom/codeglue/terraria/DownloadStatus;

    .line 23
    new-instance v0, Lcom/codeglue/terraria/DownloadStatus;

    const-string v1, "FailedCanceled"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/codeglue/terraria/DownloadStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codeglue/terraria/DownloadStatus;->FailedCanceled:Lcom/codeglue/terraria/DownloadStatus;

    .line 24
    new-instance v0, Lcom/codeglue/terraria/DownloadStatus;

    const-string v1, "Failed"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/codeglue/terraria/DownloadStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codeglue/terraria/DownloadStatus;->Failed:Lcom/codeglue/terraria/DownloadStatus;

    .line 3
    const/16 v0, 0x14

    new-array v0, v0, [Lcom/codeglue/terraria/DownloadStatus;

    sget-object v1, Lcom/codeglue/terraria/DownloadStatus;->Unknown:Lcom/codeglue/terraria/DownloadStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/codeglue/terraria/DownloadStatus;->Idle:Lcom/codeglue/terraria/DownloadStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/codeglue/terraria/DownloadStatus;->FetchingUrl:Lcom/codeglue/terraria/DownloadStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/codeglue/terraria/DownloadStatus;->Connecting:Lcom/codeglue/terraria/DownloadStatus;

    aput-object v1, v0, v6

    sget-object v1, Lcom/codeglue/terraria/DownloadStatus;->Downloading:Lcom/codeglue/terraria/DownloadStatus;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/codeglue/terraria/DownloadStatus;->Completed:Lcom/codeglue/terraria/DownloadStatus;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/codeglue/terraria/DownloadStatus;->PausedNetworkUnavailable:Lcom/codeglue/terraria/DownloadStatus;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/codeglue/terraria/DownloadStatus;->PausedByRequest:Lcom/codeglue/terraria/DownloadStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/codeglue/terraria/DownloadStatus;->PausedWifiDisabledNeedCellularPermission:Lcom/codeglue/terraria/DownloadStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/codeglue/terraria/DownloadStatus;->PausedNeedCellularPermission:Lcom/codeglue/terraria/DownloadStatus;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/codeglue/terraria/DownloadStatus;->PausedWifiDisabled:Lcom/codeglue/terraria/DownloadStatus;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/codeglue/terraria/DownloadStatus;->PausedNeedWifi:Lcom/codeglue/terraria/DownloadStatus;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/codeglue/terraria/DownloadStatus;->PausedRoaming:Lcom/codeglue/terraria/DownloadStatus;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/codeglue/terraria/DownloadStatus;->PausedNetworkSetupFailure:Lcom/codeglue/terraria/DownloadStatus;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/codeglue/terraria/DownloadStatus;->PausedSdCardUnavailable:Lcom/codeglue/terraria/DownloadStatus;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/codeglue/terraria/DownloadStatus;->FailedUnlicensed:Lcom/codeglue/terraria/DownloadStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/codeglue/terraria/DownloadStatus;->FailedFetchingUrl:Lcom/codeglue/terraria/DownloadStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/codeglue/terraria/DownloadStatus;->FailedSdCardFull:Lcom/codeglue/terraria/DownloadStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/codeglue/terraria/DownloadStatus;->FailedCanceled:Lcom/codeglue/terraria/DownloadStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/codeglue/terraria/DownloadStatus;->Failed:Lcom/codeglue/terraria/DownloadStatus;

    aput-object v2, v0, v1

    sput-object v0, Lcom/codeglue/terraria/DownloadStatus;->$VALUES:[Lcom/codeglue/terraria/DownloadStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/codeglue/terraria/DownloadStatus;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 3
    const-class v0, Lcom/codeglue/terraria/DownloadStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/codeglue/terraria/DownloadStatus;

    return-object v0
.end method

.method public static values()[Lcom/codeglue/terraria/DownloadStatus;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/codeglue/terraria/DownloadStatus;->$VALUES:[Lcom/codeglue/terraria/DownloadStatus;

    invoke-virtual {v0}, [Lcom/codeglue/terraria/DownloadStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/codeglue/terraria/DownloadStatus;

    return-object v0
.end method
