.class public Lcom/flurry/org/codehaus/jackson/map/deser/std/MapDeserializer;
.super Lcom/flurry/org/codehaus/jackson/map/deser/std/ContainerDeserializerBase;
.source "MapDeserializer.java"

# interfaces
.implements Lcom/flurry/org/codehaus/jackson/map/ResolvableDeserializer;


# annotations
.annotation runtime Lcom/flurry/org/codehaus/jackson/map/annotate/JacksonStdImpl;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/flurry/org/codehaus/jackson/map/deser/std/ContainerDeserializerBase",
        "<",
        "Ljava/util/Map",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;>;",
        "Lcom/flurry/org/codehaus/jackson/map/ResolvableDeserializer;"
    }
.end annotation


# instance fields
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

.field protected final _hasDefaultCreator:Z

.field protected _ignorableProperties:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected final _keyDeserializer:Lcom/flurry/org/codehaus/jackson/map/KeyDeserializer;

.field protected final _mapType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

.field protected _propertyBasedCreator:Lcom/flurry/org/codehaus/jackson/map/deser/impl/PropertyBasedCreator;

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
.method protected constructor <init>(Lcom/flurry/org/codehaus/jackson/map/deser/std/MapDeserializer;)V
    .locals 1
    .param p1, "src"    # Lcom/flurry/org/codehaus/jackson/map/deser/std/MapDeserializer;

    .prologue
    .line 145
    iget-object v0, p1, Lcom/flurry/org/codehaus/jackson/map/deser/std/MapDeserializer;->_valueClass:Ljava/lang/Class;

    invoke-direct {p0, v0}, Lcom/flurry/org/codehaus/jackson/map/deser/std/ContainerDeserializerBase;-><init>(Ljava/lang/Class;)V

    .line 146
    iget-object v0, p1, Lcom/flurry/org/codehaus/jackson/map/deser/std/MapDeserializer;->_mapType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/MapDeserializer;->_mapType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    .line 147
    iget-object v0, p1, Lcom/flurry/org/codehaus/jackson/map/deser/std/MapDeserializer;->_keyDeserializer:Lcom/flurry/org/codehaus/jackson/map/KeyDeserializer;

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/MapDeserializer;->_keyDeserializer:Lcom/flurry/org/codehaus/jackson/map/KeyDeserializer;

    .line 148
    iget-object v0, p1, Lcom/flurry/org/codehaus/jackson/map/deser/std/MapDeserializer;->_valueDeserializer:Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/MapDeserializer;->_valueDeserializer:Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;

    .line 149
    iget-object v0, p1, Lcom/flurry/org/codehaus/jackson/map/deser/std/MapDeserializer;->_valueTypeDeserializer:Lcom/flurry/org/codehaus/jackson/map/TypeDeserializer;

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/MapDeserializer;->_valueTypeDeserializer:Lcom/flurry/org/codehaus/jackson/map/TypeDeserializer;

    .line 150
    iget-object v0, p1, Lcom/flurry/org/codehaus/jackson/map/deser/std/MapDeserializer;->_valueInstantiator:Lcom/flurry/org/codehaus/jackson/map/deser/ValueInstantiator;

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/MapDeserializer;->_valueInstantiator:Lcom/flurry/org/codehaus/jackson/map/deser/ValueInstantiator;

    .line 151
    iget-object v0, p1, Lcom/flurry/org/codehaus/jackson/map/deser/std/MapDeserializer;->_propertyBasedCreator:Lcom/flurry/org/codehaus/jackson/map/deser/impl/PropertyBasedCreator;

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/MapDeserializer;->_propertyBasedCreator:Lcom/flurry/org/codehaus/jackson/map/deser/impl/PropertyBasedCreator;

    .line 152
    iget-object v0, p1, Lcom/flurry/org/codehaus/jackson/map/deser/std/MapDeserializer;->_delegateDeserializer:Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/MapDeserializer;->_delegateDeserializer:Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;

    .line 153
    iget-boolean v0, p1, Lcom/flurry/org/codehaus/jackson/map/deser/std/MapDeserializer;->_hasDefaultCreator:Z

    iput-boolean v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/MapDeserializer;->_hasDefaultCreator:Z

    .line 155
    iget-object v0, p1, Lcom/flurry/org/codehaus/jackson/map/deser/std/MapDeserializer;->_ignorableProperties:Ljava/util/HashSet;

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/MapDeserializer;->_ignorableProperties:Ljava/util/HashSet;

    .line 156
    return-void
