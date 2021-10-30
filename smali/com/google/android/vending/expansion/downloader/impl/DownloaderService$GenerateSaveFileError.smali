.class public Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$GenerateSaveFileError;
.super Ljava/lang/Exception;
.source "DownloaderService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GenerateSaveFileError"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x301995ba4006965cL


# instance fields
.field mMessage:Ljava/lang/String;

.field mStatus:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "status"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 1275
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 1276
    iput p1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$GenerateSaveFileError;->mStatus:I

    .line 1277
    iput-object p2, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$GenerateSaveFileError;->mMessage:Ljava/lang/String;

    .line 1278
    return-void
.end method
