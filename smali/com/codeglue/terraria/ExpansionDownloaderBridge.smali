.class Lcom/codeglue/terraria/ExpansionDownloaderBridge;
.super Ljava/lang/Object;
.source "ExpansionDownloaderBridge.java"


# static fields
.field public static downloader:Lcom/codeglue/terraria/ExpansionDownloader;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isCompleted()Z
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/codeglue/terraria/ExpansionDownloaderBridge;->downloader:Lcom/codeglue/terraria/ExpansionDownloader;

    invoke-virtual {v0}, Lcom/codeglue/terraria/ExpansionDownloader;->isCompleted()Z

    move-result v0

    return v0
.end method
