.class final Lcom/flurry/org/codehaus/jackson/map/deser/std/JsonNodeDeserializer$ObjectDeserializer;
.super Lcom/flurry/org/codehaus/jackson/map/deser/std/BaseNodeDeserializer;
.source "JsonNodeDeserializer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/org/codehaus/jackson/map/deser/std/JsonNodeDeserializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ObjectDeserializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/flurry/org/codehaus/jackson/map/deser/std/BaseNodeDeserializer",
        "<",
        "Lcom/flurry/org/codehaus/jackson/node/ObjectNode;",
        ">;"
    }
.end annotation


# static fields
.field protected static final _instance:Lcom/flurry/org/codehaus/jackson/map/deser/std/JsonNodeDeserializer$ObjectDeserializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 75
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/deser/std/JsonNodeDeserializer$ObjectDeserializer;

    invoke-direct {v0}, Lcom/flurry/org/codehaus/jackson/map/deser/std/JsonNodeDeserializer$ObjectDeserializer;-><init>()V

    sput-object v0, Lcom/flurry/org/codehaus/jackson/map/deser/std/JsonNodeDeserializer$ObjectDeserializer;->_instance:Lcom/flurry/org/codehaus/jackson/map/deser/std/JsonNodeDeserializer$ObjectDeserializer;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 78
    const-class v0, Lcom/flurry/org/codehaus/jackson/node/ObjectNode;

    invoke-direct {p0, v0}, Lcom/flurry/org/codehaus/jackson/map/deser/std/BaseNodeDeserializer;-><init>(Ljava/lang/Class;)V

    .line 79
    return-void
.end method

.method public static getInstance()Lcom/flurry/org/codehaus/jackson/map/deser/std/JsonNodeDeserializer$ObjectDeserializer;
    .locals 1

    .prologue
    .line 81
    sget-object v0, Lcom/flurry/org/codehaus/jackson/map/deser/std/JsonNodeDeserializer$ObjectDeserializer;->_instance:Lcom/flurry/org/codehaus/jackson/map/deser/std/JsonNodeDeserializer$ObjectDeserializer;

    return-object v0
.end method


# virtual methods
.method public deserialize(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;)Lcom/flurry/org/codehaus/jackson/node/ObjectNode;
    .locals 2
    .param p1, "jp"    # Lcom/flurry/org/codehaus/jackson/JsonParser;
    .param p2, "ctxt"    # Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 87
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getCurrentToken()Lcom/flurry/org/codehaus/jackson/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/flurry/org/codehaus/jackson/JsonToken;->START_OBJECT:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_0

    .line 88
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->nextToken()Lcom/flurry/org/codehaus/jackson/JsonToken;

    .line 89
    invoke-virtual {p2}, Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;->getNodeFactory()Lcom/flurry/org/codehaus/jackson/node/JsonNodeFactory;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/flurry/org/codehaus/jackson/map/deser/std/JsonNodeDeserializer$ObjectDeserializer;->deserializeObject(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;Lcom/flurry/org/codehaus/jackson/node/JsonNodeFactory;)Lcom/flurry/org/codehaus/jackson/node/ObjectNode;

    move-result-object v0

    .line 92
    :goto_0
    return-object v0

    .line 91
    :cond_0
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getCurrentToken()Lcom/flurry/org/codehaus/jackson/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/flurry/org/codehaus/jackson/JsonToken;->FIELD_NAME:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_1

    .line 92
    invoke-virtual {p2}, Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;->getNodeFactory()Lcom/flurry/org/codehaus/jackson/node/JsonNodeFactory;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/flurry/org/codehaus/jackson/map/deser/std/JsonNodeDeserializer$ObjectDeserializer;->deserializeObject(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;Lcom/flurry/org/codehaus/jackson/node/JsonNodeFactory;)Lcom/flurry/org/codehaus/jackson/node/ObjectNode;

    move-result-object v0

    goto :goto_0

    .line 94
    :cond_1
    const-class v0, Lcom/flurry/org/codehaus/jackson/node/ObjectNode;

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
    .line 72
    invoke-virtual {p0, p1, p2}, Lcom/flurry/org/codehaus/jackson/map/deser/std/JsonNodeDeserializer$ObjectDeserializer;->deserialize(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;)Lcom/flurry/org/codehaus/jackson/node/ObjectNode;

    move-result-object v0

    return-object v0
.end method
