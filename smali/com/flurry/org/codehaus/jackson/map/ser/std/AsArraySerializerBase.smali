.class public abstract Lcom/flurry/org/codehaus/jackson/map/ser/std/AsArraySerializerBase;
.super Lcom/flurry/org/codehaus/jackson/map/ser/std/ContainerSerializerBase;
.source "AsArraySerializerBase.java"

# interfaces
.implements Lcom/flurry/org/codehaus/jackson/map/ResolvableSerializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/flurry/org/codehaus/jackson/map/ser/std/ContainerSerializerBase",
        "<TT;>;",
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

.field protected final _property:Lcom/flurry/org/codehaus/jackson/map/BeanProperty;

.field protected final _staticTyping:Z

.field protected final _valueTypeSerializer:Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;


# direct methods
.method protected constructor <init>(Ljava/lang/Class;Lcom/flurry/org/codehaus/jackson/type/JavaType;ZLcom/flurry/org/codehaus/jackson/map/TypeSerializer;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)V
    .locals 7
    .param p2, "et"    # Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .param p3, "staticTyping"    # Z
    .param p4, "vts"    # Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;
    .param p5, "property"    # Lcom/flurry/org/codehaus/jackson/map/BeanProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/flurry/org/codehaus/jackson/type/JavaType;",
            "Z",
            "Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;",
            "Lcom/flurry/org/codehaus/jackson/map/BeanProperty;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 64
    .local p0, "this":Lcom/flurry/org/codehaus/jackson/map/ser/std/AsArraySerializerBase;, "Lcom/flurry/org/codehaus/jackson/map/ser/std/AsArraySerializerBase<TT;>;"
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/flurry/org/codehaus/jackson/map/ser/std/AsArraySerializerBase;-><init>(Ljava/lang/Class;Lcom/flurry/org/codehaus/jackson/type/JavaType;ZLcom/flurry/org/codehaus/jackson/map/TypeSerializer;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;)V

    .line 65
    return-void
.end method

