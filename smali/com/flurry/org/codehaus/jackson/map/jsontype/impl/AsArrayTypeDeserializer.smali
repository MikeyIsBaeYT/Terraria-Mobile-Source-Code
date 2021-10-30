.class public Lcom/flurry/org/codehaus/jackson/map/jsontype/impl/AsArrayTypeDeserializer;
.super Lcom/flurry/org/codehaus/jackson/map/jsontype/impl/TypeDeserializerBase;
.source "AsArrayTypeDeserializer.java"


# direct methods
.method public constructor <init>(Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/jsontype/TypeIdResolver;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)V
    .locals 1
    .param p1, "bt"    # Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .param p2, "idRes"    # Lcom/flurry/org/codehaus/jackson/map/jsontype/TypeIdResolver;
    .param p3, "property"    # Lcom/flurry/org/codehaus/jackson/map/BeanProperty;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 24
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/flurry/org/codehaus/jackson/map/jsontype/impl/AsArrayTypeDeserializer;-><init>(Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/jsontype/TypeIdResolver;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;Ljava/lang/Class;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/jsontype/TypeIdResolver;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;Ljava/lang/Class;)V
    .locals 0
    .param p1, "bt"    # Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .param p2, "idRes"    # Lcom/flurry/org/codehaus/jackson/map/jsontype/TypeIdResolver;
    .param p3, "property"    # Lcom/flurry/org/codehaus/jackson/map/BeanProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/type/JavaType;",
            "Lcom/flurry/org/codehaus/jackson/map/jsontype/TypeIdResolver;",
            "Lcom/flurry/org/codehaus/jackson/map/BeanProperty;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 30
    .local p4, "defaultImpl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/flurry/org/codehaus/jackson/map/jsontype/impl/TypeDeserializerBase;-><init>(Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/jsontype/TypeIdResolver;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;Ljava/lang/Class;)V

    .line 31
    return-void
.end method

