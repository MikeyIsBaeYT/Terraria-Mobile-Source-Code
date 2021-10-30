.class public final Lcom/flurry/org/codehaus/jackson/map/ser/std/StdArraySerializers$LongArraySerializer;
.super Lcom/flurry/org/codehaus/jackson/map/ser/std/StdArraySerializers$ArraySerializerBase;
.source "StdArraySerializers.java"


# annotations
.annotation runtime Lcom/flurry/org/codehaus/jackson/map/annotate/JacksonStdImpl;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/org/codehaus/jackson/map/ser/std/StdArraySerializers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LongArraySerializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/flurry/org/codehaus/jackson/map/ser/std/StdArraySerializers$ArraySerializerBase",
        "<[J>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 387
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/flurry/org/codehaus/jackson/map/ser/std/StdArraySerializers$LongArraySerializer;-><init>(Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;)V

    return-void
.end method

.method public constructor <init>(Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;)V
    .locals 2
    .param p1, "vts"    # Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;

    .prologue
    .line 388
    const-class v0, [J

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/flurry/org/codehaus/jackson/map/ser/std/StdArraySerializers$ArraySerializerBase;-><init>(Ljava/lang/Class;Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)V

    return-void
.end method


# virtual methods
.method public _withValueTypeSerializer(Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;)Lcom/flurry/org/codehaus/jackson/map/ser/std/ContainerSerializerBase;
    .locals 1
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
    .line 392
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/ser/std/StdArraySerializers$LongArraySerializer;

    invoke-direct {v0, p1}, Lcom/flurry/org/codehaus/jackson/map/ser/std/StdArraySerializers$LongArraySerializer;-><init>(Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;)V

    return-object v0
.end method

.method public getSchema(Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;Ljava/lang/reflect/Type;)Lcom/flurry/org/codehaus/jackson/JsonNode;
    .locals 4
    .param p1, "provider"    # Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;
    .param p2, "typeHint"    # Ljava/lang/reflect/Type;

    .prologue
    const/4 v3, 0x1

    .line 407
    const-string v1, "array"

    invoke-virtual {p0, v1, v3}, Lcom/flurry/org/codehaus/jackson/map/ser/std/StdArraySerializers$LongArraySerializer;->createSchemaNode(Ljava/lang/String;Z)Lcom/flurry/org/codehaus/jackson/node/ObjectNode;

    move-result-object v0

    .line 408
    .local v0, "o":Lcom/flurry/org/codehaus/jackson/node/ObjectNode;
    const-string v1, "items"

    const-string v2, "number"

    invoke-virtual {p0, v2, v3}, Lcom/flurry/org/codehaus/jackson/map/ser/std/StdArraySerializers$LongArraySerializer;->createSchemaNode(Ljava/lang/String;Z)Lcom/flurry/org/codehaus/jackson/node/ObjectNode;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/flurry/org/codehaus/jackson/node/ObjectNode;->put(Ljava/lang/String;Lcom/flurry/org/codehaus/jackson/JsonNode;)Lcom/flurry/org/codehaus/jackson/JsonNode;

    .line 409
    return-object v0
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
    .line 383
    check-cast p1, [J

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Lcom/flurry/org/codehaus/jackson/map/ser/std/StdArraySerializers$LongArraySerializer;->serializeContents([JLcom/flurry/org/codehaus/jackson/JsonGenerator;Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;)V

    return-void
.end method

.method public serializeContents([JLcom/flurry/org/codehaus/jackson/JsonGenerator;Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;)V
    .locals 4
    .param p1, "value"    # [J
    .param p2, "jgen"    # Lcom/flurry/org/codehaus/jackson/JsonGenerator;
    .param p3, "provider"    # Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 399
    const/4 v0, 0x0

    .local v0, "i":I
    array-length v1, p1

    .local v1, "len":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 400
    aget-wide v2, p1, v0

    invoke-virtual {p2, v2, v3}, Lcom/flurry/org/codehaus/jackson/JsonGenerator;->writeNumber(J)V

    .line 399
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 402
    :cond_0
    return-void
.end method
