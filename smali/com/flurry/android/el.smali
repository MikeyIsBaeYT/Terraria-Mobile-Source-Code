.class final Lcom/flurry/android/el;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private gl:Lcom/flurry/android/FlurryAds;


# direct methods
.method constructor <init>(Lcom/flurry/android/FlurryAds;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/flurry/android/el;->gl:Lcom/flurry/android/FlurryAds;

    .line 16
    return-void
.end method


# virtual methods
.method final h(Ljava/util/List;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/cw;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/SdkAdLog;",
            ">;"
        }
    .end annotation

    .prologue
    .line 20
    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 22
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/cw;

    .line 24
    new-instance v4, Lcom/flurry/android/SdkAdLog;

    invoke-direct {v4}, Lcom/flurry/android/SdkAdLog;-><init>()V

    .line 25
    invoke-virtual {v0}, Lcom/flurry/android/cw;->aB()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/flurry/android/SdkAdLog;->b(Ljava/lang/Long;)V

    .line 26
    invoke-virtual {v0}, Lcom/flurry/android/cw;->aA()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, ""

    :goto_1
    invoke-virtual {v4, v1}, Lcom/flurry/android/SdkAdLog;->b(Ljava/lang/CharSequence;)V

    .line 27
    new-instance v5, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 29
    monitor-enter v0

    .line 31
    :try_start_0
    invoke-virtual {v0}, Lcom/flurry/android/cw;->aC()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flurry/android/gc;

    .line 34
    invoke-virtual {v1}, Lcom/flurry/android/gc;->bD()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 36
    new-instance v7, Lcom/flurry/android/SdkAdEvent;

    invoke-direct {v7}, Lcom/flurry/android/SdkAdEvent;-><init>()V

    .line 37
    invoke-virtual {v1}, Lcom/flurry/android/gc;->getType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/flurry/android/SdkAdEvent;->a(Ljava/lang/CharSequence;)V

    .line 38
    invoke-virtual {v1}, Lcom/flurry/android/gc;->bh()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/flurry/android/SdkAdEvent;->a(Ljava/lang/Long;)V

    .line 39
    invoke-virtual {v1}, Lcom/flurry/android/gc;->getParams()Ljava/util/Map;

    move-result-object v1

    .line 40
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 41
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 43
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v8, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 50
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 26
    :cond_1
    invoke-virtual {v0}, Lcom/flurry/android/cw;->aA()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 45
    :cond_2
    :try_start_1
    invoke-virtual {v7, v8}, Lcom/flurry/android/SdkAdEvent;->a(Ljava/util/Map;)V

    .line 47
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 50
    :cond_3
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 52
    invoke-virtual {v4, v5}, Lcom/flurry/android/SdkAdLog;->d(Ljava/util/List;)V

    .line 54
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 58
    :cond_4
    iget-object v0, p0, Lcom/flurry/android/el;->gl:Lcom/flurry/android/FlurryAds;

    invoke-virtual {v0, p1}, Lcom/flurry/android/FlurryAds;->i(Ljava/util/List;)V

    .line 60
    return-object v2
.end method
