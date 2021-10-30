.class public abstract Lcom/flurry/org/codehaus/jackson/node/ContainerNode;
.super Lcom/flurry/org/codehaus/jackson/node/BaseJsonNode;
.source "ContainerNode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/org/codehaus/jackson/node/ContainerNode$NoStringsIterator;,
        Lcom/flurry/org/codehaus/jackson/node/ContainerNode$NoNodesIterator;
    }
.end annotation


# instance fields
.field _nodeFactory:Lcom/flurry/org/codehaus/jackson/node/JsonNodeFactory;


# direct methods
.method protected constructor <init>(Lcom/flurry/org/codehaus/jackson/node/JsonNodeFactory;)V
    .locals 0
    .param p1, "nc"    # Lcom/flurry/org/codehaus/jackson/node/JsonNodeFactory;

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/flurry/org/codehaus/jackson/node/BaseJsonNode;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/flurry/org/codehaus/jackson/node/ContainerNode;->_nodeFactory:Lcom/flurry/org/codehaus/jackson/node/JsonNodeFactory;

    .line 28
    return-void
.end method


# virtual methods
.method public final POJONode(Ljava/lang/Object;)Lcom/flurry/org/codehaus/jackson/node/POJONode;
    .locals 1
    .param p1, "pojo"    # Ljava/lang/Object;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/node/ContainerNode;->_nodeFactory:Lcom/flurry/org/codehaus/jackson/node/JsonNodeFactory;

    invoke-virtual {v0, p1}, Lcom/flurry/org/codehaus/jackson/node/JsonNodeFactory;->POJONode(Ljava/lang/Object;)Lcom/flurry/org/codehaus/jackson/node/POJONode;

    move-result-object v0

    return-object v0
.end method

.method public final arrayNode()Lcom/flurry/org/codehaus/jackson/node/ArrayNode;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/node/ContainerNode;->_nodeFactory:Lcom/flurry/org/codehaus/jackson/node/JsonNodeFactory;

    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/node/JsonNodeFactory;->arrayNode()Lcom/flurry/org/codehaus/jackson/node/ArrayNode;

    move-result-object v0

    return-object v0
.end method

.method public asText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    const-string v0, ""

    return-object v0
.end method

.method public abstract asToken()Lcom/flurry/org/codehaus/jackson/JsonToken;
.end method

