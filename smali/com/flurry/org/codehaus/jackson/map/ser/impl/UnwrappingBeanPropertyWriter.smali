.class public Lcom/flurry/org/codehaus/jackson/map/ser/impl/UnwrappingBeanPropertyWriter;
.super Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;
.source "UnwrappingBeanPropertyWriter.java"


# direct methods
.method public constructor <init>(Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;)V
    .locals 0
    .param p1, "base"    # Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;-><init>(Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;)V
    .locals 0
    .param p1, "base"    # Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;",
            "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 25
    .local p2, "ser":Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    invoke-direct {p0, p1, p2}, Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;-><init>(Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;)V

    .line 26
    return-void
.end method


# virtual methods
.method protected _findAndAddDynamic(Lcom/flurry/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;Ljava/lang/Class;Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;)Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;
    .locals 3
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
    .line 87
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/ser/impl/UnwrappingBeanPropertyWriter;->_nonTrivialBaseType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    if-eqz v2, :cond_1

    .line 88
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/ser/impl/UnwrappingBeanPropertyWriter;->_nonTrivialBaseType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    invoke-virtual {p3, v2, p2}, Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;->constructSpecializedType(Lcom/flurry/org/codehaus/jackson/type/JavaType;Ljava/lang/Class;)Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v1

    .line 89
    .local v1, "subtype":Lcom/flurry/org/codehaus/jackson/type/JavaType;
    invoke-virtual {p3, v1, p0}, Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;->findValueSerializer(Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;

    move-result-object v0

    .line 93
    .end local v1    # "subtype":Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .local v0, "serializer":Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    :goto_0
    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;->isUnwrappingSerializer()Z

    move-result v2

    if-nez v2, :cond_0

    .line 94
    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;->unwrappingSerializer()Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;

    move-result-object v0

    .line 96
    :cond_0
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/ser/impl/UnwrappingBeanPropertyWriter;->_dynamicSerializers:Lcom/flurry/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;

    invoke-virtual {v2, p2, v0}, Lcom/flurry/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;->newWith(Ljava/lang/Class;Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;)Lcom/flurry/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;

    move-result-object v2

    iput-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/ser/impl/UnwrappingBeanPropertyWriter;->_dynamicSerializers:Lcom/flurry/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;

    .line 97
    return-object v0

    .line 91
    .end local v0    # "serializer":Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    :cond_1
    invoke-virtual {p3, p2, p0}, Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;->findValueSerializer(Ljava/lang/Class;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;

    move-result-object v0

    .restart local v0    # "serializer":Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    goto :goto_0
.end method

.method public serializeAsField(Ljava/lang/Object;Lcom/flurry/org/codehaus/jackson/JsonGenerator;Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;)V
    .locals 5
    .param p1, "bean"    # Ljava/lang/Object;
    .param p2, "jgen"    # Lcom/flurry/org/codehaus/jackson/JsonGenerator;
    .param p3, "prov"    # Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 45
    invoke-virtual {p0, p1}, Lcom/flurry/org/codehaus/jackson/map/ser/impl/UnwrappingBeanPropertyWriter;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 46
    .local v3, "value":Ljava/lang/Object;
    if-nez v3, :cond_1

    .line 79
    :cond_0
    :goto_0
    return-void

    .line 53
    :cond_1
    if-ne v3, p1, :cond_2

    .line 54
    invoke-virtual {p0, p1}, Lcom/flurry/org/codehaus/jackson/map/ser/impl/UnwrappingBeanPropertyWriter;->_reportSelfReference(Ljava/lang/Object;)V

    .line 56
    :cond_2
    iget-object v4, p0, Lcom/flurry/org/codehaus/jackson/map/ser/impl/UnwrappingBeanPropertyWriter;->_suppressableValue:Ljava/lang/Object;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/flurry/org/codehaus/jackson/map/ser/impl/UnwrappingBeanPropertyWriter;->_suppressableValue:Ljava/lang/Object;

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 59
    :cond_3
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/ser/impl/UnwrappingBeanPropertyWriter;->_serializer:Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;

    .line 60
    .local v2, "ser":Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    if-nez v2, :cond_4

    .line 61
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 62
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/ser/impl/UnwrappingBeanPropertyWriter;->_dynamicSerializers:Lcom/flurry/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;

    .line 63
    .local v1, "map":Lcom/flurry/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;
    invoke-virtual {v1, v0}, Lcom/flurry/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;->serializerFor(Ljava/lang/Class;)Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;

    move-result-object v2

    .line 64
    if-nez v2, :cond_4

    .line 65
    invoke-virtual {p0, v1, v0, p3}, Lcom/flurry/org/codehaus/jackson/map/ser/impl/UnwrappingBeanPropertyWriter;->_findAndAddDynamic(Lcom/flurry/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;Ljava/lang/Class;Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;)Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;

    move-result-object v2

    .line 70
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "map":Lcom/flurry/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;
    :cond_4
    invoke-virtual {v2}, Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;->isUnwrappingSerializer()Z

    move-result v4

    if-nez v4, :cond_5

    .line 71
    iget-object v4, p0, Lcom/flurry/org/codehaus/jackson/map/ser/impl/UnwrappingBeanPropertyWriter;->_name:Lcom/flurry/org/codehaus/jackson/io/SerializedString;

    invoke-virtual {p2, v4}, Lcom/flurry/org/codehaus/jackson/JsonGenerator;->writeFieldName(Lcom/flurry/org/codehaus/jackson/io/SerializedString;)V

    .line 74
    :cond_5
    iget-object v4, p0, Lcom/flurry/org/codehaus/jackson/map/ser/impl/UnwrappingBeanPropertyWriter;->_typeSerializer:Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;

    if-nez v4, :cond_6

    .line 75
    invoke-virtual {v2, v3, p2, p3}, Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;->serialize(Ljava/lang/Object;Lcom/flurry/org/codehaus/jackson/JsonGenerator;Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;)V

    goto :goto_0

    .line 77
    :cond_6
    iget-object v4, p0, Lcom/flurry/org/codehaus/jackson/map/ser/impl/UnwrappingBeanPropertyWriter;->_typeSerializer:Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;

    invoke-virtual {v2, v3, p2, p3, v4}, Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;->serializeWithType(Ljava/lang/Object;Lcom/flurry/org/codehaus/jackson/JsonGenerator;Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;)V

    goto :goto_0
.end method

.method public withSerializer(Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;)Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;"
        }
    .end annotation

    .prologue
    .line 31
    .local p1, "ser":Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/flurry/org/codehaus/jackson/map/ser/impl/UnwrappingBeanPropertyWriter;

    if-eq v0, v1, :cond_0

    .line 32
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "UnwrappingBeanPropertyWriter sub-class does not override \'withSerializer()\'; needs to!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 35
    :cond_0
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;->isUnwrappingSerializer()Z

    move-result v0

    if-nez v0, :cond_1

    .line 36
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;->unwrappingSerializer()Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;

    move-result-object p1

    .line 38
    :cond_1
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/ser/impl/UnwrappingBeanPropertyWriter;

    invoke-direct {v0, p0, p1}, Lcom/flurry/org/codehaus/jackson/map/ser/impl/UnwrappingBeanPropertyWriter;-><init>(Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;)V

    return-object v0
.end method
