.class final Lcom/flurry/org/codehaus/jackson/map/deser/std/JsonNodeDeserializer$ArrayDeserializer;
.super Lcom/flurry/org/codehaus/jackson/map/deser/std/BaseNodeDeserializer;
.source "JsonNodeDeserializer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/org/codehaus/jackson/map/deser/std/JsonNodeDeserializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ArrayDeserializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/flurry/org/codehaus/jackson/map/deser/std/BaseNodeDeserializer",
        "<",
        "Lcom/flurry/org/codehaus/jackson/node/ArrayNode;",
        ">;"
    }
.end annotation


# static fields
.field protected static final _instance:Lcom/flurry/org/codehaus/jackson/map/deser/std/JsonNodeDeserializer$ArrayDeserializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 101
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/deser/std/JsonNodeDeserializer$ArrayDeserializer;

    invoke-direct {v0}, Lcom/flurry/org/codehaus/jackson/map/deser/std/JsonNodeDeserializer$ArrayDeserializer;-><init>()V

    sput-object v0, Lcom/flurry/org/codehaus/jackson/map/deser/std/JsonNodeDeserializer$ArrayDeserializer;->_instance:Lcom/flurry/org/codehaus/jackson/map/deser/std/JsonNodeDeserializer$ArrayDeserializer;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 104
    const-class v0, Lcom/flurry/org/codehaus/jackson/node/ArrayNode;

    invoke-direct {p0, v0}, Lcom/flurry/org/codehaus/jackson/map/deser/std/BaseNodeDeserializer;-><init>(Ljava/lang/Class;)V

    .line 105
    return-void
.end method

.method public static getInstance()Lcom/flurry/org/codehaus/jackson/map/deser/std/JsonNodeDeserializer$ArrayDeserializer;
    .locals 1

    .prologue
    .line 107
    sget-object v0, Lcom/flurry/org/codehaus/jackson/map/deser/std/JsonNodeDeserializer$ArrayDeserializer;->_instance:Lcom/flurry/org/codehaus/jackson/map/deser/std/JsonNodeDeserializer$ArrayDeserializer;

    return-object v0
.end method


# virtual methods
.method public deserialize(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;)Lcom/flurry/org/codehaus/jackson/node/ArrayNode;
    .locals 1
    .param p1, "jp"    # Lcom/flurry/org/codehaus/jackson/JsonParser;
    .param p2, "ctxt"    # Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 113
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->isExpectedStartArrayToken()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    invoke-virtual {p2}, Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;->getNodeFactory()Lcom/flurry/org/codehaus/jackson/node/JsonNodeFactory;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/flurry/org/codehaus/jackson/map/deser/std/JsonNodeDeserializer$ArrayDeserializer;->deserializeArray(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;Lcom/flurry/org/codehaus/jackson/node/JsonNodeFactory;)Lcom/flurry/org/codehaus/jackson/node/ArrayNode;

    move-result-object v0

    return-object v0

    .line 116
    :cond_0
    const-class v0, Lcom/flurry/org/codehaus/jackson/node/ArrayNode;

    invoke-virtual {p2, v0}, Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;->mappingException(Ljava/lang/Class;)Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;

    move-result-object v0

    throw v0
.end method

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
    .line 98
    invoke-virtual {p0, p1, p2}, Lcom/flurry/org/codehaus/jackson/map/deser/std/JsonNodeDeserializer$ArrayDeserializer;->deserialize(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;)Lcom/flurry/org/codehaus/jackson/node/ArrayNode;

    move-result-object v0

    return-object v0
.end method
