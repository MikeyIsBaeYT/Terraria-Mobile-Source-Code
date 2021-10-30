.class final Lcom/flurry/org/codehaus/jackson/map/deser/impl/BeanPropertyMap$IteratorImpl;
.super Ljava/lang/Object;
.source "BeanPropertyMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/org/codehaus/jackson/map/deser/impl/BeanPropertyMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "IteratorImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;",
        ">;"
    }
.end annotation


# instance fields
.field private final _buckets:[Lcom/flurry/org/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;

.field private _currentBucket:Lcom/flurry/org/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;

.field private _nextBucketIndex:I


# direct methods
.method public constructor <init>([Lcom/flurry/org/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;)V
    .locals 5
    .param p1, "buckets"    # [Lcom/flurry/org/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;

    .prologue
    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 218
    iput-object p1, p0, Lcom/flurry/org/codehaus/jackson/map/deser/impl/BeanPropertyMap$IteratorImpl;->_buckets:[Lcom/flurry/org/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;

    .line 220
    const/4 v1, 0x0

    .line 221
    .local v1, "i":I
    iget-object v4, p0, Lcom/flurry/org/codehaus/jackson/map/deser/impl/BeanPropertyMap$IteratorImpl;->_buckets:[Lcom/flurry/org/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;

    array-length v3, v4

    .local v3, "len":I
    move v2, v1

    .end local v1    # "i":I
    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 222
    iget-object v4, p0, Lcom/flurry/org/codehaus/jackson/map/deser/impl/BeanPropertyMap$IteratorImpl;->_buckets:[Lcom/flurry/org/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    aget-object v0, v4, v2

    .line 223
    .local v0, "b":Lcom/flurry/org/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;
    if-eqz v0, :cond_0

    .line 224
    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/impl/BeanPropertyMap$IteratorImpl;->_currentBucket:Lcom/flurry/org/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;

    .line 228
    .end local v0    # "b":Lcom/flurry/org/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;
    :goto_1
    iput v1, p0, Lcom/flurry/org/codehaus/jackson/map/deser/impl/BeanPropertyMap$IteratorImpl;->_nextBucketIndex:I

    .line 229
    return-void

    .restart local v0    # "b":Lcom/flurry/org/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;
    :cond_0
    move v2, v1

    .line 227
    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_0

    .end local v0    # "b":Lcom/flurry/org/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;
    :cond_1
    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_1
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/impl/BeanPropertyMap$IteratorImpl;->_currentBucket:Lcom/flurry/org/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;
    .locals 5

    .prologue
    .line 239
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/deser/impl/BeanPropertyMap$IteratorImpl;->_currentBucket:Lcom/flurry/org/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;

    .line 240
    .local v1, "curr":Lcom/flurry/org/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;
    if-nez v1, :cond_0

    .line 241
    new-instance v2, Ljava/util/NoSuchElementException;

    invoke-direct {v2}, Ljava/util/NoSuchElementException;-><init>()V

    throw v2

    .line 244
    :cond_0
    iget-object v0, v1, Lcom/flurry/org/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;->next:Lcom/flurry/org/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;

    .line 245
    .local v0, "b":Lcom/flurry/org/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;
    :goto_0
    if-nez v0, :cond_1

    iget v2, p0, Lcom/flurry/org/codehaus/jackson/map/deser/impl/BeanPropertyMap$IteratorImpl;->_nextBucketIndex:I

    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/map/deser/impl/BeanPropertyMap$IteratorImpl;->_buckets:[Lcom/flurry/org/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 246
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/deser/impl/BeanPropertyMap$IteratorImpl;->_buckets:[Lcom/flurry/org/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;

    iget v3, p0, Lcom/flurry/org/codehaus/jackson/map/deser/impl/BeanPropertyMap$IteratorImpl;->_nextBucketIndex:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/flurry/org/codehaus/jackson/map/deser/impl/BeanPropertyMap$IteratorImpl;->_nextBucketIndex:I

    aget-object v0, v2, v3

    goto :goto_0

    .line 248
    :cond_1
    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/impl/BeanPropertyMap$IteratorImpl;->_currentBucket:Lcom/flurry/org/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;

    .line 249
    iget-object v2, v1, Lcom/flurry/org/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;->value:Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;

    return-object v2
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 200
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/map/deser/impl/BeanPropertyMap$IteratorImpl;->next()Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 254
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
