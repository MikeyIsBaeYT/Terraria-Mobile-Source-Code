.class final Lcom/flurry/android/caching/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private cP:Lcom/flurry/android/AppCloudResponseHandler;

.field private synthetic cQ:Lcom/flurry/android/caching/CachingManager;


# direct methods
.method public constructor <init>(Lcom/flurry/android/caching/CachingManager;Lcom/flurry/android/AppCloudResponseHandler;)V
    .locals 1

    .prologue
    .line 72
    iput-object p1, p0, Lcom/flurry/android/caching/a;->cQ:Lcom/flurry/android/caching/CachingManager;

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/android/caching/a;->cP:Lcom/flurry/android/AppCloudResponseHandler;

    .line 74
    iput-object p2, p0, Lcom/flurry/android/caching/a;->cP:Lcom/flurry/android/AppCloudResponseHandler;

    .line 75
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 80
    iget-object v0, p0, Lcom/flurry/android/caching/a;->cQ:Lcom/flurry/android/caching/CachingManager;

    invoke-static {v0}, Lcom/flurry/android/caching/CachingManager;->a(Lcom/flurry/android/caching/CachingManager;)Lcom/flurry/android/caching/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/caching/n;->bE()Lcom/flurry/android/caching/ObjectOperationData;

    move-result-object v0

    .line 81
    iget-object v1, p0, Lcom/flurry/android/caching/a;->cQ:Lcom/flurry/android/caching/CachingManager;

    invoke-static {v1}, Lcom/flurry/android/caching/CachingManager;->b(Lcom/flurry/android/caching/CachingManager;)Lcom/flurry/android/caching/l;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/flurry/android/caching/l;->i(Lcom/flurry/android/caching/ObjectOperationData;)Lcom/flurry/android/caching/m;

    move-result-object v0

    .line 82
    iget-object v1, p0, Lcom/flurry/android/caching/a;->cQ:Lcom/flurry/android/caching/CachingManager;

    invoke-static {v1}, Lcom/flurry/android/caching/CachingManager;->a(Lcom/flurry/android/caching/CachingManager;)Lcom/flurry/android/caching/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/android/caching/n;->bF()Lcom/flurry/android/caching/ObjectOperationData;

    .line 84
    iget v1, v0, Lcom/flurry/android/caching/m;->it:I

    sparse-switch v1, :sswitch_data_0

    .line 98
    const-string v1, "CachingManager"

    const-string v2, "ERROR! UNKNOWN RESPONSE CODE!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/flurry/android/caching/a;->cP:Lcom/flurry/android/AppCloudResponseHandler;

    iget-object v0, v0, Lcom/flurry/android/caching/m;->iu:Lcom/flurry/android/AppCloudResponse;

    invoke-interface {v1, v0}, Lcom/flurry/android/AppCloudResponseHandler;->handleResponse(Lcom/flurry/android/AppCloudResponse;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    :goto_1
    return-void

    .line 86
    :sswitch_0
    const-string v1, "CachingManager"

    const-string v2, "OPERATION_STATUS_SUCCEEDED"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 89
    :sswitch_1
    const-string v1, "CachingManager"

    const-string v2, "OPERATION_STATUS_TIME_OUT"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 92
    :sswitch_2
    const-string v1, "CachingManager"

    const-string v2, "OPERATION_STATUS_FAILED"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 95
    :sswitch_3
    const-string v1, "CachingManager"

    const-string v2, "OPERATION_STATUS_BAD_RESPONSE"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 104
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 84
    :sswitch_data_0
    .sparse-switch
        0x2bd -> :sswitch_0
        0x2c7 -> :sswitch_2
        0x2d1 -> :sswitch_1
        0x2db -> :sswitch_3
    .end sparse-switch
.end method
