.class public Lcom/flurry/org/codehaus/jackson/map/deser/std/ObjectArrayDeserializer;
.super Lcom/flurry/org/codehaus/jackson/map/deser/std/ContainerDeserializerBase;
.source "ObjectArrayDeserializer.java"


# annotations
.annotation runtime Lcom/flurry/org/codehaus/jackson/map/annotate/JacksonStdImpl;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/flurry/org/codehaus/jackson/map/deser/std/ContainerDeserializerBase",
        "<[",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field protected final _arrayType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

.field protected final _elementClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field protected final _elementDeserializer:Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected final _elementTypeDeserializer:Lcom/flurry/org/codehaus/jackson/map/TypeDeserializer;

.field protected final _untyped:Z


# direct methods
.method public constructor <init>(Lcom/flurry/org/codehaus/jackson/map/type/ArrayType;Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;Lcom/flurry/org/codehaus/jackson/map/TypeDeserializer;)V
    .locals 2
    .param p1, "arrayType"    # Lcom/flurry/org/codehaus/jackson/map/type/ArrayType;
    .param p3, "elemTypeDeser"    # Lcom/flurry/org/codehaus/jackson/map/TypeDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/type/ArrayType;",
            "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/flurry/org/codehaus/jackson/map/TypeDeserializer;",
            ")V"
        }
    .end annotation

    .prologue
    .line 52
    .local p2, "elemDeser":Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer<Ljava/lang/Object;>;"
    const-class v0, [Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/flurry/org/codehaus/jackson/map/deser/std/ContainerDeserializerBase;-><init>(Ljava/lang/Class;)V

    .line 53
    iput-object p1, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/ObjectArrayDeserializer;->_arrayType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    .line 54
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/map/type/ArrayType;->getContentType()Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/ObjectArrayDeserializer;->_elementClass:Ljava/lang/Class;

    .line 55
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/ObjectArrayDeserializer;->_elementClass:Ljava/lang/Class;

    const-class v1, Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/ObjectArrayDeserializer;->_untyped:Z

    .line 56
    iput-object p2, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/ObjectArrayDeserializer;->_elementDeserializer:Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;

    .line 57
    iput-object p3, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/ObjectArrayDeserializer;->_elementTypeDeserializer:Lcom/flurry/org/codehaus/jackson/map/TypeDeserializer;

    .line 58
    return-void

    .line 55
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final handleNonArray(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;)[Ljava/lang/Object;
    .locals 7
    .param p1, "jp"    # Lcom/flurry/org/codehaus/jackson/JsonParser;
    .param p2, "ctxt"    # Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 160
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getCurrentToken()Lcom/flurry/org/codehaus/jackson/JsonToken;

    move-result-object v4

    sget-object v5, Lcom/flurry/org/codehaus/jackson/JsonToken;->VALUE_STRING:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-ne v4, v5, :cond_0

    sget-object v4, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;->ACCEPT_EMPTY_STRING_AS_NULL_OBJECT:Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;

    invoke-virtual {p2, v4}, Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;->isEnabled(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 162
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v1

    .line 163
    .local v1, "str":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_0

    .line 164
    const/4 v0, 0x0

    .line 198
    .end local v1    # "str":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 169
    :cond_0
    sget-object v4, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;->ACCEPT_SINGLE_VALUE_AS_ARRAY:Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;

    invoke-virtual {p2, v4}, Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;->isEnabled(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 173
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getCurrentToken()Lcom/flurry/org/codehaus/jackson/JsonToken;

    move-result-object v4

    sget-object v5, Lcom/flurry/org/codehaus/jackson/JsonToken;->VALUE_STRING:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-ne v4, v5, :cond_1

    iget-object v4, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/ObjectArrayDeserializer;->_elementClass:Ljava/lang/Class;

    const-class v5, Ljava/lang/Byte;

    if-ne v4, v5, :cond_1

    .line 175
    invoke-virtual {p0, p1, p2}, Lcom/flurry/org/codehaus/jackson/map/deser/std/ObjectArrayDeserializer;->deserializeFromBase64(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;)[Ljava/lang/Byte;

    move-result-object v0

    goto :goto_0

    .line 177
    :cond_1
    iget-object v4, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/ObjectArrayDeserializer;->_arrayType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    invoke-virtual {v4}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p2, v4}, Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;->mappingException(Ljava/lang/Class;)Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;

    move-result-object v4

    throw v4

    .line 179
    :cond_2
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getCurrentToken()Lcom/flurry/org/codehaus/jackson/JsonToken;

    move-result-object v2

    .line 182
    .local v2, "t":Lcom/flurry/org/codehaus/jackson/JsonToken;
    sget-object v4, Lcom/flurry/org/codehaus/jackson/JsonToken;->VALUE_NULL:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-ne v2, v4, :cond_3

    .line 183
    const/4 v3, 0x0

    .line 192
    :goto_1
    iget-boolean v4, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/ObjectArrayDeserializer;->_untyped:Z

    if-eqz v4, :cond_5

    .line 193
    new-array v0, v6, [Ljava/lang/Object;

    .line 197
    .local v0, "result":[Ljava/lang/Object;
    :goto_2
    const/4 v4, 0x0

    aput-object v3, v0, v4

    goto :goto_0

    .line 184
    .end local v0    # "result":[Ljava/lang/Object;
    :cond_3
    iget-object v4, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/ObjectArrayDeserializer;->_elementTypeDeserializer:Lcom/flurry/org/codehaus/jackson/map/TypeDeserializer;

    if-nez v4, :cond_4

    .line 185
    iget-object v4, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/ObjectArrayDeserializer;->_elementDeserializer:Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;

    invoke-virtual {v4, p1, p2}, Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;->deserialize(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v3

    .local v3, "value":Ljava/lang/Object;
    goto :goto_1

    .line 187
    .end local v3    # "value":Ljava/lang/Object;
    :cond_4
    iget-object v4, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/ObjectArrayDeserializer;->_elementDeserializer:Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;

    iget-object v5, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/ObjectArrayDeserializer;->_elementTypeDeserializer:Lcom/flurry/org/codehaus/jackson/map/TypeDeserializer;

    invoke-virtual {v4, p1, p2, v5}, Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;->deserializeWithType(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;Lcom/flurry/org/codehaus/jackson/map/TypeDeserializer;)Ljava/lang/Object;

    move-result-object v3

    .restart local v3    # "value":Ljava/lang/Object;
    goto :goto_1

    .line 195
    .end local v3    # "value":Ljava/lang/Object;
    :cond_5
    iget-object v4, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/ObjectArrayDeserializer;->_elementClass:Ljava/lang/Class;

    invoke-static {v4, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Object;

    move-object v0, v4

    check-cast v0, [Ljava/lang/Object;

    .restart local v0    # "result":[Ljava/lang/Object;
    goto :goto_2
.end method


# virtual methods
.method public bridge synthetic deserialize(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lcom/flurry/org/codehaus/jackson/JsonParser;
    .param p2, "x1"    # Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 18
    invoke-virtual {p0, p1, p2}, Lcom/flurry/org/codehaus/jackson/map/deser/std/ObjectArrayDeserializer;->deserialize(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public deserialize(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;)[Ljava/lang/Object;
    .locals 9
    .param p1, "jp"    # Lcom/flurry/org/codehaus/jackson/JsonParser;
    .param p2, "ctxt"    # Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 87
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->isExpectedStartArrayToken()Z

    move-result v8

    if-nez v8, :cond_0

    .line 88
    invoke-direct {p0, p1, p2}, Lcom/flurry/org/codehaus/jackson/map/deser/std/ObjectArrayDeserializer;->handleNonArray(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;)[Ljava/lang/Object;

    move-result-object v4

    .line 123
    :goto_0
    return-object v4

    .line 91
    :cond_0
    invoke-virtual {p2}, Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;->leaseObjectBuffer()Lcom/flurry/org/codehaus/jackson/map/util/ObjectBuffer;

    move-result-object v0

    .line 92
    .local v0, "buffer":Lcom/flurry/org/codehaus/jackson/map/util/ObjectBuffer;
    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/map/util/ObjectBuffer;->resetAndStart()[Ljava/lang/Object;

    move-result-object v1

    .line 93
    .local v1, "chunk":[Ljava/lang/Object;
    const/4 v2, 0x0

    .line 95
    .local v2, "ix":I
    iget-object v6, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/ObjectArrayDeserializer;->_elementTypeDeserializer:Lcom/flurry/org/codehaus/jackson/map/TypeDeserializer;

    .line 97
    .local v6, "typeDeser":Lcom/flurry/org/codehaus/jackson/map/TypeDeserializer;
    :goto_1
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->nextToken()Lcom/flurry/org/codehaus/jackson/JsonToken;

    move-result-object v5

    .local v5, "t":Lcom/flurry/org/codehaus/jackson/JsonToken;
    sget-object v8, Lcom/flurry/org/codehaus/jackson/JsonToken;->END_ARRAY:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-eq v5, v8, :cond_4

    .line 101
    sget-object v8, Lcom/flurry/org/codehaus/jackson/JsonToken;->VALUE_NULL:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-ne v5, v8, :cond_2

    .line 102
    const/4 v7, 0x0

    .line 108
    :goto_2
    array-length v8, v1

    if-lt v2, v8, :cond_1

    .line 109
    invoke-virtual {v0, v1}, Lcom/flurry/org/codehaus/jackson/map/util/ObjectBuffer;->appendCompletedChunk([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    .line 110
    const/4 v2, 0x0

    .line 112
    :cond_1
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "ix":I
    .local v3, "ix":I
    aput-object v7, v1, v2

    move v2, v3

    .line 113
    .end local v3    # "ix":I
    .restart local v2    # "ix":I
    goto :goto_1

    .line 103
    :cond_2
    if-nez v6, :cond_3

    .line 104
    iget-object v8, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/ObjectArrayDeserializer;->_elementDeserializer:Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;

    invoke-virtual {v8, p1, p2}, Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;->deserialize(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v7

    .local v7, "value":Ljava/lang/Object;
    goto :goto_2

    .line 106
    .end local v7    # "value":Ljava/lang/Object;
    :cond_3
    iget-object v8, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/ObjectArrayDeserializer;->_elementDeserializer:Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;

    invoke-virtual {v8, p1, p2, v6}, Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;->deserializeWithType(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;Lcom/flurry/org/codehaus/jackson/map/TypeDeserializer;)Ljava/lang/Object;

    move-result-object v7

    .restart local v7    # "value":Ljava/lang/Object;
    goto :goto_2

    .line 117
    .end local v7    # "value":Ljava/lang/Object;
    :cond_4
    iget-boolean v8, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/ObjectArrayDeserializer;->_untyped:Z

    if-eqz v8, :cond_5

    .line 118
    invoke-virtual {v0, v1, v2}, Lcom/flurry/org/codehaus/jackson/map/util/ObjectBuffer;->completeAndClearBuffer([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    .line 122
    .local v4, "result":[Ljava/lang/Object;
    :goto_3
    invoke-virtual {p2, v0}, Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;->returnObjectBuffer(Lcom/flurry/org/codehaus/jackson/map/util/ObjectBuffer;)V

    goto :goto_0

    .line 120
    .end local v4    # "result":[Ljava/lang/Object;
    :cond_5
    iget-object v8, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/ObjectArrayDeserializer;->_elementClass:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2, v8}, Lcom/flurry/org/codehaus/jackson/map/util/ObjectBuffer;->completeAndClearBuffer([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    .restart local v4    # "result":[Ljava/lang/Object;
    goto :goto_3
.end method

.method protected deserializeFromBase64(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;)[Ljava/lang/Byte;
    .locals 5
    .param p1, "jp"    # Lcom/flurry/org/codehaus/jackson/JsonParser;
    .param p2, "ctxt"    # Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 147
    invoke-virtual {p2}, Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;->getBase64Variant()Lcom/flurry/org/codehaus/jackson/Base64Variant;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getBinaryValue(Lcom/flurry/org/codehaus/jackson/Base64Variant;)[B

    move-result-object v0

    .line 149
    .local v0, "b":[B
    array-length v4, v0

    new-array v3, v4, [Ljava/lang/Byte;

    .line 150
    .local v3, "result":[Ljava/lang/Byte;
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v2, v0

    .local v2, "len":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 151
    aget-byte v4, v0, v1

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v3, v1

    .line 150
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 153
    :cond_0
    return-object v3
.end method

.method public bridge synthetic deserializeWithType(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;Lcom/flurry/org/codehaus/jackson/map/TypeDeserializer;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lcom/flurry/org/codehaus/jackson/JsonParser;
    .param p2, "x1"    # Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;
    .param p3, "x2"    # Lcom/flurry/org/codehaus/jackson/map/TypeDeserializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 18
    invoke-virtual {p0, p1, p2, p3}, Lcom/flurry/org/codehaus/jackson/map/deser/std/ObjectArrayDeserializer;->deserializeWithType(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;Lcom/flurry/org/codehaus/jackson/map/TypeDeserializer;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public deserializeWithType(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;Lcom/flurry/org/codehaus/jackson/map/TypeDeserializer;)[Ljava/lang/Object;
    .locals 1
    .param p1, "jp"    # Lcom/flurry/org/codehaus/jackson/JsonParser;
    .param p2, "ctxt"    # Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;
    .param p3, "typeDeserializer"    # Lcom/flurry/org/codehaus/jackson/map/TypeDeserializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 134
    invoke-virtual {p3, p1, p2}, Lcom/flurry/org/codehaus/jackson/map/TypeDeserializer;->deserializeTypedFromArray(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    return-object v0
.end method

.method public getContentDeserializer()Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 73
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/ObjectArrayDeserializer;->_elementDeserializer:Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;

    return-object v0
.end method

.method public getContentType()Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/ObjectArrayDeserializer;->_arrayType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->getContentType()Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v0

    return-object v0
.end method
