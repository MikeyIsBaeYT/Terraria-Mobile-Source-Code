.class abstract Lcom/flurry/android/al;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field cD:Lcom/flurry/android/av;

.field cE:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const-string v0, ""

    iput-object v0, p0, Lcom/flurry/android/al;->cE:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public clearTable()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 30
    iget-object v0, p0, Lcom/flurry/android/al;->cD:Lcom/flurry/android/av;

    invoke-virtual {v0}, Lcom/flurry/android/av;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 33
    iget-object v1, p0, Lcom/flurry/android/al;->cE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 37
    invoke-virtual {p0}, Lcom/flurry/android/al;->readAll()V

    .line 38
    return-void
.end method

.method public contains(Ljava/lang/String;)Z
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 58
    const/4 v8, 0x0

    .line 59
    iget-object v0, p0, Lcom/flurry/android/al;->cD:Lcom/flurry/android/av;

    invoke-virtual {v0}, Lcom/flurry/android/av;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 62
    iget-object v1, p0, Lcom/flurry/android/al;->cE:Ljava/lang/String;

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

    .line 71
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    const/4 v0, 0x1

    .line 75
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 77
    return v0

    :cond_0
    move v0, v8

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 15
    iget-object v0, p0, Lcom/flurry/android/al;->cD:Lcom/flurry/android/av;

    invoke-virtual {v0}, Lcom/flurry/android/av;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 16
    iget-object v1, p0, Lcom/flurry/android/al;->cE:Ljava/lang/String;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 18
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 19
    const/4 v0, 0x0

    .line 23
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 25
    return v0

    .line 21
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public abstract readAll()V
.end method

.method public size()I
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 41
    iget-object v0, p0, Lcom/flurry/android/al;->cD:Lcom/flurry/android/av;

    invoke-virtual {v0}, Lcom/flurry/android/av;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 42
    iget-object v1, p0, Lcom/flurry/android/al;->cE:Ljava/lang/String;

    const-string v7, "objectsId ASC, julianday(timestamp)"

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 50
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 52
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 54
    return v1
.end method
