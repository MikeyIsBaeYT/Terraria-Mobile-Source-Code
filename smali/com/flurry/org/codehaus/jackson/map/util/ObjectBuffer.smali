.class public final Lcom/flurry/org/codehaus/jackson/map/util/ObjectBuffer;
.super Ljava/lang/Object;
.source "ObjectBuffer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/org/codehaus/jackson/map/util/ObjectBuffer$Node;
    }
.end annotation


# static fields
.field static final INITIAL_CHUNK_SIZE:I = 0xc

.field static final MAX_CHUNK_SIZE:I = 0x40000

.field static final SMALL_CHUNK_SIZE:I = 0x4000


# instance fields
.field private _bufferHead:Lcom/flurry/org/codehaus/jackson/map/util/ObjectBuffer$Node;

.field private _bufferTail:Lcom/flurry/org/codehaus/jackson/map/util/ObjectBuffer$Node;

.field private _bufferedEntryCount:I

.field private _freeBuffer:[Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected final _copyTo(Ljava/lang/Object;I[Ljava/lang/Object;I)V
    .locals 7
    .param p1, "resultArray"    # Ljava/lang/Object;
    .param p2, "totalSize"    # I
    .param p3, "lastChunk"    # [Ljava/lang/Object;
    .param p4, "lastChunkEntries"    # I

    .prologue
    const/4 v4, 0x0

    .line 206
    const/4 v3, 0x0

    .line 208
    .local v3, "ptr":I
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/util/ObjectBuffer;->_bufferHead:Lcom/flurry/org/codehaus/jackson/map/util/ObjectBuffer$Node;

    .local v2, "n":Lcom/flurry/org/codehaus/jackson/map/util/ObjectBuffer$Node;
    :goto_0
    if-eqz v2, :cond_0

    .line 209
    invoke-virtual {v2}, Lcom/flurry/org/codehaus/jackson/map/util/ObjectBuffer$Node;->getData()[Ljava/lang/Object;

    move-result-object v0

    .line 210
    .local v0, "curr":[Ljava/lang/Object;
    array-length v1, v0

    .line 211
    .local v1, "len":I
    invoke-static {v0, v4, p1, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 212
    add-int/2addr v3, v1

    .line 208
    invoke-virtual {v2}, Lcom/flurry/org/codehaus/jackson/map/util/ObjectBuffer$Node;->next()Lcom/flurry/org/codehaus/jackson/map/util/ObjectBuffer$Node;

    move-result-object v2

    goto :goto_0

    .line 214
    .end local v0    # "curr":[Ljava/lang/Object;
    .end local v1    # "len":I
    :cond_0
    invoke-static {p3, v4, p1, v3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 215
    add-int/2addr v3, p4

    .line 218
    if-eq v3, p2, :cond_1

    .line 219
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Should have gotten "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " entries, got "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 221
    :cond_1
    return-void
.end method

.method protected _reset()V
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/util/ObjectBuffer;->_bufferTail:Lcom/flurry/org/codehaus/jackson/map/util/ObjectBuffer$Node;

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/util/ObjectBuffer;->_bufferTail:Lcom/flurry/org/codehaus/jackson/map/util/ObjectBuffer$Node;

    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/map/util/ObjectBuffer$Node;->getData()[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/util/ObjectBuffer;->_freeBuffer:[Ljava/lang/Object;

    .line 199
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/util/ObjectBuffer;->_bufferTail:Lcom/flurry/org/codehaus/jackson/map/util/ObjectBuffer$Node;

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/util/ObjectBuffer;->_bufferHead:Lcom/flurry/org/codehaus/jackson/map/util/ObjectBuffer$Node;

    .line 200
    const/4 v0, 0x0

    iput v0, p0, Lcom/flurry/org/codehaus/jackson/map/util/ObjectBuffer;->_bufferedEntryCount:I

    .line 201
    return-void
.end method

.method public appendCompletedChunk([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 3
    .param p1, "fullChunk"    # [Ljava/lang/Object;

    .prologue
    .line 96
    new-instance v1, Lcom/flurry/org/codehaus/jackson/map/util/ObjectBuffer$Node;

    invoke-direct {v1, p1}, Lcom/flurry/org/codehaus/jackson/map/util/ObjectBuffer$Node;-><init>([Ljava/lang/Object;)V

    .line 97
    .local v1, "next":Lcom/flurry/org/codehaus/jackson/map/util/ObjectBuffer$Node;
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/util/ObjectBuffer;->_bufferHead:Lcom/flurry/org/codehaus/jackson/map/util/ObjectBuffer$Node;

    if-nez v2, :cond_0

    .line 98
    iput-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/util/ObjectBuffer;->_bufferTail:Lcom/flurry/org/codehaus/jackson/map/util/ObjectBuffer$Node;

    iput-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/util/ObjectBuffer;->_bufferHead:Lcom/flurry/org/codehaus/jackson/map/util/ObjectBuffer$Node;

    .line 103
    :goto_0
    array-length v0, p1

    .line 104
    .local v0, "len":I
    iget v2, p0, Lcom/flurry/org/codehaus/jackson/map/util/ObjectBuffer;->_bufferedEntryCount:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/flurry/org/codehaus/jackson/map/util/ObjectBuffer;->_bufferedEntryCount:I

    .line 106
    const/16 v2, 0x4000

    if-ge v0, v2, :cond_1

    .line 107
    add-int/2addr v0, v0

    .line 111
    :goto_1
    new-array v2, v0, [Ljava/lang/Object;

    return-object v2

    .line 100
    .end local v0    # "len":I
    :cond_0
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/util/ObjectBuffer;->_bufferTail:Lcom/flurry/org/codehaus/jackson/map/util/ObjectBuffer$Node;

    invoke-virtual {v2, v1}, Lcom/flurry/org/codehaus/jackson/map/util/ObjectBuffer$Node;->linkNext(Lcom/flurry/org/codehaus/jackson/map/util/ObjectBuffer$Node;)V

    .line 101
    iput-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/util/ObjectBuffer;->_bufferTail:Lcom/flurry/org/codehaus/jackson/map/util/ObjectBuffer$Node;

    goto :goto_0

    .line 109
    .restart local v0    # "len":I
    :cond_1
    shr-int/lit8 v2, v0, 0x2

    add-int/2addr v0, v2

    goto :goto_1
.end method

.method public bufferedSize()I
    .locals 1

    .prologue
    .line 184
    iget v0, p0, Lcom/flurry/org/codehaus/jackson/map/util/ObjectBuffer;->_bufferedEntryCount:I

    return v0
.end method

.method public completeAndClearBuffer([Ljava/lang/Object;ILjava/util/List;)V
    .locals 5
    .param p1, "lastChunk"    # [Ljava/lang/Object;
    .param p2, "lastChunkEntries"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 157
    .local p3, "resultList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/map/util/ObjectBuffer;->_bufferHead:Lcom/flurry/org/codehaus/jackson/map/util/ObjectBuffer$Node;

    .local v3, "n":Lcom/flurry/org/codehaus/jackson/map/util/ObjectBuffer$Node;
    :goto_0
    if-eqz v3, :cond_1

    .line 158
    invoke-virtual {v3}, Lcom/flurry/org/codehaus/jackson/map/util/ObjectBuffer$Node;->getData()[Ljava/lang/Object;

    move-result-object v0

    .line 159
    .local v0, "curr":[Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v2, v0

    .local v2, "len":I
    :goto_1
    if-ge v1, v2, :cond_0

    .line 160
    aget-object v4, v0, v1

    invoke-interface {p3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 157
    :cond_0
    invoke-virtual {v3}, Lcom/flurry/org/codehaus/jackson/map/util/ObjectBuffer$Node;->next()Lcom/flurry/org/codehaus/jackson/map/util/ObjectBuffer$Node;

    move-result-object v3

    goto :goto_0

    .line 164
    .end local v0    # "curr":[Ljava/lang/Object;
    .end local v1    # "i":I
    .end local v2    # "len":I
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    if-ge v1, p2, :cond_2

    .line 165
    aget-object v4, p1, v1

    invoke-interface {p3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 167
    :cond_2
    return-void
.end method

.method public completeAndClearBuffer([Ljava/lang/Object;I)[Ljava/lang/Object;
    .locals 3
    .param p1, "lastChunk"    # [Ljava/lang/Object;
    .param p2, "lastChunkEntries"    # I

    .prologue
    .line 126
    iget v2, p0, Lcom/flurry/org/codehaus/jackson/map/util/ObjectBuffer;->_bufferedEntryCount:I

    add-int v1, p2, v2

    .line 127
    .local v1, "totalSize":I
    new-array v0, v1, [Ljava/lang/Object;

    .line 128
    .local v0, "result":[Ljava/lang/Object;
    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/flurry/org/codehaus/jackson/map/util/ObjectBuffer;->_copyTo(Ljava/lang/Object;I[Ljava/lang/Object;I)V

    .line 129
    return-object v0
.end method

.method public completeAndClearBuffer([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;
    .locals 3
    .param p1, "lastChunk"    # [Ljava/lang/Object;
    .param p2, "lastChunkEntries"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/Object;",
            "I",
            "Ljava/lang/Class",
            "<TT;>;)[TT;"
        }
    .end annotation

    .prologue
    .line 142
    .local p3, "componentType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget v2, p0, Lcom/flurry/org/codehaus/jackson/map/util/ObjectBuffer;->_bufferedEntryCount:I

    add-int v1, p2, v2

    .line 144
    .local v1, "totalSize":I
    invoke-static {p3, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    move-object v0, v2

    check-cast v0, [Ljava/lang/Object;

    .line 145
    .local v0, "result":[Ljava/lang/Object;, "[TT;"
    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/flurry/org/codehaus/jackson/map/util/ObjectBuffer;->_copyTo(Ljava/lang/Object;I[Ljava/lang/Object;I)V

    .line 146
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/map/util/ObjectBuffer;->_reset()V

    .line 147
    return-object v0
.end method

.method public initialCapacity()I
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/util/ObjectBuffer;->_freeBuffer:[Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/util/ObjectBuffer;->_freeBuffer:[Ljava/lang/Object;

    array-length v0, v0

    goto :goto_0
.end method

.method public resetAndStart()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/map/util/ObjectBuffer;->_reset()V

    .line 74
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/util/ObjectBuffer;->_freeBuffer:[Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 75
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/Object;

    .line 77
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/util/ObjectBuffer;->_freeBuffer:[Ljava/lang/Object;

    goto :goto_0
.end method
