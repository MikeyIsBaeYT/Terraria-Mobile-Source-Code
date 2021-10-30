.class public abstract Lcom/flurry/org/codehaus/jackson/map/jsontype/impl/TypeDeserializerBase;
.super Lcom/flurry/org/codehaus/jackson/map/TypeDeserializer;
.source "TypeDeserializerBase.java"


# instance fields
.field protected final _baseType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

.field protected final _defaultImpl:Lcom/flurry/org/codehaus/jackson/type/JavaType;

.field protected _defaultImplDeserializer:Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected final _deserializers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer",
            "<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field protected final _idResolver:Lcom/flurry/org/codehaus/jackson/map/jsontype/TypeIdResolver;

.field protected final _property:Lcom/flurry/org/codehaus/jackson/map/BeanProperty;


# direct methods
.method protected constructor <init>(Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/jsontype/TypeIdResolver;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)V
    .locals 1
    .param p1, "baseType"    # Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .param p2, "idRes"    # Lcom/flurry/org/codehaus/jackson/map/jsontype/TypeIdResolver;
    .param p3, "property"    # Lcom/flurry/org/codehaus/jackson/map/BeanProperty;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/flurry/org/codehaus/jackson/map/jsontype/impl/TypeDeserializerBase;-><init>(Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/jsontype/TypeIdResolver;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;Ljava/lang/Class;)V

    .line 52
    return-void
.end method

.method protected constructor <init>(Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/jsontype/TypeIdResolver;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;Ljava/lang/Class;)V
    .locals 1
    .param p1, "baseType"    # Lcom/flurry/org/codehaus/jackson/type/JavaType;
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
    .line 56
    .local p4, "defaultImpl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Lcom/flurry/org/codehaus/jackson/map/TypeDeserializer;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/flurry/org/codehaus/jackson/map/jsontype/impl/TypeDeserializerBase;->_baseType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    .line 58
    iput-object p2, p0, Lcom/flurry/org/codehaus/jackson/map/jsontype/impl/TypeDeserializerBase;->_idResolver:Lcom/flurry/org/codehaus/jackson/map/jsontype/TypeIdResolver;

    .line 59
    iput-object p3, p0, Lcom/flurry/org/codehaus/jackson/map/jsontype/impl/TypeDeserializerBase;->_property:Lcom/flurry/org/codehaus/jackson/map/BeanProperty;

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/jsontype/impl/TypeDeserializerBase;->_deserializers:Ljava/util/HashMap;

    .line 61
    if-nez p4, :cond_0

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/jsontype/impl/TypeDeserializerBase;->_defaultImpl:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    .line 70
    :goto_0
    return-void

    .line 68
    :cond_0
    invoke-virtual {p1, p4}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->forcedNarrowBy(Ljava/lang/Class;)Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/jsontype/impl/TypeDeserializerBase;->_defaultImpl:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    goto :goto_0
.end method


