.class public abstract Lcom/flurry/org/codehaus/jackson/map/deser/BasicDeserializerFactory;
.super Lcom/flurry/org/codehaus/jackson/map/DeserializerFactory;
.source "BasicDeserializerFactory.java"


# static fields
.field protected static final _arrayDeserializers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/flurry/org/codehaus/jackson/type/JavaType;",
            "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer",
            "<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field static final _collectionFallbacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Ljava/util/Collection;",
            ">;>;"
        }
    .end annotation
.end field

.field static final _keyDeserializers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/flurry/org/codehaus/jackson/type/JavaType;",
            "Lcom/flurry/org/codehaus/jackson/map/KeyDeserializer;",
            ">;"
        }
    .end annotation
.end field

.field static final _mapFallbacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Ljava/util/Map;",
            ">;>;"
        }
    .end annotation
.end field

.field static final _simpleDeserializers:Ljava/util/HashMap;
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


# instance fields
.field protected optionalHandlers:Lcom/flurry/org/codehaus/jackson/map/ext/OptionalHandlerFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 46
    invoke-static {}, Lcom/flurry/org/codehaus/jackson/map/deser/StdDeserializers;->constructAll()Ljava/util/HashMap;

    move-result-object v3

    sput-object v3, Lcom/flurry/org/codehaus/jackson/map/deser/BasicDeserializerFactory;->_simpleDeserializers:Ljava/util/HashMap;

    .line 53
    invoke-static {}, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdKeyDeserializers;->constructAll()Ljava/util/HashMap;

    move-result-object v3

    sput-object v3, Lcom/flurry/org/codehaus/jackson/map/deser/BasicDeserializerFactory;->_keyDeserializers:Ljava/util/HashMap;

    .line 60
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sput-object v3, Lcom/flurry/org/codehaus/jackson/map/deser/BasicDeserializerFactory;->_mapFallbacks:Ljava/util/HashMap;

    .line 63
    sget-object v3, Lcom/flurry/org/codehaus/jackson/map/deser/BasicDeserializerFactory;->_mapFallbacks:Ljava/util/HashMap;

    const-class v4, Ljava/util/Map;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const-class v5, Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v3, Lcom/flurry/org/codehaus/jackson/map/deser/BasicDeserializerFactory;->_mapFallbacks:Ljava/util/HashMap;

    const-class v4, Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const-class v5, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v3, Lcom/flurry/org/codehaus/jackson/map/deser/BasicDeserializerFactory;->_mapFallbacks:Ljava/util/HashMap;

    const-class v4, Ljava/util/SortedMap;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const-class v5, Ljava/util/TreeMap;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v3, Lcom/flurry/org/codehaus/jackson/map/deser/BasicDeserializerFactory;->_mapFallbacks:Ljava/util/HashMap;

    const-string v4, "java.util.NavigableMap"

    const-class v5, Ljava/util/TreeMap;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    :try_start_0
    const-string v3, "java.util.ConcurrentNavigableMap"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 75
    .local v0, "key":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v3, "java.util.ConcurrentSkipListMap"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 77
    .local v2, "value":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v1, v2

    .line 78
    .local v1, "mapValue":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/util/Map<**>;>;"
    sget-object v3, Lcom/flurry/org/codehaus/jackson/map/deser/BasicDeserializerFactory;->_mapFallbacks:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    .end local v1    # "mapValue":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/util/Map<**>;>;"
    .end local v2    # "value":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sput-object v3, Lcom/flurry/org/codehaus/jackson/map/deser/BasicDeserializerFactory;->_collectionFallbacks:Ljava/util/HashMap;

    .line 91
    sget-object v3, Lcom/flurry/org/codehaus/jackson/map/deser/BasicDeserializerFactory;->_collectionFallbacks:Ljava/util/HashMap;

    const-class v4, Ljava/util/Collection;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const-class v5, Ljava/util/ArrayList;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v3, Lcom/flurry/org/codehaus/jackson/map/deser/BasicDeserializerFactory;->_collectionFallbacks:Ljava/util/HashMap;

    const-class v4, Ljava/util/List;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const-class v5, Ljava/util/ArrayList;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v3, Lcom/flurry/org/codehaus/jackson/map/deser/BasicDeserializerFactory;->_collectionFallbacks:Ljava/util/HashMap;

    const-class v4, Ljava/util/Set;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const-class v5, Ljava/util/HashSet;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v3, Lcom/flurry/org/codehaus/jackson/map/deser/BasicDeserializerFactory;->_collectionFallbacks:Ljava/util/HashMap;

    const-class v4, Ljava/util/SortedSet;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const-class v5, Ljava/util/TreeSet;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v3, Lcom/flurry/org/codehaus/jackson/map/deser/BasicDeserializerFactory;->_collectionFallbacks:Ljava/util/HashMap;

    const-class v4, Ljava/util/Queue;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const-class v5, Ljava/util/LinkedList;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v3, Lcom/flurry/org/codehaus/jackson/map/deser/BasicDeserializerFactory;->_collectionFallbacks:Ljava/util/HashMap;

    const-string v4, "java.util.Deque"

    const-class v5, Ljava/util/LinkedList;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v3, Lcom/flurry/org/codehaus/jackson/map/deser/BasicDeserializerFactory;->_collectionFallbacks:Ljava/util/HashMap;

    const-string v4, "java.util.NavigableSet"

    const-class v5, Ljava/util/TreeSet;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    invoke-static {}, Lcom/flurry/org/codehaus/jackson/map/deser/std/PrimitiveArrayDeserializers;->getAll()Ljava/util/HashMap;

    move-result-object v3

    sput-object v3, Lcom/flurry/org/codehaus/jackson/map/deser/BasicDeserializerFactory;->_arrayDeserializers:Ljava/util/HashMap;

    return-void

    .line 79
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/flurry/org/codehaus/jackson/map/DeserializerFactory;-><init>()V

    .line 117
    sget-object v0, Lcom/flurry/org/codehaus/jackson/map/ext/OptionalHandlerFactory;->instance:Lcom/flurry/org/codehaus/jackson/map/ext/OptionalHandlerFactory;

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/BasicDeserializerFactory;->optionalHandlers:Lcom/flurry/org/codehaus/jackson/map/ext/OptionalHandlerFactory;

    .line 125
    return-void
.end method


