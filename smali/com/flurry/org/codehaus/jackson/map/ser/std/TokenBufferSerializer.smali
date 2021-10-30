.class public Lcom/flurry/org/codehaus/jackson/map/ser/std/TokenBufferSerializer;
.super Lcom/flurry/org/codehaus/jackson/map/ser/std/SerializerBase;
.source "TokenBufferSerializer.java"


# annotations
.annotation runtime Lcom/flurry/org/codehaus/jackson/map/annotate/JacksonStdImpl;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/flurry/org/codehaus/jackson/map/ser/std/SerializerBase",
        "<",
        "Lcom/flurry/org/codehaus/jackson/util/TokenBuffer;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/flurry/org/codehaus/jackson/util/TokenBuffer;

    invoke-direct {p0, v0}, Lcom/flurry/org/codehaus/jackson/map/ser/std/SerializerBase;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public getSchema(Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;Ljava/lang/reflect/Type;)Lcom/flurry/org/codehaus/jackson/JsonNode;
    .locals 2
    .param p1, "provider"    # Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;
    .param p2, "typeHint"    # Ljava/lang/reflect/Type;

    .prologue
    .line 64
    const-string v0, "any"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/flurry/org/codehaus/jackson/map/ser/std/TokenBufferSerializer;->createSchemaNode(Ljava/lang/String;Z)Lcom/flurry/org/codehaus/jackson/node/ObjectNode;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/flurry/org/codehaus/jackson/util/TokenBuffer;Lcom/flurry/org/codehaus/jackson/JsonGenerator;Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;)V
    .locals 0
    .param p1, "value"    # Lcom/flurry/org/codehaus/jackson/util/TokenBuffer;
    .param p2, "jgen"    # Lcom/flurry/org/codehaus/jackson/JsonGenerator;
    .param p3, "provider"    # Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 32
    invoke-virtual {p1, p2}, Lcom/flurry/org/codehaus/jackson/util/TokenBuffer;->serialize(Lcom/flurry/org/codehaus/jackson/JsonGenerator;)V

    .line 33
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
    .line 22
    check-cast p1, Lcom/flurry/org/codehaus/jackson/util/TokenBuffer;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Lcom/flurry/org/codehaus/jackson/map/ser/std/TokenBufferSerializer;->serialize(Lcom/flurry/org/codehaus/jackson/util/TokenBuffer;Lcom/flurry/org/codehaus/jackson/JsonGenerator;Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;)V

    return-void
.end method

.method public final serializeWithType(Lcom/flurry/org/codehaus/jackson/util/TokenBuffer;Lcom/flurry/org/codehaus/jackson/JsonGenerator;Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;)V
    .locals 0
    .param p1, "value"    # Lcom/flurry/org/codehaus/jackson/util/TokenBuffer;
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
    .line 52
    invoke-virtual {p4, p1, p2}, Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;->writeTypePrefixForScalar(Ljava/lang/Object;Lcom/flurry/org/codehaus/jackson/JsonGenerator;)V

    .line 53
    invoke-virtual {p0, p1, p2, p3}, Lcom/flurry/org/codehaus/jackson/map/ser/std/TokenBufferSerializer;->serialize(Lcom/flurry/org/codehaus/jackson/util/TokenBuffer;Lcom/flurry/org/codehaus/jackson/JsonGenerator;Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;)V

    .line 54
    invoke-virtual {p4, p1, p2}, Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;->writeTypeSuffixForScalar(Ljava/lang/Object;Lcom/flurry/org/codehaus/jackson/JsonGenerator;)V

    .line 55
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
    .line 22
    check-cast p1, Lcom/flurry/org/codehaus/jackson/util/TokenBuffer;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/flurry/org/codehaus/jackson/map/ser/std/TokenBufferSerializer;->serializeWithType(Lcom/flurry/org/codehaus/jackson/util/TokenBuffer;Lcom/flurry/org/codehaus/jackson/JsonGenerator;Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;)V

    return-void
.end method
