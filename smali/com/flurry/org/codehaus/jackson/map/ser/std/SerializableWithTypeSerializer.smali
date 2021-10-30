.class public Lcom/flurry/org/codehaus/jackson/map/ser/std/SerializableWithTypeSerializer;
.super Lcom/flurry/org/codehaus/jackson/map/ser/std/SerializerBase;
.source "SerializableWithTypeSerializer.java"


# annotations
.annotation runtime Lcom/flurry/org/codehaus/jackson/map/annotate/JacksonStdImpl;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/flurry/org/codehaus/jackson/map/ser/std/SerializerBase",
        "<",
        "Lcom/flurry/org/codehaus/jackson/map/JsonSerializableWithType;",
        ">;"
    }
.end annotation


# static fields
.field public static final instance:Lcom/flurry/org/codehaus/jackson/map/ser/std/SerializableWithTypeSerializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/ser/std/SerializableWithTypeSerializer;

    invoke-direct {v0}, Lcom/flurry/org/codehaus/jackson/map/ser/std/SerializableWithTypeSerializer;-><init>()V

    sput-object v0, Lcom/flurry/org/codehaus/jackson/map/ser/std/SerializableWithTypeSerializer;->instance:Lcom/flurry/org/codehaus/jackson/map/ser/std/SerializableWithTypeSerializer;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/flurry/org/codehaus/jackson/map/JsonSerializableWithType;

    invoke-direct {p0, v0}, Lcom/flurry/org/codehaus/jackson/map/ser/std/SerializerBase;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public getSchema(Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;Ljava/lang/reflect/Type;)Lcom/flurry/org/codehaus/jackson/JsonNode;
    .locals 10
    .param p1, "provider"    # Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;
    .param p2, "typeHint"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/map/ser/std/SerializableWithTypeSerializer;->createObjectNode()Lcom/flurry/org/codehaus/jackson/node/ObjectNode;

    move-result-object v2

    .line 55
    .local v2, "objectNode":Lcom/flurry/org/codehaus/jackson/node/ObjectNode;
    const-string v6, "any"

    .line 56
    .local v6, "schemaType":Ljava/lang/String;
    const/4 v3, 0x0

    .line 57
    .local v3, "objectProperties":Ljava/lang/String;
    const/4 v1, 0x0

    .line 58
    .local v1, "itemDefinition":Ljava/lang/String;
    if-eqz p2, :cond_1

    .line 59
    invoke-static {p2}, Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;->rawClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v4

    .line 60
    .local v4, "rawClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v7, Lcom/flurry/org/codehaus/jackson/schema/JsonSerializableSchema;

    invoke-virtual {v4, v7}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 61
    const-class v7, Lcom/flurry/org/codehaus/jackson/schema/JsonSerializableSchema;

    invoke-virtual {v4, v7}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v5

    check-cast v5, Lcom/flurry/org/codehaus/jackson/schema/JsonSerializableSchema;

    .line 62
    .local v5, "schemaInfo":Lcom/flurry/org/codehaus/jackson/schema/JsonSerializableSchema;
    invoke-interface {v5}, Lcom/flurry/org/codehaus/jackson/schema/JsonSerializableSchema;->schemaType()Ljava/lang/String;

    move-result-object v6

    .line 63
    const-string v7, "##irrelevant"

    invoke-interface {v5}, Lcom/flurry/org/codehaus/jackson/schema/JsonSerializableSchema;->schemaObjectPropertiesDefinition()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 64
    invoke-interface {v5}, Lcom/flurry/org/codehaus/jackson/schema/JsonSerializableSchema;->schemaObjectPropertiesDefinition()Ljava/lang/String;

    move-result-object v3

    .line 66
    :cond_0
    const-string v7, "##irrelevant"

    invoke-interface {v5}, Lcom/flurry/org/codehaus/jackson/schema/JsonSerializableSchema;->schemaItemDefinition()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 67
    invoke-interface {v5}, Lcom/flurry/org/codehaus/jackson/schema/JsonSerializableSchema;->schemaItemDefinition()Ljava/lang/String;

    move-result-object v1

    .line 71
    .end local v4    # "rawClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "schemaInfo":Lcom/flurry/org/codehaus/jackson/schema/JsonSerializableSchema;
    :cond_1
    const-string v7, "type"

    invoke-virtual {v2, v7, v6}, Lcom/flurry/org/codehaus/jackson/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    if-eqz v3, :cond_2

    .line 74
    :try_start_0
    const-string v8, "properties"

    new-instance v7, Lcom/flurry/org/codehaus/jackson/map/ObjectMapper;

    invoke-direct {v7}, Lcom/flurry/org/codehaus/jackson/map/ObjectMapper;-><init>()V

    const-class v9, Lcom/flurry/org/codehaus/jackson/JsonNode;

    invoke-virtual {v7, v3, v9}, Lcom/flurry/org/codehaus/jackson/map/ObjectMapper;->readValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/flurry/org/codehaus/jackson/JsonNode;

    invoke-virtual {v2, v8, v7}, Lcom/flurry/org/codehaus/jackson/node/ObjectNode;->put(Ljava/lang/String;Lcom/flurry/org/codehaus/jackson/JsonNode;)Lcom/flurry/org/codehaus/jackson/JsonNode;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    :cond_2
    if-eqz v1, :cond_3

    .line 81
    :try_start_1
    const-string v8, "items"

    new-instance v7, Lcom/flurry/org/codehaus/jackson/map/ObjectMapper;

    invoke-direct {v7}, Lcom/flurry/org/codehaus/jackson/map/ObjectMapper;-><init>()V

    const-class v9, Lcom/flurry/org/codehaus/jackson/JsonNode;

    invoke-virtual {v7, v1, v9}, Lcom/flurry/org/codehaus/jackson/map/ObjectMapper;->readValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/flurry/org/codehaus/jackson/JsonNode;

    invoke-virtual {v2, v8, v7}, Lcom/flurry/org/codehaus/jackson/node/ObjectNode;->put(Ljava/lang/String;Lcom/flurry/org/codehaus/jackson/JsonNode;)Lcom/flurry/org/codehaus/jackson/JsonNode;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 88
    :cond_3
    return-object v2

    .line 75
    :catch_0
    move-exception v0

    .line 76
    .local v0, "e":Ljava/io/IOException;
    new-instance v7, Ljava/lang/IllegalStateException;

    invoke-direct {v7, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 82
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 83
    .restart local v0    # "e":Ljava/io/IOException;
    new-instance v7, Ljava/lang/IllegalStateException;

    invoke-direct {v7, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v7
.end method

.method public serialize(Lcom/flurry/org/codehaus/jackson/map/JsonSerializableWithType;Lcom/flurry/org/codehaus/jackson/JsonGenerator;Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;)V
    .locals 0
    .param p1, "value"    # Lcom/flurry/org/codehaus/jackson/map/JsonSerializableWithType;
    .param p2, "jgen"    # Lcom/flurry/org/codehaus/jackson/JsonGenerator;
    .param p3, "provider"    # Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 38
    invoke-interface {p1, p2, p3}, Lcom/flurry/org/codehaus/jackson/map/JsonSerializableWithType;->serialize(Lcom/flurry/org/codehaus/jackson/JsonGenerator;Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;)V

    .line 39
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
    .line 25
    check-cast p1, Lcom/flurry/org/codehaus/jackson/map/JsonSerializableWithType;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Lcom/flurry/org/codehaus/jackson/map/ser/std/SerializableWithTypeSerializer;->serialize(Lcom/flurry/org/codehaus/jackson/map/JsonSerializableWithType;Lcom/flurry/org/codehaus/jackson/JsonGenerator;Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;)V

    return-void
.end method

.method public final serializeWithType(Lcom/flurry/org/codehaus/jackson/map/JsonSerializableWithType;Lcom/flurry/org/codehaus/jackson/JsonGenerator;Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;)V
    .locals 0
    .param p1, "value"    # Lcom/flurry/org/codehaus/jackson/map/JsonSerializableWithType;
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
    .line 46
    invoke-interface {p1, p2, p3, p4}, Lcom/flurry/org/codehaus/jackson/map/JsonSerializableWithType;->serializeWithType(Lcom/flurry/org/codehaus/jackson/JsonGenerator;Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;)V

    .line 47
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
    .line 25
    check-cast p1, Lcom/flurry/org/codehaus/jackson/map/JsonSerializableWithType;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/flurry/org/codehaus/jackson/map/ser/std/SerializableWithTypeSerializer;->serializeWithType(Lcom/flurry/org/codehaus/jackson/map/JsonSerializableWithType;Lcom/flurry/org/codehaus/jackson/JsonGenerator;Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;)V

    return-void
.end method
