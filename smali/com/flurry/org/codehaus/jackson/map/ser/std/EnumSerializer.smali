.class public Lcom/flurry/org/codehaus/jackson/map/ser/std/EnumSerializer;
.super Lcom/flurry/org/codehaus/jackson/map/ser/std/ScalarSerializerBase;
.source "EnumSerializer.java"


# annotations
.annotation runtime Lcom/flurry/org/codehaus/jackson/map/annotate/JacksonStdImpl;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/flurry/org/codehaus/jackson/map/ser/std/ScalarSerializerBase",
        "<",
        "Ljava/lang/Enum",
        "<*>;>;"
    }
.end annotation


# instance fields
.field protected final _values:Lcom/flurry/org/codehaus/jackson/map/util/EnumValues;


# direct methods
.method public constructor <init>(Lcom/flurry/org/codehaus/jackson/map/util/EnumValues;)V
    .locals 2
    .param p1, "v"    # Lcom/flurry/org/codehaus/jackson/map/util/EnumValues;

    .prologue
    .line 36
    const-class v0, Ljava/lang/Enum;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/flurry/org/codehaus/jackson/map/ser/std/ScalarSerializerBase;-><init>(Ljava/lang/Class;Z)V

    .line 37
    iput-object p1, p0, Lcom/flurry/org/codehaus/jackson/map/ser/std/EnumSerializer;->_values:Lcom/flurry/org/codehaus/jackson/map/util/EnumValues;

    .line 38
    return-void
.end method

.method public static construct(Ljava/lang/Class;Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;)Lcom/flurry/org/codehaus/jackson/map/ser/std/EnumSerializer;
    .locals 3
    .param p1, "config"    # Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;
    .param p2, "beanDesc"    # Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<",
            "Ljava/lang/Enum",
            "<*>;>;",
            "Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;",
            "Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;",
            ")",
            "Lcom/flurry/org/codehaus/jackson/map/ser/std/EnumSerializer;"
        }
    .end annotation

    .prologue
    .line 44
    .local p0, "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<Ljava/lang/Enum<*>;>;"
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;->getAnnotationIntrospector()Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object v0

    .line 45
    .local v0, "intr":Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;
    sget-object v2, Lcom/flurry/org/codehaus/jackson/map/SerializationConfig$Feature;->WRITE_ENUMS_USING_TO_STRING:Lcom/flurry/org/codehaus/jackson/map/SerializationConfig$Feature;

    invoke-virtual {p1, v2}, Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;->isEnabled(Lcom/flurry/org/codehaus/jackson/map/SerializationConfig$Feature;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p0, v0}, Lcom/flurry/org/codehaus/jackson/map/util/EnumValues;->constructFromToString(Ljava/lang/Class;Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;)Lcom/flurry/org/codehaus/jackson/map/util/EnumValues;

    move-result-object v1

    .line 47
    .local v1, "v":Lcom/flurry/org/codehaus/jackson/map/util/EnumValues;
    :goto_0
    new-instance v2, Lcom/flurry/org/codehaus/jackson/map/ser/std/EnumSerializer;

    invoke-direct {v2, v1}, Lcom/flurry/org/codehaus/jackson/map/ser/std/EnumSerializer;-><init>(Lcom/flurry/org/codehaus/jackson/map/util/EnumValues;)V

    return-object v2

    .line 45
    .end local v1    # "v":Lcom/flurry/org/codehaus/jackson/map/util/EnumValues;
    :cond_0
    invoke-static {p0, v0}, Lcom/flurry/org/codehaus/jackson/map/util/EnumValues;->constructFromName(Ljava/lang/Class;Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;)Lcom/flurry/org/codehaus/jackson/map/util/EnumValues;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public getEnumValues()Lcom/flurry/org/codehaus/jackson/map/util/EnumValues;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ser/std/EnumSerializer;->_values:Lcom/flurry/org/codehaus/jackson/map/util/EnumValues;

    return-object v0
.end method

