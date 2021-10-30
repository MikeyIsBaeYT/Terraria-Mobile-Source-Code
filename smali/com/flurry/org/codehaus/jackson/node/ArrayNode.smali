.class public final Lcom/flurry/org/codehaus/jackson/node/ArrayNode;
.super Lcom/flurry/org/codehaus/jackson/node/ContainerNode;
.source "ArrayNode.java"


# instance fields
.field protected _children:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/flurry/org/codehaus/jackson/JsonNode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/flurry/org/codehaus/jackson/node/JsonNodeFactory;)V
    .locals 0
    .param p1, "nc"    # Lcom/flurry/org/codehaus/jackson/node/JsonNodeFactory;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/flurry/org/codehaus/jackson/node/ContainerNode;-><init>(Lcom/flurry/org/codehaus/jackson/node/JsonNodeFactory;)V

    return-void
.end method

.method private _add(Lcom/flurry/org/codehaus/jackson/JsonNode;)V
    .locals 1
    .param p1, "node"    # Lcom/flurry/org/codehaus/jackson/JsonNode;

    .prologue
    .line 719
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/node/ArrayNode;->_children:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 720
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/node/ArrayNode;->_children:Ljava/util/ArrayList;

    .line 722
    :cond_0
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/node/ArrayNode;->_children:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 723
    return-void
.end method