.method private final _deserialize(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;
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
    .line 86
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->isExpectedStartArrayToken()Z

    move-result v1

    .line 87
    .local v1, "hadStartArray":Z
    invoke-virtual {p0, p1, p2}, Lcom/flurry/org/codehaus/jackson/map/jsontype/impl/AsArrayTypeDeserializer;->_locateTypeId(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p2, v3}, Lcom/flurry/org/codehaus/jackson/map/jsontype/impl/AsArrayTypeDeserializer;->_findDeserializer(Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;

    move-result-object v0

    .line 88
    .local v0, "deser":Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer<Ljava/lang/Object;>;"
    invoke-virtual {v0, p1, p2}, Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;->deserialize(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v2

    .line 90
    .local v2, "value":Ljava/lang/Object;
    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->nextToken()Lcom/flurry/org/codehaus/jackson/JsonToken;

    move-result-object v3

    sget-object v4, Lcom/flurry/org/codehaus/jackson/JsonToken;->END_ARRAY:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-eq v3, v4, :cond_0

    .line 91
    sget-object v3, Lcom/flurry/org/codehaus/jackson/JsonToken;->END_ARRAY:Lcom/flurry/org/codehaus/jackson/JsonToken;

    const-string v4, "expected closing END_ARRAY after type information and deserialized value"

    invoke-virtual {p2, p1, v3, v4}, Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;->wrongTokenException(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/JsonToken;Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;

    move-result-object v3

    throw v3

    .line 94
    :cond_0
    return-object v2
.end method


# virtual methods
.method protected final _locateTypeId(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/String;
    .locals 4
    .param p1, "jp"    # Lcom/flurry/org/codehaus/jackson/JsonParser;
    .param p2, "ctxt"    # Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 100
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->isExpectedStartArrayToken()Z

    move-result v1

    if-nez v1, :cond_1

    .line 104
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/jsontype/impl/AsArrayTypeDeserializer;->_idResolver:Lcom/flurry/org/codehaus/jackson/map/jsontype/TypeIdResolver;

    instance-of v1, v1, Lcom/flurry/org/codehaus/jackson/map/jsontype/impl/TypeIdResolverBase;

    if-eqz v1, :cond_0

    .line 105
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/jsontype/impl/AsArrayTypeDeserializer;->_defaultImpl:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    if-eqz v1, :cond_0

    .line 106
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/jsontype/impl/AsArrayTypeDeserializer;->_idResolver:Lcom/flurry/org/codehaus/jackson/map/jsontype/TypeIdResolver;

    check-cast v1, Lcom/flurry/org/codehaus/jackson/map/jsontype/impl/TypeIdResolverBase;

    invoke-virtual {v1}, Lcom/flurry/org/codehaus/jackson/map/jsontype/impl/TypeIdResolverBase;->idFromBaseType()Ljava/lang/String;

    move-result-object v0

    .line 124
    :goto_0
    return-object v0

    .line 109
    :cond_0
    sget-object v1, Lcom/flurry/org/codehaus/jackson/JsonToken;->START_ARRAY:Lcom/flurry/org/codehaus/jackson/JsonToken;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "need JSON Array to contain As.WRAPPER_ARRAY type information for class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/map/jsontype/impl/AsArrayTypeDeserializer;->baseTypeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, p1, v1, v2}, Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;->wrongTokenException(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/JsonToken;Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;

    move-result-object v1

    throw v1

    .line 113
    :cond_1
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->nextToken()Lcom/flurry/org/codehaus/jackson/JsonToken;

    move-result-object v1

    sget-object v2, Lcom/flurry/org/codehaus/jackson/JsonToken;->VALUE_STRING:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-eq v1, v2, :cond_3

    .line 114
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/jsontype/impl/AsArrayTypeDeserializer;->_idResolver:Lcom/flurry/org/codehaus/jackson/map/jsontype/TypeIdResolver;

    instance-of v1, v1, Lcom/flurry/org/codehaus/jackson/map/jsontype/impl/TypeIdResolverBase;

    if-eqz v1, :cond_2

    .line 115
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/jsontype/impl/AsArrayTypeDeserializer;->_defaultImpl:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    if-eqz v1, :cond_2

    .line 116
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/jsontype/impl/AsArrayTypeDeserializer;->_idResolver:Lcom/flurry/org/codehaus/jackson/map/jsontype/TypeIdResolver;

    check-cast v1, Lcom/flurry/org/codehaus/jackson/map/jsontype/impl/TypeIdResolverBase;

    invoke-virtual {v1}, Lcom/flurry/org/codehaus/jackson/map/jsontype/impl/TypeIdResolverBase;->idFromBaseType()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 119
    :cond_2
    sget-object v1, Lcom/flurry/org/codehaus/jackson/JsonToken;->VALUE_STRING:Lcom/flurry/org/codehaus/jackson/JsonToken;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "need JSON String that contains type id (for subtype of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/map/jsontype/impl/AsArrayTypeDeserializer;->baseTypeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, p1, v1, v2}, Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;->wrongTokenException(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/JsonToken;Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;

    move-result-object v1

    throw v1

    .line 122
    :cond_3
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v0

    .line 123
    .local v0, "result":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->nextToken()Lcom/flurry/org/codehaus/jackson/JsonToken;

    goto :goto_0
.end method

.method public deserializeTypedFromAny(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;
    .locals 1
    .param p1, "jp"    # Lcom/flurry/org/codehaus/jackson/JsonParser;
    .param p2, "ctxt"    # Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Lcom/flurry/org/codehaus/jackson/map/jsontype/impl/AsArrayTypeDeserializer;->_deserialize(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public deserializeTypedFromArray(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;
    .locals 1
    .param p1, "jp"    # Lcom/flurry/org/codehaus/jackson/JsonParser;
    .param p2, "ctxt"    # Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/flurry/org/codehaus/jackson/map/jsontype/impl/AsArrayTypeDeserializer;->_deserialize(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public deserializeTypedFromObject(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;
    .locals 1
    .param p1, "jp"    # Lcom/flurry/org/codehaus/jackson/JsonParser;
    .param p2, "ctxt"    # Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/flurry/org/codehaus/jackson/map/jsontype/impl/AsArrayTypeDeserializer;->_deserialize(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public deserializeTypedFromScalar(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;
    .locals 1
    .param p1, "jp"    # Lcom/flurry/org/codehaus/jackson/JsonParser;
    .param p2, "ctxt"    # Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Lcom/flurry/org/codehaus/jackson/map/jsontype/impl/AsArrayTypeDeserializer;->_deserialize(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getTypeInclusion()Lcom/flurry/org/codehaus/jackson/annotate/JsonTypeInfo$As;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/flurry/org/codehaus/jackson/annotate/JsonTypeInfo$As;->WRAPPER_ARRAY:Lcom/flurry/org/codehaus/jackson/annotate/JsonTypeInfo$As;

    return-object v0
.end method
