.class public Lcom/flurry/org/codehaus/jackson/map/deser/std/JsonNodeDeserializer;
.super Lcom/flurry/org/codehaus/jackson/map/deser/std/BaseNodeDeserializer;
.source "JsonNodeDeserializer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/org/codehaus/jackson/map/deser/std/JsonNodeDeserializer$1;,
        Lcom/flurry/org/codehaus/jackson/map/deser/std/JsonNodeDeserializer$ArrayDeserializer;,
        Lcom/flurry/org/codehaus/jackson/map/deser/std/JsonNodeDeserializer$ObjectDeserializer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/flurry/org/codehaus/jackson/map/deser/std/BaseNodeDeserializer",
        "<",
        "Lcom/flurry/org/codehaus/jackson/JsonNode;",
        ">;"
    }
.end annotation


# static fields
.field private static final instance:Lcom/flurry/org/codehaus/jackson/map/deser/std/JsonNodeDeserializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/deser/std/JsonNodeDeserializer;

    invoke-direct {v0}, Lcom/flurry/org/codehaus/jackson/map/deser/std/JsonNodeDeserializer;-><init>()V

    sput-object v0, Lcom/flurry/org/codehaus/jackson/map/deser/std/JsonNodeDeserializer;->instance:Lcom/flurry/org/codehaus/jackson/map/deser/std/JsonNodeDeserializer;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/flurry/org/codehaus/jackson/JsonNode;

    invoke-direct {p0, v0}, Lcom/flurry/org/codehaus/jackson/map/deser/std/BaseNodeDeserializer;-><init>(Ljava/lang/Class;)V

    return-void
.end method

.method public static getDeserializer(Ljava/lang/Class;)Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer",
            "<+",
            "Lcom/flurry/org/codehaus/jackson/JsonNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 31
    .local p0, "nodeClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Lcom/flurry/org/codehaus/jackson/node/ObjectNode;

    if-ne p0, v0, :cond_0

    .line 32
    invoke-static {}, Lcom/flurry/org/codehaus/jackson/map/deser/std/JsonNodeDeserializer$ObjectDeserializer;->getInstance()Lcom/flurry/org/codehaus/jackson/map/deser/std/JsonNodeDeserializer$ObjectDeserializer;

    move-result-object v0

    .line 38
    :goto_0
    return-object v0

    .line 34
    :cond_0
    const-class v0, Lcom/flurry/org/codehaus/jackson/node/ArrayNode;

    if-ne p0, v0, :cond_1

    .line 35
    invoke-static {}, Lcom/flurry/org/codehaus/jackson/map/deser/std/JsonNodeDeserializer$ArrayDeserializer;->getInstance()Lcom/flurry/org/codehaus/jackson/map/deser/std/JsonNodeDeserializer$ArrayDeserializer;

    move-result-object v0

    goto :goto_0

    .line 38
    :cond_1
    sget-object v0, Lcom/flurry/org/codehaus/jackson/map/deser/std/JsonNodeDeserializer;->instance:Lcom/flurry/org/codehaus/jackson/map/deser/std/JsonNodeDeserializer;

    goto :goto_0
.end method


# virtual methods
.method public deserialize(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;)Lcom/flurry/org/codehaus/jackson/JsonNode;
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
    .line 56
    sget-object v0, Lcom/flurry/org/codehaus/jackson/map/deser/std/JsonNodeDeserializer$1;->$SwitchMap$org$codehaus$jackson$JsonToken:[I

    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getCurrentToken()Lcom/flurry/org/codehaus/jackson/JsonToken;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/org/codehaus/jackson/JsonToken;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 62
    invoke-virtual {p2}, Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;->getNodeFactory()Lcom/flurry/org/codehaus/jackson/node/JsonNodeFactory;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/flurry/org/codehaus/jackson/map/deser/std/JsonNodeDeserializer;->deserializeAny(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;Lcom/flurry/org/codehaus/jackson/node/JsonNodeFactory;)Lcom/flurry/org/codehaus/jackson/JsonNode;

    move-result-object v0

    :goto_0
    return-object v0

    .line 58
    :pswitch_0
    invoke-virtual {p2}, Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;->getNodeFactory()Lcom/flurry/org/codehaus/jackson/node/JsonNodeFactory;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/flurry/org/codehaus/jackson/map/deser/std/JsonNodeDeserializer;->deserializeObject(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;Lcom/flurry/org/codehaus/jackson/node/JsonNodeFactory;)Lcom/flurry/org/codehaus/jackson/node/ObjectNode;

    move-result-object v0

    goto :goto_0

    .line 60
    :pswitch_1
    invoke-virtual {p2}, Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;->getNodeFactory()Lcom/flurry/org/codehaus/jackson/node/JsonNodeFactory;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/flurry/org/codehaus/jackson/map/deser/std/JsonNodeDeserializer;->deserializeArray(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;Lcom/flurry/org/codehaus/jackson/node/JsonNodeFactory;)Lcom/flurry/org/codehaus/jackson/node/ArrayNode;

    move-result-object v0

    goto :goto_0

    .line 56
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
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
    .line 15
    invoke-virtual {p0, p1, p2}, Lcom/flurry/org/codehaus/jackson/map/deser/std/JsonNodeDeserializer;->deserialize(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;)Lcom/flurry/org/codehaus/jackson/JsonNode;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic deserializeWithType(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;Lcom/flurry/org/codehaus/jackson/map/TypeDeserializer;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lcom/flurry/org/codehaus/jackson/JsonParser;
    .param p2, "x1"    # Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;
    .param p3, "x2"    # Lcom/flurry/org/codehaus/jackson/map/TypeDeserializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 15
    invoke-super {p0, p1, p2, p3}, Lcom/flurry/org/codehaus/jackson/map/deser/std/BaseNodeDeserializer;->deserializeWithType(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;Lcom/flurry/org/codehaus/jackson/map/TypeDeserializer;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
