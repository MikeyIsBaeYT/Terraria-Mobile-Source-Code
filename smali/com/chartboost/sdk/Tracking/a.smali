.class public Lcom/chartboost/sdk/Tracking/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/chartboost/sdk/Libraries/a;


# static fields
.field private static final b:Ljava/lang/String;

.field private static k:Lcom/chartboost/sdk/Tracking/a;

.field private static l:Z


# instance fields
.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Lorg/json/JSONArray;

.field private f:J

.field private g:J

.field private h:J

.field private i:Lcom/chartboost/sdk/Libraries/h;

.field private j:Lcom/chartboost/sdk/Libraries/h;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/chartboost/sdk/Tracking/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/chartboost/sdk/Tracking/a;->b:Ljava/lang/String;

    .line 79
    const/4 v0, 0x0

    sput-boolean v0, Lcom/chartboost/sdk/Tracking/a;->l:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/chartboost/sdk/Tracking/a;->h:J

    .line 86
    invoke-virtual {p0}, Lcom/chartboost/sdk/Tracking/a;->o()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/chartboost/sdk/Tracking/a;->d:Ljava/lang/String;

    .line 87
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/chartboost/sdk/Tracking/a;->e:Lorg/json/JSONArray;

    .line 88
    new-instance v0, Lcom/chartboost/sdk/Libraries/h;

    const-string v1, "CBTrackingDirectory"

    invoke-direct {v0, v1, v2}, Lcom/chartboost/sdk/Libraries/h;-><init>(Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/chartboost/sdk/Tracking/a;->i:Lcom/chartboost/sdk/Libraries/h;

    .line 89
    new-instance v0, Lcom/chartboost/sdk/Libraries/h;

    const-string v1, "CBSessionDirectory"

    invoke-direct {v0, v1, v2}, Lcom/chartboost/sdk/Libraries/h;-><init>(Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/chartboost/sdk/Tracking/a;->j:Lcom/chartboost/sdk/Libraries/h;

    .line 90
    return-void
.end method

.method public static a()Lcom/chartboost/sdk/Tracking/a;
    .locals 2

    .prologue
    .line 93
    sget-object v0, Lcom/chartboost/sdk/Tracking/a;->k:Lcom/chartboost/sdk/Tracking/a;

    if-nez v0, :cond_1

    .line 94
    const-class v1, Lcom/chartboost/sdk/Chartboost;

    monitor-enter v1

    .line 95
    :try_start_0
    sget-object v0, Lcom/chartboost/sdk/Tracking/a;->k:Lcom/chartboost/sdk/Tracking/a;

    if-nez v0, :cond_0

    .line 96
    new-instance v0, Lcom/chartboost/sdk/Tracking/a;

    invoke-direct {v0}, Lcom/chartboost/sdk/Tracking/a;-><init>()V

    sput-object v0, Lcom/chartboost/sdk/Tracking/a;->k:Lcom/chartboost/sdk/Tracking/a;

    .line 98
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    :cond_1
    sget-object v0, Lcom/chartboost/sdk/Tracking/a;->k:Lcom/chartboost/sdk/Tracking/a;

    return-object v0

    .line 98
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 667
    if-eqz p0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    const-string p0, ""

    goto :goto_0
.end method

.method public static a(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 663
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 115
    sget-object v0, Lcom/chartboost/sdk/Tracking/a;->k:Lcom/chartboost/sdk/Tracking/a;

    const-string v1, "session"

    const-string v7, "session"

    move-object v2, p0

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-virtual/range {v0 .. v7}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 280
    sget-object v0, Lcom/chartboost/sdk/Tracking/a;->k:Lcom/chartboost/sdk/Tracking/a;

    const-string v1, "start"

    const-string v7, "system"

    move-object v2, p0

    move-object v3, p1

    move-object v5, v4

    move-object v6, v4

    invoke-virtual/range {v0 .. v7}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 348
    sget-object v0, Lcom/chartboost/sdk/Tracking/a;->k:Lcom/chartboost/sdk/Tracking/a;

    const-string v1, "playback-start"

    invoke-static {p2}, Lcom/chartboost/sdk/Tracking/a;->a(I)Ljava/lang/String;

    move-result-object v4

    const-string v7, "system"

    move-object v2, p0

    move-object v3, p1

    move-object v6, v5

    invoke-virtual/range {v0 .. v7}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 239
    sget-object v0, Lcom/chartboost/sdk/Tracking/a;->k:Lcom/chartboost/sdk/Tracking/a;

    const-string v1, "ad-error"

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_0
    const-string v7, "system"

    move-object v2, p0

    move-object v3, p1

    move-object v6, v5

    invoke-virtual/range {v0 .. v7}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    return-void

    .line 239
    :cond_0
    const-string v4, ""

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 190
    sget-object v0, Lcom/chartboost/sdk/Tracking/a;->k:Lcom/chartboost/sdk/Tracking/a;

    const-string v1, "ad-show"

    const-string v7, "system"

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v6, v5

    invoke-virtual/range {v0 .. v7}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 8

    .prologue
    .line 210
    sget-object v0, Lcom/chartboost/sdk/Tracking/a;->k:Lcom/chartboost/sdk/Tracking/a;

    const-string v1, "ad-click"

    invoke-static {p3}, Lcom/chartboost/sdk/Tracking/a;->a(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const-string v7, "system"

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v7}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 8

    .prologue
    .line 387
    sget-object v0, Lcom/chartboost/sdk/Tracking/a;->k:Lcom/chartboost/sdk/Tracking/a;

    const-string v1, "install-click"

    invoke-static {p3}, Lcom/chartboost/sdk/Tracking/a;->a(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {p4}, Lcom/chartboost/sdk/Tracking/a;->a(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "system"

    move-object v2, p0

    move-object v3, p2

    move-object v4, p1

    invoke-virtual/range {v0 .. v7}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 290
    sget-object v0, Lcom/chartboost/sdk/Tracking/a;->k:Lcom/chartboost/sdk/Tracking/a;

    const-string v1, "failure"

    const/4 v6, 0x0

    const-string v7, "system"

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v7}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 9

    .prologue
    .line 403
    sget-object v0, Lcom/chartboost/sdk/Tracking/a;->k:Lcom/chartboost/sdk/Tracking/a;

    const-string v8, "system"

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v8}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 405
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 8

    .prologue
    .line 150
    sget-object v0, Lcom/chartboost/sdk/Tracking/a;->k:Lcom/chartboost/sdk/Tracking/a;

    const-string v1, "ad-get"

    invoke-static {p2}, Lcom/chartboost/sdk/Tracking/a;->b(Z)Ljava/lang/String;

    move-result-object v4

    const-string v5, "single"

    const/4 v6, 0x0

    const-string v7, "system"

    move-object v2, p0

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    return-void
.end method

.method public static b(Z)Ljava/lang/String;
    .locals 1

    .prologue
    .line 659
    if-eqz p0, :cond_0

    const-string v0, "1"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method

.method public static b()V
    .locals 1

    .prologue
    .line 110
    const-string v0, "start"

    invoke-static {v0}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/String;)V

    .line 111
    const-string v0, "did-become-active"

    invoke-static {v0}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/String;)V

    .line 112
    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 320
    sget-object v0, Lcom/chartboost/sdk/Tracking/a;->k:Lcom/chartboost/sdk/Tracking/a;

    const-string v1, "confirmation-show"

    const-string v7, "system"

    move-object v2, p0

    move-object v3, p1

    move-object v5, v4

    move-object v6, v4

    invoke-virtual/range {v0 .. v7}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 367
    sget-object v0, Lcom/chartboost/sdk/Tracking/a;->k:Lcom/chartboost/sdk/Tracking/a;

    const-string v1, "close-show"

    invoke-static {p2}, Lcom/chartboost/sdk/Tracking/a;->a(I)Ljava/lang/String;

    move-result-object v4

    const-string v7, "system"

    move-object v2, p0

    move-object v3, p1

    move-object v6, v5

    invoke-virtual/range {v0 .. v7}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 200
    sget-object v0, Lcom/chartboost/sdk/Tracking/a;->k:Lcom/chartboost/sdk/Tracking/a;

    const-string v1, "ad-click"

    const-string v7, "system"

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v6, v5

    invoke-virtual/range {v0 .. v7}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 170
    sget-object v0, Lcom/chartboost/sdk/Tracking/a;->k:Lcom/chartboost/sdk/Tracking/a;

    const-string v1, "ad-has"

    invoke-static {p2}, Lcom/chartboost/sdk/Tracking/a;->b(Z)Ljava/lang/String;

    move-result-object v4

    const-string v7, "system"

    move-object v2, p0

    move-object v3, p1

    move-object v6, v5

    invoke-virtual/range {v0 .. v7}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 339
    sget-object v0, Lcom/chartboost/sdk/Tracking/a;->k:Lcom/chartboost/sdk/Tracking/a;

    const-string v1, "replay"

    const-string v7, "system"

    move-object v2, p0

    move-object v3, p1

    move-object v5, v4

    move-object v6, v4

    invoke-virtual/range {v0 .. v7}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 230
    sget-object v0, Lcom/chartboost/sdk/Tracking/a;->k:Lcom/chartboost/sdk/Tracking/a;

    const-string v1, "ad-close"

    const-string v7, "system"

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v6, v5

    invoke-virtual/range {v0 .. v7}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 180
    sget-object v0, Lcom/chartboost/sdk/Tracking/a;->k:Lcom/chartboost/sdk/Tracking/a;

    const-string v1, "ad-loaded"

    invoke-static {p2}, Lcom/chartboost/sdk/Tracking/a;->b(Z)Ljava/lang/String;

    move-result-object v4

    const-string v7, "system"

    move-object v2, p0

    move-object v3, p1

    move-object v6, v5

    invoke-virtual/range {v0 .. v7}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    return-void
.end method

.method public static d()V
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 250
    sget-object v0, Lcom/chartboost/sdk/Tracking/a;->k:Lcom/chartboost/sdk/Tracking/a;

    const-string v1, "video-prefetcher"

    const-string v2, "begin"

    const-string v7, "system"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-virtual/range {v0 .. v7}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 357
    sget-object v0, Lcom/chartboost/sdk/Tracking/a;->k:Lcom/chartboost/sdk/Tracking/a;

    const-string v1, "playback-stop"

    const-string v7, "system"

    move-object v2, p0

    move-object v3, p1

    move-object v5, v4

    move-object v6, v4

    invoke-virtual/range {v0 .. v7}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 300
    sget-object v0, Lcom/chartboost/sdk/Tracking/a;->k:Lcom/chartboost/sdk/Tracking/a;

    const-string v1, "success"

    const-string v7, "system"

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v6, v5

    invoke-virtual/range {v0 .. v7}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 329
    sget-object v0, Lcom/chartboost/sdk/Tracking/a;->k:Lcom/chartboost/sdk/Tracking/a;

    const-string v1, "confirmation-dismiss"

    invoke-static {p2}, Lcom/chartboost/sdk/Tracking/a;->b(Z)Ljava/lang/String;

    move-result-object v4

    const-string v7, "system"

    move-object v2, p0

    move-object v3, p1

    move-object v6, v5

    invoke-virtual/range {v0 .. v7}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    return-void
.end method

.method public static e()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 270
    sget-object v0, Lcom/chartboost/sdk/Tracking/a;->k:Lcom/chartboost/sdk/Tracking/a;

    const-string v1, "video-prefetcher"

    const-string v7, "system"

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 310
    sget-object v0, Lcom/chartboost/sdk/Tracking/a;->k:Lcom/chartboost/sdk/Tracking/a;

    const-string v7, "system"

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, v4

    move-object v6, v4

    invoke-virtual/range {v0 .. v7}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 377
    sget-object v0, Lcom/chartboost/sdk/Tracking/a;->k:Lcom/chartboost/sdk/Tracking/a;

    const-string v1, "controls-toggle"

    invoke-static {p2}, Lcom/chartboost/sdk/Tracking/a;->b(Z)Ljava/lang/String;

    move-result-object v4

    const-string v7, "system"

    move-object v2, p0

    move-object v3, p1

    move-object v6, v5

    invoke-virtual/range {v0 .. v7}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    return-void
.end method


# virtual methods
.method public a(Lcom/chartboost/sdk/Libraries/e$a;)Lcom/chartboost/sdk/impl/az;
    .locals 5

    .prologue
    .line 567
    new-instance v0, Lcom/chartboost/sdk/impl/az;

    const-string v1, "/api/track"

    invoke-direct {v0, v1}, Lcom/chartboost/sdk/impl/az;-><init>(Ljava/lang/String;)V

    .line 568
    const-string v1, "track"

    invoke-virtual {v0, v1, p1}, Lcom/chartboost/sdk/impl/az;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 569
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/chartboost/sdk/Libraries/g$k;

    const/4 v2, 0x0

    const-string v3, "status"

    sget-object v4, Lcom/chartboost/sdk/Libraries/a;->a:Lcom/chartboost/sdk/Libraries/g$a;

    invoke-static {v3, v4}, Lcom/chartboost/sdk/Libraries/g;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$k;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/chartboost/sdk/Libraries/g;->a([Lcom/chartboost/sdk/Libraries/g$k;)Lcom/chartboost/sdk/Libraries/g$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/az;->a(Lcom/chartboost/sdk/Libraries/g$a;)V

    .line 571
    sget-object v1, Lcom/chartboost/sdk/impl/l$a;->a:Lcom/chartboost/sdk/impl/l$a;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/az;->a(Lcom/chartboost/sdk/impl/l$a;)V

    .line 572
    return-object v0
.end method

.method public a(JJ)V
    .locals 3

    .prologue
    .line 554
    invoke-static {}, Lcom/chartboost/sdk/Libraries/e$a;->a()Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v0

    .line 555
    const-string v1, "start_timestamp"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 556
    const-string v1, "timestamp"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 557
    const-string v1, "session_id"

    iget-object v2, p0, Lcom/chartboost/sdk/Tracking/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 558
    iget-object v1, p0, Lcom/chartboost/sdk/Tracking/a;->j:Lcom/chartboost/sdk/Libraries/h;

    const-string v2, "cb_previous_session_info"

    invoke-virtual {v1, v2, v0}, Lcom/chartboost/sdk/Libraries/h;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/e$a;)Ljava/io/File;

    .line 559
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .prologue
    .line 414
    sget-object v0, Lcom/chartboost/sdk/Tracking/a;->k:Lcom/chartboost/sdk/Tracking/a;

    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 416
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 12

    .prologue
    .line 427
    const/4 v3, 0x0

    .line 431
    :try_start_0
    const-class v2, Lcom/chartboost/sdk/b;

    const-string v4, "h"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 432
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 433
    const/4 v4, 0x0

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 439
    :goto_0
    invoke-static {}, Lcom/chartboost/sdk/Libraries/e$a;->a()Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v3

    .line 440
    if-eqz v2, :cond_3

    move-object/from16 v0, p8

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 441
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 442
    iget-wide v6, p0, Lcom/chartboost/sdk/Tracking/a;->f:J

    sub-long v6, v4, v6

    .line 443
    iget-wide v8, p0, Lcom/chartboost/sdk/Tracking/a;->h:J

    sub-long/2addr v4, v8

    .line 445
    const-string v2, "event"

    invoke-static {p1}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v3, v2, v8}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 446
    const-string v2, "kingdom"

    invoke-static {p2}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v3, v2, v8}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 447
    const-string v2, "phylum"

    invoke-static {p3}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v3, v2, v8}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 448
    const-string v2, "class"

    invoke-static/range {p4 .. p4}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v3, v2, v8}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 449
    const-string v2, "family"

    invoke-static/range {p5 .. p5}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v3, v2, v8}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 450
    const-string v2, "genus"

    invoke-static/range {p6 .. p6}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v3, v2, v8}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 451
    const-string v2, "meta"

    if-nez p7, :cond_0

    new-instance p7, Lorg/json/JSONObject;

    invoke-direct/range {p7 .. p7}, Lorg/json/JSONObject;-><init>()V

    :cond_0
    move-object/from16 v0, p7

    invoke-virtual {v3, v2, v0}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 452
    const-string v2, "clientTimestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v3, v2, v8}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 453
    const-string v2, "session_id"

    invoke-virtual {p0}, Lcom/chartboost/sdk/Tracking/a;->k()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v2, v8}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 454
    const-string v2, "totalSessionTime"

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v2, v6}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 455
    const-string v2, "currentSessionTime"

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 457
    monitor-enter p0

    .line 458
    :try_start_1
    invoke-static {}, Lcom/chartboost/sdk/impl/ba;->h()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/chartboost/sdk/Tracking/a;->f()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 459
    :cond_1
    invoke-virtual {p0}, Lcom/chartboost/sdk/Tracking/a;->p()V

    .line 460
    :cond_2
    iget-object v2, p0, Lcom/chartboost/sdk/Tracking/a;->e:Lorg/json/JSONArray;

    invoke-virtual {v3}, Lcom/chartboost/sdk/Libraries/e$a;->e()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 461
    invoke-static {}, Lcom/chartboost/sdk/Libraries/e$a;->a()Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v2

    .line 462
    const-string v3, "events"

    iget-object v4, p0, Lcom/chartboost/sdk/Tracking/a;->e:Lorg/json/JSONArray;

    invoke-virtual {v2, v3, v4}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 463
    sget-object v3, Lcom/chartboost/sdk/Tracking/a;->b:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "###Writing"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "to tracking cache dir"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 464
    iget-object v3, p0, Lcom/chartboost/sdk/Tracking/a;->i:Lcom/chartboost/sdk/Libraries/h;

    iget-object v4, p0, Lcom/chartboost/sdk/Tracking/a;->d:Ljava/lang/String;

    invoke-static {v2}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Lcom/chartboost/sdk/Libraries/h;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/e$a;)Ljava/io/File;

    .line 465
    invoke-virtual {p0}, Lcom/chartboost/sdk/Tracking/a;->j()V

    .line 467
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 469
    :cond_3
    return-void

    .line 434
    :catch_0
    move-exception v2

    .line 435
    const-string v4, "Error encountered getting tracking levels"

    invoke-static {p0, v4, v2}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 436
    invoke-static {v2}, Lcom/chartboost/sdk/Libraries/CBUtility;->throwProguardError(Ljava/lang/Exception;)V

    move-object v2, v3

    goto/16 :goto_0

    .line 467
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public a(Z)V
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 130
    invoke-static {}, Lcom/chartboost/sdk/Libraries/e$a;->a()Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v4

    .line 131
    const-string v0, "complete"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 132
    sget-object v0, Lcom/chartboost/sdk/Tracking/a;->k:Lcom/chartboost/sdk/Tracking/a;

    const-string v1, "session"

    const-string v2, "end"

    invoke-virtual {v4}, Lcom/chartboost/sdk/Libraries/e$a;->e()Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "session"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-virtual/range {v0 .. v8}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 140
    const-string v0, "did-become-active"

    invoke-static {v0}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/String;)V

    .line 141
    return-void