.end method

.method public constructor <init>(Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/deser/ValueInstantiator;Lcom/flurry/org/codehaus/jackson/map/KeyDeserializer;Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;Lcom/flurry/org/codehaus/jackson/map/TypeDeserializer;)V
    .locals 1
    .param p1, "mapType"    # Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .param p2, "valueInstantiator"    # Lcom/flurry/org/codehaus/jackson/map/deser/ValueInstantiator;
    .param p3, "keyDeser"    # Lcom/flurry/org/codehaus/jackson/map/KeyDeserializer;
    .param p5, "valueTypeDeser"    # Lcom/flurry/org/codehaus/jackson/map/TypeDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/type/JavaType;",
            "Lcom/flurry/org/codehaus/jackson/map/deser/ValueInstantiator;",
            "Lcom/flurry/org/codehaus/jackson/map/KeyDeserializer;",
            "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/flurry/org/codehaus/jackson/map/TypeDeserializer;",
            ")V"
        }
    .end annotation

    .prologue
    .line 123
    .local p4, "valueDeser":Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer<Ljava/lang/Object;>;"
    const-class v0, Ljava/util/Map;

    invoke-direct {p0, v0}, Lcom/flurry/org/codehaus/jackson/map/deser/std/ContainerDeserializerBase;-><init>(Ljava/lang/Class;)V

    .line 124
    iput-object p1, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/MapDeserializer;->_mapType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    .line 125
    iput-object p3, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/MapDeserializer;->_keyDeserializer:Lcom/flurry/org/codehaus/jackson/map/KeyDeserializer;

    .line 126
    iput-object p4, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/MapDeserializer;->_valueDeserializer:Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;

    .line 127
    iput-object p5, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/MapDeserializer;->_valueTypeDeserializer:Lcom/flurry/org/codehaus/jackson/map/TypeDeserializer;

    .line 128
    iput-object p2, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/MapDeserializer;->_valueInstantiator:Lcom/flurry/org/codehaus/jackson/map/deser/ValueInstantiator;

    .line 129
    invoke-virtual {p2}, Lcom/flurry/org/codehaus/jackson/map/deser/ValueInstantiator;->canCreateFromObjectWith()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/deser/impl/PropertyBasedCreator;

    invoke-direct {v0, p2}, Lcom/flurry/org/codehaus/jackson/map/deser/impl/PropertyBasedCreator;-><init>(Lcom/flurry/org/codehaus/jackson/map/deser/ValueInstantiator;)V

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/MapDeserializer;->_propertyBasedCreator:Lcom/flurry/org/codehaus/jackson/map/deser/impl/PropertyBasedCreator;

    .line 134
    :goto_0
    invoke-virtual {p2}, Lcom/flurry/org/codehaus/jackson/map/deser/ValueInstantiator;->canCreateUsingDefault()Z

    move-result v0

    iput-boolean v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/MapDeserializer;->_hasDefaultCreator:Z

    .line 135
    return-void

    .line 132
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/MapDeserializer;->_propertyBasedCreator:Lcom/flurry/org/codehaus/jackson/map/deser/impl/PropertyBasedCreator;

    goto :goto_0
.end method

