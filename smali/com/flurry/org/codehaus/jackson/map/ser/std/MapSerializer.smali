.class public Lcom/flurry/org/codehaus/jackson/map/ser/std/MapSerializer;
.super Lcom/flurry/org/codehaus/jackson/map/ser/std/ContainerSerializerBase;
.source "MapSerializer.java"

# interfaces
.implements Lcom/flurry/org/codehaus/jackson/map/ResolvableSerializer;


# annotations
.annotation runtime Lcom/flurry/org/codehaus/jackson/map/annotate/JacksonStdImpl;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/flurry/org/codehaus/jackson/map/ser/std/ContainerSerializerBase",
        "<",
        "Ljava/util/Map",
        "<**>;>;",
        "Lcom/flurry/org/codehaus/jackson/map/ResolvableSerializer;"
    }
.end annotation


# static fields
.field protected static final UNSPECIFIED_TYPE:Lcom/flurry/org/codehaus/jackson/type/JavaType;


# instance fields
.field protected _dynamicValueSerializers:Lcom/flurry/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;

.field protected final _ignoredEntries:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected _keySerializer:Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected final _keyType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

.field protected final _property:Lcom/flurry/org/codehaus/jackson/map/BeanProperty;

.field protected _valueSerializer:Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected final _valueType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

.field protected final _valueTypeIsStatic:Z

.field protected final _valueTypeSerializer:Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    invoke-static {}, Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;->unknownType()Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v0

    sput-object v0, Lcom/flurry/org/codehaus/jackson/map/ser/std/MapSerializer;->UNSPECIFIED_TYPE:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    return-void
.end method

.method protected constructor <init>()V
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 88
    move-object v1, v2

    check-cast v1, Ljava/util/HashSet;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v3, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    move-object v8, v2

    invoke-direct/range {v0 .. v8}, Lcom/flurry/org/codehaus/jackson/map/ser/std/MapSerializer;-><init>(Ljava/util/HashSet;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/type/JavaType;ZLcom/flurry/org/codehaus/jackson/map/TypeSerializer;Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)V

    .line 89
    return-void
.end method

.method protected constructor <init>(Ljava/util/HashSet;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/type/JavaType;ZLcom/flurry/org/codehaus/jackson/map/TypeSerializer;Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)V
    .locals 2
    .param p2, "keyType"    # Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .param p3, "valueType"    # Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .param p4, "valueTypeIsStatic"    # Z
    .param p5, "vts"    # Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;
    .param p8, "property"    # Lcom/flurry/org/codehaus/jackson/map/BeanProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/flurry/org/codehaus/jackson/type/JavaType;",
            "Lcom/flurry/org/codehaus/jackson/type/JavaType;",
            "Z",
            "Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;",
            "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/flurry/org/codehaus/jackson/map/BeanProperty;",
            ")V"
        }
    .end annotation

    .prologue
    .line 97
    .local p1, "ignoredEntries":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .local p6, "keySerializer":Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    .local p7, "valueSerializer":Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    const-class v0, Ljava/util/Map;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/flurry/org/codehaus/jackson/map/ser/std/ContainerSerializerBase;-><init>(Ljava/lang/Class;Z)V

    .line 98
    iput-object p8, p0, Lcom/flurry/org/codehaus/jackson/map/ser/std/MapSerializer;->_property:Lcom/flurry/org/codehaus/jackson/map/BeanProperty;

    .line 99
    iput-object p1, p0, Lcom/flurry/org/codehaus/jackson/map/ser/std/MapSerializer;->_ignoredEntries:Ljava/util/HashSet;

    .line 100
    iput-object p2, p0, Lcom/flurry/org/codehaus/jackson/map/ser/std/MapSerializer;->_keyType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    .line 101
    iput-object p3, p0, Lcom/flurry/org/codehaus/jackson/map/ser/std/MapSerializer;->_valueType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    .line 102
    iput-boolean p4, p0, Lcom/flurry/org/codehaus/jackson/map/ser/std/MapSerializer;->_valueTypeIsStatic:Z

    .line 103
    iput-object p5, p0, Lcom/flurry/org/codehaus/jackson/map/ser/std/MapSerializer;->_valueTypeSerializer:Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;

    .line 104
    iput-object p6, p0, Lcom/flurry/org/codehaus/jackson/map/ser/std/MapSerializer;->_keySerializer:Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;

    .line 105
    iput-object p7, p0, Lcom/flurry/org/codehaus/jackson/map/ser/std/MapSerializer;->_valueSerializer:Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;

    .line 106
    invoke-static {}, Lcom/flurry/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;->emptyMap()Lcom/flurry/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ser/std/MapSerializer;->_dynamicValueSerializers:Lcom/flurry/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;

    .line 107
    return-void
