.class public Lcom/flurry/org/codehaus/jackson/map/deser/std/CollectionDeserializer;
.super Lcom/flurry/org/codehaus/jackson/map/deser/std/ContainerDeserializerBase;
.source "CollectionDeserializer.java"

# interfaces
.implements Lcom/flurry/org/codehaus/jackson/map/ResolvableDeserializer;


# annotations
.annotation runtime Lcom/flurry/org/codehaus/jackson/map/annotate/JacksonStdImpl;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/flurry/org/codehaus/jackson/map/deser/std/ContainerDeserializerBase",
        "<",
        "Ljava/util/Collection",
        "<",
        "Ljava/lang/Object;",
        ">;>;",
        "Lcom/flurry/org/codehaus/jackson/map/ResolvableDeserializer;"
    }
.end annotation


# instance fields
.field protected final _collectionType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

.field protected _delegateDeserializer:Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected final _valueDeserializer:Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected final _valueInstantiator:Lcom/flurry/org/codehaus/jackson/map/deser/ValueInstantiator;

.field protected final _valueTypeDeserializer:Lcom/flurry/org/codehaus/jackson/map/TypeDeserializer;


# direct methods
.method protected constructor <init>(Lcom/flurry/org/codehaus/jackson/map/deser/std/CollectionDeserializer;)V
    .locals 1
    .param p1, "src"    # Lcom/flurry/org/codehaus/jackson/map/deser/std/CollectionDeserializer;

    .prologue
    .line 114
    iget-object v0, p1, Lcom/flurry/org/codehaus/jackson/map/deser/std/CollectionDeserializer;->_valueClass:Ljava/lang/Class;

    invoke-direct {p0, v0}, Lcom/flurry/org/codehaus/jackson/map/deser/std/ContainerDeserializerBase;-><init>(Ljava/lang/Class;)V

    .line 115
    iget-object v0, p1, Lcom/flurry/org/codehaus/jackson/map/deser/std/CollectionDeserializer;->_collectionType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/CollectionDeserializer;->_collectionType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    .line 116
    iget-object v0, p1, Lcom/flurry/org/codehaus/jackson/map/deser/std/CollectionDeserializer;->_valueDeserializer:Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/CollectionDeserializer;->_valueDeserializer:Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;

    .line 117
    iget-object v0, p1, Lcom/flurry/org/codehaus/jackson/map/deser/std/CollectionDeserializer;->_valueTypeDeserializer:Lcom/flurry/org/codehaus/jackson/map/TypeDeserializer;

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/CollectionDeserializer;->_valueTypeDeserializer:Lcom/flurry/org/codehaus/jackson/map/TypeDeserializer;

    .line 118
    iget-object v0, p1, Lcom/flurry/org/codehaus/jackson/map/deser/std/CollectionDeserializer;->_valueInstantiator:Lcom/flurry/org/codehaus/jackson/map/deser/ValueInstantiator;

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/CollectionDeserializer;->_valueInstantiator:Lcom/flurry/org/codehaus/jackson/map/deser/ValueInstantiator;

    .line 119
    iget-object v0, p1, Lcom/flurry/org/codehaus/jackson/map/deser/std/CollectionDeserializer;->_delegateDeserializer:Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/CollectionDeserializer;->_delegateDeserializer:Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;

    .line 120
    return-void
.end method

.method public constructor <init>(Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;Lcom/flurry/org/codehaus/jackson/map/TypeDeserializer;Lcom/flurry/org/codehaus/jackson/map/deser/ValueInstantiator;)V
    .locals 1
    .param p1, "collectionType"    # Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .param p3, "valueTypeDeser"    # Lcom/flurry/org/codehaus/jackson/map/TypeDeserializer;
    .param p4, "valueInstantiator"    # Lcom/flurry/org/codehaus/jackson/map/deser/ValueInstantiator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/type/JavaType;",
            "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/flurry/org/codehaus/jackson/map/TypeDeserializer;",
            "Lcom/flurry/org/codehaus/jackson/map/deser/ValueInstantiator;",
            ")V"
        }
    .end annotation

    .prologue
    .line 99
    .local p2, "valueDeser":Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer<Ljava/lang/Object;>;"
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/flurry/org/codehaus/jackson/map/deser/std/ContainerDeserializerBase;-><init>(Ljava/lang/Class;)V

    .line 100
    iput-object p1, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/CollectionDeserializer;->_collectionType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    .line 101
    iput-object p2, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/CollectionDeserializer;->_valueDeserializer:Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;

    .line 102
    iput-object p3, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/CollectionDeserializer;->_valueTypeDeserializer:Lcom/flurry/org/codehaus/jackson/map/TypeDeserializer;

    .line 103
    iput-object p4, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/CollectionDeserializer;->_valueInstantiator:Lcom/flurry/org/codehaus/jackson/map/deser/ValueInstantiator;

    .line 104
    return-void