.method private _insert(ILcom/flurry/org/codehaus/jackson/JsonNode;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "node"    # Lcom/flurry/org/codehaus/jackson/JsonNode;

    .prologue
    .line 727
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/node/ArrayNode;->_children:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 728
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/node/ArrayNode;->_children:Ljava/util/ArrayList;

    .line 729
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/node/ArrayNode;->_children:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 739
    :goto_0
    return-void

    .line 732
    :cond_0
    if-gez p1, :cond_1

    .line 733
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/node/ArrayNode;->_children:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 734
    :cond_1
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/node/ArrayNode;->_children:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_2

    .line 735
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/node/ArrayNode;->_children:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 737
    :cond_2
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/node/ArrayNode;->_children:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private _sameChildren(Ljava/util/ArrayList;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/flurry/org/codehaus/jackson/JsonNode;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "otherChildren":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/flurry/org/codehaus/jackson/JsonNode;>;"
    const/4 v3, 0x0

    .line 747
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 748
    .local v1, "len":I
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/node/ArrayNode;->size()I

    move-result v2

    if-eq v2, v1, :cond_0

    move v2, v3

    .line 756
    :goto_0
    return v2

    .line 751
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 752
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/node/ArrayNode;->_children:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/flurry/org/codehaus/jackson/JsonNode;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/flurry/org/codehaus/jackson/JsonNode;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    move v2, v3

    .line 753
    goto :goto_0

    .line 751
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 756
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public _set(ILcom/flurry/org/codehaus/jackson/JsonNode;)Lcom/flurry/org/codehaus/jackson/JsonNode;
    .locals 3
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/flurry/org/codehaus/jackson/JsonNode;

    .prologue
    .line 711
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/node/ArrayNode;->_children:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/node/ArrayNode;->_children:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 712
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", array size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/node/ArrayNode;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 714
    :cond_1
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/node/ArrayNode;->_children:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/org/codehaus/jackson/JsonNode;

    return-object v0
.end method

.method public add(D)V
    .locals 1
    .param p1, "v"    # D

    .prologue
    .line 395
    invoke-virtual {p0, p1, p2}, Lcom/flurry/org/codehaus/jackson/node/ArrayNode;->numberNode(D)Lcom/flurry/org/codehaus/jackson/node/NumericNode;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/flurry/org/codehaus/jackson/node/ArrayNode;->_add(Lcom/flurry/org/codehaus/jackson/JsonNode;)V

    return-void
.end method

.method public add(F)V
    .locals 1
    .param p1, "v"    # F

    .prologue
    .line 376
    invoke-virtual {p0, p1}, Lcom/flurry/org/codehaus/jackson/node/ArrayNode;->numberNode(F)Lcom/flurry/org/codehaus/jackson/node/NumericNode;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/flurry/org/codehaus/jackson/node/ArrayNode;->_add(Lcom/flurry/org/codehaus/jackson/JsonNode;)V

    return-void
.end method

.method public add(I)V
    .locals 1
    .param p1, "v"    # I

    .prologue
    .line 338
    invoke-virtual {p0, p1}, Lcom/flurry/org/codehaus/jackson/node/ArrayNode;->numberNode(I)Lcom/flurry/org/codehaus/jackson/node/NumericNode;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/flurry/org/codehaus/jackson/node/ArrayNode;->_add(Lcom/flurry/org/codehaus/jackson/JsonNode;)V

    return-void
.end method

.method public add(J)V
    .locals 1
    .param p1, "v"    # J

    .prologue
    .line 357
    invoke-virtual {p0, p1, p2}, Lcom/flurry/org/codehaus/jackson/node/ArrayNode;->numberNode(J)Lcom/flurry/org/codehaus/jackson/node/NumericNode;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/flurry/org/codehaus/jackson/node/ArrayNode;->_add(Lcom/flurry/org/codehaus/jackson/JsonNode;)V

    return-void
.end method

.method public add(Lcom/flurry/org/codehaus/jackson/JsonNode;)V
    .locals 0
    .param p1, "value"    # Lcom/flurry/org/codehaus/jackson/JsonNode;

    .prologue
    .line 200
    if-nez p1, :cond_0

    .line 201
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/node/ArrayNode;->nullNode()Lcom/flurry/org/codehaus/jackson/node/NullNode;

    move-result-object p1

    .line 203
    :cond_0
    invoke-direct {p0, p1}, Lcom/flurry/org/codehaus/jackson/node/ArrayNode;->_add(Lcom/flurry/org/codehaus/jackson/JsonNode;)V

    .line 204
    return-void
.end method

.method public add(Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/Boolean;

    .prologue
    .line 445
    if-nez p1, :cond_0

    .line 446
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/node/ArrayNode;->addNull()V

    .line 450
    :goto_0
    return-void

    .line 448
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/flurry/org/codehaus/jackson/node/ArrayNode;->booleanNode(Z)Lcom/flurry/org/codehaus/jackson/node/BooleanNode;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/flurry/org/codehaus/jackson/node/ArrayNode;->_add(Lcom/flurry/org/codehaus/jackson/JsonNode;)V

    goto :goto_0
.end method

.method public add(Ljava/lang/Double;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/Double;

    .prologue
    .line 404
    if-nez p1, :cond_0

    .line 405
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/node/ArrayNode;->addNull()V

    .line 409
    :goto_0
    return-void

    .line 407
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/flurry/org/codehaus/jackson/node/ArrayNode;->numberNode(D)Lcom/flurry/org/codehaus/jackson/node/NumericNode;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/flurry/org/codehaus/jackson/node/ArrayNode;->_add(Lcom/flurry/org/codehaus/jackson/JsonNode;)V

    goto :goto_0
.end method

.method public add(Ljava/lang/Float;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/Float;

    .prologue
    .line 385
    if-nez p1, :cond_0

    .line 386
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/node/ArrayNode;->addNull()V

    .line 390
    :goto_0
    return-void

    .line 388
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/flurry/org/codehaus/jackson/node/ArrayNode;->numberNode(F)Lcom/flurry/org/codehaus/jackson/node/NumericNode;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/flurry/org/codehaus/jackson/node/ArrayNode;->_add(Lcom/flurry/org/codehaus/jackson/JsonNode;)V

    goto :goto_0
.end method

.method public add(Ljava/lang/Integer;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/Integer;

    .prologue
    .line 347
    if-nez p1, :cond_0

    .line 348
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/node/ArrayNode;->addNull()V

    .line 352
    :goto_0
    return-void

    .line 350
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/flurry/org/codehaus/jackson/node/ArrayNode;->numberNode(I)Lcom/flurry/org/codehaus/jackson/node/NumericNode;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/flurry/org/codehaus/jackson/node/ArrayNode;->_add(Lcom/flurry/org/codehaus/jackson/JsonNode;)V

    goto :goto_0
.end method

.method public add(Ljava/lang/Long;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/Long;

    .prologue
    .line 366
    if-nez p1, :cond_0

    .line 367
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/node/ArrayNode;->addNull()V

    .line 371
    :goto_0
    return-void

    .line 369
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/flurry/org/codehaus/jackson/node/ArrayNode;->numberNode(J)Lcom/flurry/org/codehaus/jackson/node/NumericNode;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/flurry/org/codehaus/jackson/node/ArrayNode;->_add(Lcom/flurry/org/codehaus/jackson/JsonNode;)V

    goto :goto_0
.end method

.method public add(Ljava/lang/String;)V
    .locals 1
    .param p1, "v"    # Ljava/lang/String;

    .prologue
    .line 426
    if-nez p1, :cond_0

    .line 427
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/node/ArrayNode;->addNull()V

    .line 431
    :goto_0
    return-void

    .line 429
    :cond_0
    invoke-virtual {p0, p1}, Lcom/flurry/org/codehaus/jackson/node/ArrayNode;->textNode(Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/node/TextNode;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/flurry/org/codehaus/jackson/node/ArrayNode;->_add(Lcom/flurry/org/codehaus/jackson/JsonNode;)V

    goto :goto_0
.end method

.method public add(Ljava/math/BigDecimal;)V
    .locals 1
    .param p1, "v"    # Ljava/math/BigDecimal;

    .prologue
    .line 415
    if-nez p1, :cond_0

    .line 416
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/node/ArrayNode;->addNull()V

    .line 420
    :goto_0
    return-void

    .line 418
    :cond_0
    invoke-virtual {p0, p1}, Lcom/flurry/org/codehaus/jackson/node/ArrayNode;->numberNode(Ljava/math/BigDecimal;)Lcom/flurry/org/codehaus/jackson/node/NumericNode;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/flurry/org/codehaus/jackson/node/ArrayNode;->_add(Lcom/flurry/org/codehaus/jackson/JsonNode;)V

    goto :goto_0
.end method

.method public add(Z)V
    .locals 1
    .param p1, "v"    # Z

    .prologue
    .line 436
    invoke-virtual {p0, p1}, Lcom/flurry/org/codehaus/jackson/node/ArrayNode;->booleanNode(Z)Lcom/flurry/org/codehaus/jackson/node/BooleanNode;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/flurry/org/codehaus/jackson/node/ArrayNode;->_add(Lcom/flurry/org/codehaus/jackson/JsonNode;)V

    return-void
.end method

.method public add([B)V
    .locals 1
    .param p1, "v"    # [B

    .prologue
    .line 456
    if-nez p1, :cond_0

    .line 457
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/node/ArrayNode;->addNull()V

    .line 461
    :goto_0
    return-void

    .line 459
    :cond_0
    invoke-virtual {p0, p1}, Lcom/flurry/org/codehaus/jackson/node/ArrayNode;->binaryNode([B)Lcom/flurry/org/codehaus/jackson/node/BinaryNode;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/flurry/org/codehaus/jackson/node/ArrayNode;->_add(Lcom/flurry/org/codehaus/jackson/JsonNode;)V

    goto :goto_0
.end method

.method public addAll(Lcom/flurry/org/codehaus/jackson/node/ArrayNode;)Lcom/flurry/org/codehaus/jackson/JsonNode;
    .locals 3
    .param p1, "other"    # Lcom/flurry/org/codehaus/jackson/node/ArrayNode;

    .prologue
    .line 218
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/node/ArrayNode;->size()I

    move-result v0

    .line 219
    .local v0, "len":I
    if-lez v0, :cond_1

    .line 220
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/node/ArrayNode;->_children:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 221
    new-instance v1, Ljava/util/ArrayList;

    add-int/lit8 v2, v0, 0x2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/flurry/org/codehaus/jackson/node/ArrayNode;->_children:Ljava/util/ArrayList;

    .line 223
    :cond_0
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/node/ArrayNode;->_children:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Lcom/flurry/org/codehaus/jackson/node/ArrayNode;->addContentsTo(Ljava/util/List;)V

    .line 225
    :cond_1
    return-object p0
.end method

.method public addAll(Ljava/util/Collection;)Lcom/flurry/org/codehaus/jackson/JsonNode;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/flurry/org/codehaus/jackson/JsonNode;",
            ">;)",
            "Lcom/flurry/org/codehaus/jackson/JsonNode;"
        }
    .end annotation

    .prologue
    .line 239
    .local p1, "nodes":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/flurry/org/codehaus/jackson/JsonNode;>;"
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    .line 240
    .local v0, "len":I
    if-lez v0, :cond_0

    .line 241
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/node/ArrayNode;->_children:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    .line 242
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/flurry/org/codehaus/jackson/node/ArrayNode;->_children:Ljava/util/ArrayList;

    .line 247
    :cond_0
    :goto_0
    return-object p0

    .line 244
    :cond_1
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/node/ArrayNode;->_children:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public addArray()Lcom/flurry/org/codehaus/jackson/node/ArrayNode;
    .locals 1

    .prologue
    .line 299
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/node/ArrayNode;->arrayNode()Lcom/flurry/org/codehaus/jackson/node/ArrayNode;

    move-result-object v0

    .line 300
    .local v0, "n":Lcom/flurry/org/codehaus/jackson/node/ArrayNode;
    invoke-direct {p0, v0}, Lcom/flurry/org/codehaus/jackson/node/ArrayNode;->_add(Lcom/flurry/org/codehaus/jackson/JsonNode;)V

    .line 301
    return-object v0
.end method

.method protected addContentsTo(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/org/codehaus/jackson/JsonNode;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 640
    .local p1, "dst":Ljava/util/List;, "Ljava/util/List<Lcom/flurry/org/codehaus/jackson/JsonNode;>;"
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/node/ArrayNode;->_children:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 641
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/node/ArrayNode;->_children:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flurry/org/codehaus/jackson/JsonNode;

    .line 642
    .local v1, "n":Lcom/flurry/org/codehaus/jackson/JsonNode;
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 645
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "n":Lcom/flurry/org/codehaus/jackson/JsonNode;
    :cond_0
    return-void
.end method

.method public addNull()V
    .locals 1

    .prologue
    .line 332
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/node/ArrayNode;->nullNode()Lcom/flurry/org/codehaus/jackson/node/NullNode;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/flurry/org/codehaus/jackson/node/ArrayNode;->_add(Lcom/flurry/org/codehaus/jackson/JsonNode;)V

    .line 333
    return-void
.end method

.method public addObject()Lcom/flurry/org/codehaus/jackson/node/ObjectNode;
    .locals 1

    .prologue
    .line 312
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/node/ArrayNode;->objectNode()Lcom/flurry/org/codehaus/jackson/node/ObjectNode;

    move-result-object v0

    .line 313
    .local v0, "n":Lcom/flurry/org/codehaus/jackson/node/ObjectNode;
    invoke-direct {p0, v0}, Lcom/flurry/org/codehaus/jackson/node/ArrayNode;->_add(Lcom/flurry/org/codehaus/jackson/JsonNode;)V

    .line 314
    return-object v0
.end method

.method public addPOJO(Ljava/lang/Object;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 323
    if-nez p1, :cond_0

    .line 324
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/node/ArrayNode;->addNull()V

    .line 328
    :goto_0
    return-void

    .line 326
    :cond_0
    invoke-virtual {p0, p1}, Lcom/flurry/org/codehaus/jackson/node/ArrayNode;->POJONode(Ljava/lang/Object;)Lcom/flurry/org/codehaus/jackson/node/POJONode;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/flurry/org/codehaus/jackson/node/ArrayNode;->_add(Lcom/flurry/org/codehaus/jackson/JsonNode;)V

    goto :goto_0
.end method

.method public asToken()Lcom/flurry/org/codehaus/jackson/JsonToken;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/flurry/org/codehaus/jackson/JsonToken;->START_ARRAY:Lcom/flurry/org/codehaus/jackson/JsonToken;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 656
    if-ne p1, p0, :cond_1

    .line 665
    :cond_0
    :goto_0
    return v1

    .line 657
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    goto :goto_0

    .line 658
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 659
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 661
    check-cast v0, Lcom/flurry/org/codehaus/jackson/node/ArrayNode;

    .line 662
    .local v0, "other":Lcom/flurry/org/codehaus/jackson/node/ArrayNode;
    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/node/ArrayNode;->_children:Ljava/util/ArrayList;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/node/ArrayNode;->_children:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_5

    .line 663
    :cond_4
    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/node/ArrayNode;->size()I

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0

    .line 665
    :cond_5
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/node/ArrayNode;->_children:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Lcom/flurry/org/codehaus/jackson/node/ArrayNode;->_sameChildren(Ljava/util/ArrayList;)Z

    move-result v1

    goto :goto_0
.end method

.method public bridge synthetic findParent(Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/JsonNode;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 14
    invoke-virtual {p0, p1}, Lcom/flurry/org/codehaus/jackson/node/ArrayNode;->findParent(Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/node/ObjectNode;

    move-result-object v0

    return-object v0
.end method

.method public findParent(Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/node/ObjectNode;
    .locals 4
    .param p1, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 151
    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/node/ArrayNode;->_children:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    .line 152
    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/node/ArrayNode;->_children:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flurry/org/codehaus/jackson/JsonNode;

    .line 153
    .local v1, "node":Lcom/flurry/org/codehaus/jackson/JsonNode;
    invoke-virtual {v1, p1}, Lcom/flurry/org/codehaus/jackson/JsonNode;->findParent(Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/JsonNode;

    move-result-object v2

    .line 154
    .local v2, "parent":Lcom/flurry/org/codehaus/jackson/JsonNode;
    if-eqz v2, :cond_0

    .line 155
    check-cast v2, Lcom/flurry/org/codehaus/jackson/node/ObjectNode;

    .line 159
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "node":Lcom/flurry/org/codehaus/jackson/JsonNode;
    .end local v2    # "parent":Lcom/flurry/org/codehaus/jackson/JsonNode;
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public findParents(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 3
    .param p1, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/org/codehaus/jackson/JsonNode;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/org/codehaus/jackson/JsonNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 165
    .local p2, "foundSoFar":Ljava/util/List;, "Ljava/util/List<Lcom/flurry/org/codehaus/jackson/JsonNode;>;"
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/node/ArrayNode;->_children:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 166
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/node/ArrayNode;->_children:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flurry/org/codehaus/jackson/JsonNode;

    .line 167
    .local v1, "node":Lcom/flurry/org/codehaus/jackson/JsonNode;
    invoke-virtual {v1, p1, p2}, Lcom/flurry/org/codehaus/jackson/JsonNode;->findParents(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    goto :goto_0

    .line 170
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "node":Lcom/flurry/org/codehaus/jackson/JsonNode;
    :cond_0
    return-object p2
.end method

.method public findValue(Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/JsonNode;
    .locals 4
    .param p1, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 115
    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/node/ArrayNode;->_children:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    .line 116
    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/node/ArrayNode;->_children:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flurry/org/codehaus/jackson/JsonNode;

    .line 117
    .local v1, "node":Lcom/flurry/org/codehaus/jackson/JsonNode;
    invoke-virtual {v1, p1}, Lcom/flurry/org/codehaus/jackson/JsonNode;->findValue(Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/JsonNode;

    move-result-object v2

    .line 118
    .local v2, "value":Lcom/flurry/org/codehaus/jackson/JsonNode;
    if-eqz v2, :cond_0

    .line 123
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "node":Lcom/flurry/org/codehaus/jackson/JsonNode;
    .end local v2    # "value":Lcom/flurry/org/codehaus/jackson/JsonNode;
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public findValues(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 3
    .param p1, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/org/codehaus/jackson/JsonNode;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/org/codehaus/jackson/JsonNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 129
    .local p2, "foundSoFar":Ljava/util/List;, "Ljava/util/List<Lcom/flurry/org/codehaus/jackson/JsonNode;>;"
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/node/ArrayNode;->_children:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 130
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/node/ArrayNode;->_children:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flurry/org/codehaus/jackson/JsonNode;

    .line 131
    .local v1, "node":Lcom/flurry/org/codehaus/jackson/JsonNode;
    invoke-virtual {v1, p1, p2}, Lcom/flurry/org/codehaus/jackson/JsonNode;->findValues(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    goto :goto_0

    .line 134
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "node":Lcom/flurry/org/codehaus/jackson/JsonNode;
    :cond_0
    return-object p2
.end method

.method public findValuesAsText(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 3
    .param p1, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 140
    .local p2, "foundSoFar":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/node/ArrayNode;->_children:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 141
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/node/ArrayNode;->_children:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flurry/org/codehaus/jackson/JsonNode;

    .line 142
    .local v1, "node":Lcom/flurry/org/codehaus/jackson/JsonNode;
    invoke-virtual {v1, p1, p2}, Lcom/flurry/org/codehaus/jackson/JsonNode;->findValuesAsText(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    goto :goto_0

    .line 145
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "node":Lcom/flurry/org/codehaus/jackson/JsonNode;
    :cond_0
    return-object p2
.end method

.method public get(I)Lcom/flurry/org/codehaus/jackson/JsonNode;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 47
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/node/ArrayNode;->_children:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/node/ArrayNode;->_children:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/node/ArrayNode;->_children:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/org/codehaus/jackson/JsonNode;

    .line 50
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public get(Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/JsonNode;
    .locals 1
    .param p1, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 54
    const/4 v0, 0x0

    return-object v0
.end method

.method public getElements()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/flurry/org/codehaus/jackson/JsonNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 41
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/node/ArrayNode;->_children:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/flurry/org/codehaus/jackson/node/ContainerNode$NoNodesIterator;->instance()Lcom/flurry/org/codehaus/jackson/node/ContainerNode$NoNodesIterator;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/node/ArrayNode;->_children:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 672
    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/node/ArrayNode;->_children:Ljava/util/ArrayList;

    if-nez v3, :cond_1

    .line 673
    const/4 v0, 0x1

    .line 682
    .local v0, "hash":I
    :cond_0
    return v0

    .line 675
    .end local v0    # "hash":I
    :cond_1
    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/node/ArrayNode;->_children:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 676
    .restart local v0    # "hash":I
    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/node/ArrayNode;->_children:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/flurry/org/codehaus/jackson/JsonNode;

    .line 677
    .local v2, "n":Lcom/flurry/org/codehaus/jackson/JsonNode;
    if-eqz v2, :cond_2

    .line 678
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    xor-int/2addr v0, v3

    goto :goto_0
.end method

.method public insert(ID)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "v"    # D

    .prologue
    .line 561
    invoke-virtual {p0, p2, p3}, Lcom/flurry/org/codehaus/jackson/node/ArrayNode;->numberNode(D)Lcom/flurry/org/codehaus/jackson/node/NumericNode;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/flurry/org/codehaus/jackson/node/ArrayNode;->_insert(ILcom/flurry/org/codehaus/jackson/JsonNode;)V

    return-void
.end method

.method public insert(IF)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "v"    # F

    .prologue
    .line 542
    invoke-virtual {p0, p2}, Lcom/flurry/org/codehaus/jackson/node/ArrayNode;->numberNode(F)Lcom/flurry/org/codehaus/jackson/node/NumericNode;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/flurry/org/codehaus/jackson/node/ArrayNode;->_insert(ILcom/flurry/org/codehaus/jackson/JsonNode;)V

    return-void
.end method

.method public insert(II)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "v"    # I

    .prologue
    .line 504
    invoke-virtual {p0, p2}, Lcom/flurry/org/codehaus/jackson/node/ArrayNode;->numberNode(I)Lcom/flurry/org/codehaus/jackson/node/NumericNode;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/flurry/org/codehaus/jackson/node/ArrayNode;->_insert(ILcom/flurry/org/codehaus/jackson/JsonNode;)V

    return-void
.end method

.method public insert(IJ)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "v"    # J

    .prologue
    .line 523
    invoke-virtual {p0, p2, p3}, Lcom/flurry/org/codehaus/jackson/node/ArrayNode;->numberNode(J)Lcom/flurry/org/codehaus/jackson/node/NumericNode;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/flurry/org/codehaus/jackson/node/ArrayNode;->_insert(ILcom/flurry/org/codehaus/jackson/JsonNode;)V

    return-void
.end method

.method public insert(ILcom/flurry/org/codehaus/jackson/JsonNode;)V
    .locals 0
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/flurry/org/codehaus/jackson/JsonNode;

    .prologue
    .line 259
    if-nez p2, :cond_0

    .line 260
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/node/ArrayNode;->nullNode()Lcom/flurry/org/codehaus/jackson/node/NullNode;

    move-result-object p2

    .line 262
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/flurry/org/codehaus/jackson/node/ArrayNode;->_insert(ILcom/flurry/org/codehaus/jackson/JsonNode;)V

    .line 263
    return-void
.end method

.method public insert(ILjava/lang/Boolean;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/lang/Boolean;

    .prologue
    .line 611
    if-nez p2, :cond_0

    .line 612
    invoke-virtual {p0, p1}, Lcom/flurry/org/codehaus/jackson/node/ArrayNode;->insertNull(I)V

    .line 616
    :goto_0
    return-void

    .line 614
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/flurry/org/codehaus/jackson/node/ArrayNode;->booleanNode(Z)Lcom/flurry/org/codehaus/jackson/node/BooleanNode;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/flurry/org/codehaus/jackson/node/ArrayNode;->_insert(ILcom/flurry/org/codehaus/jackson/JsonNode;)V

    goto :goto_0
.end method

.method public insert(ILjava/lang/Double;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/lang/Double;

    .prologue
    .line 570
    if-nez p2, :cond_0

    .line 571
    invoke-virtual {p0, p1}, Lcom/flurry/org/codehaus/jackson/node/ArrayNode;->insertNull(I)V

    .line 575
    :goto_0
    return-void

    .line 573
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/flurry/org/codehaus/jackson/node/ArrayNode;->numberNode(D)Lcom/flurry/org/codehaus/jackson/node/NumericNode;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/flurry/org/codehaus/jackson/node/ArrayNode;->_insert(ILcom/flurry/org/codehaus/jackson/JsonNode;)V

    goto :goto_0
.end method

.method public insert(ILjava/lang/Float;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/lang/Float;

    .prologue
    .line 551
    if-nez p2, :cond_0

    .line 552
    invoke-virtual {p0, p1}, Lcom/flurry/org/codehaus/jackson/node/ArrayNode;->insertNull(I)V

    .line 556
    :goto_0
    return-void

    .line 554
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/flurry/org/codehaus/jackson/node/ArrayNode;->numberNode(F)Lcom/flurry/org/codehaus/jackson/node/NumericNode;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/flurry/org/codehaus/jackson/node/ArrayNode;->_insert(ILcom/flurry/org/codehaus/jackson/JsonNode;)V

    goto :goto_0
.end method

.method public insert(ILjava/lang/Integer;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/lang/Integer;

    .prologue
    .line 513
    if-nez p2, :cond_0

    .line 514
    invoke-virtual {p0, p1}, Lcom/flurry/org/codehaus/jackson/node/ArrayNode;->insertNull(I)V

    .line 518
    :goto_0
    return-void

    .line 516
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/flurry/org/codehaus/jackson/node/ArrayNode;->numberNode(I)Lcom/flurry/org/codehaus/jackson/node/NumericNode;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/flurry/org/codehaus/jackson/node/ArrayNode;->_insert(ILcom/flurry/org/codehaus/jackson/JsonNode;)V

    goto :goto_0
.end method

.method public insert(ILjava/lang/Long;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/lang/Long;

    .prologue
    .line 532
    if-nez p2, :cond_0

    .line 533
    invoke-virtual {p0, p1}, Lcom/flurry/org/codehaus/jackson/node/ArrayNode;->insertNull(I)V

    .line 537
    :goto_0
    return-void

    .line 535
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/flurry/org/codehaus/jackson/node/ArrayNode;->numberNode(J)Lcom/flurry/org/codehaus/jackson/node/NumericNode;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/flurry/org/codehaus/jackson/node/ArrayNode;->_insert(ILcom/flurry/org/codehaus/jackson/JsonNode;)V

    goto :goto_0
.end method

.method public insert(ILjava/lang/String;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "v"    # Ljava/lang/String;

    .prologue
    .line 592
    if-nez p2, :cond_0

    .line 593
    invoke-virtual {p0, p1}, Lcom/flurry/org/codehaus/jackson/node/ArrayNode;->insertNull(I)V

    .line 597
    :goto_0
    return-void

    .line 595
    :cond_0
    invoke-virtual {p0, p2}, Lcom/flurry/org/codehaus/jackson/node/ArrayNode;->textNode(Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/node/TextNode;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/flurry/org/codehaus/jackson/node/ArrayNode;->_insert(ILcom/flurry/org/codehaus/jackson/JsonNode;)V

    goto :goto_0
.end method

.method public insert(ILjava/math/BigDecimal;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "v"    # Ljava/math/BigDecimal;

    .prologue
    .line 581
    if-nez p2, :cond_0

    .line 582
    invoke-virtual {p0, p1}, Lcom/flurry/org/codehaus/jackson/node/ArrayNode;->insertNull(I)V

    .line 586
    :goto_0
    return-void

    .line 584
    :cond_0
    invoke-virtual {p0, p2}, Lcom/flurry/org/codehaus/jackson/node/ArrayNode;->numberNode(Ljava/math/BigDecimal;)Lcom/flurry/org/codehaus/jackson/node/NumericNode;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/flurry/org/codehaus/jackson/node/ArrayNode;->_insert(ILcom/flurry/org/codehaus/jackson/JsonNode;)V

    goto :goto_0
.end method

.method public insert(IZ)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "v"    # Z

    .prologue
    .line 602
    invoke-virtual {p0, p2}, Lcom/flurry/org/codehaus/jackson/node/ArrayNode;->booleanNode(Z)Lcom/flurry/org/codehaus/jackson/node/BooleanNode;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/flurry/org/codehaus/jackson/node/ArrayNode;->_insert(ILcom/flurry/org/codehaus/jackson/JsonNode;)V

    return-void
.end method

.method public insert(I[B)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "v"    # [B

    .prologue
    .line 622
    if-nez p2, :cond_0

    .line 623
    invoke-virtual {p0, p1}, Lcom/flurry/org/codehaus/jackson/node/ArrayNode;->insertNull(I)V

    .line 627
    :goto_0
    return-void

    .line 625
    :cond_0
    invoke-virtual {p0, p2}, Lcom/flurry/org/codehaus/jackson/node/ArrayNode;->binaryNode([B)Lcom/flurry/org/codehaus/jackson/node/BinaryNode;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/flurry/org/codehaus/jackson/node/ArrayNode;->_insert(ILcom/flurry/org/codehaus/jackson/JsonNode;)V

    goto :goto_0
.end method

.method public insertArray(I)Lcom/flurry/org/codehaus/jackson/node/ArrayNode;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 465
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/node/ArrayNode;->arrayNode()Lcom/flurry/org/codehaus/jackson/node/ArrayNode;

    move-result-object v0

    .line 466
    .local v0, "n":Lcom/flurry/org/codehaus/jackson/node/ArrayNode;
    invoke-direct {p0, p1, v0}, Lcom/flurry/org/codehaus/jackson/node/ArrayNode;->_insert(ILcom/flurry/org/codehaus/jackson/JsonNode;)V

    .line 467
    return-object v0
.end method

.method public insertNull(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 498
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/node/ArrayNode;->nullNode()Lcom/flurry/org/codehaus/jackson/node/NullNode;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/flurry/org/codehaus/jackson/node/ArrayNode;->_insert(ILcom/flurry/org/codehaus/jackson/JsonNode;)V

    .line 499
    return-void
.end method

.method public insertObject(I)Lcom/flurry/org/codehaus/jackson/node/ObjectNode;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 478
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/node/ArrayNode;->objectNode()Lcom/flurry/org/codehaus/jackson/node/ObjectNode;

    move-result-object v0

    .line 479
    .local v0, "n":Lcom/flurry/org/codehaus/jackson/node/ObjectNode;
    invoke-direct {p0, p1, v0}, Lcom/flurry/org/codehaus/jackson/node/ArrayNode;->_insert(ILcom/flurry/org/codehaus/jackson/JsonNode;)V

    .line 480
    return-object v0
.end method

.method public insertPOJO(ILjava/lang/Object;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 489
    if-nez p2, :cond_0

    .line 490
    invoke-virtual {p0, p1}, Lcom/flurry/org/codehaus/jackson/node/ArrayNode;->insertNull(I)V

    .line 494
    :goto_0
    return-void

    .line 492
    :cond_0
    invoke-virtual {p0, p2}, Lcom/flurry/org/codehaus/jackson/node/ArrayNode;->POJONode(Ljava/lang/Object;)Lcom/flurry/org/codehaus/jackson/node/POJONode;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/flurry/org/codehaus/jackson/node/ArrayNode;->_insert(ILcom/flurry/org/codehaus/jackson/JsonNode;)V

    goto :goto_0
.end method

.method public isArray()Z
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x1

    return v0
.end method

.method public path(I)Lcom/flurry/org/codehaus/jackson/JsonNode;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 62
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/node/ArrayNode;->_children:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/node/ArrayNode;->_children:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/node/ArrayNode;->_children:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/org/codehaus/jackson/JsonNode;

    .line 65
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/flurry/org/codehaus/jackson/node/MissingNode;->getInstance()Lcom/flurry/org/codehaus/jackson/node/MissingNode;

    move-result-object v0

    goto :goto_0
.end method

.method public path(Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/JsonNode;
    .locals 1
    .param p1, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 57
    invoke-static {}, Lcom/flurry/org/codehaus/jackson/node/MissingNode;->getInstance()Lcom/flurry/org/codehaus/jackson/node/MissingNode;

    move-result-object v0

    return-object v0
.end method

.method public remove(I)Lcom/flurry/org/codehaus/jackson/JsonNode;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 272
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/node/ArrayNode;->_children:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/node/ArrayNode;->_children:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/node/ArrayNode;->_children:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/org/codehaus/jackson/JsonNode;

    .line 275
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeAll()Lcom/flurry/org/codehaus/jackson/node/ArrayNode;
    .locals 1

    .prologue
    .line 281
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/node/ArrayNode;->_children:Ljava/util/ArrayList;

    .line 282
    return-object p0
.end method

.method public bridge synthetic removeAll()Lcom/flurry/org/codehaus/jackson/node/ContainerNode;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/node/ArrayNode;->removeAll()Lcom/flurry/org/codehaus/jackson/node/ArrayNode;

    move-result-object v0

    return-object v0
.end method

.method public final serialize(Lcom/flurry/org/codehaus/jackson/JsonGenerator;Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;)V
    .locals 3
    .param p1, "jg"    # Lcom/flurry/org/codehaus/jackson/JsonGenerator;
    .param p2, "provider"    # Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 78
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonGenerator;->writeStartArray()V

    .line 79
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/node/ArrayNode;->_children:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 80
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/node/ArrayNode;->_children:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flurry/org/codehaus/jackson/JsonNode;

    .line 86
    .local v1, "n":Lcom/flurry/org/codehaus/jackson/JsonNode;
    check-cast v1, Lcom/flurry/org/codehaus/jackson/node/BaseJsonNode;

    .end local v1    # "n":Lcom/flurry/org/codehaus/jackson/JsonNode;
    invoke-virtual {v1, p1, p2}, Lcom/flurry/org/codehaus/jackson/node/BaseJsonNode;->serialize(Lcom/flurry/org/codehaus/jackson/JsonGenerator;Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;)V

    goto :goto_0

    .line 89
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonGenerator;->writeEndArray()V

    .line 90
    return-void
.end method

.method public serializeWithType(Lcom/flurry/org/codehaus/jackson/JsonGenerator;Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;)V
    .locals 3
    .param p1, "jg"    # Lcom/flurry/org/codehaus/jackson/JsonGenerator;
    .param p2, "provider"    # Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;
    .param p3, "typeSer"    # Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 97
    invoke-virtual {p3, p0, p1}, Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;->writeTypePrefixForArray(Ljava/lang/Object;Lcom/flurry/org/codehaus/jackson/JsonGenerator;)V

    .line 98
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/node/ArrayNode;->_children:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 99
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/node/ArrayNode;->_children:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flurry/org/codehaus/jackson/JsonNode;

    .line 100
    .local v1, "n":Lcom/flurry/org/codehaus/jackson/JsonNode;
    check-cast v1, Lcom/flurry/org/codehaus/jackson/node/BaseJsonNode;

    .end local v1    # "n":Lcom/flurry/org/codehaus/jackson/JsonNode;
    invoke-virtual {v1, p1, p2}, Lcom/flurry/org/codehaus/jackson/node/BaseJsonNode;->serialize(Lcom/flurry/org/codehaus/jackson/JsonGenerator;Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;)V

    goto :goto_0

    .line 103
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    invoke-virtual {p3, p0, p1}, Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;->writeTypeSuffixForArray(Ljava/lang/Object;Lcom/flurry/org/codehaus/jackson/JsonGenerator;)V

    .line 104
    return-void
.end method

.method public set(ILcom/flurry/org/codehaus/jackson/JsonNode;)Lcom/flurry/org/codehaus/jackson/JsonNode;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/flurry/org/codehaus/jackson/JsonNode;

    .prologue
    .line 192
    if-nez p2, :cond_0

    .line 193
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/node/ArrayNode;->nullNode()Lcom/flurry/org/codehaus/jackson/node/NullNode;

    move-result-object p2

    .line 195
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/flurry/org/codehaus/jackson/node/ArrayNode;->_set(ILcom/flurry/org/codehaus/jackson/JsonNode;)Lcom/flurry/org/codehaus/jackson/JsonNode;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/node/ArrayNode;->_children:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/node/ArrayNode;->_children:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 689
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/node/ArrayNode;->size()I

    move-result v3

    shl-int/lit8 v3, v3, 0x4

    add-int/lit8 v3, v3, 0x10

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 690
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/16 v3, 0x5b

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 691
    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/node/ArrayNode;->_children:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    .line 692
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/node/ArrayNode;->_children:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "len":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 693
    if-lez v0, :cond_0

    .line 694
    const/16 v3, 0x2c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 696
    :cond_0
    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/node/ArrayNode;->_children:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/flurry/org/codehaus/jackson/JsonNode;

    invoke-virtual {v3}, Lcom/flurry/org/codehaus/jackson/JsonNode;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 692
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 699
    .end local v0    # "i":I
    .end local v1    # "len":I
    :cond_1
    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 700
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
