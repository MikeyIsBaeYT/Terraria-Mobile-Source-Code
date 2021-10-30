.class public Landroid/support/v4/media/session/MediaSessionCompatApi18;
.super Ljava/lang/Object;
.source "MediaSessionCompatApi18.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/session/MediaSessionCompatApi18$OnPlaybackPositionUpdateListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    return-void
.end method

.method public static createPlaybackPositionUpdateListener(Landroid/support/v4/media/session/MediaSessionCompatApi14$Callback;)Ljava/lang/Object;
    .locals 1
    .param p0, "callback"    # Landroid/support/v4/media/session/MediaSessionCompatApi14$Callback;

    .prologue
    .line 28
    new-instance v0, Landroid/support/v4/media/session/MediaSessionCompatApi18$OnPlaybackPositionUpdateListener;

    invoke-direct {v0, p0}, Landroid/support/v4/media/session/MediaSessionCompatApi18$OnPlaybackPositionUpdateListener;-><init>(Landroid/support/v4/media/session/MediaSessionCompatApi14$Callback;)V

    return-object v0
.end method

.method public static registerMediaButtonEventReceiver(Landroid/content/Context;Landroid/app/PendingIntent;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pi"    # Landroid/app/PendingIntent;

    .prologue
    .line 32
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 33
    .local v0, "am":Landroid/media/AudioManager;
    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->registerMediaButtonEventReceiver(Landroid/app/PendingIntent;)V

    .line 34
    return-void
.end method

.method public static setOnPlaybackPositionUpdateListener(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p0, "rccObj"    # Ljava/lang/Object;
    .param p1, "onPositionUpdateObj"    # Ljava/lang/Object;

    .prologue
    .line 60
    check-cast p0, Landroid/media/RemoteControlClient;

    .end local p0    # "rccObj":Ljava/lang/Object;
    check-cast p1, Landroid/media/RemoteControlClient$OnPlaybackPositionUpdateListener;

    .end local p1    # "onPositionUpdateObj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/media/RemoteControlClient;->setPlaybackPositionUpdateListener(Landroid/media/RemoteControlClient$OnPlaybackPositionUpdateListener;)V

    .line 62
    return-void
.end method

.method public static setState(Ljava/lang/Object;IJFJ)V
    .locals 8
    .param p0, "rccObj"    # Ljava/lang/Object;
    .param p1, "state"    # I
    .param p2, "position"    # J
    .param p4, "speed"    # F
    .param p5, "updateTime"    # J

    .prologue
    const-wide/16 v6, 0x0

    .line 43
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 44
    .local v0, "currTime":J
    const/4 v4, 0x3

    if-ne p1, v4, :cond_1

    cmp-long v4, p2, v6

    if-lez v4, :cond_1

    .line 45
    const-wide/16 v2, 0x0

    .line 46
    .local v2, "diff":J
    cmp-long v4, p5, v6

    if-lez v4, :cond_0

    .line 47
    sub-long v2, v0, p5

    .line 48
    const/4 v4, 0x0

    cmpl-float v4, p4, v4

    if-lez v4, :cond_0

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v4, p4, v4

    if-eqz v4, :cond_0

    .line 49
    long-to-float v4, v2

    mul-float/2addr v4, p4

    float-to-long v2, v4

    .line 52
    :cond_0
    add-long/2addr p2, v2

    .line 54
    .end local v2    # "diff":J
    :cond_1
    invoke-static {p1}, Landroid/support/v4/media/session/MediaSessionCompatApi14;->getRccStateFromState(I)I

    move-result p1

    .line 55
    check-cast p0, Landroid/media/RemoteControlClient;

    .end local p0    # "rccObj":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/media/RemoteControlClient;->setPlaybackState(IJF)V

    .line 56
    return-void
.end method

.method public static unregisterMediaButtonEventReceiver(Landroid/content/Context;Landroid/app/PendingIntent;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pi"    # Landroid/app/PendingIntent;

    .prologue
    .line 37
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 38
    .local v0, "am":Landroid/media/AudioManager;
    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->unregisterMediaButtonEventReceiver(Landroid/app/PendingIntent;)V

    .line 39
    return-void
.end method
