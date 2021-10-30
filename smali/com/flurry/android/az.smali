.class final Lcom/flurry/android/az;
.super Lcom/flurry/android/dr;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/flurry/android/dr;-><init>()V

    .line 12
    new-instance v0, Lcom/flurry/android/CacheDBServerOperations;

    invoke-direct {v0, p1, p2}, Lcom/flurry/android/CacheDBServerOperations;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/flurry/android/az;->fB:Lcom/flurry/android/CacheDBOperations;

    .line 13
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 68
    new-instance v0, Lcom/flurry/android/bm;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/flurry/android/bm;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    iget-object v1, p0, Lcom/flurry/android/az;->fB:Lcom/flurry/android/CacheDBOperations;

    invoke-virtual {v1, v0}, Lcom/flurry/android/CacheDBOperations;->hasKeyValueObject(Lcom/flurry/android/bm;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 72
    iget-object v1, p0, Lcom/flurry/android/az;->fB:Lcom/flurry/android/CacheDBOperations;

    invoke-virtual {v1, v0}, Lcom/flurry/android/CacheDBOperations;->addItem(Lcom/flurry/android/bm;)V

    .line 74
    invoke-virtual {p0, p3, p1, p2}, Lcom/flurry/android/az;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-static {p5}, Lcom/flurry/android/AppCloudSearch;->onMakeSearchNotValidForCollection(Ljava/lang/String;)V

    .line 90
    :goto_0
    return-void

    .line 77
    :cond_0
    invoke-virtual {p0, p3}, Lcom/flurry/android/az;->getObjectById(Ljava/lang/String;)Lcom/flurry/android/caching/ObjectData;

    move-result-object v2

    .line 78
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-virtual {v2}, Lcom/flurry/android/caching/ObjectData;->getKeyValuesListSize()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 79
    invoke-virtual {v2}, Lcom/flurry/android/caching/ObjectData;->getKeyValues()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/NameValuePair;

    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 80
    invoke-virtual {v2}, Lcom/flurry/android/caching/ObjectData;->getKeyValues()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/NameValuePair;

    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 81
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 82
    invoke-virtual {p0, p3, p1, p2}, Lcom/flurry/android/az;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-static {p5}, Lcom/flurry/android/AppCloudSearch;->onMakeSearchNotValidForCollection(Ljava/lang/String;)V

    .line 78
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 88
    :cond_2
    iget-object v0, p0, Lcom/flurry/android/az;->fB:Lcom/flurry/android/CacheDBOperations;

    invoke-virtual {v0, p1, p2, p3, p5}, Lcom/flurry/android/CacheDBOperations;->updateItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/flurry/android/az;->fB:Lcom/flurry/android/CacheDBOperations;

    invoke-virtual {v0, p1, p3, p4}, Lcom/flurry/android/CacheDBOperations;->getValueByKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 95
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 96
    invoke-virtual {p0, p3, p1, p2}, Lcom/flurry/android/az;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/flurry/android/az;->fB:Lcom/flurry/android/CacheDBOperations;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/flurry/android/CacheDBOperations;->updateItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const/4 v0, 0x1

    .line 102
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
