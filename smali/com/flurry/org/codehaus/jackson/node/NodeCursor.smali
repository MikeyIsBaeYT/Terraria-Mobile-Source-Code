.class abstract Lcom/flurry/org/codehaus/jackson/node/NodeCursor;
.super Lcom/flurry/org/codehaus/jackson/JsonStreamContext;
.source "NodeCursor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/org/codehaus/jackson/node/NodeCursor$Object;,
        Lcom/flurry/org/codehaus/jackson/node/NodeCursor$Array;,
        Lcom/flurry/org/codehaus/jackson/node/NodeCursor$RootValue;
    }
.end annotation


# instance fields
.field final _parent:Lcom/flurry/org/codehaus/jackson/node/NodeCursor;


# direct methods
.method public constructor <init>(ILcom/flurry/org/codehaus/jackson/node/NodeCursor;)V
    .locals 1
    .param p1, "contextType"    # I
    .param p2, "p"    # Lcom/flurry/org/codehaus/jackson/node/NodeCursor;

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/flurry/org/codehaus/jackson/JsonStreamContext;-><init>()V

    .line 23
    iput p1, p0, Lcom/flurry/org/codehaus/jackson/node/NodeCursor;->_type:I

    .line 24
    const/4 v0, -0x1

    iput v0, p0, Lcom/flurry/org/codehaus/jackson/node/NodeCursor;->_index:I

    .line 25
    iput-object p2, p0, Lcom/flurry/org/codehaus/jackson/node/NodeCursor;->_parent:Lcom/flurry/org/codehaus/jackson/node/NodeCursor;

    .line 26
    return-void
.end method


# virtual methods
.method public abstract currentHasChildren()Z
.end method

.method public abstract currentNode()Lcom/flurry/org/codehaus/jackson/JsonNode;
.end method

.method public abstract endToken()Lcom/flurry/org/codehaus/jackson/JsonToken;
.end method

.method public abstract getCurrentName()Ljava/lang/String;
.end method

.method public bridge synthetic getParent()Lcom/flurry/org/codehaus/jackson/JsonStreamContext;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/node/NodeCursor;->getParent()Lcom/flurry/org/codehaus/jackson/node/NodeCursor;

    move-result-object v0

    return-object v0
.end method

.method public final getParent()Lcom/flurry/org/codehaus/jackson/node/NodeCursor;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/node/NodeCursor;->_parent:Lcom/flurry/org/codehaus/jackson/node/NodeCursor;

    return-object v0
.end method

.method public final iterateChildren()Lcom/flurry/org/codehaus/jackson/node/NodeCursor;
    .locals 4

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/node/NodeCursor;->currentNode()Lcom/flurry/org/codehaus/jackson/JsonNode;

    move-result-object v0

    .line 60
    .local v0, "n":Lcom/flurry/org/codehaus/jackson/JsonNode;
    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "No current node"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 61
    :cond_0
    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/JsonNode;->isArray()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 62
    new-instance v1, Lcom/flurry/org/codehaus/jackson/node/NodeCursor$Array;

    invoke-direct {v1, v0, p0}, Lcom/flurry/org/codehaus/jackson/node/NodeCursor$Array;-><init>(Lcom/flurry/org/codehaus/jackson/JsonNode;Lcom/flurry/org/codehaus/jackson/node/NodeCursor;)V

    .line 65
    :goto_0
    return-object v1

    .line 64
    :cond_1
    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/JsonNode;->isObject()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 65
    new-instance v1, Lcom/flurry/org/codehaus/jackson/node/NodeCursor$Object;

    invoke-direct {v1, v0, p0}, Lcom/flurry/org/codehaus/jackson/node/NodeCursor$Object;-><init>(Lcom/flurry/org/codehaus/jackson/JsonNode;Lcom/flurry/org/codehaus/jackson/node/NodeCursor;)V

    goto :goto_0

    .line 67
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Current node of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public abstract nextToken()Lcom/flurry/org/codehaus/jackson/JsonToken;
.end method

.method public abstract nextValue()Lcom/flurry/org/codehaus/jackson/JsonToken;
.end method
