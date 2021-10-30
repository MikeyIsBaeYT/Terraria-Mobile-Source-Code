.class public Lcom/flurry/org/codehaus/jackson/map/deser/CustomDeserializerFactory;
.super Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerFactory;
.source "CustomDeserializerFactory.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field protected _directClassMappings:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/flurry/org/codehaus/jackson/map/type/ClassKey;",
            "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer",
            "<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field protected _mixInAnnotations:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/flurry/org/codehaus/jackson/map/type/ClassKey;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/flurry/org/codehaus/jackson/map/deser/CustomDeserializerFactory;-><init>(Lcom/flurry/org/codehaus/jackson/map/DeserializerFactory$Config;)V

    .line 88
    return-void
.end method

.method protected constructor <init>(Lcom/flurry/org/codehaus/jackson/map/DeserializerFactory$Config;)V
    .locals 1
    .param p1, "config"    # Lcom/flurry/org/codehaus/jackson/map/DeserializerFactory$Config;

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerFactory;-><init>(Lcom/flurry/org/codehaus/jackson/map/DeserializerFactory$Config;)V

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/CustomDeserializerFactory;->_directClassMappings:Ljava/util/HashMap;

    .line 93
    return-void
.end method


# virtual methods
.method public addMixInAnnotationMapping(Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 157
    .local p1, "destinationClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "classWithMixIns":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/CustomDeserializerFactory;->_mixInAnnotations:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 158
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/CustomDeserializerFactory;->_mixInAnnotations:Ljava/util/HashMap;

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/CustomDeserializerFactory;->_mixInAnnotations:Ljava/util/HashMap;

    new-instance v1, Lcom/flurry/org/codehaus/jackson/map/type/ClassKey;

    invoke-direct {v1, p1}, Lcom/flurry/org/codehaus/jackson/map/type/ClassKey;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    return-void
.end method

.method public addSpecificMapping(Ljava/lang/Class;Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer",
            "<+TT;>;)V"
        }
    .end annotation

    .prologue
    .line 132
    .local p1, "forClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "deser":Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer<+TT;>;"
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/type/ClassKey;

    invoke-direct {v0, p1}, Lcom/flurry/org/codehaus/jackson/map/type/ClassKey;-><init>(Ljava/lang/Class;)V

    .line 133
    .local v0, "key":Lcom/flurry/org/codehaus/jackson/map/type/ClassKey;
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/deser/CustomDeserializerFactory;->_directClassMappings:Ljava/util/HashMap;

    if-nez v1, :cond_0

    .line 134
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/deser/CustomDeserializerFactory;->_directClassMappings:Ljava/util/HashMap;

    .line 136
    :cond_0
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/deser/CustomDeserializerFactory;->_directClassMappings:Ljava/util/HashMap;

    invoke-virtual {v1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    return-void
.end method

.method public createArrayDeserializer(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/map/DeserializerProvider;Lcom/flurry/org/codehaus/jackson/map/type/ArrayType;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;
    .locals 3
    .param p1, "config"    # Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;
    .param p2, "p"    # Lcom/flurry/org/codehaus/jackson/map/DeserializerProvider;
    .param p3, "type"    # Lcom/flurry/org/codehaus/jackson/map/type/ArrayType;
    .param p4, "property"    # Lcom/flurry/org/codehaus/jackson/map/BeanProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;",
            "Lcom/flurry/org/codehaus/jackson/map/DeserializerProvider;",
            "Lcom/flurry/org/codehaus/jackson/map/type/ArrayType;",
            "Lcom/flurry/org/codehaus/jackson/map/BeanProperty;",
            ")",
            "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 193
    new-instance v1, Lcom/flurry/org/codehaus/jackson/map/type/ClassKey;

    invoke-virtual {p3}, Lcom/flurry/org/codehaus/jackson/map/type/ArrayType;->getRawClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/flurry/org/codehaus/jackson/map/type/ClassKey;-><init>(Ljava/lang/Class;)V

    .line 194
    .local v1, "key":Lcom/flurry/org/codehaus/jackson/map/type/ClassKey;
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/deser/CustomDeserializerFactory;->_directClassMappings:Ljava/util/HashMap;

    if-eqz v2, :cond_0

    .line 195
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/deser/CustomDeserializerFactory;->_directClassMappings:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;

    .line 196
    .local v0, "deser":Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer<Ljava/lang/Object;>;"
    if-eqz v0, :cond_0

    .line 200
    .end local v0    # "deser":Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer<Ljava/lang/Object;>;"
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerFactory;->createArrayDeserializer(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/map/DeserializerProvider;Lcom/flurry/org/codehaus/jackson/map/type/ArrayType;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;

    move-result-object v0

    goto :goto_0
.end method

.method public createBeanDeserializer(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/map/DeserializerProvider;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;
    .locals 4
    .param p1, "config"    # Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;
    .param p2, "p"    # Lcom/flurry/org/codehaus/jackson/map/DeserializerProvider;
    .param p3, "type"    # Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .param p4, "property"    # Lcom/flurry/org/codehaus/jackson/map/BeanProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;",
            "Lcom/flurry/org/codehaus/jackson/map/DeserializerProvider;",
            "Lcom/flurry/org/codehaus/jackson/type/JavaType;",
            "Lcom/flurry/org/codehaus/jackson/map/BeanProperty;",
            ")",
            "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer",
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
    .line 174
    invoke-virtual {p3}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    .line 175
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v2, Lcom/flurry/org/codehaus/jackson/map/type/ClassKey;

    invoke-direct {v2, v0}, Lcom/flurry/org/codehaus/jackson/map/type/ClassKey;-><init>(Ljava/lang/Class;)V

    .line 178
    .local v2, "key":Lcom/flurry/org/codehaus/jackson/map/type/ClassKey;
    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/map/deser/CustomDeserializerFactory;->_directClassMappings:Ljava/util/HashMap;

    if-eqz v3, :cond_0

    .line 179
    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/map/deser/CustomDeserializerFactory;->_directClassMappings:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;

    .line 180
    .local v1, "deser":Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer<Ljava/lang/Object;>;"
    if-eqz v1, :cond_0

    .line 185
    .end local v1    # "deser":Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer<Ljava/lang/Object;>;"
    :goto_0
    return-object v1

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerFactory;->createBeanDeserializer(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/map/DeserializerProvider;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;

    move-result-object v1

    goto :goto_0
.end method

.method public createEnumDeserializer(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/map/DeserializerProvider;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;
    .locals 3
    .param p1, "config"    # Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;
    .param p2, "p"    # Lcom/flurry/org/codehaus/jackson/map/DeserializerProvider;
    .param p3, "enumType"    # Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .param p4, "property"    # Lcom/flurry/org/codehaus/jackson/map/BeanProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;",
            "Lcom/flurry/org/codehaus/jackson/map/DeserializerProvider;",
            "Lcom/flurry/org/codehaus/jackson/type/JavaType;",
            "Lcom/flurry/org/codehaus/jackson/map/BeanProperty;",
            ")",
            "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 214
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/deser/CustomDeserializerFactory;->_directClassMappings:Ljava/util/HashMap;

    if-eqz v2, :cond_0

    .line 215
    new-instance v1, Lcom/flurry/org/codehaus/jackson/map/type/ClassKey;

    invoke-virtual {p3}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/flurry/org/codehaus/jackson/map/type/ClassKey;-><init>(Ljava/lang/Class;)V

    .line 216
    .local v1, "key":Lcom/flurry/org/codehaus/jackson/map/type/ClassKey;
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/deser/CustomDeserializerFactory;->_directClassMappings:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;

    .line 217
    .local v0, "deser":Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer<*>;"
    if-eqz v0, :cond_0

    .line 221
    .end local v0    # "deser":Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer<*>;"
    .end local v1    # "key":Lcom/flurry/org/codehaus/jackson/map/type/ClassKey;
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerFactory;->createEnumDeserializer(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/map/DeserializerProvider;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;

    move-result-object v0

    goto :goto_0
.end method

.method public withConfig(Lcom/flurry/org/codehaus/jackson/map/DeserializerFactory$Config;)Lcom/flurry/org/codehaus/jackson/map/DeserializerFactory;
    .locals 3
    .param p1, "config"    # Lcom/flurry/org/codehaus/jackson/map/DeserializerFactory$Config;

    .prologue
    .line 99
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/flurry/org/codehaus/jackson/map/deser/CustomDeserializerFactory;

    if-eq v0, v1, :cond_0

    .line 100
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Subtype of CustomDeserializerFactory ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") has not properly overridden method \'withAdditionalDeserializers\': can not instantiate subtype with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "additional deserializer definitions"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    :cond_0
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/deser/CustomDeserializerFactory;

    invoke-direct {v0, p1}, Lcom/flurry/org/codehaus/jackson/map/deser/CustomDeserializerFactory;-><init>(Lcom/flurry/org/codehaus/jackson/map/DeserializerFactory$Config;)V

    return-object v0
.end method
