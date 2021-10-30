.class final Lcom/flurry/android/caching/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/android/AppCloudResponseHandler;


# instance fields
.field private synthetic fo:Lcom/flurry/android/caching/b;


# direct methods
.method constructor <init>(Lcom/flurry/android/caching/b;)V
    .locals 0

    .prologue
    .line 149
    iput-object p1, p0, Lcom/flurry/android/caching/h;->fo:Lcom/flurry/android/caching/b;

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
    .line 155
    if-eqz p1, :cond_0

    .line 156
    invoke-virtual {p1}, Lcom/flurry/android/AppCloudResponse;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 160
    const-string v0, "Trestle"

    const-string v1, "Updated object"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget-object v0, p0, Lcom/flurry/android/caching/h;->fo:Lcom/flurry/android/caching/b;

    invoke-static {v0}, Lcom/flurry/android/caching/b;->a(Lcom/flurry/android/caching/b;)Lcom/flurry/android/caching/m;

    move-result-object v0

    const/16 v1, 0x2bd

    iput v1, v0, Lcom/flurry/android/caching/m;->it:I

    .line 169
    :goto_0
    iget-object v0, p0, Lcom/flurry/android/caching/h;->fo:Lcom/flurry/android/caching/b;

    invoke-static {v0}, Lcom/flurry/android/caching/b;->a(Lcom/flurry/android/caching/b;)Lcom/flurry/android/caching/m;

    move-result-object v0

    iput-object p1, v0, Lcom/flurry/android/caching/m;->iu:Lcom/flurry/android/AppCloudResponse;

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/flurry/android/caching/h;->fo:Lcom/flurry/android/caching/b;

    invoke-static {v0}, Lcom/flurry/android/caching/b;->b(Lcom/flurry/android/caching/b;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 174
    :try_start_0
    iget-object v0, p0, Lcom/flurry/android/caching/h;->fo:Lcom/flurry/android/caching/b;

    invoke-static {v0}, Lcom/flurry/android/caching/b;->b(Lcom/flurry/android/caching/b;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 175
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 164
    :cond_1
    const-string v0, "Trestle"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Updated object: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/flurry/android/AppCloudResponse;->getResponseMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iget-object v0, p0, Lcom/flurry/android/caching/h;->fo:Lcom/flurry/android/caching/b;

    invoke-static {v0}, Lcom/flurry/android/caching/b;->a(Lcom/flurry/android/caching/b;)Lcom/flurry/android/caching/m;

    move-result-object v0

    const/16 v1, 0x2db

    iput v1, v0, Lcom/flurry/android/caching/m;->it:I

    goto :goto_0

    .line 175
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
