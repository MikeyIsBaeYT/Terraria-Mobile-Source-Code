.class public final Lcom/flurry/org/codehaus/jackson/map/ser/std/StdArraySerializers$StringArraySerializer;
.super Lcom/flurry/org/codehaus/jackson/map/ser/std/StdArraySerializers$ArraySerializerBase;
.source "StdArraySerializers.java"

# interfaces
.implements Lcom/flurry/org/codehaus/jackson/map/ResolvableSerializer;


# annotations
.annotation runtime Lcom/flurry/org/codehaus/jackson/map/annotate/JacksonStdImpl;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/org/codehaus/jackson/map/ser/std/StdArraySerializers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StringArraySerializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/flurry/org/codehaus/jackson/map/ser/std/StdArraySerializers$ArraySerializerBase",
        "<[",
        "Ljava/lang/String;",
        ">;",
        "Lcom/flurry/org/codehaus/jackson/map/ResolvableSerializer;"
    }
.end annotation


# instance fields
.field protected _elementSerializer:Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)V
    .locals 2
    .param p1, "prop"    # Lcom/flurry/org/codehaus/jackson/map/BeanProperty;

    .prologue
    .line 97
    const-class v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/flurry/org/codehaus/jackson/map/ser/std/StdArraySerializers$ArraySerializerBase;-><init>(Ljava/lang/Class;Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)V

    .line 98
    return-void
.end method

.method private serializeContentsSlow([Ljava/lang/String;Lcom/flurry/org/codehaus/jackson/JsonGenerator;Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;)V
    .locals 4
    .param p1, "value"    # [Ljava/lang/String;
    .param p2, "jgen"    # Lcom/flurry/org/codehaus/jackson/JsonGenerator;
    .param p3, "provider"    # Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
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
    .line 144
    .local p4, "ser":Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    array-length v1, p1

    .local v1, "len":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 145
    aget-object v2, p1, v0

    .line 146
    .local v2, "str":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 147
    invoke-virtual {p3, p2}, Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;->defaultSerializeNull(Lcom/flurry/org/codehaus/jackson/JsonGenerator;)V

    .line 144
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 149
    :cond_0
    aget-object v3, p1, v0

    invoke-virtual {p4, v3, p2, p3}, Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;->serialize(Ljava/lang/Object;Lcom/flurry/org/codehaus/jackson/JsonGenerator;Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;)V

    goto :goto_1

    .line 152
    .end local v2    # "str":Ljava/lang/String;
    :cond_1
    return-void
.end method


# virtual methods
.method public _withValueTypeSerializer(Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;)Lcom/flurry/org/codehaus/jackson/map/ser/std/ContainerSerializerBase;
    .locals 0
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
    .line 106
    return-object p0
.end method

.method public getSchema(Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;Ljava/lang/reflect/Type;)Lcom/flurry/org/codehaus/jackson/JsonNode;
    .locals 3
    .param p1, "provider"    # Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;
    .param p2, "typeHint"    # Ljava/lang/reflect/Type;

    .prologue
    .line 172
    const-string v1, "array"

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/flurry/org/codehaus/jackson/map/ser/std/StdArraySerializers$StringArraySerializer;->createSchemaNode(Ljava/lang/String;Z)Lcom/flurry/org/codehaus/jackson/node/ObjectNode;

    move-result-object v0

    .line 173
    .local v0, "o":Lcom/flurry/org/codehaus/jackson/node/ObjectNode;
    const-string v1, "items"

    const-string v2, "string"

    invoke-virtual {p0, v2}, Lcom/flurry/org/codehaus/jackson/map/ser/std/StdArraySerializers$StringArraySerializer;->createSchemaNode(Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/node/ObjectNode;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/flurry/org/codehaus/jackson/node/ObjectNode;->put(Ljava/lang/String;Lcom/flurry/org/codehaus/jackson/JsonNode;)Lcom/flurry/org/codehaus/jackson/JsonNode;

    .line 174
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
    .line 162
    const-class v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/ser/std/StdArraySerializers$StringArraySerializer;->_property:Lcom/flurry/org/codehaus/jackson/map/BeanProperty;

    invoke-virtual {p1, v1, v2}, Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;->findValueSerializer(Ljava/lang/Class;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;

    move-result-object v0

    .line 164
    .local v0, "ser":Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/flurry/org/codehaus/jackson/map/annotate/JacksonStdImpl;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    if-nez v1, :cond_0

    .line 165
    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ser/std/StdArraySerializers$StringArraySerializer;->_elementSerializer:Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;

    .line 167
    :cond_0
    return-void
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
    .line 83
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Lcom/flurry/org/codehaus/jackson/map/ser/std/StdArraySerializers$StringArraySerializer;->serializeContents([Ljava/lang/String;Lcom/flurry/org/codehaus/jackson/JsonGenerator;Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;)V

    return-void
.end method

.method public serializeContents([Ljava/lang/String;Lcom/flurry/org/codehaus/jackson/JsonGenerator;Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;)V
    .locals 4
    .param p1, "value"    # [Ljava/lang/String;
    .param p2, "jgen"    # Lcom/flurry/org/codehaus/jackson/JsonGenerator;
    .param p3, "provider"    # Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 113
    array-length v1, p1

    .line 114
    .local v1, "len":I
    if-nez v1, :cond_1

    .line 138
    :cond_0
    :goto_0
    return-void

    .line 117
    :cond_1
    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/map/ser/std/StdArraySerializers$StringArraySerializer;->_elementSerializer:Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;

    if-eqz v3, :cond_2

    .line 118
    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/map/ser/std/StdArraySerializers$StringArraySerializer;->_elementSerializer:Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;

    invoke-direct {p0, p1, p2, p3, v3}, Lcom/flurry/org/codehaus/jackson/map/ser/std/StdArraySerializers$StringArraySerializer;->serializeContentsSlow([Ljava/lang/String;Lcom/flurry/org/codehaus/jackson/JsonGenerator;Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;)V

    goto :goto_0

    .line 129
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_0

    .line 130
    aget-object v2, p1, v0

    .line 131
    .local v2, "str":Ljava/lang/String;
    if-nez v2, :cond_3

    .line 132
    invoke-virtual {p2}, Lcom/flurry/org/codehaus/jackson/JsonGenerator;->writeNull()V

    .line 129
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 135
    :cond_3
    aget-object v3, p1, v0

    invoke-virtual {p2, v3}, Lcom/flurry/org/codehaus/jackson/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_2
.end method
