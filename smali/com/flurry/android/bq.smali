.class final Lcom/flurry/android/bq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/android/AppCloudResponseHandler;


# instance fields
.field private synthetic dK:Lcom/flurry/android/responses/AppCloudCommonOperationResponseHandler;


# direct methods
.method constructor <init>(Lcom/flurry/android/responses/AppCloudCommonOperationResponseHandler;)V
    .locals 0

    .prologue
    .line 184
    iput-object p1, p0, Lcom/flurry/android/bq;->dK:Lcom/flurry/android/responses/AppCloudCommonOperationResponseHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleResponse(Lcom/flurry/android/AppCloudResponse;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 188
    if-eqz p1, :cond_1

    .line 190
    invoke-virtual {p1}, Lcom/flurry/android/AppCloudResponse;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/flurry/android/bq;->dK:Lcom/flurry/android/responses/AppCloudCommonOperationResponseHandler;

    invoke-interface {v0}, Lcom/flurry/android/responses/AppCloudCommonOperationResponseHandler;->onOperationSucceed()V

    .line 202
    :goto_0
    return-void

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/flurry/android/bq;->dK:Lcom/flurry/android/responses/AppCloudCommonOperationResponseHandler;

    new-instance v1, Lcom/flurry/android/responses/AppCloudError;

    invoke-virtual {p1}, Lcom/flurry/android/AppCloudResponse;->getHTTPResponseCode()I

    move-result v2

    invoke-virtual {p1}, Lcom/flurry/android/AppCloudResponse;->getResponseMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/flurry/android/responses/AppCloudError;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/flurry/android/responses/AppCloudCommonOperationResponseHandler;->onError(Lcom/flurry/android/responses/AppCloudError;)V

    goto :goto_0

    .line 199
    :cond_1
    iget-object v0, p0, Lcom/flurry/android/bq;->dK:Lcom/flurry/android/responses/AppCloudCommonOperationResponseHandler;

    new-instance v1, Lcom/flurry/android/responses/AppCloudError;

    const/16 v2, 0x190

    const-string v3, "Bad response"

    invoke-direct {v1, v2, v3}, Lcom/flurry/android/responses/AppCloudError;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/flurry/android/responses/AppCloudCommonOperationResponseHandler;->onError(Lcom/flurry/android/responses/AppCloudError;)V

    goto :goto_0
.end method