# virtual methods
.method protected final _findDefaultImplDeserializer(Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;)Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;
    .locals 5
    .param p1, "ctxt"    # Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;",
            ")",
            "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 143
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/jsontype/impl/TypeDeserializerBase;->_defaultImpl:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    if-nez v0, :cond_0

    .line 144
    const/4 v0, 0x0

    .line 151
    :goto_0
    return-object v0

    .line 146
    :cond_0
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/jsontype/impl/TypeDeserializerBase;->_defaultImpl:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    monitor-enter v1

    .line 147
    :try_start_0
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/jsontype/impl/TypeDeserializerBase;->_defaultImplDeserializer:Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;

    if-nez v0, :cond_1

    .line 148
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;->getDeserializerProvider()Lcom/flurry/org/codehaus/jackson/map/DeserializerProvider;

    move-result-object v0

    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;->getConfig()Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/map/jsontype/impl/TypeDeserializerBase;->_defaultImpl:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    iget-object v4, p0, Lcom/flurry/org/codehaus/jackson/map/jsontype/impl/TypeDeserializerBase;->_property:Lcom/flurry/org/codehaus/jackson/map/BeanProperty;

    invoke-virtual {v0, v2, v3, v4}, Lcom/flurry/org/codehaus/jackson/map/DeserializerProvider;->findValueDeserializer(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/jsontype/impl/TypeDeserializerBase;->_defaultImplDeserializer:Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;

    .line 151
    :cond_1
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/jsontype/impl/TypeDeserializerBase;->_defaultImplDeserializer:Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;

    monitor-exit v1

    goto :goto_0

    .line 152
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected final _findDeserializer(Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;
    .locals 6
    .param p1, "ctxt"    # Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;
    .param p2, "typeId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;",
            "Ljava/lang/String;",
            ")",
            "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 110
    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/map/jsontype/impl/TypeDeserializerBase;->_deserializers:Ljava/util/HashMap;

    monitor-enter v3

    .line 111
    :try_start_0
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/jsontype/impl/TypeDeserializerBase;->_deserializers:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;

    .line 112
    .local v0, "deser":Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer<Ljava/lang/Object;>;"
    if-nez v0, :cond_1

    .line 113
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/jsontype/impl/TypeDeserializerBase;->_idResolver:Lcom/flurry/org/codehaus/jackson/map/jsontype/TypeIdResolver;

    invoke-interface {v2, p2}, Lcom/flurry/org/codehaus/jackson/map/jsontype/TypeIdResolver;->typeFromId(Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v1

    .line 114
    .local v1, "type":Lcom/flurry/org/codehaus/jackson/type/JavaType;
    if-nez v1, :cond_2

    .line 116
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/jsontype/impl/TypeDeserializerBase;->_defaultImpl:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    if-nez v2, :cond_0

    .line 117
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/jsontype/impl/TypeDeserializerBase;->_baseType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    invoke-virtual {p1, v2, p2}, Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;->unknownTypeException(Lcom/flurry/org/codehaus/jackson/type/JavaType;Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;

    move-result-object v2

    throw v2

    .line 136
    .end local v0    # "deser":Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer<Ljava/lang/Object;>;"
    .end local v1    # "type":Lcom/flurry/org/codehaus/jackson/type/JavaType;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 119
    .restart local v0    # "deser":Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer<Ljava/lang/Object;>;"
    .restart local v1    # "type":Lcom/flurry/org/codehaus/jackson/type/JavaType;
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/flurry/org/codehaus/jackson/map/jsontype/impl/TypeDeserializerBase;->_findDefaultImplDeserializer(Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;)Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;

    move-result-object v0

    .line 134
    :goto_0
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/jsontype/impl/TypeDeserializerBase;->_deserializers:Ljava/util/HashMap;

    invoke-virtual {v2, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    .end local v1    # "type":Lcom/flurry/org/codehaus/jackson/type/JavaType;
    :cond_1
    monitor-exit v3

    .line 137
    return-object v0

    .line 129
    .restart local v1    # "type":Lcom/flurry/org/codehaus/jackson/type/JavaType;
    :cond_2
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/jsontype/impl/TypeDeserializerBase;->_baseType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/jsontype/impl/TypeDeserializerBase;->_baseType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-ne v2, v4, :cond_3

    .line 130
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/jsontype/impl/TypeDeserializerBase;->_baseType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    invoke-virtual {v1}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->narrowBy(Ljava/lang/Class;)Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v1

    .line 132
    :cond_3
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;->getDeserializerProvider()Lcom/flurry/org/codehaus/jackson/map/DeserializerProvider;

    move-result-object v2

    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;->getConfig()Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;

    move-result-object v4

    iget-object v5, p0, Lcom/flurry/org/codehaus/jackson/map/jsontype/impl/TypeDeserializerBase;->_property:Lcom/flurry/org/codehaus/jackson/map/BeanProperty;

    invoke-virtual {v2, v4, v1, v5}, Lcom/flurry/org/codehaus/jackson/map/DeserializerProvider;->findValueDeserializer(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0
.end method

.method public baseTypeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/jsontype/impl/TypeDeserializerBase;->_baseType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultImpl()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 85
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/jsontype/impl/TypeDeserializerBase;->_defaultImpl:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/jsontype/impl/TypeDeserializerBase;->_defaultImpl:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0
.end method

.method public getPropertyName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTypeIdResolver()Lcom/flurry/org/codehaus/jackson/map/jsontype/TypeIdResolver;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/jsontype/impl/TypeDeserializerBase;->_idResolver:Lcom/flurry/org/codehaus/jackson/map/jsontype/TypeIdResolver;

    return-object v0
.end method

.method public abstract getTypeInclusion()Lcom/flurry/org/codehaus/jackson/annotate/JsonTypeInfo$As;
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 92
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    const-string v1, "; base-type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/jsontype/impl/TypeDeserializerBase;->_baseType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 94
    const-string v1, "; id-resolver: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/jsontype/impl/TypeDeserializerBase;->_idResolver:Lcom/flurry/org/codehaus/jackson/map/jsontype/TypeIdResolver;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 95
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 96
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
