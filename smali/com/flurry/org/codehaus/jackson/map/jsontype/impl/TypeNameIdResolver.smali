.class public Lcom/flurry/org/codehaus/jackson/map/jsontype/impl/TypeNameIdResolver;
.super Lcom/flurry/org/codehaus/jackson/map/jsontype/impl/TypeIdResolverBase;
.source "TypeNameIdResolver.java"


# instance fields
.field protected final _config:Lcom/flurry/org/codehaus/jackson/map/MapperConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/org/codehaus/jackson/map/MapperConfig",
            "<*>;"
        }
    .end annotation
.end field

.field protected final _idToType:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/flurry/org/codehaus/jackson/type/JavaType;",
            ">;"
        }
    .end annotation
.end field

.field protected final _typeToId:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/flurry/org/codehaus/jackson/map/MapperConfig;Lcom/flurry/org/codehaus/jackson/type/JavaType;Ljava/util/HashMap;Ljava/util/HashMap;)V
    .locals 1
    .param p2, "baseType"    # Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/MapperConfig",
            "<*>;",
            "Lcom/flurry/org/codehaus/jackson/type/JavaType;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/flurry/org/codehaus/jackson/type/JavaType;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 32
    .local p1, "config":Lcom/flurry/org/codehaus/jackson/map/MapperConfig;, "Lcom/flurry/org/codehaus/jackson/map/MapperConfig<*>;"
    .local p3, "typeToId":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local p4, "idToType":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/flurry/org/codehaus/jackson/type/JavaType;>;"
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/map/MapperConfig;->getTypeFactory()Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/flurry/org/codehaus/jackson/map/jsontype/impl/TypeIdResolverBase;-><init>(Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;)V

    .line 33
    iput-object p1, p0, Lcom/flurry/org/codehaus/jackson/map/jsontype/impl/TypeNameIdResolver;->_config:Lcom/flurry/org/codehaus/jackson/map/MapperConfig;

    .line 34
    iput-object p3, p0, Lcom/flurry/org/codehaus/jackson/map/jsontype/impl/TypeNameIdResolver;->_typeToId:Ljava/util/HashMap;

    .line 35
    iput-object p4, p0, Lcom/flurry/org/codehaus/jackson/map/jsontype/impl/TypeNameIdResolver;->_idToType:Ljava/util/HashMap;

    .line 36
    return-void
.end method