# virtual methods
.method _constructDeserializer(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;Ljava/lang/Object;)Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;
    .locals 5
    .param p1, "config"    # Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;
    .param p2, "ann"    # Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;
    .param p3, "property"    # Lcom/flurry/org/codehaus/jackson/map/BeanProperty;
    .param p4, "deserDef"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;",
            "Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;",
            "Lcom/flurry/org/codehaus/jackson/map/BeanProperty;",
            "Ljava/lang/Object;",
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
    .line 698
    instance-of v2, p4, Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;

    if-eqz v2, :cond_1

    move-object v0, p4

    .line 699
    check-cast v0, Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;

    .line 701
    .local v0, "deser":Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer<Ljava/lang/Object;>;"
    instance-of v2, v0, Lcom/flurry/org/codehaus/jackson/map/ContextualDeserializer;

    if-eqz v2, :cond_0

    .line 702
    check-cast v0, Lcom/flurry/org/codehaus/jackson/map/ContextualDeserializer;

    .end local v0    # "deser":Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer<Ljava/lang/Object;>;"
    invoke-interface {v0, p1, p3}, Lcom/flurry/org/codehaus/jackson/map/ContextualDeserializer;->createContextual(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;

    move-result-object v0

    .line 721
    .restart local v0    # "deser":Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer<Ljava/lang/Object;>;"
    :cond_0
    :goto_0
    return-object v0

    .line 709
    .end local v0    # "deser":Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer<Ljava/lang/Object;>;"
    :cond_1
    instance-of v2, p4, Ljava/lang/Class;

    if-nez v2, :cond_2

    .line 710
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AnnotationIntrospector returned deserializer definition of type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; expected type JsonDeserializer or Class<JsonDeserializer> instead"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    move-object v1, p4

    .line 712
    check-cast v1, Ljava/lang/Class;

    .line 713
    .local v1, "deserClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer<*>;>;"
    const-class v2, Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 714
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AnnotationIntrospector returned Class "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; expected Class<JsonDeserializer>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 716
    :cond_3
    invoke-virtual {p1, p2, v1}, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;->deserializerInstance(Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;Ljava/lang/Class;)Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;

    move-result-object v0

    .line 718
    .restart local v0    # "deser":Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer<Ljava/lang/Object;>;"
    instance-of v2, v0, Lcom/flurry/org/codehaus/jackson/map/ContextualDeserializer;

    if-eqz v2, :cond_0

    .line 719
    check-cast v0, Lcom/flurry/org/codehaus/jackson/map/ContextualDeserializer;

    .end local v0    # "deser":Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer<Ljava/lang/Object;>;"
    invoke-interface {v0, p1, p3}, Lcom/flurry/org/codehaus/jackson/map/ContextualDeserializer;->createContextual(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;

    move-result-object v0

    .restart local v0    # "deser":Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer<Ljava/lang/Object;>;"
    goto :goto_0
.end method

.method protected abstract _findCustomArrayDeserializer(Lcom/flurry/org/codehaus/jackson/map/type/ArrayType;Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/map/DeserializerProvider;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;Lcom/flurry/org/codehaus/jackson/map/TypeDeserializer;Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;)Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;
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
.end method

.method protected abstract _findCustomCollectionDeserializer(Lcom/flurry/org/codehaus/jackson/map/type/CollectionType;Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/map/DeserializerProvider;Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;Lcom/flurry/org/codehaus/jackson/map/TypeDeserializer;Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;)Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/type/CollectionType;",
            "Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;",
            "Lcom/flurry/org/codehaus/jackson/map/DeserializerProvider;",
            "Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;",
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
.end method

.method protected abstract _findCustomCollectionLikeDeserializer(Lcom/flurry/org/codehaus/jackson/map/type/CollectionLikeType;Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/map/DeserializerProvider;Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;Lcom/flurry/org/codehaus/jackson/map/TypeDeserializer;Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;)Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/type/CollectionLikeType;",
            "Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;",
            "Lcom/flurry/org/codehaus/jackson/map/DeserializerProvider;",
            "Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;",
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
.end method

.method protected abstract _findCustomEnumDeserializer(Ljava/lang/Class;Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;",
            "Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;",
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
.end method

.method protected abstract _findCustomMapDeserializer(Lcom/flurry/org/codehaus/jackson/map/type/MapType;Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/map/DeserializerProvider;Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;Lcom/flurry/org/codehaus/jackson/map/KeyDeserializer;Lcom/flurry/org/codehaus/jackson/map/TypeDeserializer;Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;)Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/type/MapType;",
            "Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;",
            "Lcom/flurry/org/codehaus/jackson/map/DeserializerProvider;",
            "Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;",
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
.end method

.method protected abstract _findCustomMapLikeDeserializer(Lcom/flurry/org/codehaus/jackson/map/type/MapLikeType;Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/map/DeserializerProvider;Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;Lcom/flurry/org/codehaus/jackson/map/KeyDeserializer;Lcom/flurry/org/codehaus/jackson/map/TypeDeserializer;Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;)Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/type/MapLikeType;",
            "Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;",
            "Lcom/flurry/org/codehaus/jackson/map/DeserializerProvider;",
            "Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;",
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
.end method

.method protected abstract _findCustomTreeNodeDeserializer(Ljava/lang/Class;Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;
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
.end method

.method protected constructEnumResolver(Ljava/lang/Class;Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;)Lcom/flurry/org/codehaus/jackson/map/util/EnumResolver;
    .locals 1
    .param p2, "config"    # Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;",
            ")",
            "Lcom/flurry/org/codehaus/jackson/map/util/EnumResolver",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 889
    .local p1, "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;->READ_ENUMS_USING_TO_STRING:Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;

    invoke-virtual {p2, v0}, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;->isEnabled(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 890
    invoke-static {p1}, Lcom/flurry/org/codehaus/jackson/map/util/EnumResolver;->constructUnsafeUsingToString(Ljava/lang/Class;)Lcom/flurry/org/codehaus/jackson/map/util/EnumResolver;

    move-result-object v0

    .line 892
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p2}, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;->getAnnotationIntrospector()Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/flurry/org/codehaus/jackson/map/util/EnumResolver;->constructUnsafe(Ljava/lang/Class;Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;)Lcom/flurry/org/codehaus/jackson/map/util/EnumResolver;

    move-result-object v0

    goto :goto_0
.end method

.method public createArrayDeserializer(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/map/DeserializerProvider;Lcom/flurry/org/codehaus/jackson/map/type/ArrayType;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;
    .locals 11
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
    const/4 v5, 0x0

    .line 197
    invoke-virtual {p3}, Lcom/flurry/org/codehaus/jackson/map/type/ArrayType;->getContentType()Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v10

    .line 200
    .local v10, "elemType":Lcom/flurry/org/codehaus/jackson/type/JavaType;
    invoke-virtual {v10}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->getValueHandler()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;

    .line 201
    .local v7, "contentDeser":Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer<Ljava/lang/Object;>;"
    if-nez v7, :cond_2

    .line 203
    sget-object v0, Lcom/flurry/org/codehaus/jackson/map/deser/BasicDeserializerFactory;->_arrayDeserializers:Ljava/util/HashMap;

    invoke-virtual {v0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;

    .line 204
    .local v9, "deser":Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer<*>;"
    if-eqz v9, :cond_1

    move-object v0, p0

    move-object v1, p3

    move-object v2, p1

    move-object v3, p2

    move-object v4, p4

    move-object v6, v5

    .line 209
    invoke-virtual/range {v0 .. v6}, Lcom/flurry/org/codehaus/jackson/map/deser/BasicDeserializerFactory;->_findCustomArrayDeserializer(Lcom/flurry/org/codehaus/jackson/map/type/ArrayType;Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/map/DeserializerProvider;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;Lcom/flurry/org/codehaus/jackson/map/TypeDeserializer;Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;)Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;

    move-result-object v8

    .line 210
    .local v8, "custom":Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer<*>;"
    if-eqz v8, :cond_0

    move-object v9, v8

    .line 236
    .end local v9    # "deser":Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer<*>;"
    :cond_0
    :goto_0
    return-object v9

    .line 216
    .end local v8    # "custom":Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer<*>;"
    .restart local v9    # "deser":Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer<*>;"
    :cond_1
    invoke-virtual {v10}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 217
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Internal error: primitive type ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") passed, no array deserializer found"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 221
    .end local v9    # "deser":Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer<*>;"
    :cond_2
    invoke-virtual {v10}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->getTypeHandler()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/flurry/org/codehaus/jackson/map/TypeDeserializer;

    .line 223
    .local v5, "elemTypeDeser":Lcom/flurry/org/codehaus/jackson/map/TypeDeserializer;
    if-nez v5, :cond_3

    .line 224
    invoke-virtual {p0, p1, v10, p4}, Lcom/flurry/org/codehaus/jackson/map/deser/BasicDeserializerFactory;->findTypeDeserializer(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)Lcom/flurry/org/codehaus/jackson/map/TypeDeserializer;

    move-result-object v5

    :cond_3
    move-object v0, p0

    move-object v1, p3

    move-object v2, p1

    move-object v3, p2

    move-object v4, p4

    move-object v6, v7

    .line 227
    invoke-virtual/range {v0 .. v6}, Lcom/flurry/org/codehaus/jackson/map/deser/BasicDeserializerFactory;->_findCustomArrayDeserializer(Lcom/flurry/org/codehaus/jackson/map/type/ArrayType;Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/map/DeserializerProvider;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;Lcom/flurry/org/codehaus/jackson/map/TypeDeserializer;Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;)Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;

    move-result-object v8

    .line 228
    .restart local v8    # "custom":Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer<*>;"
    if-eqz v8, :cond_4

    move-object v9, v8

    .line 229
    goto :goto_0

    .line 232
    :cond_4
    if-nez v7, :cond_5

    .line 234
    invoke-virtual {p2, p1, v10, p4}, Lcom/flurry/org/codehaus/jackson/map/DeserializerProvider;->findValueDeserializer(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;

    move-result-object v7

    .line 236
    :cond_5
    new-instance v9, Lcom/flurry/org/codehaus/jackson/map/deser/std/ObjectArrayDeserializer;

    invoke-direct {v9, p3, v7, v5}, Lcom/flurry/org/codehaus/jackson/map/deser/std/ObjectArrayDeserializer;-><init>(Lcom/flurry/org/codehaus/jackson/map/type/ArrayType;Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;Lcom/flurry/org/codehaus/jackson/map/TypeDeserializer;)V

    goto :goto_0
.end method

.method public createCollectionDeserializer(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/map/DeserializerProvider;Lcom/flurry/org/codehaus/jackson/map/type/CollectionType;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;
    .locals 18
    .param p1, "config"    # Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;
    .param p2, "p"    # Lcom/flurry/org/codehaus/jackson/map/DeserializerProvider;
    .param p3, "type"    # Lcom/flurry/org/codehaus/jackson/map/type/CollectionType;
    .param p4, "property"    # Lcom/flurry/org/codehaus/jackson/map/BeanProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;",
            "Lcom/flurry/org/codehaus/jackson/map/DeserializerProvider;",
            "Lcom/flurry/org/codehaus/jackson/map/type/CollectionType;",
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
    .line 245
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/flurry/org/codehaus/jackson/map/deser/BasicDeserializerFactory;->mapAbstractType(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/type/JavaType;)Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object p3

    .end local p3    # "type":Lcom/flurry/org/codehaus/jackson/map/type/CollectionType;
    check-cast p3, Lcom/flurry/org/codehaus/jackson/map/type/CollectionType;

    .line 247
    .restart local p3    # "type":Lcom/flurry/org/codehaus/jackson/map/type/CollectionType;
    invoke-virtual/range {p3 .. p3}, Lcom/flurry/org/codehaus/jackson/map/type/CollectionType;->getRawClass()Ljava/lang/Class;

    move-result-object v12

    .line 248
    .local v12, "collectionClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;->introspectForCreation(Lcom/flurry/org/codehaus/jackson/type/JavaType;)Lcom/flurry/org/codehaus/jackson/map/BeanDescription;

    move-result-object v8

    check-cast v8, Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;

    .line 250
    .local v8, "beanDesc":Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;
    invoke-virtual {v8}, Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;->getClassInfo()Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v4, v2}, Lcom/flurry/org/codehaus/jackson/map/deser/BasicDeserializerFactory;->findDeserializerFromAnnotation(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;

    move-result-object v15

    .line 251
    .local v15, "deser":Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer<Ljava/lang/Object;>;"
    if-eqz v15, :cond_0

    .line 312
    .end local v15    # "deser":Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer<Ljava/lang/Object;>;"
    :goto_0
    return-object v15

    .line 255
    .restart local v15    # "deser":Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer<Ljava/lang/Object;>;"
    :cond_0
    invoke-virtual {v8}, Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;->getClassInfo()Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v4, v2, v5}, Lcom/flurry/org/codehaus/jackson/map/deser/BasicDeserializerFactory;->modifyTypeByAnnotation(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;Lcom/flurry/org/codehaus/jackson/type/JavaType;Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object p3

    .end local p3    # "type":Lcom/flurry/org/codehaus/jackson/map/type/CollectionType;
    check-cast p3, Lcom/flurry/org/codehaus/jackson/map/type/CollectionType;

    .line 257
    .restart local p3    # "type":Lcom/flurry/org/codehaus/jackson/map/type/CollectionType;
    invoke-virtual/range {p3 .. p3}, Lcom/flurry/org/codehaus/jackson/map/type/CollectionType;->getContentType()Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v13

    .line 259
    .local v13, "contentType":Lcom/flurry/org/codehaus/jackson/type/JavaType;
    invoke-virtual {v13}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->getValueHandler()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;

    .line 262
    .local v11, "contentDeser":Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer<Ljava/lang/Object;>;"
    invoke-virtual {v13}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->getTypeHandler()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/flurry/org/codehaus/jackson/map/TypeDeserializer;

    .line 264
    .local v10, "contentTypeDeser":Lcom/flurry/org/codehaus/jackson/map/TypeDeserializer;
    if-nez v10, :cond_1

    .line 265
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v13, v2}, Lcom/flurry/org/codehaus/jackson/map/deser/BasicDeserializerFactory;->findTypeDeserializer(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)Lcom/flurry/org/codehaus/jackson/map/TypeDeserializer;

    move-result-object v10

    :cond_1
    move-object/from16 v4, p0

    move-object/from16 v5, p3

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v9, p4

    .line 269
    invoke-virtual/range {v4 .. v11}, Lcom/flurry/org/codehaus/jackson/map/deser/BasicDeserializerFactory;->_findCustomCollectionDeserializer(Lcom/flurry/org/codehaus/jackson/map/type/CollectionType;Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/map/DeserializerProvider;Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;Lcom/flurry/org/codehaus/jackson/map/TypeDeserializer;Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;)Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;

    move-result-object v14

    .line 271
    .local v14, "custom":Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer<*>;"
    if-eqz v14, :cond_2

    move-object v15, v14

    .line 272
    goto :goto_0

    .line 275
    :cond_2
    if-nez v11, :cond_4

    .line 277
    const-class v4, Ljava/util/EnumSet;

    invoke-virtual {v4, v12}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 278
    new-instance v15, Lcom/flurry/org/codehaus/jackson/map/deser/std/EnumSetDeserializer;

    .end local v15    # "deser":Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer<Ljava/lang/Object;>;"
    invoke-virtual {v13}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    invoke-virtual {v0, v1, v2, v13, v3}, Lcom/flurry/org/codehaus/jackson/map/deser/BasicDeserializerFactory;->createEnumDeserializer(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/map/DeserializerProvider;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;

    move-result-object v5

    invoke-direct {v15, v4, v5}, Lcom/flurry/org/codehaus/jackson/map/deser/std/EnumSetDeserializer;-><init>(Ljava/lang/Class;Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;)V

    goto :goto_0

    .line 283
    .restart local v15    # "deser":Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer<Ljava/lang/Object;>;"
    :cond_3
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v13, v2}, Lcom/flurry/org/codehaus/jackson/map/DeserializerProvider;->findValueDeserializer(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;

    move-result-object v11

    .line 295
    :cond_4
    invoke-virtual/range {p3 .. p3}, Lcom/flurry/org/codehaus/jackson/map/type/CollectionType;->isInterface()Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual/range {p3 .. p3}, Lcom/flurry/org/codehaus/jackson/map/type/CollectionType;->isAbstract()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 297
    :cond_5
    sget-object v4, Lcom/flurry/org/codehaus/jackson/map/deser/BasicDeserializerFactory;->_collectionFallbacks:Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Class;

    .line 298
    .local v16, "fallback":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/util/Collection;>;"
    if-nez v16, :cond_6

    .line 299
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can not find a deserializer for non-concrete Collection type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 301
    :cond_6
    move-object/from16 v12, v16

    .line 302
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v12}, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;->constructSpecializedType(Lcom/flurry/org/codehaus/jackson/type/JavaType;Ljava/lang/Class;)Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object p3

    .end local p3    # "type":Lcom/flurry/org/codehaus/jackson/map/type/CollectionType;
    check-cast p3, Lcom/flurry/org/codehaus/jackson/map/type/CollectionType;

    .line 304
    .restart local p3    # "type":Lcom/flurry/org/codehaus/jackson/map/type/CollectionType;
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;->introspectForCreation(Lcom/flurry/org/codehaus/jackson/type/JavaType;)Lcom/flurry/org/codehaus/jackson/map/BeanDescription;

    move-result-object v8

    .end local v8    # "beanDesc":Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;
    check-cast v8, Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;

    .line 306
    .end local v16    # "fallback":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/util/Collection;>;"
    .restart local v8    # "beanDesc":Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;
    :cond_7
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v8}, Lcom/flurry/org/codehaus/jackson/map/deser/BasicDeserializerFactory;->findValueInstantiator(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;)Lcom/flurry/org/codehaus/jackson/map/deser/ValueInstantiator;

    move-result-object v17

    .line 308
    .local v17, "inst":Lcom/flurry/org/codehaus/jackson/map/deser/ValueInstantiator;
    invoke-virtual {v13}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v4

    const-class v5, Ljava/lang/String;

    if-ne v4, v5, :cond_8

    .line 310
    new-instance v15, Lcom/flurry/org/codehaus/jackson/map/deser/std/StringCollectionDeserializer;

    .end local v15    # "deser":Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer<Ljava/lang/Object;>;"
    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-direct {v15, v0, v11, v1}, Lcom/flurry/org/codehaus/jackson/map/deser/std/StringCollectionDeserializer;-><init>(Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;Lcom/flurry/org/codehaus/jackson/map/deser/ValueInstantiator;)V

    goto/16 :goto_0

    .line 312
    .restart local v15    # "deser":Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer<Ljava/lang/Object;>;"
    :cond_8
    new-instance v15, Lcom/flurry/org/codehaus/jackson/map/deser/std/CollectionDeserializer;

    .end local v15    # "deser":Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer<Ljava/lang/Object;>;"
    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-direct {v15, v0, v11, v10, v1}, Lcom/flurry/org/codehaus/jackson/map/deser/std/CollectionDeserializer;-><init>(Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;Lcom/flurry/org/codehaus/jackson/map/TypeDeserializer;Lcom/flurry/org/codehaus/jackson/map/deser/ValueInstantiator;)V

    goto/16 :goto_0
.end method

.method public createCollectionLikeDeserializer(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/map/DeserializerProvider;Lcom/flurry/org/codehaus/jackson/map/type/CollectionLikeType;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;
    .locals 11
    .param p1, "config"    # Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;
    .param p2, "p"    # Lcom/flurry/org/codehaus/jackson/map/DeserializerProvider;
    .param p3, "type"    # Lcom/flurry/org/codehaus/jackson/map/type/CollectionLikeType;
    .param p4, "property"    # Lcom/flurry/org/codehaus/jackson/map/BeanProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;",
            "Lcom/flurry/org/codehaus/jackson/map/DeserializerProvider;",
            "Lcom/flurry/org/codehaus/jackson/map/type/CollectionLikeType;",
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
    .line 322
    invoke-virtual {p0, p1, p3}, Lcom/flurry/org/codehaus/jackson/map/deser/BasicDeserializerFactory;->mapAbstractType(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/type/JavaType;)Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object p3

    .end local p3    # "type":Lcom/flurry/org/codehaus/jackson/map/type/CollectionLikeType;
    check-cast p3, Lcom/flurry/org/codehaus/jackson/map/type/CollectionLikeType;

    .line 324
    .restart local p3    # "type":Lcom/flurry/org/codehaus/jackson/map/type/CollectionLikeType;
    invoke-virtual {p3}, Lcom/flurry/org/codehaus/jackson/map/type/CollectionLikeType;->getRawClass()Ljava/lang/Class;

    move-result-object v8

    .line 325
    .local v8, "collectionClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1, v8}, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;->introspectClassAnnotations(Ljava/lang/Class;)Lcom/flurry/org/codehaus/jackson/map/BeanDescription;

    move-result-object v4

    check-cast v4, Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;

    .line 327
    .local v4, "beanDesc":Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;
    invoke-virtual {v4}, Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;->getClassInfo()Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p4}, Lcom/flurry/org/codehaus/jackson/map/deser/BasicDeserializerFactory;->findDeserializerFromAnnotation(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;

    move-result-object v10

    .line 328
    .local v10, "deser":Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer<Ljava/lang/Object;>;"
    if-eqz v10, :cond_0

    .line 344
    .end local v10    # "deser":Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer<Ljava/lang/Object;>;"
    :goto_0
    return-object v10

    .line 332
    .restart local v10    # "deser":Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer<Ljava/lang/Object;>;"
    :cond_0
    invoke-virtual {v4}, Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;->getClassInfo()Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, p3, v1}, Lcom/flurry/org/codehaus/jackson/map/deser/BasicDeserializerFactory;->modifyTypeByAnnotation(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;Lcom/flurry/org/codehaus/jackson/type/JavaType;Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object p3

    .end local p3    # "type":Lcom/flurry/org/codehaus/jackson/map/type/CollectionLikeType;
    check-cast p3, Lcom/flurry/org/codehaus/jackson/map/type/CollectionLikeType;

    .line 334
    .restart local p3    # "type":Lcom/flurry/org/codehaus/jackson/map/type/CollectionLikeType;
    invoke-virtual {p3}, Lcom/flurry/org/codehaus/jackson/map/type/CollectionLikeType;->getContentType()Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v9

    .line 336
    .local v9, "contentType":Lcom/flurry/org/codehaus/jackson/type/JavaType;
    invoke-virtual {v9}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->getValueHandler()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;

    .line 339
    .local v7, "contentDeser":Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer<Ljava/lang/Object;>;"
    invoke-virtual {v9}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->getTypeHandler()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/flurry/org/codehaus/jackson/map/TypeDeserializer;

    .line 341
    .local v6, "contentTypeDeser":Lcom/flurry/org/codehaus/jackson/map/TypeDeserializer;
    if-nez v6, :cond_1

    .line 342
    invoke-virtual {p0, p1, v9, p4}, Lcom/flurry/org/codehaus/jackson/map/deser/BasicDeserializerFactory;->findTypeDeserializer(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)Lcom/flurry/org/codehaus/jackson/map/TypeDeserializer;

    move-result-object v6

    :cond_1
    move-object v0, p0

    move-object v1, p3

    move-object v2, p1

    move-object v3, p2

    move-object v5, p4

    .line 344
    invoke-virtual/range {v0 .. v7}, Lcom/flurry/org/codehaus/jackson/map/deser/BasicDeserializerFactory;->_findCustomCollectionLikeDeserializer(Lcom/flurry/org/codehaus/jackson/map/type/CollectionLikeType;Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/map/DeserializerProvider;Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;Lcom/flurry/org/codehaus/jackson/map/TypeDeserializer;Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;)Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;

    move-result-object v10

    goto :goto_0
.end method

.method public createEnumDeserializer(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/map/DeserializerProvider;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;
    .locals 11
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
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 486
    invoke-virtual {p1, p3}, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;->introspectForCreation(Lcom/flurry/org/codehaus/jackson/type/JavaType;)Lcom/flurry/org/codehaus/jackson/map/BeanDescription;

    move-result-object v1

    check-cast v1, Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;

    .line 487
    .local v1, "beanDesc":Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;
    invoke-virtual {v1}, Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;->getClassInfo()Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;

    move-result-object v8

    invoke-virtual {p0, p1, v8, p4}, Lcom/flurry/org/codehaus/jackson/map/deser/BasicDeserializerFactory;->findDeserializerFromAnnotation(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;

    move-result-object v3

    .line 488
    .local v3, "des":Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer<*>;"
    if-eqz v3, :cond_0

    .line 513
    .end local v3    # "des":Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer<*>;"
    :goto_0
    return-object v3

    .line 491
    .restart local v3    # "des":Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer<*>;"
    :cond_0
    invoke-virtual {p3}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v4

    .line 493
    .local v4, "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0, v4, p1, v1, p4}, Lcom/flurry/org/codehaus/jackson/map/deser/BasicDeserializerFactory;->_findCustomEnumDeserializer(Ljava/lang/Class;Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;

    move-result-object v2

    .line 494
    .local v2, "custom":Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer<*>;"
    if-eqz v2, :cond_1

    move-object v3, v2

    .line 495
    goto :goto_0

    .line 499
    :cond_1
    invoke-virtual {v1}, Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;->getFactoryMethods()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;

    .line 500
    .local v5, "factory":Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;->getAnnotationIntrospector()Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object v8

    invoke-virtual {v8, v5}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;->hasCreatorAnnotation(Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 501
    invoke-virtual {v5}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;->getParameterCount()I

    move-result v0

    .line 502
    .local v0, "argCount":I
    const/4 v8, 0x1

    if-ne v0, v8, :cond_3

    .line 503
    invoke-virtual {v5}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;->getRawType()Ljava/lang/Class;

    move-result-object v7

    .line 505
    .local v7, "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v7, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 506
    invoke-static {p1, v4, v5}, Lcom/flurry/org/codehaus/jackson/map/deser/std/EnumDeserializer;->deserializerForCreator(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Ljava/lang/Class;Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;)Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;

    move-result-object v3

    goto :goto_0

    .line 509
    .end local v7    # "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_3
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unsuitable method ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ") decorated with @JsonCreator (for Enum type "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 513
    .end local v0    # "argCount":I
    .end local v5    # "factory":Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;
    :cond_4
    new-instance v3, Lcom/flurry/org/codehaus/jackson/map/deser/std/EnumDeserializer;

    .end local v3    # "des":Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer<*>;"
    invoke-virtual {p0, v4, p1}, Lcom/flurry/org/codehaus/jackson/map/deser/BasicDeserializerFactory;->constructEnumResolver(Ljava/lang/Class;Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;)Lcom/flurry/org/codehaus/jackson/map/util/EnumResolver;

    move-result-object v8

    invoke-direct {v3, v8}, Lcom/flurry/org/codehaus/jackson/map/deser/std/EnumDeserializer;-><init>(Lcom/flurry/org/codehaus/jackson/map/util/EnumResolver;)V

    goto :goto_0
.end method

.method public createMapDeserializer(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/map/DeserializerProvider;Lcom/flurry/org/codehaus/jackson/map/type/MapType;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;
    .locals 27
    .param p1, "config"    # Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;
    .param p2, "p"    # Lcom/flurry/org/codehaus/jackson/map/DeserializerProvider;
    .param p3, "type"    # Lcom/flurry/org/codehaus/jackson/map/type/MapType;
    .param p4, "property"    # Lcom/flurry/org/codehaus/jackson/map/BeanProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;",
            "Lcom/flurry/org/codehaus/jackson/map/DeserializerProvider;",
            "Lcom/flurry/org/codehaus/jackson/map/type/MapType;",
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
    .line 354
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/flurry/org/codehaus/jackson/map/deser/BasicDeserializerFactory;->mapAbstractType(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/type/JavaType;)Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object p3

    .end local p3    # "type":Lcom/flurry/org/codehaus/jackson/map/type/MapType;
    check-cast p3, Lcom/flurry/org/codehaus/jackson/map/type/MapType;

    .line 356
    .restart local p3    # "type":Lcom/flurry/org/codehaus/jackson/map/type/MapType;
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;->introspectForCreation(Lcom/flurry/org/codehaus/jackson/type/JavaType;)Lcom/flurry/org/codehaus/jackson/map/BeanDescription;

    move-result-object v9

    check-cast v9, Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;

    .line 358
    .local v9, "beanDesc":Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;
    invoke-virtual {v9}, Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;->getClassInfo()Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v5, v2}, Lcom/flurry/org/codehaus/jackson/map/deser/BasicDeserializerFactory;->findDeserializerFromAnnotation(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;

    move-result-object v22

    .line 359
    .local v22, "deser":Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer<Ljava/lang/Object;>;"
    if-eqz v22, :cond_0

    .line 434
    .end local v22    # "deser":Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer<Ljava/lang/Object;>;"
    :goto_0
    return-object v22

    .line 363
    .restart local v22    # "deser":Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer<Ljava/lang/Object;>;"
    :cond_0
    invoke-virtual {v9}, Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;->getClassInfo()Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v5, v2, v6}, Lcom/flurry/org/codehaus/jackson/map/deser/BasicDeserializerFactory;->modifyTypeByAnnotation(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;Lcom/flurry/org/codehaus/jackson/type/JavaType;Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object p3

    .end local p3    # "type":Lcom/flurry/org/codehaus/jackson/map/type/MapType;
    check-cast p3, Lcom/flurry/org/codehaus/jackson/map/type/MapType;

    .line 364
    .restart local p3    # "type":Lcom/flurry/org/codehaus/jackson/map/type/MapType;
    invoke-virtual/range {p3 .. p3}, Lcom/flurry/org/codehaus/jackson/map/type/MapType;->getKeyType()Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v24

    .line 365
    .local v24, "keyType":Lcom/flurry/org/codehaus/jackson/type/JavaType;
    invoke-virtual/range {p3 .. p3}, Lcom/flurry/org/codehaus/jackson/map/type/MapType;->getContentType()Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v20

    .line 369
    .local v20, "contentType":Lcom/flurry/org/codehaus/jackson/type/JavaType;
    invoke-virtual/range {v20 .. v20}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->getValueHandler()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;

    .line 372
    .local v13, "contentDeser":Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer<Ljava/lang/Object;>;"
    invoke-virtual/range {v24 .. v24}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->getValueHandler()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/flurry/org/codehaus/jackson/map/KeyDeserializer;

    .line 373
    .local v11, "keyDes":Lcom/flurry/org/codehaus/jackson/map/KeyDeserializer;
    if-nez v11, :cond_1

    .line 374
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    move-object/from16 v2, v24

    move-object/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Lcom/flurry/org/codehaus/jackson/map/DeserializerProvider;->findKeyDeserializer(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)Lcom/flurry/org/codehaus/jackson/map/KeyDeserializer;

    move-result-object v11

    .line 377
    :cond_1
    invoke-virtual/range {v20 .. v20}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->getTypeHandler()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/flurry/org/codehaus/jackson/map/TypeDeserializer;

    .line 379
    .local v12, "contentTypeDeser":Lcom/flurry/org/codehaus/jackson/map/TypeDeserializer;
    if-nez v12, :cond_2

    .line 380
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    move-object/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Lcom/flurry/org/codehaus/jackson/map/deser/BasicDeserializerFactory;->findTypeDeserializer(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)Lcom/flurry/org/codehaus/jackson/map/TypeDeserializer;

    move-result-object v12

    :cond_2
    move-object/from16 v5, p0

    move-object/from16 v6, p3

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v10, p4

    .line 384
    invoke-virtual/range {v5 .. v13}, Lcom/flurry/org/codehaus/jackson/map/deser/BasicDeserializerFactory;->_findCustomMapDeserializer(Lcom/flurry/org/codehaus/jackson/map/type/MapType;Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/map/DeserializerProvider;Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;Lcom/flurry/org/codehaus/jackson/map/KeyDeserializer;Lcom/flurry/org/codehaus/jackson/map/TypeDeserializer;Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;)Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;

    move-result-object v21

    .line 387
    .local v21, "custom":Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer<*>;"
    if-eqz v21, :cond_3

    move-object/from16 v22, v21

    .line 388
    goto :goto_0

    .line 391
    :cond_3
    if-nez v13, :cond_4

    .line 393
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    move-object/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Lcom/flurry/org/codehaus/jackson/map/DeserializerProvider;->findValueDeserializer(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;

    move-result-object v13

    .line 398
    :cond_4
    invoke-virtual/range {p3 .. p3}, Lcom/flurry/org/codehaus/jackson/map/type/MapType;->getRawClass()Ljava/lang/Class;

    move-result-object v26

    .line 399
    .local v26, "mapClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v5, Ljava/util/EnumMap;

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 400
    invoke-virtual/range {v24 .. v24}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v25

    .line 401
    .local v25, "kt":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v25, :cond_5

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Class;->isEnum()Z

    move-result v5

    if-nez v5, :cond_6

    .line 402
    :cond_5
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Can not construct EnumMap; generic (key) type not available"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 404
    :cond_6
    new-instance v22, Lcom/flurry/org/codehaus/jackson/map/deser/std/EnumMapDeserializer;

    .end local v22    # "deser":Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer<Ljava/lang/Object;>;"
    invoke-virtual/range {v24 .. v24}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v24

    move-object/from16 v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/flurry/org/codehaus/jackson/map/deser/BasicDeserializerFactory;->createEnumDeserializer(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/map/DeserializerProvider;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;

    move-result-object v6

    move-object/from16 v0, v22

    invoke-direct {v0, v5, v6, v13}, Lcom/flurry/org/codehaus/jackson/map/deser/std/EnumMapDeserializer;-><init>(Ljava/lang/Class;Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;)V

    goto/16 :goto_0

    .line 420
    .end local v25    # "kt":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v22    # "deser":Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer<Ljava/lang/Object;>;"
    :cond_7
    invoke-virtual/range {p3 .. p3}, Lcom/flurry/org/codehaus/jackson/map/type/MapType;->isInterface()Z

    move-result v5

    if-nez v5, :cond_8

    invoke-virtual/range {p3 .. p3}, Lcom/flurry/org/codehaus/jackson/map/type/MapType;->isAbstract()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 422
    :cond_8
    sget-object v5, Lcom/flurry/org/codehaus/jackson/map/deser/BasicDeserializerFactory;->_mapFallbacks:Ljava/util/HashMap;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Class;

    .line 423
    .local v23, "fallback":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/util/Map;>;"
    if-nez v23, :cond_9

    .line 424
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Can not find a deserializer for non-concrete Map type "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p3

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 426
    :cond_9
    move-object/from16 v26, v23

    .line 427
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;->constructSpecializedType(Lcom/flurry/org/codehaus/jackson/type/JavaType;Ljava/lang/Class;)Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object p3

    .end local p3    # "type":Lcom/flurry/org/codehaus/jackson/map/type/MapType;
    check-cast p3, Lcom/flurry/org/codehaus/jackson/map/type/MapType;

    .line 429
    .restart local p3    # "type":Lcom/flurry/org/codehaus/jackson/map/type/MapType;
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;->introspectForCreation(Lcom/flurry/org/codehaus/jackson/type/JavaType;)Lcom/flurry/org/codehaus/jackson/map/BeanDescription;

    move-result-object v9

    .end local v9    # "beanDesc":Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;
    check-cast v9, Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;

    .line 431
    .end local v23    # "fallback":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/util/Map;>;"
    .restart local v9    # "beanDesc":Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;
    :cond_a
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v9}, Lcom/flurry/org/codehaus/jackson/map/deser/BasicDeserializerFactory;->findValueInstantiator(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;)Lcom/flurry/org/codehaus/jackson/map/deser/ValueInstantiator;

    move-result-object v16

    .line 432
    .local v16, "inst":Lcom/flurry/org/codehaus/jackson/map/deser/ValueInstantiator;
    new-instance v14, Lcom/flurry/org/codehaus/jackson/map/deser/std/MapDeserializer;

    move-object/from16 v15, p3

    move-object/from16 v17, v11

    move-object/from16 v18, v13

    move-object/from16 v19, v12

    invoke-direct/range {v14 .. v19}, Lcom/flurry/org/codehaus/jackson/map/deser/std/MapDeserializer;-><init>(Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/deser/ValueInstantiator;Lcom/flurry/org/codehaus/jackson/map/KeyDeserializer;Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;Lcom/flurry/org/codehaus/jackson/map/TypeDeserializer;)V

    .line 433
    .local v14, "md":Lcom/flurry/org/codehaus/jackson/map/deser/std/MapDeserializer;
    invoke-virtual/range {p1 .. p1}, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;->getAnnotationIntrospector()Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object v5

    invoke-virtual {v9}, Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;->getClassInfo()Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;->findPropertiesToIgnore(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;)[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v14, v5}, Lcom/flurry/org/codehaus/jackson/map/deser/std/MapDeserializer;->setIgnorableProperties([Ljava/lang/String;)V

    move-object/from16 v22, v14

    .line 434
    goto/16 :goto_0
.end method

.method public createMapLikeDeserializer(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/map/DeserializerProvider;Lcom/flurry/org/codehaus/jackson/map/type/MapLikeType;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;
    .locals 13
    .param p1, "config"    # Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;
    .param p2, "p"    # Lcom/flurry/org/codehaus/jackson/map/DeserializerProvider;
    .param p3, "type"    # Lcom/flurry/org/codehaus/jackson/map/type/MapLikeType;
    .param p4, "property"    # Lcom/flurry/org/codehaus/jackson/map/BeanProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;",
            "Lcom/flurry/org/codehaus/jackson/map/DeserializerProvider;",
            "Lcom/flurry/org/codehaus/jackson/map/type/MapLikeType;",
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
    .line 444
    move-object/from16 v0, p3

    invoke-virtual {p0, p1, v0}, Lcom/flurry/org/codehaus/jackson/map/deser/BasicDeserializerFactory;->mapAbstractType(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/type/JavaType;)Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object p3

    .end local p3    # "type":Lcom/flurry/org/codehaus/jackson/map/type/MapLikeType;
    check-cast p3, Lcom/flurry/org/codehaus/jackson/map/type/MapLikeType;

    .line 445
    .restart local p3    # "type":Lcom/flurry/org/codehaus/jackson/map/type/MapLikeType;
    move-object/from16 v0, p3

    invoke-virtual {p1, v0}, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;->introspectForCreation(Lcom/flurry/org/codehaus/jackson/type/JavaType;)Lcom/flurry/org/codehaus/jackson/map/BeanDescription;

    move-result-object v5

    check-cast v5, Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;

    .line 447
    .local v5, "beanDesc":Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;
    invoke-virtual {v5}, Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;->getClassInfo()Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;

    move-result-object v1

    move-object/from16 v0, p4

    invoke-virtual {p0, p1, v1, v0}, Lcom/flurry/org/codehaus/jackson/map/deser/BasicDeserializerFactory;->findDeserializerFromAnnotation(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;

    move-result-object v11

    .line 448
    .local v11, "deser":Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer<Ljava/lang/Object;>;"
    if-eqz v11, :cond_0

    .line 471
    .end local v11    # "deser":Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer<Ljava/lang/Object;>;"
    :goto_0
    return-object v11

    .line 452
    .restart local v11    # "deser":Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer<Ljava/lang/Object;>;"
    :cond_0
    invoke-virtual {v5}, Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;->getClassInfo()Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;

    move-result-object v1

    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {p0, p1, v1, v0, v2}, Lcom/flurry/org/codehaus/jackson/map/deser/BasicDeserializerFactory;->modifyTypeByAnnotation(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;Lcom/flurry/org/codehaus/jackson/type/JavaType;Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object p3

    .end local p3    # "type":Lcom/flurry/org/codehaus/jackson/map/type/MapLikeType;
    check-cast p3, Lcom/flurry/org/codehaus/jackson/map/type/MapLikeType;

    .line 453
    .restart local p3    # "type":Lcom/flurry/org/codehaus/jackson/map/type/MapLikeType;
    invoke-virtual/range {p3 .. p3}, Lcom/flurry/org/codehaus/jackson/map/type/MapLikeType;->getKeyType()Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v12

    .line 454
    .local v12, "keyType":Lcom/flurry/org/codehaus/jackson/type/JavaType;
    invoke-virtual/range {p3 .. p3}, Lcom/flurry/org/codehaus/jackson/map/type/MapLikeType;->getContentType()Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v10

    .line 458
    .local v10, "contentType":Lcom/flurry/org/codehaus/jackson/type/JavaType;
    invoke-virtual {v10}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->getValueHandler()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;

    .line 461
    .local v9, "contentDeser":Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer<Ljava/lang/Object;>;"
    invoke-virtual {v12}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->getValueHandler()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/flurry/org/codehaus/jackson/map/KeyDeserializer;

    .line 462
    .local v7, "keyDes":Lcom/flurry/org/codehaus/jackson/map/KeyDeserializer;
    if-nez v7, :cond_1

    .line 463
    move-object/from16 v0, p4

    invoke-virtual {p2, p1, v12, v0}, Lcom/flurry/org/codehaus/jackson/map/DeserializerProvider;->findKeyDeserializer(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)Lcom/flurry/org/codehaus/jackson/map/KeyDeserializer;

    move-result-object v7

    .line 466
    :cond_1
    invoke-virtual {v10}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->getTypeHandler()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/flurry/org/codehaus/jackson/map/TypeDeserializer;

    .line 468
    .local v8, "contentTypeDeser":Lcom/flurry/org/codehaus/jackson/map/TypeDeserializer;
    if-nez v8, :cond_2

    .line 469
    move-object/from16 v0, p4

    invoke-virtual {p0, p1, v10, v0}, Lcom/flurry/org/codehaus/jackson/map/deser/BasicDeserializerFactory;->findTypeDeserializer(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)Lcom/flurry/org/codehaus/jackson/map/TypeDeserializer;

    move-result-object v8

    :cond_2
    move-object v1, p0

    move-object/from16 v2, p3

    move-object v3, p1

    move-object v4, p2

    move-object/from16 v6, p4

    .line 471
    invoke-virtual/range {v1 .. v9}, Lcom/flurry/org/codehaus/jackson/map/deser/BasicDeserializerFactory;->_findCustomMapLikeDeserializer(Lcom/flurry/org/codehaus/jackson/map/type/MapLikeType;Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/map/DeserializerProvider;Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;Lcom/flurry/org/codehaus/jackson/map/KeyDeserializer;Lcom/flurry/org/codehaus/jackson/map/TypeDeserializer;Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;)Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;

    move-result-object v11

    goto :goto_0
.end method

.method public createTreeDeserializer(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/map/DeserializerProvider;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;
    .locals 2
    .param p1, "config"    # Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;
    .param p2, "p"    # Lcom/flurry/org/codehaus/jackson/map/DeserializerProvider;
    .param p3, "nodeType"    # Lcom/flurry/org/codehaus/jackson/type/JavaType;
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
    .line 522
    invoke-virtual {p3}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v1

    .line 524
    .local v1, "nodeClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/flurry/org/codehaus/jackson/JsonNode;>;"
    invoke-virtual {p0, v1, p1, p4}, Lcom/flurry/org/codehaus/jackson/map/deser/BasicDeserializerFactory;->_findCustomTreeNodeDeserializer(Ljava/lang/Class;Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;

    move-result-object v0

    .line 525
    .local v0, "custom":Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer<*>;"
    if-eqz v0, :cond_0

    .line 528
    .end local v0    # "custom":Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer<*>;"
    :goto_0
    return-object v0

    .restart local v0    # "custom":Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer<*>;"
    :cond_0
    invoke-static {v1}, Lcom/flurry/org/codehaus/jackson/map/deser/std/JsonNodeDeserializer;->getDeserializer(Ljava/lang/Class;)Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;

    move-result-object v0

    goto :goto_0
.end method

.method protected findDeserializerFromAnnotation(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;
    .locals 2
    .param p1, "config"    # Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;
    .param p2, "ann"    # Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;
    .param p3, "property"    # Lcom/flurry/org/codehaus/jackson/map/BeanProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;",
            "Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;",
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
    .line 686
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;->getAnnotationIntrospector()Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;->findDeserializer(Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Object;

    move-result-object v0

    .line 687
    .local v0, "deserDef":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 688
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/flurry/org/codehaus/jackson/map/deser/BasicDeserializerFactory;->_constructDeserializer(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;Ljava/lang/Object;)Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;

    move-result-object v1

    .line 690
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public findPropertyContentTypeDeserializer(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)Lcom/flurry/org/codehaus/jackson/map/TypeDeserializer;
    .locals 5
    .param p1, "config"    # Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;
    .param p2, "containerType"    # Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .param p3, "propertyEntity"    # Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;
    .param p4, "property"    # Lcom/flurry/org/codehaus/jackson/map/BeanProperty;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 659
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;->getAnnotationIntrospector()Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object v0

    .line 660
    .local v0, "ai":Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;
    invoke-virtual {v0, p1, p3, p2}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;->findPropertyContentTypeResolver(Lcom/flurry/org/codehaus/jackson/map/MapperConfig;Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;Lcom/flurry/org/codehaus/jackson/type/JavaType;)Lcom/flurry/org/codehaus/jackson/map/jsontype/TypeResolverBuilder;

    move-result-object v1

    .line 661
    .local v1, "b":Lcom/flurry/org/codehaus/jackson/map/jsontype/TypeResolverBuilder;, "Lcom/flurry/org/codehaus/jackson/map/jsontype/TypeResolverBuilder<*>;"
    invoke-virtual {p2}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->getContentType()Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v2

    .line 663
    .local v2, "contentType":Lcom/flurry/org/codehaus/jackson/type/JavaType;
    if-nez v1, :cond_0

    .line 664
    invoke-virtual {p0, p1, v2, p4}, Lcom/flurry/org/codehaus/jackson/map/deser/BasicDeserializerFactory;->findTypeDeserializer(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)Lcom/flurry/org/codehaus/jackson/map/TypeDeserializer;

    move-result-object v4

    .line 668
    :goto_0
    return-object v4

    .line 667
    :cond_0
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;->getSubtypeResolver()Lcom/flurry/org/codehaus/jackson/map/jsontype/SubtypeResolver;

    move-result-object v4

    invoke-virtual {v4, p3, p1, v0}, Lcom/flurry/org/codehaus/jackson/map/jsontype/SubtypeResolver;->collectAndResolveSubtypes(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;Lcom/flurry/org/codehaus/jackson/map/MapperConfig;Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;)Ljava/util/Collection;

    move-result-object v3

    .line 668
    .local v3, "subtypes":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/flurry/org/codehaus/jackson/map/jsontype/NamedType;>;"
    invoke-interface {v1, p1, v2, v3, p4}, Lcom/flurry/org/codehaus/jackson/map/jsontype/TypeResolverBuilder;->buildTypeDeserializer(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/type/JavaType;Ljava/util/Collection;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)Lcom/flurry/org/codehaus/jackson/map/TypeDeserializer;

    move-result-object v4

    goto :goto_0
.end method

.method public findPropertyTypeDeserializer(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)Lcom/flurry/org/codehaus/jackson/map/TypeDeserializer;
    .locals 4
    .param p1, "config"    # Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;
    .param p2, "baseType"    # Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .param p3, "annotated"    # Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;
    .param p4, "property"    # Lcom/flurry/org/codehaus/jackson/map/BeanProperty;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 631
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;->getAnnotationIntrospector()Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object v0

    .line 632
    .local v0, "ai":Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;
    invoke-virtual {v0, p1, p3, p2}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;->findPropertyTypeResolver(Lcom/flurry/org/codehaus/jackson/map/MapperConfig;Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;Lcom/flurry/org/codehaus/jackson/type/JavaType;)Lcom/flurry/org/codehaus/jackson/map/jsontype/TypeResolverBuilder;

    move-result-object v1

    .line 634
    .local v1, "b":Lcom/flurry/org/codehaus/jackson/map/jsontype/TypeResolverBuilder;, "Lcom/flurry/org/codehaus/jackson/map/jsontype/TypeResolverBuilder<*>;"
    if-nez v1, :cond_0

    .line 635
    invoke-virtual {p0, p1, p2, p4}, Lcom/flurry/org/codehaus/jackson/map/deser/BasicDeserializerFactory;->findTypeDeserializer(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)Lcom/flurry/org/codehaus/jackson/map/TypeDeserializer;

    move-result-object v3

    .line 639
    :goto_0
    return-object v3

    .line 638
    :cond_0
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;->getSubtypeResolver()Lcom/flurry/org/codehaus/jackson/map/jsontype/SubtypeResolver;

    move-result-object v3

    invoke-virtual {v3, p3, p1, v0}, Lcom/flurry/org/codehaus/jackson/map/jsontype/SubtypeResolver;->collectAndResolveSubtypes(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;Lcom/flurry/org/codehaus/jackson/map/MapperConfig;Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;)Ljava/util/Collection;

    move-result-object v2

    .line 639
    .local v2, "subtypes":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/flurry/org/codehaus/jackson/map/jsontype/NamedType;>;"
    invoke-interface {v1, p1, p2, v2, p4}, Lcom/flurry/org/codehaus/jackson/map/jsontype/TypeResolverBuilder;->buildTypeDeserializer(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/type/JavaType;Ljava/util/Collection;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)Lcom/flurry/org/codehaus/jackson/map/TypeDeserializer;

    move-result-object v3

    goto :goto_0
.end method

.method protected findStdBeanDeserializer(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/map/DeserializerProvider;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;
    .locals 9
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
    .line 542
    invoke-virtual {p3}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    .line 544
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v7, Lcom/flurry/org/codehaus/jackson/map/deser/BasicDeserializerFactory;->_simpleDeserializers:Ljava/util/HashMap;

    new-instance v8, Lcom/flurry/org/codehaus/jackson/map/type/ClassKey;

    invoke-direct {v8, v0}, Lcom/flurry/org/codehaus/jackson/map/type/ClassKey;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;

    .line 545
    .local v3, "deser":Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer<Ljava/lang/Object;>;"
    if-eqz v3, :cond_0

    .line 569
    .end local v3    # "deser":Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer<Ljava/lang/Object;>;"
    :goto_0
    return-object v3

    .line 550
    .restart local v3    # "deser":Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer<Ljava/lang/Object;>;"
    :cond_0
    const-class v7, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v7, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 552
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;->getTypeFactory()Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;

    move-result-object v6

    .line 553
    .local v6, "tf":Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;
    const-class v7, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v6, p3, v7}, Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;->findTypeParameters(Lcom/flurry/org/codehaus/jackson/type/JavaType;Ljava/lang/Class;)[Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v4

    .line 555
    .local v4, "params":[Lcom/flurry/org/codehaus/jackson/type/JavaType;
    if-eqz v4, :cond_1

    array-length v7, v4

    const/4 v8, 0x1

    if-ge v7, v8, :cond_2

    .line 556
    :cond_1
    invoke-static {}, Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;->unknownType()Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v5

    .line 561
    .local v5, "referencedType":Lcom/flurry/org/codehaus/jackson/type/JavaType;
    :goto_1
    new-instance v2, Lcom/flurry/org/codehaus/jackson/map/deser/std/AtomicReferenceDeserializer;

    invoke-direct {v2, v5, p4}, Lcom/flurry/org/codehaus/jackson/map/deser/std/AtomicReferenceDeserializer;-><init>(Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)V

    .local v2, "d2":Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer<*>;"
    move-object v3, v2

    .line 562
    goto :goto_0

    .line 558
    .end local v2    # "d2":Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer<*>;"
    .end local v5    # "referencedType":Lcom/flurry/org/codehaus/jackson/type/JavaType;
    :cond_2
    const/4 v7, 0x0

    aget-object v5, v4, v7

    .restart local v5    # "referencedType":Lcom/flurry/org/codehaus/jackson/type/JavaType;
    goto :goto_1

    .line 565
    .end local v4    # "params":[Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .end local v5    # "referencedType":Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .end local v6    # "tf":Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;
    :cond_3
    iget-object v7, p0, Lcom/flurry/org/codehaus/jackson/map/deser/BasicDeserializerFactory;->optionalHandlers:Lcom/flurry/org/codehaus/jackson/map/ext/OptionalHandlerFactory;

    invoke-virtual {v7, p3, p1, p2}, Lcom/flurry/org/codehaus/jackson/map/ext/OptionalHandlerFactory;->findDeserializer(Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/map/DeserializerProvider;)Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;

    move-result-object v1

    .line 566
    .local v1, "d":Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer<*>;"
    if-eqz v1, :cond_4

    move-object v3, v1

    .line 567
    goto :goto_0

    .line 569
    :cond_4
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public findTypeDeserializer(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)Lcom/flurry/org/codehaus/jackson/map/TypeDeserializer;
    .locals 9
    .param p1, "config"    # Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;
    .param p2, "baseType"    # Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .param p3, "property"    # Lcom/flurry/org/codehaus/jackson/map/BeanProperty;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 577
    invoke-virtual {p2}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v4

    .line 578
    .local v4, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1, v4}, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;->introspectClassAnnotations(Ljava/lang/Class;)Lcom/flurry/org/codehaus/jackson/map/BeanDescription;

    move-result-object v3

    check-cast v3, Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;

    .line 579
    .local v3, "bean":Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;
    invoke-virtual {v3}, Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;->getClassInfo()Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;

    move-result-object v0

    .line 580
    .local v0, "ac":Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;->getAnnotationIntrospector()Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object v1

    .line 581
    .local v1, "ai":Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;
    invoke-virtual {v1, p1, v0, p2}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;->findTypeResolver(Lcom/flurry/org/codehaus/jackson/map/MapperConfig;Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;Lcom/flurry/org/codehaus/jackson/type/JavaType;)Lcom/flurry/org/codehaus/jackson/map/jsontype/TypeResolverBuilder;

    move-result-object v2

    .line 586
    .local v2, "b":Lcom/flurry/org/codehaus/jackson/map/jsontype/TypeResolverBuilder;, "Lcom/flurry/org/codehaus/jackson/map/jsontype/TypeResolverBuilder<*>;"
    const/4 v6, 0x0

    .line 587
    .local v6, "subtypes":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/flurry/org/codehaus/jackson/map/jsontype/NamedType;>;"
    if-nez v2, :cond_0

    .line 588
    invoke-virtual {p1, p2}, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;->getDefaultTyper(Lcom/flurry/org/codehaus/jackson/type/JavaType;)Lcom/flurry/org/codehaus/jackson/map/jsontype/TypeResolverBuilder;

    move-result-object v2

    .line 589
    if-nez v2, :cond_1

    .line 590
    const/4 v7, 0x0

    .line 603
    :goto_0
    return-object v7

    .line 593
    :cond_0
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;->getSubtypeResolver()Lcom/flurry/org/codehaus/jackson/map/jsontype/SubtypeResolver;

    move-result-object v7

    invoke-virtual {v7, v0, p1, v1}, Lcom/flurry/org/codehaus/jackson/map/jsontype/SubtypeResolver;->collectAndResolveSubtypes(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;Lcom/flurry/org/codehaus/jackson/map/MapperConfig;Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;)Ljava/util/Collection;

    move-result-object v6

    .line 597
    :cond_1
    invoke-interface {v2}, Lcom/flurry/org/codehaus/jackson/map/jsontype/TypeResolverBuilder;->getDefaultImpl()Ljava/lang/Class;

    move-result-object v7

    if-nez v7, :cond_2

    invoke-virtual {p2}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->isAbstract()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 598
    invoke-virtual {p0, p1, p2}, Lcom/flurry/org/codehaus/jackson/map/deser/BasicDeserializerFactory;->mapAbstractType(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/type/JavaType;)Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v5

    .line 599
    .local v5, "defaultType":Lcom/flurry/org/codehaus/jackson/type/JavaType;
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {p2}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v8

    if-eq v7, v8, :cond_2

    .line 600
    invoke-virtual {v5}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v7

    invoke-interface {v2, v7}, Lcom/flurry/org/codehaus/jackson/map/jsontype/TypeResolverBuilder;->defaultImpl(Ljava/lang/Class;)Lcom/flurry/org/codehaus/jackson/map/jsontype/TypeResolverBuilder;

    move-result-object v2

    .line 603
    .end local v5    # "defaultType":Lcom/flurry/org/codehaus/jackson/type/JavaType;
    :cond_2
    invoke-interface {v2, p1, p2, v6, p3}, Lcom/flurry/org/codehaus/jackson/map/jsontype/TypeResolverBuilder;->buildTypeDeserializer(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/type/JavaType;Ljava/util/Collection;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)Lcom/flurry/org/codehaus/jackson/map/TypeDeserializer;

    move-result-object v7

    goto :goto_0
.end method

.method public abstract findValueInstantiator(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;)Lcom/flurry/org/codehaus/jackson/map/deser/ValueInstantiator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation
.end method

.method public abstract mapAbstractType(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/type/JavaType;)Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation
.end method

.method protected modifyTypeByAnnotation(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;Lcom/flurry/org/codehaus/jackson/type/JavaType;Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .locals 17
    .param p1, "config"    # Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;
    .param p2, "a"    # Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;
    .param p4, "propName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/flurry/org/codehaus/jackson/type/JavaType;",
            ">(",
            "Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;",
            "Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;",
            "TT;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 749
    .local p3, "type":Lcom/flurry/org/codehaus/jackson/type/JavaType;, "TT;"
    invoke-virtual/range {p1 .. p1}, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;->getAnnotationIntrospector()Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object v8

    .line 750
    .local v8, "intr":Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-virtual {v8, v0, v1, v2}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;->findDeserializationType(Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;Lcom/flurry/org/codehaus/jackson/type/JavaType;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v13

    .line 751
    .local v13, "subclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v13, :cond_0

    .line 753
    :try_start_0
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->narrowBy(Ljava/lang/Class;)Lcom/flurry/org/codehaus/jackson/type/JavaType;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p3

    .line 760
    :cond_0
    invoke-virtual/range {p3 .. p3}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->isContainerType()Z

    move-result v14

    if-eqz v14, :cond_5

    .line 761
    invoke-virtual/range {p3 .. p3}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->getKeyType()Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v14

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-virtual {v8, v0, v14, v1}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;->findDeserializationKeyType(Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;Lcom/flurry/org/codehaus/jackson/type/JavaType;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11

    .line 762
    .local v11, "keyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v11, :cond_2

    .line 764
    move-object/from16 v0, p3

    instance-of v14, v0, Lcom/flurry/org/codehaus/jackson/map/type/MapLikeType;

    if-nez v14, :cond_1

    .line 765
    new-instance v14, Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Illegal key-type annotation: type "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p3

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " is not a Map(-like) type"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 754
    .end local v11    # "keyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v7

    .line 755
    .local v7, "iae":Ljava/lang/IllegalArgumentException;
    new-instance v14, Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Failed to narrow type "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p3

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " with concrete-type annotation (value "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "), method \'"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual/range {p2 .. p2}, Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "\': "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v7}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-direct {v14, v15, v0, v7}, Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;-><init>(Ljava/lang/String;Lcom/flurry/org/codehaus/jackson/JsonLocation;Ljava/lang/Throwable;)V

    throw v14

    .line 768
    .end local v7    # "iae":Ljava/lang/IllegalArgumentException;
    .restart local v11    # "keyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    :try_start_1
    move-object/from16 v0, p3

    check-cast v0, Lcom/flurry/org/codehaus/jackson/map/type/MapLikeType;

    move-object v14, v0

    invoke-virtual {v14, v11}, Lcom/flurry/org/codehaus/jackson/map/type/MapLikeType;->narrowKey(Ljava/lang/Class;)Lcom/flurry/org/codehaus/jackson/type/JavaType;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object p3

    .line 773
    :cond_2
    invoke-virtual/range {p3 .. p3}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->getKeyType()Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v12

    .line 778
    .local v12, "keyType":Lcom/flurry/org/codehaus/jackson/type/JavaType;
    if-eqz v12, :cond_3

    invoke-virtual {v12}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->getValueHandler()Ljava/lang/Object;

    move-result-object v14

    if-nez v14, :cond_3

    .line 779
    move-object/from16 v0, p2

    invoke-virtual {v8, v0}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;->findKeyDeserializer(Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Class;

    move-result-object v10

    .line 780
    .local v10, "kdClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/flurry/org/codehaus/jackson/map/KeyDeserializer;>;"
    if-eqz v10, :cond_3

    const-class v14, Lcom/flurry/org/codehaus/jackson/map/KeyDeserializer$None;

    if-eq v10, v14, :cond_3

    .line 781
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v10}, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;->keyDeserializerInstance(Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;Ljava/lang/Class;)Lcom/flurry/org/codehaus/jackson/map/KeyDeserializer;

    move-result-object v9

    .line 787
    .local v9, "kd":Lcom/flurry/org/codehaus/jackson/map/KeyDeserializer;
    invoke-virtual {v12, v9}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->setValueHandler(Ljava/lang/Object;)V

    .line 792
    .end local v9    # "kd":Lcom/flurry/org/codehaus/jackson/map/KeyDeserializer;
    .end local v10    # "kdClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/flurry/org/codehaus/jackson/map/KeyDeserializer;>;"
    :cond_3
    invoke-virtual/range {p3 .. p3}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->getContentType()Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v14

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-virtual {v8, v0, v14, v1}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;->findDeserializationContentType(Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;Lcom/flurry/org/codehaus/jackson/type/JavaType;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 793
    .local v3, "cc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v3, :cond_4

    .line 795
    :try_start_2
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->narrowContentsBy(Ljava/lang/Class;)Lcom/flurry/org/codehaus/jackson/type/JavaType;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object p3

    .line 801
    :cond_4
    invoke-virtual/range {p3 .. p3}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->getContentType()Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v6

    .line 802
    .local v6, "contentType":Lcom/flurry/org/codehaus/jackson/type/JavaType;
    invoke-virtual {v6}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->getValueHandler()Ljava/lang/Object;

    move-result-object v14

    if-nez v14, :cond_5

    .line 803
    move-object/from16 v0, p2

    invoke-virtual {v8, v0}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;->findContentDeserializer(Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Class;

    move-result-object v5

    .line 804
    .local v5, "cdClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer<*>;>;"
    if-eqz v5, :cond_5

    const-class v14, Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer$None;

    if-eq v5, v14, :cond_5

    .line 805
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v5}, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;->deserializerInstance(Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;Ljava/lang/Class;)Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;

    move-result-object v4

    .line 810
    .local v4, "cd":Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer<Ljava/lang/Object;>;"
    invoke-virtual/range {p3 .. p3}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->getContentType()Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v14

    invoke-virtual {v14, v4}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->setValueHandler(Ljava/lang/Object;)V

    .line 814
    .end local v3    # "cc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "cd":Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer<Ljava/lang/Object;>;"
    .end local v5    # "cdClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer<*>;>;"
    .end local v6    # "contentType":Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .end local v11    # "keyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v12    # "keyType":Lcom/flurry/org/codehaus/jackson/type/JavaType;
    :cond_5
    return-object p3

    .line 769
    .restart local v11    # "keyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_1
    move-exception v7

    .line 770
    .restart local v7    # "iae":Ljava/lang/IllegalArgumentException;
    new-instance v14, Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Failed to narrow key type "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p3

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " with key-type annotation ("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "): "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v7}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-direct {v14, v15, v0, v7}, Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;-><init>(Ljava/lang/String;Lcom/flurry/org/codehaus/jackson/JsonLocation;Ljava/lang/Throwable;)V

    throw v14

    .line 796
    .end local v7    # "iae":Ljava/lang/IllegalArgumentException;
    .restart local v3    # "cc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v12    # "keyType":Lcom/flurry/org/codehaus/jackson/type/JavaType;
    :catch_2
    move-exception v7

    .line 797
    .restart local v7    # "iae":Ljava/lang/IllegalArgumentException;
    new-instance v14, Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Failed to narrow content type "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p3

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " with content-type annotation ("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "): "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v7}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-direct {v14, v15, v0, v7}, Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;-><init>(Ljava/lang/String;Lcom/flurry/org/codehaus/jackson/JsonLocation;Ljava/lang/Throwable;)V

    throw v14
.end method

.method protected resolveType(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .locals 9
    .param p1, "config"    # Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;
    .param p2, "beanDesc"    # Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;
    .param p3, "type"    # Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .param p4, "member"    # Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;
    .param p5, "property"    # Lcom/flurry/org/codehaus/jackson/map/BeanProperty;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 834
    invoke-virtual {p3}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->isContainerType()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 835
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;->getAnnotationIntrospector()Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object v3

    .line 836
    .local v3, "intr":Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;
    invoke-virtual {p3}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->getKeyType()Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v6

    .line 837
    .local v6, "keyType":Lcom/flurry/org/codehaus/jackson/type/JavaType;
    if-eqz v6, :cond_0

    .line 838
    invoke-virtual {v3, p4}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;->findKeyDeserializer(Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Class;

    move-result-object v5

    .line 839
    .local v5, "kdClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/flurry/org/codehaus/jackson/map/KeyDeserializer;>;"
    if-eqz v5, :cond_0

    const-class v8, Lcom/flurry/org/codehaus/jackson/map/KeyDeserializer$None;

    if-eq v5, v8, :cond_0

    .line 840
    invoke-virtual {p1, p4, v5}, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;->keyDeserializerInstance(Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;Ljava/lang/Class;)Lcom/flurry/org/codehaus/jackson/map/KeyDeserializer;

    move-result-object v4

    .line 846
    .local v4, "kd":Lcom/flurry/org/codehaus/jackson/map/KeyDeserializer;
    invoke-virtual {v6, v4}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->setValueHandler(Ljava/lang/Object;)V

    .line 850
    .end local v4    # "kd":Lcom/flurry/org/codehaus/jackson/map/KeyDeserializer;
    .end local v5    # "kdClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/flurry/org/codehaus/jackson/map/KeyDeserializer;>;"
    :cond_0
    invoke-virtual {v3, p4}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;->findContentDeserializer(Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Class;

    move-result-object v1

    .line 851
    .local v1, "cdClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer<*>;>;"
    if-eqz v1, :cond_1

    const-class v8, Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer$None;

    if-eq v1, v8, :cond_1

    .line 852
    invoke-virtual {p1, p4, v1}, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;->deserializerInstance(Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;Ljava/lang/Class;)Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;

    move-result-object v0

    .line 857
    .local v0, "cd":Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer<Ljava/lang/Object;>;"
    invoke-virtual {p3}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->getContentType()Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v8

    invoke-virtual {v8, v0}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->setValueHandler(Ljava/lang/Object;)V

    .line 864
    .end local v0    # "cd":Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer<Ljava/lang/Object;>;"
    :cond_1
    instance-of v8, p4, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;

    if-eqz v8, :cond_2

    .line 865
    invoke-virtual {p0, p1, p3, p4, p5}, Lcom/flurry/org/codehaus/jackson/map/deser/BasicDeserializerFactory;->findPropertyContentTypeDeserializer(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)Lcom/flurry/org/codehaus/jackson/map/TypeDeserializer;

    move-result-object v2

    .line 867
    .local v2, "contentTypeDeser":Lcom/flurry/org/codehaus/jackson/map/TypeDeserializer;
    if-eqz v2, :cond_2

    .line 868
    invoke-virtual {p3, v2}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->withContentTypeHandler(Ljava/lang/Object;)Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object p3

    .line 874
    .end local v1    # "cdClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer<*>;>;"
    .end local v2    # "contentTypeDeser":Lcom/flurry/org/codehaus/jackson/map/TypeDeserializer;
    .end local v3    # "intr":Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;
    .end local v6    # "keyType":Lcom/flurry/org/codehaus/jackson/type/JavaType;
    :cond_2
    instance-of v8, p4, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;

    if-eqz v8, :cond_4

    .line 875
    invoke-virtual {p0, p1, p3, p4, p5}, Lcom/flurry/org/codehaus/jackson/map/deser/BasicDeserializerFactory;->findPropertyTypeDeserializer(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)Lcom/flurry/org/codehaus/jackson/map/TypeDeserializer;

    move-result-object v7

    .line 880
    .local v7, "valueTypeDeser":Lcom/flurry/org/codehaus/jackson/map/TypeDeserializer;
    :goto_0
    if-eqz v7, :cond_3

    .line 881
    invoke-virtual {p3, v7}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->withTypeHandler(Ljava/lang/Object;)Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object p3

    .line 883
    :cond_3
    return-object p3

    .line 878
    .end local v7    # "valueTypeDeser":Lcom/flurry/org/codehaus/jackson/map/TypeDeserializer;
    :cond_4
    const/4 v8, 0x0

    invoke-virtual {p0, p1, p3, v8}, Lcom/flurry/org/codehaus/jackson/map/deser/BasicDeserializerFactory;->findTypeDeserializer(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)Lcom/flurry/org/codehaus/jackson/map/TypeDeserializer;

    move-result-object v7

    .restart local v7    # "valueTypeDeser":Lcom/flurry/org/codehaus/jackson/map/TypeDeserializer;
    goto :goto_0
.end method

.method public abstract withConfig(Lcom/flurry/org/codehaus/jackson/map/DeserializerFactory$Config;)Lcom/flurry/org/codehaus/jackson/map/DeserializerFactory;
.end method
