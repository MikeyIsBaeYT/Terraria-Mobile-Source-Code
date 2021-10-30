.class public Lcom/flurry/org/codehaus/jackson/map/ser/std/ObjectArraySerializer;
.super Lcom/flurry/org/codehaus/jackson/map/ser/std/StdArraySerializers$ArraySerializerBase;
.source "ObjectArraySerializer.java"

# interfaces
.implements Lcom/flurry/org/codehaus/jackson/map/ResolvableSerializer;


# annotations
.annotation runtime Lcom/flurry/org/codehaus/jackson/map/annotate/JacksonStdImpl;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/flurry/org/codehaus/jackson/map/ser/std/StdArraySerializers$ArraySerializerBase",
        "<[",
        "Ljava/lang/Object;",
        ">;",
        "Lcom/flurry/org/codehaus/jackson/map/ResolvableSerializer;"
    }
.end annotation


# instance fields
.field protected _dynamicSerializers:Lcom/flurry/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;

.field protected _elementSerializer:Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected final _elementType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

.field protected final _staticTyping:Z


# direct methods
.method public constructor <init>(Lcom/flurry/org/codehaus/jackson/type/JavaType;ZLcom/flurry/org/codehaus/jackson/map/TypeSerializer;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)V
    .locals 6
    .param p1, "elemType"    # Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .param p2, "staticTyping"    # Z
    .param p3, "vts"    # Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;
    .param p4, "property"    # Lcom/flurry/org/codehaus/jackson/map/BeanProperty;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 67
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/flurry/org/codehaus/jackson/map/ser/std/ObjectArraySerializer;-><init>(Lcom/flurry/org/codehaus/jackson/type/JavaType;ZLcom/flurry/org/codehaus/jackson/map/TypeSerializer;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;)V

    .line 68
    return-void
.end method

