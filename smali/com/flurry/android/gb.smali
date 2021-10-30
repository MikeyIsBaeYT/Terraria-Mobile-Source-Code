.class final Lcom/flurry/android/gb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/android/AppCloudResponseHandler;


# instance fields
.field private synthetic ig:Lcom/flurry/android/cx;

.field private synthetic in:Lcom/flurry/android/AppCloudResponseHandler;

.field private synthetic io:Z


# direct methods
.method constructor <init>(Lcom/flurry/android/cx;ZLcom/flurry/android/AppCloudResponseHandler;)V
    .locals 0

    .prologue
    .line 520
    iput-object p1, p0, Lcom/flurry/android/gb;->ig:Lcom/flurry/android/cx;

    iput-boolean p2, p0, Lcom/flurry/android/gb;->io:Z

    iput-object p3, p0, Lcom/flurry/android/gb;->in:Lcom/flurry/android/AppCloudResponseHandler;

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
    .line 524
    if-nez p1, :cond_1

    .line 527
    iget-boolean v0, p0, Lcom/flurry/android/gb;->io:Z

    if-eqz v0, :cond_0

    .line 528
    new-instance v0, Lcom/flurry/android/caching/ObjectOperationData;

    iget-object v1, p0, Lcom/flurry/android/gb;->ig:Lcom/flurry/android/cx;

    iget-object v1, v1, Lcom/flurry/android/cx;->mId:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/flurry/android/caching/ObjectOperationData;-><init>(Ljava/lang/String;)V

    .line 534
    :goto_0
    invoke-static {}, Lcom/flurry/android/FlurryAppCloud;->C()Lcom/flurry/android/caching/CachingManager;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/android/gb;->in:Lcom/flurry/android/AppCloudResponseHandler;

    invoke-virtual {v1, v0, v2}, Lcom/flurry/android/caching/CachingManager;->deleteOperation(Lcom/flurry/android/caching/ObjectOperationData;Lcom/flurry/android/AppCloudResponseHandler;)V

    .line 540
    :goto_1
    return-void

    .line 531
    :cond_0
    new-instance v0, Lcom/flurry/android/caching/ObjectOperationData;

    iget-object v1, p0, Lcom/flurry/android/gb;->ig:Lcom/flurry/android/cx;

    iget-object v1, v1, Lcom/flurry/android/cx;->mId:Ljava/lang/String;

    iget-object v2, p0, Lcom/flurry/android/gb;->ig:Lcom/flurry/android/cx;

    iget-object v2, v2, Lcom/flurry/android/cx;->mCollectionName:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/flurry/android/caching/ObjectOperationData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 537
    :cond_1
    iget-object v0, p0, Lcom/flurry/android/gb;->in:Lcom/flurry/android/AppCloudResponseHandler;

    invoke-interface {v0, p1}, Lcom/flurry/android/AppCloudResponseHandler;->handleResponse(Lcom/flurry/android/AppCloudResponse;)V

    goto :goto_1
.end method
