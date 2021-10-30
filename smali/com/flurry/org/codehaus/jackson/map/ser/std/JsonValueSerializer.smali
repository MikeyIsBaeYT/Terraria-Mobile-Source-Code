.class public Lcom/flurry/org/codehaus/jackson/map/ser/std/JsonValueSerializer;
.super Lcom/flurry/org/codehaus/jackson/map/ser/std/SerializerBase;
.source "JsonValueSerializer.java"

# interfaces
.implements Lcom/flurry/org/codehaus/jackson/map/ResolvableSerializer;
.implements Lcom/flurry/org/codehaus/jackson/schema/SchemaAware;


# annotations
.annotation runtime Lcom/flurry/org/codehaus/jackson/map/annotate/JacksonStdImpl;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/flurry/org/codehaus/jackson/map/ser/std/SerializerBase",
        "<",
        "Ljava/lang/Object;",
        ">;",
        "Lcom/flurry/org/codehaus/jackson/map/ResolvableSerializer;",
        "Lcom/flurry/org/codehaus/jackson/schema/SchemaAware;"
    }
.end annotation


# instance fields
.field protected final _accessorMethod:Ljava/lang/reflect/Method;

.field protected _forceTypeInformation:Z

.field protected final _property:Lcom/flurry/org/codehaus/jackson/map/BeanProperty;

.field protected _valueSerializer:Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Method;Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)V
    .locals 1
    .param p1, "valueMethod"    # Ljava/lang/reflect/Method;
    .param p3, "property"    # Lcom/flurry/org/codehaus/jackson/map/BeanProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/flurry/org/codehaus/jackson/map/BeanProperty;",
            ")V"
        }
    .end annotation

    .prologue
    .line 61
    .local p2, "ser":Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    const-class v0, Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/flurry/org/codehaus/jackson/map/ser/std/SerializerBase;-><init>(Ljava/lang/Class;)V

    .line 62
    iput-object p1, p0, Lcom/flurry/org/codehaus/jackson/map/ser/std/JsonValueSerializer;->_accessorMethod:Ljava/lang/reflect/Method;

    .line 63
    iput-object p2, p0, Lcom/flurry/org/codehaus/jackson/map/ser/std/JsonValueSerializer;->_valueSerializer:Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;

    .line 64
    iput-object p3, p0, Lcom/flurry/org/codehaus/jackson/map/ser/std/JsonValueSerializer;->_property:Lcom/flurry/org/codehaus/jackson/map/BeanProperty;

    .line 65
    return-void
.end method


# virtual methods
.method public getSchema(Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;Ljava/lang/reflect/Type;)Lcom/flurry/org/codehaus/jackson/JsonNode;
    .locals 2
    .param p1, "provider"    # Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;
    .param p2, "typeHint"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 161
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ser/std/JsonValueSerializer;->_valueSerializer:Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;

    instance-of v0, v0, Lcom/flurry/org/codehaus/jackson/schema/SchemaAware;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ser/std/JsonValueSerializer;->_valueSerializer:Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;

    check-cast v0, Lcom/flurry/org/codehaus/jackson/schema/SchemaAware;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/flurry/org/codehaus/jackson/schema/SchemaAware;->getSchema(Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;Ljava/lang/reflect/Type;)Lcom/flurry/org/codehaus/jackson/JsonNode;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/flurry/org/codehaus/jackson/schema/JsonSchema;->getDefaultSchemaNode()Lcom/flurry/org/codehaus/jackson/JsonNode;

    move-result-object v0

    goto :goto_0
.end method

