.class public Lcom/google/android/vending/expansion/downloader/impl/V14CustomNotification;
.super Ljava/lang/Object;
.source "V14CustomNotification.java"

# interfaces
.implements Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification$ICustomNotification;


# instance fields
.field mCurrentKB:J

.field mIcon:I

.field mPendingIntent:Landroid/app/PendingIntent;

.field mTicker:Ljava/lang/CharSequence;

.field mTimeRemaining:J

.field mTitle:Ljava/lang/CharSequence;

.field mTotalKB:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, -0x1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-wide v0, p0, Lcom/google/android/vending/expansion/downloader/impl/V14CustomNotification;->mTotalKB:J

    .line 32
    iput-wide v0, p0, Lcom/google/android/vending/expansion/downloader/impl/V14CustomNotification;->mCurrentKB:J

    return-void
.end method


# virtual methods
.method public setCurrentBytes(J)V
    .locals 1
    .param p1, "currentBytes"    # J

    .prologue
    .line 53
    iput-wide p1, p0, Lcom/google/android/vending/expansion/downloader/impl/V14CustomNotification;->mCurrentKB:J

    .line 54
    return-void
.end method

.method public setIcon(I)V
    .locals 0
    .param p1, "icon"    # I

    .prologue
    .line 38
    iput p1, p0, Lcom/google/android/vending/expansion/downloader/impl/V14CustomNotification;->mIcon:I

    .line 39
    return-void
.end method

.method public setPendingIntent(Landroid/app/PendingIntent;)V
    .locals 0
    .param p1, "contentIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/google/android/vending/expansion/downloader/impl/V14CustomNotification;->mPendingIntent:Landroid/app/PendingIntent;

    .line 90
    return-void
.end method

.method setProgress(Landroid/app/Notification$Builder;)V
    .locals 0
    .param p1, "builder"    # Landroid/app/Notification$Builder;

    .prologue
    .line 58
    return-void
.end method

.method public setTicker(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "ticker"    # Ljava/lang/CharSequence;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/google/android/vending/expansion/downloader/impl/V14CustomNotification;->mTicker:Ljava/lang/CharSequence;

    .line 95
    return-void
.end method

.method public setTimeRemaining(J)V
    .locals 1
    .param p1, "timeRemaining"    # J

    .prologue
    .line 99
    iput-wide p1, p0, Lcom/google/android/vending/expansion/downloader/impl/V14CustomNotification;->mTimeRemaining:J

    .line 100
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/google/android/vending/expansion/downloader/impl/V14CustomNotification;->mTitle:Ljava/lang/CharSequence;

    .line 44
    return-void
.end method

.method public setTotalBytes(J)V
    .locals 1
    .param p1, "totalBytes"    # J

    .prologue
    .line 48
    iput-wide p1, p0, Lcom/google/android/vending/expansion/downloader/impl/V14CustomNotification;->mTotalKB:J

    .line 49
    return-void
.end method

.method public updateNotification(Landroid/content/Context;)Landroid/app/Notification;
    .locals 9
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 63
    new-instance v0, Landroid/app/Notification$Builder;

    invoke-direct {v0, p1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 64
    .local v0, "builder":Landroid/app/Notification$Builder;
    iget-object v2, p0, Lcom/google/android/vending/expansion/downloader/impl/V14CustomNotification;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 65
    iget-wide v2, p0, Lcom/google/android/vending/expansion/downloader/impl/V14CustomNotification;->mTotalKB:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    const-wide/16 v2, -0x1

    iget-wide v4, p0, Lcom/google/android/vending/expansion/downloader/impl/V14CustomNotification;->mCurrentKB:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 66
    iget-wide v2, p0, Lcom/google/android/vending/expansion/downloader/impl/V14CustomNotification;->mTotalKB:J

    shr-long/2addr v2, v8

    long-to-int v2, v2

    iget-wide v4, p0, Lcom/google/android/vending/expansion/downloader/impl/V14CustomNotification;->mCurrentKB:J

    shr-long/2addr v4, v8

    long-to-int v3, v4

    invoke-virtual {v0, v2, v3, v6}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    .line 70
    :goto_0
    iget-wide v2, p0, Lcom/google/android/vending/expansion/downloader/impl/V14CustomNotification;->mCurrentKB:J

    iget-wide v4, p0, Lcom/google/android/vending/expansion/downloader/impl/V14CustomNotification;->mTotalKB:J

    invoke-static {v2, v3, v4, v5}, Lcom/google/android/vending/expansion/downloader/Helpers;->getDownloadProgressString(JJ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 71
    const v2, 0x7f0c0059

    new-array v3, v7, [Ljava/lang/Object;

    iget-wide v4, p0, Lcom/google/android/vending/expansion/downloader/impl/V14CustomNotification;->mTimeRemaining:J

    invoke-static {v4, v5}, Lcom/google/android/vending/expansion/downloader/Helpers;->getTimeRemaining(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setContentInfo(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 73
    iget v2, p0, Lcom/google/android/vending/expansion/downloader/impl/V14CustomNotification;->mIcon:I

    if-eqz v2, :cond_1

    .line 74
    iget v2, p0, Lcom/google/android/vending/expansion/downloader/impl/V14CustomNotification;->mIcon:I

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 79
    :goto_1
    invoke-virtual {v0, v7}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 80
    iget-object v2, p0, Lcom/google/android/vending/expansion/downloader/impl/V14CustomNotification;->mTicker:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 81
    iget-object v2, p0, Lcom/google/android/vending/expansion/downloader/impl/V14CustomNotification;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 82
    invoke-virtual {v0, v7}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    .line 84
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v2

    return-object v2

    .line 68
    :cond_0
    invoke-virtual {v0, v6, v6, v7}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    goto :goto_0

    .line 76
    :cond_1
    const v1, 0x1080081

    .line 77
    .local v1, "iconResource":I
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    goto :goto_1
.end method
