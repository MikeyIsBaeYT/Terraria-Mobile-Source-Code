.class public Lcom/flurry/org/codehaus/jackson/map/ser/std/CollectionSerializer;
.super Lcom/flurry/org/codehaus/jackson/map/ser/std/AsArraySerializerBase;
.source "CollectionSerializer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/flurry/org/codehaus/jackson/map/ser/std/AsArraySerializerBase",
        "<",
        "Ljava/util/Collection",
        "<*>;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/flurry/org/codehaus/jackson/type/JavaType;ZLcom/flurry/org/codehaus/jackson/map/TypeSerializer;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;)V
    .locals 7
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
    .line 29
    .local p5, "valueSerializer":Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    const-class v1, Ljava/util/Collection;

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/flurry/org/codehaus/jackson/map/ser/std/AsArraySerializerBase;-><init>(Ljava/lang/Class;Lcom/flurry/org/codehaus/jackson/type/JavaType;ZLcom/flurry/org/codehaus/jackson/map/TypeSerializer;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;)V

    .line 30
    return-void
.end method


# virtual methods
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
    .line 34
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/ser/std/CollectionSerializer;

    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/ser/std/CollectionSerializer;->_elementType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    iget-boolean v2, p0, Lcom/flurry/org/codehaus/jackson/map/ser/std/CollectionSerializer;->_staticTyping:Z

    iget-object v4, p0, Lcom/flurry/org/codehaus/jackson/map/ser/std/CollectionSerializer;->_property:Lcom/flurry/org/codehaus/jackson/map/BeanProperty;

    iget-object v5, p0, Lcom/flurry/org/codehaus/jackson/map/ser/std/CollectionSerializer;->_elementSerializer:Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/flurry/org/codehaus/jackson/map/ser/std/CollectionSerializer;-><init>(Lcom/flurry/org/codehaus/jackson/type/JavaType;ZLcom/flurry/org/codehaus/jackson/map/TypeSerializer;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;)V

    return-object v0
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
    .line 23
    check-cast p1, Ljava/util/Collection;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Lcom/flurry/org/codehaus/jackson/map/ser/std/CollectionSerializer;->serializeContents(Ljava/util/Collection;Lcom/flurry/org/codehaus/jackson/JsonGenerator;Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;)V

    return-void
.end method

