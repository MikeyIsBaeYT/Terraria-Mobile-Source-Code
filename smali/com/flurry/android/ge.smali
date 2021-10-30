.class final Lcom/flurry/android/ge;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/android/AppCloudResponseHandler;


# instance fields
.field private synthetic fi:Lcom/flurry/android/responses/AppCloudApplyOperationResonseHandler;

.field private synthetic ig:Lcom/flurry/android/cx;


# direct methods
.method constructor <init>(Lcom/flurry/android/cx;Lcom/flurry/android/responses/AppCloudApplyOperationResonseHandler;)V
    .locals 0

    .prologue
    .line 367
    iput-object p1, p0, Lcom/flurry/android/ge;->ig:Lcom/flurry/android/cx;

    iput-object p2, p0, Lcom/flurry/android/ge;->fi:Lcom/flurry/android/responses/AppCloudApplyOperationResonseHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleResponse(Lcom/flurry/android/AppCloudResponse;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 372
    invoke-virtual {p1}, Lcom/flurry/android/AppCloudResponse;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 374
    iget-object v0, p0, Lcom/flurry/android/ge;->ig:Lcom/flurry/android/cx;

    invoke-virtual {p1}, Lcom/flurry/android/AppCloudResponse;->getResponse()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/android/cx;->createUser(Lorg/json/JSONObject;)V

    .line 375
    iget-object v0, p0, Lcom/flurry/android/ge;->fi:Lcom/flurry/android/responses/AppCloudApplyOperationResonseHandler;

    const/4 v1, 0x1

    invoke-virtual {p1}, Lcom/flurry/android/AppCloudResponse;->getResponseMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/flurry/android/responses/AppCloudApplyOperationResonseHandler;->onOperationSucceed(ZLjava/lang/String;)V

    .line 381
    :goto_0
    return-void

    .line 378
    :cond_0
    new-instance v0, Lcom/flurry/android/responses/AppCloudError;

    invoke-virtual {p1}, Lcom/flurry/android/AppCloudResponse;->getHTTPResponseCode()I

    move-result v1

    invoke-virtual {p1}, Lcom/flurry/android/AppCloudResponse;->getResponseMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/flurry/android/responses/AppCloudError;-><init>(ILjava/lang/String;)V

    .line 379
    iget-object v1, p0, Lcom/flurry/android/ge;->fi:Lcom/flurry/android/responses/AppCloudApplyOperationResonseHandler;

    invoke-interface {v1, v0}, Lcom/flurry/android/responses/AppCloudApplyOperationResonseHandler;->onError(Lcom/flurry/android/responses/AppCloudError;)V

    goto :goto_0
.end method
