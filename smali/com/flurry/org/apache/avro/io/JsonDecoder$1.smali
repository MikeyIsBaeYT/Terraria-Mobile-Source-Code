.class Lcom/flurry/org/apache/avro/io/JsonDecoder$1;
.super Lcom/flurry/org/codehaus/jackson/JsonParser;
.source "JsonDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/org/apache/avro/io/JsonDecoder;->makeParser(Ljava/util/List;)Lcom/flurry/org/codehaus/jackson/JsonParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field pos:I

.field final synthetic this$0:Lcom/flurry/org/apache/avro/io/JsonDecoder;

.field final synthetic val$elements:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/flurry/org/apache/avro/io/JsonDecoder;Ljava/util/List;)V
    .locals 1

    .prologue
    .line 556
    iput-object p1, p0, Lcom/flurry/org/apache/avro/io/JsonDecoder$1;->this$0:Lcom/flurry/org/apache/avro/io/JsonDecoder;

    iput-object p2, p0, Lcom/flurry/org/apache/avro/io/JsonDecoder$1;->val$elements:Ljava/util/List;

    invoke-direct {p0}, Lcom/flurry/org/codehaus/jackson/JsonParser;-><init>()V

    .line 557
    const/4 v0, 0x0

    iput v0, p0, Lcom/flurry/org/apache/avro/io/JsonDecoder$1;->pos:I

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 571
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getBigIntegerValue()Ljava/math/BigInteger;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 665
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getBinaryValue(Lcom/flurry/org/codehaus/jackson/Base64Variant;)[B
    .locals 1
    .param p1, "b64variant"    # Lcom/flurry/org/codehaus/jackson/Base64Variant;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 686
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getCodec()Lcom/flurry/org/codehaus/jackson/ObjectCodec;
    .locals 1

    .prologue
    .line 561
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getCurrentLocation()Lcom/flurry/org/codehaus/jackson/JsonLocation;
    .locals 1

    .prologue
    .line 620
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getCurrentName()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 605
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getCurrentToken()Lcom/flurry/org/codehaus/jackson/JsonToken;
    .locals 2

    .prologue
    .line 691
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/JsonDecoder$1;->val$elements:Ljava/util/List;

    iget v1, p0, Lcom/flurry/org/apache/avro/io/JsonDecoder$1;->pos:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/org/apache/avro/io/JsonDecoder$JsonElement;

    iget-object v0, v0, Lcom/flurry/org/apache/avro/io/JsonDecoder$JsonElement;->token:Lcom/flurry/org/codehaus/jackson/JsonToken;

    return-object v0
.end method

.method public getDecimalValue()Ljava/math/BigDecimal;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 680
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getDoubleValue()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 675
    invoke-virtual {p0}, Lcom/flurry/org/apache/avro/io/JsonDecoder$1;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getFloatValue()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 670
    invoke-virtual {p0}, Lcom/flurry/org/apache/avro/io/JsonDecoder$1;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public getIntValue()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 655
    invoke-virtual {p0}, Lcom/flurry/org/apache/avro/io/JsonDecoder$1;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getLongValue()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 660
    invoke-virtual {p0}, Lcom/flurry/org/apache/avro/io/JsonDecoder$1;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNumberType()Lcom/flurry/org/codehaus/jackson/JsonParser$NumberType;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 650
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getNumberValue()Ljava/lang/Number;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 645
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getParsingContext()Lcom/flurry/org/codehaus/jackson/JsonStreamContext;
    .locals 1

    .prologue
    .line 610
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getText()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 625
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/JsonDecoder$1;->val$elements:Ljava/util/List;

    iget v1, p0, Lcom/flurry/org/apache/avro/io/JsonDecoder$1;->pos:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/org/apache/avro/io/JsonDecoder$JsonElement;

    iget-object v0, v0, Lcom/flurry/org/apache/avro/io/JsonDecoder$JsonElement;->value:Ljava/lang/String;

    return-object v0
.end method

.method public getTextCharacters()[C
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 630
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getTextLength()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 635
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getTextOffset()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 640
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getTokenLocation()Lcom/flurry/org/codehaus/jackson/JsonLocation;
    .locals 1

    .prologue
    .line 615
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public isClosed()Z
    .locals 1

    .prologue
    .line 600
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public nextToken()Lcom/flurry/org/codehaus/jackson/JsonToken;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 576
    iget v0, p0, Lcom/flurry/org/apache/avro/io/JsonDecoder$1;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/flurry/org/apache/avro/io/JsonDecoder$1;->pos:I

    .line 577
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/JsonDecoder$1;->val$elements:Ljava/util/List;

    iget v1, p0, Lcom/flurry/org/apache/avro/io/JsonDecoder$1;->pos:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/org/apache/avro/io/JsonDecoder$JsonElement;

    iget-object v0, v0, Lcom/flurry/org/apache/avro/io/JsonDecoder$JsonElement;->token:Lcom/flurry/org/codehaus/jackson/JsonToken;

    return-object v0
.end method

.method public setCodec(Lcom/flurry/org/codehaus/jackson/ObjectCodec;)V
    .locals 1
    .param p1, "c"    # Lcom/flurry/org/codehaus/jackson/ObjectCodec;

    .prologue
    .line 566
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public skipChildren()Lcom/flurry/org/codehaus/jackson/JsonParser;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 582
    const/4 v0, 0x0

    .line 584
    .local v0, "level":I
    :cond_0
    sget-object v2, Lcom/flurry/org/apache/avro/io/JsonDecoder$2;->$SwitchMap$org$codehaus$jackson$JsonToken:[I

    iget-object v1, p0, Lcom/flurry/org/apache/avro/io/JsonDecoder$1;->val$elements:Ljava/util/List;

    iget v3, p0, Lcom/flurry/org/apache/avro/io/JsonDecoder$1;->pos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/flurry/org/apache/avro/io/JsonDecoder$1;->pos:I

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flurry/org/apache/avro/io/JsonDecoder$JsonElement;

    iget-object v1, v1, Lcom/flurry/org/apache/avro/io/JsonDecoder$JsonElement;->token:Lcom/flurry/org/codehaus/jackson/JsonToken;

    invoke-virtual {v1}, Lcom/flurry/org/codehaus/jackson/JsonToken;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    .line 594
    :goto_0
    if-gtz v0, :cond_0

    .line 595
    return-object p0

    .line 587
    :pswitch_0
    add-int/lit8 v0, v0, 0x1

    .line 588
    goto :goto_0

    .line 591
    :pswitch_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 584
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
