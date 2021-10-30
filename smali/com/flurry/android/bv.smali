.class final Lcom/flurry/android/bv;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private Y:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/flurry/android/ac;",
            ">;"
        }
    .end annotation
.end field

.field private dM:Z

.field private dN:J

.field private mCollectionName:Ljava/lang/String;

.field private mId:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object v2, p0, Lcom/flurry/android/bv;->mId:Ljava/lang/String;

    .line 22
    iput-object v2, p0, Lcom/flurry/android/bv;->mCollectionName:Ljava/lang/String;

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flurry/android/bv;->dM:Z

    .line 25
    const-wide/16 v0, 0x7530

    iput-wide v0, p0, Lcom/flurry/android/bv;->dN:J

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/flurry/android/bv;->Y:Ljava/util/HashMap;

    .line 81
    iput-object p1, p0, Lcom/flurry/android/bv;->mId:Ljava/lang/String;

    .line 82
    iput-object v2, p0, Lcom/flurry/android/bv;->mCollectionName:Ljava/lang/String;

    .line 83
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object v0, p0, Lcom/flurry/android/bv;->mId:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Lcom/flurry/android/bv;->mCollectionName:Ljava/lang/String;

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flurry/android/bv;->dM:Z

    .line 25
    const-wide/16 v0, 0x7530

    iput-wide v0, p0, Lcom/flurry/android/bv;->dN:J

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/flurry/android/bv;->Y:Ljava/util/HashMap;

    .line 76
    iput-object p1, p0, Lcom/flurry/android/bv;->mId:Ljava/lang/String;

    .line 77
    iput-object p2, p0, Lcom/flurry/android/bv;->mCollectionName:Ljava/lang/String;

    .line 78
    return-void
.end method

.method private a(I)J
    .locals 2

    .prologue
    .line 330
    if-nez p1, :cond_0

    .line 331
    const-wide/16 v0, 0x0

    .line 334
    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/flurry/android/bv;->dN:J

    goto :goto_0
.end method

.method static synthetic a(Lcom/flurry/android/bv;Lcom/flurry/android/AppCloudResponse;Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/16 v4, 0x195

    .line 17
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/flurry/android/AppCloudResponse;->isSuccessful()Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "invalid user session"

    invoke-virtual {p1}, Lcom/flurry/android/AppCloudResponse;->getResponseMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/flurry/android/bv;->Y:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/flurry/android/bv;->Y:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/ac;

    iget-object v0, v0, Lcom/flurry/android/ac;->bT:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Lcom/flurry/android/FlurryWalletHandler;

    if-eqz v2, :cond_0

    check-cast v0, Lcom/flurry/android/FlurryWalletHandler;

    new-instance v2, Lcom/flurry/android/responses/AppCloudError;

    const-string v3, "Session not valid, user has to relogin!"

    invoke-direct {v2, v4, v3}, Lcom/flurry/android/responses/AppCloudError;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v2}, Lcom/flurry/android/FlurryWalletHandler;->onError(Lcom/flurry/android/responses/AppCloudError;)V

    goto :goto_0

    :cond_0
    instance-of v2, v0, Lcom/flurry/android/AppCloudValueUpdateHandler;

    if-eqz v2, :cond_1

    check-cast v0, Lcom/flurry/android/AppCloudValueUpdateHandler;

    new-instance v2, Lcom/flurry/android/responses/AppCloudError;

    const-string v3, "Session not valid, user has to relogin!"

    invoke-direct {v2, v4, v3}, Lcom/flurry/android/responses/AppCloudError;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v2}, Lcom/flurry/android/AppCloudValueUpdateHandler;->onError(Lcom/flurry/android/responses/AppCloudError;)V

    goto :goto_0

    :cond_1
    const-string v0, "ObserverItem"

    const-string v2, "CALLBACK ERROR!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_3
    const/4 v0, 0x1

    goto :goto_1
.end method

.method private an()V
    .locals 2

    .prologue
    .line 354
    iget-object v0, p0, Lcom/flurry/android/bv;->Y:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 355
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 356
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 357
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 358
    invoke-direct {p0, v0}, Lcom/flurry/android/bv;->j(Ljava/lang/String;)V

    goto :goto_0

    .line 360
    :cond_0
    return-void
.end method

.method private ao()V
    .locals 2

    .prologue
    .line 363
    iget-object v0, p0, Lcom/flurry/android/bv;->Y:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 364
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 365
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 366
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 367
    invoke-direct {p0, v0}, Lcom/flurry/android/bv;->i(Ljava/lang/String;)V

    goto :goto_0

    .line 369
    :cond_0
    return-void
.end method

