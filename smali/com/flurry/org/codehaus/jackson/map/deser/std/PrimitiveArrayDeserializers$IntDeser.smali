.class final Lcom/flurry/org/codehaus/jackson/map/deser/std/PrimitiveArrayDeserializers$IntDeser;
.super Lcom/flurry/org/codehaus/jackson/map/deser/std/PrimitiveArrayDeserializers$Base;
.source "PrimitiveArrayDeserializers.java"


# annotations
.annotation runtime Lcom/flurry/org/codehaus/jackson/map/annotate/JacksonStdImpl;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/org/codehaus/jackson/map/deser/std/PrimitiveArrayDeserializers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "IntDeser"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/flurry/org/codehaus/jackson/map/deser/std/PrimitiveArrayDeserializers$Base",
        "<[I>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 406
    const-class v0, [I

    invoke-direct {p0, v0}, Lcom/flurry/org/codehaus/jackson/map/deser/std/PrimitiveArrayDeserializers$Base;-><init>(Ljava/lang/Class;)V

    return-void
.end method

.method private final handleNonArray(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;)[I
    .locals 3
    .param p1, "jp"    # Lcom/flurry/org/codehaus/jackson/JsonParser;
    .param p2, "ctxt"    # Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 435
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getCurrentToken()Lcom/flurry/org/codehaus/jackson/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/flurry/org/codehaus/jackson/JsonToken;->VALUE_STRING:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;->ACCEPT_EMPTY_STRING_AS_NULL_OBJECT:Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;

    invoke-virtual {p2, v0}, Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;->isEnabled(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 437
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 438
    const/4 v0, 0x0

    .line 444
    :goto_0
    return-object v0

    .line 441
    :cond_0
    sget-object v0, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;->ACCEPT_SINGLE_VALUE_AS_ARRAY:Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;

    invoke-virtual {p2, v0}, Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;->isEnabled(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 442
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/PrimitiveArrayDeserializers$IntDeser;->_valueClass:Ljava/lang/Class;

    invoke-virtual {p2, v0}, Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;->mappingException(Ljava/lang/Class;)Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;

    move-result-object v0

    throw v0

    .line 444
    :cond_1
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/flurry/org/codehaus/jackson/map/deser/std/PrimitiveArrayDeserializers$IntDeser;->_parseIntPrimitive(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;)I

    move-result v2

    aput v2, v0, v1

    goto :goto_0
.end method


# virtual methods
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
    .line 402
    invoke-virtual {p0, p1, p2}, Lcom/flurry/org/codehaus/jackson/map/deser/std/PrimitiveArrayDeserializers$IntDeser;->deserialize(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;)[I

    move-result-object v0

    return-object v0
.end method

.method public deserialize(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;)[I
    .locals 7
    .param p1, "jp"    # Lcom/flurry/org/codehaus/jackson/JsonParser;
    .param p2, "ctxt"    # Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 412
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->isExpectedStartArrayToken()Z

    move-result v5

    if-nez v5, :cond_0

    .line 413
    invoke-direct {p0, p1, p2}, Lcom/flurry/org/codehaus/jackson/map/deser/std/PrimitiveArrayDeserializers$IntDeser;->handleNonArray(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;)[I

    move-result-object v5

    .line 428
    :goto_0
    return-object v5

    .line 415
    :cond_0
    invoke-virtual {p2}, Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;->getArrayBuilders()Lcom/flurry/org/codehaus/jackson/map/util/ArrayBuilders;

    move-result-object v5

    invoke-virtual {v5}, Lcom/flurry/org/codehaus/jackson/map/util/ArrayBuilders;->getIntBuilder()Lcom/flurry/org/codehaus/jackson/map/util/ArrayBuilders$IntBuilder;

    move-result-object v0

    .line 416
    .local v0, "builder":Lcom/flurry/org/codehaus/jackson/map/util/ArrayBuilders$IntBuilder;
    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/map/util/ArrayBuilders$IntBuilder;->resetAndStart()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    .line 417
    .local v1, "chunk":[I
    const/4 v2, 0x0

    .line 419
    .local v2, "ix":I
    :goto_1
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->nextToken()Lcom/flurry/org/codehaus/jackson/JsonToken;

    move-result-object v5

    sget-object v6, Lcom/flurry/org/codehaus/jackson/JsonToken;->END_ARRAY:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-eq v5, v6, :cond_2

    .line 421
    invoke-virtual {p0, p1, p2}, Lcom/flurry/org/codehaus/jackson/map/deser/std/PrimitiveArrayDeserializers$IntDeser;->_parseIntPrimitive(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;)I

    move-result v4

    .line 422
    .local v4, "value":I
    array-length v5, v1

    if-lt v2, v5, :cond_1

    .line 423
    invoke-virtual {v0, v1, v2}, Lcom/flurry/org/codehaus/jackson/map/util/ArrayBuilders$IntBuilder;->appendCompletedChunk(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "chunk":[I
    check-cast v1, [I

    .line 424
    .restart local v1    # "chunk":[I
    const/4 v2, 0x0

    .line 426
    :cond_1
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "ix":I
    .local v3, "ix":I
    aput v4, v1, v2

    move v2, v3

    .line 427
    .end local v3    # "ix":I
    .restart local v2    # "ix":I
    goto :goto_1

    .line 428
    .end local v4    # "value":I
    :cond_2
    invoke-virtual {v0, v1, v2}, Lcom/flurry/org/codehaus/jackson/map/util/ArrayBuilders$IntBuilder;->completeAndClearBuffer(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [I

    goto :goto_0
.end method
