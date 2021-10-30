.class public final Lcom/flurry/org/codehaus/jackson/map/deser/impl/BeanPropertyMap;
.super Ljava/lang/Object;
.source "BeanPropertyMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/org/codehaus/jackson/map/deser/impl/BeanPropertyMap$IteratorImpl;,
        Lcom/flurry/org/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;
    }
.end annotation


# instance fields
.field private final _buckets:[Lcom/flurry/org/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;

.field private final _hashMask:I

.field private final _size:I


# direct methods
.method public constructor <init>(Ljava/util/Collection;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 27
    .local p1, "properties":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v6

    iput v6, p0, Lcom/flurry/org/codehaus/jackson/map/deser/impl/BeanPropertyMap;->_size:I

    .line 29
    iget v6, p0, Lcom/flurry/org/codehaus/jackson/map/deser/impl/BeanPropertyMap;->_size:I

    invoke-static {v6}, Lcom/flurry/org/codehaus/jackson/map/deser/impl/BeanPropertyMap;->findSize(I)I

    move-result v0

    .line 30
    .local v0, "bucketCount":I
    add-int/lit8 v6, v0, -0x1

    iput v6, p0, Lcom/flurry/org/codehaus/jackson/map/deser/impl/BeanPropertyMap;->_hashMask:I

    .line 31
    new-array v1, v0, [Lcom/flurry/org/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;

    .line 32
    .local v1, "buckets":[Lcom/flurry/org/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;

    .line 33
    .local v5, "property":Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;
    invoke-virtual {v5}, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;->getName()Ljava/lang/String;

    move-result-object v4

    .line 34
    .local v4, "key":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v6

    iget v7, p0, Lcom/flurry/org/codehaus/jackson/map/deser/impl/BeanPropertyMap;->_hashMask:I

    and-int v3, v6, v7

    .line 35
    .local v3, "index":I
    new-instance v6, Lcom/flurry/org/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;

    aget-object v7, v1, v3

    invoke-direct {v6, v7, v4, v5}, Lcom/flurry/org/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;-><init>(Lcom/flurry/org/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;Ljava/lang/String;Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;)V

    aput-object v6, v1, v3

    goto :goto_0

    .line 37
    .end local v3    # "index":I
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "property":Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;
    :cond_0
    iput-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/deser/impl/BeanPropertyMap;->_buckets:[Lcom/flurry/org/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;

    .line 38
    return-void
.end method

.method private _findWithEquals(Ljava/lang/String;I)Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "index"    # I

    .prologue
    .line 170
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/deser/impl/BeanPropertyMap;->_buckets:[Lcom/flurry/org/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;

    aget-object v0, v1, p2

    .line 171
    .local v0, "bucket":Lcom/flurry/org/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;
    :goto_0
    if-eqz v0, :cond_1

    .line 172
    iget-object v1, v0, Lcom/flurry/org/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;->key:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 173
    iget-object v1, v0, Lcom/flurry/org/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;->value:Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;

    .line 177
    :goto_1
    return-object v1

    .line 175
    :cond_0
    iget-object v0, v0, Lcom/flurry/org/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;->next:Lcom/flurry/org/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;

    goto :goto_0

    .line 177
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private static final findSize(I)I
    .locals 3
    .param p0, "size"    # I

    .prologue
    .line 55
    const/16 v2, 0x20

    if-gt p0, v2, :cond_0

    add-int v0, p0, p0

    .line 56
    .local v0, "needed":I
    :goto_0
    const/4 v1, 0x2

    .line 57
    .local v1, "result":I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 58
    add-int/2addr v1, v1

    goto :goto_1

    .line 55
    .end local v0    # "needed":I
    .end local v1    # "result":I
    :cond_0
    shr-int/lit8 v2, p0, 0x2

    add-int v0, p0, v2

    goto :goto_0

    .line 60
    .restart local v0    # "needed":I
    .restart local v1    # "result":I
    :cond_1
    return v1
.end method


# virtual methods
.method public allProperties()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;",
            ">;"
        }
    .end annotation

    .prologue
    .line 75
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/deser/impl/BeanPropertyMap$IteratorImpl;

    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/deser/impl/BeanPropertyMap;->_buckets:[Lcom/flurry/org/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;

    invoke-direct {v0, v1}, Lcom/flurry/org/codehaus/jackson/map/deser/impl/BeanPropertyMap$IteratorImpl;-><init>([Lcom/flurry/org/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;)V

    return-object v0
.end method

.method public assignIndexes()V
    .locals 7

    .prologue
    .line 43
    const/4 v3, 0x0

    .line 44
    .local v3, "index":I
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/impl/BeanPropertyMap;->_buckets:[Lcom/flurry/org/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;

    .local v0, "arr$":[Lcom/flurry/org/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v5, :cond_1

    aget-object v1, v0, v2

    .local v1, "bucket":Lcom/flurry/org/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;
    move v4, v3

    .line 45
    .end local v3    # "index":I
    .local v4, "index":I
    :goto_1
    if-eqz v1, :cond_0

    .line 46
    iget-object v6, v1, Lcom/flurry/org/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;->value:Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "index":I
    .restart local v3    # "index":I
    invoke-virtual {v6, v4}, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;->assignIndex(I)V

    .line 47
    iget-object v1, v1, Lcom/flurry/org/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;->next:Lcom/flurry/org/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;

    move v4, v3

    .end local v3    # "index":I
    .restart local v4    # "index":I
    goto :goto_1

    .line 44
    :cond_0
    add-int/lit8 v2, v2, 0x1

    move v3, v4

    .end local v4    # "index":I
    .restart local v3    # "index":I
    goto :goto_0

    .line 50
    .end local v1    # "bucket":Lcom/flurry/org/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;
    :cond_1
    return-void
.end method

.method public find(Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 80
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    iget v3, p0, Lcom/flurry/org/codehaus/jackson/map/deser/impl/BeanPropertyMap;->_hashMask:I

    and-int v1, v2, v3

    .line 81
    .local v1, "index":I
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/deser/impl/BeanPropertyMap;->_buckets:[Lcom/flurry/org/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;

    aget-object v0, v2, v1

    .line 83
    .local v0, "bucket":Lcom/flurry/org/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;
    if-nez v0, :cond_0

    .line 84
    const/4 v2, 0x0

    .line 96
    :goto_0
    return-object v2

    .line 87
    :cond_0
    iget-object v2, v0, Lcom/flurry/org/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;->key:Ljava/lang/String;

    if-ne v2, p1, :cond_1

    .line 88
    iget-object v2, v0, Lcom/flurry/org/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;->value:Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;

    goto :goto_0

    .line 90
    :cond_1
    iget-object v0, v0, Lcom/flurry/org/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;->next:Lcom/flurry/org/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;

    if-eqz v0, :cond_2

    .line 91
    iget-object v2, v0, Lcom/flurry/org/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;->key:Ljava/lang/String;

    if-ne v2, p1, :cond_1

    .line 92
    iget-object v2, v0, Lcom/flurry/org/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;->value:Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;

    goto :goto_0

    .line 96
    :cond_2
    invoke-direct {p0, p1, v1}, Lcom/flurry/org/codehaus/jackson/map/deser/impl/BeanPropertyMap;->_findWithEquals(Ljava/lang/String;I)Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;

    move-result-object v2

    goto :goto_0
.end method

.method public remove(Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;)V
    .locals 9
    .param p1, "property"    # Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;

    .prologue
    .line 143
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;->getName()Ljava/lang/String;

    move-result-object v3

    .line 144
    .local v3, "name":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v6

    iget-object v7, p0, Lcom/flurry/org/codehaus/jackson/map/deser/impl/BeanPropertyMap;->_buckets:[Lcom/flurry/org/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;

    array-length v7, v7

    add-int/lit8 v7, v7, -0x1

    and-int v2, v6, v7

    .line 145
    .local v2, "index":I
    const/4 v4, 0x0

    .line 146
    .local v4, "tail":Lcom/flurry/org/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;
    const/4 v1, 0x0

    .line 148
    .local v1, "found":Z
    iget-object v6, p0, Lcom/flurry/org/codehaus/jackson/map/deser/impl/BeanPropertyMap;->_buckets:[Lcom/flurry/org/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;

    aget-object v0, v6, v2

    .local v0, "bucket":Lcom/flurry/org/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;
    move-object v5, v4

    .end local v4    # "tail":Lcom/flurry/org/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;
    .local v5, "tail":Lcom/flurry/org/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;
    :goto_0
    if-eqz v0, :cond_1

    .line 150
    if-nez v1, :cond_0

    iget-object v6, v0, Lcom/flurry/org/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;->key:Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 151
    const/4 v1, 0x1

    move-object v4, v5

    .line 148
    .end local v5    # "tail":Lcom/flurry/org/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;
    .restart local v4    # "tail":Lcom/flurry/org/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;
    :goto_1
    iget-object v0, v0, Lcom/flurry/org/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;->next:Lcom/flurry/org/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;

    move-object v5, v4

    .end local v4    # "tail":Lcom/flurry/org/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;
    .restart local v5    # "tail":Lcom/flurry/org/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;
    goto :goto_0

    .line 153
    :cond_0
    new-instance v4, Lcom/flurry/org/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;

    iget-object v6, v0, Lcom/flurry/org/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;->key:Ljava/lang/String;

    iget-object v7, v0, Lcom/flurry/org/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;->value:Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;

    invoke-direct {v4, v5, v6, v7}, Lcom/flurry/org/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;-><init>(Lcom/flurry/org/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;Ljava/lang/String;Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;)V

    .end local v5    # "tail":Lcom/flurry/org/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;
    .restart local v4    # "tail":Lcom/flurry/org/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;
    goto :goto_1

    .line 156
    .end local v4    # "tail":Lcom/flurry/org/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;
    .restart local v5    # "tail":Lcom/flurry/org/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;
    :cond_1
    if-nez v1, :cond_2

    .line 157
    new-instance v6, Ljava/util/NoSuchElementException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "No entry \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\' found, can\'t remove"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 159
    :cond_2
    iget-object v6, p0, Lcom/flurry/org/codehaus/jackson/map/deser/impl/BeanPropertyMap;->_buckets:[Lcom/flurry/org/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;

    aput-object v5, v6, v2

    .line 160
    return-void
.end method

.method public replace(Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;)V
    .locals 9
    .param p1, "property"    # Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;

    .prologue
    .line 106
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;->getName()Ljava/lang/String;

    move-result-object v3

    .line 107
    .local v3, "name":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v6

    iget-object v7, p0, Lcom/flurry/org/codehaus/jackson/map/deser/impl/BeanPropertyMap;->_buckets:[Lcom/flurry/org/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;

    array-length v7, v7

    add-int/lit8 v7, v7, -0x1

    and-int v2, v6, v7

    .line 112
    .local v2, "index":I
    const/4 v4, 0x0

    .line 113
    .local v4, "tail":Lcom/flurry/org/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;
    const/4 v1, 0x0

    .line 116
    .local v1, "found":Z
    iget-object v6, p0, Lcom/flurry/org/codehaus/jackson/map/deser/impl/BeanPropertyMap;->_buckets:[Lcom/flurry/org/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;

    aget-object v0, v6, v2

    .local v0, "bucket":Lcom/flurry/org/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;
    move-object v5, v4

    .end local v4    # "tail":Lcom/flurry/org/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;
    .local v5, "tail":Lcom/flurry/org/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;
    :goto_0
    if-eqz v0, :cond_1

    .line 118
    if-nez v1, :cond_0

    iget-object v6, v0, Lcom/flurry/org/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;->key:Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 119
    const/4 v1, 0x1

    move-object v4, v5

    .line 116
    .end local v5    # "tail":Lcom/flurry/org/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;
    .restart local v4    # "tail":Lcom/flurry/org/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;
    :goto_1
    iget-object v0, v0, Lcom/flurry/org/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;->next:Lcom/flurry/org/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;

    move-object v5, v4

    .end local v4    # "tail":Lcom/flurry/org/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;
    .restart local v5    # "tail":Lcom/flurry/org/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;
    goto :goto_0

    .line 121
    :cond_0
    new-instance v4, Lcom/flurry/org/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;

    iget-object v6, v0, Lcom/flurry/org/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;->key:Ljava/lang/String;

    iget-object v7, v0, Lcom/flurry/org/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;->value:Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;

    invoke-direct {v4, v5, v6, v7}, Lcom/flurry/org/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;-><init>(Lcom/flurry/org/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;Ljava/lang/String;Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;)V

    .end local v5    # "tail":Lcom/flurry/org/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;
    .restart local v4    # "tail":Lcom/flurry/org/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;
    goto :goto_1

    .line 125
    .end local v4    # "tail":Lcom/flurry/org/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;
    .restart local v5    # "tail":Lcom/flurry/org/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;
    :cond_1
    if-nez v1, :cond_2

    .line 126
    new-instance v6, Ljava/util/NoSuchElementException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "No entry \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\' found, can\'t replace"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 131
    :cond_2
    iget-object v6, p0, Lcom/flurry/org/codehaus/jackson/map/deser/impl/BeanPropertyMap;->_buckets:[Lcom/flurry/org/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;

    new-instance v7, Lcom/flurry/org/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;

    invoke-direct {v7, v5, v3, p1}, Lcom/flurry/org/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;-><init>(Lcom/flurry/org/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;Ljava/lang/String;Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;)V

    aput-object v7, v6, v2

    .line 132
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/impl/BeanPropertyMap;->_size:I

    return v0
.end method
