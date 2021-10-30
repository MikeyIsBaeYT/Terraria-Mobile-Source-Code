.class final Lcom/flurry/android/bz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/android/responses/AppCloudApplyOperationResonseHandler;


# instance fields
.field private synthetic dQ:Lcom/flurry/android/cz;


# direct methods
.method constructor <init>(Lcom/flurry/android/cz;)V
    .locals 0

    .prologue
    .line 254
    iput-object p1, p0, Lcom/flurry/android/bz;->dQ:Lcom/flurry/android/cz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Lcom/flurry/android/responses/AppCloudError;)V
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/flurry/android/bz;->dQ:Lcom/flurry/android/cz;

    iget-object v0, v0, Lcom/flurry/android/cz;->fe:Lcom/flurry/android/responses/AppCloudLoginResponseHandler;

    invoke-interface {v0, p1}, Lcom/flurry/android/responses/AppCloudLoginResponseHandler;->onError(Lcom/flurry/android/responses/AppCloudError;)V

    .line 264
    return-void
.end method

.method public final onOperationSucceed(ZLjava/lang/String;)V
    .locals 2

    .prologue
    .line 258
    iget-object v0, p0, Lcom/flurry/android/bz;->dQ:Lcom/flurry/android/cz;

    iget-object v0, v0, Lcom/flurry/android/cz;->fe:Lcom/flurry/android/responses/AppCloudLoginResponseHandler;

    invoke-static {}, Lcom/flurry/android/AppCloudUser;->getCurrentUser()Lcom/flurry/android/AppCloudUser;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/flurry/android/responses/AppCloudLoginResponseHandler;->onOperationSucceed(Lcom/flurry/android/AppCloudUser;)V

    .line 259
    return-void
.end method
