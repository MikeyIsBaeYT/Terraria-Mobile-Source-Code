.class public abstract Lcom/flurry/org/codehaus/jackson/node/ValueNode;
.super Lcom/flurry/org/codehaus/jackson/node/BaseJsonNode;
.source "ValueNode.java"


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/flurry/org/codehaus/jackson/node/BaseJsonNode;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract asToken()Lcom/flurry/org/codehaus/jackson/JsonToken;
.end method

.method public isValueNode()Z
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x1

    return v0
.end method

.method public path(I)Lcom/flurry/org/codehaus/jackson/JsonNode;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 48
    invoke-static {}, Lcom/flurry/org/codehaus/jackson/node/MissingNode;->getInstance()Lcom/flurry/org/codehaus/jackson/node/MissingNode;

    move-result-object v0

    return-object v0
.end method

.method public path(Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/JsonNode;
    .locals 1
    .param p1, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 45
    invoke-static {}, Lcom/flurry/org/codehaus/jackson/node/MissingNode;->getInstance()Lcom/flurry/org/codehaus/jackson/node/MissingNode;

    move-result-object v0

    return-object v0
.end method

.method public serializeWithType(Lcom/flurry/org/codehaus/jackson/JsonGenerator;Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;)V
    .locals 0
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
    .line 33
    invoke-virtual {p3, p0, p1}, Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;->writeTypePrefixForScalar(Ljava/lang/Object;Lcom/flurry/org/codehaus/jackson/JsonGenerator;)V

    .line 34
    invoke-virtual {p0, p1, p2}, Lcom/flurry/org/codehaus/jackson/node/ValueNode;->serialize(Lcom/flurry/org/codehaus/jackson/JsonGenerator;Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;)V

    .line 35
    invoke-virtual {p3, p0, p1}, Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;->writeTypeSuffixForScalar(Ljava/lang/Object;Lcom/flurry/org/codehaus/jackson/JsonGenerator;)V

    .line 36
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/node/ValueNode;->asText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
