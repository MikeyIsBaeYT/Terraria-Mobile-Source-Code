.class final Lcom/flurry/android/cz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/android/responses/AppCloudLoginResponseHandler;


# instance fields
.field final synthetic fe:Lcom/flurry/android/responses/AppCloudLoginResponseHandler;

.field private synthetic ff:Ljava/lang/String;

.field private synthetic fg:Ljava/lang/String;

.field private synthetic fh:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/flurry/android/responses/AppCloudLoginResponseHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 236
    iput-object p1, p0, Lcom/flurry/android/cz;->fe:Lcom/flurry/android/responses/AppCloudLoginResponseHandler;

    iput-object p2, p0, Lcom/flurry/android/cz;->ff:Ljava/lang/String;

    iput-object p3, p0, Lcom/flurry/android/cz;->fg:Ljava/lang/String;

    iput-object p4, p0, Lcom/flurry/android/cz;->fh:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Lcom/flurry/android/responses/AppCloudError;)V
    .locals 3

    .prologue
    .line 245
    new-instance v0, Lcom/flurry/android/AppCloudUser;

    invoke-direct {v0}, Lcom/flurry/android/AppCloudUser;-><init>()V

    .line 246
    invoke-virtual {p1}, Lcom/flurry/android/responses/AppCloudError;->getErrorCode()I

    move-result v1

    const/16 v2, 0x194

    if-ne v1, v2, :cond_0

    invoke-virtual {p1}, Lcom/flurry/android/responses/AppCloudError;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "not found"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 249
    iget-object v1, p0, Lcom/flurry/android/cz;->ff:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/flurry/android/AppCloudUser;->setUsername(Ljava/lang/String;)V

    .line 250
    iget-object v1, p0, Lcom/flurry/android/cz;->fg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/flurry/android/AppCloudUser;->setEmail(Ljava/lang/String;)V

    .line 251
    iget-object v1, p0, Lcom/flurry/android/cz;->fh:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/flurry/android/AppCloudUser;->setPassword(Ljava/lang/String;)V

    .line 254
    :try_start_0
    new-instance v1, Lcom/flurry/android/bz;

    invoke-direct {v1, p0}, Lcom/flurry/android/bz;-><init>(Lcom/flurry/android/cz;)V

    invoke-virtual {v0, v1}, Lcom/flurry/android/AppCloudUser;->saveOrCreateWithCompletionHandler(Lcom/flurry/android/responses/AppCloudApplyOperationResonseHandler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 272
    :goto_0
    return-void

    .line 266
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 271
    :cond_0
    iget-object v0, p0, Lcom/flurry/android/cz;->fe:Lcom/flurry/android/responses/AppCloudLoginResponseHandler;

    invoke-interface {v0, p1}, Lcom/flurry/android/responses/AppCloudLoginResponseHandler;->onError(Lcom/flurry/android/responses/AppCloudError;)V

    goto :goto_0
.end method

.method public final onOperationSucceed(Lcom/flurry/android/AppCloudUser;)V
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/flurry/android/cz;->fe:Lcom/flurry/android/responses/AppCloudLoginResponseHandler;

    invoke-interface {v0, p1}, Lcom/flurry/android/responses/AppCloudLoginResponseHandler;->onOperationSucceed(Lcom/flurry/android/AppCloudUser;)V

    .line 241
    return-void
.end method
