.class public Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;
.super Ljava/lang/Object;
.source "DownloadNotification.java"

# interfaces
.implements Lcom/google/android/vending/expansion/downloader/IDownloaderClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification$ICustomNotification;
    }
.end annotation


# static fields
.field static final LOGTAG:Ljava/lang/String; = "DownloadNotification"

.field static final NOTIFICATION_ID:I


# instance fields
.field private mClientProxy:Lcom/google/android/vending/expansion/downloader/IDownloaderClient;

.field private mContentIntent:Landroid/app/PendingIntent;

.field private final mContext:Landroid/content/Context;

.field private mCurrentNotification:Landroid/app/Notification;

.field private mCurrentText:Ljava/lang/String;

.field private mCurrentTitle:Ljava/lang/String;

.field final mCustomNotification:Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification$ICustomNotification;

.field private mLabel:Ljava/lang/CharSequence;

.field private mNotification:Landroid/app/Notification;

.field private final mNotificationManager:Landroid/app/NotificationManager;

.field private mProgressInfo:Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;

.field private mState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    const-string v0, "DownloadNotification"

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sput v0, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->NOTIFICATION_ID:I

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "applicationLabel"    # Ljava/lang/CharSequence;

    .prologue
    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 228
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->mState:I

    .line 229
    iput-object p1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->mContext:Landroid/content/Context;

    .line 230
    iput-object p2, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->mLabel:Ljava/lang/CharSequence;

    .line 231
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->mNotificationManager:Landroid/app/NotificationManager;

    .line 233
    invoke-static {}, Lcom/google/android/vending/expansion/downloader/impl/CustomNotificationFactory;->createCustomNotification()Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification$ICustomNotification;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->mCustomNotification:Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification$ICustomNotification;

    .line 235
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    iput-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->mNotification:Landroid/app/Notification;

    .line 236
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->mNotification:Landroid/app/Notification;

    iput-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->mCurrentNotification:Landroid/app/Notification;

    .line 238
    return-void
.end method


# virtual methods
.method public getClientIntent()Landroid/app/PendingIntent;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->mContentIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public onDownloadProgress(Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;)V
    .locals 0
    .param p1, "progress"    # Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;

    .prologue
    .line 159
    iput-object p1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->mProgressInfo:Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;

    .line 185
    return-void
.end method

