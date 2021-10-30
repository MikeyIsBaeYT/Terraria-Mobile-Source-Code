.class public abstract Lcom/flurry/org/codehaus/jackson/map/util/PrimitiveArrayBuilder;
.super Ljava/lang/Object;
.source "PrimitiveArrayBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/org/codehaus/jackson/map/util/PrimitiveArrayBuilder$Node;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final INITIAL_CHUNK_SIZE:I = 0xc

.field static final MAX_CHUNK_SIZE:I = 0x40000

.field static final SMALL_CHUNK_SIZE:I = 0x4000


# instance fields
.field _bufferHead:Lcom/flurry/org/codehaus/jackson/map/util/PrimitiveArrayBuilder$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/org/codehaus/jackson/map/util/PrimitiveArrayBuilder$Node",
            "<TT;>;"
        }
    .end annotation
.end field

.field _bufferTail:Lcom/flurry/org/codehaus/jackson/map/util/PrimitiveArrayBuilder$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/org/codehaus/jackson/map/util/PrimitiveArrayBuilder$Node",
            "<TT;>;"
        }
    .end annotation
.end field

.field _bufferedEntryCount:I

.field _freeBuffer:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 45
    .local p0, "this":Lcom/flurry/org/codehaus/jackson/map/util/PrimitiveArrayBuilder;, "Lcom/flurry/org/codehaus/jackson/map/util/PrimitiveArrayBuilder<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract _constructArray(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation
.end method

.method protected _reset()V
    .locals 1

    .prologue
    .line 120
    .local p0, "this":Lcom/flurry/org/codehaus/jackson/map/util/PrimitiveArrayBuilder;, "Lcom/flurry/org/codehaus/jackson/map/util/PrimitiveArrayBuilder<TT;>;"
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/util/PrimitiveArrayBuilder;->_bufferTail:Lcom/flurry/org/codehaus/jackson/map/util/PrimitiveArrayBuilder$Node;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/util/PrimitiveArrayBuilder;->_bufferTail:Lcom/flurry/org/codehaus/jackson/map/util/PrimitiveArrayBuilder$Node;

    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/map/util/PrimitiveArrayBuilder$Node;->getData()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/util/PrimitiveArrayBuilder;->_freeBuffer:Ljava/lang/Object;

    .line 124
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/util/PrimitiveArrayBuilder;->_bufferTail:Lcom/flurry/org/codehaus/jackson/map/util/PrimitiveArrayBuilder$Node;

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/util/PrimitiveArrayBuilder;->_bufferHead:Lcom/flurry/org/codehaus/jackson/map/util/PrimitiveArrayBuilder$Node;

    .line 125
    const/4 v0, 0x0

    iput v0, p0, Lcom/flurry/org/codehaus/jackson/map/util/PrimitiveArrayBuilder;->_bufferedEntryCount:I

    .line 126
    return-void
.end method

.method public final appendCompletedChunk(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 3
    .param p2, "fullChunkLength"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)TT;"
        }
    .end annotation

    .prologue
    .line 65
    .local p0, "this":Lcom/flurry/org/codehaus/jackson/map/util/PrimitiveArrayBuilder;, "Lcom/flurry/org/codehaus/jackson/map/util/PrimitiveArrayBuilder<TT;>;"
    .local p1, "fullChunk":Ljava/lang/Object;, "TT;"
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/util/PrimitiveArrayBuilder$Node;

    invoke-direct {v0, p1, p2}, Lcom/flurry/org/codehaus/jackson/map/util/PrimitiveArrayBuilder$Node;-><init>(Ljava/lang/Object;I)V

    .line 66
    .local v0, "next":Lcom/flurry/org/codehaus/jackson/map/util/PrimitiveArrayBuilder$Node;, "Lcom/flurry/org/codehaus/jackson/map/util/PrimitiveArrayBuilder$Node<TT;>;"
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/util/PrimitiveArrayBuilder;->_bufferHead:Lcom/flurry/org/codehaus/jackson/map/util/PrimitiveArrayBuilder$Node;

    if-nez v2, :cond_0

    .line 67
    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/util/PrimitiveArrayBuilder;->_bufferTail:Lcom/flurry/org/codehaus/jackson/map/util/PrimitiveArrayBuilder$Node;

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/util/PrimitiveArrayBuilder;->_bufferHead:Lcom/flurry/org/codehaus/jackson/map/util/PrimitiveArrayBuilder$Node;

    .line 72
    :goto_0
    iget v2, p0, Lcom/flurry/org/codehaus/jackson/map/util/PrimitiveArrayBuilder;->_bufferedEntryCount:I

    add-int/2addr v2, p2

    iput v2, p0, Lcom/flurry/org/codehaus/jackson/map/util/PrimitiveArrayBuilder;->_bufferedEntryCount:I

    .line 73
    move v1, p2

    .line 75
    .local v1, "nextLen":I
    const/16 v2, 0x4000

    if-ge v1, v2, :cond_1

    .line 76
    add-int/2addr v1, v1

    .line 80
    :goto_1
    invoke-virtual {p0, v1}, Lcom/flurry/org/codehaus/jackson/map/util/PrimitiveArrayBuilder;->_constructArray(I)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 69
    .end local v1    # "nextLen":I
    :cond_0
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/util/PrimitiveArrayBuilder;->_bufferTail:Lcom/flurry/org/codehaus/jackson/map/util/PrimitiveArrayBuilder$Node;

    invoke-virtual {v2, v0}, Lcom/flurry/org/codehaus/jackson/map/util/PrimitiveArrayBuilder$Node;->linkNext(Lcom/flurry/org/codehaus/jackson/map/util/PrimitiveArrayBuilder$Node;)V

    .line 70
    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/util/PrimitiveArrayBuilder;->_bufferTail:Lcom/flurry/org/codehaus/jackson/map/util/PrimitiveArrayBuilder$Node;

    goto :goto_0

    .line 78
    .restart local v1    # "nextLen":I
    :cond_1
    shr-int/lit8 v2, v1, 0x2

    add-int/2addr v1, v2

    goto :goto_1
