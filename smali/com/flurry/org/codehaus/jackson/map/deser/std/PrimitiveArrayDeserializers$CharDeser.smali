.class final Lcom/flurry/org/codehaus/jackson/map/deser/std/PrimitiveArrayDeserializers$CharDeser;
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
    name = "CharDeser"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/flurry/org/codehaus/jackson/map/deser/std/PrimitiveArrayDeserializers$Base",
        "<[C>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 163
    const-class v0, [C

    invoke-direct {p0, v0}, Lcom/flurry/org/codehaus/jackson/map/deser/std/PrimitiveArrayDeserializers$Base;-><init>(Ljava/lang/Class;)V

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
    .line 159
    invoke-virtual {p0, p1, p2}, Lcom/flurry/org/codehaus/jackson/map/deser/std/PrimitiveArrayDeserializers$CharDeser;->deserialize(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;)[C

    move-result-object v0

    return-object v0
.end method

.method public deserialize(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;)[C
    .locals 11
    .param p1, "jp"    # Lcom/flurry/org/codehaus/jackson/JsonParser;
    .param p2, "ctxt"    # Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 173
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getCurrentToken()Lcom/flurry/org/codehaus/jackson/JsonToken;

    move-result-object v7

    .line 174
    .local v7, "t":Lcom/flurry/org/codehaus/jackson/JsonToken;
    sget-object v8, Lcom/flurry/org/codehaus/jackson/JsonToken;->VALUE_STRING:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-ne v7, v8, :cond_0

    .line 176
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getTextCharacters()[C

    move-result-object v0

    .line 177
    .local v0, "buffer":[C
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getTextOffset()I

    move-result v3

    .line 178
    .local v3, "offset":I
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getTextLength()I

    move-result v1

    .line 180
    .local v1, "len":I
    new-array v4, v1, [C

    .line 181
    .local v4, "result":[C
    invoke-static {v0, v3, v4, v10, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 211
    .end local v0    # "buffer":[C
    .end local v1    # "len":I
    .end local v3    # "offset":I
    .end local v4    # "result":[C
    :goto_0
    return-object v4

    .line 184
    :cond_0
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->isExpectedStartArrayToken()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 186
    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v8, 0x40

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 187
    .local v5, "sb":Ljava/lang/StringBuilder;
    :goto_1
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->nextToken()Lcom/flurry/org/codehaus/jackson/JsonToken;

    move-result-object v7

    sget-object v8, Lcom/flurry/org/codehaus/jackson/JsonToken;->END_ARRAY:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-eq v7, v8, :cond_3

    .line 188
    sget-object v8, Lcom/flurry/org/codehaus/jackson/JsonToken;->VALUE_STRING:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-eq v7, v8, :cond_1

    .line 189
    sget-object v8, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-virtual {p2, v8}, Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;->mappingException(Ljava/lang/Class;)Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;

    move-result-object v8

    throw v8

    .line 191
    :cond_1
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v6

    .line 192
    .local v6, "str":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x1

    if-eq v8, v9, :cond_2

    .line 193
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Can not convert a JSON String of length "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " into a char element of char array"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {p1, v8}, Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;->from(Lcom/flurry/org/codehaus/jackson/JsonParser;Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;

    move-result-object v8

    throw v8

    .line 195
    :cond_2
    invoke-virtual {v6, v10}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 197
    .end local v6    # "str":Ljava/lang/String;
    :cond_3
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    goto :goto_0

    .line 200
    .end local v5    # "sb":Ljava/lang/StringBuilder;
    :cond_4
    sget-object v8, Lcom/flurry/org/codehaus/jackson/JsonToken;->VALUE_EMBEDDED_OBJECT:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-ne v7, v8, :cond_8

    .line 201
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getEmbeddedObject()Ljava/lang/Object;

    move-result-object v2

    .line 202
    .local v2, "ob":Ljava/lang/Object;
    if-nez v2, :cond_5

    const/4 v4, 0x0

    goto :goto_0

    .line 203
    :cond_5
    instance-of v8, v2, [C

    if-eqz v8, :cond_6

    .line 204
    check-cast v2, [C

    .end local v2    # "ob":Ljava/lang/Object;
    check-cast v2, [C

    move-object v4, v2

    goto :goto_0

    .line 206
    .restart local v2    # "ob":Ljava/lang/Object;
    :cond_6
    instance-of v8, v2, Ljava/lang/String;

    if-eqz v8, :cond_7

    .line 207
    check-cast v2, Ljava/lang/String;

    .end local v2    # "ob":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    goto :goto_0

    .line 210
    .restart local v2    # "ob":Ljava/lang/Object;
    :cond_7
    instance-of v8, v2, [B

    if-eqz v8, :cond_8

    .line 211
    invoke-static {}, Lcom/flurry/org/codehaus/jackson/Base64Variants;->getDefaultVariant()Lcom/flurry/org/codehaus/jackson/Base64Variant;

    move-result-object v8

    check-cast v2, [B

    .end local v2    # "ob":Ljava/lang/Object;
    check-cast v2, [B

    invoke-virtual {v8, v2, v10}, Lcom/flurry/org/codehaus/jackson/Base64Variant;->encode([BZ)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    goto/16 :goto_0

    .line 215
    :cond_8
    iget-object v8, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/PrimitiveArrayDeserializers$CharDeser;->_valueClass:Ljava/lang/Class;

    invoke-virtual {p2, v8}, Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;->mappingException(Ljava/lang/Class;)Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;

    move-result-object v8

    throw v8
.end method
