.class final Lcom/flurry/android/fy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/android/AppCloudResponseHandler;


# instance fields
.field final synthetic ig:Lcom/flurry/android/cx;

.field final synthetic in:Lcom/flurry/android/AppCloudResponseHandler;

.field final synthetic io:Z


# direct methods
.method constructor <init>(Lcom/flurry/android/cx;Lcom/flurry/android/AppCloudResponseHandler;Z)V
    .locals 0

    .prologue
    .line 442
    iput-object p1, p0, Lcom/flurry/android/fy;->ig:Lcom/flurry/android/cx;

    iput-object p2, p0, Lcom/flurry/android/fy;->in:Lcom/flurry/android/AppCloudResponseHandler;

    iput-boolean p3, p0, Lcom/flurry/android/fy;->io:Z

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
    .line 446
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/flurry/android/fy;->in:Lcom/flurry/android/AppCloudResponseHandler;

    if-eqz v0, :cond_0

    .line 447
    iget-object v0, p0, Lcom/flurry/android/fy;->in:Lcom/flurry/android/AppCloudResponseHandler;

    invoke-interface {v0, p1}, Lcom/flurry/android/AppCloudResponseHandler;->handleResponse(Lcom/flurry/android/AppCloudResponse;)V

    .line 499
    :goto_0
    return-void

    .line 452
    :cond_0
    iget-boolean v0, p0, Lcom/flurry/android/fy;->io:Z

    if-eqz v0, :cond_1

    .line 453
    new-instance v0, Lcom/flurry/android/caching/ObjectOperationData;

    iget-object v1, p0, Lcom/flurry/android/fy;->ig:Lcom/flurry/android/cx;

    iget-object v1, v1, Lcom/flurry/android/cx;->mId:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/flurry/android/caching/ObjectOperationData;-><init>(Ljava/lang/String;)V

    .line 459
    :goto_1
    invoke-static {}, Lcom/flurry/android/FlurryAppCloud;->C()Lcom/flurry/android/caching/CachingManager;

    move-result-object v1

    new-instance v2, Lcom/flurry/android/fh;

    invoke-direct {v2, p0}, Lcom/flurry/android/fh;-><init>(Lcom/flurry/android/fy;)V

    invoke-virtual {v1, v0, v2}, Lcom/flurry/android/caching/CachingManager;->getOperation(Lcom/flurry/android/caching/ObjectOperationData;Lcom/flurry/android/AppCloudResponseHandler;)V

    goto :goto_0

    .line 456
    :cond_1
    new-instance v0, Lcom/flurry/android/caching/ObjectOperationData;

    iget-object v1, p0, Lcom/flurry/android/fy;->ig:Lcom/flurry/android/cx;

    iget-object v1, v1, Lcom/flurry/android/cx;->mId:Ljava/lang/String;

    iget-object v2, p0, Lcom/flurry/android/fy;->ig:Lcom/flurry/android/cx;

    iget-object v2, v2, Lcom/flurry/android/cx;->mCollectionName:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/flurry/android/caching/ObjectOperationData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