.method protected constructor <init>(Lcom/flurry/org/codehaus/jackson/type/JavaType;Ljava/lang/reflect/Constructor;Lcom/flurry/org/codehaus/jackson/map/KeyDeserializer;Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;Lcom/flurry/org/codehaus/jackson/map/TypeDeserializer;)V
    .locals 6
    .param p1, "mapType"    # Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .param p3, "keyDeser"    # Lcom/flurry/org/codehaus/jackson/map/KeyDeserializer;
    .param p5, "valueTypeDeser"    # Lcom/flurry/org/codehaus/jackson/map/TypeDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/type/JavaType;",
            "Ljava/lang/reflect/Constructor",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;>;",
            "Lcom/flurry/org/codehaus/jackson/map/KeyDeserializer;",
            "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/flurry/org/codehaus/jackson/map/TypeDeserializer;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .local p2, "defCtor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;>;"
    .local p4, "valueDeser":Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer<Ljava/lang/Object;>;"
    const/4 v2, 0x0

    .line 103
    const-class v3, Ljava/util/Map;

    invoke-direct {p0, v3}, Lcom/flurry/org/codehaus/jackson/map/deser/std/ContainerDeserializerBase;-><init>(Ljava/lang/Class;)V

    .line 104
    iput-object p1, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/MapDeserializer;->_mapType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    .line 105
    iput-object p3, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/MapDeserializer;->_keyDeserializer:Lcom/flurry/org/codehaus/jackson/map/KeyDeserializer;

    .line 106
    iput-object p4, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/MapDeserializer;->_valueDeserializer:Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;

    .line 107
    iput-object p5, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/MapDeserializer;->_valueTypeDeserializer:Lcom/flurry/org/codehaus/jackson/map/TypeDeserializer;

    .line 109
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdValueInstantiator;

    invoke-direct {v0, v2, p1}, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdValueInstantiator;-><init>(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/type/JavaType;)V

    .line 110
    .local v0, "inst":Lcom/flurry/org/codehaus/jackson/map/deser/std/StdValueInstantiator;
    if-eqz p2, :cond_0

    .line 111
    new-instance v1, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedConstructor;

    invoke-direct {v1, p2, v2, v2}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedConstructor;-><init>(Ljava/lang/reflect/Constructor;Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotationMap;[Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotationMap;)V

    .local v1, "aCtor":Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedConstructor;
    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    .line 113
    invoke-virtual/range {v0 .. v5}, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdValueInstantiator;->configureFromObjectSettings(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;[Lcom/flurry/org/codehaus/jackson/map/deser/impl/CreatorProperty;)V

    .line 115
    .end local v1    # "aCtor":Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedConstructor;
    :cond_0
    if-eqz p2, :cond_1

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/MapDeserializer;->_hasDefaultCreator:Z

    .line 116
    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/MapDeserializer;->_valueInstantiator:Lcom/flurry/org/codehaus/jackson/map/deser/ValueInstantiator;

    .line 117
    return-void

    .line 115
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public _deserializeUsingCreator(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;)Ljava/util/Map;
    .locals 13
    .param p1, "jp"    # Lcom/flurry/org/codehaus/jackson/JsonParser;
    .param p2, "ctxt"    # Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/JsonParser;",
            "Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
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
    .line 335
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/MapDeserializer;->_propertyBasedCreator:Lcom/flurry/org/codehaus/jackson/map/deser/impl/PropertyBasedCreator;

    .line 336
    .local v1, "creator":Lcom/flurry/org/codehaus/jackson/map/deser/impl/PropertyBasedCreator;
    invoke-virtual {v1, p1, p2}, Lcom/flurry/org/codehaus/jackson/map/deser/impl/PropertyBasedCreator;->startBuilding(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;)Lcom/flurry/org/codehaus/jackson/map/deser/impl/PropertyValueBuffer;

    move-result-object v0

    .line 338
    .local v0, "buffer":Lcom/flurry/org/codehaus/jackson/map/deser/impl/PropertyValueBuffer;
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getCurrentToken()Lcom/flurry/org/codehaus/jackson/JsonToken;

    move-result-object v8

    .line 339
    .local v8, "t":Lcom/flurry/org/codehaus/jackson/JsonToken;
    sget-object v12, Lcom/flurry/org/codehaus/jackson/JsonToken;->START_OBJECT:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-ne v8, v12, :cond_0

    .line 340
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->nextToken()Lcom/flurry/org/codehaus/jackson/JsonToken;

    move-result-object v8

    .line 342
    :cond_0
    iget-object v11, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/MapDeserializer;->_valueDeserializer:Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;

    .line 343
    .local v11, "valueDes":Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer<Ljava/lang/Object;>;"
    iget-object v9, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/MapDeserializer;->_valueTypeDeserializer:Lcom/flurry/org/codehaus/jackson/map/TypeDeserializer;

    .line 344
    .local v9, "typeDeser":Lcom/flurry/org/codehaus/jackson/map/TypeDeserializer;
    :goto_0
    sget-object v12, Lcom/flurry/org/codehaus/jackson/JsonToken;->FIELD_NAME:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-ne v8, v12, :cond_6

    .line 345
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v6

    .line 346
    .local v6, "propName":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->nextToken()Lcom/flurry/org/codehaus/jackson/JsonToken;

    move-result-object v8

    .line 347
    iget-object v12, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/MapDeserializer;->_ignorableProperties:Ljava/util/HashSet;

    if-eqz v12, :cond_2

    iget-object v12, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/MapDeserializer;->_ignorableProperties:Ljava/util/HashSet;

    invoke-virtual {v12, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 348
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->skipChildren()Lcom/flurry/org/codehaus/jackson/JsonParser;

    .line 344
    :cond_1
    :goto_1
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->nextToken()Lcom/flurry/org/codehaus/jackson/JsonToken;

    move-result-object v8

    goto :goto_0

    .line 352
    :cond_2
    invoke-virtual {v1, v6}, Lcom/flurry/org/codehaus/jackson/map/deser/impl/PropertyBasedCreator;->findCreatorProperty(Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;

    move-result-object v5

    .line 353
    .local v5, "prop":Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;
    if-eqz v5, :cond_3

    .line 355
    invoke-virtual {v5, p1, p2}, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;->deserialize(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v10

    .line 356
    .local v10, "value":Ljava/lang/Object;
    invoke-virtual {v5}, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;->getPropertyIndex()I

    move-result v12

    invoke-virtual {v0, v12, v10}, Lcom/flurry/org/codehaus/jackson/map/deser/impl/PropertyValueBuffer;->assignParameter(ILjava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 357
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->nextToken()Lcom/flurry/org/codehaus/jackson/JsonToken;

    .line 360
    :try_start_0
    invoke-virtual {v1, v0}, Lcom/flurry/org/codehaus/jackson/map/deser/impl/PropertyBasedCreator;->build(Lcom/flurry/org/codehaus/jackson/map/deser/impl/PropertyValueBuffer;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 365
    .local v7, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-virtual {p0, p1, p2, v7}, Lcom/flurry/org/codehaus/jackson/map/deser/std/MapDeserializer;->_readAndBind(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;Ljava/util/Map;)V

    .line 389
    .end local v5    # "prop":Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;
    .end local v6    # "propName":Ljava/lang/String;
    .end local v7    # "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v10    # "value":Ljava/lang/Object;
    :goto_2
    return-object v7

    .line 361
    .restart local v5    # "prop":Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;
    .restart local v6    # "propName":Ljava/lang/String;
    .restart local v10    # "value":Ljava/lang/Object;
    :catch_0
    move-exception v2

    .line 362
    .local v2, "e":Ljava/lang/Exception;
    iget-object v12, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/MapDeserializer;->_mapType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    invoke-virtual {v12}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {p0, v2, v12}, Lcom/flurry/org/codehaus/jackson/map/deser/std/MapDeserializer;->wrapAndThrow(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 363
    const/4 v7, 0x0

    goto :goto_2

    .line 371
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v10    # "value":Ljava/lang/Object;
    :cond_3
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v3

    .line 372
    .local v3, "fieldName":Ljava/lang/String;
    iget-object v12, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/MapDeserializer;->_keyDeserializer:Lcom/flurry/org/codehaus/jackson/map/KeyDeserializer;

    invoke-virtual {v12, v3, p2}, Lcom/flurry/org/codehaus/jackson/map/KeyDeserializer;->deserializeKey(Ljava/lang/String;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v4

    .line 374
    .local v4, "key":Ljava/lang/Object;
    sget-object v12, Lcom/flurry/org/codehaus/jackson/JsonToken;->VALUE_NULL:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-ne v8, v12, :cond_4

    .line 375
    const/4 v10, 0x0

    .line 381
    :goto_3
    invoke-virtual {v0, v4, v10}, Lcom/flurry/org/codehaus/jackson/map/deser/impl/PropertyValueBuffer;->bufferMapProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 376
    :cond_4
    if-nez v9, :cond_5

    .line 377
    invoke-virtual {v11, p1, p2}, Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;->deserialize(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v10

    .restart local v10    # "value":Ljava/lang/Object;
    goto :goto_3

    .line 379
    .end local v10    # "value":Ljava/lang/Object;
    :cond_5
    invoke-virtual {v11, p1, p2, v9}, Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;->deserializeWithType(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;Lcom/flurry/org/codehaus/jackson/map/TypeDeserializer;)Ljava/lang/Object;

    move-result-object v10

    .restart local v10    # "value":Ljava/lang/Object;
    goto :goto_3

    .line 386
    .end local v3    # "fieldName":Ljava/lang/String;
    .end local v4    # "key":Ljava/lang/Object;
    .end local v5    # "prop":Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;
    .end local v6    # "propName":Ljava/lang/String;
    .end local v10    # "value":Ljava/lang/Object;
    :cond_6
    :try_start_1
    invoke-virtual {v1, v0}, Lcom/flurry/org/codehaus/jackson/map/deser/impl/PropertyBasedCreator;->build(Lcom/flurry/org/codehaus/jackson/map/deser/impl/PropertyValueBuffer;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v7, v12

    goto :goto_2

    .line 387
    :catch_1
    move-exception v2

    .line 388
    .restart local v2    # "e":Ljava/lang/Exception;
    iget-object v12, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/MapDeserializer;->_mapType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    invoke-virtual {v12}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {p0, v2, v12}, Lcom/flurry/org/codehaus/jackson/map/deser/std/MapDeserializer;->wrapAndThrow(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 389
    const/4 v7, 0x0

    goto :goto_2
.end method

.method protected final _readAndBind(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;Ljava/util/Map;)V
    .locals 8
    .param p1, "jp"    # Lcom/flurry/org/codehaus/jackson/JsonParser;
    .param p2, "ctxt"    # Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/JsonParser;",
            "Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 297
    .local p3, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getCurrentToken()Lcom/flurry/org/codehaus/jackson/JsonToken;

    move-result-object v3

    .line 298
    .local v3, "t":Lcom/flurry/org/codehaus/jackson/JsonToken;
    sget-object v7, Lcom/flurry/org/codehaus/jackson/JsonToken;->START_OBJECT:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-ne v3, v7, :cond_0

    .line 299
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->nextToken()Lcom/flurry/org/codehaus/jackson/JsonToken;

    move-result-object v3

    .line 301
    :cond_0
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/MapDeserializer;->_keyDeserializer:Lcom/flurry/org/codehaus/jackson/map/KeyDeserializer;

    .line 302
    .local v2, "keyDes":Lcom/flurry/org/codehaus/jackson/map/KeyDeserializer;
    iget-object v6, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/MapDeserializer;->_valueDeserializer:Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;

    .line 303
    .local v6, "valueDes":Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer<Ljava/lang/Object;>;"
    iget-object v4, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/MapDeserializer;->_valueTypeDeserializer:Lcom/flurry/org/codehaus/jackson/map/TypeDeserializer;

    .line 304
    .local v4, "typeDeser":Lcom/flurry/org/codehaus/jackson/map/TypeDeserializer;
    :goto_0
    sget-object v7, Lcom/flurry/org/codehaus/jackson/JsonToken;->FIELD_NAME:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-ne v3, v7, :cond_4

    .line 306
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v0

    .line 307
    .local v0, "fieldName":Ljava/lang/String;
    invoke-virtual {v2, v0, p2}, Lcom/flurry/org/codehaus/jackson/map/KeyDeserializer;->deserializeKey(Ljava/lang/String;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v1

    .line 309
    .local v1, "key":Ljava/lang/Object;
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->nextToken()Lcom/flurry/org/codehaus/jackson/JsonToken;

    move-result-object v3

    .line 310
    iget-object v7, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/MapDeserializer;->_ignorableProperties:Ljava/util/HashSet;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/MapDeserializer;->_ignorableProperties:Ljava/util/HashSet;

    invoke-virtual {v7, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 311
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->skipChildren()Lcom/flurry/org/codehaus/jackson/JsonParser;

    .line 304
    :goto_1
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->nextToken()Lcom/flurry/org/codehaus/jackson/JsonToken;

    move-result-object v3

    goto :goto_0

    .line 316
    :cond_1
    sget-object v7, Lcom/flurry/org/codehaus/jackson/JsonToken;->VALUE_NULL:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-ne v3, v7, :cond_2

    .line 317
    const/4 v5, 0x0

    .line 327
    :goto_2
    invoke-interface {p3, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 318
    :cond_2
    if-nez v4, :cond_3

    .line 319
    invoke-virtual {v6, p1, p2}, Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;->deserialize(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v5

    .local v5, "value":Ljava/lang/Object;
    goto :goto_2

    .line 321
    .end local v5    # "value":Ljava/lang/Object;
    :cond_3
    invoke-virtual {v6, p1, p2, v4}, Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;->deserializeWithType(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;Lcom/flurry/org/codehaus/jackson/map/TypeDeserializer;)Ljava/lang/Object;

    move-result-object v5

    .restart local v5    # "value":Ljava/lang/Object;
    goto :goto_2

    .line 329
    .end local v0    # "fieldName":Ljava/lang/String;
    .end local v1    # "key":Ljava/lang/Object;
    .end local v5    # "value":Ljava/lang/Object;
    :cond_4
    return-void
.end method

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
    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/flurry/org/codehaus/jackson/map/deser/std/MapDeserializer;->deserialize(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;)Ljava/util/Map;

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
    .line 33
    check-cast p3, Ljava/util/Map;

    .end local p3    # "x2":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Lcom/flurry/org/codehaus/jackson/map/deser/std/MapDeserializer;->deserialize(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public deserialize(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;)Ljava/util/Map;
    .locals 4
    .param p1, "jp"    # Lcom/flurry/org/codehaus/jackson/JsonParser;
    .param p2, "ctxt"    # Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/JsonParser;",
            "Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
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
    .line 230
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/MapDeserializer;->_propertyBasedCreator:Lcom/flurry/org/codehaus/jackson/map/deser/impl/PropertyBasedCreator;

    if-eqz v2, :cond_0

    .line 231
    invoke-virtual {p0, p1, p2}, Lcom/flurry/org/codehaus/jackson/map/deser/std/MapDeserializer;->_deserializeUsingCreator(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;)Ljava/util/Map;

    move-result-object v2

    .line 250
    :goto_0
    return-object v2

    .line 233
    :cond_0
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/MapDeserializer;->_delegateDeserializer:Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;

    if-eqz v2, :cond_1

    .line 234
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/MapDeserializer;->_valueInstantiator:Lcom/flurry/org/codehaus/jackson/map/deser/ValueInstantiator;

    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/MapDeserializer;->_delegateDeserializer:Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;

    invoke-virtual {v3, p1, p2}, Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;->deserialize(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/flurry/org/codehaus/jackson/map/deser/ValueInstantiator;->createUsingDelegate(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    goto :goto_0

    .line 236
    :cond_1
    iget-boolean v2, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/MapDeserializer;->_hasDefaultCreator:Z

    if-nez v2, :cond_2

    .line 237
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/map/deser/std/MapDeserializer;->getMapClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "No default constructor found"

    invoke-virtual {p2, v2, v3}, Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;->instantiationException(Ljava/lang/Class;Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;

    move-result-object v2

    throw v2

    .line 240
    :cond_2
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getCurrentToken()Lcom/flurry/org/codehaus/jackson/JsonToken;

    move-result-object v1

    .line 241
    .local v1, "t":Lcom/flurry/org/codehaus/jackson/JsonToken;
    sget-object v2, Lcom/flurry/org/codehaus/jackson/JsonToken;->START_OBJECT:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-eq v1, v2, :cond_4

    sget-object v2, Lcom/flurry/org/codehaus/jackson/JsonToken;->FIELD_NAME:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-eq v1, v2, :cond_4

    sget-object v2, Lcom/flurry/org/codehaus/jackson/JsonToken;->END_OBJECT:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-eq v1, v2, :cond_4

    .line 243
    sget-object v2, Lcom/flurry/org/codehaus/jackson/JsonToken;->VALUE_STRING:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-ne v1, v2, :cond_3

    .line 244
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/MapDeserializer;->_valueInstantiator:Lcom/flurry/org/codehaus/jackson/map/deser/ValueInstantiator;

    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/flurry/org/codehaus/jackson/map/deser/ValueInstantiator;->createFromString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    goto :goto_0

    .line 246
    :cond_3
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/map/deser/std/MapDeserializer;->getMapClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;->mappingException(Ljava/lang/Class;)Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;

    move-result-object v2

    throw v2

    .line 248
    :cond_4
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/MapDeserializer;->_valueInstantiator:Lcom/flurry/org/codehaus/jackson/map/deser/ValueInstantiator;

    invoke-virtual {v2}, Lcom/flurry/org/codehaus/jackson/map/deser/ValueInstantiator;->createUsingDefault()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 249
    .local v0, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-virtual {p0, p1, p2, v0}, Lcom/flurry/org/codehaus/jackson/map/deser/std/MapDeserializer;->_readAndBind(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;Ljava/util/Map;)V

    move-object v2, v0

    .line 250
    goto :goto_0
.end method

.method public deserialize(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;Ljava/util/Map;)Ljava/util/Map;
    .locals 2
    .param p1, "jp"    # Lcom/flurry/org/codehaus/jackson/JsonParser;
    .param p2, "ctxt"    # Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/JsonParser;",
            "Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
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
    .line 259
    .local p3, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getCurrentToken()Lcom/flurry/org/codehaus/jackson/JsonToken;

    move-result-object v0

    .line 260
    .local v0, "t":Lcom/flurry/org/codehaus/jackson/JsonToken;
    sget-object v1, Lcom/flurry/org/codehaus/jackson/JsonToken;->START_OBJECT:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/flurry/org/codehaus/jackson/JsonToken;->FIELD_NAME:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-eq v0, v1, :cond_0

    .line 261
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/map/deser/std/MapDeserializer;->getMapClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;->mappingException(Ljava/lang/Class;)Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;

    move-result-object v1

    throw v1

    .line 263
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/flurry/org/codehaus/jackson/map/deser/std/MapDeserializer;->_readAndBind(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;Ljava/util/Map;)V

    .line 264
    return-object p3
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
    .line 273
    invoke-virtual {p3, p1, p2}, Lcom/flurry/org/codehaus/jackson/map/TypeDeserializer;->deserializeTypedFromObject(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

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
    .line 216
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/MapDeserializer;->_valueDeserializer:Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;

    return-object v0
.end method

.method public getContentType()Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/MapDeserializer;->_mapType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->getContentType()Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v0

    return-object v0
.end method

.method public final getMapClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 283
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/MapDeserializer;->_mapType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public getValueType()Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/MapDeserializer;->_mapType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    return-object v0
.end method

.method public resolve(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/map/DeserializerProvider;)V
    .locals 8
    .param p1, "config"    # Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;
    .param p2, "provider"    # Lcom/flurry/org/codehaus/jackson/map/DeserializerProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 180
    iget-object v5, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/MapDeserializer;->_valueInstantiator:Lcom/flurry/org/codehaus/jackson/map/deser/ValueInstantiator;

    invoke-virtual {v5}, Lcom/flurry/org/codehaus/jackson/map/deser/ValueInstantiator;->canCreateUsingDelegate()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 181
    iget-object v5, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/MapDeserializer;->_valueInstantiator:Lcom/flurry/org/codehaus/jackson/map/deser/ValueInstantiator;

    invoke-virtual {v5}, Lcom/flurry/org/codehaus/jackson/map/deser/ValueInstantiator;->getDelegateType()Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v1

    .line 182
    .local v1, "delegateType":Lcom/flurry/org/codehaus/jackson/type/JavaType;
    if-nez v1, :cond_0

    .line 183
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid delegate-creator definition for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/MapDeserializer;->_mapType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": value instantiator ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/MapDeserializer;->_valueInstantiator:Lcom/flurry/org/codehaus/jackson/map/deser/ValueInstantiator;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") returned true for \'canCreateUsingDelegate()\', but null for \'getDelegateType()\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 187
    :cond_0
    iget-object v5, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/MapDeserializer;->_valueInstantiator:Lcom/flurry/org/codehaus/jackson/map/deser/ValueInstantiator;

    invoke-virtual {v5}, Lcom/flurry/org/codehaus/jackson/map/deser/ValueInstantiator;->getDelegateCreator()Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;

    move-result-object v0

    .line 190
    .local v0, "delegateCreator":Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;
    new-instance v4, Lcom/flurry/org/codehaus/jackson/map/BeanProperty$Std;

    invoke-direct {v4, v6, v1, v6, v0}, Lcom/flurry/org/codehaus/jackson/map/BeanProperty$Std;-><init>(Ljava/lang/String;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/util/Annotations;Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;)V

    .line 192
    .local v4, "property":Lcom/flurry/org/codehaus/jackson/map/BeanProperty$Std;
    invoke-virtual {p0, p1, p2, v1, v4}, Lcom/flurry/org/codehaus/jackson/map/deser/std/MapDeserializer;->findDeserializer(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/map/DeserializerProvider;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;

    move-result-object v5

    iput-object v5, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/MapDeserializer;->_delegateDeserializer:Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;

    .line 194
    .end local v0    # "delegateCreator":Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;
    .end local v1    # "delegateType":Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .end local v4    # "property":Lcom/flurry/org/codehaus/jackson/map/BeanProperty$Std;
    :cond_1
    iget-object v5, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/MapDeserializer;->_propertyBasedCreator:Lcom/flurry/org/codehaus/jackson/map/deser/impl/PropertyBasedCreator;

    if-eqz v5, :cond_3

    .line 195
    iget-object v5, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/MapDeserializer;->_propertyBasedCreator:Lcom/flurry/org/codehaus/jackson/map/deser/impl/PropertyBasedCreator;

    invoke-virtual {v5}, Lcom/flurry/org/codehaus/jackson/map/deser/impl/PropertyBasedCreator;->getCreatorProperties()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;

    .line 196
    .local v3, "prop":Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;
    invoke-virtual {v3}, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;->hasValueDeserializer()Z

    move-result v5

    if-nez v5, :cond_2

    .line 197
    iget-object v5, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/MapDeserializer;->_propertyBasedCreator:Lcom/flurry/org/codehaus/jackson/map/deser/impl/PropertyBasedCreator;

    invoke-virtual {v3}, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;->getType()Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v6

    invoke-virtual {p0, p1, p2, v6, v3}, Lcom/flurry/org/codehaus/jackson/map/deser/std/MapDeserializer;->findDeserializer(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/map/DeserializerProvider;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;

    move-result-object v6

    invoke-virtual {v5, v3, v6}, Lcom/flurry/org/codehaus/jackson/map/deser/impl/PropertyBasedCreator;->assignDeserializer(Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;)V

    goto :goto_0

    .line 201
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "prop":Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;
    :cond_3
    return-void
.end method

.method public setIgnorableProperties([Ljava/lang/String;)V
    .locals 1
    .param p1, "ignorable"    # [Ljava/lang/String;

    .prologue
    .line 160
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/MapDeserializer;->_ignorableProperties:Ljava/util/HashSet;

    .line 162
    return-void

    .line 160
    :cond_1
    invoke-static {p1}, Lcom/flurry/org/codehaus/jackson/map/util/ArrayBuilders;->arrayToSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    goto :goto_0
.end method

.method protected wrapAndThrow(Ljava/lang/Throwable;Ljava/lang/Object;)V
    .locals 1
    .param p1, "t"    # Ljava/lang/Throwable;
    .param p2, "ref"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 398
    :goto_0
    instance-of v0, p1, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 399
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    goto :goto_0

    .line 402
    :cond_0
    instance-of v0, p1, Ljava/lang/Error;

    if-eqz v0, :cond_1

    .line 403
    check-cast p1, Ljava/lang/Error;

    .end local p1    # "t":Ljava/lang/Throwable;
    throw p1

    .line 406
    .restart local p1    # "t":Ljava/lang/Throwable;
    :cond_1
    instance-of v0, p1, Ljava/io/IOException;

    if-eqz v0, :cond_2

    instance-of v0, p1, Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;

    if-nez v0, :cond_2

    .line 407
    check-cast p1, Ljava/io/IOException;

    .end local p1    # "t":Ljava/lang/Throwable;
    throw p1

    .line 409
    .restart local p1    # "t":Ljava/lang/Throwable;
    :cond_2
    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;->wrapWithPath(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;

    move-result-object v0

    throw v0
.end method