.method public serializeContents(Ljava/util/Collection;Lcom/flurry/org/codehaus/jackson/JsonGenerator;Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;)V
    .locals 9
    .param p2, "jgen"    # Lcom/flurry/org/codehaus/jackson/JsonGenerator;
    .param p3, "provider"    # Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;",
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
    .line 41
    .local p1, "value":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v8, p0, Lcom/flurry/org/codehaus/jackson/map/ser/std/CollectionSerializer;->_elementSerializer:Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;

    if-eqz v8, :cond_1

    .line 42
    iget-object v8, p0, Lcom/flurry/org/codehaus/jackson/map/ser/std/CollectionSerializer;->_elementSerializer:Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;

    invoke-virtual {p0, p1, p2, p3, v8}, Lcom/flurry/org/codehaus/jackson/map/ser/std/CollectionSerializer;->serializeContentsUsing(Ljava/util/Collection;Lcom/flurry/org/codehaus/jackson/JsonGenerator;Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;)V

    .line 83
    :cond_0
    :goto_0
    return-void

    .line 45
    :cond_1
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 46
    .local v4, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 49
    iget-object v6, p0, Lcom/flurry/org/codehaus/jackson/map/ser/std/CollectionSerializer;->_dynamicSerializers:Lcom/flurry/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;

    .line 50
    .local v6, "serializers":Lcom/flurry/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;
    iget-object v7, p0, Lcom/flurry/org/codehaus/jackson/map/ser/std/CollectionSerializer;->_valueTypeSerializer:Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;

    .line 52
    .local v7, "typeSer":Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;
    const/4 v3, 0x0

    .line 55
    .local v3, "i":I
    :cond_2
    :try_start_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 56
    .local v2, "elem":Ljava/lang/Object;
    if-nez v2, :cond_3

    .line 57
    invoke-virtual {p3, p2}, Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;->defaultSerializeNull(Lcom/flurry/org/codehaus/jackson/JsonGenerator;)V

    .line 77
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 78
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_2

    goto :goto_0

    .line 59
    :cond_3
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 60
    .local v0, "cc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v6, v0}, Lcom/flurry/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;->serializerFor(Ljava/lang/Class;)Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;

    move-result-object v5

    .line 61
    .local v5, "serializer":Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    if-nez v5, :cond_4

    .line 63
    iget-object v8, p0, Lcom/flurry/org/codehaus/jackson/map/ser/std/CollectionSerializer;->_elementType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    invoke-virtual {v8}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->hasGenericTypes()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 64
    iget-object v8, p0, Lcom/flurry/org/codehaus/jackson/map/ser/std/CollectionSerializer;->_elementType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    invoke-virtual {p3, v8, v0}, Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;->constructSpecializedType(Lcom/flurry/org/codehaus/jackson/type/JavaType;Ljava/lang/Class;)Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v8

    invoke-virtual {p0, v6, v8, p3}, Lcom/flurry/org/codehaus/jackson/map/ser/std/CollectionSerializer;->_findAndAddDynamic(Lcom/flurry/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;)Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;

    move-result-object v5

    .line 69
    :goto_2
    iget-object v6, p0, Lcom/flurry/org/codehaus/jackson/map/ser/std/CollectionSerializer;->_dynamicSerializers:Lcom/flurry/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;

    .line 71
    :cond_4
    if-nez v7, :cond_6

    .line 72
    invoke-virtual {v5, v2, p2, p3}, Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;->serialize(Ljava/lang/Object;Lcom/flurry/org/codehaus/jackson/JsonGenerator;Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 79
    .end local v0    # "cc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "elem":Ljava/lang/Object;
    .end local v5    # "serializer":Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    :catch_0
    move-exception v1

    .line 81
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {p0, p3, v1, p1, v3}, Lcom/flurry/org/codehaus/jackson/map/ser/std/CollectionSerializer;->wrapAndThrow(Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;Ljava/lang/Throwable;Ljava/lang/Object;I)V

    goto :goto_0

    .line 67
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "cc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v2    # "elem":Ljava/lang/Object;
    .restart local v5    # "serializer":Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    :cond_5
    :try_start_1
    invoke-virtual {p0, v6, v0, p3}, Lcom/flurry/org/codehaus/jackson/map/ser/std/CollectionSerializer;->_findAndAddDynamic(Lcom/flurry/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;Ljava/lang/Class;Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;)Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;

    move-result-object v5

    goto :goto_2

    .line 74
    :cond_6
    invoke-virtual {v5, v2, p2, p3, v7}, Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;->serializeWithType(Ljava/lang/Object;Lcom/flurry/org/codehaus/jackson/JsonGenerator;Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public serializeContentsUsing(Ljava/util/Collection;Lcom/flurry/org/codehaus/jackson/JsonGenerator;Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;)V
    .locals 6
    .param p2, "jgen"    # Lcom/flurry/org/codehaus/jackson/JsonGenerator;
    .param p3, "provider"    # Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;",
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
    .line 89
    .local p1, "value":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    .local p4, "ser":Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 90
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 91
    iget-object v4, p0, Lcom/flurry/org/codehaus/jackson/map/ser/std/CollectionSerializer;->_valueTypeSerializer:Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;

    .line 92
    .local v4, "typeSer":Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;
    const/4 v2, 0x0

    .line 94
    .local v2, "i":I
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 96
    .local v1, "elem":Ljava/lang/Object;
    if-nez v1, :cond_2

    .line 97
    :try_start_0
    invoke-virtual {p3, p2}, Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;->defaultSerializeNull(Lcom/flurry/org/codehaus/jackson/JsonGenerator;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    :goto_0
    add-int/lit8 v2, v2, 0x1

    .line 110
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_0

    .line 112
    .end local v1    # "elem":Ljava/lang/Object;
    .end local v2    # "i":I
    .end local v4    # "typeSer":Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;
    :cond_1
    return-void

    .line 99
    .restart local v1    # "elem":Ljava/lang/Object;
    .restart local v2    # "i":I
    .restart local v4    # "typeSer":Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;
    :cond_2
    if-nez v4, :cond_3

    .line 100
    :try_start_1
    invoke-virtual {p4, v1, p2, p3}, Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;->serialize(Ljava/lang/Object;Lcom/flurry/org/codehaus/jackson/JsonGenerator;Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 106
    :catch_0
    move-exception v0

    .line 108
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0, p3, v0, p1, v2}, Lcom/flurry/org/codehaus/jackson/map/ser/std/CollectionSerializer;->wrapAndThrow(Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;Ljava/lang/Throwable;Ljava/lang/Object;I)V

    goto :goto_1

    .line 102
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    :try_start_2
    invoke-virtual {p4, v1, p2, p3, v4}, Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;->serializeWithType(Ljava/lang/Object;Lcom/flurry/org/codehaus/jackson/JsonGenerator;Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0
.end method
