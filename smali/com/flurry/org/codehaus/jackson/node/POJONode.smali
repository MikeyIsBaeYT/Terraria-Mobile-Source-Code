.class public final Lcom/flurry/org/codehaus/jackson/node/POJONode;
.super Lcom/flurry/org/codehaus/jackson/node/ValueNode;
.source "POJONode.java"


# instance fields
.field protected final _value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1, "v"    # Ljava/lang/Object;

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/flurry/org/codehaus/jackson/node/ValueNode;-><init>()V

    iput-object p1, p0, Lcom/flurry/org/codehaus/jackson/node/POJONode;->_value:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public asBoolean(Z)Z
    .locals 1
    .param p1, "defaultValue"    # Z

    .prologue
    .line 55
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/node/POJONode;->_value:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/node/POJONode;->_value:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/node/POJONode;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 58
    .end local p1    # "defaultValue":Z
    :cond_0
    return p1
.end method

.method public asDouble(D)D
    .locals 1
    .param p1, "defaultValue"    # D

    .prologue
    .line 82
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/node/POJONode;->_value:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Number;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/node/POJONode;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p1

    .line 85
    .end local p1    # "defaultValue":D
    :cond_0
    return-wide p1
.end method

.method public asInt(I)I
    .locals 1
    .param p1, "defaultValue"    # I

    .prologue
    .line 64
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/node/POJONode;->_value:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Number;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/node/POJONode;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result p1

    .line 67
    .end local p1    # "defaultValue":I
    :cond_0
    return p1
.end method

.method public asLong(J)J
    .locals 1
    .param p1, "defaultValue"    # J

    .prologue
    .line 73
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/node/POJONode;->_value:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Number;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/node/POJONode;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide p1

    .line 76
    .end local p1    # "defaultValue":J
    :cond_0
    return-wide p1
.end method

.method public asText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/node/POJONode;->_value:Ljava/lang/Object;

    if-nez v0, :cond_0

    const-string v0, "null"

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/node/POJONode;->_value:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public asToken()Lcom/flurry/org/codehaus/jackson/JsonToken;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/flurry/org/codehaus/jackson/JsonToken;->VALUE_EMBEDDED_OBJECT:Lcom/flurry/org/codehaus/jackson/JsonToken;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 125
    if-ne p1, p0, :cond_1

    .line 134
    :cond_0
    :goto_0
    return v1

    .line 126
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    goto :goto_0

    .line 127
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 128
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 130
    check-cast v0, Lcom/flurry/org/codehaus/jackson/node/POJONode;

    .line 131
    .local v0, "other":Lcom/flurry/org/codehaus/jackson/node/POJONode;
    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/node/POJONode;->_value:Ljava/lang/Object;

    if-nez v3, :cond_4

    .line 132
    iget-object v3, v0, Lcom/flurry/org/codehaus/jackson/node/POJONode;->_value:Ljava/lang/Object;

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0

    .line 134
    :cond_4
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/node/POJONode;->_value:Ljava/lang/Object;

    iget-object v2, v0, Lcom/flurry/org/codehaus/jackson/node/POJONode;->_value:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getBinaryValue()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 35
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/node/POJONode;->_value:Ljava/lang/Object;

    instance-of v0, v0, [B

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/node/POJONode;->_value:Ljava/lang/Object;

    check-cast v0, [B

    check-cast v0, [B

    .line 38
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/flurry/org/codehaus/jackson/node/ValueNode;->getBinaryValue()[B

    move-result-object v0

    goto :goto_0
.end method

.method public getPojo()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/node/POJONode;->_value:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/node/POJONode;->_value:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isPojo()Z
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x1

    return v0
.end method

.method public final serialize(Lcom/flurry/org/codehaus/jackson/JsonGenerator;Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;)V
    .locals 1
    .param p1, "jg"    # Lcom/flurry/org/codehaus/jackson/JsonGenerator;
    .param p2, "provider"    # Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 98
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/node/POJONode;->_value:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 99
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonGenerator;->writeNull()V

    .line 103
    :goto_0
    return-void

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/node/POJONode;->_value:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lcom/flurry/org/codehaus/jackson/JsonGenerator;->writeObject(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/node/POJONode;->_value:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
