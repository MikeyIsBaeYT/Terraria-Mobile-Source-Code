.class public Lcom/flurry/org/codehaus/jackson/map/ser/CustomSerializerFactory;
.super Lcom/flurry/org/codehaus/jackson/map/ser/BeanSerializerFactory;
.source "CustomSerializerFactory.java"


# instance fields
.field protected _directClassMappings:Ljava/util/HashMap;
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

.field protected _enumSerializerOverride:Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer",
            "<*>;"
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

.field protected _transitiveClassMappings:Ljava/util/HashMap;
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
    .line 89
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/flurry/org/codehaus/jackson/map/ser/CustomSerializerFactory;-><init>(Lcom/flurry/org/codehaus/jackson/map/SerializerFactory$Config;)V

    .line 90
    return-void
.end method

.method public constructor <init>(Lcom/flurry/org/codehaus/jackson/map/SerializerFactory$Config;)V
    .locals 1
    .param p1, "config"    # Lcom/flurry/org/codehaus/jackson/map/SerializerFactory$Config;

    .prologue
    const/4 v0, 0x0

    .line 93
    invoke-direct {p0, p1}, Lcom/flurry/org/codehaus/jackson/map/ser/BeanSerializerFactory;-><init>(Lcom/flurry/org/codehaus/jackson/map/SerializerFactory$Config;)V

    .line 56
    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ser/CustomSerializerFactory;->_directClassMappings:Ljava/util/HashMap;

    .line 75
    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ser/CustomSerializerFactory;->_transitiveClassMappings:Ljava/util/HashMap;

    .line 80
    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ser/CustomSerializerFactory;->_interfaceMappings:Ljava/util/HashMap;

    .line 94
    return-void
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
    .line 278
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

    .line 279
    .local v2, "iface":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p2, v2}, Lcom/flurry/org/codehaus/jackson/map/type/ClassKey;->reset(Ljava/lang/Class;)V

    .line 280
    iget-object v5, p0, Lcom/flurry/org/codehaus/jackson/map/ser/CustomSerializerFactory;->_interfaceMappings:Ljava/util/HashMap;

    invoke-virtual {v5, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;

    .line 281
    .local v4, "ser":Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer<*>;"
    if-eqz v4, :cond_1

    .line 290
    .end local v2    # "iface":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "ser":Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer<*>;"
    :cond_0
    :goto_1
    return-object v4

    .line 285
    .restart local v2    # "iface":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v4    # "ser":Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer<*>;"
    :cond_1
    invoke-virtual {p0, v2, p2}, Lcom/flurry/org/codehaus/jackson/map/ser/CustomSerializerFactory;->_findInterfaceMapping(Ljava/lang/Class;Lcom/flurry/org/codehaus/jackson/map/type/ClassKey;)Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;

    move-result-object v4

    .line 286
    if-nez v4, :cond_0

    .line 278
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 290
    .end local v2    # "iface":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "ser":Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer<*>;"
    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public addGenericMapping(Ljava/lang/Class;Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;)V
    .locals 2
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
    .line 137
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<+TT;>;"
    .local p2, "ser":Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer<TT;>;"
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/type/ClassKey;

    invoke-direct {v0, p1}, Lcom/flurry/org/codehaus/jackson/map/type/ClassKey;-><init>(Ljava/lang/Class;)V

    .line 138
    .local v0, "key":Lcom/flurry/org/codehaus/jackson/map/type/ClassKey;
    invoke-virtual {p1}, Ljava/lang/Class;->isInterface()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 139
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/ser/CustomSerializerFactory;->_interfaceMappings:Ljava/util/HashMap;

    if-nez v1, :cond_0

    .line 140
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/ser/CustomSerializerFactory;->_interfaceMappings:Ljava/util/HashMap;

    .line 142
    :cond_0
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/ser/CustomSerializerFactory;->_interfaceMappings:Ljava/util/HashMap;

    invoke-virtual {v1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    :goto_0
    return-void

    .line 144
    :cond_1
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/ser/CustomSerializerFactory;->_transitiveClassMappings:Ljava/util/HashMap;

    if-nez v1, :cond_2

    .line 145
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/ser/CustomSerializerFactory;->_transitiveClassMappings:Ljava/util/HashMap;

    .line 147
    :cond_2
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/ser/CustomSerializerFactory;->_transitiveClassMappings:Ljava/util/HashMap;

    invoke-virtual {v1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public addSpecificMapping(Ljava/lang/Class;Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;)V
    .locals 4
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
    .line 165
    .local p1, "forClass":Ljava/lang/Class;, "Ljava/lang/Class<+TT;>;"
    .local p2, "ser":Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer<TT;>;"
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/type/ClassKey;

    invoke-direct {v0, p1}, Lcom/flurry/org/codehaus/jackson/map/type/ClassKey;-><init>(Ljava/lang/Class;)V

    .line 171
    .local v0, "key":Lcom/flurry/org/codehaus/jackson/map/type/ClassKey;
    invoke-virtual {p1}, Ljava/lang/Class;->isInterface()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 172
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can not add specific mapping for an interface ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 174
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 175
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can not add specific mapping for an abstract class ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 178
    :cond_1
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/ser/CustomSerializerFactory;->_directClassMappings:Ljava/util/HashMap;

    if-nez v1, :cond_2

    .line 179
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/ser/CustomSerializerFactory;->_directClassMappings:Ljava/util/HashMap;

    .line 181
    :cond_2
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/ser/CustomSerializerFactory;->_directClassMappings:Ljava/util/HashMap;

    invoke-virtual {v1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    return-void
.end method

.method public createSerializer(Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;
    .locals 2
    .param p1, "config"    # Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;
    .param p2, "type"    # Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .param p3, "property"    # Lcom/flurry/org/codehaus/jackson/map/BeanProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;",
            "Lcom/flurry/org/codehaus/jackson/type/JavaType;",
            "Lcom/flurry/org/codehaus/jackson/map/BeanProperty;",
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
    .line 213
    invoke-virtual {p2}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lcom/flurry/org/codehaus/jackson/map/ser/CustomSerializerFactory;->findCustomSerializer(Ljava/lang/Class;Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;)Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;

    move-result-object v0

    .line 214
    .local v0, "ser":Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer<*>;"
    if-eqz v0, :cond_0

    .line 217
    .end local v0    # "ser":Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer<*>;"
    :goto_0
    return-object v0

    .restart local v0    # "ser":Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer<*>;"
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/flurry/org/codehaus/jackson/map/ser/BeanSerializerFactory;->createSerializer(Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;

    move-result-object v0

    goto :goto_0
.end method

.method protected findCustomSerializer(Ljava/lang/Class;Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;)Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;
    .locals 4
    .param p2, "config"    # Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;",
            ")",
            "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 228
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v2, 0x0

    .line 229
    .local v2, "ser":Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer<*>;"
    new-instance v1, Lcom/flurry/org/codehaus/jackson/map/type/ClassKey;

    invoke-direct {v1, p1}, Lcom/flurry/org/codehaus/jackson/map/type/ClassKey;-><init>(Ljava/lang/Class;)V

    .line 232
    .local v1, "key":Lcom/flurry/org/codehaus/jackson/map/type/ClassKey;
    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/map/ser/CustomSerializerFactory;->_directClassMappings:Ljava/util/HashMap;

    if-eqz v3, :cond_0

    .line 233
    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/map/ser/CustomSerializerFactory;->_directClassMappings:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "ser":Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer<*>;"
    check-cast v2, Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;

    .line 234
    .restart local v2    # "ser":Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer<*>;"
    if-eqz v2, :cond_0

    move-object v3, v2

    .line 273
    :goto_0
    return-object v3

    .line 240
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->isEnum()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 241
    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/map/ser/CustomSerializerFactory;->_enumSerializerOverride:Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;

    if-eqz v3, :cond_1

    .line 242
    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/map/ser/CustomSerializerFactory;->_enumSerializerOverride:Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;

    goto :goto_0

    .line 248
    :cond_1
    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/map/ser/CustomSerializerFactory;->_transitiveClassMappings:Ljava/util/HashMap;

    if-eqz v3, :cond_3

    .line 249
    move-object v0, p1

    .local v0, "curr":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_1
    if-eqz v0, :cond_3

    .line 250
    invoke-virtual {v1, v0}, Lcom/flurry/org/codehaus/jackson/map/type/ClassKey;->reset(Ljava/lang/Class;)V

    .line 251
    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/map/ser/CustomSerializerFactory;->_transitiveClassMappings:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "ser":Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer<*>;"
    check-cast v2, Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;

    .line 252
    .restart local v2    # "ser":Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer<*>;"
    if-eqz v2, :cond_2

    move-object v3, v2

    .line 253
    goto :goto_0

    .line 249
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_1

    .line 259
    .end local v0    # "curr":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_3
    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/map/ser/CustomSerializerFactory;->_interfaceMappings:Ljava/util/HashMap;

    if-eqz v3, :cond_6

    .line 261
    invoke-virtual {v1, p1}, Lcom/flurry/org/codehaus/jackson/map/type/ClassKey;->reset(Ljava/lang/Class;)V

    .line 262
    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/map/ser/CustomSerializerFactory;->_interfaceMappings:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "ser":Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer<*>;"
    check-cast v2, Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;

    .line 263
    .restart local v2    # "ser":Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer<*>;"
    if-eqz v2, :cond_4

    move-object v3, v2

    .line 264
    goto :goto_0

    .line 266
    :cond_4
    move-object v0, p1

    .restart local v0    # "curr":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_2
    if-eqz v0, :cond_6

    .line 267
    invoke-virtual {p0, v0, v1}, Lcom/flurry/org/codehaus/jackson/map/ser/CustomSerializerFactory;->_findInterfaceMapping(Ljava/lang/Class;Lcom/flurry/org/codehaus/jackson/map/type/ClassKey;)Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;

    move-result-object v2

    .line 268
    if-eqz v2, :cond_5

    move-object v3, v2

    .line 269
    goto :goto_0

    .line 266
    :cond_5
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_2

    .line 273
    .end local v0    # "curr":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_6
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public setEnumSerializer(Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 198
    .local p1, "enumSer":Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer<*>;"
    iput-object p1, p0, Lcom/flurry/org/codehaus/jackson/map/ser/CustomSerializerFactory;->_enumSerializerOverride:Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;

    .line 199
    return-void
.end method

.method public withConfig(Lcom/flurry/org/codehaus/jackson/map/SerializerFactory$Config;)Lcom/flurry/org/codehaus/jackson/map/SerializerFactory;
    .locals 3
    .param p1, "config"    # Lcom/flurry/org/codehaus/jackson/map/SerializerFactory$Config;

    .prologue
    .line 102
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/flurry/org/codehaus/jackson/map/ser/CustomSerializerFactory;

    if-eq v0, v1, :cond_0

    .line 103
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Subtype of CustomSerializerFactory ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") has not properly overridden method \'withAdditionalSerializers\': can not instantiate subtype with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "additional serializer definitions"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :cond_0
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/ser/CustomSerializerFactory;

    invoke-direct {v0, p1}, Lcom/flurry/org/codehaus/jackson/map/ser/CustomSerializerFactory;-><init>(Lcom/flurry/org/codehaus/jackson/map/SerializerFactory$Config;)V

    return-object v0
.end method