.method protected constructor <init>(Ljava/lang/Class;Lcom/flurry/org/codehaus/jackson/type/JavaType;ZLcom/flurry/org/codehaus/jackson/map/TypeSerializer;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;)V
    .locals 2
    .param p2, "et"    # Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .param p3, "staticTyping"    # Z
    .param p4, "vts"    # Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;
    .param p5, "property"    # Lcom/flurry/org/codehaus/jackson/map/BeanProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
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
    .local p0, "this":Lcom/flurry/org/codehaus/jackson/map/ser/std/AsArraySerializerBase;, "Lcom/flurry/org/codehaus/jackson/map/ser/std/AsArraySerializerBase<TT;>;"
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p6, "elementSerializer":Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    const/4 v0, 0x0

    .line 71
    invoke-direct {p0, p1, v0}, Lcom/flurry/org/codehaus/jackson/map/ser/std/ContainerSerializerBase;-><init>(Ljava/lang/Class;Z)V

    .line 72
    iput-object p2, p0, Lcom/flurry/org/codehaus/jackson/map/ser/std/AsArraySerializerBase;->_elementType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    .line 74
    if-nez p3, :cond_0

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->isFinal()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    iput-boolean v0, p0, Lcom/flurry/org/codehaus/jackson/map/ser/std/AsArraySerializerBase;->_staticTyping:Z

    .line 75
    iput-object p4, p0, Lcom/flurry/org/codehaus/jackson/map/ser/std/AsArraySerializerBase;->_valueTypeSerializer:Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;

    .line 76
    iput-object p5, p0, Lcom/flurry/org/codehaus/jackson/map/ser/std/AsArraySerializerBase;->_property:Lcom/flurry/org/codehaus/jackson/map/BeanProperty;

    .line 77
    iput-object p6, p0, Lcom/flurry/org/codehaus/jackson/map/ser/std/AsArraySerializerBase;->_elementSerializer:Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;

    .line 78
    invoke-static {}, Lcom/flurry/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;->emptyMap()Lcom/flurry/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ser/std/AsArraySerializerBase;->_dynamicSerializers:Lcom/flurry/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;

    .line 79
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
    .line 179
    .local p0, "this":Lcom/flurry/org/codehaus/jackson/map/ser/std/AsArraySerializerBase;, "Lcom/flurry/org/codehaus/jackson/map/ser/std/AsArraySerializerBase<TT;>;"
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/ser/std/AsArraySerializerBase;->_property:Lcom/flurry/org/codehaus/jackson/map/BeanProperty;

    invoke-virtual {p1, p2, p3, v1}, Lcom/flurry/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;->findAndAddSerializer(Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)Lcom/flurry/org/codehaus/jackson/map/ser/impl/PropertySerializerMap$SerializerAndMapResult;

    move-result-object v0

    .line 180
    .local v0, "result":Lcom/flurry/org/codehaus/jackson/map/ser/impl/PropertySerializerMap$SerializerAndMapResult;
    iget-object v1, v0, Lcom/flurry/org/codehaus/jackson/map/ser/impl/PropertySerializerMap$SerializerAndMapResult;->map:Lcom/flurry/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;

    if-eq p1, v1, :cond_0

    .line 181
    iget-object v1, v0, Lcom/flurry/org/codehaus/jackson/map/ser/impl/PropertySerializerMap$SerializerAndMapResult;->map:Lcom/flurry/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;

    iput-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/ser/std/AsArraySerializerBase;->_dynamicSerializers:Lcom/flurry/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;

    .line 183
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
    .line 165
    .local p0, "this":Lcom/flurry/org/codehaus/jackson/map/ser/std/AsArraySerializerBase;, "Lcom/flurry/org/codehaus/jackson/map/ser/std/AsArraySerializerBase<TT;>;"
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/ser/std/AsArraySerializerBase;->_property:Lcom/flurry/org/codehaus/jackson/map/BeanProperty;

    invoke-virtual {p1, p2, p3, v1}, Lcom/flurry/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;->findAndAddSerializer(Ljava/lang/Class;Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)Lcom/flurry/org/codehaus/jackson/map/ser/impl/PropertySerializerMap$SerializerAndMapResult;

    move-result-object v0

    .line 167
    .local v0, "result":Lcom/flurry/org/codehaus/jackson/map/ser/impl/PropertySerializerMap$SerializerAndMapResult;
    iget-object v1, v0, Lcom/flurry/org/codehaus/jackson/map/ser/impl/PropertySerializerMap$SerializerAndMapResult;->map:Lcom/flurry/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;

    if-eq p1, v1, :cond_0

    .line 168
    iget-object v1, v0, Lcom/flurry/org/codehaus/jackson/map/ser/impl/PropertySerializerMap$SerializerAndMapResult;->map:Lcom/flurry/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;

    iput-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/ser/std/AsArraySerializerBase;->_dynamicSerializers:Lcom/flurry/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;

    .line 170
    :cond_0
    iget-object v1, v0, Lcom/flurry/org/codehaus/jackson/map/ser/impl/PropertySerializerMap$SerializerAndMapResult;->serializer:Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;

    return-object v1
.end method

