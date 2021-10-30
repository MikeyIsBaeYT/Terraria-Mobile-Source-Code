.class public Lcom/flurry/org/codehaus/jackson/map/ser/std/StringCollectionSerializer;
.super Lcom/flurry/org/codehaus/jackson/map/ser/std/StaticListSerializerBase;
.source "StringCollectionSerializer.java"

# interfaces
.implements Lcom/flurry/org/codehaus/jackson/map/ResolvableSerializer;


# annotations
.annotation runtime Lcom/flurry/org/codehaus/jackson/map/annotate/JacksonStdImpl;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/flurry/org/codehaus/jackson/map/ser/std/StaticListSerializerBase",
        "<",
        "Ljava/util/Collection",
        "<",
        "Ljava/lang/String;",
        ">;>;",
        "Lcom/flurry/org/codehaus/jackson/map/ResolvableSerializer;"
    }
.end annotation


# instance fields
.field protected _serializer:Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)V
    .locals 1
    .param p1, "property"    # Lcom/flurry/org/codehaus/jackson/map/BeanProperty;

    .prologue
    .line 35
    const-class v0, Ljava/util/Collection;

    invoke-direct {p0, v0, p1}, Lcom/flurry/org/codehaus/jackson/map/ser/std/StaticListSerializerBase;-><init>(Ljava/lang/Class;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)V

    .line 36
    return-void
.end method

.method private final serializeContents(Ljava/util/Collection;Lcom/flurry/org/codehaus/jackson/JsonGenerator;Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;)V
    .locals 5
    .param p2, "jgen"    # Lcom/flurry/org/codehaus/jackson/JsonGenerator;
    .param p3, "provider"    # Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
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
    .line 82
    .local p1, "value":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/flurry/org/codehaus/jackson/map/ser/std/StringCollectionSerializer;->_serializer:Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;

    if-eqz v4, :cond_1

    .line 83
    invoke-direct {p0, p1, p2, p3}, Lcom/flurry/org/codehaus/jackson/map/ser/std/StringCollectionSerializer;->serializeUsingCustom(Ljava/util/Collection;Lcom/flurry/org/codehaus/jackson/JsonGenerator;Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;)V

    .line 99
    :cond_0
    return-void

    .line 86
    :cond_1
    const/4 v1, 0x0

    .line 87
    .local v1, "i":I
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 89
    .local v3, "str":Ljava/lang/String;
    if-nez v3, :cond_2

    .line 90
    :try_start_0
    invoke-virtual {p3, p2}, Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;->defaultSerializeNull(Lcom/flurry/org/codehaus/jackson/JsonGenerator;)V

    .line 94
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 92
    :cond_2
    invoke-virtual {p2, v3}, Lcom/flurry/org/codehaus/jackson/JsonGenerator;->writeString(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 95
    :catch_0
    move-exception v0

    .line 96
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0, p3, v0, p1, v1}, Lcom/flurry/org/codehaus/jackson/map/ser/std/StringCollectionSerializer;->wrapAndThrow(Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;Ljava/lang/Throwable;Ljava/lang/Object;I)V

    goto :goto_0
.end method

