.class public Lcom/flurry/org/codehaus/jackson/map/ext/JodaDeserializers$LocalDateDeserializer;
.super Lcom/flurry/org/codehaus/jackson/map/ext/JodaDeserializers$JodaDeserializer;
.source "JodaDeserializers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/org/codehaus/jackson/map/ext/JodaDeserializers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LocalDateDeserializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/flurry/org/codehaus/jackson/map/ext/JodaDeserializers$JodaDeserializer",
        "<",
        "Lorg/joda/time/LocalDate;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 106
    const-class v0, Lorg/joda/time/LocalDate;

    invoke-direct {p0, v0}, Lcom/flurry/org/codehaus/jackson/map/ext/JodaDeserializers$JodaDeserializer;-><init>(Ljava/lang/Class;)V

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
    .line 103
    invoke-virtual {p0, p1, p2}, Lcom/flurry/org/codehaus/jackson/map/ext/JodaDeserializers$LocalDateDeserializer;->deserialize(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;)Lorg/joda/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public deserialize(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;)Lorg/joda/time/LocalDate;
    .locals 8
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

    move-result v4

    if-eqz v4, :cond_1

    .line 114
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->nextToken()Lcom/flurry/org/codehaus/jackson/JsonToken;

    .line 115
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getIntValue()I

    move-result v3

    .line 116
    .local v3, "year":I
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->nextToken()Lcom/flurry/org/codehaus/jackson/JsonToken;

    .line 117
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getIntValue()I

    move-result v2

    .line 118
    .local v2, "month":I
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->nextToken()Lcom/flurry/org/codehaus/jackson/JsonToken;

    .line 119
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getIntValue()I

    move-result v0

    .line 120
    .local v0, "day":I
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->nextToken()Lcom/flurry/org/codehaus/jackson/JsonToken;

    move-result-object v4

    sget-object v5, Lcom/flurry/org/codehaus/jackson/JsonToken;->END_ARRAY:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-eq v4, v5, :cond_0

    .line 121
    sget-object v4, Lcom/flurry/org/codehaus/jackson/JsonToken;->END_ARRAY:Lcom/flurry/org/codehaus/jackson/JsonToken;

    const-string v5, "after LocalDate ints"

    invoke-virtual {p2, p1, v4, v5}, Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;->wrongTokenException(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/JsonToken;Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;

    move-result-object v4

    throw v4

    .line 123
    :cond_0
    new-instance v4, Lorg/joda/time/LocalDate;

    invoke-direct {v4, v3, v2, v0}, Lorg/joda/time/LocalDate;-><init>(III)V

    .line 133
    .end local v0    # "day":I
    .end local v2    # "month":I
    .end local v3    # "year":I
    :goto_0
    return-object v4

    .line 125
    :cond_1
    sget-object v4, Lcom/flurry/org/codehaus/jackson/map/ext/JodaDeserializers$1;->$SwitchMap$org$codehaus$jackson$JsonToken:[I

    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getCurrentToken()Lcom/flurry/org/codehaus/jackson/JsonToken;

    move-result-object v5

    invoke-virtual {v5}, Lcom/flurry/org/codehaus/jackson/JsonToken;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 135
    sget-object v4, Lcom/flurry/org/codehaus/jackson/JsonToken;->START_ARRAY:Lcom/flurry/org/codehaus/jackson/JsonToken;

    const-string v5, "expected JSON Array, String or Number"

    invoke-virtual {p2, p1, v4, v5}, Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;->wrongTokenException(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/JsonToken;Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;

    move-result-object v4

    throw v4

    .line 127
    :pswitch_0
    new-instance v4, Lorg/joda/time/LocalDate;

    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getLongValue()J

    move-result-wide v6

    invoke-direct {v4, v6, v7}, Lorg/joda/time/LocalDate;-><init>(J)V

    goto :goto_0

    .line 129
    :pswitch_1
    invoke-virtual {p0, p1}, Lcom/flurry/org/codehaus/jackson/map/ext/JodaDeserializers$LocalDateDeserializer;->parseLocal(Lcom/flurry/org/codehaus/jackson/JsonParser;)Lorg/joda/time/DateTime;

    move-result-object v1

    .line 130
    .local v1, "local":Lorg/joda/time/DateTime;
    if-nez v1, :cond_2

    .line 131
    const/4 v4, 0x0

    goto :goto_0

    .line 133
    :cond_2
    invoke-virtual {v1}, Lorg/joda/time/DateTime;->toLocalDate()Lorg/joda/time/LocalDate;

    move-result-object v4

    goto :goto_0

    .line 125
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
