.class public Lcom/flurry/org/codehaus/jackson/map/ser/std/IterableSerializer;
.super Lcom/flurry/org/codehaus/jackson/map/ser/std/AsArraySerializerBase;
.source "IterableSerializer.java"


# annotations
.annotation runtime Lcom/flurry/org/codehaus/jackson/map/annotate/JacksonStdImpl;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/flurry/org/codehaus/jackson/map/ser/std/AsArraySerializerBase",
        "<",
        "Ljava/lang/Iterable",
        "<*>;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/flurry/org/codehaus/jackson/type/JavaType;ZLcom/flurry/org/codehaus/jackson/map/TypeSerializer;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)V
    .locals 7
    .param p1, "elemType"    # Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .param p2, "staticTyping"    # Z
    .param p3, "vts"    # Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;
    .param p4, "property"    # Lcom/flurry/org/codehaus/jackson/map/BeanProperty;

    .prologue
    .line 21
    const-class v1, Ljava/lang/Iterable;

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/flurry/org/codehaus/jackson/map/ser/std/AsArraySerializerBase;-><init>(Ljava/lang/Class;Lcom/flurry/org/codehaus/jackson/type/JavaType;ZLcom/flurry/org/codehaus/jackson/map/TypeSerializer;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;)V

    .line 22
    return-void
.end method


# virtual methods
.method public _withValueTypeSerializer(Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;)Lcom/flurry/org/codehaus/jackson/map/ser/std/ContainerSerializerBase;
    .locals 4
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
    .line 26
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/ser/std/IterableSerializer;

    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/ser/std/IterableSerializer;->_elementType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    iget-boolean v2, p0, Lcom/flurry/org/codehaus/jackson/map/ser/std/IterableSerializer;->_staticTyping:Z

    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/map/ser/std/IterableSerializer;->_property:Lcom/flurry/org/codehaus/jackson/map/BeanProperty;

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/flurry/org/codehaus/jackson/map/ser/std/IterableSerializer;-><init>(Lcom/flurry/org/codehaus/jackson/type/JavaType;ZLcom/flurry/org/codehaus/jackson/map/TypeSerializer;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)V

    return-object v0
.end method

.method public serializeContents(Ljava/lang/Iterable;Lcom/flurry/org/codehaus/jackson/JsonGenerator;Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;)V
    .locals 8
    .param p2, "jgen"    # Lcom/flurry/org/codehaus/jackson/JsonGenerator;
    .param p3, "provider"    # Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<*>;",
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
    .line 33
    .local p1, "value":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 34
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 35
    iget-object v6, p0, Lcom/flurry/org/codehaus/jackson/map/ser/std/IterableSerializer;->_valueTypeSerializer:Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;

    .line 36
    .local v6, "typeSer":Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;
    const/4 v5, 0x0

    .line 37
    .local v5, "prevSerializer":Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    const/4 v4, 0x0

    .line 40
    .local v4, "prevClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 41
    .local v2, "elem":Ljava/lang/Object;
    if-nez v2, :cond_2

    .line 42
    invoke-virtual {p3, p2}, Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;->defaultSerializeNull(Lcom/flurry/org/codehaus/jackson/JsonGenerator;)V

    .line 60
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_0

    .line 62
    .end local v2    # "elem":Ljava/lang/Object;
    .end local v4    # "prevClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "prevSerializer":Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    .end local v6    # "typeSer":Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;
    :cond_1
    return-void

    .line 45
    .restart local v2    # "elem":Ljava/lang/Object;
    .restart local v4    # "prevClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v5    # "prevSerializer":Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    .restart local v6    # "typeSer":Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 47
    .local v0, "cc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-ne v0, v4, :cond_3

    .line 48
    move-object v1, v5

    .line 54
    .local v1, "currSerializer":Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    :goto_1
    if-nez v6, :cond_4

    .line 55
    invoke-virtual {v1, v2, p2, p3}, Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;->serialize(Ljava/lang/Object;Lcom/flurry/org/codehaus/jackson/JsonGenerator;Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;)V

    goto :goto_0

    .line 50
    .end local v1    # "currSerializer":Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    :cond_3
    iget-object v7, p0, Lcom/flurry/org/codehaus/jackson/map/ser/std/IterableSerializer;->_property:Lcom/flurry/org/codehaus/jackson/map/BeanProperty;

    invoke-virtual {p3, v0, v7}, Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;->findValueSerializer(Ljava/lang/Class;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;

    move-result-object v1

    .line 51
    .restart local v1    # "currSerializer":Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    move-object v5, v1

    .line 52
    move-object v4, v0

    goto :goto_1

    .line 57
    :cond_4
    invoke-virtual {v1, v2, p2, p3, v6}, Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;->serializeWithType(Ljava/lang/Object;Lcom/flurry/org/codehaus/jackson/JsonGenerator;Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;)V

    goto :goto_0
.end method

.method public bridge synthetic serializeContents(Ljava/lang/Object;Lcom/flurry/org/codehaus/jackson/JsonGenerator;Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;)V
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
    .line 15
    check-cast p1, Ljava/lang/Iterable;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Lcom/flurry/org/codehaus/jackson/map/ser/std/IterableSerializer;->serializeContents(Ljava/lang/Iterable;Lcom/flurry/org/codehaus/jackson/JsonGenerator;Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;)V

    return-void
.end method