.end method

.method public completeAndClearBuffer(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 7
    .param p2, "lastChunkEntries"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)TT;"
        }
    .end annotation

    .prologue
    .line 85
    .local p0, "this":Lcom/flurry/org/codehaus/jackson/map/util/PrimitiveArrayBuilder;, "Lcom/flurry/org/codehaus/jackson/map/util/PrimitiveArrayBuilder<TT;>;"
    .local p1, "lastChunk":Ljava/lang/Object;, "TT;"
    iget v4, p0, Lcom/flurry/org/codehaus/jackson/map/util/PrimitiveArrayBuilder;->_bufferedEntryCount:I

    add-int v3, p2, v4

    .line 86
    .local v3, "totalSize":I
    invoke-virtual {p0, v3}, Lcom/flurry/org/codehaus/jackson/map/util/PrimitiveArrayBuilder;->_constructArray(I)Ljava/lang/Object;

    move-result-object v2

    .line 88
    .local v2, "resultArray":Ljava/lang/Object;, "TT;"
    const/4 v1, 0x0

    .line 90
    .local v1, "ptr":I
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/util/PrimitiveArrayBuilder;->_bufferHead:Lcom/flurry/org/codehaus/jackson/map/util/PrimitiveArrayBuilder$Node;

    .local v0, "n":Lcom/flurry/org/codehaus/jackson/map/util/PrimitiveArrayBuilder$Node;, "Lcom/flurry/org/codehaus/jackson/map/util/PrimitiveArrayBuilder$Node<TT;>;"
    :goto_0
    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {v0, v2, v1}, Lcom/flurry/org/codehaus/jackson/map/util/PrimitiveArrayBuilder$Node;->copyData(Ljava/lang/Object;I)I

    move-result v1

    .line 90
    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/map/util/PrimitiveArrayBuilder$Node;->next()Lcom/flurry/org/codehaus/jackson/map/util/PrimitiveArrayBuilder$Node;

    move-result-object v0

    goto :goto_0

    .line 93
    :cond_0
    const/4 v4, 0x0

    invoke-static {p1, v4, v2, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 94
    add-int/2addr v1, p2

    .line 97
    if-eq v1, v3, :cond_1

    .line 98
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Should have gotten "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " entries, got "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 100
    :cond_1
    return-object v2
.end method

.method public resetAndStart()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 55
    .local p0, "this":Lcom/flurry/org/codehaus/jackson/map/util/PrimitiveArrayBuilder;, "Lcom/flurry/org/codehaus/jackson/map/util/PrimitiveArrayBuilder<TT;>;"
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/map/util/PrimitiveArrayBuilder;->_reset()V

    .line 56
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/util/PrimitiveArrayBuilder;->_freeBuffer:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/flurry/org/codehaus/jackson/map/util/PrimitiveArrayBuilder;->_constructArray(I)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/util/PrimitiveArrayBuilder;->_freeBuffer:Ljava/lang/Object;

    goto :goto_0
.end method
