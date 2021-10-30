.class public final Lcom/flurry/org/codehaus/jackson/node/NodeCursor$Object;
.super Lcom/flurry/org/codehaus/jackson/node/NodeCursor;
.source "NodeCursor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/org/codehaus/jackson/node/NodeCursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "Object"
.end annotation


# instance fields
.field _contents:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Lcom/flurry/org/codehaus/jackson/JsonNode;",
            ">;>;"
        }
    .end annotation
.end field

.field _current:Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Lcom/flurry/org/codehaus/jackson/JsonNode;",
            ">;"
        }
    .end annotation
.end field

.field _needEntry:Z


# direct methods
.method public constructor <init>(Lcom/flurry/org/codehaus/jackson/JsonNode;Lcom/flurry/org/codehaus/jackson/node/NodeCursor;)V
    .locals 1
    .param p1, "n"    # Lcom/flurry/org/codehaus/jackson/JsonNode;
    .param p2, "p"    # Lcom/flurry/org/codehaus/jackson/node/NodeCursor;

    .prologue
    .line 172
    const/4 v0, 0x2

    invoke-direct {p0, v0, p2}, Lcom/flurry/org/codehaus/jackson/node/NodeCursor;-><init>(ILcom/flurry/org/codehaus/jackson/node/NodeCursor;)V

    .line 173
    check-cast p1, Lcom/flurry/org/codehaus/jackson/node/ObjectNode;

    .end local p1    # "n":Lcom/flurry/org/codehaus/jackson/JsonNode;
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/node/ObjectNode;->getFields()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/node/NodeCursor$Object;->_contents:Ljava/util/Iterator;

    .line 174
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/org/codehaus/jackson/node/NodeCursor$Object;->_needEntry:Z

    .line 175
    return-void
.end method


# virtual methods
.method public currentHasChildren()Z
    .locals 1

    .prologue
    .line 219
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/node/NodeCursor$Object;->currentNode()Lcom/flurry/org/codehaus/jackson/JsonNode;

    move-result-object v0

    check-cast v0, Lcom/flurry/org/codehaus/jackson/node/ContainerNode;

    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/node/ContainerNode;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public currentNode()Lcom/flurry/org/codehaus/jackson/JsonNode;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/node/NodeCursor$Object;->_current:Ljava/util/Map$Entry;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/node/NodeCursor$Object;->_current:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/org/codehaus/jackson/JsonNode;

    goto :goto_0
.end method

.method public endToken()Lcom/flurry/org/codehaus/jackson/JsonToken;
    .locals 1

    .prologue
    .line 210
    sget-object v0, Lcom/flurry/org/codehaus/jackson/JsonToken;->END_OBJECT:Lcom/flurry/org/codehaus/jackson/JsonToken;

    return-object v0
.end method

.method public getCurrentName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/node/NodeCursor$Object;->_current:Ljava/util/Map$Entry;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/node/NodeCursor$Object;->_current:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public bridge synthetic getParent()Lcom/flurry/org/codehaus/jackson/JsonStreamContext;
    .locals 1

    .prologue
    .line 162
    invoke-super {p0}, Lcom/flurry/org/codehaus/jackson/node/NodeCursor;->getParent()Lcom/flurry/org/codehaus/jackson/node/NodeCursor;

    move-result-object v0

    return-object v0
.end method

.method public nextToken()Lcom/flurry/org/codehaus/jackson/JsonToken;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 186
    iget-boolean v1, p0, Lcom/flurry/org/codehaus/jackson/node/NodeCursor$Object;->_needEntry:Z

    if-eqz v1, :cond_1

    .line 187
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/node/NodeCursor$Object;->_contents:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 188
    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/node/NodeCursor$Object;->_current:Ljava/util/Map$Entry;

    .line 196
    :goto_0
    return-object v0

    .line 191
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flurry/org/codehaus/jackson/node/NodeCursor$Object;->_needEntry:Z

    .line 192
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/node/NodeCursor$Object;->_contents:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/node/NodeCursor$Object;->_current:Ljava/util/Map$Entry;

    .line 193
    sget-object v0, Lcom/flurry/org/codehaus/jackson/JsonToken;->FIELD_NAME:Lcom/flurry/org/codehaus/jackson/JsonToken;

    goto :goto_0

    .line 195
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/org/codehaus/jackson/node/NodeCursor$Object;->_needEntry:Z

    .line 196
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/node/NodeCursor$Object;->_current:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/org/codehaus/jackson/JsonNode;

    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/JsonNode;->asToken()Lcom/flurry/org/codehaus/jackson/JsonToken;

    move-result-object v0

    goto :goto_0
.end method

.method public nextValue()Lcom/flurry/org/codehaus/jackson/JsonToken;
    .locals 2

    .prologue
    .line 202
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/node/NodeCursor$Object;->nextToken()Lcom/flurry/org/codehaus/jackson/JsonToken;

    move-result-object v0

    .line 203
    .local v0, "t":Lcom/flurry/org/codehaus/jackson/JsonToken;
    sget-object v1, Lcom/flurry/org/codehaus/jackson/JsonToken;->FIELD_NAME:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_0

    .line 204
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/node/NodeCursor$Object;->nextToken()Lcom/flurry/org/codehaus/jackson/JsonToken;

    move-result-object v0

    .line 206
    :cond_0
    return-object v0
.end method