.end method

.method public static construct([Ljava/lang/String;Lcom/flurry/org/codehaus/jackson/type/JavaType;ZLcom/flurry/org/codehaus/jackson/map/TypeSerializer;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)Lcom/flurry/org/codehaus/jackson/map/ser/std/MapSerializer;
    .locals 7
    .param p0, "ignoredList"    # [Ljava/lang/String;
    .param p1, "mapType"    # Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .param p2, "staticValueType"    # Z
    .param p3, "vts"    # Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;
    .param p4, "property"    # Lcom/flurry/org/codehaus/jackson/map/BeanProperty;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 136
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    invoke-static/range {v0 .. v6}, Lcom/flurry/org/codehaus/jackson/map/ser/std/MapSerializer;->construct([Ljava/lang/String;Lcom/flurry/org/codehaus/jackson/type/JavaType;ZLcom/flurry/org/codehaus/jackson/map/TypeSerializer;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;)Lcom/flurry/org/codehaus/jackson/map/ser/std/MapSerializer;

    move-result-object v0

    return-object v0
.end method

.method public static construct([Ljava/lang/String;Lcom/flurry/org/codehaus/jackson/type/JavaType;ZLcom/flurry/org/codehaus/jackson/map/TypeSerializer;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;)Lcom/flurry/org/codehaus/jackson/map/ser/std/MapSerializer;
    .locals 9
    .param p0, "ignoredList"    # [Ljava/lang/String;
    .param p1, "mapType"    # Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .param p2, "staticValueType"    # Z
    .param p3, "vts"    # Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;
    .param p4, "property"    # Lcom/flurry/org/codehaus/jackson/map/BeanProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Lcom/flurry/org/codehaus/jackson/type/JavaType;",
            "Z",
            "Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;",
            "Lcom/flurry/org/codehaus/jackson/map/BeanProperty;",
            "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/flurry/org/codehaus/jackson/map/ser/std/MapSerializer;"
        }
    .end annotation

    .prologue
    .line 143
    .local p5, "keySerializer":Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    .local p6, "valueSerializer":Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    invoke-static {p0}, Lcom/flurry/org/codehaus/jackson/map/ser/std/MapSerializer;->toSet([Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object v1

    .line 146
    .local v1, "ignoredEntries":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-nez p1, :cond_1

    .line 147
    sget-object v3, Lcom/flurry/org/codehaus/jackson/map/ser/std/MapSerializer;->UNSPECIFIED_TYPE:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    .local v3, "valueType":Lcom/flurry/org/codehaus/jackson/type/JavaType;
    move-object v2, v3

    .line 153
    .local v2, "keyType":Lcom/flurry/org/codehaus/jackson/type/JavaType;
    :goto_0
    if-nez p2, :cond_0

    .line 154
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->isFinal()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p2, 0x1

    .line 156
    :cond_0
    :goto_1
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/ser/std/MapSerializer;

    move v4, p2

    move-object v5, p3

    move-object v6, p5

    move-object v7, p6

    move-object v8, p4

    invoke-direct/range {v0 .. v8}, Lcom/flurry/org/codehaus/jackson/map/ser/std/MapSerializer;-><init>(Ljava/util/HashSet;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/type/JavaType;ZLcom/flurry/org/codehaus/jackson/map/TypeSerializer;Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)V

    return-object v0

    .line 149
    .end local v2    # "keyType":Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .end local v3    # "valueType":Lcom/flurry/org/codehaus/jackson/type/JavaType;
    :cond_1
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->getKeyType()Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v2

    .line 150
    .restart local v2    # "keyType":Lcom/flurry/org/codehaus/jackson/type/JavaType;
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->getContentType()Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v3

    .restart local v3    # "valueType":Lcom/flurry/org/codehaus/jackson/type/JavaType;
    goto :goto_0

    .line 154
    :cond_2
    const/4 p2, 0x0

    goto :goto_1
.end method

.method private static toSet([Ljava/lang/String;)Ljava/util/HashSet;
    .locals 6
    .param p0, "ignoredEntries"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 161
    if-eqz p0, :cond_0

    array-length v5, p0

    if-nez v5, :cond_2

    .line 162
    :cond_0
    const/4 v4, 0x0

    .line 168
    :cond_1
    return-object v4

    .line 164
    :cond_2
    new-instance v4, Ljava/util/HashSet;

    array-length v5, p0

    invoke-direct {v4, v5}, Ljava/util/HashSet;-><init>(I)V

    .line 165
    .local v4, "result":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object v0, p0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 166
    .local v3, "prop":Ljava/lang/String;
    invoke-virtual {v4, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 165
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected final _findAndAddDynamic(Lcom/flurry/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;)Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;
    .locals 2
    .param p1, "map"    # Lcom/flurry/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;
    .param p2, "type"    # Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .param p3, "provider"    # Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;",
            "Lcom/flurry/org/codehaus/jackson/type/JavaType;",
            "Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;",
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
    .line 414
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/ser/std/MapSerializer;->_property:Lcom/flurry/org/codehaus/jackson/map/BeanProperty;

    invoke-virtual {p1, p2, p3, v1}, Lcom/flurry/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;->findAndAddSerializer(Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)Lcom/flurry/org/codehaus/jackson/map/ser/impl/PropertySerializerMap$SerializerAndMapResult;

    move-result-object v0

    .line 415
    .local v0, "result":Lcom/flurry/org/codehaus/jackson/map/ser/impl/PropertySerializerMap$SerializerAndMapResult;
    iget-object v1, v0, Lcom/flurry/org/codehaus/jackson/map/ser/impl/PropertySerializerMap$SerializerAndMapResult;->map:Lcom/flurry/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;

    if-eq p1, v1, :cond_0

    .line 416
    iget-object v1, v0, Lcom/flurry/org/codehaus/jackson/map/ser/impl/PropertySerializerMap$SerializerAndMapResult;->map:Lcom/flurry/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;

    iput-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/ser/std/MapSerializer;->_dynamicValueSerializers:Lcom/flurry/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;

    .line 418
    :cond_0
    iget-object v1, v0, Lcom/flurry/org/codehaus/jackson/map/ser/impl/PropertySerializerMap$SerializerAndMapResult;->serializer:Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;

    return-object v1
.end method

.method protected final _findAndAddDynamic(Lcom/flurry/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;Ljava/lang/Class;Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;)Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;
    .locals 2
    .param p1, "map"    # Lcom/flurry/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;
    .param p3, "provider"    # Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;",
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
    .line 403
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/ser/std/MapSerializer;->_property:Lcom/flurry/org/codehaus/jackson/map/BeanProperty;

    invoke-virtual {p1, p2, p3, v1}, Lcom/flurry/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;->findAndAddSerializer(Ljava/lang/Class;Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)Lcom/flurry/org/codehaus/jackson/map/ser/impl/PropertySerializerMap$SerializerAndMapResult;

    move-result-object v0

    .line 405
    .local v0, "result":Lcom/flurry/org/codehaus/jackson/map/ser/impl/PropertySerializerMap$SerializerAndMapResult;
    iget-object v1, v0, Lcom/flurry/org/codehaus/jackson/map/ser/impl/PropertySerializerMap$SerializerAndMapResult;->map:Lcom/flurry/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;

    if-eq p1, v1, :cond_0

    .line 406
    iget-object v1, v0, Lcom/flurry/org/codehaus/jackson/map/ser/impl/PropertySerializerMap$SerializerAndMapResult;->map:Lcom/flurry/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;

    iput-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/ser/std/MapSerializer;->_dynamicValueSerializers:Lcom/flurry/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;

    .line 408
    :cond_0
    iget-object v1, v0, Lcom/flurry/org/codehaus/jackson/map/ser/impl/PropertySerializerMap$SerializerAndMapResult;->serializer:Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;

    return-object v1
.end method

.method public _withValueTypeSerializer(Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;)Lcom/flurry/org/codehaus/jackson/map/ser/std/ContainerSerializerBase;
    .locals 9
    .param p1, "vts"    # Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;",
            ")",
            "Lcom/flurry/org/codehaus/jackson/map/ser/std/ContainerSerializerBase",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 112
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/ser/std/MapSerializer;

    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/ser/std/MapSerializer;->_ignoredEntries:Ljava/util/HashSet;

    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/ser/std/MapSerializer;->_keyType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/map/ser/std/MapSerializer;->_valueType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    iget-boolean v4, p0, Lcom/flurry/org/codehaus/jackson/map/ser/std/MapSerializer;->_valueTypeIsStatic:Z

    iget-object v6, p0, Lcom/flurry/org/codehaus/jackson/map/ser/std/MapSerializer;->_keySerializer:Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;

    iget-object v7, p0, Lcom/flurry/org/codehaus/jackson/map/ser/std/MapSerializer;->_valueSerializer:Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;

    iget-object v8, p0, Lcom/flurry/org/codehaus/jackson/map/ser/std/MapSerializer;->_property:Lcom/flurry/org/codehaus/jackson/map/BeanProperty;

    move-object v5, p1

    invoke-direct/range {v0 .. v8}, Lcom/flurry/org/codehaus/jackson/map/ser/std/MapSerializer;-><init>(Ljava/util/HashSet;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/type/JavaType;ZLcom/flurry/org/codehaus/jackson/map/TypeSerializer;Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)V

    .line 114
    .local v0, "ms":Lcom/flurry/org/codehaus/jackson/map/ser/std/MapSerializer;
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/ser/std/MapSerializer;->_valueSerializer:Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;

    if-eqz v1, :cond_0

    .line 115
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/ser/std/MapSerializer;->_valueSerializer:Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;

    iput-object v1, v0, Lcom/flurry/org/codehaus/jackson/map/ser/std/MapSerializer;->_valueSerializer:Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;

    .line 117
    :cond_0
    return-object v0
.end method

.method public getSchema(Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;Ljava/lang/reflect/Type;)Lcom/flurry/org/codehaus/jackson/JsonNode;
    .locals 3
    .param p1, "provider"    # Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;
    .param p2, "typeHint"    # Ljava/lang/reflect/Type;

    .prologue
    .line 365
    const-string v1, "object"

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/flurry/org/codehaus/jackson/map/ser/std/MapSerializer;->createSchemaNode(Ljava/lang/String;Z)Lcom/flurry/org/codehaus/jackson/node/ObjectNode;

    move-result-object v0

    .line 368
    .local v0, "o":Lcom/flurry/org/codehaus/jackson/node/ObjectNode;
    return-object v0
.end method

.method public resolve(Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;)V
    .locals 2
    .param p1, "provider"    # Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 379
    iget-boolean v0, p0, Lcom/flurry/org/codehaus/jackson/map/ser/std/MapSerializer;->_valueTypeIsStatic:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ser/std/MapSerializer;->_valueSerializer:Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;

    if-nez v0, :cond_0

    .line 380
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ser/std/MapSerializer;->_valueType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/ser/std/MapSerializer;->_property:Lcom/flurry/org/codehaus/jackson/map/BeanProperty;

    invoke-virtual {p1, v0, v1}, Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;->findValueSerializer(Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ser/std/MapSerializer;->_valueSerializer:Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;

    .line 389
    :cond_0
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ser/std/MapSerializer;->_keySerializer:Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;

    if-nez v0, :cond_1

    .line 390
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ser/std/MapSerializer;->_keyType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/ser/std/MapSerializer;->_property:Lcom/flurry/org/codehaus/jackson/map/BeanProperty;

    invoke-virtual {p1, v0, v1}, Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;->findKeySerializer(Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ser/std/MapSerializer;->_keySerializer:Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;

    .line 392
    :cond_1
    return-void
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Lcom/flurry/org/codehaus/jackson/JsonGenerator;Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Lcom/flurry/org/codehaus/jackson/JsonGenerator;
    .param p3, "x2"    # Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 23
    check-cast p1, Ljava/util/Map;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Lcom/flurry/org/codehaus/jackson/map/ser/std/MapSerializer;->serialize(Ljava/util/Map;Lcom/flurry/org/codehaus/jackson/JsonGenerator;Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;)V

    return-void
.end method

.method public serialize(Ljava/util/Map;Lcom/flurry/org/codehaus/jackson/JsonGenerator;Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;)V
    .locals 1
    .param p2, "jgen"    # Lcom/flurry/org/codehaus/jackson/JsonGenerator;
    .param p3, "provider"    # Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<**>;",
            "Lcom/flurry/org/codehaus/jackson/JsonGenerator;",
            "Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 181
    .local p1, "value":Ljava/util/Map;, "Ljava/util/Map<**>;"
    invoke-virtual {p2}, Lcom/flurry/org/codehaus/jackson/JsonGenerator;->writeStartObject()V

    .line 182
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ser/std/MapSerializer;->_valueSerializer:Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;

    if-eqz v0, :cond_1

    .line 184
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ser/std/MapSerializer;->_valueSerializer:Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/flurry/org/codehaus/jackson/map/ser/std/MapSerializer;->serializeFieldsUsing(Ljava/util/Map;Lcom/flurry/org/codehaus/jackson/JsonGenerator;Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;)V

    .line 189
    :cond_0
    :goto_0
    invoke-virtual {p2}, Lcom/flurry/org/codehaus/jackson/JsonGenerator;->writeEndObject()V

    .line 190
    return-void

    .line 186
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/flurry/org/codehaus/jackson/map/ser/std/MapSerializer;->serializeFields(Ljava/util/Map;Lcom/flurry/org/codehaus/jackson/JsonGenerator;Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;)V

    goto :goto_0
.end method

.method public serializeFields(Ljava/util/Map;Lcom/flurry/org/codehaus/jackson/JsonGenerator;Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;)V
    .locals 17
    .param p2, "jgen"    # Lcom/flurry/org/codehaus/jackson/JsonGenerator;
    .param p3, "provider"    # Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<**>;",
            "Lcom/flurry/org/codehaus/jackson/JsonGenerator;",
            "Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 221
    .local p1, "value":Ljava/util/Map;, "Ljava/util/Map<**>;"
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/flurry/org/codehaus/jackson/map/ser/std/MapSerializer;->_valueTypeSerializer:Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;

    if-eqz v15, :cond_1

    .line 222
    invoke-virtual/range {p0 .. p3}, Lcom/flurry/org/codehaus/jackson/map/ser/std/MapSerializer;->serializeTypedFields(Ljava/util/Map;Lcom/flurry/org/codehaus/jackson/JsonGenerator;Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;)V

    .line 270
    :cond_0
    return-void

    .line 225
    :cond_1
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/flurry/org/codehaus/jackson/map/ser/std/MapSerializer;->_keySerializer:Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;

    .line 227
    .local v10, "keySerializer":Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/flurry/org/codehaus/jackson/map/ser/std/MapSerializer;->_ignoredEntries:Ljava/util/HashSet;

    .line 228
    .local v7, "ignored":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    sget-object v15, Lcom/flurry/org/codehaus/jackson/map/SerializationConfig$Feature;->WRITE_NULL_MAP_VALUES:Lcom/flurry/org/codehaus/jackson/map/SerializationConfig$Feature;

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;->isEnabled(Lcom/flurry/org/codehaus/jackson/map/SerializationConfig$Feature;)Z

    move-result v15

    if-nez v15, :cond_3

    const/4 v13, 0x1

    .line 230
    .local v13, "skipNulls":Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/flurry/org/codehaus/jackson/map/ser/std/MapSerializer;->_dynamicValueSerializers:Lcom/flurry/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;

    .line 232
    .local v12, "serializers":Lcom/flurry/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 233
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    .line 235
    .local v14, "valueElem":Ljava/lang/Object;
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    .line 236
    .local v9, "keyElem":Ljava/lang/Object;
    if-nez v9, :cond_4

    .line 237
    invoke-virtual/range {p3 .. p3}, Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;->getNullKeySerializer()Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;

    move-result-object v15

    const/16 v16, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v15, v0, v1, v2}, Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;->serialize(Ljava/lang/Object;Lcom/flurry/org/codehaus/jackson/JsonGenerator;Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;)V

    .line 247
    :goto_2
    if-nez v14, :cond_7

    .line 248
    move-object/from16 v0, p3

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;->defaultSerializeNull(Lcom/flurry/org/codehaus/jackson/JsonGenerator;)V

    goto :goto_1

    .line 228
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v9    # "keyElem":Ljava/lang/Object;
    .end local v12    # "serializers":Lcom/flurry/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;
    .end local v13    # "skipNulls":Z
    .end local v14    # "valueElem":Ljava/lang/Object;
    :cond_3
    const/4 v13, 0x0

    goto :goto_0

    .line 240
    .restart local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    .restart local v6    # "i$":Ljava/util/Iterator;
    .restart local v9    # "keyElem":Ljava/lang/Object;
    .restart local v12    # "serializers":Lcom/flurry/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;
    .restart local v13    # "skipNulls":Z
    .restart local v14    # "valueElem":Ljava/lang/Object;
    :cond_4
    if-eqz v13, :cond_5

    if-eqz v14, :cond_2

    .line 242
    :cond_5
    if-eqz v7, :cond_6

    invoke-virtual {v7, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_2

    .line 243
    :cond_6
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v10, v9, v0, v1}, Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;->serialize(Ljava/lang/Object;Lcom/flurry/org/codehaus/jackson/JsonGenerator;Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;)V

    goto :goto_2

    .line 250
    :cond_7
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 251
    .local v3, "cc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v12, v3}, Lcom/flurry/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;->serializerFor(Ljava/lang/Class;)Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;

    move-result-object v11

    .line 252
    .local v11, "serializer":Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    if-nez v11, :cond_8

    .line 253
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/flurry/org/codehaus/jackson/map/ser/std/MapSerializer;->_valueType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    invoke-virtual {v15}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->hasGenericTypes()Z

    move-result v15

    if-eqz v15, :cond_9

    .line 254
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/flurry/org/codehaus/jackson/map/ser/std/MapSerializer;->_valueType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-object/from16 v0, p3

    invoke-virtual {v0, v15, v3}, Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;->constructSpecializedType(Lcom/flurry/org/codehaus/jackson/type/JavaType;Ljava/lang/Class;)Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v15

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v12, v15, v1}, Lcom/flurry/org/codehaus/jackson/map/ser/std/MapSerializer;->_findAndAddDynamic(Lcom/flurry/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;)Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;

    move-result-object v11

    .line 259
    :goto_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/flurry/org/codehaus/jackson/map/ser/std/MapSerializer;->_dynamicValueSerializers:Lcom/flurry/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;

    .line 262
    :cond_8
    :try_start_0
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v11, v14, v0, v1}, Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;->serialize(Ljava/lang/Object;Lcom/flurry/org/codehaus/jackson/JsonGenerator;Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 263
    :catch_0
    move-exception v4

    .line 265
    .local v4, "e":Ljava/lang/Exception;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, ""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 266
    .local v8, "keyDesc":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v4, v2, v8}, Lcom/flurry/org/codehaus/jackson/map/ser/std/MapSerializer;->wrapAndThrow(Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 257
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v8    # "keyDesc":Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v12, v3, v1}, Lcom/flurry/org/codehaus/jackson/map/ser/std/MapSerializer;->_findAndAddDynamic(Lcom/flurry/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;Ljava/lang/Class;Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;)Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;

    move-result-object v11

    goto :goto_3
.end method

.method protected serializeFieldsUsing(Ljava/util/Map;Lcom/flurry/org/codehaus/jackson/JsonGenerator;Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;)V
    .locals 15
    .param p2, "jgen"    # Lcom/flurry/org/codehaus/jackson/JsonGenerator;
    .param p3, "provider"    # Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<**>;",
            "Lcom/flurry/org/codehaus/jackson/JsonGenerator;",
            "Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;",
            "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 281
    .local p1, "value":Ljava/util/Map;, "Ljava/util/Map<**>;"
    .local p4, "ser":Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    iget-object v9, p0, Lcom/flurry/org/codehaus/jackson/map/ser/std/MapSerializer;->_keySerializer:Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;

    .line 282
    .local v9, "keySerializer":Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    iget-object v6, p0, Lcom/flurry/org/codehaus/jackson/map/ser/std/MapSerializer;->_ignoredEntries:Ljava/util/HashSet;

    .line 283
    .local v6, "ignored":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v11, p0, Lcom/flurry/org/codehaus/jackson/map/ser/std/MapSerializer;->_valueTypeSerializer:Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;

    .line 284
    .local v11, "typeSer":Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;
    sget-object v13, Lcom/flurry/org/codehaus/jackson/map/SerializationConfig$Feature;->WRITE_NULL_MAP_VALUES:Lcom/flurry/org/codehaus/jackson/map/SerializationConfig$Feature;

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;->isEnabled(Lcom/flurry/org/codehaus/jackson/map/SerializationConfig$Feature;)Z

    move-result v13

    if-nez v13, :cond_1

    const/4 v10, 0x1

    .line 286
    .local v10, "skipNulls":Z
    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 287
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    .line 288
    .local v12, "valueElem":Ljava/lang/Object;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    .line 289
    .local v8, "keyElem":Ljava/lang/Object;
    if-nez v8, :cond_2

    .line 290
    invoke-virtual/range {p3 .. p3}, Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;->getNullKeySerializer()Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;

    move-result-object v13

    const/4 v14, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v13, v14, v0, v1}, Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;->serialize(Ljava/lang/Object;Lcom/flurry/org/codehaus/jackson/JsonGenerator;Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;)V

    .line 297
    :goto_2
    if-nez v12, :cond_5

    .line 298
    move-object/from16 v0, p3

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;->defaultSerializeNull(Lcom/flurry/org/codehaus/jackson/JsonGenerator;)V

    goto :goto_1

    .line 284
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v8    # "keyElem":Ljava/lang/Object;
    .end local v10    # "skipNulls":Z
    .end local v12    # "valueElem":Ljava/lang/Object;
    :cond_1
    const/4 v10, 0x0

    goto :goto_0

    .line 293
    .restart local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    .restart local v5    # "i$":Ljava/util/Iterator;
    .restart local v8    # "keyElem":Ljava/lang/Object;
    .restart local v10    # "skipNulls":Z
    .restart local v12    # "valueElem":Ljava/lang/Object;
    :cond_2
    if-eqz v10, :cond_3

    if-eqz v12, :cond_0

    .line 294
    :cond_3
    if-eqz v6, :cond_4

    invoke-virtual {v6, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 295
    :cond_4
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v9, v8, v0, v1}, Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;->serialize(Ljava/lang/Object;Lcom/flurry/org/codehaus/jackson/JsonGenerator;Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;)V

    goto :goto_2

    .line 301
    :cond_5
    if-nez v11, :cond_6

    .line 302
    :try_start_0
    move-object/from16 v0, p4

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v0, v12, v1, v2}, Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;->serialize(Ljava/lang/Object;Lcom/flurry/org/codehaus/jackson/JsonGenerator;Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 306
    :catch_0
    move-exception v3

    .line 308
    .local v3, "e":Ljava/lang/Exception;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, ""

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 309
    .local v7, "keyDesc":Ljava/lang/String;
    move-object/from16 v0, p3

    move-object/from16 v1, p1

    invoke-virtual {p0, v0, v3, v1, v7}, Lcom/flurry/org/codehaus/jackson/map/ser/std/MapSerializer;->wrapAndThrow(Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 304
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v7    # "keyDesc":Ljava/lang/String;
    :cond_6
    :try_start_1
    move-object/from16 v0, p4

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v0, v12, v1, v2, v11}, Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;->serializeWithType(Ljava/lang/Object;Lcom/flurry/org/codehaus/jackson/JsonGenerator;Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 313
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    .end local v8    # "keyElem":Ljava/lang/Object;
    .end local v12    # "valueElem":Ljava/lang/Object;
    :cond_7
    return-void
.end method

.method protected serializeTypedFields(Ljava/util/Map;Lcom/flurry/org/codehaus/jackson/JsonGenerator;Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;)V
    .locals 19
    .param p2, "jgen"    # Lcom/flurry/org/codehaus/jackson/JsonGenerator;
    .param p3, "provider"    # Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<**>;",
            "Lcom/flurry/org/codehaus/jackson/JsonGenerator;",
            "Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 318
    .local p1, "value":Ljava/util/Map;, "Ljava/util/Map<**>;"
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/flurry/org/codehaus/jackson/map/ser/std/MapSerializer;->_keySerializer:Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;

    .line 319
    .local v12, "keySerializer":Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    const/4 v14, 0x0

    .line 320
    .local v14, "prevValueSerializer":Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    const/4 v13, 0x0

    .line 321
    .local v13, "prevValueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/flurry/org/codehaus/jackson/map/ser/std/MapSerializer;->_ignoredEntries:Ljava/util/HashSet;

    .line 322
    .local v9, "ignored":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    sget-object v17, Lcom/flurry/org/codehaus/jackson/map/SerializationConfig$Feature;->WRITE_NULL_MAP_VALUES:Lcom/flurry/org/codehaus/jackson/map/SerializationConfig$Feature;

    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;->isEnabled(Lcom/flurry/org/codehaus/jackson/map/SerializationConfig$Feature;)Z

    move-result v17

    if-nez v17, :cond_1

    const/4 v15, 0x1

    .line 324
    .local v15, "skipNulls":Z
    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 325
    .local v7, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v16

    .line 327
    .local v16, "valueElem":Ljava/lang/Object;
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    .line 328
    .local v11, "keyElem":Ljava/lang/Object;
    if-nez v11, :cond_2

    .line 329
    invoke-virtual/range {p3 .. p3}, Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;->getNullKeySerializer()Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;

    move-result-object v17

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;->serialize(Ljava/lang/Object;Lcom/flurry/org/codehaus/jackson/JsonGenerator;Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;)V

    .line 339
    :goto_2
    if-nez v16, :cond_5

    .line 340
    move-object/from16 v0, p3

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;->defaultSerializeNull(Lcom/flurry/org/codehaus/jackson/JsonGenerator;)V

    goto :goto_1

    .line 322
    .end local v7    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v11    # "keyElem":Ljava/lang/Object;
    .end local v15    # "skipNulls":Z
    .end local v16    # "valueElem":Ljava/lang/Object;
    :cond_1
    const/4 v15, 0x0

    goto :goto_0

    .line 332
    .restart local v7    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    .restart local v8    # "i$":Ljava/util/Iterator;
    .restart local v11    # "keyElem":Ljava/lang/Object;
    .restart local v15    # "skipNulls":Z
    .restart local v16    # "valueElem":Ljava/lang/Object;
    :cond_2
    if-eqz v15, :cond_3

    if-eqz v16, :cond_0

    .line 334
    :cond_3
    if-eqz v9, :cond_4

    invoke-virtual {v9, v11}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_0

    .line 335
    :cond_4
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v12, v11, v0, v1}, Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;->serialize(Ljava/lang/Object;Lcom/flurry/org/codehaus/jackson/JsonGenerator;Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;)V

    goto :goto_2

    .line 342
    :cond_5
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    .line 344
    .local v4, "cc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-ne v4, v13, :cond_6

    .line 345
    move-object v5, v14

    .line 352
    .local v5, "currSerializer":Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    :goto_3
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flurry/org/codehaus/jackson/map/ser/std/MapSerializer;->_valueTypeSerializer:Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, v17

    invoke-virtual {v5, v0, v1, v2, v3}, Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;->serializeWithType(Ljava/lang/Object;Lcom/flurry/org/codehaus/jackson/JsonGenerator;Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 353
    :catch_0
    move-exception v6

    .line 355
    .local v6, "e":Ljava/lang/Exception;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, ""

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 356
    .local v10, "keyDesc":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v6, v2, v10}, Lcom/flurry/org/codehaus/jackson/map/ser/std/MapSerializer;->wrapAndThrow(Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 347
    .end local v5    # "currSerializer":Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v10    # "keyDesc":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flurry/org/codehaus/jackson/map/ser/std/MapSerializer;->_property:Lcom/flurry/org/codehaus/jackson/map/BeanProperty;

    move-object/from16 v17, v0

    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v4, v1}, Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;->findValueSerializer(Ljava/lang/Class;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;

    move-result-object v5

    .line 348
    .restart local v5    # "currSerializer":Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    move-object v14, v5

    .line 349
    move-object v13, v4

    goto :goto_3

    .line 360
    .end local v4    # "cc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "currSerializer":Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    .end local v7    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    .end local v11    # "keyElem":Ljava/lang/Object;
    .end local v16    # "valueElem":Ljava/lang/Object;
    :cond_7
    return-void
.end method

.method public bridge synthetic serializeWithType(Ljava/lang/Object;Lcom/flurry/org/codehaus/jackson/JsonGenerator;Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Lcom/flurry/org/codehaus/jackson/JsonGenerator;
    .param p3, "x2"    # Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;
    .param p4, "x3"    # Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 23
    check-cast p1, Ljava/util/Map;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/flurry/org/codehaus/jackson/map/ser/std/MapSerializer;->serializeWithType(Ljava/util/Map;Lcom/flurry/org/codehaus/jackson/JsonGenerator;Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;)V

    return-void
.end method

.method public serializeWithType(Ljava/util/Map;Lcom/flurry/org/codehaus/jackson/JsonGenerator;Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;)V
    .locals 1
    .param p2, "jgen"    # Lcom/flurry/org/codehaus/jackson/JsonGenerator;
    .param p3, "provider"    # Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;
    .param p4, "typeSer"    # Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<**>;",
            "Lcom/flurry/org/codehaus/jackson/JsonGenerator;",
            "Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;",
            "Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 197
    .local p1, "value":Ljava/util/Map;, "Ljava/util/Map<**>;"
    invoke-virtual {p4, p1, p2}, Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;->writeTypePrefixForObject(Ljava/lang/Object;Lcom/flurry/org/codehaus/jackson/JsonGenerator;)V

    .line 198
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ser/std/MapSerializer;->_valueSerializer:Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;

    if-eqz v0, :cond_1

    .line 200
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ser/std/MapSerializer;->_valueSerializer:Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/flurry/org/codehaus/jackson/map/ser/std/MapSerializer;->serializeFieldsUsing(Ljava/util/Map;Lcom/flurry/org/codehaus/jackson/JsonGenerator;Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;)V

    .line 205
    :cond_0
    :goto_0
    invoke-virtual {p4, p1, p2}, Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;->writeTypeSuffixForObject(Ljava/lang/Object;Lcom/flurry/org/codehaus/jackson/JsonGenerator;)V

    .line 206
    return-void

    .line 202
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/flurry/org/codehaus/jackson/map/ser/std/MapSerializer;->serializeFields(Ljava/util/Map;Lcom/flurry/org/codehaus/jackson/JsonGenerator;Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;)V

    goto :goto_0
.end method
