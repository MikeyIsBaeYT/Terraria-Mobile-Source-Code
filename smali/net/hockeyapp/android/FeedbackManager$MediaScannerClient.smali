.class Lnet/hockeyapp/android/FeedbackManager$MediaScannerClient;
.super Ljava/lang/Object;
.source "FeedbackManager.java"

# interfaces
.implements Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/hockeyapp/android/FeedbackManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MediaScannerClient"
.end annotation


# instance fields
.field private connection:Landroid/media/MediaScannerConnection;

.field private path:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 351
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 352
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/hockeyapp/android/FeedbackManager$MediaScannerClient;->connection:Landroid/media/MediaScannerConnection;

    .line 353
    iput-object p1, p0, Lnet/hockeyapp/android/FeedbackManager$MediaScannerClient;->path:Ljava/lang/String;

    .line 354
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lnet/hockeyapp/android/FeedbackManager$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Lnet/hockeyapp/android/FeedbackManager$1;

    .prologue
    .line 345
    invoke-direct {p0, p1}, Lnet/hockeyapp/android/FeedbackManager$MediaScannerClient;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onMediaScannerConnected()V
    .locals 3

    .prologue
    .line 362
    iget-object v0, p0, Lnet/hockeyapp/android/FeedbackManager$MediaScannerClient;->connection:Landroid/media/MediaScannerConnection;

    if-eqz v0, :cond_0

    .line 363
    iget-object v0, p0, Lnet/hockeyapp/android/FeedbackManager$MediaScannerClient;->connection:Landroid/media/MediaScannerConnection;

    iget-object v1, p0, Lnet/hockeyapp/android/FeedbackManager$MediaScannerClient;->path:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaScannerConnection;->scanFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    :cond_0
    return-void
.end method

.method public onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 5
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 369
    const-string v0, "HockeyApp"

    const-string v1, "Scanned path %s -> URI = %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    iget-object v0, p0, Lnet/hockeyapp/android/FeedbackManager$MediaScannerClient;->connection:Landroid/media/MediaScannerConnection;

    invoke-virtual {v0}, Landroid/media/MediaScannerConnection;->disconnect()V

    .line 371
    return-void
.end method

.method public setConnection(Landroid/media/MediaScannerConnection;)V
    .locals 0
    .param p1, "connection"    # Landroid/media/MediaScannerConnection;

    .prologue
    .line 357
    iput-object p1, p0, Lnet/hockeyapp/android/FeedbackManager$MediaScannerClient;->connection:Landroid/media/MediaScannerConnection;

    .line 358
    return-void
.end method