.end method

.method public b(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 671
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 672
    const/4 v0, 0x1

    .line 673
    :goto_0
    return v0

    :cond_0
    const-string v0, "cb_previous_session_info"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 126
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/Tracking/a;->a(Z)V

    .line 127
    return-void
.end method

.method public f()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 476
    iget-object v1, p0, Lcom/chartboost/sdk/Tracking/a;->e:Lorg/json/JSONArray;

    if-eqz v1, :cond_0

    .line 477
    iget-object v1, p0, Lcom/chartboost/sdk/Tracking/a;->e:Lorg/json/JSONArray;

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/16 v2, 0x32

    if-lt v1, v2, :cond_0

    const/4 v0, 0x1

    .line 479
    :cond_0
    return v0
.end method

.method public g()Ljava/lang/String;
    .locals 4

    .prologue
    .line 486
    invoke-static {}, Lcom/chartboost/sdk/Libraries/e$a;->a()Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v0

    .line 487
    const-string v1, "startTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 488
    const-string v1, "deviceID"

    invoke-static {}, Lcom/chartboost/sdk/Libraries/c;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 489
    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/e$a;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/chartboost/sdk/Libraries/b;->b([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/chartboost/sdk/Tracking/a;->c:Ljava/lang/String;

    .line 490
    iget-object v0, p0, Lcom/chartboost/sdk/Tracking/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public h()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 497
    .line 498
    iget-object v0, p0, Lcom/chartboost/sdk/Tracking/a;->j:Lcom/chartboost/sdk/Libraries/h;

    const-string v1, "cb_previous_session_info"

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/Libraries/h;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v0

    .line 499
    if-eqz v0, :cond_1

    .line 500
    const-string v1, "timestamp"

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/Libraries/e$a;->h(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/chartboost/sdk/Tracking/a;->g:J

    .line 501
    const-string v1, "start_timestamp"

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/Libraries/e$a;->h(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/chartboost/sdk/Tracking/a;->f:J

    .line 502
    const-string v1, "session_id"

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/Libraries/e$a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/chartboost/sdk/Tracking/a;->c:Ljava/lang/String;

    .line 503
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 505
    iget-wide v2, p0, Lcom/chartboost/sdk/Tracking/a;->g:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x2bf20

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 506
    iget-object v0, p0, Lcom/chartboost/sdk/Tracking/a;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 507
    invoke-virtual {p0}, Lcom/chartboost/sdk/Tracking/a;->j()V

    .line 508
    const/4 v0, 0x0

    sput-boolean v0, Lcom/chartboost/sdk/Tracking/a;->l:Z

    .line 520
    :goto_0
    return-void

    .line 513
    :cond_0
    invoke-virtual {p0, v4}, Lcom/chartboost/sdk/Tracking/a;->a(Z)V

    .line 517
    :cond_1
    invoke-virtual {p0}, Lcom/chartboost/sdk/Tracking/a;->i()V

    .line 518
    sput-boolean v4, Lcom/chartboost/sdk/Tracking/a;->l:Z

    goto :goto_0
.end method

.method public i()V
    .locals 3

    .prologue
    .line 530
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 531
    iput-wide v0, p0, Lcom/chartboost/sdk/Tracking/a;->f:J

    .line 532
    iput-wide v0, p0, Lcom/chartboost/sdk/Tracking/a;->g:J

    .line 533
    invoke-virtual {p0}, Lcom/chartboost/sdk/Tracking/a;->g()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/chartboost/sdk/Tracking/a;->c:Ljava/lang/String;

    .line 534
    invoke-virtual {p0, v0, v1, v0, v1}, Lcom/chartboost/sdk/Tracking/a;->a(JJ)V

    .line 537
    invoke-static {}, Lcom/chartboost/sdk/Libraries/CBUtility;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 538
    const-string v1, "cbPrefSessionCount"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 539
    add-int/lit8 v1, v1, 0x1

    .line 540
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 541
    const-string v2, "cbPrefSessionCount"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 542
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 543
    return-void
.end method

.method public j()V
    .locals 4

    .prologue
    .line 549
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 550
    iget-wide v2, p0, Lcom/chartboost/sdk/Tracking/a;->f:J

    invoke-virtual {p0, v2, v3, v0, v1}, Lcom/chartboost/sdk/Tracking/a;->a(JJ)V

    .line 551
    return-void
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 584
    iget-object v0, p0, Lcom/chartboost/sdk/Tracking/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public l()Lcom/chartboost/sdk/Libraries/h;
    .locals 1

    .prologue
    .line 602
    iget-object v0, p0, Lcom/chartboost/sdk/Tracking/a;->i:Lcom/chartboost/sdk/Libraries/h;

    return-object v0
.end method

.method public m()Lorg/json/JSONArray;
    .locals 1

    .prologue
    .line 606
    iget-object v0, p0, Lcom/chartboost/sdk/Tracking/a;->e:Lorg/json/JSONArray;

    return-object v0
.end method

.method public n()J
    .locals 2

    .prologue
    .line 616
    iget-wide v0, p0, Lcom/chartboost/sdk/Tracking/a;->f:J

    return-wide v0
.end method

.method public o()Ljava/lang/String;
    .locals 4

    .prologue
    .line 645
    new-instance v0, Ljava/lang/Long;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public p()V
    .locals 1

    .prologue
    .line 680
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/chartboost/sdk/Tracking/a;->e:Lorg/json/JSONArray;

    .line 681
    invoke-virtual {p0}, Lcom/chartboost/sdk/Tracking/a;->o()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/chartboost/sdk/Tracking/a;->d:Ljava/lang/String;

    .line 682
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 580
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Session [ startTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/chartboost/sdk/Tracking/a;->n()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " sessionEvents: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/chartboost/sdk/Tracking/a;->m()Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
