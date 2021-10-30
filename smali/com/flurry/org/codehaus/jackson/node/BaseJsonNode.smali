.class public abstract Lcom/flurry/org/codehaus/jackson/node/BaseJsonNode;
.super Lcom/flurry/org/codehaus/jackson/JsonNode;
.source "BaseJsonNode.java"

# interfaces
.implements Lcom/flurry/org/codehaus/jackson/map/JsonSerializableWithType;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/flurry/org/codehaus/jackson/JsonNode;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract asToken()Lcom/flurry/org/codehaus/jackson/JsonToken;
.end method

.method public bridge synthetic findParent(Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/JsonNode;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 19
    invoke-virtual {p0, p1}, Lcom/flurry/org/codehaus/jackson/node/BaseJsonNode;->findParent(Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/node/ObjectNode;

    move-result-object v0

    return-object v0
.end method

.method public findParent(Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/node/ObjectNode;
    .locals 1
    .param p1, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 49
    const/4 v0, 0x0

    return-object v0
.end method

.method public findParents(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 0
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
    .line 64
    .local p2, "foundSoFar":Ljava/util/List;, "Ljava/util/List<Lcom/flurry/org/codehaus/jackson/JsonNode;>;"
    return-object p2
.end method

.method public final findPath(Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/JsonNode;
    .locals 1
    .param p1, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-virtual {p0, p1}, Lcom/flurry/org/codehaus/jackson/node/BaseJsonNode;->findValue(Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/JsonNode;

    move-result-object v0

    .line 40
    .local v0, "value":Lcom/flurry/org/codehaus/jackson/JsonNode;
    if-nez v0, :cond_0

    .line 41
    invoke-static {}, Lcom/flurry/org/codehaus/jackson/node/MissingNode;->getInstance()Lcom/flurry/org/codehaus/jackson/node/MissingNode;

    move-result-object v0

    .line 43
    .end local v0    # "value":Lcom/flurry/org/codehaus/jackson/JsonNode;
    :cond_0
    return-object v0
.end method

.method public findValue(Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/JsonNode;
    .locals 1
    .param p1, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 33
    const/4 v0, 0x0

    return-object v0
.end method

.method public findValues(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 0
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
    .line 54
    .local p2, "foundSoFar":Ljava/util/List;, "Ljava/util/List<Lcom/flurry/org/codehaus/jackson/JsonNode;>;"
    return-object p2
.end method

.method public findValuesAsText(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 0
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
    .line 59
    .local p2, "foundSoFar":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-object p2
.end method

.method public getNumberType()Lcom/flurry/org/codehaus/jackson/JsonParser$NumberType;
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract serialize(Lcom/flurry/org/codehaus/jackson/JsonGenerator;Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation
.end method

.method public abstract serializeWithType(Lcom/flurry/org/codehaus/jackson/JsonGenerator;Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation
.end method

.method public traverse()Lcom/flurry/org/codehaus/jackson/JsonParser;
    .locals 1

    .prologue
    .line 75
    new-instance v0, Lcom/flurry/org/codehaus/jackson/node/TreeTraversingParser;

    invoke-direct {v0, p0}, Lcom/flurry/org/codehaus/jackson/node/TreeTraversingParser;-><init>(Lcom/flurry/org/codehaus/jackson/JsonNode;)V

    return-object v0
.end method
