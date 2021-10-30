.class public final Lcom/chartboost/sdk/Libraries/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chartboost/sdk/Libraries/c$a;
    }
.end annotation


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;

.field private static c:Lcom/chartboost/sdk/Libraries/c$a;

.field private static d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 24
    sput-object v1, Lcom/chartboost/sdk/Libraries/c;->a:Ljava/lang/String;

    .line 27
    sput-object v1, Lcom/chartboost/sdk/Libraries/c;->b:Ljava/lang/String;

    .line 30
    sget-object v0, Lcom/chartboost/sdk/Libraries/c$a;->a:Lcom/chartboost/sdk/Libraries/c$a;

    sput-object v0, Lcom/chartboost/sdk/Libraries/c;->c:Lcom/chartboost/sdk/Libraries/c$a;

    .line 34
    sput-object v1, Lcom/chartboost/sdk/Libraries/c;->d:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method public static a()V
    .locals 3

    .prologue
    .line 68
    const-class v1, Lcom/chartboost/sdk/Libraries/d;

    monitor-enter v1

    .line 69
    :try_start_0
    invoke-static {}, Lcom/chartboost/sdk/Libraries/c;->c()Lcom/chartboost/sdk/Libraries/c$a;

    move-result-object v0

    sget-object v2, Lcom/chartboost/sdk/Libraries/c$a;->a:Lcom/chartboost/sdk/Libraries/c$a;

    if-eq v0, v2, :cond_0

    .line 70
    monitor-exit v1

    .line 97
    :goto_0
    return-void

    .line 71
    :cond_0
    sget-object v0, Lcom/chartboost/sdk/Libraries/c$a;->b:Lcom/chartboost/sdk/Libraries/c$a;

    invoke-static {v0}, Lcom/chartboost/sdk/Libraries/c;->a(Lcom/chartboost/sdk/Libraries/c$a;)V

    .line 72
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    const/4 v0, 0x0

    .line 76
    :try_start_1
    const-string v1, "com.google.android.gms.ads.identifier.AdvertisingIdClient"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    .line 78
    :goto_1
    if-nez v0, :cond_1

    .line 79
    invoke-static {}, Lcom/chartboost/sdk/Libraries/c;->g()V

    goto :goto_0

    .line 72
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 83
    :cond_1
    invoke-static {}, Lcom/chartboost/sdk/impl/ax;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/chartboost/sdk/Libraries/c$1;

    invoke-direct {v1}, Lcom/chartboost/sdk/Libraries/c$1;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 77
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method protected static declared-synchronized a(Lcom/chartboost/sdk/Libraries/c$a;)V
    .locals 2

    .prologue
    .line 119
    const-class v0, Lcom/chartboost/sdk/Libraries/c;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lcom/chartboost/sdk/Libraries/c;->c:Lcom/chartboost/sdk/Libraries/c$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    monitor-exit v0

    return-void

    .line 119
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static synthetic a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 18
    invoke-static {p0}, Lcom/chartboost/sdk/Libraries/c;->b(Ljava/lang/String;)V

    return-void
.end method

