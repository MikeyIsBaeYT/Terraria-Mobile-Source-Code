.class public abstract Lcom/flurry/org/codehaus/jackson/map/ser/std/BeanSerializerBase;
.super Lcom/flurry/org/codehaus/jackson/map/ser/std/SerializerBase;
.source "BeanSerializerBase.java"

# interfaces
.implements Lcom/flurry/org/codehaus/jackson/map/ResolvableSerializer;
.implements Lcom/flurry/org/codehaus/jackson/schema/SchemaAware;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/flurry/org/codehaus/jackson/map/ser/std/SerializerBase",
        "<",
        "Ljava/lang/Object;",
        ">;",
        "Lcom/flurry/org/codehaus/jackson/map/ResolvableSerializer;",
        "Lcom/flurry/org/codehaus/jackson/schema/SchemaAware;"
    }
.end annotation


# static fields
.field protected static final NO_PROPS:[Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;


# instance fields
.field protected final _anyGetterWriter:Lcom/flurry/org/codehaus/jackson/map/ser/AnyGetterWriter;

.field protected final _filteredProps:[Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;

.field protected final _propertyFilterId:Ljava/lang/Object;

.field protected final _props:[Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;

    sput-object v0, Lcom/flurry/org/codehaus/jackson/map/ser/std/BeanSerializerBase;->NO_PROPS:[Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;

    return-void
.end method

.method protected constructor <init>(Lcom/flurry/org/codehaus/jackson/map/ser/std/BeanSerializerBase;)V
    .locals 6
    .param p1, "src"    # Lcom/flurry/org/codehaus/jackson/map/ser/std/BeanSerializerBase;

    .prologue
    .line 100
    iget-object v1, p1, Lcom/flurry/org/codehaus/jackson/map/ser/std/BeanSerializerBase;->_handledType:Ljava/lang/Class;

    iget-object v2, p1, Lcom/flurry/org/codehaus/jackson/map/ser/std/BeanSerializerBase;->_props:[Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;

    iget-object v3, p1, Lcom/flurry/org/codehaus/jackson/map/ser/std/BeanSerializerBase;->_filteredProps:[Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;

    iget-object v4, p1, Lcom/flurry/org/codehaus/jackson/map/ser/std/BeanSerializerBase;->_anyGetterWriter:Lcom/flurry/org/codehaus/jackson/map/ser/AnyGetterWriter;

    iget-object v5, p1, Lcom/flurry/org/codehaus/jackson/map/ser/std/BeanSerializerBase;->_propertyFilterId:Ljava/lang/Object;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/flurry/org/codehaus/jackson/map/ser/std/BeanSerializerBase;-><init>(Ljava/lang/Class;[Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;[Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;Lcom/flurry/org/codehaus/jackson/map/ser/AnyGetterWriter;Ljava/lang/Object;)V

    .line 102
    return-void
.end method

.method protected constructor <init>(Lcom/flurry/org/codehaus/jackson/type/JavaType;[Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;[Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;Lcom/flurry/org/codehaus/jackson/map/ser/AnyGetterWriter;Ljava/lang/Object;)V
    .locals 0
    .param p1, "type"    # Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .param p2, "properties"    # [Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;
    .param p3, "filteredProperties"    # [Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;
    .param p4, "anyGetterWriter"    # Lcom/flurry/org/codehaus/jackson/map/ser/AnyGetterWriter;
    .param p5, "filterId"    # Ljava/lang/Object;

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/flurry/org/codehaus/jackson/map/ser/std/SerializerBase;-><init>(Lcom/flurry/org/codehaus/jackson/type/JavaType;)V

    .line 76
    iput-object p2, p0, Lcom/flurry/org/codehaus/jackson/map/ser/std/BeanSerializerBase;->_props:[Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;

    .line 77
    iput-object p3, p0, Lcom/flurry/org/codehaus/jackson/map/ser/std/BeanSerializerBase;->_filteredProps:[Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;

    .line 78
    iput-object p4, p0, Lcom/flurry/org/codehaus/jackson/map/ser/std/BeanSerializerBase;->_anyGetterWriter:Lcom/flurry/org/codehaus/jackson/map/ser/AnyGetterWriter;

    .line 79
    iput-object p5, p0, Lcom/flurry/org/codehaus/jackson/map/ser/std/BeanSerializerBase;->_propertyFilterId:Ljava/lang/Object;

    .line 80
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;[Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;[Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;Lcom/flurry/org/codehaus/jackson/map/ser/AnyGetterWriter;Ljava/lang/Object;)V
    .locals 0
    .param p2, "properties"    # [Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;
    .param p3, "filteredProperties"    # [Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;
    .param p4, "anyGetterWriter"    # Lcom/flurry/org/codehaus/jackson/map/ser/AnyGetterWriter;
    .param p5, "filterId"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;[",
            "Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;",
            "[",
            "Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;",
            "Lcom/flurry/org/codehaus/jackson/map/ser/AnyGetterWriter;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 88
    .local p1, "rawType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, p1}, Lcom/flurry/org/codehaus/jackson/map/ser/std/SerializerBase;-><init>(Ljava/lang/Class;)V

    .line 89
    iput-object p2, p0, Lcom/flurry/org/codehaus/jackson/map/ser/std/BeanSerializerBase;->_props:[Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;

    .line 90
    iput-object p3, p0, Lcom/flurry/org/codehaus/jackson/map/ser/std/BeanSerializerBase;->_filteredProps:[Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;

    .line 91
    iput-object p4, p0, Lcom/flurry/org/codehaus/jackson/map/ser/std/BeanSerializerBase;->_anyGetterWriter:Lcom/flurry/org/codehaus/jackson/map/ser/AnyGetterWriter;

    .line 92
    iput-object p5, p0, Lcom/flurry/org/codehaus/jackson/map/ser/std/BeanSerializerBase;->_propertyFilterId:Ljava/lang/Object;

    .line 93
    return-void
.end method


# virtual methods
.method protected findFilter(Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;)Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyFilter;
    .locals 6
    .param p1, "provider"    # Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 229
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/ser/std/BeanSerializerBase;->_propertyFilterId:Ljava/lang/Object;

    .line 230
    .local v1, "filterId":Ljava/lang/Object;
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;->getFilterProvider()Lcom/flurry/org/codehaus/jackson/map/ser/FilterProvider;

    move-result-object v2

    .line 232
    .local v2, "filters":Lcom/flurry/org/codehaus/jackson/map/ser/FilterProvider;
    if-nez v2, :cond_0

    .line 233
    new-instance v3, Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can not resolve BeanPropertyFilter with id \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'; no FilterProvider configured"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 235
    :cond_0
    invoke-virtual {v2, v1}, Lcom/flurry/org/codehaus/jackson/map/ser/FilterProvider;->findFilter(Ljava/lang/Object;)Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyFilter;

    move-result-object v0

    .line 237
    .local v0, "filter":Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyFilter;
    return-object v0
.end method

.method public getSchema(Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;Ljava/lang/reflect/Type;)Lcom/flurry/org/codehaus/jackson/JsonNode;
    .locals 11
    .param p1, "provider"    # Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;
    .param p2, "typeHint"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 244
    const-string v9, "object"

    const/4 v10, 0x1

    invoke-virtual {p0, v9, v10}, Lcom/flurry/org/codehaus/jackson/map/ser/std/BeanSerializerBase;->createSchemaNode(Ljava/lang/String;Z)Lcom/flurry/org/codehaus/jackson/node/ObjectNode;

    move-result-object v2

    .line 247
    .local v2, "o":Lcom/flurry/org/codehaus/jackson/node/ObjectNode;
    invoke-virtual {v2}, Lcom/flurry/org/codehaus/jackson/node/ObjectNode;->objectNode()Lcom/flurry/org/codehaus/jackson/node/ObjectNode;

    move-result-object v5

    .line 248
    .local v5, "propertiesNode":Lcom/flurry/org/codehaus/jackson/node/ObjectNode;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v9, p0, Lcom/flurry/org/codehaus/jackson/map/ser/std/BeanSerializerBase;->_props:[Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;

    array-length v9, v9

    if-ge v1, v9, :cond_4

    .line 249
    iget-object v9, p0, Lcom/flurry/org/codehaus/jackson/map/ser/std/BeanSerializerBase;->_props:[Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;

    aget-object v3, v9, v1

    .line 250
    .local v3, "prop":Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;
    invoke-virtual {v3}, Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;->getSerializationType()Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v4

    .line 252
    .local v4, "propType":Lcom/flurry/org/codehaus/jackson/type/JavaType;
    if-nez v4, :cond_2

    invoke-virtual {v3}, Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;->getGenericPropertyType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 254
    .local v0, "hint":Ljava/lang/reflect/Type;
    :goto_1
    invoke-virtual {v3}, Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;->getSerializer()Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;

    move-result-object v7

    .line 255
    .local v7, "ser":Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    if-nez v7, :cond_1

    .line 256
    invoke-virtual {v3}, Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;->getRawSerializationType()Ljava/lang/Class;

    move-result-object v8

    .line 257
    .local v8, "serType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v8, :cond_0

    .line 258
    invoke-virtual {v3}, Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;->getPropertyType()Ljava/lang/Class;

    move-result-object v8

    .line 260
    :cond_0
    invoke-virtual {p1, v8, v3}, Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;->findValueSerializer(Ljava/lang/Class;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;

    move-result-object v7

    .line 262
    .end local v8    # "serType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    instance-of v9, v7, Lcom/flurry/org/codehaus/jackson/schema/SchemaAware;

    if-eqz v9, :cond_3

    check-cast v7, Lcom/flurry/org/codehaus/jackson/schema/SchemaAware;

    .end local v7    # "ser":Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    invoke-interface {v7, p1, v0}, Lcom/flurry/org/codehaus/jackson/schema/SchemaAware;->getSchema(Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;Ljava/lang/reflect/Type;)Lcom/flurry/org/codehaus/jackson/JsonNode;

    move-result-object v6

    .line 265
    .local v6, "schemaNode":Lcom/flurry/org/codehaus/jackson/JsonNode;
    :goto_2
    invoke-virtual {v3}, Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9, v6}, Lcom/flurry/org/codehaus/jackson/node/ObjectNode;->put(Ljava/lang/String;Lcom/flurry/org/codehaus/jackson/JsonNode;)Lcom/flurry/org/codehaus/jackson/JsonNode;

    .line 248
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 252
    .end local v0    # "hint":Ljava/lang/reflect/Type;
    .end local v6    # "schemaNode":Lcom/flurry/org/codehaus/jackson/JsonNode;
    :cond_2
    invoke-virtual {v4}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_1

    .line 262
    .restart local v0    # "hint":Ljava/lang/reflect/Type;
    .restart local v7    # "ser":Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    :cond_3
    invoke-static {}, Lcom/flurry/org/codehaus/jackson/schema/JsonSchema;->getDefaultSchemaNode()Lcom/flurry/org/codehaus/jackson/JsonNode;

    move-result-object v6

    goto :goto_2

    .line 267
    .end local v0    # "hint":Ljava/lang/reflect/Type;
    .end local v3    # "prop":Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;
    .end local v4    # "propType":Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .end local v7    # "ser":Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    :cond_4
    const-string v9, "properties"

    invoke-virtual {v2, v9, v5}, Lcom/flurry/org/codehaus/jackson/node/ObjectNode;->put(Ljava/lang/String;Lcom/flurry/org/codehaus/jackson/JsonNode;)Lcom/flurry/org/codehaus/jackson/JsonNode;

    .line 268
    return-object v2
.end method

.method public resolve(Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;)V
    .locals 11
    .param p1, "provider"    # Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 281
    iget-object v9, p0, Lcom/flurry/org/codehaus/jackson/map/ser/std/BeanSerializerBase;->_filteredProps:[Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;

    if-nez v9, :cond_1

    const/4 v0, 0x0

    .line 282
    .local v0, "filteredCount":I
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v9, p0, Lcom/flurry/org/codehaus/jackson/map/ser/std/BeanSerializerBase;->_props:[Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;

    array-length v2, v9

    .local v2, "len":I
    :goto_1
    if-ge v1, v2, :cond_6

    .line 283
    iget-object v9, p0, Lcom/flurry/org/codehaus/jackson/map/ser/std/BeanSerializerBase;->_props:[Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;

    aget-object v3, v9, v1

    .line 284
    .local v3, "prop":Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;
    invoke-virtual {v3}, Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;->hasSerializer()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 282
    :cond_0
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 281
    .end local v0    # "filteredCount":I
    .end local v1    # "i":I
    .end local v2    # "len":I
    .end local v3    # "prop":Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;
    :cond_1
    iget-object v9, p0, Lcom/flurry/org/codehaus/jackson/map/ser/std/BeanSerializerBase;->_filteredProps:[Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;

    array-length v0, v9

    goto :goto_0

    .line 288
    .restart local v0    # "filteredCount":I
    .restart local v1    # "i":I
    .restart local v2    # "len":I
    .restart local v3    # "prop":Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;
    :cond_2
    invoke-virtual {v3}, Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;->getSerializationType()Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v6

    .line 294
    .local v6, "type":Lcom/flurry/org/codehaus/jackson/type/JavaType;
    if-nez v6, :cond_4

    .line 295
    invoke-virtual {v3}, Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;->getGenericPropertyType()Ljava/lang/reflect/Type;

    move-result-object v9

    invoke-virtual {p1, v9}, Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;->constructType(Ljava/lang/reflect/Type;)Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v6

    .line 296
    invoke-virtual {v6}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->isFinal()Z

    move-result v9

    if-nez v9, :cond_4

    .line 301
    invoke-virtual {v6}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->isContainerType()Z

    move-result v9

    if-nez v9, :cond_3

    invoke-virtual {v6}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->containedTypeCount()I

    move-result v9

    if-lez v9, :cond_0

    .line 302
    :cond_3
    invoke-virtual {v3, v6}, Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;->setNonTrivialBaseType(Lcom/flurry/org/codehaus/jackson/type/JavaType;)V

    goto :goto_2

    .line 307
    :cond_4
    invoke-virtual {p1, v6, v3}, Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;->findValueSerializer(Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;

    move-result-object v4

    .line 311
    .local v4, "ser":Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    invoke-virtual {v6}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->isContainerType()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 312
    invoke-virtual {v6}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->getContentType()Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v9

    invoke-virtual {v9}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->getTypeHandler()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;

    .line 313
    .local v7, "typeSer":Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;
    if-eqz v7, :cond_5

    .line 315
    instance-of v9, v4, Lcom/flurry/org/codehaus/jackson/map/ser/std/ContainerSerializerBase;

    if-eqz v9, :cond_5

    .line 318
    check-cast v4, Lcom/flurry/org/codehaus/jackson/map/ser/std/ContainerSerializerBase;

    .end local v4    # "ser":Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    invoke-virtual {v4, v7}, Lcom/flurry/org/codehaus/jackson/map/ser/std/ContainerSerializerBase;->withValueTypeSerializer(Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;)Lcom/flurry/org/codehaus/jackson/map/ser/std/ContainerSerializerBase;

    move-result-object v5

    .line 319
    .local v5, "ser2":Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    move-object v4, v5

    .line 323
    .end local v5    # "ser2":Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    .end local v7    # "typeSer":Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;
    .restart local v4    # "ser":Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    :cond_5
    invoke-virtual {v3, v4}, Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;->withSerializer(Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;)Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;

    move-result-object v3

    .line 324
    iget-object v9, p0, Lcom/flurry/org/codehaus/jackson/map/ser/std/BeanSerializerBase;->_props:[Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;

    aput-object v3, v9, v1

    .line 326
    if-ge v1, v0, :cond_0

    .line 327
    iget-object v9, p0, Lcom/flurry/org/codehaus/jackson/map/ser/std/BeanSerializerBase;->_filteredProps:[Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;

    aget-object v8, v9, v1

    .line 328
    .local v8, "w2":Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;
    if-eqz v8, :cond_0

    .line 329
    iget-object v9, p0, Lcom/flurry/org/codehaus/jackson/map/ser/std/BeanSerializerBase;->_filteredProps:[Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;

    invoke-virtual {v8, v4}, Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;->withSerializer(Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;)Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;

    move-result-object v10

    aput-object v10, v9, v1

    goto :goto_2

    .line 335
    .end local v3    # "prop":Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;
    .end local v4    # "ser":Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    .end local v6    # "type":Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .end local v8    # "w2":Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;
    :cond_6
    iget-object v9, p0, Lcom/flurry/org/codehaus/jackson/map/ser/std/BeanSerializerBase;->_anyGetterWriter:Lcom/flurry/org/codehaus/jackson/map/ser/AnyGetterWriter;

    if-eqz v9, :cond_7

    .line 336
    iget-object v9, p0, Lcom/flurry/org/codehaus/jackson/map/ser/std/BeanSerializerBase;->_anyGetterWriter:Lcom/flurry/org/codehaus/jackson/map/ser/AnyGetterWriter;

    invoke-virtual {v9, p1}, Lcom/flurry/org/codehaus/jackson/map/ser/AnyGetterWriter;->resolve(Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;)V

    .line 338
    :cond_7
    return-void
.end method

.method public abstract serialize(Ljava/lang/Object;Lcom/flurry/org/codehaus/jackson/JsonGenerator;Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation
.end method

.method protected serializeFields(Ljava/lang/Object;Lcom/flurry/org/codehaus/jackson/JsonGenerator;Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;)V
    .locals 8
    .param p1, "bean"    # Ljava/lang/Object;
    .param p2, "jgen"    # Lcom/flurry/org/codehaus/jackson/JsonGenerator;
    .param p3, "provider"    # Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 140
    iget-object v7, p0, Lcom/flurry/org/codehaus/jackson/map/ser/std/BeanSerializerBase;->_filteredProps:[Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;

    if-eqz v7, :cond_1

    invoke-virtual {p3}, Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;->getSerializationView()Ljava/lang/Class;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 141
    iget-object v6, p0, Lcom/flurry/org/codehaus/jackson/map/ser/std/BeanSerializerBase;->_filteredProps:[Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;

    .line 145
    .local v6, "props":[Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;
    :goto_0
    const/4 v1, 0x0

    .line 147
    .local v1, "i":I
    :try_start_0
    array-length v2, v6

    .local v2, "len":I
    :goto_1
    if-ge v1, v2, :cond_2

    .line 148
    aget-object v5, v6, v1

    .line 149
    .local v5, "prop":Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;
    if-eqz v5, :cond_0

    .line 150
    invoke-virtual {v5, p1, p2, p3}, Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;->serializeAsField(Ljava/lang/Object;Lcom/flurry/org/codehaus/jackson/JsonGenerator;Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/StackOverflowError; {:try_start_0 .. :try_end_0} :catch_1

    .line 147
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 143
    .end local v1    # "i":I
    .end local v2    # "len":I
    .end local v5    # "prop":Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;
    .end local v6    # "props":[Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;
    :cond_1
    iget-object v6, p0, Lcom/flurry/org/codehaus/jackson/map/ser/std/BeanSerializerBase;->_props:[Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;

    .restart local v6    # "props":[Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;
    goto :goto_0

    .line 153
    .restart local v1    # "i":I
    .restart local v2    # "len":I
    :cond_2
    :try_start_1
    iget-object v7, p0, Lcom/flurry/org/codehaus/jackson/map/ser/std/BeanSerializerBase;->_anyGetterWriter:Lcom/flurry/org/codehaus/jackson/map/ser/AnyGetterWriter;

    if-eqz v7, :cond_3

    .line 154
    iget-object v7, p0, Lcom/flurry/org/codehaus/jackson/map/ser/std/BeanSerializerBase;->_anyGetterWriter:Lcom/flurry/org/codehaus/jackson/map/ser/AnyGetterWriter;

    invoke-virtual {v7, p1, p2, p3}, Lcom/flurry/org/codehaus/jackson/map/ser/AnyGetterWriter;->getAndSerialize(Ljava/lang/Object;Lcom/flurry/org/codehaus/jackson/JsonGenerator;Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/StackOverflowError; {:try_start_1 .. :try_end_1} :catch_1

    .line 169
    .end local v2    # "len":I
    :cond_3
    :goto_2
    return-void

    .line 156
    :catch_0
    move-exception v0

    .line 157
    .local v0, "e":Ljava/lang/Exception;
    array-length v7, v6

    if-ne v1, v7, :cond_4

    const-string v4, "[anySetter]"

    .line 158
    .local v4, "name":Ljava/lang/String;
    :goto_3
    invoke-virtual {p0, p3, v0, p1, v4}, Lcom/flurry/org/codehaus/jackson/map/ser/std/BeanSerializerBase;->wrapAndThrow(Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    .line 157
    .end local v4    # "name":Ljava/lang/String;
    :cond_4
    aget-object v7, v6, v1

    invoke-virtual {v7}, Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;->getName()Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    .line 159
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 164
    .local v0, "e":Ljava/lang/StackOverflowError;
    new-instance v3, Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;

    const-string v7, "Infinite recursion (StackOverflowError)"

    invoke-direct {v3, v7}, Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;-><init>(Ljava/lang/String;)V

    .line 165
    .local v3, "mapE":Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;
    array-length v7, v6

    if-ne v1, v7, :cond_5

    const-string v4, "[anySetter]"

    .line 166
    .restart local v4    # "name":Ljava/lang/String;
    :goto_4
    new-instance v7, Lcom/flurry/org/codehaus/jackson/map/JsonMappingException$Reference;

    invoke-direct {v7, p1, v4}, Lcom/flurry/org/codehaus/jackson/map/JsonMappingException$Reference;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;->prependPath(Lcom/flurry/org/codehaus/jackson/map/JsonMappingException$Reference;)V

    .line 167
    throw v3

    .line 165
    .end local v4    # "name":Ljava/lang/String;
    :cond_5
    aget-object v7, v6, v1

    invoke-virtual {v7}, Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;->getName()Ljava/lang/String;

    move-result-object v4

    goto :goto_4
.end method

.method protected serializeFieldsFiltered(Ljava/lang/Object;Lcom/flurry/org/codehaus/jackson/JsonGenerator;Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;)V
    .locals 9
    .param p1, "bean"    # Ljava/lang/Object;
    .param p2, "jgen"    # Lcom/flurry/org/codehaus/jackson/JsonGenerator;
    .param p3, "provider"    # Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 186
    iget-object v8, p0, Lcom/flurry/org/codehaus/jackson/map/ser/std/BeanSerializerBase;->_filteredProps:[Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;

    if-eqz v8, :cond_1

    invoke-virtual {p3}, Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;->getSerializationView()Ljava/lang/Class;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 187
    iget-object v7, p0, Lcom/flurry/org/codehaus/jackson/map/ser/std/BeanSerializerBase;->_filteredProps:[Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;

    .line 191
    .local v7, "props":[Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;
    :goto_0
    invoke-virtual {p0, p3}, Lcom/flurry/org/codehaus/jackson/map/ser/std/BeanSerializerBase;->findFilter(Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;)Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyFilter;

    move-result-object v1

    .line 193
    .local v1, "filter":Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyFilter;
    if-nez v1, :cond_2

    .line 194
    invoke-virtual {p0, p1, p2, p3}, Lcom/flurry/org/codehaus/jackson/map/ser/std/BeanSerializerBase;->serializeFields(Ljava/lang/Object;Lcom/flurry/org/codehaus/jackson/JsonGenerator;Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;)V

    .line 218
    :cond_0
    :goto_1
    return-void

    .line 189
    .end local v1    # "filter":Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyFilter;
    .end local v7    # "props":[Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;
    :cond_1
    iget-object v7, p0, Lcom/flurry/org/codehaus/jackson/map/ser/std/BeanSerializerBase;->_props:[Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;

    .restart local v7    # "props":[Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;
    goto :goto_0

    .line 198
    .restart local v1    # "filter":Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyFilter;
    :cond_2
    const/4 v2, 0x0

    .line 200
    .local v2, "i":I
    :try_start_0
    array-length v3, v7

    .local v3, "len":I
    :goto_2
    if-ge v2, v3, :cond_4

    .line 201
    aget-object v6, v7, v2

    .line 202
    .local v6, "prop":Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;
    if-eqz v6, :cond_3

    .line 203
    invoke-interface {v1, p1, p2, p3, v6}, Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyFilter;->serializeAsField(Ljava/lang/Object;Lcom/flurry/org/codehaus/jackson/JsonGenerator;Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;)V

    .line 200
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 206
    .end local v6    # "prop":Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;
    :cond_4
    iget-object v8, p0, Lcom/flurry/org/codehaus/jackson/map/ser/std/BeanSerializerBase;->_anyGetterWriter:Lcom/flurry/org/codehaus/jackson/map/ser/AnyGetterWriter;

    if-eqz v8, :cond_0

    .line 207
    iget-object v8, p0, Lcom/flurry/org/codehaus/jackson/map/ser/std/BeanSerializerBase;->_anyGetterWriter:Lcom/flurry/org/codehaus/jackson/map/ser/AnyGetterWriter;

    invoke-virtual {v8, p1, p2, p3}, Lcom/flurry/org/codehaus/jackson/map/ser/AnyGetterWriter;->getAndSerialize(Ljava/lang/Object;Lcom/flurry/org/codehaus/jackson/JsonGenerator;Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/StackOverflowError; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 209
    .end local v3    # "len":I
    :catch_0
    move-exception v0

    .line 210
    .local v0, "e":Ljava/lang/Exception;
    array-length v8, v7

    if-ne v2, v8, :cond_5

    const-string v5, "[anySetter]"

    .line 211
    .local v5, "name":Ljava/lang/String;
    :goto_3
    invoke-virtual {p0, p3, v0, p1, v5}, Lcom/flurry/org/codehaus/jackson/map/ser/std/BeanSerializerBase;->wrapAndThrow(Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 210
    .end local v5    # "name":Ljava/lang/String;
    :cond_5
    aget-object v8, v7, v2

    invoke-virtual {v8}, Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;->getName()Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    .line 212
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 213
    .local v0, "e":Ljava/lang/StackOverflowError;
    new-instance v4, Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;

    const-string v8, "Infinite recursion (StackOverflowError)"

    invoke-direct {v4, v8}, Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;-><init>(Ljava/lang/String;)V

    .line 214
    .local v4, "mapE":Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;
    array-length v8, v7

    if-ne v2, v8, :cond_6

    const-string v5, "[anySetter]"

    .line 215
    .restart local v5    # "name":Ljava/lang/String;
    :goto_4
    new-instance v8, Lcom/flurry/org/codehaus/jackson/map/JsonMappingException$Reference;

    invoke-direct {v8, p1, v5}, Lcom/flurry/org/codehaus/jackson/map/JsonMappingException$Reference;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v8}, Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;->prependPath(Lcom/flurry/org/codehaus/jackson/map/JsonMappingException$Reference;)V

    .line 216
    throw v4

    .line 214
    .end local v5    # "name":Ljava/lang/String;
    :cond_6
    aget-object v8, v7, v2

    invoke-virtual {v8}, Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;->getName()Ljava/lang/String;

    move-result-object v5

    goto :goto_4
.end method

.method public serializeWithType(Ljava/lang/Object;Lcom/flurry/org/codehaus/jackson/JsonGenerator;Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;)V
    .locals 1
    .param p1, "bean"    # Ljava/lang/Object;
    .param p2, "jgen"    # Lcom/flurry/org/codehaus/jackson/JsonGenerator;
    .param p3, "provider"    # Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;
    .param p4, "typeSer"    # Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 121
    invoke-virtual {p4, p1, p2}, Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;->writeTypePrefixForObject(Ljava/lang/Object;Lcom/flurry/org/codehaus/jackson/JsonGenerator;)V

    .line 122
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ser/std/BeanSerializerBase;->_propertyFilterId:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 123
    invoke-virtual {p0, p1, p2, p3}, Lcom/flurry/org/codehaus/jackson/map/ser/std/BeanSerializerBase;->serializeFieldsFiltered(Ljava/lang/Object;Lcom/flurry/org/codehaus/jackson/JsonGenerator;Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;)V

    .line 127
    :goto_0
    invoke-virtual {p4, p1, p2}, Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;->writeTypeSuffixForObject(Ljava/lang/Object;Lcom/flurry/org/codehaus/jackson/JsonGenerator;)V

    .line 128
    return-void

    .line 125
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/flurry/org/codehaus/jackson/map/ser/std/BeanSerializerBase;->serializeFields(Ljava/lang/Object;Lcom/flurry/org/codehaus/jackson/JsonGenerator;Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;)V

    goto :goto_0
.end method
