.class final Lcom/flurry/android/dl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/android/AppCloudResponseHandler;


# instance fields
.field private synthetic dK:Lcom/flurry/android/responses/AppCloudCommonOperationResponseHandler;

.field private synthetic fj:Lcom/flurry/android/AppCloudUser;


# direct methods
.method constructor <init>(Lcom/flurry/android/AppCloudUser;Lcom/flurry/android/responses/AppCloudCommonOperationResponseHandler;)V
    .locals 0

    .prologue
    .line 576
    iput-object p1, p0, Lcom/flurry/android/dl;->fj:Lcom/flurry/android/AppCloudUser;

    iput-object p2, p0, Lcom/flurry/android/dl;->dK:Lcom/flurry/android/responses/AppCloudCommonOperationResponseHandler;

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
    .line 580
    if-eqz p1, :cond_2

    .line 582
    invoke-virtual {p1}, Lcom/flurry/android/AppCloudResponse;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 584
    const-string v0, "Trestle"

    const-string v1, "Deleted user"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    invoke-static {}, Lcom/flurry/android/AppCloudUser;->getCurrentUser()Lcom/flurry/android/AppCloudUser;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/android/dl;->fj:Lcom/flurry/android/AppCloudUser;

    iget-object v0, v0, Lcom/flurry/android/AppCloudUser;->mId:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/flurry/android/AppCloudUser;->getCurrentUser()Lcom/flurry/android/AppCloudUser;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/AppCloudUser;->getId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/android/dl;->fj:Lcom/flurry/android/AppCloudUser;

    iget-object v1, v1, Lcom/flurry/android/AppCloudUser;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 591
    invoke-static {}, Lcom/flurry/android/AppCloudUser;->V()Lcom/flurry/android/AppCloudUser;

    .line 592
    const-string v0, ""

    invoke-static {v0}, Lcom/flurry/android/et;->z(Ljava/lang/String;)V

    .line 595
    :cond_0
    iget-object v0, p0, Lcom/flurry/android/dl;->dK:Lcom/flurry/android/responses/AppCloudCommonOperationResponseHandler;

    invoke-interface {v0}, Lcom/flurry/android/responses/AppCloudCommonOperationResponseHandler;->onOperationSucceed()V

    .line 607
    :goto_0
    return-void

    .line 599
    :cond_1
    const-string v0, "Trestle"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Deleted Fail: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/flurry/android/AppCloudResponse;->getResponseMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    iget-object v0, p0, Lcom/flurry/android/dl;->dK:Lcom/flurry/android/responses/AppCloudCommonOperationResponseHandler;

    new-instance v1, Lcom/flurry/android/responses/AppCloudError;

    invoke-virtual {p1}, Lcom/flurry/android/AppCloudResponse;->getHTTPResponseCode()I

    move-result v2

    invoke-virtual {p1}, Lcom/flurry/android/AppCloudResponse;->getResponseMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/flurry/android/responses/AppCloudError;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/flurry/android/responses/AppCloudCommonOperationResponseHandler;->onError(Lcom/flurry/android/responses/AppCloudError;)V

    goto :goto_0

    .line 604
    :cond_2
    iget-object v0, p0, Lcom/flurry/android/dl;->dK:Lcom/flurry/android/responses/AppCloudCommonOperationResponseHandler;

    new-instance v1, Lcom/flurry/android/responses/AppCloudError;

    const/16 v2, 0x190

    const-string v3, "Bad response"

    invoke-direct {v1, v2, v3}, Lcom/flurry/android/responses/AppCloudError;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/flurry/android/responses/AppCloudCommonOperationResponseHandler;->onError(Lcom/flurry/android/responses/AppCloudError;)V

    goto :goto_0
.end method