.method public static b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    sget-object v0, Lcom/chartboost/sdk/Libraries/c;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 108
    invoke-static {}, Lcom/chartboost/sdk/Libraries/c;->h()[B

    move-result-object v0

    invoke-static {v0}, Lcom/chartboost/sdk/Libraries/b;->b([B)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/chartboost/sdk/Libraries/c;->a:Ljava/lang/String;

    .line 111
    :cond_0
    sget-object v0, Lcom/chartboost/sdk/Libraries/c;->a:Ljava/lang/String;

    return-object v0
.end method

.method private static declared-synchronized b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 127
    const-class v0, Lcom/chartboost/sdk/Libraries/c;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lcom/chartboost/sdk/Libraries/c;->b:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    monitor-exit v0

    return-void

    .line 127
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized c()Lcom/chartboost/sdk/Libraries/c$a;
    .locals 2

    .prologue
    .line 115
    const-class v0, Lcom/chartboost/sdk/Libraries/c;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/chartboost/sdk/Libraries/c;->c:Lcom/chartboost/sdk/Libraries/c$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized d()Ljava/lang/String;
    .locals 2

    .prologue
    .line 123
    const-class v0, Lcom/chartboost/sdk/Libraries/c;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/chartboost/sdk/Libraries/c;->b:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static e()Ljava/lang/String;
    .locals 2

    .prologue
    .line 154
    invoke-static {}, Lcom/chartboost/sdk/b;->v()Landroid/content/Context;

    move-result-object v0

    .line 155
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic f()V
    .locals 0

    .prologue
    .line 18
    invoke-static {}, Lcom/chartboost/sdk/Libraries/c;->g()V

    return-void
.end method

.method private static g()V
    .locals 2

    .prologue
    .line 100
    const-string v0, "CBIdentity"

    const-string v1, "WARNING: It looks like you\'ve forgotten to include the Google Play Services library in your project. Please review the SDK documentation for more details."

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    sget-object v0, Lcom/chartboost/sdk/Libraries/c$a;->c:Lcom/chartboost/sdk/Libraries/c$a;

    invoke-static {v0}, Lcom/chartboost/sdk/Libraries/c;->a(Lcom/chartboost/sdk/Libraries/c$a;)V

    .line 103
    invoke-static {}, Lcom/chartboost/sdk/impl/ba;->b()V

    .line 104
    return-void
.end method

.method private static h()[B
    .locals 5

    .prologue
    .line 136
    invoke-static {}, Lcom/chartboost/sdk/Libraries/c;->e()Ljava/lang/String;

    move-result-object v0

    .line 137
    if-eqz v0, :cond_0

    const-string v1, "9774d56d682e549c"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 138
    :cond_0
    invoke-static {}, Lcom/chartboost/sdk/Libraries/c;->i()Ljava/lang/String;

    move-result-object v0

    .line 140
    :cond_1
    invoke-static {}, Lcom/chartboost/sdk/Libraries/c;->j()Ljava/lang/String;

    move-result-object v1

    .line 141
    invoke-static {}, Lcom/chartboost/sdk/Libraries/c;->d()Ljava/lang/String;

    move-result-object v2

    .line 144
    new-instance v3, Lcom/chartboost/sdk/impl/cm;

    invoke-direct {v3}, Lcom/chartboost/sdk/impl/cm;-><init>()V

    .line 145
    const-string v4, "uuid"

    invoke-virtual {v3, v4, v0}, Lcom/chartboost/sdk/impl/cm;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    const-string v0, "macid"

    invoke-virtual {v3, v0, v1}, Lcom/chartboost/sdk/impl/cm;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    const-string v0, "gaid"

    invoke-virtual {v3, v0, v2}, Lcom/chartboost/sdk/impl/cm;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    new-instance v0, Lcom/chartboost/sdk/impl/cl;

    invoke-direct {v0}, Lcom/chartboost/sdk/impl/cl;-><init>()V

    .line 150
    invoke-virtual {v0, v3}, Lcom/chartboost/sdk/impl/cl;->a(Lcom/chartboost/sdk/impl/cj;)[B

    move-result-object v0

    return-object v0
.end method

.method private static i()Ljava/lang/String;
    .locals 3

    .prologue
    .line 159
    sget-object v0, Lcom/chartboost/sdk/Libraries/c;->d:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 160
    invoke-static {}, Lcom/chartboost/sdk/Libraries/CBUtility;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 161
    const-string v1, "cbUUID"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/chartboost/sdk/Libraries/c;->d:Ljava/lang/String;

    .line 162
    sget-object v1, Lcom/chartboost/sdk/Libraries/c;->d:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 163
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/chartboost/sdk/Libraries/c;->d:Ljava/lang/String;

    .line 164
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 165
    const-string v1, "cbUUID"

    sget-object v2, Lcom/chartboost/sdk/Libraries/c;->d:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 166
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 169
    :cond_0
    sget-object v0, Lcom/chartboost/sdk/Libraries/c;->d:Ljava/lang/String;

    return-object v0
.end method

.method private static j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 173
    invoke-static {}, Lcom/chartboost/sdk/Libraries/c;->k()[B

    move-result-object v0

    invoke-static {v0}, Lcom/chartboost/sdk/Libraries/b;->a([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/chartboost/sdk/Libraries/b;->b([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static k()[B
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 178
    :try_start_0
    invoke-static {}, Lcom/chartboost/sdk/b;->v()Landroid/content/Context;

    move-result-object v0

    .line 179
    const-string v2, "wifi"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 180
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    .line 181
    if-eqz v0, :cond_0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    move-object v0, v1

    .line 194
    :cond_1
    :goto_0
    return-object v0

    .line 184
    :cond_2
    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 185
    const/4 v0, 0x6

    new-array v0, v0, [B

    .line 186
    const/4 v2, 0x0

    :goto_1
    array-length v4, v3

    if-ge v2, v4, :cond_1

    .line 187
    aget-object v4, v3, v2

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 188
    invoke-virtual {v4}, Ljava/lang/Integer;->byteValue()B

    move-result v4

    aput-byte v4, v0, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 191
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 194
    goto :goto_0
.end method
