.class public final Lcom/flurry/org/codehaus/jackson/node/NodeCursor$RootValue;
.super Lcom/flurry/org/codehaus/jackson/node/NodeCursor;
.source "NodeCursor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/org/codehaus/jackson/node/NodeCursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "RootValue"
.end annotation


# instance fields
.field protected _done:Z

.field _node:Lcom/flurry/org/codehaus/jackson/JsonNode;


# direct methods
.method public constructor <init>(Lcom/flurry/org/codehaus/jackson/JsonNode;Lcom/flurry/org/codehaus/jackson/node/NodeCursor;)V
    .locals 1
    .param p1, "n"    # Lcom/flurry/org/codehaus/jackson/JsonNode;
    .param p2, "p"    # Lcom/flurry/org/codehaus/jackson/node/NodeCursor;

    .prologue
    const/4 v0, 0x0

    .line 89
    invoke-direct {p0, v0, p2}, Lcom/flurry/org/codehaus/jackson/node/NodeCursor;-><init>(ILcom/flurry/org/codehaus/jackson/node/NodeCursor;)V

    .line 86
    iput-boolean v0, p0, Lcom/flurry/org/codehaus/jackson/node/NodeCursor$RootValue;->_done:Z

    .line 90
    iput-object p1, p0, Lcom/flurry/org/codehaus/jackson/node/NodeCursor$RootValue;->_node:Lcom/flurry/org/codehaus/jackson/JsonNode;

    .line 91
    return-void
.end method


# virtual methods
.method public currentHasChildren()Z
    .locals 1

    .prologue
    .line 113
    const/4 v0, 0x0

    return v0
.end method

.method public currentNode()Lcom/flurry/org/codehaus/jackson/JsonNode;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/node/NodeCursor$RootValue;->_node:Lcom/flurry/org/codehaus/jackson/JsonNode;

    return-object v0
.end method

.method public endToken()Lcom/flurry/org/codehaus/jackson/JsonToken;
    .locals 1

    .prologue
    .line 109
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrentName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getParent()Lcom/flurry/org/codehaus/jackson/JsonStreamContext;
    .locals 1

    .prologue
    .line 81
    invoke-super {p0}, Lcom/flurry/org/codehaus/jackson/node/NodeCursor;->getParent()Lcom/flurry/org/codehaus/jackson/node/NodeCursor;

    move-result-object v0

    return-object v0
.end method

.method public nextToken()Lcom/flurry/org/codehaus/jackson/JsonToken;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 98
    iget-boolean v1, p0, Lcom/flurry/org/codehaus/jackson/node/NodeCursor$RootValue;->_done:Z

    if-nez v1, :cond_0

    .line 99
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/org/codehaus/jackson/node/NodeCursor$RootValue;->_done:Z

    .line 100
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/node/NodeCursor$RootValue;->_node:Lcom/flurry/org/codehaus/jackson/JsonNode;

    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/JsonNode;->asToken()Lcom/flurry/org/codehaus/jackson/JsonToken;

    move-result-object v0

    .line 103
    :goto_0
    return-object v0

    .line 102
    :cond_0
    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/node/NodeCursor$RootValue;->_node:Lcom/flurry/org/codehaus/jackson/JsonNode;

    goto :goto_0
.end method

.method public nextValue()Lcom/flurry/org/codehaus/jackson/JsonToken;
    .locals 1

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/node/NodeCursor$RootValue;->nextToken()Lcom/flurry/org/codehaus/jackson/JsonToken;

    move-result-object v0

    return-object v0
.end method