.method protected isNaturalTypeWithStdHandling(Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;)Z
    .locals 4
    .param p1, "type"    # Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/type/JavaType;",
            "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .local p2, "ser":Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer<*>;"
    const/4 v1, 0x0

    .line 206
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    .line 208
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->isPrimitive()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 209
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq v0, v2, :cond_2

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v0, v2, :cond_2

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq v0, v2, :cond_2

    .line 219
    :cond_0
    :goto_0
    return v1

    .line 213
    :cond_1
    const-class v2, Ljava/lang/String;

    if-eq v0, v2, :cond_2

    const-class v2, Ljava/lang/Integer;

    if-eq v0, v2, :cond_2

    const-class v2, Ljava/lang/Boolean;

    if-eq v0, v2, :cond_2

    const-class v2, Ljava/lang/Double;

    if-ne v0, v2, :cond_0

    .line 219
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/flurry/org/codehaus/jackson/map/annotate/JacksonStdImpl;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public resolve(Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;)V
    .locals 3
    .param p1, "provider"    # Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 180
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/ser/std/JsonValueSerializer;->_valueSerializer:Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;

    if-nez v1, :cond_1

    .line 186
    sget-object v1, Lcom/flurry/org/codehaus/jackson/map/SerializationConfig$Feature;->USE_STATIC_TYPING:Lcom/flurry/org/codehaus/jackson/map/SerializationConfig$Feature;

    invoke-virtual {p1, v1}, Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;->isEnabled(Lcom/flurry/org/codehaus/jackson/map/SerializationConfig$Feature;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/ser/std/JsonValueSerializer;->_accessorMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 188
    :cond_0
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/ser/std/JsonValueSerializer;->_accessorMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;->constructType(Ljava/lang/reflect/Type;)Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v0

    .line 194
    .local v0, "t":Lcom/flurry/org/codehaus/jackson/type/JavaType;
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/ser/std/JsonValueSerializer;->_property:Lcom/flurry/org/codehaus/jackson/map/BeanProperty;

    invoke-virtual {p1, v0, v1, v2}, Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;->findTypedValueSerializer(Lcom/flurry/org/codehaus/jackson/type/JavaType;ZLcom/flurry/org/codehaus/jackson/map/BeanProperty;)Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;

    move-result-object v1

    iput-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/ser/std/JsonValueSerializer;->_valueSerializer:Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;

    .line 199
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/ser/std/JsonValueSerializer;->_valueSerializer:Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;

    invoke-virtual {p0, v0, v1}, Lcom/flurry/org/codehaus/jackson/map/ser/std/JsonValueSerializer;->isNaturalTypeWithStdHandling(Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/flurry/org/codehaus/jackson/map/ser/std/JsonValueSerializer;->_forceTypeInformation:Z

    .line 202
    .end local v0    # "t":Lcom/flurry/org/codehaus/jackson/type/JavaType;
    :cond_1
    return-void
.end method

.method public serialize(Ljava/lang/Object;Lcom/flurry/org/codehaus/jackson/JsonGenerator;Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;)V
    .locals 8
    .param p1, "bean"    # Ljava/lang/Object;
    .param p2, "jgen"    # Lcom/flurry/org/codehaus/jackson/JsonGenerator;
    .param p3, "prov"    # Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 72
    :try_start_0
    iget-object v6, p0, Lcom/flurry/org/codehaus/jackson/map/ser/std/JsonValueSerializer;->_accessorMethod:Ljava/lang/reflect/Method;

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v6, p1, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 74
    .local v5, "value":Ljava/lang/Object;
    if-nez v5, :cond_0

    .line 75
    invoke-virtual {p3, p2}, Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;->defaultSerializeNull(Lcom/flurry/org/codehaus/jackson/JsonGenerator;)V

    .line 104
    :goto_0
    return-void

    .line 78
    :cond_0
    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/map/ser/std/JsonValueSerializer;->_valueSerializer:Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;

    .line 79
    .local v3, "ser":Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    if-nez v3, :cond_1

    .line 80
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 86
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v6, 0x1

    iget-object v7, p0, Lcom/flurry/org/codehaus/jackson/map/ser/std/JsonValueSerializer;->_property:Lcom/flurry/org/codehaus/jackson/map/BeanProperty;

    invoke-virtual {p3, v0, v6, v7}, Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;->findTypedValueSerializer(Ljava/lang/Class;ZLcom/flurry/org/codehaus/jackson/map/BeanProperty;)Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;

    move-result-object v3

    .line 88
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    invoke-virtual {v3, v5, p2, p3}, Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;->serialize(Ljava/lang/Object;Lcom/flurry/org/codehaus/jackson/JsonGenerator;Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 89
    .end local v3    # "ser":Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    .end local v5    # "value":Ljava/lang/Object;
    :catch_0
    move-exception v2

    .line 90
    .local v2, "ioe":Ljava/io/IOException;
    throw v2

    .line 91
    .end local v2    # "ioe":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 92
    .local v1, "e":Ljava/lang/Exception;
    move-object v4, v1

    .line 94
    .local v4, "t":Ljava/lang/Throwable;
    :goto_1
    instance-of v6, v4, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v6, :cond_2

    invoke-virtual {v4}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 95
    invoke-virtual {v4}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    goto :goto_1

    .line 98
    :cond_2
    instance-of v6, v4, Ljava/lang/Error;

    if-eqz v6, :cond_3

    .line 99
    check-cast v4, Ljava/lang/Error;

    .end local v4    # "t":Ljava/lang/Throwable;
    throw v4

    .line 102
    .restart local v4    # "t":Ljava/lang/Throwable;
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/flurry/org/codehaus/jackson/map/ser/std/JsonValueSerializer;->_accessorMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "()"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, p1, v6}, Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;->wrapWithPath(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;

    move-result-object v6

    throw v6
.end method

.method public serializeWithType(Ljava/lang/Object;Lcom/flurry/org/codehaus/jackson/JsonGenerator;Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;)V
    .locals 8
    .param p1, "bean"    # Ljava/lang/Object;
    .param p2, "jgen"    # Lcom/flurry/org/codehaus/jackson/JsonGenerator;
    .param p3, "provider"    # Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;
    .param p4, "typeSer"    # Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 112
    const/4 v5, 0x0

    .line 114
    .local v5, "value":Ljava/lang/Object;
    :try_start_0
    iget-object v6, p0, Lcom/flurry/org/codehaus/jackson/map/ser/std/JsonValueSerializer;->_accessorMethod:Ljava/lang/reflect/Method;

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v6, p1, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 117
    if-nez v5, :cond_1

    .line 118
    invoke-virtual {p3, p2}, Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;->defaultSerializeNull(Lcom/flurry/org/codehaus/jackson/JsonGenerator;)V

    .line 155
    :cond_0
    :goto_0
    return-void

    .line 121
    :cond_1
    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/map/ser/std/JsonValueSerializer;->_valueSerializer:Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;

    .line 122
    .local v3, "ser":Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    if-eqz v3, :cond_3

    .line 126
    iget-boolean v6, p0, Lcom/flurry/org/codehaus/jackson/map/ser/std/JsonValueSerializer;->_forceTypeInformation:Z

    if-eqz v6, :cond_2

    .line 127
    invoke-virtual {p4, p1, p2}, Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;->writeTypePrefixForScalar(Ljava/lang/Object;Lcom/flurry/org/codehaus/jackson/JsonGenerator;)V

    .line 129
    :cond_2
    invoke-virtual {v3, v5, p2, p3, p4}, Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;->serializeWithType(Ljava/lang/Object;Lcom/flurry/org/codehaus/jackson/JsonGenerator;Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;)V

    .line 130
    iget-boolean v6, p0, Lcom/flurry/org/codehaus/jackson/map/ser/std/JsonValueSerializer;->_forceTypeInformation:Z

    if-eqz v6, :cond_0

    .line 131
    invoke-virtual {p4, p1, p2}, Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;->writeTypeSuffixForScalar(Ljava/lang/Object;Lcom/flurry/org/codehaus/jackson/JsonGenerator;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 140
    .end local v3    # "ser":Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    .end local v5    # "value":Ljava/lang/Object;
    :catch_0
    move-exception v2

    .line 141
    .local v2, "ioe":Ljava/io/IOException;
    throw v2

    .line 136
    .end local v2    # "ioe":Ljava/io/IOException;
    .restart local v3    # "ser":Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    .restart local v5    # "value":Ljava/lang/Object;
    :cond_3
    :try_start_1
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 137
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v6, 0x1

    iget-object v7, p0, Lcom/flurry/org/codehaus/jackson/map/ser/std/JsonValueSerializer;->_property:Lcom/flurry/org/codehaus/jackson/map/BeanProperty;

    invoke-virtual {p3, v0, v6, v7}, Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;->findTypedValueSerializer(Ljava/lang/Class;ZLcom/flurry/org/codehaus/jackson/map/BeanProperty;)Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;

    move-result-object v3

    .line 139
    invoke-virtual {v3, v5, p2, p3}, Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;->serialize(Ljava/lang/Object;Lcom/flurry/org/codehaus/jackson/JsonGenerator;Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 142
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "ser":Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    .end local v5    # "value":Ljava/lang/Object;
    :catch_1
    move-exception v1

    .line 143
    .local v1, "e":Ljava/lang/Exception;
    move-object v4, v1

    .line 145
    .local v4, "t":Ljava/lang/Throwable;
    :goto_1
    instance-of v6, v4, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v6, :cond_4

    invoke-virtual {v4}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 146
    invoke-virtual {v4}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    goto :goto_1

    .line 149
    :cond_4
    instance-of v6, v4, Ljava/lang/Error;

    if-eqz v6, :cond_5

    .line 150
    check-cast v4, Ljava/lang/Error;

    .end local v4    # "t":Ljava/lang/Throwable;
    throw v4

    .line 153
    .restart local v4    # "t":Ljava/lang/Throwable;
    :cond_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/flurry/org/codehaus/jackson/map/ser/std/JsonValueSerializer;->_accessorMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "()"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, p1, v6}, Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;->wrapWithPath(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;

    move-result-object v6

    throw v6
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 231
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(@JsonValue serializer for method "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/ser/std/JsonValueSerializer;->_accessorMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/ser/std/JsonValueSerializer;->_accessorMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
