.class public Lcom/flurry/org/codehaus/jackson/map/deser/std/FromStringDeserializer$UUIDDeserializer;
.super Lcom/flurry/org/codehaus/jackson/map/deser/std/FromStringDeserializer;
.source "FromStringDeserializer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/org/codehaus/jackson/map/deser/std/FromStringDeserializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UUIDDeserializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/flurry/org/codehaus/jackson/map/deser/std/FromStringDeserializer",
        "<",
        "Ljava/util/UUID;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 104
    const-class v0, Ljava/util/UUID;

    invoke-direct {p0, v0}, Lcom/flurry/org/codehaus/jackson/map/deser/std/FromStringDeserializer;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic _deserialize(Ljava/lang/String;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 101
    invoke-virtual {p0, p1, p2}, Lcom/flurry/org/codehaus/jackson/map/deser/std/FromStringDeserializer$UUIDDeserializer;->_deserialize(Ljava/lang/String;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;)Ljava/util/UUID;

    move-result-object v0

    return-object v0
.end method

.method protected _deserialize(Ljava/lang/String;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;)Ljava/util/UUID;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "ctxt"    # Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 110
    invoke-static {p1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic _deserializeEmbedded(Ljava/lang/Object;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 101
    invoke-virtual {p0, p1, p2}, Lcom/flurry/org/codehaus/jackson/map/deser/std/FromStringDeserializer$UUIDDeserializer;->_deserializeEmbedded(Ljava/lang/Object;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;)Ljava/util/UUID;

    move-result-object v0

    return-object v0
.end method

.method protected _deserializeEmbedded(Ljava/lang/Object;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;)Ljava/util/UUID;
    .locals 8
    .param p1, "ob"    # Ljava/lang/Object;
    .param p2, "ctxt"    # Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 117
    instance-of v6, p1, [B

    if-eqz v6, :cond_1

    .line 118
    check-cast p1, [B

    .end local p1    # "ob":Ljava/lang/Object;
    move-object v0, p1

    check-cast v0, [B

    .line 119
    .local v0, "bytes":[B
    array-length v6, v0

    const/16 v7, 0x10

    if-eq v6, v7, :cond_0

    .line 120
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Can only construct UUIDs from 16 byte arrays; got "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " bytes"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;->mappingException(Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;

    .line 123
    :cond_0
    new-instance v1, Ljava/io/DataInputStream;

    new-instance v6, Ljava/io/ByteArrayInputStream;

    invoke-direct {v6, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v6}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 124
    .local v1, "in":Ljava/io/DataInputStream;
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v2

    .line 125
    .local v2, "l1":J
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v4

    .line 126
    .local v4, "l2":J
    new-instance v6, Ljava/util/UUID;

    invoke-direct {v6, v2, v3, v4, v5}, Ljava/util/UUID;-><init>(JJ)V

    .line 129
    .end local v0    # "bytes":[B
    .end local v1    # "in":Ljava/io/DataInputStream;
    .end local v2    # "l1":J
    .end local v4    # "l2":J
    :goto_0
    return-object v6

    .line 128
    .restart local p1    # "ob":Ljava/lang/Object;
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/flurry/org/codehaus/jackson/map/deser/std/FromStringDeserializer;->_deserializeEmbedded(Ljava/lang/Object;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    .line 129
    const/4 v6, 0x0

    goto :goto_0
.end method