.method public getSchema(Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;Ljava/lang/reflect/Type;)Lcom/flurry/org/codehaus/jackson/JsonNode;
    .locals 7
    .param p1, "provider"    # Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;
    .param p2, "typeHint"    # Ljava/lang/reflect/Type;

    .prologue
    const/4 v6, 0x1

    .line 66
    sget-object v5, Lcom/flurry/org/codehaus/jackson/map/SerializationConfig$Feature;->WRITE_ENUMS_USING_INDEX:Lcom/flurry/org/codehaus/jackson/map/SerializationConfig$Feature;

    invoke-virtual {p1, v5}, Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;->isEnabled(Lcom/flurry/org/codehaus/jackson/map/SerializationConfig$Feature;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 67
    const-string v5, "integer"

    invoke-virtual {p0, v5, v6}, Lcom/flurry/org/codehaus/jackson/map/ser/std/EnumSerializer;->createSchemaNode(Ljava/lang/String;Z)Lcom/flurry/org/codehaus/jackson/node/ObjectNode;

    move-result-object v2

    .line 79
    :cond_0
    return-object v2

    .line 69
    :cond_1
    const-string v5, "string"

    invoke-virtual {p0, v5, v6}, Lcom/flurry/org/codehaus/jackson/map/ser/std/EnumSerializer;->createSchemaNode(Ljava/lang/String;Z)Lcom/flurry/org/codehaus/jackson/node/ObjectNode;

    move-result-object v2

    .line 70
    .local v2, "objectNode":Lcom/flurry/org/codehaus/jackson/node/ObjectNode;
    if-eqz p2, :cond_0

    .line 71
    invoke-virtual {p1, p2}, Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;->constructType(Ljava/lang/reflect/Type;)Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v3

    .line 72
    .local v3, "type":Lcom/flurry/org/codehaus/jackson/type/JavaType;
    invoke-virtual {v3}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->isEnumType()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 73
    const-string v5, "enum"

    invoke-virtual {v2, v5}, Lcom/flurry/org/codehaus/jackson/node/ObjectNode;->putArray(Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/node/ArrayNode;

    move-result-object v0

    .line 74
    .local v0, "enumNode":Lcom/flurry/org/codehaus/jackson/node/ArrayNode;
    iget-object v5, p0, Lcom/flurry/org/codehaus/jackson/map/ser/std/EnumSerializer;->_values:Lcom/flurry/org/codehaus/jackson/map/util/EnumValues;

    invoke-virtual {v5}, Lcom/flurry/org/codehaus/jackson/map/util/EnumValues;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/flurry/org/codehaus/jackson/io/SerializedString;

    .line 75
    .local v4, "value":Lcom/flurry/org/codehaus/jackson/io/SerializedString;
    invoke-virtual {v4}, Lcom/flurry/org/codehaus/jackson/io/SerializedString;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/flurry/org/codehaus/jackson/node/ArrayNode;->add(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final serialize(Ljava/lang/Enum;Lcom/flurry/org/codehaus/jackson/JsonGenerator;Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;)V
    .locals 1
    .param p2, "jgen"    # Lcom/flurry/org/codehaus/jackson/JsonGenerator;
    .param p3, "provider"    # Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum",
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
    .line 55
    .local p1, "en":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    sget-object v0, Lcom/flurry/org/codehaus/jackson/map/SerializationConfig$Feature;->WRITE_ENUMS_USING_INDEX:Lcom/flurry/org/codehaus/jackson/map/SerializationConfig$Feature;

    invoke-virtual {p3, v0}, Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;->isEnabled(Lcom/flurry/org/codehaus/jackson/map/SerializationConfig$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/flurry/org/codehaus/jackson/JsonGenerator;->writeNumber(I)V

    .line 60
    :goto_0
    return-void

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ser/std/EnumSerializer;->_values:Lcom/flurry/org/codehaus/jackson/map/util/EnumValues;

    invoke-virtual {v0, p1}, Lcom/flurry/org/codehaus/jackson/map/util/EnumValues;->serializedValueFor(Ljava/lang/Enum;)Lcom/flurry/org/codehaus/jackson/io/SerializedString;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/flurry/org/codehaus/jackson/JsonGenerator;->writeString(Lcom/flurry/org/codehaus/jackson/SerializableString;)V

    goto :goto_0
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
    .line 24
    check-cast p1, Ljava/lang/Enum;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Lcom/flurry/org/codehaus/jackson/map/ser/std/EnumSerializer;->serialize(Ljava/lang/Enum;Lcom/flurry/org/codehaus/jackson/JsonGenerator;Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;)V

    return-void
.end method
