.class final Lcom/flurry/android/caching/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private dk:Lcom/flurry/android/caching/m;

.field private dl:Ljava/lang/String;

.field private dm:Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/flurry/android/caching/b;->dm:Ljava/lang/Object;

    return-void
.end method

.method static synthetic a(Lcom/flurry/android/caching/b;)Lcom/flurry/android/caching/m;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/flurry/android/caching/b;->dk:Lcom/flurry/android/caching/m;

    return-object v0
.end method

.method static synthetic a(Lcom/flurry/android/caching/b;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 17
    iput-object p1, p0, Lcom/flurry/android/caching/b;->dl:Ljava/lang/String;

    return-object p1
.end method

.method private b(Lcom/flurry/android/caching/ObjectOperationData;)Lcom/flurry/android/caching/m;
    .locals 5

    .prologue
    .line 90
    new-instance v0, Lcom/flurry/android/caching/m;

    invoke-direct {v0}, Lcom/flurry/android/caching/m;-><init>()V

    iput-object v0, p0, Lcom/flurry/android/caching/b;->dk:Lcom/flurry/android/caching/m;

    .line 93
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/flurry/android/caching/ObjectOperationData;->getKeyValues()Ljava/util/Vector;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 94
    invoke-virtual {p1}, Lcom/flurry/android/caching/ObjectOperationData;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/caching/b;->dl:Ljava/lang/String;

    .line 95
    invoke-virtual {p1}, Lcom/flurry/android/caching/ObjectOperationData;->getCollectionName()Ljava/lang/String;

    move-result-object v2

    .line 97
    const-string v0, "v1/"

    .line 99
    invoke-virtual {p1}, Lcom/flurry/android/caching/ObjectOperationData;->getExecutorType()Lcom/flurry/android/caching/ObjectData$ExecutorType;

    move-result-object v3

    sget-object v4, Lcom/flurry/android/caching/ObjectData$ExecutorType;->USER:Lcom/flurry/android/caching/ObjectData$ExecutorType;

    if-ne v3, v4, :cond_1

    .line 101
    const/4 v2, 0x1

    sput-boolean v2, Lcom/flurry/android/FlurryAppCloudRequestManager;->fInternalApi:Z

    .line 102
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "user"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 110
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/flurry/android/caching/b;->dl:Ljava/lang/String;

    if-nez v2, :cond_2

    .line 112
    new-instance v2, Lcom/flurry/android/caching/k;

    invoke-direct {v2, p0}, Lcom/flurry/android/caching/k;-><init>(Lcom/flurry/android/caching/b;)V

    invoke-static {v0, v1, v2}, Lcom/flurry/android/FlurryAppCloudRequestManager;->Post(Ljava/lang/String;Ljava/util/List;Lcom/flurry/android/AppCloudResponseHandler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    :goto_1
    :try_start_1
    iget-object v1, p0, Lcom/flurry/android/caching/b;->dm:Ljava/lang/Object;

    monitor-enter v1
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 185
    :try_start_2
    iget-object v0, p0, Lcom/flurry/android/caching/b;->dm:Ljava/lang/Object;

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V

    .line 186
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 191
    :goto_2
    iget-object v0, p0, Lcom/flurry/android/caching/b;->dk:Lcom/flurry/android/caching/m;

    return-object v0

    .line 104
    :cond_1
    :try_start_3
    invoke-virtual {p1}, Lcom/flurry/android/caching/ObjectOperationData;->getExecutorType()Lcom/flurry/android/caching/ObjectData$ExecutorType;

    move-result-object v3

    sget-object v4, Lcom/flurry/android/caching/ObjectData$ExecutorType;->OBJECT:Lcom/flurry/android/caching/ObjectData$ExecutorType;

    if-ne v3, v4, :cond_0

    .line 106
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "object/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 149
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/flurry/android/caching/b;->dl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/flurry/android/caching/h;

    invoke-direct {v2, p0}, Lcom/flurry/android/caching/h;-><init>(Lcom/flurry/android/caching/b;)V

    invoke-static {v0, v1, v2}, Lcom/flurry/android/FlurryAppCloudRequestManager;->Put(Ljava/lang/String;Ljava/util/List;Lcom/flurry/android/AppCloudResponseHandler;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 179
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 186
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_1

    .line 189
    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2
.end method

.method static synthetic b(Lcom/flurry/android/caching/b;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/flurry/android/caching/b;->dm:Ljava/lang/Object;

    return-object v0
.end method

.method private c(Lcom/flurry/android/caching/ObjectOperationData;)Lcom/flurry/android/caching/m;
    .locals 4

    .prologue
    .line 196
    new-instance v0, Lcom/flurry/android/caching/m;

    invoke-direct {v0}, Lcom/flurry/android/caching/m;-><init>()V

    iput-object v0, p0, Lcom/flurry/android/caching/b;->dk:Lcom/flurry/android/caching/m;

    .line 197
    invoke-virtual {p1}, Lcom/flurry/android/caching/ObjectOperationData;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/caching/b;->dl:Ljava/lang/String;

    .line 198
    invoke-virtual {p1}, Lcom/flurry/android/caching/ObjectOperationData;->getCollectionName()Ljava/lang/String;

    move-result-object v1

    .line 200
    const-string v0, "v1/"

    .line 202
    invoke-virtual {p1}, Lcom/flurry/android/caching/ObjectOperationData;->getExecutorType()Lcom/flurry/android/caching/ObjectData$ExecutorType;

    move-result-object v2

    sget-object v3, Lcom/flurry/android/caching/ObjectData$ExecutorType;->USER:Lcom/flurry/android/caching/ObjectData$ExecutorType;

    if-ne v2, v3, :cond_1

    .line 204
    const/4 v1, 0x1

    sput-boolean v1, Lcom/flurry/android/FlurryAppCloudRequestManager;->fInternalApi:Z

    .line 205
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "user"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 214
    :cond_0
    :goto_0
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/android/caching/b;->dl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/flurry/android/caching/g;

    invoke-direct {v1, p0}, Lcom/flurry/android/caching/g;-><init>(Lcom/flurry/android/caching/b;)V

    invoke-static {v0, v1}, Lcom/flurry/android/FlurryAppCloudRequestManager;->Delete(Ljava/lang/String;Lcom/flurry/android/AppCloudResponseHandler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    :goto_1
    :try_start_1
    iget-object v1, p0, Lcom/flurry/android/caching/b;->dm:Ljava/lang/Object;

    monitor-enter v1
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 246
    :try_start_2
    iget-object v0, p0, Lcom/flurry/android/caching/b;->dm:Ljava/lang/Object;

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V

    .line 247
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 252
    :goto_2
    iget-object v0, p0, Lcom/flurry/android/caching/b;->dk:Lcom/flurry/android/caching/m;

    return-object v0

    .line 207
    :cond_1
    invoke-virtual {p1}, Lcom/flurry/android/caching/ObjectOperationData;->getExecutorType()Lcom/flurry/android/caching/ObjectData$ExecutorType;

    move-result-object v2

    sget-object v3, Lcom/flurry/android/caching/ObjectData$ExecutorType;->OBJECT:Lcom/flurry/android/caching/ObjectData$ExecutorType;

    if-ne v2, v3, :cond_0

    .line 209
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "object/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 240
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 247
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1

    .line 250
    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2
.end method

.method private d(Lcom/flurry/android/caching/ObjectOperationData;)Lcom/flurry/android/caching/m;
    .locals 4

    .prologue
    .line 256
    new-instance v0, Lcom/flurry/android/caching/m;

    invoke-direct {v0}, Lcom/flurry/android/caching/m;-><init>()V

    iput-object v0, p0, Lcom/flurry/android/caching/b;->dk:Lcom/flurry/android/caching/m;

    .line 257
    invoke-virtual {p1}, Lcom/flurry/android/caching/ObjectOperationData;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/caching/b;->dl:Ljava/lang/String;

    .line 258
    invoke-virtual {p1}, Lcom/flurry/android/caching/ObjectOperationData;->getCollectionName()Ljava/lang/String;

    move-result-object v1

    .line 260
    const-string v0, "v1/"

    .line 262
    invoke-virtual {p1}, Lcom/flurry/android/caching/ObjectOperationData;->getExecutorType()Lcom/flurry/android/caching/ObjectData$ExecutorType;

    move-result-object v2

    sget-object v3, Lcom/flurry/android/caching/ObjectData$ExecutorType;->USER:Lcom/flurry/android/caching/ObjectData$ExecutorType;

    if-ne v2, v3, :cond_1

    .line 264
    const/4 v1, 0x1

    sput-boolean v1, Lcom/flurry/android/FlurryAppCloudRequestManager;->fInternalApi:Z

    .line 265
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "user"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 273
    :cond_0
    :goto_0
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/android/caching/b;->dl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-instance v2, Lcom/flurry/android/caching/j;

    invoke-direct {v2, p0}, Lcom/flurry/android/caching/j;-><init>(Lcom/flurry/android/caching/b;)V

    invoke-static {v0, v1, v2}, Lcom/flurry/android/FlurryAppCloudRequestManager;->Get(Ljava/lang/String;Ljava/util/List;Lcom/flurry/android/AppCloudResponseHandler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 307
    :goto_1
    :try_start_1
    iget-object v1, p0, Lcom/flurry/android/caching/b;->dm:Ljava/lang/Object;

    monitor-enter v1
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 308
    :try_start_2
    iget-object v0, p0, Lcom/flurry/android/caching/b;->dm:Ljava/lang/Object;

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V

    .line 309
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 314
    :goto_2
    iget-object v0, p0, Lcom/flurry/android/caching/b;->dk:Lcom/flurry/android/caching/m;

    return-object v0

    .line 267
    :cond_1
    invoke-virtual {p1}, Lcom/flurry/android/caching/ObjectOperationData;->getExecutorType()Lcom/flurry/android/caching/ObjectData$ExecutorType;

    move-result-object v2

    sget-object v3, Lcom/flurry/android/caching/ObjectData$ExecutorType;->OBJECT:Lcom/flurry/android/caching/ObjectData$ExecutorType;

    if-ne v2, v3, :cond_0

    .line 269
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "object/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 302
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 309
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1

    .line 312
    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2
.end method

.method private e(Lcom/flurry/android/caching/ObjectOperationData;)Lcom/flurry/android/caching/m;
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 321
    new-instance v0, Lcom/flurry/android/caching/m;

    invoke-direct {v0}, Lcom/flurry/android/caching/m;-><init>()V

    iput-object v0, p0, Lcom/flurry/android/caching/b;->dk:Lcom/flurry/android/caching/m;

    .line 322
    invoke-virtual {p1}, Lcom/flurry/android/caching/ObjectOperationData;->getKeyValues()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/NameValuePair;

    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v1

    .line 323
    invoke-virtual {p1}, Lcom/flurry/android/caching/ObjectOperationData;->getKeyValues()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/NameValuePair;

    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 324
    invoke-virtual {p1}, Lcom/flurry/android/caching/ObjectOperationData;->getId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/flurry/android/caching/b;->dl:Ljava/lang/String;

    .line 325
    invoke-virtual {p1}, Lcom/flurry/android/caching/ObjectOperationData;->getCollectionName()Ljava/lang/String;

    move-result-object v2

    .line 328
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 330
    if-eqz v1, :cond_0

    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 332
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "increment:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v1, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 335
    :cond_0
    const-string v0, ""

    .line 337
    invoke-virtual {p1}, Lcom/flurry/android/caching/ObjectOperationData;->getExecutorType()Lcom/flurry/android/caching/ObjectData$ExecutorType;

    move-result-object v1

    sget-object v4, Lcom/flurry/android/caching/ObjectData$ExecutorType;->USER:Lcom/flurry/android/caching/ObjectData$ExecutorType;

    if-ne v1, v4, :cond_2

    .line 339
    const/4 v1, 0x1

    sput-boolean v1, Lcom/flurry/android/FlurryAppCloudRequestManager;->fInternalApi:Z

    .line 340
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "user"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 349
    :cond_1
    :goto_0
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/android/caching/b;->dl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/flurry/android/caching/i;

    invoke-direct {v1, p0}, Lcom/flurry/android/caching/i;-><init>(Lcom/flurry/android/caching/b;)V

    invoke-static {v0, v3, v1}, Lcom/flurry/android/FlurryAppCloudRequestManager;->Put(Ljava/lang/String;Ljava/util/List;Lcom/flurry/android/AppCloudResponseHandler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 380
    :goto_1
    :try_start_1
    iget-object v1, p0, Lcom/flurry/android/caching/b;->dm:Ljava/lang/Object;

    monitor-enter v1
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 381
    :try_start_2
    iget-object v0, p0, Lcom/flurry/android/caching/b;->dm:Ljava/lang/Object;

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V

    .line 382
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 387
    :goto_2
    iget-object v0, p0, Lcom/flurry/android/caching/b;->dk:Lcom/flurry/android/caching/m;

    return-object v0

    .line 342
    :cond_2
    invoke-virtual {p1}, Lcom/flurry/android/caching/ObjectOperationData;->getExecutorType()Lcom/flurry/android/caching/ObjectData$ExecutorType;

    move-result-object v1

    sget-object v4, Lcom/flurry/android/caching/ObjectData$ExecutorType;->OBJECT:Lcom/flurry/android/caching/ObjectData$ExecutorType;

    if-ne v1, v4, :cond_1

    .line 344
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "object/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 375
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 382
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1

    .line 385
    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2
.end method

.method private f(Lcom/flurry/android/caching/ObjectOperationData;)Lcom/flurry/android/caching/m;
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 391
    new-instance v0, Lcom/flurry/android/caching/m;

    invoke-direct {v0}, Lcom/flurry/android/caching/m;-><init>()V

    iput-object v0, p0, Lcom/flurry/android/caching/b;->dk:Lcom/flurry/android/caching/m;

    .line 392
    invoke-virtual {p1}, Lcom/flurry/android/caching/ObjectOperationData;->getKeyValues()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/NameValuePair;

    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v1

    .line 393
    invoke-virtual {p1}, Lcom/flurry/android/caching/ObjectOperationData;->getKeyValues()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/NameValuePair;

    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 394
    invoke-virtual {p1}, Lcom/flurry/android/caching/ObjectOperationData;->getId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/flurry/android/caching/b;->dl:Ljava/lang/String;

    .line 395
    invoke-virtual {p1}, Lcom/flurry/android/caching/ObjectOperationData;->getCollectionName()Ljava/lang/String;

    move-result-object v2

    .line 398
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 400
    if-eqz v1, :cond_0

    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 402
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "decrement:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v1, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 405
    :cond_0
    const-string v0, ""

    .line 407
    invoke-virtual {p1}, Lcom/flurry/android/caching/ObjectOperationData;->getExecutorType()Lcom/flurry/android/caching/ObjectData$ExecutorType;

    move-result-object v1

    sget-object v4, Lcom/flurry/android/caching/ObjectData$ExecutorType;->USER:Lcom/flurry/android/caching/ObjectData$ExecutorType;

    if-ne v1, v4, :cond_2

    .line 409
    const/4 v1, 0x1

    sput-boolean v1, Lcom/flurry/android/FlurryAppCloudRequestManager;->fInternalApi:Z

    .line 410
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "user"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 419
    :cond_1
    :goto_0
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/android/caching/b;->dl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/flurry/android/caching/f;

    invoke-direct {v1, p0}, Lcom/flurry/android/caching/f;-><init>(Lcom/flurry/android/caching/b;)V

    invoke-static {v0, v3, v1}, Lcom/flurry/android/FlurryAppCloudRequestManager;->Put(Ljava/lang/String;Ljava/util/List;Lcom/flurry/android/AppCloudResponseHandler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 450
    :goto_1
    :try_start_1
    iget-object v1, p0, Lcom/flurry/android/caching/b;->dm:Ljava/lang/Object;

    monitor-enter v1
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 451
    :try_start_2
    iget-object v0, p0, Lcom/flurry/android/caching/b;->dm:Ljava/lang/Object;

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V

    .line 452
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 457
    :goto_2
    iget-object v0, p0, Lcom/flurry/android/caching/b;->dk:Lcom/flurry/android/caching/m;

    return-object v0

    .line 412
    :cond_2
    invoke-virtual {p1}, Lcom/flurry/android/caching/ObjectOperationData;->getExecutorType()Lcom/flurry/android/caching/ObjectData$ExecutorType;

    move-result-object v1

    sget-object v4, Lcom/flurry/android/caching/ObjectData$ExecutorType;->OBJECT:Lcom/flurry/android/caching/ObjectData$ExecutorType;

    if-ne v1, v4, :cond_1

    .line 414
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "object/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 445
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 452
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1

    .line 455
    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2
.end method

.method private g(Lcom/flurry/android/caching/ObjectOperationData;)Lcom/flurry/android/caching/m;
    .locals 4

    .prologue
    .line 461
    new-instance v0, Lcom/flurry/android/caching/m;

    invoke-direct {v0}, Lcom/flurry/android/caching/m;-><init>()V

    iput-object v0, p0, Lcom/flurry/android/caching/b;->dk:Lcom/flurry/android/caching/m;

    .line 462
    invoke-virtual {p1}, Lcom/flurry/android/caching/ObjectOperationData;->getSearchURL()Ljava/lang/String;

    move-result-object v0

    .line 464
    const-string v1, "Trestle"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Search url "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Lcom/flurry/android/caching/e;

    invoke-direct {v2, p0}, Lcom/flurry/android/caching/e;-><init>(Lcom/flurry/android/caching/b;)V

    invoke-static {v0, v1, v2}, Lcom/flurry/android/FlurryAppCloudRequestManager;->Get(Ljava/lang/String;Ljava/util/List;Lcom/flurry/android/AppCloudResponseHandler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 495
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/flurry/android/caching/b;->dm:Ljava/lang/Object;

    monitor-enter v1
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 496
    :try_start_2
    iget-object v0, p0, Lcom/flurry/android/caching/b;->dm:Ljava/lang/Object;

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V

    .line 497
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 502
    :goto_1
    iget-object v0, p0, Lcom/flurry/android/caching/b;->dk:Lcom/flurry/android/caching/m;

    return-object v0

    .line 490
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 497
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1

    .line 500
    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public final a(Lcom/flurry/android/caching/ObjectOperationData;)Lcom/flurry/android/caching/m;
    .locals 1

    .prologue
    .line 56
    invoke-virtual {p1}, Lcom/flurry/android/caching/ObjectOperationData;->getOperationType()I

    move-result v0

    .line 57
    sparse-switch v0, :sswitch_data_0

    .line 84
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 61
    :sswitch_0
    invoke-direct {p0, p1}, Lcom/flurry/android/caching/b;->b(Lcom/flurry/android/caching/ObjectOperationData;)Lcom/flurry/android/caching/m;

    move-result-object v0

    goto :goto_0

    .line 65
    :sswitch_1
    invoke-direct {p0, p1}, Lcom/flurry/android/caching/b;->d(Lcom/flurry/android/caching/ObjectOperationData;)Lcom/flurry/android/caching/m;

    move-result-object v0

    goto :goto_0

    .line 69
    :sswitch_2
    invoke-direct {p0, p1}, Lcom/flurry/android/caching/b;->c(Lcom/flurry/android/caching/ObjectOperationData;)Lcom/flurry/android/caching/m;

    move-result-object v0

    goto :goto_0

    .line 73
    :sswitch_3
    invoke-direct {p0, p1}, Lcom/flurry/android/caching/b;->g(Lcom/flurry/android/caching/ObjectOperationData;)Lcom/flurry/android/caching/m;

    move-result-object v0

    goto :goto_0

    .line 77
    :sswitch_4
    invoke-direct {p0, p1}, Lcom/flurry/android/caching/b;->e(Lcom/flurry/android/caching/ObjectOperationData;)Lcom/flurry/android/caching/m;

    move-result-object v0

    goto :goto_0

    .line 81
    :sswitch_5
    invoke-direct {p0, p1}, Lcom/flurry/android/caching/b;->f(Lcom/flurry/android/caching/ObjectOperationData;)Lcom/flurry/android/caching/m;

    move-result-object v0

    goto :goto_0

    .line 57
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_2
        0x8 -> :sswitch_3
        0x10 -> :sswitch_4
        0x20 -> :sswitch_5
    .end sparse-switch
.end method
