.class public Lcom/flurry/android/FlurryAppCloud;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static bA:Lcom/flurry/android/CacheSearchItemsData;

.field private static bB:Z

.field private static bC:Z

.field private static bD:Lcom/flurry/android/es;

.field private static bt:Ljava/lang/String;

.field private static bu:Ljava/lang/String;

.field private static bv:Lcom/flurry/android/caching/CachingManager;

.field private static bw:Lcom/flurry/android/CacheSyncManager;

.field private static bx:Lcom/flurry/android/fk;

.field private static by:Lcom/flurry/android/r;

.field private static bz:Lcom/flurry/android/CacheSearchData;

.field private static f:Lcom/flurry/android/az;

.field private static g:Lcom/flurry/android/at;

.field private static h:Lcom/flurry/android/dc;

.field private static p:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 11
    const-string v0, "appcloud.flurry.com"

    sput-object v0, Lcom/flurry/android/FlurryAppCloud;->bt:Ljava/lang/String;

    .line 12
    const-string v0, "appcloud-node-stage.corp.flurry.com"

    sput-object v0, Lcom/flurry/android/FlurryAppCloud;->bu:Ljava/lang/String;

    .line 13
    const-string v0, "FlurryAgent"

    sput-object v0, Lcom/flurry/android/FlurryAppCloud;->p:Ljava/lang/String;

    .line 14
    sput-object v1, Lcom/flurry/android/FlurryAppCloud;->bv:Lcom/flurry/android/caching/CachingManager;

    .line 18
    sput-object v1, Lcom/flurry/android/FlurryAppCloud;->bw:Lcom/flurry/android/CacheSyncManager;

    .line 19
    sput-object v1, Lcom/flurry/android/FlurryAppCloud;->bx:Lcom/flurry/android/fk;

    .line 20
    sput-object v1, Lcom/flurry/android/FlurryAppCloud;->by:Lcom/flurry/android/r;

    .line 23
    sput-object v1, Lcom/flurry/android/FlurryAppCloud;->g:Lcom/flurry/android/at;

    .line 24
    sput-object v1, Lcom/flurry/android/FlurryAppCloud;->f:Lcom/flurry/android/az;

    .line 25
    sput-object v1, Lcom/flurry/android/FlurryAppCloud;->h:Lcom/flurry/android/dc;

    .line 26
    sput-object v1, Lcom/flurry/android/FlurryAppCloud;->bz:Lcom/flurry/android/CacheSearchData;

    .line 27
    sput-object v1, Lcom/flurry/android/FlurryAppCloud;->bA:Lcom/flurry/android/CacheSearchItemsData;

    .line 33
    const/4 v0, 0x1

    sput-boolean v0, Lcom/flurry/android/FlurryAppCloud;->bB:Z

    .line 38
    const/4 v0, 0x0

    sput-boolean v0, Lcom/flurry/android/FlurryAppCloud;->bC:Z

    .line 40
    invoke-static {}, Lcom/flurry/android/es;->aW()Lcom/flurry/android/es;

    move-result-object v0

    sput-object v0, Lcom/flurry/android/FlurryAppCloud;->bD:Lcom/flurry/android/es;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static C()Lcom/flurry/android/caching/CachingManager;
    .locals 1

    .prologue
    .line 103
    sget-object v0, Lcom/flurry/android/FlurryAppCloud;->bv:Lcom/flurry/android/caching/CachingManager;

    return-object v0
.end method

.method static D()Lcom/flurry/android/CacheSyncManager;
    .locals 1

    .prologue
    .line 107
    sget-object v0, Lcom/flurry/android/FlurryAppCloud;->bw:Lcom/flurry/android/CacheSyncManager;

    return-object v0
.end method

.method static E()Lcom/flurry/android/fk;
    .locals 1

    .prologue
    .line 111
    sget-object v0, Lcom/flurry/android/FlurryAppCloud;->bx:Lcom/flurry/android/fk;

    return-object v0
.end method

.method static F()Lcom/flurry/android/r;
    .locals 1

    .prologue
    .line 115
    sget-object v0, Lcom/flurry/android/FlurryAppCloud;->by:Lcom/flurry/android/r;

    return-object v0
.end method

.method static G()V
    .locals 1

    .prologue
    .line 131
    sget-object v0, Lcom/flurry/android/FlurryAppCloud;->by:Lcom/flurry/android/r;

    if-eqz v0, :cond_0

    .line 132
    sget-object v0, Lcom/flurry/android/FlurryAppCloud;->by:Lcom/flurry/android/r;

    invoke-virtual {v0}, Lcom/flurry/android/r;->start()V

    .line 136
    :cond_0
    return-void
.end method

