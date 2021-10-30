.class final Lcom/flurry/org/codehaus/jackson/map/deser/std/PrimitiveArrayDeserializers$ShortDeser;
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
    name = "ShortDeser"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/flurry/org/codehaus/jackson/map/deser/std/PrimitiveArrayDeserializers$Base",
        "<[S>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 361
    const-class v0, [S

    invoke-direct {p0, v0}, Lcom/flurry/org/codehaus/jackson/map/deser/std/PrimitiveArrayDeserializers$Base;-><init>(Ljava/lang/Class;)V

    return-void
.end method

.method private final handleNonArray(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;)[S
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
    .line 389
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getCurrentToken()Lcom/flurry/org/codehaus/jackson/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/flurry/org/codehaus/jackson/JsonToken;->VALUE_STRING:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;->ACCEPT_EMPTY_STRING_AS_NULL_OBJECT:Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;

    invoke-virtual {p2, v0}, Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;->isEnabled(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 391
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 392
    const/4 v0, 0x0

    .line 398
    :goto_0
    return-object v0

    .line 395
    :cond_0
    sget-object v0, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;->ACCEPT_SINGLE_VALUE_AS_ARRAY:Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;

    invoke-virtual {p2, v0}, Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;->isEnabled(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 396
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/PrimitiveArrayDeserializers$ShortDeser;->_valueClass:Ljava/lang/Class;

    invoke-virtual {p2, v0}, Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;->mappingException(Ljava/lang/Class;)Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;

    move-result-object v0

    throw v0

    .line 398
    :cond_1
    const/4 v0, 0x1

    new-array v0, v0, [S

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/flurry/org/codehaus/jackson/map/deser/std/PrimitiveArrayDeserializers$ShortDeser;->_parseShortPrimitive(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;)S

    move-result v2

    aput-short v2, v0, v1

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
    .line 357
    invoke-virtual {p0, p1, p2}, Lcom/flurry/org/codehaus/jackson/map/deser/std/PrimitiveArrayDeserializers$ShortDeser;->deserialize(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;)[S

    move-result-object v0

    return-object v0
.end method

.method public deserialize(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;)[S
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
    .line 367
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->isExpectedStartArrayToken()Z

    move-result v5

    if-nez v5, :cond_0

    .line 368
    invoke-direct {p0, p1, p2}, Lcom/flurry/org/codehaus/jackson/map/deser/std/PrimitiveArrayDeserializers$ShortDeser;->handleNonArray(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;)[S

    move-result-object v5

    .line 382
    :goto_0
    return-object v5

    .line 370
    :cond_0
    invoke-virtual {p2}, Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;->getArrayBuilders()Lcom/flurry/org/codehaus/jackson/map/util/ArrayBuilders;

    move-result-object v5

    invoke-virtual {v5}, Lcom/flurry/org/codehaus/jackson/map/util/ArrayBuilders;->getShortBuilder()Lcom/flurry/org/codehaus/jackson/map/util/ArrayBuilders$ShortBuilder;

    move-result-object v0

    .line 371
    .local v0, "builder":Lcom/flurry/org/codehaus/jackson/map/util/ArrayBuilders$ShortBuilder;
    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/map/util/ArrayBuilders$ShortBuilder;->resetAndStart()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [S

    .line 372
    .local v1, "chunk":[S
    const/4 v2, 0x0

    .line 374
    .local v2, "ix":I
    :goto_1
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->nextToken()Lcom/flurry/org/codehaus/jackson/JsonToken;

    move-result-object v5

    sget-object v6, Lcom/flurry/org/codehaus/jackson/JsonToken;->END_ARRAY:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-eq v5, v6, :cond_2

    .line 375
    invoke-virtual {p0, p1, p2}, Lcom/flurry/org/codehaus/jackson/map/deser/std/PrimitiveArrayDeserializers$ShortDeser;->_parseShortPrimitive(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;)S

    move-result v4

    .line 376
    .local v4, "value":S
    array-length v5, v1

    if-lt v2, v5, :cond_1

    .line 377
    invoke-virtual {v0, v1, v2}, Lcom/flurry/org/codehaus/jackson/map/util/ArrayBuilders$ShortBuilder;->appendCompletedChunk(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "chunk":[S
    check-cast v1, [S

    .line 378
    .restart local v1    # "chunk":[S
    const/4 v2, 0x0

    .line 380
    :cond_1
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "ix":I
    .local v3, "ix":I
    aput-short v4, v1, v2

    move v2, v3

    .line 381
    .end local v3    # "ix":I
    .restart local v2    # "ix":I
    goto :goto_1

    .line 382
    .end local v4    # "value":S
    :cond_2
    invoke-virtual {v0, v1, v2}, Lcom/flurry/org/codehaus/jackson/map/util/ArrayBuilders$ShortBuilder;->completeAndClearBuffer(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [S

    goto :goto_0
.end method
