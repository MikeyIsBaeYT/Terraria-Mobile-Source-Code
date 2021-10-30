.class public Lcom/codeglue/terraria/DownloadService;
.super Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;
.source "DownloadService.java"


# static fields
.field public static final SALT:[B

.field public static final publicKey:Ljava/lang/String; = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAnX1uLq/FJRo9Jant/iR4IFofwUp7pdv3/MSOK0U240TSP99przQjFF09cXP3NC/GesDTAUE8fX09MGuY+aWlujU3kF1Xp2YwJx5p4HJCUclgQxB7XP3jjW0CcLjmLSxbNTK2XEX3Bpc5RITcrdtG3jLKWYe3pOGU24dw8lmj/aEF7E0IIFb4H2xKB5huFA+nfLPJn95A6HfiD7nc4xZnxB2A5rqcHUeiE2Sa/kFDmoOdTBck7Nn+OlztRkFeWGAbJPwyyyEAZ7dCdJdNxpvDAqrMlEQGDBX7f0GPXSCqWW2SVIqK85cra3aDucVYlzedt6osV4BoROEmGv3KnndikQIDAQAB"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/16 v0, 0x14

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/codeglue/terraria/DownloadService;->SALT:[B

    return-void

    :array_0
    .array-data 1
        0x1t
        0x2at
        -0xct
        -0x1t
        0x36t
        0x62t
        -0x64t
        -0xct
        0x2bt
        0x2t
        -0x8t
        -0x4t
        0x9t
        0x5t
        -0x6at
        -0x6bt
        -0x21t
        0x2dt
        -0x1t
        0x54t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlarmReceiverClassName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 40
    const-string v0, "DownloadService"

    const-string v1, "getAlarmReceiverClassName"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    const-class v0, Lcom/codeglue/terraria/AlarmReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPublicKey()Ljava/lang/String;
    .locals 2

    .prologue
    .line 26
    const-string v0, "DownloadService"

    const-string v1, "getPublicKey"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    const-string v0, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAnX1uLq/FJRo9Jant/iR4IFofwUp7pdv3/MSOK0U240TSP99przQjFF09cXP3NC/GesDTAUE8fX09MGuY+aWlujU3kF1Xp2YwJx5p4HJCUclgQxB7XP3jjW0CcLjmLSxbNTK2XEX3Bpc5RITcrdtG3jLKWYe3pOGU24dw8lmj/aEF7E0IIFb4H2xKB5huFA+nfLPJn95A6HfiD7nc4xZnxB2A5rqcHUeiE2Sa/kFDmoOdTBck7Nn+OlztRkFeWGAbJPwyyyEAZ7dCdJdNxpvDAqrMlEQGDBX7f0GPXSCqWW2SVIqK85cra3aDucVYlzedt6osV4BoROEmGv3KnndikQIDAQAB"

    return-object v0
.end method

.method public getSALT()[B
    .locals 2

    .prologue
    .line 33
    const-string v0, "DownloadService"

    const-string v1, "getSALT"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    sget-object v0, Lcom/codeglue/terraria/DownloadService;->SALT:[B

    return-object v0
.end method