.method static H()V
    .locals 1

    .prologue
    .line 140
    sget-object v0, Lcom/flurry/android/FlurryAppCloud;->by:Lcom/flurry/android/r;

    if-eqz v0, :cond_0

    .line 141
    sget-object v0, Lcom/flurry/android/FlurryAppCloud;->by:Lcom/flurry/android/r;

    invoke-virtual {v0}, Lcom/flurry/android/r;->stop()V

    .line 145
    :cond_0
    return-void
.end method

.method static I()Ljava/lang/String;
    .locals 1

    .prologue
    .line 176
    sget-boolean v0, Lcom/flurry/android/FlurryAppCloud;->bB:Z

    if-eqz v0, :cond_0

    .line 178
    sget-object v0, Lcom/flurry/android/FlurryAppCloud;->bt:Ljava/lang/String;

    .line 182
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/flurry/android/FlurryAppCloud;->bu:Ljava/lang/String;

    goto :goto_0
.end method

.method static a(Lcom/flurry/android/gn;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 59
    sget-object v0, Lcom/flurry/android/ez;->gI:[I

    invoke-virtual {p0}, Lcom/flurry/android/gn;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 76
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 61
    :pswitch_0
    sget-object v0, Lcom/flurry/android/FlurryAppCloud;->g:Lcom/flurry/android/at;

    goto :goto_0

    .line 64
    :pswitch_1
    sget-object v0, Lcom/flurry/android/FlurryAppCloud;->f:Lcom/flurry/android/az;

    goto :goto_0

    .line 67
    :pswitch_2
    sget-object v0, Lcom/flurry/android/FlurryAppCloud;->h:Lcom/flurry/android/dc;

    goto :goto_0

    .line 70
    :pswitch_3
    sget-object v0, Lcom/flurry/android/FlurryAppCloud;->bz:Lcom/flurry/android/CacheSearchData;

    goto :goto_0

    .line 73
    :pswitch_4
    sget-object v0, Lcom/flurry/android/FlurryAppCloud;->bA:Lcom/flurry/android/CacheSearchItemsData;

    goto :goto_0

    .line 59
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method static d(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 43
    new-instance v0, Lcom/flurry/android/at;

    invoke-direct {v0, p0, p1}, Lcom/flurry/android/at;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcom/flurry/android/FlurryAppCloud;->g:Lcom/flurry/android/at;

    new-instance v0, Lcom/flurry/android/az;

    invoke-direct {v0, p0, p1}, Lcom/flurry/android/az;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcom/flurry/android/FlurryAppCloud;->f:Lcom/flurry/android/az;

    new-instance v0, Lcom/flurry/android/dc;

    invoke-direct {v0, p0, p1}, Lcom/flurry/android/dc;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcom/flurry/android/FlurryAppCloud;->h:Lcom/flurry/android/dc;

    new-instance v0, Lcom/flurry/android/CacheSearchData;

    invoke-direct {v0, p0, p1}, Lcom/flurry/android/CacheSearchData;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcom/flurry/android/FlurryAppCloud;->bz:Lcom/flurry/android/CacheSearchData;

    new-instance v0, Lcom/flurry/android/CacheSearchItemsData;

    invoke-direct {v0, p0, p1}, Lcom/flurry/android/CacheSearchItemsData;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcom/flurry/android/FlurryAppCloud;->bA:Lcom/flurry/android/CacheSearchItemsData;

    .line 45
    sget-object v0, Lcom/flurry/android/FlurryAppCloud;->bw:Lcom/flurry/android/CacheSyncManager;

    invoke-virtual {v0}, Lcom/flurry/android/CacheSyncManager;->a()V

    .line 46
    sget-object v0, Lcom/flurry/android/FlurryAppCloud;->bw:Lcom/flurry/android/CacheSyncManager;

    invoke-virtual {v0}, Lcom/flurry/android/CacheSyncManager;->synchronize()V

    .line 47
    return-void
.end method

.method static g(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 159
    invoke-static {p0}, Lcom/flurry/android/FlurryAppCloudRequestManager;->g(Ljava/lang/String;)V

    .line 160
    return-void
.end method

.method public static getPushToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 230
    sget-object v0, Lcom/flurry/android/FlurryAppCloud;->bD:Lcom/flurry/android/es;

    invoke-virtual {v0}, Lcom/flurry/android/es;->getPushToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static initAppCloudModule(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 204
    if-nez p0, :cond_0

    .line 205
    :try_start_0
    sget-object v0, Lcom/flurry/android/FlurryAppCloud;->p:Ljava/lang/String;

    const-string v1, "Context passed to getAppCloud was null."

    invoke-static {v0, v1}, Lcom/flurry/android/cy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    :cond_0
    sget-boolean v0, Lcom/flurry/android/FlurryAppCloud;->bC:Z

    if-nez v0, :cond_2

    sget-object v0, Lcom/flurry/android/FlurryAppCloud;->bD:Lcom/flurry/android/es;

    invoke-virtual {v0}, Lcom/flurry/android/es;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/flurry/android/FlurryAppCloud;->p:Ljava/lang/String;

    const-string v1, "Initializing Flurry AppCloud"

    invoke-static {v0, v1}, Lcom/flurry/android/cy;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/flurry/android/en;

    invoke-direct {v0}, Lcom/flurry/android/en;-><init>()V

    invoke-static {}, Lcom/flurry/android/FlurryAgent;->y()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/flurry/android/en;->aA:Ljava/lang/String;

    invoke-static {}, Lcom/flurry/android/es;->aW()Lcom/flurry/android/es;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/flurry/android/es;->a(Lcom/flurry/android/en;)V

    sget-object v0, Lcom/flurry/android/FlurryAppCloud;->p:Ljava/lang/String;

    const-string v1, "Flurry AppCloud initialized"

    invoke-static {v0, v1}, Lcom/flurry/android/cy;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x1

    sput-boolean v0, Lcom/flurry/android/FlurryAppCloud;->bC:Z

    .line 210
    :cond_2
    new-instance v0, Lcom/flurry/android/fk;

    invoke-direct {v0}, Lcom/flurry/android/fk;-><init>()V

    sput-object v0, Lcom/flurry/android/FlurryAppCloud;->bx:Lcom/flurry/android/fk;

    .line 211
    new-instance v0, Lcom/flurry/android/r;

    invoke-direct {v0}, Lcom/flurry/android/r;-><init>()V

    sput-object v0, Lcom/flurry/android/FlurryAppCloud;->by:Lcom/flurry/android/r;

    .line 213
    new-instance v0, Lcom/flurry/android/caching/CachingManager;

    invoke-direct {v0, p0}, Lcom/flurry/android/caching/CachingManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/flurry/android/FlurryAppCloud;->bv:Lcom/flurry/android/caching/CachingManager;

    .line 214
    new-instance v0, Lcom/flurry/android/CacheSyncManager;

    invoke-direct {v0}, Lcom/flurry/android/CacheSyncManager;-><init>()V

    sput-object v0, Lcom/flurry/android/FlurryAppCloud;->bw:Lcom/flurry/android/CacheSyncManager;

    .line 216
    invoke-static {p0}, Lcom/flurry/android/et;->g(Landroid/content/Context;)V

    .line 217
    invoke-static {p0}, Lcom/flurry/android/FlurryWallet;->g(Landroid/content/Context;)V

    .line 219
    invoke-static {}, Lcom/flurry/android/et;->aZ()Ljava/lang/String;

    move-result-object v0

    .line 221
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 222
    invoke-static {p0, v0}, Lcom/flurry/android/FlurryAppCloud;->d(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    :cond_3
    :goto_0
    return-void

    .line 224
    :catch_0
    move-exception v0

    .line 225
    sget-object v1, Lcom/flurry/android/FlurryAppCloud;->p:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/flurry/android/cy;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static printDB()V
    .locals 1

    .prologue
    .line 120
    sget-object v0, Lcom/flurry/android/FlurryAppCloud;->bw:Lcom/flurry/android/CacheSyncManager;

    invoke-virtual {v0}, Lcom/flurry/android/CacheSyncManager;->toStringAndPrint()V

    .line 121
    invoke-static {}, Lcom/flurry/android/AppCloudSearch;->toStringAndPrint()V

    .line 122
    return-void
.end method

.method public static setAppCloudServerToStaging(Z)V
    .locals 1

    .prologue
    .line 164
    if-nez p0, :cond_0

    .line 166
    const/4 v0, 0x1

    sput-boolean v0, Lcom/flurry/android/FlurryAppCloud;->bB:Z

    .line 172
    :goto_0
    return-void

    .line 170
    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/flurry/android/FlurryAppCloud;->bB:Z

    goto :goto_0
.end method

.method public static setPushToken(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 234
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "NP"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 235
    :cond_0
    sget-object v0, Lcom/flurry/android/FlurryAppCloud;->p:Ljava/lang/String;

    const-string v1, "setting push token."

    invoke-static {v0, v1}, Lcom/flurry/android/cy;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 238
    sget-object v0, Lcom/flurry/android/FlurryAppCloud;->bD:Lcom/flurry/android/es;

    invoke-virtual {v0, p0}, Lcom/flurry/android/es;->setPushToken(Ljava/lang/String;)V

    .line 243
    :cond_1
    :goto_0
    return-void

    .line 240
    :cond_2
    const-string v0, "NP"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 241
    sget-object v0, Lcom/flurry/android/FlurryAppCloud;->bD:Lcom/flurry/android/es;

    invoke-virtual {v0, p0}, Lcom/flurry/android/es;->setPushToken(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static synchronize()V
    .locals 1

    .prologue
    .line 126
    sget-object v0, Lcom/flurry/android/FlurryAppCloud;->bw:Lcom/flurry/android/CacheSyncManager;

    invoke-virtual {v0}, Lcom/flurry/android/CacheSyncManager;->synchronize()V

    .line 127
    return-void
.end method