.end method

.method protected constructor <init>(Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;Lcom/flurry/org/codehaus/jackson/map/TypeDeserializer;Ljava/lang/reflect/Constructor;)V
    .locals 6
    .param p1, "collectionType"    # Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .param p3, "valueTypeDeser"    # Lcom/flurry/org/codehaus/jackson/map/TypeDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/type/JavaType;",
            "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/flurry/org/codehaus/jackson/map/TypeDeserializer;",
            "Ljava/lang/reflect/Constructor",
            "<",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .local p2, "valueDeser":Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer<Ljava/lang/Object;>;"
    .local p4, "defCtor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Ljava/util/Collection<Ljava/lang/Object;>;>;"
    const/4 v2, 0x0

    .line 79
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/flurry/org/codehaus/jackson/map/deser/std/ContainerDeserializerBase;-><init>(Ljava/lang/Class;)V

    .line 80
    iput-object p1, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/CollectionDeserializer;->_collectionType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    .line 81
    iput-object p2, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/CollectionDeserializer;->_valueDeserializer:Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;

    .line 82
    iput-object p3, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/CollectionDeserializer;->_valueTypeDeserializer:Lcom/flurry/org/codehaus/jackson/map/TypeDeserializer;

    .line 84
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdValueInstantiator;

    invoke-direct {v0, v2, p1}, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdValueInstantiator;-><init>(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/type/JavaType;)V

    .line 85
    .local v0, "inst":Lcom/flurry/org/codehaus/jackson/map/deser/std/StdValueInstantiator;
    if-eqz p4, :cond_0

    .line 86
    new-instance v1, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedConstructor;

    invoke-direct {v1, p4, v2, v2}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedConstructor;-><init>(Ljava/lang/reflect/Constructor;Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotationMap;[Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotationMap;)V

    .local v1, "aCtor":Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedConstructor;
    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    .line 88
    invoke-virtual/range {v0 .. v5}, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdValueInstantiator;->configureFromObjectSettings(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;[Lcom/flurry/org/codehaus/jackson/map/deser/impl/CreatorProperty;)V

    .line 90
    .end local v1    # "aCtor":Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedConstructor;
    :cond_0
    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/CollectionDeserializer;->_valueInstantiator:Lcom/flurry/org/codehaus/jackson/map/deser/ValueInstantiator;

    .line 91
    return-void
.end method

.method private final handleNonArray(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;Ljava/util/Collection;)Ljava/util/Collection;
    .locals 5
    .param p1, "jp"    # Lcom/flurry/org/codehaus/jackson/JsonParser;
    .param p2, "ctxt"    # Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/JsonParser;",
            "Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Collection",
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
    .line 245
    .local p3, "result":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    sget-object v4, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;->ACCEPT_SINGLE_VALUE_AS_ARRAY:Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;

    invoke-virtual {p2, v4}, Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;->isEnabled(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 246
    iget-object v4, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/CollectionDeserializer;->_collectionType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    invoke-virtual {v4}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p2, v4}, Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;->mappingException(Ljava/lang/Class;)Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;

    move-result-object v4

    throw v4

    .line 248
    :cond_0
    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/CollectionDeserializer;->_valueDeserializer:Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;

    .line 249
    .local v3, "valueDes":Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer<Ljava/lang/Object;>;"
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/CollectionDeserializer;->_valueTypeDeserializer:Lcom/flurry/org/codehaus/jackson/map/TypeDeserializer;

    .line 250
    .local v1, "typeDeser":Lcom/flurry/org/codehaus/jackson/map/TypeDeserializer;
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getCurrentToken()Lcom/flurry/org/codehaus/jackson/JsonToken;

    move-result-object v0

    .line 254
    .local v0, "t":Lcom/flurry/org/codehaus/jackson/JsonToken;
    sget-object v4, Lcom/flurry/org/codehaus/jackson/JsonToken;->VALUE_NULL:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-ne v0, v4, :cond_1

    .line 255
    const/4 v2, 0x0

    .line 261
    :goto_0
    invoke-interface {p3, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 262
    return-object p3

    .line 256
    :cond_1
    if-nez v1, :cond_2

    .line 257
    invoke-virtual {v3, p1, p2}, Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;->deserialize(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v2

    .local v2, "value":Ljava/lang/Object;
    goto :goto_0

    .line 259
    .end local v2    # "value":Ljava/lang/Object;
    :cond_2
    invoke-virtual {v3, p1, p2, v1}, Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;->deserializeWithType(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;Lcom/flurry/org/codehaus/jackson/map/TypeDeserializer;)Ljava/lang/Object;

    move-result-object v2

    .restart local v2    # "value":Ljava/lang/Object;
    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic deserialize(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lcom/flurry/org/codehaus/jackson/JsonParser;
    .param p2, "x1"    # Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 30
    invoke-virtual {p0, p1, p2}, Lcom/flurry/org/codehaus/jackson/map/deser/std/CollectionDeserializer;->deserialize(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic deserialize(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lcom/flurry/org/codehaus/jackson/JsonParser;
    .param p2, "x1"    # Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;
    .param p3, "x2"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 30
    check-cast p3, Ljava/util/Collection;

    .end local p3    # "x2":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Lcom/flurry/org/codehaus/jackson/map/deser/std/CollectionDeserializer;->deserialize(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public deserialize(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;)Ljava/util/Collection;
    .locals 3
    .param p1, "jp"    # Lcom/flurry/org/codehaus/jackson/JsonParser;
    .param p2, "ctxt"    # Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/JsonParser;",
            "Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;",
            ")",
            "Ljava/util/Collection",
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
    .line 181
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/CollectionDeserializer;->_delegateDeserializer:Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;

    if-eqz v1, :cond_0

    .line 182
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/CollectionDeserializer;->_valueInstantiator:Lcom/flurry/org/codehaus/jackson/map/deser/ValueInstantiator;

    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/CollectionDeserializer;->_delegateDeserializer:Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;

    invoke-virtual {v2, p1, p2}, Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;->deserialize(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/flurry/org/codehaus/jackson/map/deser/ValueInstantiator;->createUsingDelegate(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    .line 194
    :goto_0
    return-object v1

    .line 188
    :cond_0
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getCurrentToken()Lcom/flurry/org/codehaus/jackson/JsonToken;

    move-result-object v1

    sget-object v2, Lcom/flurry/org/codehaus/jackson/JsonToken;->VALUE_STRING:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-ne v1, v2, :cond_1

    .line 189
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v0

    .line 190
    .local v0, "str":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 191
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/CollectionDeserializer;->_valueInstantiator:Lcom/flurry/org/codehaus/jackson/map/deser/ValueInstantiator;

    invoke-virtual {v1, v0}, Lcom/flurry/org/codehaus/jackson/map/deser/ValueInstantiator;->createFromString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    goto :goto_0

    .line 194
    .end local v0    # "str":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/CollectionDeserializer;->_valueInstantiator:Lcom/flurry/org/codehaus/jackson/map/deser/ValueInstantiator;

    invoke-virtual {v1}, Lcom/flurry/org/codehaus/jackson/map/deser/ValueInstantiator;->createUsingDefault()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-virtual {p0, p1, p2, v1}, Lcom/flurry/org/codehaus/jackson/map/deser/std/CollectionDeserializer;->deserialize(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v1

    goto :goto_0
.end method

.method public deserialize(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;Ljava/util/Collection;)Ljava/util/Collection;
    .locals 5
    .param p1, "jp"    # Lcom/flurry/org/codehaus/jackson/JsonParser;
    .param p2, "ctxt"    # Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/JsonParser;",
            "Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Collection",
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
    .line 203
    .local p3, "result":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->isExpectedStartArrayToken()Z

    move-result v4

    if-nez v4, :cond_1

    .line 204
    invoke-direct {p0, p1, p2, p3}, Lcom/flurry/org/codehaus/jackson/map/deser/std/CollectionDeserializer;->handleNonArray(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p3

    .line 223
    .end local p3    # "result":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    :cond_0
    return-object p3

    .line 207
    .restart local p3    # "result":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    :cond_1
    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/CollectionDeserializer;->_valueDeserializer:Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;

    .line 209
    .local v3, "valueDes":Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer<Ljava/lang/Object;>;"
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/CollectionDeserializer;->_valueTypeDeserializer:Lcom/flurry/org/codehaus/jackson/map/TypeDeserializer;

    .line 211
    .local v1, "typeDeser":Lcom/flurry/org/codehaus/jackson/map/TypeDeserializer;
    :goto_0
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->nextToken()Lcom/flurry/org/codehaus/jackson/JsonToken;

    move-result-object v0

    .local v0, "t":Lcom/flurry/org/codehaus/jackson/JsonToken;
    sget-object v4, Lcom/flurry/org/codehaus/jackson/JsonToken;->END_ARRAY:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-eq v0, v4, :cond_0

    .line 214
    sget-object v4, Lcom/flurry/org/codehaus/jackson/JsonToken;->VALUE_NULL:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-ne v0, v4, :cond_2

    .line 215
    const/4 v2, 0x0

    .line 221
    :goto_1
    invoke-interface {p3, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 216
    :cond_2
    if-nez v1, :cond_3

    .line 217
    invoke-virtual {v3, p1, p2}, Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;->deserialize(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v2

    .local v2, "value":Ljava/lang/Object;
    goto :goto_1

    .line 219
    .end local v2    # "value":Ljava/lang/Object;
    :cond_3
    invoke-virtual {v3, p1, p2, v1}, Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;->deserializeWithType(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;Lcom/flurry/org/codehaus/jackson/map/TypeDeserializer;)Ljava/lang/Object;

    move-result-object v2

    .restart local v2    # "value":Ljava/lang/Object;
    goto :goto_1
.end method

.method public deserializeWithType(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;Lcom/flurry/org/codehaus/jackson/map/TypeDeserializer;)Ljava/lang/Object;
    .locals 1
    .param p1, "jp"    # Lcom/flurry/org/codehaus/jackson/JsonParser;
    .param p2, "ctxt"    # Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;
    .param p3, "typeDeserializer"    # Lcom/flurry/org/codehaus/jackson/map/TypeDeserializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 232
    invoke-virtual {p3, p1, p2}, Lcom/flurry/org/codehaus/jackson/map/TypeDeserializer;->deserializeTypedFromArray(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getContentDeserializer()Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 167
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/CollectionDeserializer;->_valueDeserializer:Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;

    return-object v0
.end method

.method public getContentType()Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/CollectionDeserializer;->_collectionType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->getContentType()Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v0

    return-object v0
.end method

.method public resolve(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/map/DeserializerProvider;)V
    .locals 6
    .param p1, "config"    # Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;
    .param p2, "provider"    # Lcom/flurry/org/codehaus/jackson/map/DeserializerProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 138
    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/CollectionDeserializer;->_valueInstantiator:Lcom/flurry/org/codehaus/jackson/map/deser/ValueInstantiator;

    invoke-virtual {v3}, Lcom/flurry/org/codehaus/jackson/map/deser/ValueInstantiator;->canCreateUsingDelegate()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 139
    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/CollectionDeserializer;->_valueInstantiator:Lcom/flurry/org/codehaus/jackson/map/deser/ValueInstantiator;

    invoke-virtual {v3}, Lcom/flurry/org/codehaus/jackson/map/deser/ValueInstantiator;->getDelegateType()Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v1

    .line 140
    .local v1, "delegateType":Lcom/flurry/org/codehaus/jackson/type/JavaType;
    if-nez v1, :cond_0

    .line 141
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid delegate-creator definition for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/CollectionDeserializer;->_collectionType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": value instantiator ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/CollectionDeserializer;->_valueInstantiator:Lcom/flurry/org/codehaus/jackson/map/deser/ValueInstantiator;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") returned true for \'canCreateUsingDelegate()\', but null for \'getDelegateType()\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 145
    :cond_0
    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/CollectionDeserializer;->_valueInstantiator:Lcom/flurry/org/codehaus/jackson/map/deser/ValueInstantiator;

    invoke-virtual {v3}, Lcom/flurry/org/codehaus/jackson/map/deser/ValueInstantiator;->getDelegateCreator()Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;

    move-result-object v0

    .line 148
    .local v0, "delegateCreator":Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;
    new-instance v2, Lcom/flurry/org/codehaus/jackson/map/BeanProperty$Std;

    invoke-direct {v2, v4, v1, v4, v0}, Lcom/flurry/org/codehaus/jackson/map/BeanProperty$Std;-><init>(Ljava/lang/String;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/util/Annotations;Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;)V

    .line 150
    .local v2, "property":Lcom/flurry/org/codehaus/jackson/map/BeanProperty$Std;
    invoke-virtual {p0, p1, p2, v1, v2}, Lcom/flurry/org/codehaus/jackson/map/deser/std/CollectionDeserializer;->findDeserializer(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/map/DeserializerProvider;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;

    move-result-object v3

    iput-object v3, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/CollectionDeserializer;->_delegateDeserializer:Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;

    .line 152
    .end local v0    # "delegateCreator":Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;
    .end local v1    # "delegateType":Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .end local v2    # "property":Lcom/flurry/org/codehaus/jackson/map/BeanProperty$Std;
    :cond_1
    return-void
.end method
