.class final Lcom/flurry/android/dd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/android/responses/AppCloudApplyOperationResonseHandler;


# instance fields
.field private synthetic fi:Lcom/flurry/android/responses/AppCloudApplyOperationResonseHandler;

.field private synthetic fj:Lcom/flurry/android/AppCloudUser;


# direct methods
.method constructor <init>(Lcom/flurry/android/AppCloudUser;Lcom/flurry/android/responses/AppCloudApplyOperationResonseHandler;)V
    .locals 0

    .prologue
    .line 287
    iput-object p1, p0, Lcom/flurry/android/dd;->fj:Lcom/flurry/android/AppCloudUser;

    iput-object p2, p0, Lcom/flurry/android/dd;->fi:Lcom/flurry/android/responses/AppCloudApplyOperationResonseHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Lcom/flurry/android/responses/AppCloudError;)V
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lcom/flurry/android/dd;->fi:Lcom/flurry/android/responses/AppCloudApplyOperationResonseHandler;

    invoke-interface {v0, p1}, Lcom/flurry/android/responses/AppCloudApplyOperationResonseHandler;->onError(Lcom/flurry/android/responses/AppCloudError;)V

    .line 316
    return-void
.end method

.method public final onOperationSucceed(ZLjava/lang/String;)V
    .locals 3

    .prologue
    .line 292
    iget-object v0, p0, Lcom/flurry/android/dd;->fj:Lcom/flurry/android/AppCloudUser;

    iget-object v0, v0, Lcom/flurry/android/AppCloudUser;->paramMap:Ljava/util/HashMap;

    const-string v1, "APPCLOUD_USER_SESSION"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/flurry/android/dd;->fj:Lcom/flurry/android/AppCloudUser;

    iget-object v0, v0, Lcom/flurry/android/AppCloudUser;->paramMap:Ljava/util/HashMap;

    const-string v1, "APPCLOUD_USER_SESSION"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 294
    sput-object v0, Lcom/flurry/android/FlurryAppCloudRequestManager;->UserSession:Ljava/lang/String;

    .line 296
    new-instance v1, Lcom/flurry/android/AppCloudUser;

    invoke-direct {v1}, Lcom/flurry/android/AppCloudUser;-><init>()V

    .line 297
    iget-object v2, p0, Lcom/flurry/android/dd;->fj:Lcom/flurry/android/AppCloudUser;

    iget-object v2, v2, Lcom/flurry/android/AppCloudUser;->mEmail:Ljava/lang/String;

    iput-object v2, v1, Lcom/flurry/android/AppCloudUser;->mEmail:Ljava/lang/String;

    .line 298
    iget-object v2, p0, Lcom/flurry/android/dd;->fj:Lcom/flurry/android/AppCloudUser;

    iget-object v2, v2, Lcom/flurry/android/AppCloudUser;->mUsername:Ljava/lang/String;

    iput-object v2, v1, Lcom/flurry/android/AppCloudUser;->mUsername:Ljava/lang/String;

    .line 299
    iget-object v2, p0, Lcom/flurry/android/dd;->fj:Lcom/flurry/android/AppCloudUser;

    iget-object v2, v2, Lcom/flurry/android/AppCloudUser;->mId:Ljava/lang/String;

    iput-object v2, v1, Lcom/flurry/android/AppCloudUser;->mId:Ljava/lang/String;

    .line 301
    invoke-static {v1}, Lcom/flurry/android/AppCloudUser;->setCurrentUser(Lcom/flurry/android/AppCloudUser;)V

    .line 303
    iget-object v1, p0, Lcom/flurry/android/dd;->fj:Lcom/flurry/android/AppCloudUser;

    iget-object v1, v1, Lcom/flurry/android/AppCloudUser;->mId:Ljava/lang/String;

    invoke-static {v1}, Lcom/flurry/android/et;->z(Ljava/lang/String;)V

    .line 304
    iget-object v1, p0, Lcom/flurry/android/dd;->fj:Lcom/flurry/android/AppCloudUser;

    iget-object v1, v1, Lcom/flurry/android/AppCloudUser;->mUsername:Ljava/lang/String;

    iget-object v2, p0, Lcom/flurry/android/dd;->fj:Lcom/flurry/android/AppCloudUser;

    iget-object v2, v2, Lcom/flurry/android/AppCloudUser;->mEmail:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/flurry/android/et;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    iget-object v0, p0, Lcom/flurry/android/dd;->fj:Lcom/flurry/android/AppCloudUser;

    iget-object v0, v0, Lcom/flurry/android/AppCloudUser;->password:Ljava/lang/String;

    invoke-static {v0}, Lcom/flurry/android/et;->A(Ljava/lang/String;)V

    .line 310
    :cond_0
    iget-object v0, p0, Lcom/flurry/android/dd;->fi:Lcom/flurry/android/responses/AppCloudApplyOperationResonseHandler;

    invoke-interface {v0, p1, p2}, Lcom/flurry/android/responses/AppCloudApplyOperationResonseHandler;->onOperationSucceed(ZLjava/lang/String;)V

    .line 311
    return-void
.end method
