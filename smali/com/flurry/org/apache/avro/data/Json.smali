.class public Lcom/flurry/org/apache/avro/data/Json;
.super Ljava/lang/Object;
.source "Json.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/org/apache/avro/data/Json$1;,
        Lcom/flurry/org/apache/avro/data/Json$JsonType;,
        Lcom/flurry/org/apache/avro/data/Json$Reader;,
        Lcom/flurry/org/apache/avro/data/Json$Writer;
    }
.end annotation


# static fields
.field public static final SCHEMA:Lcom/flurry/org/apache/avro/Schema;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 50
    :try_start_0
    const-class v1, Lcom/flurry/org/apache/avro/data/Json;

    const-string v2, "/com/flurry/org/apache/avro/data/Json.avsc"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Lcom/flurry/org/apache/avro/Schema;->parse(Ljava/io/InputStream;)Lcom/flurry/org/apache/avro/Schema;

    move-result-object v1

    sput-object v1, Lcom/flurry/org/apache/avro/data/Json;->SCHEMA:Lcom/flurry/org/apache/avro/Schema;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    return-void

    .line 52
    :catch_0
    move-exception v0

    .line 53
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/flurry/org/apache/avro/AvroRuntimeException;

    invoke-direct {v1, v0}, Lcom/flurry/org/apache/avro/AvroRuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read(Lcom/flurry/org/apache/avro/io/Decoder;)Lcom/flurry/org/codehaus/jackson/JsonNode;
    .locals 14
    .param p0, "in"    # Lcom/flurry/org/apache/avro/io/Decoder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v12, 0x1

    const-wide/16 v10, 0x0

    .line 155
    sget-object v6, Lcom/flurry/org/apache/avro/data/Json$1;->$SwitchMap$org$apache$avro$data$Json$JsonType:[I

    invoke-static {}, Lcom/flurry/org/apache/avro/data/Json$JsonType;->values()[Lcom/flurry/org/apache/avro/data/Json$JsonType;

    move-result-object v7

    invoke-virtual {p0}, Lcom/flurry/org/apache/avro/io/Decoder;->readIndex()I

    move-result v8

    aget-object v7, v7, v8

    invoke-virtual {v7}, Lcom/flurry/org/apache/avro/data/Json$JsonType;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 180
    new-instance v6, Lcom/flurry/org/apache/avro/AvroRuntimeException;

    const-string v7, "Unexpected Json node type"

    invoke-direct {v6, v7}, Lcom/flurry/org/apache/avro/AvroRuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 157
    :pswitch_0
    new-instance v6, Lcom/flurry/org/codehaus/jackson/node/LongNode;

    invoke-virtual {p0}, Lcom/flurry/org/apache/avro/io/Decoder;->readLong()J

    move-result-wide v8

    invoke-direct {v6, v8, v9}, Lcom/flurry/org/codehaus/jackson/node/LongNode;-><init>(J)V

    .line 178
    :goto_0
    return-object v6

    .line 159
    :pswitch_1
    new-instance v6, Lcom/flurry/org/codehaus/jackson/node/DoubleNode;

    invoke-virtual {p0}, Lcom/flurry/org/apache/avro/io/Decoder;->readDouble()D

    move-result-wide v8

    invoke-direct {v6, v8, v9}, Lcom/flurry/org/codehaus/jackson/node/DoubleNode;-><init>(D)V

    goto :goto_0

    .line 161
    :pswitch_2
    new-instance v6, Lcom/flurry/org/codehaus/jackson/node/TextNode;

    invoke-virtual {p0}, Lcom/flurry/org/apache/avro/io/Decoder;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/flurry/org/codehaus/jackson/node/TextNode;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 163
    :pswitch_3
    invoke-virtual {p0}, Lcom/flurry/org/apache/avro/io/Decoder;->readBoolean()Z

    move-result v6

    if-eqz v6, :cond_0

    sget-object v6, Lcom/flurry/org/codehaus/jackson/node/BooleanNode;->TRUE:Lcom/flurry/org/codehaus/jackson/node/BooleanNode;

    goto :goto_0

    :cond_0
    sget-object v6, Lcom/flurry/org/codehaus/jackson/node/BooleanNode;->FALSE:Lcom/flurry/org/codehaus/jackson/node/BooleanNode;

    goto :goto_0

    .line 165
    :pswitch_4
    invoke-virtual {p0}, Lcom/flurry/org/apache/avro/io/Decoder;->readNull()V

    .line 166
    invoke-static {}, Lcom/flurry/org/codehaus/jackson/node/NullNode;->getInstance()Lcom/flurry/org/codehaus/jackson/node/NullNode;

    move-result-object v6

    goto :goto_0

    .line 168
    :pswitch_5
    sget-object v6, Lcom/flurry/org/codehaus/jackson/node/JsonNodeFactory;->instance:Lcom/flurry/org/codehaus/jackson/node/JsonNodeFactory;

    invoke-virtual {v6}, Lcom/flurry/org/codehaus/jackson/node/JsonNodeFactory;->arrayNode()Lcom/flurry/org/codehaus/jackson/node/ArrayNode;

    move-result-object v0

    .line 169
    .local v0, "array":Lcom/flurry/org/codehaus/jackson/node/ArrayNode;
    invoke-virtual {p0}, Lcom/flurry/org/apache/avro/io/Decoder;->readArrayStart()J

    move-result-wide v4

    .local v4, "l":J
    :goto_1
    cmp-long v6, v4, v10

    if-lez v6, :cond_2

    .line 170
    const-wide/16 v2, 0x0

    .local v2, "i":J
    :goto_2
    cmp-long v6, v2, v4

    if-gez v6, :cond_1

    .line 171
    invoke-static {p0}, Lcom/flurry/org/apache/avro/data/Json;->read(Lcom/flurry/org/apache/avro/io/Decoder;)Lcom/flurry/org/codehaus/jackson/JsonNode;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/flurry/org/codehaus/jackson/node/ArrayNode;->add(Lcom/flurry/org/codehaus/jackson/JsonNode;)V

    .line 170
    add-long/2addr v2, v12

    goto :goto_2

    .line 169
    :cond_1
    invoke-virtual {p0}, Lcom/flurry/org/apache/avro/io/Decoder;->arrayNext()J

    move-result-wide v4

    goto :goto_1

    .end local v2    # "i":J
    :cond_2
    move-object v6, v0

    .line 172
    goto :goto_0

    .line 174
    .end local v0    # "array":Lcom/flurry/org/codehaus/jackson/node/ArrayNode;
    .end local v4    # "l":J
    :pswitch_6
    sget-object v6, Lcom/flurry/org/codehaus/jackson/node/JsonNodeFactory;->instance:Lcom/flurry/org/codehaus/jackson/node/JsonNodeFactory;

    invoke-virtual {v6}, Lcom/flurry/org/codehaus/jackson/node/JsonNodeFactory;->objectNode()Lcom/flurry/org/codehaus/jackson/node/ObjectNode;

    move-result-object v1

    .line 175
    .local v1, "object":Lcom/flurry/org/codehaus/jackson/node/ObjectNode;
    invoke-virtual {p0}, Lcom/flurry/org/apache/avro/io/Decoder;->readMapStart()J

    move-result-wide v4

    .restart local v4    # "l":J
    :goto_3
    cmp-long v6, v4, v10

    if-lez v6, :cond_4

    .line 176
    const-wide/16 v2, 0x0

    .restart local v2    # "i":J
    :goto_4
    cmp-long v6, v2, v4

    if-gez v6, :cond_3

    .line 177
    invoke-virtual {p0}, Lcom/flurry/org/apache/avro/io/Decoder;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0}, Lcom/flurry/org/apache/avro/data/Json;->read(Lcom/flurry/org/apache/avro/io/Decoder;)Lcom/flurry/org/codehaus/jackson/JsonNode;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Lcom/flurry/org/codehaus/jackson/node/ObjectNode;->put(Ljava/lang/String;Lcom/flurry/org/codehaus/jackson/JsonNode;)Lcom/flurry/org/codehaus/jackson/JsonNode;

    .line 176
    add-long/2addr v2, v12

    goto :goto_4

    .line 175
    :cond_3
    invoke-virtual {p0}, Lcom/flurry/org/apache/avro/io/Decoder;->mapNext()J

    move-result-wide v4

    goto :goto_3

    .end local v2    # "i":J
    :cond_4
    move-object v6, v1

    .line 178
    goto :goto_0

    .line 155
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public static write(Lcom/flurry/org/codehaus/jackson/JsonNode;Lcom/flurry/org/apache/avro/io/Encoder;)V
    .locals 7
    .param p0, "node"    # Lcom/flurry/org/codehaus/jackson/JsonNode;
    .param p1, "out"    # Lcom/flurry/org/apache/avro/io/Encoder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 100
    sget-object v4, Lcom/flurry/org/apache/avro/data/Json$1;->$SwitchMap$org$codehaus$jackson$JsonToken:[I

    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/JsonNode;->asToken()Lcom/flurry/org/codehaus/jackson/JsonToken;

    move-result-object v5

    invoke-virtual {v5}, Lcom/flurry/org/codehaus/jackson/JsonToken;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 149
    new-instance v4, Lcom/flurry/org/apache/avro/AvroRuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/JsonNode;->asToken()Lcom/flurry/org/codehaus/jackson/JsonToken;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " unexpected: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/flurry/org/apache/avro/AvroRuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 102
    :pswitch_0
    sget-object v4, Lcom/flurry/org/apache/avro/data/Json$JsonType;->LONG:Lcom/flurry/org/apache/avro/data/Json$JsonType;

    invoke-virtual {v4}, Lcom/flurry/org/apache/avro/data/Json$JsonType;->ordinal()I

    move-result v4

    invoke-virtual {p1, v4}, Lcom/flurry/org/apache/avro/io/Encoder;->writeIndex(I)V

    .line 103
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/JsonNode;->getLongValue()J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Lcom/flurry/org/apache/avro/io/Encoder;->writeLong(J)V

    .line 151
    :goto_0
    return-void

    .line 106
    :pswitch_1
    sget-object v4, Lcom/flurry/org/apache/avro/data/Json$JsonType;->DOUBLE:Lcom/flurry/org/apache/avro/data/Json$JsonType;

    invoke-virtual {v4}, Lcom/flurry/org/apache/avro/data/Json$JsonType;->ordinal()I

    move-result v4

    invoke-virtual {p1, v4}, Lcom/flurry/org/apache/avro/io/Encoder;->writeIndex(I)V

    .line 107
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/JsonNode;->getDoubleValue()D

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Lcom/flurry/org/apache/avro/io/Encoder;->writeDouble(D)V

    goto :goto_0

    .line 110
    :pswitch_2
    sget-object v4, Lcom/flurry/org/apache/avro/data/Json$JsonType;->STRING:Lcom/flurry/org/apache/avro/data/Json$JsonType;

    invoke-virtual {v4}, Lcom/flurry/org/apache/avro/data/Json$JsonType;->ordinal()I

    move-result v4

    invoke-virtual {p1, v4}, Lcom/flurry/org/apache/avro/io/Encoder;->writeIndex(I)V

    .line 111
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/JsonNode;->getTextValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/flurry/org/apache/avro/io/Encoder;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 114
    :pswitch_3
    sget-object v4, Lcom/flurry/org/apache/avro/data/Json$JsonType;->BOOLEAN:Lcom/flurry/org/apache/avro/data/Json$JsonType;

    invoke-virtual {v4}, Lcom/flurry/org/apache/avro/data/Json$JsonType;->ordinal()I

    move-result v4

    invoke-virtual {p1, v4}, Lcom/flurry/org/apache/avro/io/Encoder;->writeIndex(I)V

    .line 115
    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Lcom/flurry/org/apache/avro/io/Encoder;->writeBoolean(Z)V

    goto :goto_0

    .line 118
    :pswitch_4
    sget-object v4, Lcom/flurry/org/apache/avro/data/Json$JsonType;->BOOLEAN:Lcom/flurry/org/apache/avro/data/Json$JsonType;

    invoke-virtual {v4}, Lcom/flurry/org/apache/avro/data/Json$JsonType;->ordinal()I

    move-result v4

    invoke-virtual {p1, v4}, Lcom/flurry/org/apache/avro/io/Encoder;->writeIndex(I)V

    .line 119
    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Lcom/flurry/org/apache/avro/io/Encoder;->writeBoolean(Z)V

    goto :goto_0

    .line 122
    :pswitch_5
    sget-object v4, Lcom/flurry/org/apache/avro/data/Json$JsonType;->NULL:Lcom/flurry/org/apache/avro/data/Json$JsonType;

    invoke-virtual {v4}, Lcom/flurry/org/apache/avro/data/Json$JsonType;->ordinal()I

    move-result v4

    invoke-virtual {p1, v4}, Lcom/flurry/org/apache/avro/io/Encoder;->writeIndex(I)V

    .line 123
    invoke-virtual {p1}, Lcom/flurry/org/apache/avro/io/Encoder;->writeNull()V

    goto :goto_0

    .line 126
    :pswitch_6
    sget-object v4, Lcom/flurry/org/apache/avro/data/Json$JsonType;->ARRAY:Lcom/flurry/org/apache/avro/data/Json$JsonType;

    invoke-virtual {v4}, Lcom/flurry/org/apache/avro/data/Json$JsonType;->ordinal()I

    move-result v4

    invoke-virtual {p1, v4}, Lcom/flurry/org/apache/avro/io/Encoder;->writeIndex(I)V

    .line 127
    invoke-virtual {p1}, Lcom/flurry/org/apache/avro/io/Encoder;->writeArrayStart()V

    .line 128
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/JsonNode;->size()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {p1, v4, v5}, Lcom/flurry/org/apache/avro/io/Encoder;->setItemCount(J)V

    .line 129
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/JsonNode;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/org/codehaus/jackson/JsonNode;

    .line 130
    .local v0, "element":Lcom/flurry/org/codehaus/jackson/JsonNode;
    invoke-virtual {p1}, Lcom/flurry/org/apache/avro/io/Encoder;->startItem()V

    .line 131
    invoke-static {v0, p1}, Lcom/flurry/org/apache/avro/data/Json;->write(Lcom/flurry/org/codehaus/jackson/JsonNode;Lcom/flurry/org/apache/avro/io/Encoder;)V

    goto :goto_1

    .line 133
    .end local v0    # "element":Lcom/flurry/org/codehaus/jackson/JsonNode;
    :cond_0
    invoke-virtual {p1}, Lcom/flurry/org/apache/avro/io/Encoder;->writeArrayEnd()V

    goto :goto_0

    .line 136
    .end local v2    # "i$":Ljava/util/Iterator;
    :pswitch_7
    sget-object v4, Lcom/flurry/org/apache/avro/data/Json$JsonType;->OBJECT:Lcom/flurry/org/apache/avro/data/Json$JsonType;

    invoke-virtual {v4}, Lcom/flurry/org/apache/avro/data/Json$JsonType;->ordinal()I

    move-result v4

    invoke-virtual {p1, v4}, Lcom/flurry/org/apache/avro/io/Encoder;->writeIndex(I)V

    .line 137
    invoke-virtual {p1}, Lcom/flurry/org/apache/avro/io/Encoder;->writeMapStart()V

    .line 138
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/JsonNode;->size()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {p1, v4, v5}, Lcom/flurry/org/apache/avro/io/Encoder;->setItemCount(J)V

    .line 139
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/JsonNode;->getFieldNames()Ljava/util/Iterator;

    move-result-object v1

    .line 140
    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 141
    invoke-virtual {p1}, Lcom/flurry/org/apache/avro/io/Encoder;->startItem()V

    .line 142
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 143
    .local v3, "name":Ljava/lang/String;
    invoke-virtual {p1, v3}, Lcom/flurry/org/apache/avro/io/Encoder;->writeString(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p0, v3}, Lcom/flurry/org/codehaus/jackson/JsonNode;->get(Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/JsonNode;

    move-result-object v4

    invoke-static {v4, p1}, Lcom/flurry/org/apache/avro/data/Json;->write(Lcom/flurry/org/codehaus/jackson/JsonNode;Lcom/flurry/org/apache/avro/io/Encoder;)V

    goto :goto_2

    .line 146
    .end local v3    # "name":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Lcom/flurry/org/apache/avro/io/Encoder;->writeMapEnd()V

    goto/16 :goto_0

    .line 100
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
