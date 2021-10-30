.class public Lcom/flurry/org/codehaus/jackson/map/module/SimpleSerializers;
.super Lcom/flurry/org/codehaus/jackson/map/Serializers$Base;
.source "SimpleSerializers.java"


# instance fields
.field protected _classMappings:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/flurry/org/codehaus/jackson/map/type/ClassKey;",
            "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer",
            "<*>;>;"
        }
    .end annotation
.end field

.field protected _interfaceMappings:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/flurry/org/codehaus/jackson/map/type/ClassKey;",
            "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 46
    invoke-direct {p0}, Lcom/flurry/org/codehaus/jackson/map/Serializers$Base;-><init>()V

    .line 33
    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/module/SimpleSerializers;->_classMappings:Ljava/util/HashMap;

    .line 38
    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/module/SimpleSerializers;->_interfaceMappings:Ljava/util/HashMap;

    .line 46
    return-void
.end method

.method private _addSerializer(Ljava/lang/Class;Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 76
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "ser":Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer<*>;"
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/type/ClassKey;

    invoke-direct {v0, p1}, Lcom/flurry/org/codehaus/jackson/map/type/ClassKey;-><init>(Ljava/lang/Class;)V

    .line 78
    .local v0, "key":Lcom/flurry/org/codehaus/jackson/map/type/ClassKey;
    invoke-virtual {p1}, Ljava/lang/Class;->isInterface()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 79
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/module/SimpleSerializers;->_interfaceMappings:Ljava/util/HashMap;

    if-nez v1, :cond_0

    .line 80
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/module/SimpleSerializers;->_interfaceMappings:Ljava/util/HashMap;

    .line 82
    :cond_0
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/module/SimpleSerializers;->_interfaceMappings:Ljava/util/HashMap;

    invoke-virtual {v1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    :goto_0
    return-void

    .line 84
    :cond_1
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/module/SimpleSerializers;->_classMappings:Ljava/util/HashMap;

    if-nez v1, :cond_2

    .line 85
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/module/SimpleSerializers;->_classMappings:Ljava/util/HashMap;

    .line 87
    :cond_2
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/module/SimpleSerializers;->_classMappings:Ljava/util/HashMap;

    invoke-virtual {v1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method protected _findInterfaceMapping(Ljava/lang/Class;Lcom/flurry/org/codehaus/jackson/map/type/ClassKey;)Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;
    .locals 6
    .param p2, "key"    # Lcom/flurry/org/codehaus/jackson/map/type/ClassKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/flurry/org/codehaus/jackson/map/type/ClassKey;",
            ")",
            "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 193
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/Class;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v2, v0, v1

    .line 194
    .local v2, "iface":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p2, v2}, Lcom/flurry/org/codehaus/jackson/map/type/ClassKey;->reset(Ljava/lang/Class;)V

    .line 195
    iget-object v5, p0, Lcom/flurry/org/codehaus/jackson/map/module/SimpleSerializers;->_interfaceMappings:Ljava/util/HashMap;

    invoke-virtual {v5, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;

    .line 196
    .local v4, "ser":Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer<*>;"
    if-eqz v4, :cond_1

    .line 204
    .end local v2    # "iface":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "ser":Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer<*>;"
    :cond_0
    :goto_1
    return-object v4

    .line 199
    .restart local v2    # "iface":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v4    # "ser":Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer<*>;"
    :cond_1
    invoke-virtual {p0, v2, p2}, Lcom/flurry/org/codehaus/jackson/map/module/SimpleSerializers;->_findInterfaceMapping(Ljava/lang/Class;Lcom/flurry/org/codehaus/jackson/map/type/ClassKey;)Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;

    move-result-object v4

    .line 200
    if-nez v4, :cond_0

    .line 193
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 204
    .end local v2    # "iface":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "ser":Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer<*>;"
    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public addSerializer(Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 60
    .local p1, "ser":Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer<*>;"
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;->handledType()Ljava/lang/Class;

    move-result-object v0

    .line 61
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v0, :cond_0

    const-class v1, Ljava/lang/Object;

    if-ne v0, v1, :cond_1

    .line 62
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "JsonSerializer of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " does not define valid handledType() -- must either register with method that takes type argument "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " or make serializer extend \'org.codehaus.jackson.map.ser.std.SerializerBase\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 66
    :cond_1
    invoke-direct {p0, v0, p1}, Lcom/flurry/org/codehaus/jackson/map/module/SimpleSerializers;->_addSerializer(Ljava/lang/Class;Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;)V

    .line 67
    return-void
.end method

.method public addSerializer(Ljava/lang/Class;Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<+TT;>;",
            "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 71
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<+TT;>;"
    .local p2, "ser":Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer<TT;>;"
    invoke-direct {p0, p1, p2}, Lcom/flurry/org/codehaus/jackson/map/module/SimpleSerializers;->_addSerializer(Ljava/lang/Class;Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;)V

    .line 72
    return-void
.end method

.method public findArraySerializer(Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;Lcom/flurry/org/codehaus/jackson/map/type/ArrayType;Lcom/flurry/org/codehaus/jackson/map/BeanDescription;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;)Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;
    .locals 1
    .param p1, "config"    # Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;
    .param p2, "type"    # Lcom/flurry/org/codehaus/jackson/map/type/ArrayType;
    .param p3, "beanDesc"    # Lcom/flurry/org/codehaus/jackson/map/BeanDescription;
    .param p4, "property"    # Lcom/flurry/org/codehaus/jackson/map/BeanProperty;
    .param p5, "elementTypeSerializer"    # Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;",
            "Lcom/flurry/org/codehaus/jackson/map/type/ArrayType;",
            "Lcom/flurry/org/codehaus/jackson/map/BeanDescription;",
            "Lcom/flurry/org/codehaus/jackson/map/BeanProperty;",
            "Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;",
            "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 152
    .local p6, "elementValueSerializer":Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/flurry/org/codehaus/jackson/map/module/SimpleSerializers;->findSerializer(Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/BeanDescription;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;

    move-result-object v0

    return-object v0
.end method

.method public findCollectionLikeSerializer(Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;Lcom/flurry/org/codehaus/jackson/map/type/CollectionLikeType;Lcom/flurry/org/codehaus/jackson/map/BeanDescription;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;)Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;
    .locals 1
    .param p1, "config"    # Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;
    .param p2, "type"    # Lcom/flurry/org/codehaus/jackson/map/type/CollectionLikeType;
    .param p3, "beanDesc"    # Lcom/flurry/org/codehaus/jackson/map/BeanDescription;
    .param p4, "property"    # Lcom/flurry/org/codehaus/jackson/map/BeanProperty;
    .param p5, "elementTypeSerializer"    # Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;",
            "Lcom/flurry/org/codehaus/jackson/map/type/CollectionLikeType;",
            "Lcom/flurry/org/codehaus/jackson/map/BeanDescription;",
            "Lcom/flurry/org/codehaus/jackson/map/BeanProperty;",
            "Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;",
            "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 166
    .local p6, "elementValueSerializer":Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/flurry/org/codehaus/jackson/map/module/SimpleSerializers;->findSerializer(Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/BeanDescription;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;

    move-result-object v0

    return-object v0
.end method

.method public findCollectionSerializer(Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;Lcom/flurry/org/codehaus/jackson/map/type/CollectionType;Lcom/flurry/org/codehaus/jackson/map/BeanDescription;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;)Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;
    .locals 1
    .param p1, "config"    # Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;
    .param p2, "type"    # Lcom/flurry/org/codehaus/jackson/map/type/CollectionType;
    .param p3, "beanDesc"    # Lcom/flurry/org/codehaus/jackson/map/BeanDescription;
    .param p4, "property"    # Lcom/flurry/org/codehaus/jackson/map/BeanProperty;
    .param p5, "elementTypeSerializer"    # Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;",
            "Lcom/flurry/org/codehaus/jackson/map/type/CollectionType;",
            "Lcom/flurry/org/codehaus/jackson/map/BeanDescription;",
            "Lcom/flurry/org/codehaus/jackson/map/BeanProperty;",
            "Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;",
            "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 159
    .local p6, "elementValueSerializer":Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/flurry/org/codehaus/jackson/map/module/SimpleSerializers;->findSerializer(Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/BeanDescription;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;

    move-result-object v0

    return-object v0
.end method

.method public findMapLikeSerializer(Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;Lcom/flurry/org/codehaus/jackson/map/type/MapLikeType;Lcom/flurry/org/codehaus/jackson/map/BeanDescription;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;)Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;
    .locals 1
    .param p1, "config"    # Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;
    .param p2, "type"    # Lcom/flurry/org/codehaus/jackson/map/type/MapLikeType;
    .param p3, "beanDesc"    # Lcom/flurry/org/codehaus/jackson/map/BeanDescription;
    .param p4, "property"    # Lcom/flurry/org/codehaus/jackson/map/BeanProperty;
    .param p6, "elementTypeSerializer"    # Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;",
            "Lcom/flurry/org/codehaus/jackson/map/type/MapLikeType;",
            "Lcom/flurry/org/codehaus/jackson/map/BeanDescription;",
            "Lcom/flurry/org/codehaus/jackson/map/BeanProperty;",
            "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;",
            "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 182
    .local p5, "keySerializer":Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    .local p7, "elementValueSerializer":Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/flurry/org/codehaus/jackson/map/module/SimpleSerializers;->findSerializer(Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/BeanDescription;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;

    move-result-object v0

    return-object v0
.end method

.method public findMapSerializer(Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;Lcom/flurry/org/codehaus/jackson/map/type/MapType;Lcom/flurry/org/codehaus/jackson/map/BeanDescription;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;)Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;
    .locals 1
    .param p1, "config"    # Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;
    .param p2, "type"    # Lcom/flurry/org/codehaus/jackson/map/type/MapType;
    .param p3, "beanDesc"    # Lcom/flurry/org/codehaus/jackson/map/BeanDescription;
    .param p4, "property"    # Lcom/flurry/org/codehaus/jackson/map/BeanProperty;
    .param p6, "elementTypeSerializer"    # Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;",
            "Lcom/flurry/org/codehaus/jackson/map/type/MapType;",
            "Lcom/flurry/org/codehaus/jackson/map/BeanDescription;",
            "Lcom/flurry/org/codehaus/jackson/map/BeanProperty;",
            "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;",
            "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 174
    .local p5, "keySerializer":Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    .local p7, "elementValueSerializer":Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/flurry/org/codehaus/jackson/map/module/SimpleSerializers;->findSerializer(Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/BeanDescription;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;

    move-result-object v0

    return-object v0
.end method

.method public findSerializer(Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/BeanDescription;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;
    .locals 5
    .param p1, "config"    # Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;
    .param p2, "type"    # Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .param p3, "beanDesc"    # Lcom/flurry/org/codehaus/jackson/map/BeanDescription;
    .param p4, "property"    # Lcom/flurry/org/codehaus/jackson/map/BeanProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;",
            "Lcom/flurry/org/codehaus/jackson/type/JavaType;",
            "Lcom/flurry/org/codehaus/jackson/map/BeanDescription;",
            "Lcom/flurry/org/codehaus/jackson/map/BeanProperty;",
            ")",
            "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 101
    invoke-virtual {p2}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    .line 102
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v2, Lcom/flurry/org/codehaus/jackson/map/type/ClassKey;

    invoke-direct {v2, v0}, Lcom/flurry/org/codehaus/jackson/map/type/ClassKey;-><init>(Ljava/lang/Class;)V

    .line 103
    .local v2, "key":Lcom/flurry/org/codehaus/jackson/map/type/ClassKey;
    const/4 v3, 0x0

    .line 106
    .local v3, "ser":Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->isInterface()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 107
    iget-object v4, p0, Lcom/flurry/org/codehaus/jackson/map/module/SimpleSerializers;->_interfaceMappings:Ljava/util/HashMap;

    if-eqz v4, :cond_3

    .line 108
    iget-object v4, p0, Lcom/flurry/org/codehaus/jackson/map/module/SimpleSerializers;->_interfaceMappings:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "ser":Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer<*>;"
    check-cast v3, Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;

    .line 109
    .restart local v3    # "ser":Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer<*>;"
    if-eqz v3, :cond_3

    move-object v4, v3

    .line 145
    :goto_0
    return-object v4

    .line 114
    :cond_0
    iget-object v4, p0, Lcom/flurry/org/codehaus/jackson/map/module/SimpleSerializers;->_classMappings:Ljava/util/HashMap;

    if-eqz v4, :cond_3

    .line 115
    iget-object v4, p0, Lcom/flurry/org/codehaus/jackson/map/module/SimpleSerializers;->_classMappings:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "ser":Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer<*>;"
    check-cast v3, Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;

    .line 116
    .restart local v3    # "ser":Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer<*>;"
    if-eqz v3, :cond_1

    move-object v4, v3

    .line 117
    goto :goto_0

    .line 120
    :cond_1
    move-object v1, v0

    .local v1, "curr":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_1
    if-eqz v1, :cond_3

    .line 121
    invoke-virtual {v2, v1}, Lcom/flurry/org/codehaus/jackson/map/type/ClassKey;->reset(Ljava/lang/Class;)V

    .line 122
    iget-object v4, p0, Lcom/flurry/org/codehaus/jackson/map/module/SimpleSerializers;->_classMappings:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "ser":Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer<*>;"
    check-cast v3, Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;

    .line 123
    .restart local v3    # "ser":Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer<*>;"
    if-eqz v3, :cond_2

    move-object v4, v3

    .line 124
    goto :goto_0

    .line 120
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_1

    .line 130
    .end local v1    # "curr":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_3
    iget-object v4, p0, Lcom/flurry/org/codehaus/jackson/map/module/SimpleSerializers;->_interfaceMappings:Ljava/util/HashMap;

    if-eqz v4, :cond_6

    .line 131
    invoke-virtual {p0, v0, v2}, Lcom/flurry/org/codehaus/jackson/map/module/SimpleSerializers;->_findInterfaceMapping(Ljava/lang/Class;Lcom/flurry/org/codehaus/jackson/map/type/ClassKey;)Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;

    move-result-object v3

    .line 132
    if-eqz v3, :cond_4

    move-object v4, v3

    .line 133
    goto :goto_0

    .line 136
    :cond_4
    invoke-virtual {v0}, Ljava/lang/Class;->isInterface()Z

    move-result v4

    if-nez v4, :cond_6

    .line 137
    :cond_5
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 138
    invoke-virtual {p0, v0, v2}, Lcom/flurry/org/codehaus/jackson/map/module/SimpleSerializers;->_findInterfaceMapping(Ljava/lang/Class;Lcom/flurry/org/codehaus/jackson/map/type/ClassKey;)Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;

    move-result-object v3

    .line 139
    if-eqz v3, :cond_5

    move-object v4, v3

    .line 140
    goto :goto_0

    .line 145
    :cond_6
    const/4 v4, 0x0

    goto :goto_0
.end method
