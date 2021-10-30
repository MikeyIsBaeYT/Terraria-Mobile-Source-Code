.class public Lcom/flurry/org/codehaus/jackson/map/jsontype/impl/ClassNameIdResolver;
.super Lcom/flurry/org/codehaus/jackson/map/jsontype/impl/TypeIdResolverBase;
.source "ClassNameIdResolver.java"


# direct methods
.method public constructor <init>(Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;)V
    .locals 0
    .param p1, "baseType"    # Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .param p2, "typeFactory"    # Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Lcom/flurry/org/codehaus/jackson/map/jsontype/impl/TypeIdResolverBase;-><init>(Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;)V

    .line 20
    return-void
.end method


# virtual methods
.method protected final _idFrom(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/String;
    .locals 8
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
    .line 77
    .local p2, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v6, Ljava/lang/Enum;

    invoke-virtual {v6, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 78
    invoke-virtual {p2}, Ljava/lang/Class;->isEnum()Z

    move-result v6

    if-nez v6, :cond_0

    .line 79
    invoke-virtual {p2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p2

    .line 82
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    .line 83
    .local v4, "str":Ljava/lang/String;
    const-string v6, "java.util"

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 92
    instance-of v6, p1, Ljava/util/EnumSet;

    if-eqz v6, :cond_2

    .line 93
    check-cast p1, Ljava/util/EnumSet;

    .end local p1    # "value":Ljava/lang/Object;
    invoke-static {p1}, Lcom/flurry/org/codehaus/jackson/map/util/ClassUtil;->findEnumType(Ljava/util/EnumSet;)Ljava/lang/Class;

    move-result-object v1

    .line 95
    .local v1, "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {}, Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;->defaultInstance()Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;

    move-result-object v6

    const-class v7, Ljava/util/EnumSet;

    invoke-virtual {v6, v7, v1}, Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;->constructCollectionType(Ljava/lang/Class;Ljava/lang/Class;)Lcom/flurry/org/codehaus/jackson/map/type/CollectionType;

    move-result-object v6

    invoke-virtual {v6}, Lcom/flurry/org/codehaus/jackson/map/type/CollectionType;->toCanonical()Ljava/lang/String;

    move-result-object v4

    .line 136
    .end local v1    # "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    :goto_0
    return-object v4

    .line 96
    .restart local p1    # "value":Ljava/lang/Object;
    :cond_2
    instance-of v6, p1, Ljava/util/EnumMap;

    if-eqz v6, :cond_3

    .line 97
    check-cast p1, Ljava/util/EnumMap;

    .end local p1    # "value":Ljava/lang/Object;
    invoke-static {p1}, Lcom/flurry/org/codehaus/jackson/map/util/ClassUtil;->findEnumType(Ljava/util/EnumMap;)Ljava/lang/Class;

    move-result-object v1

    .line 98
    .restart local v1    # "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v5, Ljava/lang/Object;

    .line 100
    .local v5, "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {}, Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;->defaultInstance()Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;

    move-result-object v6

    const-class v7, Ljava/util/EnumMap;

    invoke-virtual {v6, v7, v1, v5}, Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;->constructMapType(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Lcom/flurry/org/codehaus/jackson/map/type/MapType;

    move-result-object v6

    invoke-virtual {v6}, Lcom/flurry/org/codehaus/jackson/map/type/MapType;->toCanonical()Ljava/lang/String;

    move-result-object v4

    .line 101
    goto :goto_0

    .line 102
    .end local v1    # "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local p1    # "value":Ljava/lang/Object;
    :cond_3
    const/16 v6, 0x9

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 103
    .local v0, "end":Ljava/lang/String;
    const-string v6, ".Arrays$"

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    const-string v6, ".Collections$"

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_4
    const-string v6, "List"

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-ltz v6, :cond_1

    .line 111
    const-string v4, "java.util.ArrayList"

    goto :goto_0

    .line 114
    .end local v0    # "end":Ljava/lang/String;
    :cond_5
    const/16 v6, 0x24

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-ltz v6, :cond_1

    .line 122
    invoke-static {p2}, Lcom/flurry/org/codehaus/jackson/map/util/ClassUtil;->getOuterClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v2

    .line 123
    .local v2, "outer":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v2, :cond_1

    .line 128
    iget-object v6, p0, Lcom/flurry/org/codehaus/jackson/map/jsontype/impl/ClassNameIdResolver;->_baseType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    invoke-virtual {v6}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v3

    .line 129
    .local v3, "staticType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v3}, Lcom/flurry/org/codehaus/jackson/map/util/ClassUtil;->getOuterClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v6

    if-nez v6, :cond_1

    .line 131
    iget-object v6, p0, Lcom/flurry/org/codehaus/jackson/map/jsontype/impl/ClassNameIdResolver;->_baseType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    invoke-virtual {v6}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object p2

    .line 132
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public getMechanism()Lcom/flurry/org/codehaus/jackson/annotate/JsonTypeInfo$Id;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/flurry/org/codehaus/jackson/annotate/JsonTypeInfo$Id;->CLASS:Lcom/flurry/org/codehaus/jackson/annotate/JsonTypeInfo$Id;

    return-object v0
.end method

.method public idFromValue(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 32
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/flurry/org/codehaus/jackson/map/jsontype/impl/ClassNameIdResolver;->_idFrom(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0
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
    .line 38
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0, p1, p2}, Lcom/flurry/org/codehaus/jackson/map/jsontype/impl/ClassNameIdResolver;->_idFrom(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public registerSubtype(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 27
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    return-void
.end method

.method public typeFromId(Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .locals 7
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 48
    const/16 v4, 0x3c

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-lez v4, :cond_0

    .line 49
    invoke-static {p1}, Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;->fromCanonical(Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v3

    .line 60
    :goto_0
    return-object v3

    .line 58
    :cond_0
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 59
    .local v2, "loader":Ljava/lang/ClassLoader;
    const/4 v4, 0x1

    invoke-static {p1, v4, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 60
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v4, p0, Lcom/flurry/org/codehaus/jackson/map/jsontype/impl/ClassNameIdResolver;->_typeFactory:Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;

    iget-object v5, p0, Lcom/flurry/org/codehaus/jackson/map/jsontype/impl/ClassNameIdResolver;->_baseType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    invoke-virtual {v4, v5, v0}, Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;->constructSpecializedType(Lcom/flurry/org/codehaus/jackson/type/JavaType;Ljava/lang/Class;)Lcom/flurry/org/codehaus/jackson/type/JavaType;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    goto :goto_0

    .line 61
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "loader":Ljava/lang/ClassLoader;
    :catch_0
    move-exception v1

    .line 62
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid type id \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' (for id type \'Id.class\'): no such class found"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 63
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v1

    .line 64
    .local v1, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid type id \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' (for id type \'Id.class\'): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method
