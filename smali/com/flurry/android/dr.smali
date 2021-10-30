.class abstract Lcom/flurry/android/dr;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected fB:Lcom/flurry/android/CacheDBOperations;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/android/dr;->fB:Lcom/flurry/android/CacheDBOperations;

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/flurry/android/dr;->fB:Lcom/flurry/android/CacheDBOperations;

    invoke-virtual {v0, p1, p3, p4}, Lcom/flurry/android/CacheDBOperations;->getValueByKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 80
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 81
    invoke-virtual {p0, p3, p1, p2}, Lcom/flurry/android/dr;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    invoke-static {p4}, Lcom/flurry/android/AppCloudSearch;->onMakeSearchNotValidForCollection(Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/flurry/android/dr;->fB:Lcom/flurry/android/CacheDBOperations;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/flurry/android/CacheDBOperations;->updateItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const/4 v0, 0x1

    .line 88
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final aI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/flurry/android/dr;->fB:Lcom/flurry/android/CacheDBOperations;

    invoke-virtual {v0}, Lcom/flurry/android/CacheDBOperations;->readAll()V

    .line 126
    const-string v0, ""

    return-object v0
.end method

.method public final b(Lcom/flurry/android/caching/ObjectData;)V
    .locals 5

    .prologue
    .line 64
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Lcom/flurry/android/caching/ObjectData;->getKeyValues()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 65
    invoke-virtual {p1}, Lcom/flurry/android/caching/ObjectData;->getKeyValues()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/NameValuePair;

    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v2

    .line 66
    invoke-virtual {p1}, Lcom/flurry/android/caching/ObjectData;->getKeyValues()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/NameValuePair;

    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 68
    invoke-virtual {p1}, Lcom/flurry/android/caching/ObjectData;->isUser()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 69
    invoke-virtual {p1}, Lcom/flurry/android/caching/ObjectData;->getId()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v0, v3, v4}, Lcom/flurry/android/dr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 64
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 71
    :cond_0
    invoke-virtual {p1}, Lcom/flurry/android/caching/ObjectData;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/flurry/android/caching/ObjectData;->getCollectionName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v2, v0, v3, v4}, Lcom/flurry/android/dr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_1

    .line 74
    :cond_1
    return-void
.end method

.method protected final b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 14
    invoke-static {}, Lcom/flurry/android/AppCloudUser;->getCurrentUser()Lcom/flurry/android/AppCloudUser;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/flurry/android/AppCloudUser;->getCurrentUser()Lcom/flurry/android/AppCloudUser;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/AppCloudUser;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/flurry/android/AppCloudUser;->getCurrentUser()Lcom/flurry/android/AppCloudUser;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/flurry/android/AppCloudUser;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 16
    :cond_0
    invoke-static {}, Lcom/flurry/android/FlurryAppCloud;->F()Lcom/flurry/android/r;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 17
    invoke-static {p1, p2, p3}, Lcom/flurry/android/r;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    :cond_1
    return-void
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/flurry/android/dr;->fB:Lcom/flurry/android/CacheDBOperations;

    invoke-virtual {v0, p1, p2, p3}, Lcom/flurry/android/CacheDBOperations;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    return-void
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/flurry/android/dr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final getObjectById(Ljava/lang/String;)Lcom/flurry/android/caching/ObjectData;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/flurry/android/dr;->fB:Lcom/flurry/android/CacheDBOperations;

    invoke-virtual {v0, p1}, Lcom/flurry/android/CacheDBOperations;->getObjectById(Ljava/lang/String;)Lcom/flurry/android/caching/ObjectData;

    move-result-object v0

    return-object v0
.end method

.method public final isUserObject(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/flurry/android/dr;->fB:Lcom/flurry/android/CacheDBOperations;

    invoke-virtual {v0, p1}, Lcom/flurry/android/CacheDBOperations;->isUserObject(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final w(Ljava/lang/String;)Lcom/flurry/android/caching/ObjectData;
    .locals 13

    .prologue
    const/4 v2, 0x0

    .line 100
    iget-object v8, p0, Lcom/flurry/android/dr;->fB:Lcom/flurry/android/CacheDBOperations;

    iget-object v0, v8, Lcom/flurry/android/CacheDBOperations;->cD:Lcom/flurry/android/av;

    invoke-virtual {v0}, Lcom/flurry/android/av;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iget-object v1, v8, Lcom/flurry/android/CacheDBOperations;->cE:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "objectsId=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v7, "objectsId ASC, julianday(timestamp)"

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "primery_key_id"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    const-string v0, "objectsId"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    const-string v0, "collectionName"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    const-string v0, "key"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    const-string v0, "value"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    move-object v0, v2

    :cond_0
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    if-nez v0, :cond_1

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/flurry/android/caching/ObjectData;

    invoke-direct {v0, v9}, Lcom/flurry/android/caching/ObjectData;-><init>(Ljava/lang/String;)V

    :cond_1
    :goto_0
    invoke-virtual {v0, v11, v12}, Lcom/flurry/android/caching/ObjectData;->addKeyValue(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Lcom/flurry/android/CacheDBOperations;->e(I)V

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-object v0

    :cond_2
    new-instance v0, Lcom/flurry/android/caching/ObjectData;

    invoke-direct {v0, v9, v10}, Lcom/flurry/android/caching/ObjectData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object v0, v2

    goto :goto_1
.end method

.method public final x(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/flurry/android/dr;->fB:Lcom/flurry/android/CacheDBOperations;

    invoke-virtual {v0, p1}, Lcom/flurry/android/CacheDBOperations;->contains(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