.method public getSchema(Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;Ljava/lang/reflect/Type;)Lcom/flurry/org/codehaus/jackson/JsonNode;
    .locals 8
    .param p1, "provider"    # Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;
    .param p2, "typeHint"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/flurry/org/codehaus/jackson/map/ser/std/AsArraySerializerBase;, "Lcom/flurry/org/codehaus/jackson/map/ser/std/AsArraySerializerBase<TT;>;"
    const/4 v7, 0x1

    .line 112
    const-string v6, "array"

    invoke-virtual {p0, v6, v7}, Lcom/flurry/org/codehaus/jackson/map/ser/std/AsArraySerializerBase;->createSchemaNode(Ljava/lang/String;Z)Lcom/flurry/org/codehaus/jackson/node/ObjectNode;

    move-result-object v2

    .line 113
    .local v2, "o":Lcom/flurry/org/codehaus/jackson/node/ObjectNode;
    const/4 v0, 0x0

    .line 114
    .local v0, "contentType":Lcom/flurry/org/codehaus/jackson/type/JavaType;
    if-eqz p2, :cond_0

    .line 115
    invoke-virtual {p1, p2}, Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;->constructType(Ljava/lang/reflect/Type;)Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v1

    .line 116
    .local v1, "javaType":Lcom/flurry/org/codehaus/jackson/type/JavaType;
    invoke-virtual {v1}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->getContentType()Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v0

    .line 117
    if-nez v0, :cond_0

    .line 118
    instance-of v6, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v6, :cond_0

    .line 119
    check-cast p2, Ljava/lang/reflect/ParameterizedType;

    .end local p2    # "typeHint":Ljava/lang/reflect/Type;
    invoke-interface {p2}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v5

    .line 120
    .local v5, "typeArgs":[Ljava/lang/reflect/Type;
    array-length v6, v5

    if-ne v6, v7, :cond_0

    .line 121
    const/4 v6, 0x0

    aget-object v6, v5, v6

    invoke-virtual {p1, v6}, Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;->constructType(Ljava/lang/reflect/Type;)Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v0

    .line 126
    .end local v1    # "javaType":Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .end local v5    # "typeArgs":[Ljava/lang/reflect/Type;
    :cond_0
    if-nez v0, :cond_1

    iget-object v6, p0, Lcom/flurry/org/codehaus/jackson/map/ser/std/AsArraySerializerBase;->_elementType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    if-eqz v6, :cond_1

    .line 127
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ser/std/AsArraySerializerBase;->_elementType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    .line 129
    :cond_1
    if-eqz v0, :cond_4

    .line 130
    const/4 v3, 0x0

    .line 132
    .local v3, "schemaNode":Lcom/flurry/org/codehaus/jackson/JsonNode;
    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v6

    const-class v7, Ljava/lang/Object;

    if-eq v6, v7, :cond_2

    .line 133
    iget-object v6, p0, Lcom/flurry/org/codehaus/jackson/map/ser/std/AsArraySerializerBase;->_property:Lcom/flurry/org/codehaus/jackson/map/BeanProperty;

    invoke-virtual {p1, v0, v6}, Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;->findValueSerializer(Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;

    move-result-object v4

    .line 134
    .local v4, "ser":Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    instance-of v6, v4, Lcom/flurry/org/codehaus/jackson/schema/SchemaAware;

    if-eqz v6, :cond_2

    .line 135
    check-cast v4, Lcom/flurry/org/codehaus/jackson/schema/SchemaAware;

    .end local v4    # "ser":Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    const/4 v6, 0x0

    invoke-interface {v4, p1, v6}, Lcom/flurry/org/codehaus/jackson/schema/SchemaAware;->getSchema(Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;Ljava/lang/reflect/Type;)Lcom/flurry/org/codehaus/jackson/JsonNode;

    move-result-object v3

    .line 138
    :cond_2
    if-nez v3, :cond_3

    .line 139
    invoke-static {}, Lcom/flurry/org/codehaus/jackson/schema/JsonSchema;->getDefaultSchemaNode()Lcom/flurry/org/codehaus/jackson/JsonNode;

    move-result-object v3

    .line 141
    :cond_3
    const-string v6, "items"

    invoke-virtual {v2, v6, v3}, Lcom/flurry/org/codehaus/jackson/node/ObjectNode;->put(Ljava/lang/String;Lcom/flurry/org/codehaus/jackson/JsonNode;)Lcom/flurry/org/codehaus/jackson/JsonNode;

    .line 143
    .end local v3    # "schemaNode":Lcom/flurry/org/codehaus/jackson/JsonNode;
    :cond_4
    return-object v2
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
    .line 154
    .local p0, "this":Lcom/flurry/org/codehaus/jackson/map/ser/std/AsArraySerializerBase;, "Lcom/flurry/org/codehaus/jackson/map/ser/std/AsArraySerializerBase<TT;>;"
    iget-boolean v0, p0, Lcom/flurry/org/codehaus/jackson/map/ser/std/AsArraySerializerBase;->_staticTyping:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ser/std/AsArraySerializerBase;->_elementType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ser/std/AsArraySerializerBase;->_elementSerializer:Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;

    if-nez v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ser/std/AsArraySerializerBase;->_elementType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/ser/std/AsArraySerializerBase;->_property:Lcom/flurry/org/codehaus/jackson/map/BeanProperty;

    invoke-virtual {p1, v0, v1}, Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;->findValueSerializer(Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ser/std/AsArraySerializerBase;->_elementSerializer:Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;

    .line 157
    :cond_0
    return-void
.end method

.method public final serialize(Ljava/lang/Object;Lcom/flurry/org/codehaus/jackson/JsonGenerator;Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;)V
    .locals 0
    .param p2, "jgen"    # Lcom/flurry/org/codehaus/jackson/JsonGenerator;
    .param p3, "provider"    # Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/flurry/org/codehaus/jackson/JsonGenerator;",
            "Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 85
    .local p0, "this":Lcom/flurry/org/codehaus/jackson/map/ser/std/AsArraySerializerBase;, "Lcom/flurry/org/codehaus/jackson/map/ser/std/AsArraySerializerBase<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    invoke-virtual {p2}, Lcom/flurry/org/codehaus/jackson/JsonGenerator;->writeStartArray()V

    .line 86
    invoke-virtual {p0, p1, p2, p3}, Lcom/flurry/org/codehaus/jackson/map/ser/std/AsArraySerializerBase;->serializeContents(Ljava/lang/Object;Lcom/flurry/org/codehaus/jackson/JsonGenerator;Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;)V

    .line 87
    invoke-virtual {p2}, Lcom/flurry/org/codehaus/jackson/JsonGenerator;->writeEndArray()V

    .line 88
    return-void
.end method

.method protected abstract serializeContents(Ljava/lang/Object;Lcom/flurry/org/codehaus/jackson/JsonGenerator;Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/flurry/org/codehaus/jackson/JsonGenerator;",
            "Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation
.end method

.method public final serializeWithType(Ljava/lang/Object;Lcom/flurry/org/codehaus/jackson/JsonGenerator;Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;)V
    .locals 0
    .param p2, "jgen"    # Lcom/flurry/org/codehaus/jackson/JsonGenerator;
    .param p3, "provider"    # Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;
    .param p4, "typeSer"    # Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/flurry/org/codehaus/jackson/JsonGenerator;",
            "Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;",
            "Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 95
    .local p0, "this":Lcom/flurry/org/codehaus/jackson/map/ser/std/AsArraySerializerBase;, "Lcom/flurry/org/codehaus/jackson/map/ser/std/AsArraySerializerBase<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    invoke-virtual {p4, p1, p2}, Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;->writeTypePrefixForArray(Ljava/lang/Object;Lcom/flurry/org/codehaus/jackson/JsonGenerator;)V

    .line 96
    invoke-virtual {p0, p1, p2, p3}, Lcom/flurry/org/codehaus/jackson/map/ser/std/AsArraySerializerBase;->serializeContents(Ljava/lang/Object;Lcom/flurry/org/codehaus/jackson/JsonGenerator;Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;)V

    .line 97
    invoke-virtual {p4, p1, p2}, Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;->writeTypeSuffixForArray(Ljava/lang/Object;Lcom/flurry/org/codehaus/jackson/JsonGenerator;)V

    .line 98
    return-void
.end method