.method private serializeUsingCustom(Ljava/util/Collection;Lcom/flurry/org/codehaus/jackson/JsonGenerator;Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;)V
    .locals 6
    .param p2, "jgen"    # Lcom/flurry/org/codehaus/jackson/JsonGenerator;
    .param p3, "provider"    # Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
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
    .line 104
    .local p1, "value":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/map/ser/std/StringCollectionSerializer;->_serializer:Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;

    .line 105
    .local v3, "ser":Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 106
    .local v1, "i":I
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 108
    .local v4, "str":Ljava/lang/String;
    if-nez v4, :cond_0

    .line 109
    :try_start_0
    invoke-virtual {p3, p2}, Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;->defaultSerializeNull(Lcom/flurry/org/codehaus/jackson/JsonGenerator;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 113
    :catch_0
    move-exception v0

    .line 114
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0, p3, v0, p1, v1}, Lcom/flurry/org/codehaus/jackson/map/ser/std/StringCollectionSerializer;->wrapAndThrow(Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;Ljava/lang/Throwable;Ljava/lang/Object;I)V

    goto :goto_0

    .line 111
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :try_start_1
    invoke-virtual {v3, v4, p2, p3}, Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;->serialize(Ljava/lang/Object;Lcom/flurry/org/codehaus/jackson/JsonGenerator;Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 117
    .end local v4    # "str":Ljava/lang/String;
    :cond_1
    return-void
.end method


# virtual methods
.method protected contentSchema()Lcom/flurry/org/codehaus/jackson/JsonNode;
    .locals 2

    .prologue
    .line 39
    const-string v0, "string"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/flurry/org/codehaus/jackson/map/ser/std/StringCollectionSerializer;->createSchemaNode(Ljava/lang/String;Z)Lcom/flurry/org/codehaus/jackson/node/ObjectNode;

    move-result-object v0

    return-object v0
.end method

.method public resolve(Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;)V
    .locals 3
    .param p1, "provider"    # Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 46
    const-class v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/ser/std/StringCollectionSerializer;->_property:Lcom/flurry/org/codehaus/jackson/map/BeanProperty;

    invoke-virtual {p1, v1, v2}, Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;->findValueSerializer(Ljava/lang/Class;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;

    move-result-object v0

    .line 47
    .local v0, "ser":Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer<*>;"
    invoke-virtual {p0, v0}, Lcom/flurry/org/codehaus/jackson/map/ser/std/StringCollectionSerializer;->isDefaultSerializer(Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 48
    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ser/std/StringCollectionSerializer;->_serializer:Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;

    .line 50
    :cond_0
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
    .line 26
    check-cast p1, Ljava/util/Collection;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Lcom/flurry/org/codehaus/jackson/map/ser/std/StringCollectionSerializer;->serialize(Ljava/util/Collection;Lcom/flurry/org/codehaus/jackson/JsonGenerator;Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;)V

    return-void
.end method

.method public serialize(Ljava/util/Collection;Lcom/flurry/org/codehaus/jackson/JsonGenerator;Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;)V
    .locals 1
    .param p2, "jgen"    # Lcom/flurry/org/codehaus/jackson/JsonGenerator;
    .param p3, "provider"    # Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
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
    .line 56
    .local p1, "value":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-virtual {p2}, Lcom/flurry/org/codehaus/jackson/JsonGenerator;->writeStartArray()V

    .line 57
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ser/std/StringCollectionSerializer;->_serializer:Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;

    if-nez v0, :cond_0

    .line 58
    invoke-direct {p0, p1, p2, p3}, Lcom/flurry/org/codehaus/jackson/map/ser/std/StringCollectionSerializer;->serializeContents(Ljava/util/Collection;Lcom/flurry/org/codehaus/jackson/JsonGenerator;Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;)V

    .line 62
    :goto_0
    invoke-virtual {p2}, Lcom/flurry/org/codehaus/jackson/JsonGenerator;->writeEndArray()V

    .line 63
    return-void

    .line 60
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/flurry/org/codehaus/jackson/map/ser/std/StringCollectionSerializer;->serializeUsingCustom(Ljava/util/Collection;Lcom/flurry/org/codehaus/jackson/JsonGenerator;Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;)V

    goto :goto_0
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
    .line 26
    check-cast p1, Ljava/util/Collection;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/flurry/org/codehaus/jackson/map/ser/std/StringCollectionSerializer;->serializeWithType(Ljava/util/Collection;Lcom/flurry/org/codehaus/jackson/JsonGenerator;Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;)V

    return-void
.end method

.method public serializeWithType(Ljava/util/Collection;Lcom/flurry/org/codehaus/jackson/JsonGenerator;Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;)V
    .locals 1
    .param p2, "jgen"    # Lcom/flurry/org/codehaus/jackson/JsonGenerator;
    .param p3, "provider"    # Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;
    .param p4, "typeSer"    # Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
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
    .line 70
    .local p1, "value":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-virtual {p4, p1, p2}, Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;->writeTypePrefixForArray(Ljava/lang/Object;Lcom/flurry/org/codehaus/jackson/JsonGenerator;)V

    .line 71
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ser/std/StringCollectionSerializer;->_serializer:Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;

    if-nez v0, :cond_0

    .line 72
    invoke-direct {p0, p1, p2, p3}, Lcom/flurry/org/codehaus/jackson/map/ser/std/StringCollectionSerializer;->serializeContents(Ljava/util/Collection;Lcom/flurry/org/codehaus/jackson/JsonGenerator;Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;)V

    .line 76
    :goto_0
    invoke-virtual {p4, p1, p2}, Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;->writeTypeSuffixForArray(Ljava/lang/Object;Lcom/flurry/org/codehaus/jackson/JsonGenerator;)V

    .line 77
    return-void

    .line 74
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/flurry/org/codehaus/jackson/map/ser/std/StringCollectionSerializer;->serializeUsingCustom(Ljava/util/Collection;Lcom/flurry/org/codehaus/jackson/JsonGenerator;Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;)V

    goto :goto_0
.end method
