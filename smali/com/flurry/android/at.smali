.class final Lcom/flurry/android/at;
.super Lcom/flurry/android/dr;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/flurry/android/dr;-><init>()V

    .line 14
    new-instance v0, Lcom/flurry/android/by;

    invoke-direct {v0, p1, p2}, Lcom/flurry/android/by;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/flurry/android/at;->fB:Lcom/flurry/android/CacheDBOperations;

    .line 15
    return-void
.end method


# virtual methods
.method public final a(Lcom/flurry/android/caching/ObjectData;)Ljava/lang/String;
    .locals 8

    .prologue
    .line 19
    .line 21
    invoke-virtual {p1}, Lcom/flurry/android/caching/ObjectData;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 22
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    .line 28
    :goto_0
    const/4 v0, 0x0

    move v6, v0

    :goto_1
    invoke-virtual {p1}, Lcom/flurry/android/caching/ObjectData;->getKeyValuesListSize()I

    move-result v0

    if-ge v6, v0, :cond_1

    .line 29
    iget-object v7, p0, Lcom/flurry/android/at;->fB:Lcom/flurry/android/CacheDBOperations;

    new-instance v0, Lcom/flurry/android/bm;

    invoke-virtual {p1}, Lcom/flurry/android/caching/ObjectData;->getKeyValues()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/NameValuePair;

    invoke-interface {v1}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/flurry/android/caching/ObjectData;->getKeyValues()Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/http/NameValuePair;

    invoke-interface {v2}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/flurry/android/caching/ObjectData;->getCollectionName()Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/flurry/android/bm;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Lcom/flurry/android/CacheDBOperations;->addItem(Lcom/flurry/android/bm;)V

    .line 28
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_1

    .line 25
    :cond_0
    invoke-virtual {p1}, Lcom/flurry/android/caching/ObjectData;->getId()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 37
    :cond_1
    return-object v3
.end method

.method protected final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/flurry/android/at;->fB:Lcom/flurry/android/CacheDBOperations;

    invoke-virtual {v0, p1, p3, p4}, Lcom/flurry/android/CacheDBOperations;->getValueByKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 45
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 46
    invoke-virtual {p0, p3, p1, p2}, Lcom/flurry/android/at;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lcom/flurry/android/at;->fB:Lcom/flurry/android/CacheDBOperations;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/flurry/android/CacheDBOperations;->updateItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    const/4 v0, 0x1

    .line 52
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