.method public constructor <init>(Lcom/flurry/org/codehaus/jackson/type/JavaType;ZLcom/flurry/org/codehaus/jackson/map/TypeSerializer;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;)V
    .locals 1
    .param p1, "elemType"    # Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .param p2, "staticTyping"    # Z
    .param p3, "vts"    # Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;
    .param p4, "property"    # Lcom/flurry/org/codehaus/jackson/map/BeanProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/type/JavaType;",
            "Z",
            "Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;",
            "Lcom/flurry/org/codehaus/jackson/map/BeanProperty;",
            "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 73
    .local p5, "elementSerializer":Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    const-class v0, [Ljava/lang/Object;

    invoke-direct {p0, v0, p3, p4}, Lcom/flurry/org/codehaus/jackson/map/ser/std/StdArraySerializers$ArraySerializerBase;-><init>(Ljava/lang/Class;Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)V

    .line 74
    iput-object p1, p0, Lcom/flurry/org/codehaus/jackson/map/ser/std/ObjectArraySerializer;->_elementType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    .line 75
    iput-boolean p2, p0, Lcom/flurry/org/codehaus/jackson/map/ser/std/ObjectArraySerializer;->_staticTyping:Z

    .line 76
    invoke-static {}, Lcom/flurry/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;->emptyMap()Lcom/flurry/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ser/std/ObjectArraySerializer;->_dynamicSerializers:Lcom/flurry/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;

    .line 77
    iput-object p5, p0, Lcom/flurry/org/codehaus/jackson/map/ser/std/ObjectArraySerializer;->_elementSerializer:Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;

    .line 78
    return-void
.end method


# virtual methods
.method protected final _findAndAddDynamic(Lcom/flurry/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;)Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;
    .locals 2
    .param p1, "map"    # Lcom/flurry/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;
    .param p2, "type"    # Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .param p3, "provider"    # Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;",
            "Lcom/flurry/org/codehaus/jackson/type/JavaType;",
            "Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;",
            ")",
            "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 273
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/ser/std/ObjectArraySerializer;->_property:Lcom/flurry/org/codehaus/jackson/map/BeanProperty;

    invoke-virtual {p1, p2, p3, v1}, Lcom/flurry/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;->findAndAddSerializer(Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)Lcom/flurry/org/codehaus/jackson/map/ser/impl/PropertySerializerMap$SerializerAndMapResult;

    move-result-object v0

    .line 275
    .local v0, "result":Lcom/flurry/org/codehaus/jackson/map/ser/impl/PropertySerializerMap$SerializerAndMapResult;
    iget-object v1, v0, Lcom/flurry/org/codehaus/jackson/map/ser/impl/PropertySerializerMap$SerializerAndMapResult;->map:Lcom/flurry/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;

    if-eq p1, v1, :cond_0

    .line 276
    iget-object v1, v0, Lcom/flurry/org/codehaus/jackson/map/ser/impl/PropertySerializerMap$SerializerAndMapResult;->map:Lcom/flurry/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;

    iput-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/ser/std/ObjectArraySerializer;->_dynamicSerializers:Lcom/flurry/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;

    .line 278
    :cond_0
    iget-object v1, v0, Lcom/flurry/org/codehaus/jackson/map/ser/impl/PropertySerializerMap$SerializerAndMapResult;->serializer:Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;

    return-object v1
.end method

.method protected final _findAndAddDynamic(Lcom/flurry/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;Ljava/lang/Class;Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;)Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;
    .locals 2
    .param p1, "map"    # Lcom/flurry/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;
    .param p3, "provider"    # Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;",
            ")",
            "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 259
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/ser/std/ObjectArraySerializer;->_property:Lcom/flurry/org/codehaus/jackson/map/BeanProperty;

    invoke-virtual {p1, p2, p3, v1}, Lcom/flurry/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;->findAndAddSerializer(Ljava/lang/Class;Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)Lcom/flurry/org/codehaus/jackson/map/ser/impl/PropertySerializerMap$SerializerAndMapResult;

    move-result-object v0

    .line 261
    .local v0, "result":Lcom/flurry/org/codehaus/jackson/map/ser/impl/PropertySerializerMap$SerializerAndMapResult;
    iget-object v1, v0, Lcom/flurry/org/codehaus/jackson/map/ser/impl/PropertySerializerMap$SerializerAndMapResult;->map:Lcom/flurry/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;

    if-eq p1, v1, :cond_0

    .line 262
    iget-object v1, v0, Lcom/flurry/org/codehaus/jackson/map/ser/impl/PropertySerializerMap$SerializerAndMapResult;->map:Lcom/flurry/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;

    iput-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/ser/std/ObjectArraySerializer;->_dynamicSerializers:Lcom/flurry/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;

    .line 264
    :cond_0
    iget-object v1, v0, Lcom/flurry/org/codehaus/jackson/map/ser/impl/PropertySerializerMap$SerializerAndMapResult;->serializer:Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;

    return-object v1
.end method

.method public _withValueTypeSerializer(Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;)Lcom/flurry/org/codehaus/jackson/map/ser/std/ContainerSerializerBase;
    .locals 6
    .param p1, "vts"    # Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;",
            ")",
            "Lcom/flurry/org/codehaus/jackson/map/ser/std/ContainerSerializerBase",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 83
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/ser/std/ObjectArraySerializer;

    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/ser/std/ObjectArraySerializer;->_elementType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    iget-boolean v2, p0, Lcom/flurry/org/codehaus/jackson/map/ser/std/ObjectArraySerializer;->_staticTyping:Z

    iget-object v4, p0, Lcom/flurry/org/codehaus/jackson/map/ser/std/ObjectArraySerializer;->_property:Lcom/flurry/org/codehaus/jackson/map/BeanProperty;

    iget-object v5, p0, Lcom/flurry/org/codehaus/jackson/map/ser/std/ObjectArraySerializer;->_elementSerializer:Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/flurry/org/codehaus/jackson/map/ser/std/ObjectArraySerializer;-><init>(Lcom/flurry/org/codehaus/jackson/type/JavaType;ZLcom/flurry/org/codehaus/jackson/map/TypeSerializer;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;)V

    return-object v0
.end method

.method public getSchema(Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;Ljava/lang/reflect/Type;)Lcom/flurry/org/codehaus/jackson/JsonNode;
    .locals 7
    .param p1, "provider"    # Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;
    .param p2, "typeHint"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 220
    const-string v5, "array"

    const/4 v6, 0x1

    invoke-virtual {p0, v5, v6}, Lcom/flurry/org/codehaus/jackson/map/ser/std/ObjectArraySerializer;->createSchemaNode(Ljava/lang/String;Z)Lcom/flurry/org/codehaus/jackson/node/ObjectNode;

    move-result-object v2

    .line 221
    .local v2, "o":Lcom/flurry/org/codehaus/jackson/node/ObjectNode;
    if-eqz p2, :cond_0

    .line 222
    invoke-virtual {p1, p2}, Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;->constructType(Ljava/lang/reflect/Type;)Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v1

    .line 223
    .local v1, "javaType":Lcom/flurry/org/codehaus/jackson/type/JavaType;
    invoke-virtual {v1}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->isArrayType()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 224
    check-cast v1, Lcom/flurry/org/codehaus/jackson/map/type/ArrayType;

    .end local v1    # "javaType":Lcom/flurry/org/codehaus/jackson/type/JavaType;
    invoke-virtual {v1}, Lcom/flurry/org/codehaus/jackson/map/type/ArrayType;->getContentType()Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    .line 226
    .local v0, "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v5, Ljava/lang/Object;

    if-ne v0, v5, :cond_1

    .line 227
    const-string v5, "items"

    invoke-static {}, Lcom/flurry/org/codehaus/jackson/schema/JsonSchema;->getDefaultSchemaNode()Lcom/flurry/org/codehaus/jackson/JsonNode;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lcom/flurry/org/codehaus/jackson/node/ObjectNode;->put(Ljava/lang/String;Lcom/flurry/org/codehaus/jackson/JsonNode;)Lcom/flurry/org/codehaus/jackson/JsonNode;

    .line 237
    .end local v0    # "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    :goto_0
    return-object v2

    .line 229
    .restart local v0    # "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    iget-object v5, p0, Lcom/flurry/org/codehaus/jackson/map/ser/std/ObjectArraySerializer;->_property:Lcom/flurry/org/codehaus/jackson/map/BeanProperty;

    invoke-virtual {p1, v0, v5}, Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;->findValueSerializer(Ljava/lang/Class;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;

    move-result-object v4

    .line 230
    .local v4, "ser":Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    instance-of v5, v4, Lcom/flurry/org/codehaus/jackson/schema/SchemaAware;

    if-eqz v5, :cond_2

    check-cast v4, Lcom/flurry/org/codehaus/jackson/schema/SchemaAware;

    .end local v4    # "ser":Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    const/4 v5, 0x0

    invoke-interface {v4, p1, v5}, Lcom/flurry/org/codehaus/jackson/schema/SchemaAware;->getSchema(Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;Ljava/lang/reflect/Type;)Lcom/flurry/org/codehaus/jackson/JsonNode;

    move-result-object v3

    .line 233
    .local v3, "schemaNode":Lcom/flurry/org/codehaus/jackson/JsonNode;
    :goto_1
    const-string v5, "items"

    invoke-virtual {v2, v5, v3}, Lcom/flurry/org/codehaus/jackson/node/ObjectNode;->put(Ljava/lang/String;Lcom/flurry/org/codehaus/jackson/JsonNode;)Lcom/flurry/org/codehaus/jackson/JsonNode;

    goto :goto_0

    .line 230
    .end local v3    # "schemaNode":Lcom/flurry/org/codehaus/jackson/JsonNode;
    .restart local v4    # "ser":Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    :cond_2
    invoke-static {}, Lcom/flurry/org/codehaus/jackson/schema/JsonSchema;->getDefaultSchemaNode()Lcom/flurry/org/codehaus/jackson/JsonNode;

    move-result-object v3

    goto :goto_1
.end method

.method public resolve(Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;)V
    .locals 2
    .param p1, "provider"    # Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 248
    iget-boolean v0, p0, Lcom/flurry/org/codehaus/jackson/map/ser/std/ObjectArraySerializer;->_staticTyping:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ser/std/ObjectArraySerializer;->_elementSerializer:Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;

    if-nez v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ser/std/ObjectArraySerializer;->_elementType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/ser/std/ObjectArraySerializer;->_property:Lcom/flurry/org/codehaus/jackson/map/BeanProperty;

    invoke-virtual {p1, v0, v1}, Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;->findValueSerializer(Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ser/std/ObjectArraySerializer;->_elementSerializer:Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;

    .line 251
    :cond_0
    return-void
.end method

.method public bridge synthetic serializeContents(Ljava/lang/Object;Lcom/flurry/org/codehaus/jackson/JsonGenerator;Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Lcom/flurry/org/codehaus/jackson/JsonGenerator;
    .param p3, "x2"    # Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 29
    check-cast p1, [Ljava/lang/Object;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Lcom/flurry/org/codehaus/jackson/map/ser/std/ObjectArraySerializer;->serializeContents([Ljava/lang/Object;Lcom/flurry/org/codehaus/jackson/JsonGenerator;Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;)V

    return-void
.end method

.method public serializeContents([Ljava/lang/Object;Lcom/flurry/org/codehaus/jackson/JsonGenerator;Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;)V
    .locals 10
    .param p1, "value"    # [Ljava/lang/Object;
    .param p2, "jgen"    # Lcom/flurry/org/codehaus/jackson/JsonGenerator;
    .param p3, "provider"    # Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 90
    array-length v5, p1

    .line 91
    .local v5, "len":I
    if-nez v5, :cond_1

    .line 142
    :cond_0
    :goto_0
    return-void

    .line 94
    :cond_1
    iget-object v9, p0, Lcom/flurry/org/codehaus/jackson/map/ser/std/ObjectArraySerializer;->_elementSerializer:Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;

    if-eqz v9, :cond_2

    .line 95
    iget-object v9, p0, Lcom/flurry/org/codehaus/jackson/map/ser/std/ObjectArraySerializer;->_elementSerializer:Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;

    invoke-virtual {p0, p1, p2, p3, v9}, Lcom/flurry/org/codehaus/jackson/map/ser/std/ObjectArraySerializer;->serializeContentsUsing([Ljava/lang/Object;Lcom/flurry/org/codehaus/jackson/JsonGenerator;Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;)V

    goto :goto_0

    .line 98
    :cond_2
    iget-object v9, p0, Lcom/flurry/org/codehaus/jackson/map/ser/std/ObjectArraySerializer;->_valueTypeSerializer:Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;

    if-eqz v9, :cond_3

    .line 99
    invoke-virtual {p0, p1, p2, p3}, Lcom/flurry/org/codehaus/jackson/map/ser/std/ObjectArraySerializer;->serializeTypedContents([Ljava/lang/Object;Lcom/flurry/org/codehaus/jackson/JsonGenerator;Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;)V

    goto :goto_0

    .line 102
    :cond_3
    const/4 v3, 0x0

    .line 103
    .local v3, "i":I
    const/4 v2, 0x0

    .line 105
    .local v2, "elem":Ljava/lang/Object;
    :try_start_0
    iget-object v7, p0, Lcom/flurry/org/codehaus/jackson/map/ser/std/ObjectArraySerializer;->_dynamicSerializers:Lcom/flurry/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;

    .line 106
    .end local v2    # "elem":Ljava/lang/Object;
    .local v7, "serializers":Lcom/flurry/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;
    :goto_1
    if-ge v3, v5, :cond_0

    .line 107
    aget-object v2, p1, v3

    .line 108
    .restart local v2    # "elem":Ljava/lang/Object;
    if-nez v2, :cond_4

    .line 109
    invoke-virtual {p3, p2}, Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;->defaultSerializeNull(Lcom/flurry/org/codehaus/jackson/JsonGenerator;)V

    .line 106
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 112
    :cond_4
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 113
    .local v0, "cc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v7, v0}, Lcom/flurry/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;->serializerFor(Ljava/lang/Class;)Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;

    move-result-object v6

    .line 114
    .local v6, "serializer":Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    if-nez v6, :cond_5

    .line 116
    iget-object v9, p0, Lcom/flurry/org/codehaus/jackson/map/ser/std/ObjectArraySerializer;->_elementType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    invoke-virtual {v9}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->hasGenericTypes()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 117
    iget-object v9, p0, Lcom/flurry/org/codehaus/jackson/map/ser/std/ObjectArraySerializer;->_elementType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    invoke-virtual {p3, v9, v0}, Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;->constructSpecializedType(Lcom/flurry/org/codehaus/jackson/type/JavaType;Ljava/lang/Class;)Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v9

    invoke-virtual {p0, v7, v9, p3}, Lcom/flurry/org/codehaus/jackson/map/ser/std/ObjectArraySerializer;->_findAndAddDynamic(Lcom/flurry/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;)Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;

    move-result-object v6

    .line 123
    :cond_5
    :goto_3
    invoke-virtual {v6, v2, p2, p3}, Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;->serialize(Ljava/lang/Object;Lcom/flurry/org/codehaus/jackson/JsonGenerator;Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_2

    .line 125
    .end local v0    # "cc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "elem":Ljava/lang/Object;
    .end local v6    # "serializer":Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    .end local v7    # "serializers":Lcom/flurry/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;
    :catch_0
    move-exception v4

    .line 126
    .local v4, "ioe":Ljava/io/IOException;
    throw v4

    .line 120
    .end local v4    # "ioe":Ljava/io/IOException;
    .restart local v0    # "cc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v2    # "elem":Ljava/lang/Object;
    .restart local v6    # "serializer":Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    .restart local v7    # "serializers":Lcom/flurry/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;
    :cond_6
    :try_start_1
    invoke-virtual {p0, v7, v0, p3}, Lcom/flurry/org/codehaus/jackson/map/ser/std/ObjectArraySerializer;->_findAndAddDynamic(Lcom/flurry/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;Ljava/lang/Class;Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;)Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v6

    goto :goto_3

    .line 127
    .end local v0    # "cc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "elem":Ljava/lang/Object;
    .end local v6    # "serializer":Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    .end local v7    # "serializers":Lcom/flurry/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;
    :catch_1
    move-exception v1

    .line 133
    .local v1, "e":Ljava/lang/Exception;
    move-object v8, v1

    .line 134
    .local v8, "t":Ljava/lang/Throwable;
    :goto_4
    instance-of v9, v8, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v9, :cond_7

    invoke-virtual {v8}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v9

    if-eqz v9, :cond_7

    .line 135
    invoke-virtual {v8}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v8

    goto :goto_4

    .line 137
    :cond_7
    instance-of v9, v8, Ljava/lang/Error;

    if-eqz v9, :cond_8

    .line 138
    check-cast v8, Ljava/lang/Error;

    .end local v8    # "t":Ljava/lang/Throwable;
    throw v8

    .line 140
    .restart local v8    # "t":Ljava/lang/Throwable;
    :cond_8
    invoke-static {v8, v2, v3}, Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;->wrapWithPath(Ljava/lang/Throwable;Ljava/lang/Object;I)Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;

    move-result-object v9

    throw v9
.end method

.method public serializeContentsUsing([Ljava/lang/Object;Lcom/flurry/org/codehaus/jackson/JsonGenerator;Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;)V
    .locals 8
    .param p1, "value"    # [Ljava/lang/Object;
    .param p2, "jgen"    # Lcom/flurry/org/codehaus/jackson/JsonGenerator;
    .param p3, "provider"    # Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            "Lcom/flurry/org/codehaus/jackson/JsonGenerator;",
            "Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;",
            "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 148
    .local p4, "ser":Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    array-length v4, p1

    .line 149
    .local v4, "len":I
    iget-object v6, p0, Lcom/flurry/org/codehaus/jackson/map/ser/std/ObjectArraySerializer;->_valueTypeSerializer:Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;

    .line 151
    .local v6, "typeSer":Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;
    const/4 v2, 0x0

    .line 152
    .local v2, "i":I
    const/4 v1, 0x0

    .line 154
    :goto_0
    if-ge v2, v4, :cond_4

    .line 155
    :try_start_0
    aget-object v1, p1, v2

    .line 156
    .local v1, "elem":Ljava/lang/Object;
    if-nez v1, :cond_0

    .line 157
    invoke-virtual {p3, p2}, Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;->defaultSerializeNull(Lcom/flurry/org/codehaus/jackson/JsonGenerator;)V

    .line 154
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 160
    :cond_0
    if-nez v6, :cond_1

    .line 161
    invoke-virtual {p4, v1, p2, p3}, Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;->serialize(Ljava/lang/Object;Lcom/flurry/org/codehaus/jackson/JsonGenerator;Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 166
    .end local v1    # "elem":Ljava/lang/Object;
    :catch_0
    move-exception v3

    .line 167
    .local v3, "ioe":Ljava/io/IOException;
    throw v3

    .line 163
    .end local v3    # "ioe":Ljava/io/IOException;
    .restart local v1    # "elem":Ljava/lang/Object;
    :cond_1
    :try_start_1
    invoke-virtual {p4, v1, p2, p3, v6}, Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;->serializeWithType(Ljava/lang/Object;Lcom/flurry/org/codehaus/jackson/JsonGenerator;Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 168
    .end local v1    # "elem":Ljava/lang/Object;
    :catch_1
    move-exception v0

    .line 169
    .local v0, "e":Ljava/lang/Exception;
    move-object v5, v0

    .line 170
    .local v5, "t":Ljava/lang/Throwable;
    :goto_2
    instance-of v7, v5, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v7, :cond_2

    invoke-virtual {v5}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 171
    invoke-virtual {v5}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    goto :goto_2

    .line 173
    :cond_2
    instance-of v7, v5, Ljava/lang/Error;

    if-eqz v7, :cond_3

    .line 174
    check-cast v5, Ljava/lang/Error;

    .end local v5    # "t":Ljava/lang/Throwable;
    throw v5

    .line 176
    .restart local v5    # "t":Ljava/lang/Throwable;
    :cond_3
    invoke-static {v5, v1, v2}, Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;->wrapWithPath(Ljava/lang/Throwable;Ljava/lang/Object;I)Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;

    move-result-object v7

    throw v7

    .line 178
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v5    # "t":Ljava/lang/Throwable;
    :cond_4
    return-void
.end method

.method public serializeTypedContents([Ljava/lang/Object;Lcom/flurry/org/codehaus/jackson/JsonGenerator;Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;)V
    .locals 11
    .param p1, "value"    # [Ljava/lang/Object;
    .param p2, "jgen"    # Lcom/flurry/org/codehaus/jackson/JsonGenerator;
    .param p3, "provider"    # Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 183
    array-length v5, p1

    .line 184
    .local v5, "len":I
    iget-object v9, p0, Lcom/flurry/org/codehaus/jackson/map/ser/std/ObjectArraySerializer;->_valueTypeSerializer:Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;

    .line 185
    .local v9, "typeSer":Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;
    const/4 v3, 0x0

    .line 186
    .local v3, "i":I
    const/4 v2, 0x0

    .line 188
    .local v2, "elem":Ljava/lang/Object;
    :try_start_0
    iget-object v7, p0, Lcom/flurry/org/codehaus/jackson/map/ser/std/ObjectArraySerializer;->_dynamicSerializers:Lcom/flurry/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;

    .line 189
    .end local v2    # "elem":Ljava/lang/Object;
    .local v7, "serializers":Lcom/flurry/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;
    :goto_0
    if-ge v3, v5, :cond_4

    .line 190
    aget-object v2, p1, v3

    .line 191
    .restart local v2    # "elem":Ljava/lang/Object;
    if-nez v2, :cond_0

    .line 192
    invoke-virtual {p3, p2}, Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;->defaultSerializeNull(Lcom/flurry/org/codehaus/jackson/JsonGenerator;)V

    .line 189
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 195
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 196
    .local v0, "cc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v7, v0}, Lcom/flurry/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;->serializerFor(Ljava/lang/Class;)Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;

    move-result-object v6

    .line 197
    .local v6, "serializer":Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    if-nez v6, :cond_1

    .line 198
    invoke-virtual {p0, v7, v0, p3}, Lcom/flurry/org/codehaus/jackson/map/ser/std/ObjectArraySerializer;->_findAndAddDynamic(Lcom/flurry/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;Ljava/lang/Class;Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;)Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;

    move-result-object v6

    .line 200
    :cond_1
    invoke-virtual {v6, v2, p2, p3, v9}, Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;->serializeWithType(Ljava/lang/Object;Lcom/flurry/org/codehaus/jackson/JsonGenerator;Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 202
    .end local v0    # "cc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "elem":Ljava/lang/Object;
    .end local v6    # "serializer":Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    .end local v7    # "serializers":Lcom/flurry/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;
    :catch_0
    move-exception v4

    .line 203
    .local v4, "ioe":Ljava/io/IOException;
    throw v4

    .line 204
    .end local v4    # "ioe":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 205
    .local v1, "e":Ljava/lang/Exception;
    move-object v8, v1

    .line 206
    .local v8, "t":Ljava/lang/Throwable;
    :goto_2
    instance-of v10, v8, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v10, :cond_2

    invoke-virtual {v8}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v10

    if-eqz v10, :cond_2

    .line 207
    invoke-virtual {v8}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v8

    goto :goto_2

    .line 209
    :cond_2
    instance-of v10, v8, Ljava/lang/Error;

    if-eqz v10, :cond_3

    .line 210
    check-cast v8, Ljava/lang/Error;

    .end local v8    # "t":Ljava/lang/Throwable;
    throw v8

    .line 212
    .restart local v8    # "t":Ljava/lang/Throwable;
    :cond_3
    invoke-static {v8, v2, v3}, Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;->wrapWithPath(Ljava/lang/Throwable;Ljava/lang/Object;I)Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;

    move-result-object v10

    throw v10

    .line 214
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v8    # "t":Ljava/lang/Throwable;
    .restart local v7    # "serializers":Lcom/flurry/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;
    :cond_4
    return-void
.end method
