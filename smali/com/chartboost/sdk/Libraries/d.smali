.class public final Lcom/chartboost/sdk/Libraries/d;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method

.method protected static a()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 26
    invoke-static {}, Lcom/chartboost/sdk/b;->v()Landroid/content/Context;

    move-result-object v1

    .line 29
    :try_start_0
    invoke-static {v1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/gms/common/GooglePlayServicesRepairableException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v1

    .line 44
    :goto_0
    if-nez v1, :cond_0

    .line 45
    sget-object v1, Lcom/chartboost/sdk/Libraries/c$a;->c:Lcom/chartboost/sdk/Libraries/c$a;

    invoke-static {v1}, Lcom/chartboost/sdk/Libraries/c;->a(Lcom/chartboost/sdk/Libraries/c$a;)V

    .line 61
    :goto_1
    return-object v0

    .line 30
    :catch_0
    move-exception v1

    move-object v1, v0

    .line 42
    goto :goto_0

    .line 33
    :catch_1
    move-exception v1

    move-object v1, v0

    .line 42
    goto :goto_0

    .line 35
    :catch_2
    move-exception v1

    move-object v1, v0

    .line 42
    goto :goto_0

    .line 37
    :catch_3
    move-exception v1

    .line 38
    const-string v2, "CBIdentityAdv"

    const-string v3, "Security Exception when retrieving AD id"

    invoke-static {v2, v3, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v1, v0

    .line 42
    goto :goto_0

    .line 39
    :catch_4
    move-exception v1

    .line 41
    const-string v2, "CBIdentityAdv"

    const-string v3, "General Exception when retrieving AD id"

    invoke-static {v2, v3, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v1, v0

    goto :goto_0

    .line 47
    :cond_0
    invoke-virtual {v1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->isLimitAdTrackingEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 48
    sget-object v0, Lcom/chartboost/sdk/Libraries/c$a;->e:Lcom/chartboost/sdk/Libraries/c$a;

    invoke-static {v0}, Lcom/chartboost/sdk/Libraries/c;->a(Lcom/chartboost/sdk/Libraries/c$a;)V

    .line 54
    :goto_2
    :try_start_1
    invoke-virtual {v1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    .line 55
    const/16 v2, 0x10

    new-array v2, v2, [B

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 56
    invoke-virtual {v0}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 57
    invoke-virtual {v0}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 58
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-static {v0}, Lcom/chartboost/sdk/Libraries/b;->b([B)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_5

    move-result-object v0

    goto :goto_1

    .line 50
    :cond_1
    sget-object v0, Lcom/chartboost/sdk/Libraries/c$a;->d:Lcom/chartboost/sdk/Libraries/c$a;

    invoke-static {v0}, Lcom/chartboost/sdk/Libraries/c;->a(Lcom/chartboost/sdk/Libraries/c$a;)V

    goto :goto_2

    .line 59
    :catch_5
    move-exception v0

    .line 60
    const-string v2, "CBIdentityAdv"

    const-string v3, "Exception raised retrieveAdvertisingID"

    invoke-static {v2, v3, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 61
    invoke-virtual {v1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method
