.class public final Lcom/flurry/org/codehaus/jackson/map/deser/StdDeserializer$StringDeserializer;
.super Lcom/flurry/org/codehaus/jackson/map/deser/std/StdScalarDeserializer;
.source "StdDeserializer.java"


# annotations
.annotation runtime Lcom/flurry/org/codehaus/jackson/map/annotate/JacksonStdImpl;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/org/codehaus/jackson/map/deser/StdDeserializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StringDeserializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/flurry/org/codehaus/jackson/map/deser/std/StdScalarDeserializer",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    const-class v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdScalarDeserializer;-><init>(Ljava/lang/Class;)V

    return-void
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
    .line 53
    invoke-virtual {p0, p1, p2}, Lcom/flurry/org/codehaus/jackson/map/deser/StdDeserializer$StringDeserializer;->deserialize(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public deserialize(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/String;
    .locals 4
    .param p1, "jp"    # Lcom/flurry/org/codehaus/jackson/JsonParser;
    .param p2, "ctxt"    # Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 64
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getCurrentToken()Lcom/flurry/org/codehaus/jackson/JsonToken;

    move-result-object v0

    .line 65
    .local v0, "curr":Lcom/flurry/org/codehaus/jackson/JsonToken;
    sget-object v2, Lcom/flurry/org/codehaus/jackson/JsonToken;->VALUE_STRING:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-ne v0, v2, :cond_0

    .line 66
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v2

    .line 79
    :goto_0
    return-object v2

    .line 68
    :cond_0
    sget-object v2, Lcom/flurry/org/codehaus/jackson/JsonToken;->VALUE_EMBEDDED_OBJECT:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-ne v0, v2, :cond_3

    .line 69
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getEmbeddedObject()Ljava/lang/Object;

    move-result-object v1

    .line 70
    .local v1, "ob":Ljava/lang/Object;
    if-nez v1, :cond_1

    .line 71
    const/4 v2, 0x0

    goto :goto_0

    .line 73
    :cond_1
    instance-of v2, v1, [B

    if-eqz v2, :cond_2

    .line 74
    invoke-static {}, Lcom/flurry/org/codehaus/jackson/Base64Variants;->getDefaultVariant()Lcom/flurry/org/codehaus/jackson/Base64Variant;

    move-result-object v2

    check-cast v1, [B

    .end local v1    # "ob":Ljava/lang/Object;
    check-cast v1, [B

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/flurry/org/codehaus/jackson/Base64Variant;->encode([BZ)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 76
    .restart local v1    # "ob":Ljava/lang/Object;
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 78
    .end local v1    # "ob":Ljava/lang/Object;
    :cond_3
    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/JsonToken;->isScalarValue()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 79
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 81
    :cond_4
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/deser/StdDeserializer$StringDeserializer;->_valueClass:Ljava/lang/Class;

    invoke-virtual {p2, v2, v0}, Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;->mappingException(Ljava/lang/Class;Lcom/flurry/org/codehaus/jackson/JsonToken;)Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;

    move-result-object v2

    throw v2
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
    .line 53
    invoke-virtual {p0, p1, p2, p3}, Lcom/flurry/org/codehaus/jackson/map/deser/StdDeserializer$StringDeserializer;->deserializeWithType(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;Lcom/flurry/org/codehaus/jackson/map/TypeDeserializer;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public deserializeWithType(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;Lcom/flurry/org/codehaus/jackson/map/TypeDeserializer;)Ljava/lang/String;
    .locals 1
    .param p1, "jp"    # Lcom/flurry/org/codehaus/jackson/JsonParser;
    .param p2, "ctxt"    # Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;
    .param p3, "typeDeserializer"    # Lcom/flurry/org/codehaus/jackson/map/TypeDeserializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 90
    invoke-virtual {p0, p1, p2}, Lcom/flurry/org/codehaus/jackson/map/deser/StdDeserializer$StringDeserializer;->deserialize(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