.method private i(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/flurry/android/bv;->Y:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/ac;

    iget-object v0, v0, Lcom/flurry/android/ac;->bS:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 131
    :goto_0
    return-void

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/flurry/android/bv;->Y:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/ac;

    .line 119
    if-nez v0, :cond_1

    .line 120
    const-string v0, "ObserverItem"

    const-string v1, "stopTimerForKey ERROR, info == null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 124
    :cond_1
    iget-object v1, v0, Lcom/flurry/android/ac;->bS:Ljava/util/Timer;

    if-eqz v1, :cond_2

    .line 126
    iget-object v1, v0, Lcom/flurry/android/ac;->bS:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 127
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/flurry/android/ac;->bS:Ljava/util/Timer;

    .line 130
    :cond_2
    iget-object v1, p0, Lcom/flurry/android/bv;->Y:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private j(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 162
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/flurry/android/bv;->a(I)J

    move-result-wide v0

    .line 164
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/flurry/android/bv;->a(Ljava/lang/String;Ljava/lang/Long;)V

    .line 165
    return-void
.end method


# virtual methods
.method protected final a(Ljava/lang/String;Ljava/lang/Long;)V
    .locals 6

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/flurry/android/bv;->i(Ljava/lang/String;)V

    .line 93
    iget-boolean v0, p0, Lcom/flurry/android/bv;->dM:Z

    if-nez v0, :cond_0

    .line 111
    :goto_0
    return-void

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/flurry/android/bv;->Y:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/ac;

    .line 98
    if-nez v0, :cond_1

    .line 99
    const-string v0, "ObserverItem"

    const-string v1, "scheduleTimerForKey ERROR, info == null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 103
    :cond_1
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, v0, Lcom/flurry/android/ac;->bS:Ljava/util/Timer;

    .line 104
    new-instance v1, Lcom/flurry/android/gf;

    invoke-direct {v1, p0, p1}, Lcom/flurry/android/gf;-><init>(Lcom/flurry/android/bv;Ljava/lang/String;)V

    .line 105
    const-string v2, "ObserverItem"

    const-string v3, "schedule"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iget-object v2, v0, Lcom/flurry/android/ac;->bS:Ljava/util/Timer;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v2, v1, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 108
    iget-object v1, p0, Lcom/flurry/android/bv;->Y:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final a(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 168
    const/4 v0, 0x0

    .line 169
    iget-object v1, p0, Lcom/flurry/android/bv;->Y:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    .line 171
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 172
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 173
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/ac;

    iget-object v0, v0, Lcom/flurry/android/ac;->bT:Ljava/util/List;

    .line 174
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 176
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 178
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 179
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 182
    :cond_0
    const/4 v0, 0x1

    :goto_1
    move v1, v0

    .line 184
    goto :goto_0

    .line 186
    :cond_1
    return v1

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public final al()V
    .locals 1

    .prologue
    .line 338
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/android/bv;->dM:Z

    .line 340
    invoke-direct {p0}, Lcom/flurry/android/bv;->an()V

    .line 341
    return-void
.end method

.method public final am()V
    .locals 1

    .prologue
    .line 344
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flurry/android/bv;->dM:Z

    .line 346
    invoke-direct {p0}, Lcom/flurry/android/bv;->ao()V

    .line 347
    return-void
.end method

.method protected final b(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 134
    iget-object v0, p0, Lcom/flurry/android/bv;->Y:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 136
    iget-object v0, p0, Lcom/flurry/android/bv;->Y:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/ac;

    .line 138
    if-nez v0, :cond_1

    .line 139
    const-string v0, "ObserverItem"

    const-string v1, "addObserverForKey ERROR, info == null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    :cond_0
    :goto_0
    return-void

    .line 143
    :cond_1
    iget-object v1, v0, Lcom/flurry/android/ac;->bT:Ljava/util/List;

    .line 144
    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    iget-object v1, p0, Lcom/flurry/android/bv;->Y:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    :goto_1
    iget-boolean v0, p0, Lcom/flurry/android/bv;->dM:Z

    if-eqz v0, :cond_0

    .line 155
    invoke-direct {p0, p1}, Lcom/flurry/android/bv;->j(Ljava/lang/String;)V

    goto :goto_0

    .line 149
    :cond_2
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 150
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    iget-object v1, p0, Lcom/flurry/android/bv;->Y:Ljava/util/HashMap;

    new-instance v2, Lcom/flurry/android/ac;

    invoke-direct {v2, v0}, Lcom/flurry/android/ac;-><init>(Ljava/util/List;)V

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 202
    iget-object v0, p0, Lcom/flurry/android/bv;->Y:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 204
    iget-object v0, p0, Lcom/flurry/android/bv;->Y:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/ac;

    iget-object v0, v0, Lcom/flurry/android/ac;->bT:Ljava/util/List;

    .line 206
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 207
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 208
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 210
    instance-of v2, v0, Lcom/flurry/android/FlurryWalletHandler;

    if-eqz v2, :cond_0

    .line 211
    check-cast v0, Lcom/flurry/android/FlurryWalletHandler;

    .line 212
    new-instance v2, Lcom/flurry/android/FlurryWalletInfo;

    invoke-direct {v2}, Lcom/flurry/android/FlurryWalletInfo;-><init>()V

    .line 214
    iput-object p1, v2, Lcom/flurry/android/FlurryWalletInfo;->iv:Ljava/lang/String;

    .line 215
    invoke-static {p2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    iput v3, v2, Lcom/flurry/android/FlurryWalletInfo;->iw:F

    .line 217
    invoke-interface {v0, v2}, Lcom/flurry/android/FlurryWalletHandler;->onValueUpdated(Lcom/flurry/android/FlurryWalletInfo;)V

    goto :goto_0

    .line 219
    :cond_0
    instance-of v2, v0, Lcom/flurry/android/AppCloudValueUpdateHandler;

    if-eqz v2, :cond_1

    .line 220
    check-cast v0, Lcom/flurry/android/AppCloudValueUpdateHandler;

    .line 222
    invoke-interface {v0, p1}, Lcom/flurry/android/AppCloudValueUpdateHandler;->onValueUpdated(Ljava/lang/String;)V

    goto :goto_0

    .line 225
    :cond_1
    const-string v0, "ObserverItem"

    const-string v2, "CALLBACK ERROR!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 229
    :cond_2
    return-void
.end method

.method public final isAutoSyncEnabled()Z
    .locals 1

    .prologue
    .line 350
    iget-boolean v0, p0, Lcom/flurry/android/bv;->dM:Z

    return v0
.end method

.method protected final k(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 234
    iget-object v0, p0, Lcom/flurry/android/bv;->Y:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/ac;

    .line 236
    if-nez v0, :cond_0

    .line 237
    const-string v0, "ObserverItem"

    const-string v1, "addObserverForKey ERROR, info == null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    :goto_0
    return-void

    .line 240
    :cond_0
    iget v1, v0, Lcom/flurry/android/ac;->G:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/flurry/android/ac;->G:I

    .line 241
    iget v1, v0, Lcom/flurry/android/ac;->G:I

    .line 242
    invoke-direct {p0, v1}, Lcom/flurry/android/bv;->a(I)J

    move-result-wide v2

    .line 244
    iget-object v1, p0, Lcom/flurry/android/bv;->Y:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    iget-object v0, p0, Lcom/flurry/android/bv;->mCollectionName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/flurry/android/AppCloudUser;

    invoke-direct {v0}, Lcom/flurry/android/AppCloudUser;-><init>()V

    iget-object v1, p0, Lcom/flurry/android/bv;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/flurry/android/AppCloudUser;->setId(Ljava/lang/String;)V

    :try_start_0
    new-instance v1, Lcom/flurry/android/bf;

    invoke-direct {v1, p0, p1, v2, v3}, Lcom/flurry/android/bf;-><init>(Lcom/flurry/android/bv;Ljava/lang/String;J)V

    invoke-virtual {v0, v1}, Lcom/flurry/android/AppCloudUser;->getObjectOrUser(Lcom/flurry/android/AppCloudResponseHandler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/flurry/android/bv;->mCollectionName:Ljava/lang/String;

    invoke-static {v0}, Lcom/flurry/android/AppCloudObject;->create(Ljava/lang/String;)Lcom/flurry/android/AppCloudObject;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/android/bv;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/flurry/android/AppCloudObject;->setId(Ljava/lang/String;)V

    :try_start_1
    new-instance v1, Lcom/flurry/android/bd;

    invoke-direct {v1, p0, p1, v2, v3}, Lcom/flurry/android/bd;-><init>(Lcom/flurry/android/bv;Ljava/lang/String;J)V

    invoke-virtual {v0, v1}, Lcom/flurry/android/AppCloudObject;->getObjectOrUser(Lcom/flurry/android/AppCloudResponseHandler;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected final removeObserverForKey(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/flurry/android/bv;->Y:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 191
    const/4 v0, 0x0

    .line 196
    :goto_0
    return v0

    .line 193
    :cond_0
    invoke-direct {p0, p1}, Lcom/flurry/android/bv;->i(Ljava/lang/String;)V

    .line 195
    iget-object v0, p0, Lcom/flurry/android/bv;->Y:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/flurry/android/bv;->Y:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method

.method final start()V
    .locals 1

    .prologue
    .line 372
    iget-boolean v0, p0, Lcom/flurry/android/bv;->dM:Z

    if-eqz v0, :cond_0

    .line 373
    invoke-direct {p0}, Lcom/flurry/android/bv;->an()V

    .line 375
    :cond_0
    return-void
.end method

.method final stop()V
    .locals 0

    .prologue
    .line 378
    invoke-direct {p0}, Lcom/flurry/android/bv;->ao()V

    .line 379
    return-void
.end method
