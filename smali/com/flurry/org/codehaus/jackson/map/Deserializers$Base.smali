.class public Lcom/flurry/org/codehaus/jackson/map/Deserializers$Base;
.super Ljava/lang/Object;
.source "Deserializers.java"

# interfaces
.implements Lcom/flurry/org/codehaus/jackson/map/Deserializers;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/org/codehaus/jackson/map/Deserializers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Base"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public findArrayDeserializer(Lcom/flurry/org/codehaus/jackson/map/type/ArrayType;Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/map/DeserializerProvider;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;Lcom/flurry/org/codehaus/jackson/map/TypeDeserializer;Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;)Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;
    .locals 1
    .param p1, "type"    # Lcom/flurry/org/codehaus/jackson/map/type/ArrayType;
    .param p2, "config"    # Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;
    .param p3, "provider"    # Lcom/flurry/org/codehaus/jackson/map/DeserializerProvider;
    .param p4, "property"    # Lcom/flurry/org/codehaus/jackson/map/BeanProperty;
    .param p5, "elementTypeDeserializer"    # Lcom/flurry/org/codehaus/jackson/map/TypeDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/type/ArrayType;",
            "Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;",
            "Lcom/flurry/org/codehaus/jackson/map/DeserializerProvider;",
            "Lcom/flurry/org/codehaus/jackson/map/BeanProperty;",
            "Lcom/flurry/org/codehaus/jackson/map/TypeDeserializer;",
            "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer",
            "<*>;)",
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
    .line 259
    .local p6, "elementDeserializer":Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer<*>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public findBeanDeserializer(Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/map/DeserializerProvider;Lcom/flurry/org/codehaus/jackson/map/BeanDescription;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;
    .locals 1
    .param p1, "type"    # Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .param p2, "config"    # Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;
    .param p3, "provider"    # Lcom/flurry/org/codehaus/jackson/map/DeserializerProvider;
    .param p4, "beanDesc"    # Lcom/flurry/org/codehaus/jackson/map/BeanDescription;
    .param p5, "property"    # Lcom/flurry/org/codehaus/jackson/map/BeanProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/type/JavaType;",
            "Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;",
            "Lcom/flurry/org/codehaus/jackson/map/DeserializerProvider;",
            "Lcom/flurry/org/codehaus/jackson/map/BeanDescription;",
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
    .line 325
    const/4 v0, 0x0

    return-object v0
.end method

.method public findCollectionDeserializer(Lcom/flurry/org/codehaus/jackson/map/type/CollectionType;Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/map/DeserializerProvider;Lcom/flurry/org/codehaus/jackson/map/BeanDescription;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;Lcom/flurry/org/codehaus/jackson/map/TypeDeserializer;Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;)Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;
    .locals 1
    .param p1, "type"    # Lcom/flurry/org/codehaus/jackson/map/type/CollectionType;
    .param p2, "config"    # Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;
    .param p3, "provider"    # Lcom/flurry/org/codehaus/jackson/map/DeserializerProvider;
    .param p4, "beanDesc"    # Lcom/flurry/org/codehaus/jackson/map/BeanDescription;
    .param p5, "property"    # Lcom/flurry/org/codehaus/jackson/map/BeanProperty;
    .param p6, "elementTypeDeserializer"    # Lcom/flurry/org/codehaus/jackson/map/TypeDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/type/CollectionType;",
            "Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;",
            "Lcom/flurry/org/codehaus/jackson/map/DeserializerProvider;",
            "Lcom/flurry/org/codehaus/jackson/map/BeanDescription;",
            "Lcom/flurry/org/codehaus/jackson/map/BeanProperty;",
            "Lcom/flurry/org/codehaus/jackson/map/TypeDeserializer;",
            "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer",
            "<*>;)",
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
    .line 268
    .local p7, "elementDeserializer":Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer<*>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public findCollectionLikeDeserializer(Lcom/flurry/org/codehaus/jackson/map/type/CollectionLikeType;Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/map/DeserializerProvider;Lcom/flurry/org/codehaus/jackson/map/BeanDescription;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;Lcom/flurry/org/codehaus/jackson/map/TypeDeserializer;Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;)Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;
    .locals 1
    .param p1, "type"    # Lcom/flurry/org/codehaus/jackson/map/type/CollectionLikeType;
    .param p2, "config"    # Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;
    .param p3, "provider"    # Lcom/flurry/org/codehaus/jackson/map/DeserializerProvider;
    .param p4, "beanDesc"    # Lcom/flurry/org/codehaus/jackson/map/BeanDescription;
    .param p5, "property"    # Lcom/flurry/org/codehaus/jackson/map/BeanProperty;
    .param p6, "elementTypeDeserializer"    # Lcom/flurry/org/codehaus/jackson/map/TypeDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/type/CollectionLikeType;",
            "Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;",
            "Lcom/flurry/org/codehaus/jackson/map/DeserializerProvider;",
            "Lcom/flurry/org/codehaus/jackson/map/BeanDescription;",
            "Lcom/flurry/org/codehaus/jackson/map/BeanProperty;",
            "Lcom/flurry/org/codehaus/jackson/map/TypeDeserializer;",
            "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer",
            "<*>;)",
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
    .line 277
    .local p7, "elementDeserializer":Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer<*>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public findEnumDeserializer(Ljava/lang/Class;Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/map/BeanDescription;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;
    .locals 1
    .param p2, "config"    # Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;
    .param p3, "beanDesc"    # Lcom/flurry/org/codehaus/jackson/map/BeanDescription;
    .param p4, "property"    # Lcom/flurry/org/codehaus/jackson/map/BeanProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;",
            "Lcom/flurry/org/codehaus/jackson/map/BeanDescription;",
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
    .line 306
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public findMapDeserializer(Lcom/flurry/org/codehaus/jackson/map/type/MapType;Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/map/DeserializerProvider;Lcom/flurry/org/codehaus/jackson/map/BeanDescription;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;Lcom/flurry/org/codehaus/jackson/map/KeyDeserializer;Lcom/flurry/org/codehaus/jackson/map/TypeDeserializer;Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;)Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;
    .locals 1
    .param p1, "type"    # Lcom/flurry/org/codehaus/jackson/map/type/MapType;
    .param p2, "config"    # Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;
    .param p3, "provider"    # Lcom/flurry/org/codehaus/jackson/map/DeserializerProvider;
    .param p4, "beanDesc"    # Lcom/flurry/org/codehaus/jackson/map/BeanDescription;
    .param p5, "property"    # Lcom/flurry/org/codehaus/jackson/map/BeanProperty;
    .param p6, "keyDeserializer"    # Lcom/flurry/org/codehaus/jackson/map/KeyDeserializer;
    .param p7, "elementTypeDeserializer"    # Lcom/flurry/org/codehaus/jackson/map/TypeDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/type/MapType;",
            "Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;",
            "Lcom/flurry/org/codehaus/jackson/map/DeserializerProvider;",
            "Lcom/flurry/org/codehaus/jackson/map/BeanDescription;",
            "Lcom/flurry/org/codehaus/jackson/map/BeanProperty;",
            "Lcom/flurry/org/codehaus/jackson/map/KeyDeserializer;",
            "Lcom/flurry/org/codehaus/jackson/map/TypeDeserializer;",
            "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer",
            "<*>;)",
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
    .line 287
    .local p8, "elementDeserializer":Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer<*>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public findMapLikeDeserializer(Lcom/flurry/org/codehaus/jackson/map/type/MapLikeType;Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/map/DeserializerProvider;Lcom/flurry/org/codehaus/jackson/map/BeanDescription;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;Lcom/flurry/org/codehaus/jackson/map/KeyDeserializer;Lcom/flurry/org/codehaus/jackson/map/TypeDeserializer;Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;)Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;
    .locals 1
    .param p1, "type"    # Lcom/flurry/org/codehaus/jackson/map/type/MapLikeType;
    .param p2, "config"    # Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;
    .param p3, "provider"    # Lcom/flurry/org/codehaus/jackson/map/DeserializerProvider;
    .param p4, "beanDesc"    # Lcom/flurry/org/codehaus/jackson/map/BeanDescription;
    .param p5, "property"    # Lcom/flurry/org/codehaus/jackson/map/BeanProperty;
    .param p6, "keyDeserializer"    # Lcom/flurry/org/codehaus/jackson/map/KeyDeserializer;
    .param p7, "elementTypeDeserializer"    # Lcom/flurry/org/codehaus/jackson/map/TypeDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/type/MapLikeType;",
            "Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;",
            "Lcom/flurry/org/codehaus/jackson/map/DeserializerProvider;",
            "Lcom/flurry/org/codehaus/jackson/map/BeanDescription;",
            "Lcom/flurry/org/codehaus/jackson/map/BeanProperty;",
            "Lcom/flurry/org/codehaus/jackson/map/KeyDeserializer;",
            "Lcom/flurry/org/codehaus/jackson/map/TypeDeserializer;",
            "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer",
            "<*>;)",
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
    .line 297
    .local p8, "elementDeserializer":Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer<*>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public findTreeNodeDeserializer(Ljava/lang/Class;Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;
    .locals 1
    .param p2, "config"    # Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;
    .param p3, "property"    # Lcom/flurry/org/codehaus/jackson/map/BeanProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/flurry/org/codehaus/jackson/JsonNode;",
            ">;",
            "Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;",
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
    .line 315
    .local p1, "nodeType":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/flurry/org/codehaus/jackson/JsonNode;>;"
    const/4 v0, 0x0

    return-object v0
.end method
