.class Lcom/flurry/org/apache/avro/Schema$LockableArrayList;
.super Ljava/util/ArrayList;
.source "Schema.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/org/apache/avro/Schema;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LockableArrayList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/ArrayList",
        "<TE;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private locked:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1427
    .local p0, "this":Lcom/flurry/org/apache/avro/Schema$LockableArrayList;, "Lcom/flurry/org/apache/avro/Schema$LockableArrayList<TE;>;"
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 1425
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flurry/org/apache/avro/Schema$LockableArrayList;->locked:Z

    .line 1428
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 1431
    .local p0, "this":Lcom/flurry/org/apache/avro/Schema$LockableArrayList;, "Lcom/flurry/org/apache/avro/Schema$LockableArrayList<TE;>;"
    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1425
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flurry/org/apache/avro/Schema$LockableArrayList;->locked:Z

    .line 1432
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 1435
    .local p0, "this":Lcom/flurry/org/apache/avro/Schema$LockableArrayList;, "Lcom/flurry/org/apache/avro/Schema$LockableArrayList<TE;>;"
    .local p1, "types":Ljava/util/List;, "Ljava/util/List<TE;>;"
    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1425
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flurry/org/apache/avro/Schema$LockableArrayList;->locked:Z

    .line 1436
    return-void
.end method

.method private ensureUnlocked()V
    .locals 1

    .prologue
    .line 1444
    .local p0, "this":Lcom/flurry/org/apache/avro/Schema$LockableArrayList;, "Lcom/flurry/org/apache/avro/Schema$LockableArrayList<TE;>;"
    iget-boolean v0, p0, Lcom/flurry/org/apache/avro/Schema$LockableArrayList;->locked:Z

    if-eqz v0, :cond_0

    .line 1445
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 1447
    :cond_0
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 1450
    .local p0, "this":Lcom/flurry/org/apache/avro/Schema$LockableArrayList;, "Lcom/flurry/org/apache/avro/Schema$LockableArrayList<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-direct {p0}, Lcom/flurry/org/apache/avro/Schema$LockableArrayList;->ensureUnlocked()V

    .line 1451
    invoke-super {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 1470
    .local p0, "this":Lcom/flurry/org/apache/avro/Schema$LockableArrayList;, "Lcom/flurry/org/apache/avro/Schema$LockableArrayList<TE;>;"
    .local p2, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-direct {p0}, Lcom/flurry/org/apache/avro/Schema$LockableArrayList;->ensureUnlocked()V

    .line 1471
    invoke-super {p0, p1, p2}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 1465
    .local p0, "this":Lcom/flurry/org/apache/avro/Schema$LockableArrayList;, "Lcom/flurry/org/apache/avro/Schema$LockableArrayList<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-direct {p0}, Lcom/flurry/org/apache/avro/Schema$LockableArrayList;->ensureUnlocked()V

    .line 1466
    invoke-super {p0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public clear()V
    .locals 0

    .prologue
    .line 1485
    .local p0, "this":Lcom/flurry/org/apache/avro/Schema$LockableArrayList;, "Lcom/flurry/org/apache/avro/Schema$LockableArrayList<TE;>;"
    invoke-direct {p0}, Lcom/flurry/org/apache/avro/Schema$LockableArrayList;->ensureUnlocked()V

    .line 1486
    invoke-super {p0}, Ljava/util/ArrayList;->clear()V

    .line 1487
    return-void
.end method

.method public lock()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 1439
    .local p0, "this":Lcom/flurry/org/apache/avro/Schema$LockableArrayList;, "Lcom/flurry/org/apache/avro/Schema$LockableArrayList<TE;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/org/apache/avro/Schema$LockableArrayList;->locked:Z

    .line 1440
    return-object p0
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 1460
    .local p0, "this":Lcom/flurry/org/apache/avro/Schema$LockableArrayList;, "Lcom/flurry/org/apache/avro/Schema$LockableArrayList<TE;>;"
    invoke-direct {p0}, Lcom/flurry/org/apache/avro/Schema$LockableArrayList;->ensureUnlocked()V

    .line 1461
    invoke-super {p0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 1455
    .local p0, "this":Lcom/flurry/org/apache/avro/Schema$LockableArrayList;, "Lcom/flurry/org/apache/avro/Schema$LockableArrayList<TE;>;"
    invoke-direct {p0}, Lcom/flurry/org/apache/avro/Schema$LockableArrayList;->ensureUnlocked()V

    .line 1456
    invoke-super {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 1475
    .local p0, "this":Lcom/flurry/org/apache/avro/Schema$LockableArrayList;, "Lcom/flurry/org/apache/avro/Schema$LockableArrayList<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-direct {p0}, Lcom/flurry/org/apache/avro/Schema$LockableArrayList;->ensureUnlocked()V

    .line 1476
    invoke-super {p0, p1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 1480
    .local p0, "this":Lcom/flurry/org/apache/avro/Schema$LockableArrayList;, "Lcom/flurry/org/apache/avro/Schema$LockableArrayList<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-direct {p0}, Lcom/flurry/org/apache/avro/Schema$LockableArrayList;->ensureUnlocked()V

    .line 1481
    invoke-super {p0, p1}, Ljava/util/ArrayList;->retainAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method