.method public onDownloadStateChanged(I)V
    .locals 6
    .param p1, "newState"    # I

    .prologue
    .line 78
    iget-object v3, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->mClientProxy:Lcom/google/android/vending/expansion/downloader/IDownloaderClient;

    if-eqz v3, :cond_0

    .line 79
    iget-object v3, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->mClientProxy:Lcom/google/android/vending/expansion/downloader/IDownloaderClient;

    invoke-interface {v3, p1}, Lcom/google/android/vending/expansion/downloader/IDownloaderClient;->onDownloadStateChanged(I)V

    .line 81
    :cond_0
    iget v3, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->mState:I

    if-eq p1, v3, :cond_1

    .line 83
    iput p1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->mState:I

    .line 84
    const/4 v3, 0x1

    if-eq p1, v3, :cond_1

    iget-object v3, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->mContentIntent:Landroid/app/PendingIntent;

    if-nez v3, :cond_2

    .line 153
    :cond_1
    :goto_0
    return-void

    .line 93
    :cond_2
    packed-switch p1, :pswitch_data_0

    .line 132
    :pswitch_0
    const v0, 0x108008a

    .line 133
    .local v0, "iconResource":I
    invoke-static {p1}, Lcom/google/android/vending/expansion/downloader/Helpers;->getDownloaderStringResourceIDFromState(I)I

    move-result v2

    .line 134
    .local v2, "stringDownloadID":I
    const/4 v1, 0x1

    .line 138
    .local v1, "ongoingEvent":Z
    :goto_1
    const-string v3, "Octarine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onDownloadStateChanged: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 96
    .end local v0    # "iconResource":I
    .end local v1    # "ongoingEvent":Z
    .end local v2    # "stringDownloadID":I
    :pswitch_1
    const v0, 0x108008a

    .line 97
    .restart local v0    # "iconResource":I
    const v2, 0x7f0c0057

    .line 98
    .restart local v2    # "stringDownloadID":I
    const/4 v1, 0x0

    .line 99
    .restart local v1    # "ongoingEvent":Z
    goto :goto_1

    .line 102
    .end local v0    # "iconResource":I
    .end local v1    # "ongoingEvent":Z
    .end local v2    # "stringDownloadID":I
    :pswitch_2
    const v0, 0x1080081

    .line 103
    .restart local v0    # "iconResource":I
    invoke-static {p1}, Lcom/google/android/vending/expansion/downloader/Helpers;->getDownloaderStringResourceIDFromState(I)I

    move-result v2

    .line 104
    .restart local v2    # "stringDownloadID":I
    const/4 v1, 0x1

    .line 105
    .restart local v1    # "ongoingEvent":Z
    goto :goto_1

    .line 109
    .end local v0    # "iconResource":I
    .end local v1    # "ongoingEvent":Z
    .end local v2    # "stringDownloadID":I
    :pswitch_3
    const v0, 0x1080082

    .line 110
    .restart local v0    # "iconResource":I
    invoke-static {p1}, Lcom/google/android/vending/expansion/downloader/Helpers;->getDownloaderStringResourceIDFromState(I)I

    move-result v2

    .line 111
    .restart local v2    # "stringDownloadID":I
    const/4 v1, 0x1

    .line 112
    .restart local v1    # "ongoingEvent":Z
    goto :goto_1

    .line 116
    .end local v0    # "iconResource":I
    .end local v1    # "ongoingEvent":Z
    .end local v2    # "stringDownloadID":I
    :pswitch_4
    const v0, 0x1080082

    .line 117
    .restart local v0    # "iconResource":I
    invoke-static {p1}, Lcom/google/android/vending/expansion/downloader/Helpers;->getDownloaderStringResourceIDFromState(I)I

    move-result v2

    .line 118
    .restart local v2    # "stringDownloadID":I
    const/4 v1, 0x0

    .line 119
    .restart local v1    # "ongoingEvent":Z
    goto :goto_1

    .line 126
    .end local v0    # "iconResource":I
    .end local v1    # "ongoingEvent":Z
    .end local v2    # "stringDownloadID":I
    :pswitch_5
    const v0, 0x108008a

    .line 127
    .restart local v0    # "iconResource":I
    invoke-static {p1}, Lcom/google/android/vending/expansion/downloader/Helpers;->getDownloaderStringResourceIDFromState(I)I

    move-result v2

    .line 128
    .restart local v2    # "stringDownloadID":I
    const/4 v1, 0x0

    .line 129
    .restart local v1    # "ongoingEvent":Z
    goto :goto_1

    .line 93
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method public onServiceConnected(Landroid/os/Messenger;)V
    .locals 0
    .param p1, "m"    # Landroid/os/Messenger;

    .prologue
    .line 242
    return-void
.end method

.method public resendState()V
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->mClientProxy:Lcom/google/android/vending/expansion/downloader/IDownloaderClient;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->mClientProxy:Lcom/google/android/vending/expansion/downloader/IDownloaderClient;

    iget v1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->mState:I

    invoke-interface {v0, v1}, Lcom/google/android/vending/expansion/downloader/IDownloaderClient;->onDownloadStateChanged(I)V

    .line 74
    :cond_0
    return-void
.end method

.method public setClientIntent(Landroid/app/PendingIntent;)V
    .locals 0
    .param p1, "mClientIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->mContentIntent:Landroid/app/PendingIntent;

    .line 68
    return-void
.end method

.method public setMessenger(Landroid/os/Messenger;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Messenger;

    .prologue
    .line 212
    invoke-static {p1}, Lcom/google/android/vending/expansion/downloader/DownloaderClientMarshaller;->CreateProxy(Landroid/os/Messenger;)Lcom/google/android/vending/expansion/downloader/IDownloaderClient;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->mClientProxy:Lcom/google/android/vending/expansion/downloader/IDownloaderClient;

    .line 213
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->mProgressInfo:Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->mClientProxy:Lcom/google/android/vending/expansion/downloader/IDownloaderClient;

    iget-object v1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->mProgressInfo:Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;

    invoke-interface {v0, v1}, Lcom/google/android/vending/expansion/downloader/IDownloaderClient;->onDownloadProgress(Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;)V

    .line 216
    :cond_0
    iget v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->mState:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 217
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->mClientProxy:Lcom/google/android/vending/expansion/downloader/IDownloaderClient;

    iget v1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->mState:I

    invoke-interface {v0, v1}, Lcom/google/android/vending/expansion/downloader/IDownloaderClient;->onDownloadStateChanged(I)V

    .line 219
    :cond_1
    return-void
.end method