.method protected static _defaultTypeId(Ljava/lang/Class;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 150
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 151
    .local v1, "n":Ljava/lang/String;
    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 152
    .local v0, "ix":I
    if-gez v0, :cond_0

    .end local v1    # "n":Ljava/lang/String;
    :goto_0
    return-object v1

    .restart local v1    # "n":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static construct(Lcom/flurry/org/codehaus/jackson/map/MapperConfig;Lcom/flurry/org/codehaus/jackson/type/JavaType;Ljava/util/Collection;ZZ)Lcom/flurry/org/codehaus/jackson/map/jsontype/impl/TypeNameIdResolver;
    .locals 8
    .param p1, "baseType"    # Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .param p3, "forSer"    # Z
    .param p4, "forDeser"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/MapperConfig",
            "<*>;",
            "Lcom/flurry/org/codehaus/jackson/type/JavaType;",
            "Ljava/util/Collection",
            "<",
            "Lcom/flurry/org/codehaus/jackson/map/jsontype/NamedType;",
            ">;ZZ)",
            "Lcom/flurry/org/codehaus/jackson/map/jsontype/impl/TypeNameIdResolver;"
        }
    .end annotation

    .prologue
    .line 43
    .local p0, "config":Lcom/flurry/org/codehaus/jackson/map/MapperConfig;, "Lcom/flurry/org/codehaus/jackson/map/MapperConfig<*>;"
    .local p2, "subtypes":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/flurry/org/codehaus/jackson/map/jsontype/NamedType;>;"
    if-ne p3, p4, :cond_0

    new-instance v7, Ljava/lang/IllegalArgumentException;

    invoke-direct {v7}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v7

    .line 44
    :cond_0
    const/4 v6, 0x0

    .line 45
    .local v6, "typeToId":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 47
    .local v3, "idToType":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/flurry/org/codehaus/jackson/type/JavaType;>;"
    if-eqz p3, :cond_1

    .line 48
    new-instance v6, Ljava/util/HashMap;

    .end local v6    # "typeToId":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 50
    .restart local v6    # "typeToId":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    if-eqz p4, :cond_2

    .line 51
    new-instance v3, Ljava/util/HashMap;

    .end local v3    # "idToType":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/flurry/org/codehaus/jackson/type/JavaType;>;"
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 53
    .restart local v3    # "idToType":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/flurry/org/codehaus/jackson/type/JavaType;>;"
    :cond_2
    if-eqz p2, :cond_7

    .line 54
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/flurry/org/codehaus/jackson/map/jsontype/NamedType;

    .line 58
    .local v5, "t":Lcom/flurry/org/codehaus/jackson/map/jsontype/NamedType;
    invoke-virtual {v5}, Lcom/flurry/org/codehaus/jackson/map/jsontype/NamedType;->getType()Ljava/lang/Class;

    move-result-object v0

    .line 59
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v5}, Lcom/flurry/org/codehaus/jackson/map/jsontype/NamedType;->hasName()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-virtual {v5}, Lcom/flurry/org/codehaus/jackson/map/jsontype/NamedType;->getName()Ljava/lang/String;

    move-result-object v2

    .line 60
    .local v2, "id":Ljava/lang/String;
    :goto_1
    if-eqz p3, :cond_4

    .line 61
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    :cond_4
    if-eqz p4, :cond_3

    .line 68
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/flurry/org/codehaus/jackson/type/JavaType;

    .line 69
    .local v4, "prev":Lcom/flurry/org/codehaus/jackson/type/JavaType;
    if-eqz v4, :cond_5

    .line 70
    invoke-virtual {v4}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 74
    :cond_5
    invoke-virtual {p0, v0}, Lcom/flurry/org/codehaus/jackson/map/MapperConfig;->constructType(Ljava/lang/Class;)Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v7

    invoke-virtual {v3, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 59
    .end local v2    # "id":Ljava/lang/String;
    .end local v4    # "prev":Lcom/flurry/org/codehaus/jackson/type/JavaType;
    :cond_6
    invoke-static {v0}, Lcom/flurry/org/codehaus/jackson/map/jsontype/impl/TypeNameIdResolver;->_defaultTypeId(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 78
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v5    # "t":Lcom/flurry/org/codehaus/jackson/map/jsontype/NamedType;
    :cond_7
    new-instance v7, Lcom/flurry/org/codehaus/jackson/map/jsontype/impl/TypeNameIdResolver;

    invoke-direct {v7, p0, p1, v6, v3}, Lcom/flurry/org/codehaus/jackson/map/jsontype/impl/TypeNameIdResolver;-><init>(Lcom/flurry/org/codehaus/jackson/map/MapperConfig;Lcom/flurry/org/codehaus/jackson/type/JavaType;Ljava/util/HashMap;Ljava/util/HashMap;)V

    return-object v7
.end method


# virtual methods
.method public getMechanism()Lcom/flurry/org/codehaus/jackson/annotate/JsonTypeInfo$Id;
    .locals 1

    .prologue
    .line 82
    sget-object v0, Lcom/flurry/org/codehaus/jackson/annotate/JsonTypeInfo$Id;->NAME:Lcom/flurry/org/codehaus/jackson/annotate/JsonTypeInfo$Id;

    return-object v0
.end method

.method public idFromValue(Ljava/lang/Object;)Ljava/lang/String;
    .locals 7
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 87
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 88
    .local v1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 90
    .local v2, "key":Ljava/lang/String;
    iget-object v5, p0, Lcom/flurry/org/codehaus/jackson/map/jsontype/impl/TypeNameIdResolver;->_typeToId:Ljava/util/HashMap;

    monitor-enter v5

    .line 91
    :try_start_0
    iget-object v4, p0, Lcom/flurry/org/codehaus/jackson/map/jsontype/impl/TypeNameIdResolver;->_typeToId:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 92
    .local v3, "name":Ljava/lang/String;
    if-nez v3, :cond_2

    .line 95
    iget-object v4, p0, Lcom/flurry/org/codehaus/jackson/map/jsontype/impl/TypeNameIdResolver;->_config:Lcom/flurry/org/codehaus/jackson/map/MapperConfig;

    invoke-virtual {v4}, Lcom/flurry/org/codehaus/jackson/map/MapperConfig;->isAnnotationProcessingEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 96
    iget-object v4, p0, Lcom/flurry/org/codehaus/jackson/map/jsontype/impl/TypeNameIdResolver;->_config:Lcom/flurry/org/codehaus/jackson/map/MapperConfig;

    invoke-virtual {v4, v1}, Lcom/flurry/org/codehaus/jackson/map/MapperConfig;->introspectClassAnnotations(Ljava/lang/Class;)Lcom/flurry/org/codehaus/jackson/map/BeanDescription;

    move-result-object v0

    check-cast v0, Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;

    .line 97
    .local v0, "beanDesc":Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;
    iget-object v4, p0, Lcom/flurry/org/codehaus/jackson/map/jsontype/impl/TypeNameIdResolver;->_config:Lcom/flurry/org/codehaus/jackson/map/MapperConfig;

    invoke-virtual {v4}, Lcom/flurry/org/codehaus/jackson/map/MapperConfig;->getAnnotationIntrospector()Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object v4

    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;->getClassInfo()Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;->findTypeName(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/String;

    move-result-object v3

    .line 99
    .end local v0    # "beanDesc":Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;
    :cond_0
    if-nez v3, :cond_1

    .line 101
    invoke-static {v1}, Lcom/flurry/org/codehaus/jackson/map/jsontype/impl/TypeNameIdResolver;->_defaultTypeId(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    .line 103
    :cond_1
    iget-object v4, p0, Lcom/flurry/org/codehaus/jackson/map/jsontype/impl/TypeNameIdResolver;->_typeToId:Ljava/util/HashMap;

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    :cond_2
    monitor-exit v5

    .line 106
    return-object v3

    .line 105
    .end local v3    # "name":Ljava/lang/String;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public idFromValueAndType(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/String;
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 112
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0, p1}, Lcom/flurry/org/codehaus/jackson/map/jsontype/impl/TypeNameIdResolver;->idFromValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 132
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    const-string v1, "; id-to-type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/jsontype/impl/TypeNameIdResolver;->_idToType:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 134
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 135
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public typeFromId(Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 119
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/jsontype/impl/TypeNameIdResolver;->_idToType:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/org/codehaus/jackson/type/JavaType;

    .line 125
    .local v0, "t":Lcom/flurry/org/codehaus/jackson/type/JavaType;
    return-object v0
.end method