.method public final binaryNode([B)Lcom/flurry/org/codehaus/jackson/node/BinaryNode;
    .locals 1
    .param p1, "data"    # [B

    .prologue
    .line 118
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/node/ContainerNode;->_nodeFactory:Lcom/flurry/org/codehaus/jackson/node/JsonNodeFactory;

    invoke-virtual {v0, p1}, Lcom/flurry/org/codehaus/jackson/node/JsonNodeFactory;->binaryNode([B)Lcom/flurry/org/codehaus/jackson/node/BinaryNode;

    move-result-object v0

    return-object v0
.end method

.method public final binaryNode([BII)Lcom/flurry/org/codehaus/jackson/node/BinaryNode;
    .locals 1
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 119
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/node/ContainerNode;->_nodeFactory:Lcom/flurry/org/codehaus/jackson/node/JsonNodeFactory;

    invoke-virtual {v0, p1, p2, p3}, Lcom/flurry/org/codehaus/jackson/node/JsonNodeFactory;->binaryNode([BII)Lcom/flurry/org/codehaus/jackson/node/BinaryNode;

    move-result-object v0

    return-object v0
.end method

.method public final booleanNode(Z)Lcom/flurry/org/codehaus/jackson/node/BooleanNode;
    .locals 1
    .param p1, "v"    # Z

    .prologue
    .line 106
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/node/ContainerNode;->_nodeFactory:Lcom/flurry/org/codehaus/jackson/node/JsonNodeFactory;

    invoke-virtual {v0, p1}, Lcom/flurry/org/codehaus/jackson/node/JsonNodeFactory;->booleanNode(Z)Lcom/flurry/org/codehaus/jackson/node/BooleanNode;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic findParent(Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/JsonNode;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 15
    invoke-virtual {p0, p1}, Lcom/flurry/org/codehaus/jackson/node/ContainerNode;->findParent(Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/node/ObjectNode;

    move-result-object v0

    return-object v0
.end method

.method public abstract findParent(Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/node/ObjectNode;
.end method

.method public abstract findParents(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
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
.end method

.method public abstract findValue(Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/JsonNode;
.end method

.method public abstract findValues(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
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
.end method

.method public abstract findValuesAsText(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
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
.end method

.method public abstract get(I)Lcom/flurry/org/codehaus/jackson/JsonNode;
.end method

.method public abstract get(Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/JsonNode;
.end method

.method public getValueAsText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    return-object v0
.end method

.method public isContainerNode()Z
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x1

    return v0
.end method

.method public final nullNode()Lcom/flurry/org/codehaus/jackson/node/NullNode;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/node/ContainerNode;->_nodeFactory:Lcom/flurry/org/codehaus/jackson/node/JsonNodeFactory;

    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/node/JsonNodeFactory;->nullNode()Lcom/flurry/org/codehaus/jackson/node/NullNode;

    move-result-object v0

    return-object v0
.end method

.method public final numberNode(B)Lcom/flurry/org/codehaus/jackson/node/NumericNode;
    .locals 1
    .param p1, "v"    # B

    .prologue
    .line 108
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/node/ContainerNode;->_nodeFactory:Lcom/flurry/org/codehaus/jackson/node/JsonNodeFactory;

    invoke-virtual {v0, p1}, Lcom/flurry/org/codehaus/jackson/node/JsonNodeFactory;->numberNode(B)Lcom/flurry/org/codehaus/jackson/node/NumericNode;

    move-result-object v0

    return-object v0
.end method

.method public final numberNode(D)Lcom/flurry/org/codehaus/jackson/node/NumericNode;
    .locals 1
    .param p1, "v"    # D

    .prologue
    .line 113
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/node/ContainerNode;->_nodeFactory:Lcom/flurry/org/codehaus/jackson/node/JsonNodeFactory;

    invoke-virtual {v0, p1, p2}, Lcom/flurry/org/codehaus/jackson/node/JsonNodeFactory;->numberNode(D)Lcom/flurry/org/codehaus/jackson/node/NumericNode;

    move-result-object v0

    return-object v0
.end method

.method public final numberNode(F)Lcom/flurry/org/codehaus/jackson/node/NumericNode;
    .locals 1
    .param p1, "v"    # F

    .prologue
    .line 112
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/node/ContainerNode;->_nodeFactory:Lcom/flurry/org/codehaus/jackson/node/JsonNodeFactory;

    invoke-virtual {v0, p1}, Lcom/flurry/org/codehaus/jackson/node/JsonNodeFactory;->numberNode(F)Lcom/flurry/org/codehaus/jackson/node/NumericNode;

    move-result-object v0

    return-object v0
.end method

.method public final numberNode(I)Lcom/flurry/org/codehaus/jackson/node/NumericNode;
    .locals 1
    .param p1, "v"    # I

    .prologue
    .line 110
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/node/ContainerNode;->_nodeFactory:Lcom/flurry/org/codehaus/jackson/node/JsonNodeFactory;

    invoke-virtual {v0, p1}, Lcom/flurry/org/codehaus/jackson/node/JsonNodeFactory;->numberNode(I)Lcom/flurry/org/codehaus/jackson/node/NumericNode;

    move-result-object v0

    return-object v0
.end method

.method public final numberNode(J)Lcom/flurry/org/codehaus/jackson/node/NumericNode;
    .locals 1
    .param p1, "v"    # J

    .prologue
    .line 111
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/node/ContainerNode;->_nodeFactory:Lcom/flurry/org/codehaus/jackson/node/JsonNodeFactory;

    invoke-virtual {v0, p1, p2}, Lcom/flurry/org/codehaus/jackson/node/JsonNodeFactory;->numberNode(J)Lcom/flurry/org/codehaus/jackson/node/NumericNode;

    move-result-object v0

    return-object v0
.end method

.method public final numberNode(Ljava/math/BigDecimal;)Lcom/flurry/org/codehaus/jackson/node/NumericNode;
    .locals 1
    .param p1, "v"    # Ljava/math/BigDecimal;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/node/ContainerNode;->_nodeFactory:Lcom/flurry/org/codehaus/jackson/node/JsonNodeFactory;

    invoke-virtual {v0, p1}, Lcom/flurry/org/codehaus/jackson/node/JsonNodeFactory;->numberNode(Ljava/math/BigDecimal;)Lcom/flurry/org/codehaus/jackson/node/NumericNode;

    move-result-object v0

    return-object v0
.end method

.method public final numberNode(S)Lcom/flurry/org/codehaus/jackson/node/NumericNode;
    .locals 1
    .param p1, "v"    # S

    .prologue
    .line 109
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/node/ContainerNode;->_nodeFactory:Lcom/flurry/org/codehaus/jackson/node/JsonNodeFactory;

    invoke-virtual {v0, p1}, Lcom/flurry/org/codehaus/jackson/node/JsonNodeFactory;->numberNode(S)Lcom/flurry/org/codehaus/jackson/node/NumericNode;

    move-result-object v0

    return-object v0
.end method

.method public final objectNode()Lcom/flurry/org/codehaus/jackson/node/ObjectNode;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/node/ContainerNode;->_nodeFactory:Lcom/flurry/org/codehaus/jackson/node/JsonNodeFactory;

    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/node/JsonNodeFactory;->objectNode()Lcom/flurry/org/codehaus/jackson/node/ObjectNode;

    move-result-object v0

    return-object v0
.end method

.method public abstract removeAll()Lcom/flurry/org/codehaus/jackson/node/ContainerNode;
.end method

.method public abstract size()I
.end method

.method public final textNode(Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/node/TextNode;
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/node/ContainerNode;->_nodeFactory:Lcom/flurry/org/codehaus/jackson/node/JsonNodeFactory;

    invoke-virtual {v0, p1}, Lcom/flurry/org/codehaus/jackson/node/JsonNodeFactory;->textNode(Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/node/TextNode;

    move-result-object v0

    return-object v0
.end method
