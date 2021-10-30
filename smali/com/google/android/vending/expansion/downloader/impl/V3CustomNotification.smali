.class public Lcom/google/android/vending/expansion/downloader/impl/V3CustomNotification;
.super Ljava/lang/Object;
.source "V3CustomNotification.java"

# interfaces
.implements Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification$ICustomNotification;


# instance fields
.field mCurrentBytes:J

.field mIcon:I

.field mNotification:Landroid/app/Notification;

.field mPendingIntent:Landroid/app/PendingIntent;

.field mTicker:Ljava/lang/CharSequence;

.field mTimeRemaining:J

.field mTitle:Ljava/lang/CharSequence;

.field mTotalBytes:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, -0x1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-wide v0, p0, Lcom/google/android/vending/expansion/downloader/impl/V3CustomNotification;->mTotalBytes:J

    .line 35
    iput-wide v0, p0, Lcom/google/android/vending/expansion/downloader/impl/V3CustomNotification;->mCurrentBytes:J

    .line 38
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    iput-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/V3CustomNotification;->mNotification:Landroid/app/Notification;

    return-void
.end method


# virtual methods
.method public setCurrentBytes(J)V
    .locals 1
    .param p1, "currentBytes"    # J

    .prologue
    .line 57
    iput-wide p1, p0, Lcom/google/android/vending/expansion/downloader/impl/V3CustomNotification;->mCurrentBytes:J

    .line 58
    return-void
.end method

.method public setIcon(I)V
    .locals 0
    .param p1, "icon"    # I

    .prologue
    .line 42
    iput p1, p0, Lcom/google/android/vending/expansion/downloader/impl/V3CustomNotification;->mIcon:I

    .line 43
    return-void
.end method

.method public setPendingIntent(Landroid/app/PendingIntent;)V
    .locals 0
    .param p1, "contentIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/google/android/vending/expansion/downloader/impl/V3CustomNotification;->mPendingIntent:Landroid/app/PendingIntent;

    .line 104
    return-void
.end method

.method public setTicker(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "ticker"    # Ljava/lang/CharSequence;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/google/android/vending/expansion/downloader/impl/V3CustomNotification;->mTicker:Ljava/lang/CharSequence;

    .line 109
    return-void
.end method

.method public setTimeRemaining(J)V
    .locals 1
    .param p1, "timeRemaining"    # J

    .prologue
    .line 113
    iput-wide p1, p0, Lcom/google/android/vending/expansion/downloader/impl/V3CustomNotification;->mTimeRemaining:J

    .line 114
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/google/android/vending/expansion/downloader/impl/V3CustomNotification;->mTitle:Ljava/lang/CharSequence;

    .line 48
    return-void
.end method

.method public setTotalBytes(J)V
    .locals 1
    .param p1, "totalBytes"    # J

    .prologue
    .line 52
    iput-wide p1, p0, Lcom/google/android/vending/expansion/downloader/impl/V3CustomNotification;->mTotalBytes:J

    .line 53
    return-void
.end method

.method public updateNotification(Landroid/content/Context;)Landroid/app/Notification;
    .locals 13
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    const v11, 0x7f0a0049

    const v12, 0x7f0a0046

    const/16 v10, 0x8

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 62
    iget-object v1, p0, Lcom/google/android/vending/expansion/downloader/impl/V3CustomNotification;->mNotification:Landroid/app/Notification;

    .line 64
    .local v1, "n":Landroid/app/Notification;
    iget v2, p0, Lcom/google/android/vending/expansion/downloader/impl/V3CustomNotification;->mIcon:I

    iput v2, v1, Landroid/app/Notification;->icon:I

    .line 66
    iget v2, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v1, Landroid/app/Notification;->flags:I

    .line 68
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xa

    if-le v2, v5, :cond_0

    .line 69
    iget v2, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v2, v2, 0x8

    iput v2, v1, Landroid/app/Notification;->flags:I

    .line 74
    :cond_0
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const v5, 0x7f040018

    invoke-direct {v0, v2, v5}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 78
    .local v0, "expandedView":Landroid/widget/RemoteViews;
    const v2, 0x7f0a0029

    iget-object v5, p0, Lcom/google/android/vending/expansion/downloader/impl/V3CustomNotification;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 80
    invoke-virtual {v0, v11, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 81
    iget-wide v6, p0, Lcom/google/android/vending/expansion/downloader/impl/V3CustomNotification;->mCurrentBytes:J

    iget-wide v8, p0, Lcom/google/android/vending/expansion/downloader/impl/V3CustomNotification;->mTotalBytes:J

    invoke-static {v6, v7, v8, v9}, Lcom/google/android/vending/expansion/downloader/Helpers;->getDownloadProgressString(JJ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v11, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 83
    const v2, 0x7f0a0047

    invoke-virtual {v0, v2, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 84
    const v5, 0x7f0a0048

    iget-wide v6, p0, Lcom/google/android/vending/expansion/downloader/impl/V3CustomNotification;->mTotalBytes:J

    shr-long/2addr v6, v10

    long-to-int v6, v6

    iget-wide v8, p0, Lcom/google/android/vending/expansion/downloader/impl/V3CustomNotification;->mCurrentBytes:J

    shr-long/2addr v8, v10

    long-to-int v7, v8

    iget-wide v8, p0, Lcom/google/android/vending/expansion/downloader/impl/V3CustomNotification;->mTotalBytes:J

    const-wide/16 v10, 0x0

    cmp-long v2, v8, v10

    if-gtz v2, :cond_1

    move v2, v3

    :goto_0
    invoke-virtual {v0, v5, v6, v7, v2}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 88
    invoke-virtual {v0, v12, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 89
    const v2, 0x7f0c0059

    new-array v3, v3, [Ljava/lang/Object;

    iget-wide v6, p0, Lcom/google/android/vending/expansion/downloader/impl/V3CustomNotification;->mTimeRemaining:J

    invoke-static {v6, v7}, Lcom/google/android/vending/expansion/downloader/Helpers;->getTimeRemaining(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v12, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 93
    const v2, 0x7f0a0045

    iget-wide v4, p0, Lcom/google/android/vending/expansion/downloader/impl/V3CustomNotification;->mCurrentBytes:J

    iget-wide v6, p0, Lcom/google/android/vending/expansion/downloader/impl/V3CustomNotification;->mTotalBytes:J

    invoke-static {v4, v5, v6, v7}, Lcom/google/android/vending/expansion/downloader/Helpers;->getDownloadProgressPercent(JJ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 95
    const v2, 0x7f0a0044

    iget v3, p0, Lcom/google/android/vending/expansion/downloader/impl/V3CustomNotification;->mIcon:I

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 96
    iput-object v0, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 97
    iget-object v2, p0, Lcom/google/android/vending/expansion/downloader/impl/V3CustomNotification;->mPendingIntent:Landroid/app/PendingIntent;

    iput-object v2, v1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 98
    return-object v1

    :cond_1
    move v2, v4

    .line 84
    goto :goto_0
.end method
