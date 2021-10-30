.class final Lcom/flurry/android/caching/l;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private gA:Lcom/flurry/android/caching/b;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/flurry/android/caching/l;->mContext:Landroid/content/Context;

    .line 20
    new-instance v0, Lcom/flurry/android/caching/c;

    invoke-direct {v0}, Lcom/flurry/android/caching/c;-><init>()V

    .line 21
    new-instance v0, Lcom/flurry/android/caching/b;

    invoke-direct {v0}, Lcom/flurry/android/caching/b;-><init>()V

    iput-object v0, p0, Lcom/flurry/android/caching/l;->gA:Lcom/flurry/android/caching/b;

    .line 22
    return-void
.end method


# virtual methods
.method public final i(Lcom/flurry/android/caching/ObjectOperationData;)Lcom/flurry/android/caching/m;
    .locals 8

    .prologue
    const-wide/16 v6, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 26
    invoke-static {p1}, Lcom/flurry/android/caching/c;->h(Lcom/flurry/android/caching/ObjectOperationData;)J

    move-result-wide v4

    .line 28
    cmp-long v0, v4, v6

    if-nez v0, :cond_1

    .line 29
    const-string v0, "RetryManager"

    const-string v3, "timeToStart == OPERATION_DIDNT_PROCCEED_CODE"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    :goto_0
    invoke-virtual {p1}, Lcom/flurry/android/caching/ObjectOperationData;->incrementRetryCount()V

    iget-object v0, p0, Lcom/flurry/android/caching/l;->mContext:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_2

    move v0, v1

    :goto_1
    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/flurry/android/caching/l;->gA:Lcom/flurry/android/caching/b;

    invoke-virtual {v0, p1}, Lcom/flurry/android/caching/b;->a(Lcom/flurry/android/caching/ObjectOperationData;)Lcom/flurry/android/caching/m;

    move-result-object v0

    :goto_2
    iget v1, v0, Lcom/flurry/android/caching/m;->it:I

    sparse-switch v1, :sswitch_data_0

    const-string v1, "RetryManager"

    const-string v2, "ERROR! UNKNOWN RESPONSE CODE!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_3
    :sswitch_0
    return-object v0

    .line 34
    :cond_1
    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 35
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 41
    :cond_2
    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_3

    move v0, v1

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    goto :goto_1

    :cond_4
    move v0, v2

    goto :goto_1

    :cond_5
    new-instance v0, Lcom/flurry/android/caching/m;

    invoke-direct {v0, v2}, Lcom/flurry/android/caching/m;-><init>(B)V

    const/16 v1, 0x2c7

    iput v1, v0, Lcom/flurry/android/caching/m;->it:I

    new-instance v1, Lcom/flurry/android/AppCloudResponse;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/flurry/android/AppCloudResponse;-><init>(Lorg/json/JSONObject;)V

    iput-object v1, v0, Lcom/flurry/android/caching/m;->iu:Lcom/flurry/android/AppCloudResponse;

    goto :goto_2

    :sswitch_1
    invoke-static {p1}, Lcom/flurry/android/caching/c;->h(Lcom/flurry/android/caching/ObjectOperationData;)J

    move-result-wide v2

    cmp-long v1, v2, v6

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/flurry/android/caching/l;->i(Lcom/flurry/android/caching/ObjectOperationData;)Lcom/flurry/android/caching/m;

    move-result-object v0

    goto :goto_3

    :sswitch_data_0
    .sparse-switch
        0x2bd -> :sswitch_0
        0x2c7 -> :sswitch_1
        0x2d1 -> :sswitch_1
        0x2db -> :sswitch_0
    .end sparse-switch
.end method
