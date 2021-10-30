.class public Lcom/flurry/org/codehaus/jackson/map/ser/impl/JsonSerializerMap;
.super Ljava/lang/Object;
.source "JsonSerializerMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/org/codehaus/jackson/map/ser/impl/JsonSerializerMap$Bucket;
    }
.end annotation


# instance fields
.field private final _buckets:[Lcom/flurry/org/codehaus/jackson/map/ser/impl/JsonSerializerMap$Bucket;

.field private final _size:I


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/flurry/org/codehaus/jackson/map/ser/impl/SerializerCache$TypeKey;",
            "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 20
    .local p1, "serializers":Ljava/util/Map;, "Ljava/util/Map<Lcom/flurry/org/codehaus/jackson/map/ser/impl/SerializerCache$TypeKey;Lcom/flurry/org/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v7

    invoke-static {v7}, Lcom/flurry/org/codehaus/jackson/map/ser/impl/JsonSerializerMap;->findSize(I)I

    move-result v6

    .line 22
    .local v6, "size":I
    iput v6, p0, Lcom/flurry/org/codehaus/jackson/map/ser/impl/JsonSerializerMap;->_size:I

    .line 23
    add-int/lit8 v2, v6, -0x1

    .line 24
    .local v2, "hashMask":I
    new-array v0, v6, [Lcom/flurry/org/codehaus/jackson/map/ser/impl/JsonSerializerMap$Bucket;

    .line 25
    .local v0, "buckets":[Lcom/flurry/org/codehaus/jackson/map/ser/impl/JsonSerializerMap$Bucket;
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 26
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/flurry/org/codehaus/jackson/map/ser/impl/SerializerCache$TypeKey;Lcom/flurry/org/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/flurry/org/codehaus/jackson/map/ser/impl/SerializerCache$TypeKey;

    .line 27
    .local v5, "key":Lcom/flurry/org/codehaus/jackson/map/ser/impl/SerializerCache$TypeKey;
    invoke-virtual {v5}, Lcom/flurry/org/codehaus/jackson/map/ser/impl/SerializerCache$TypeKey;->hashCode()I

    move-result v7

    and-int v4, v7, v2

    .line 28
    .local v4, "index":I
    new-instance v8, Lcom/flurry/org/codehaus/jackson/map/ser/impl/JsonSerializerMap$Bucket;

    aget-object v9, v0, v4

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;

    invoke-direct {v8, v9, v5, v7}, Lcom/flurry/org/codehaus/jackson/map/ser/impl/JsonSerializerMap$Bucket;-><init>(Lcom/flurry/org/codehaus/jackson/map/ser/impl/JsonSerializerMap$Bucket;Lcom/flurry/org/codehaus/jackson/map/ser/impl/SerializerCache$TypeKey;Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;)V

    aput-object v8, v0, v4

    goto :goto_0

    .line 30
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/flurry/org/codehaus/jackson/map/ser/impl/SerializerCache$TypeKey;Lcom/flurry/org/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;>;"
    .end local v4    # "index":I
    .end local v5    # "key":Lcom/flurry/org/codehaus/jackson/map/ser/impl/SerializerCache$TypeKey;
    :cond_0
    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ser/impl/JsonSerializerMap;->_buckets:[Lcom/flurry/org/codehaus/jackson/map/ser/impl/JsonSerializerMap$Bucket;

    .line 31
    return-void
.end method

.method private static final findSize(I)I
    .locals 3
    .param p0, "size"    # I

    .prologue
    .line 36
    const/16 v2, 0x40

    if-gt p0, v2, :cond_0

    add-int v0, p0, p0

    .line 37
    .local v0, "needed":I
    :goto_0
    const/16 v1, 0x8

    .line 38
    .local v1, "result":I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 39
    add-int/2addr v1, v1

    goto :goto_1

    .line 36
    .end local v0    # "needed":I
    .end local v1    # "result":I
    :cond_0
    shr-int/lit8 v2, p0, 0x2

    add-int v0, p0, v2

    goto :goto_0

    .line 41
    .restart local v0    # "needed":I
    .restart local v1    # "result":I
    :cond_1
    return v1
.end method


# virtual methods
.method public find(Lcom/flurry/org/codehaus/jackson/map/ser/impl/SerializerCache$TypeKey;)Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;
    .locals 5
    .param p1, "key"    # Lcom/flurry/org/codehaus/jackson/map/ser/impl/SerializerCache$TypeKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/ser/impl/SerializerCache$TypeKey;",
            ")",
            "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 54
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/map/ser/impl/SerializerCache$TypeKey;->hashCode()I

    move-result v3

    iget-object v4, p0, Lcom/flurry/org/codehaus/jackson/map/ser/impl/JsonSerializerMap;->_buckets:[Lcom/flurry/org/codehaus/jackson/map/ser/impl/JsonSerializerMap$Bucket;

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    and-int v1, v3, v4

    .line 55
    .local v1, "index":I
    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/map/ser/impl/JsonSerializerMap;->_buckets:[Lcom/flurry/org/codehaus/jackson/map/ser/impl/JsonSerializerMap$Bucket;

    aget-object v0, v3, v1

    .line 60
    .local v0, "bucket":Lcom/flurry/org/codehaus/jackson/map/ser/impl/JsonSerializerMap$Bucket;
    if-nez v0, :cond_1

    .line 71
    :cond_0
    :goto_0
    return-object v2

    .line 63
    :cond_1
    iget-object v3, v0, Lcom/flurry/org/codehaus/jackson/map/ser/impl/JsonSerializerMap$Bucket;->key:Lcom/flurry/org/codehaus/jackson/map/ser/impl/SerializerCache$TypeKey;

    invoke-virtual {p1, v3}, Lcom/flurry/org/codehaus/jackson/map/ser/impl/SerializerCache$TypeKey;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 64
    iget-object v2, v0, Lcom/flurry/org/codehaus/jackson/map/ser/impl/JsonSerializerMap$Bucket;->value:Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;

    goto :goto_0

    .line 66
    :cond_2
    iget-object v0, v0, Lcom/flurry/org/codehaus/jackson/map/ser/impl/JsonSerializerMap$Bucket;->next:Lcom/flurry/org/codehaus/jackson/map/ser/impl/JsonSerializerMap$Bucket;

    if-eqz v0, :cond_0

    .line 67
    iget-object v3, v0, Lcom/flurry/org/codehaus/jackson/map/ser/impl/JsonSerializerMap$Bucket;->key:Lcom/flurry/org/codehaus/jackson/map/ser/impl/SerializerCache$TypeKey;

    invoke-virtual {p1, v3}, Lcom/flurry/org/codehaus/jackson/map/ser/impl/SerializerCache$TypeKey;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 68
    iget-object v2, v0, Lcom/flurry/org/codehaus/jackson/map/ser/impl/JsonSerializerMap$Bucket;->value:Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/flurry/org/codehaus/jackson/map/ser/impl/JsonSerializerMap;->_size:I

    return v0
.end method
