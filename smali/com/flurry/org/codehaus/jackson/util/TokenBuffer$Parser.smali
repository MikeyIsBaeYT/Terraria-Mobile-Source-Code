.class public final Lcom/flurry/org/codehaus/jackson/util/TokenBuffer$Parser;
.super Lcom/flurry/org/codehaus/jackson/impl/JsonParserMinimalBase;
.source "TokenBuffer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/org/codehaus/jackson/util/TokenBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "Parser"
.end annotation


# instance fields
.field protected transient _byteBuilder:Lcom/flurry/org/codehaus/jackson/util/ByteArrayBuilder;

.field protected _closed:Z

.field protected _codec:Lcom/flurry/org/codehaus/jackson/ObjectCodec;

.field protected _location:Lcom/flurry/org/codehaus/jackson/JsonLocation;

.field protected _parsingContext:Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;

.field protected _segment:Lcom/flurry/org/codehaus/jackson/util/TokenBuffer$Segment;

.field protected _segmentPtr:I


# direct methods
.method public constructor <init>(Lcom/flurry/org/codehaus/jackson/util/TokenBuffer$Segment;Lcom/flurry/org/codehaus/jackson/ObjectCodec;)V
    .locals 2
    .param p1, "firstSeg"    # Lcom/flurry/org/codehaus/jackson/util/TokenBuffer$Segment;
    .param p2, "codec"    # Lcom/flurry/org/codehaus/jackson/ObjectCodec;

    .prologue
    const/4 v1, -0x1

    .line 796
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/flurry/org/codehaus/jackson/impl/JsonParserMinimalBase;-><init>(I)V

    .line 786
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/util/TokenBuffer$Parser;->_location:Lcom/flurry/org/codehaus/jackson/JsonLocation;

    .line 797
    iput-object p1, p0, Lcom/flurry/org/codehaus/jackson/util/TokenBuffer$Parser;->_segment:Lcom/flurry/org/codehaus/jackson/util/TokenBuffer$Segment;

    .line 798
    iput v1, p0, Lcom/flurry/org/codehaus/jackson/util/TokenBuffer$Parser;->_segmentPtr:I

    .line 799
    iput-object p2, p0, Lcom/flurry/org/codehaus/jackson/util/TokenBuffer$Parser;->_codec:Lcom/flurry/org/codehaus/jackson/ObjectCodec;

    .line 800
    invoke-static {v1, v1}, Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;->createRootContext(II)Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/util/TokenBuffer$Parser;->_parsingContext:Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;

    .line 801
    return-void
.end method


# virtual methods
.method protected final _checkIsNumber()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 1101
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/util/TokenBuffer$Parser;->_currToken:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/util/TokenBuffer$Parser;->_currToken:Lcom/flurry/org/codehaus/jackson/JsonToken;

    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/JsonToken;->isNumeric()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1102
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current token ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/util/TokenBuffer$Parser;->_currToken:Lcom/flurry/org/codehaus/jackson/JsonToken;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") not numeric, can not use numeric value accessors"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flurry/org/codehaus/jackson/util/TokenBuffer$Parser;->_constructError(Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/JsonParseException;

    move-result-object v0

    throw v0

    .line 1104
    :cond_1
    return-void
.end method

.method protected final _currentObject()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1096
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/util/TokenBuffer$Parser;->_segment:Lcom/flurry/org/codehaus/jackson/util/TokenBuffer$Segment;

    iget v1, p0, Lcom/flurry/org/codehaus/jackson/util/TokenBuffer$Parser;->_segmentPtr:I

    invoke-virtual {v0, v1}, Lcom/flurry/org/codehaus/jackson/util/TokenBuffer$Segment;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected _handleEOF()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 1108
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/util/TokenBuffer$Parser;->_throwInternal()V

    .line 1109
    return-void
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 841
    iget-boolean v0, p0, Lcom/flurry/org/codehaus/jackson/util/TokenBuffer$Parser;->_closed:Z

    if-nez v0, :cond_0

    .line 842
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/org/codehaus/jackson/util/TokenBuffer$Parser;->_closed:Z

    .line 844
    :cond_0
    return-void
.end method

.method public getBigIntegerValue()Ljava/math/BigInteger;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 971
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/util/TokenBuffer$Parser;->getNumberValue()Ljava/lang/Number;

    move-result-object v0

    .line 972
    .local v0, "n":Ljava/lang/Number;
    instance-of v1, v0, Ljava/math/BigInteger;

    if-eqz v1, :cond_0

    .line 973
    check-cast v0, Ljava/math/BigInteger;

    .line 980
    .end local v0    # "n":Ljava/lang/Number;
    :goto_0
    return-object v0

    .line 975
    .restart local v0    # "n":Ljava/lang/Number;
    :cond_0
    sget-object v1, Lcom/flurry/org/codehaus/jackson/util/TokenBuffer$1;->$SwitchMap$org$codehaus$jackson$JsonParser$NumberType:[I

    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/util/TokenBuffer$Parser;->getNumberType()Lcom/flurry/org/codehaus/jackson/JsonParser$NumberType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/flurry/org/codehaus/jackson/JsonParser$NumberType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 980
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    goto :goto_0

    .line 977
    :pswitch_0
    check-cast v0, Ljava/math/BigDecimal;

    .end local v0    # "n":Ljava/lang/Number;
    invoke-virtual {v0}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    goto :goto_0

    .line 975
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public getBinaryValue(Lcom/flurry/org/codehaus/jackson/Base64Variant;)[B
    .locals 5
    .param p1, "b64variant"    # Lcom/flurry/org/codehaus/jackson/Base64Variant;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 1064
    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/util/TokenBuffer$Parser;->_currToken:Lcom/flurry/org/codehaus/jackson/JsonToken;

    sget-object v4, Lcom/flurry/org/codehaus/jackson/JsonToken;->VALUE_EMBEDDED_OBJECT:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-ne v3, v4, :cond_0

    .line 1066
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/util/TokenBuffer$Parser;->_currentObject()Ljava/lang/Object;

    move-result-object v1

    .line 1067
    .local v1, "ob":Ljava/lang/Object;
    instance-of v3, v1, [B

    if-eqz v3, :cond_0

    .line 1068
    check-cast v1, [B

    .end local v1    # "ob":Ljava/lang/Object;
    check-cast v1, [B

    .line 1086
    :goto_0
    return-object v1

    .line 1072
    :cond_0
    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/util/TokenBuffer$Parser;->_currToken:Lcom/flurry/org/codehaus/jackson/JsonToken;

    sget-object v4, Lcom/flurry/org/codehaus/jackson/JsonToken;->VALUE_STRING:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-eq v3, v4, :cond_1

    .line 1073
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Current token ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/flurry/org/codehaus/jackson/util/TokenBuffer$Parser;->_currToken:Lcom/flurry/org/codehaus/jackson/JsonToken;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") not VALUE_STRING (or VALUE_EMBEDDED_OBJECT with byte[]), can not access as binary"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/flurry/org/codehaus/jackson/util/TokenBuffer$Parser;->_constructError(Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/JsonParseException;

    move-result-object v3

    throw v3

    .line 1075
    :cond_1
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/util/TokenBuffer$Parser;->getText()Ljava/lang/String;

    move-result-object v2

    .line 1076
    .local v2, "str":Ljava/lang/String;
    if-nez v2, :cond_2

    .line 1077
    const/4 v1, 0x0

    goto :goto_0

    .line 1079
    :cond_2
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/util/TokenBuffer$Parser;->_byteBuilder:Lcom/flurry/org/codehaus/jackson/util/ByteArrayBuilder;

    .line 1080
    .local v0, "builder":Lcom/flurry/org/codehaus/jackson/util/ByteArrayBuilder;
    if-nez v0, :cond_3

    .line 1081
    new-instance v0, Lcom/flurry/org/codehaus/jackson/util/ByteArrayBuilder;

    .end local v0    # "builder":Lcom/flurry/org/codehaus/jackson/util/ByteArrayBuilder;
    const/16 v3, 0x64

    invoke-direct {v0, v3}, Lcom/flurry/org/codehaus/jackson/util/ByteArrayBuilder;-><init>(I)V

    .restart local v0    # "builder":Lcom/flurry/org/codehaus/jackson/util/ByteArrayBuilder;
    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/util/TokenBuffer$Parser;->_byteBuilder:Lcom/flurry/org/codehaus/jackson/util/ByteArrayBuilder;

    .line 1085
    :goto_1
    invoke-virtual {p0, v2, v0, p1}, Lcom/flurry/org/codehaus/jackson/util/TokenBuffer$Parser;->_decodeBase64(Ljava/lang/String;Lcom/flurry/org/codehaus/jackson/util/ByteArrayBuilder;Lcom/flurry/org/codehaus/jackson/Base64Variant;)V

    .line 1086
    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/util/ByteArrayBuilder;->toByteArray()[B

    move-result-object v1

    goto :goto_0

    .line 1083
    :cond_3
    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/util/TokenBuffer$Parser;->_byteBuilder:Lcom/flurry/org/codehaus/jackson/util/ByteArrayBuilder;

    invoke-virtual {v3}, Lcom/flurry/org/codehaus/jackson/util/ByteArrayBuilder;->reset()V

    goto :goto_1
.end method

.method public getCodec()Lcom/flurry/org/codehaus/jackson/ObjectCodec;
    .locals 1

    .prologue
    .line 808
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/util/TokenBuffer$Parser;->_codec:Lcom/flurry/org/codehaus/jackson/ObjectCodec;

    return-object v0
.end method

.method public getCurrentLocation()Lcom/flurry/org/codehaus/jackson/JsonLocation;
    .locals 1

    .prologue
    .line 905
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/util/TokenBuffer$Parser;->_location:Lcom/flurry/org/codehaus/jackson/JsonLocation;

    if-nez v0, :cond_0

    sget-object v0, Lcom/flurry/org/codehaus/jackson/JsonLocation;->NA:Lcom/flurry/org/codehaus/jackson/JsonLocation;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/util/TokenBuffer$Parser;->_location:Lcom/flurry/org/codehaus/jackson/JsonLocation;

    goto :goto_0
.end method

.method public getCurrentName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 909
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/util/TokenBuffer$Parser;->_parsingContext:Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;->getCurrentName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDecimalValue()Ljava/math/BigDecimal;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 986
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/util/TokenBuffer$Parser;->getNumberValue()Ljava/lang/Number;

    move-result-object v0

    .line 987
    .local v0, "n":Ljava/lang/Number;
    instance-of v1, v0, Ljava/math/BigDecimal;

    if-eqz v1, :cond_0

    .line 988
    check-cast v0, Ljava/math/BigDecimal;

    .line 998
    .end local v0    # "n":Ljava/lang/Number;
    :goto_0
    return-object v0

    .line 990
    .restart local v0    # "n":Ljava/lang/Number;
    :cond_0
    sget-object v1, Lcom/flurry/org/codehaus/jackson/util/TokenBuffer$1;->$SwitchMap$org$codehaus$jackson$JsonParser$NumberType:[I

    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/util/TokenBuffer$Parser;->getNumberType()Lcom/flurry/org/codehaus/jackson/JsonParser$NumberType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/flurry/org/codehaus/jackson/JsonParser$NumberType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 998
    :pswitch_0
    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v0

    goto :goto_0

    .line 993
    :pswitch_1
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    goto :goto_0

    .line 995
    :pswitch_2
    new-instance v1, Ljava/math/BigDecimal;

    check-cast v0, Ljava/math/BigInteger;

    .end local v0    # "n":Ljava/lang/Number;
    invoke-direct {v1, v0}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    move-object v0, v1

    goto :goto_0

    .line 990
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getDoubleValue()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 1003
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/util/TokenBuffer$Parser;->getNumberValue()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public getEmbeddedObject()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1054
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/util/TokenBuffer$Parser;->_currToken:Lcom/flurry/org/codehaus/jackson/JsonToken;

    sget-object v1, Lcom/flurry/org/codehaus/jackson/JsonToken;->VALUE_EMBEDDED_OBJECT:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_0

    .line 1055
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/util/TokenBuffer$Parser;->_currentObject()Ljava/lang/Object;

    move-result-object v0

    .line 1057
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFloatValue()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 1008
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/util/TokenBuffer$Parser;->getNumberValue()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    return v0
.end method

.method public getIntValue()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 1015
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/util/TokenBuffer$Parser;->_currToken:Lcom/flurry/org/codehaus/jackson/JsonToken;

    sget-object v1, Lcom/flurry/org/codehaus/jackson/JsonToken;->VALUE_NUMBER_INT:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_0

    .line 1016
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/util/TokenBuffer$Parser;->_currentObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 1018
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/util/TokenBuffer$Parser;->getNumberValue()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public getLongValue()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 1023
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/util/TokenBuffer$Parser;->getNumberValue()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getNumberType()Lcom/flurry/org/codehaus/jackson/JsonParser$NumberType;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 1029
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/util/TokenBuffer$Parser;->getNumberValue()Ljava/lang/Number;

    move-result-object v0

    .line 1030
    .local v0, "n":Ljava/lang/Number;
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/flurry/org/codehaus/jackson/JsonParser$NumberType;->INT:Lcom/flurry/org/codehaus/jackson/JsonParser$NumberType;

    .line 1036
    :goto_0
    return-object v1

    .line 1031
    :cond_0
    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/flurry/org/codehaus/jackson/JsonParser$NumberType;->LONG:Lcom/flurry/org/codehaus/jackson/JsonParser$NumberType;

    goto :goto_0

    .line 1032
    :cond_1
    instance-of v1, v0, Ljava/lang/Double;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/flurry/org/codehaus/jackson/JsonParser$NumberType;->DOUBLE:Lcom/flurry/org/codehaus/jackson/JsonParser$NumberType;

    goto :goto_0

    .line 1033
    :cond_2
    instance-of v1, v0, Ljava/math/BigDecimal;

    if-eqz v1, :cond_3

    sget-object v1, Lcom/flurry/org/codehaus/jackson/JsonParser$NumberType;->BIG_DECIMAL:Lcom/flurry/org/codehaus/jackson/JsonParser$NumberType;

    goto :goto_0

    .line 1034
    :cond_3
    instance-of v1, v0, Ljava/lang/Float;

    if-eqz v1, :cond_4

    sget-object v1, Lcom/flurry/org/codehaus/jackson/JsonParser$NumberType;->FLOAT:Lcom/flurry/org/codehaus/jackson/JsonParser$NumberType;

    goto :goto_0

    .line 1035
    :cond_4
    instance-of v1, v0, Ljava/math/BigInteger;

    if-eqz v1, :cond_5

    sget-object v1, Lcom/flurry/org/codehaus/jackson/JsonParser$NumberType;->BIG_INTEGER:Lcom/flurry/org/codehaus/jackson/JsonParser$NumberType;

    goto :goto_0

    .line 1036
    :cond_5
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final getNumberValue()Ljava/lang/Number;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 1041
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/util/TokenBuffer$Parser;->_checkIsNumber()V

    .line 1042
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/util/TokenBuffer$Parser;->_currentObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    return-object v0
.end method

.method public getParsingContext()Lcom/flurry/org/codehaus/jackson/JsonStreamContext;
    .locals 1

    .prologue
    .line 898
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/util/TokenBuffer$Parser;->_parsingContext:Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 921
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/util/TokenBuffer$Parser;->_currToken:Lcom/flurry/org/codehaus/jackson/JsonToken;

    sget-object v3, Lcom/flurry/org/codehaus/jackson/JsonToken;->VALUE_STRING:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/util/TokenBuffer$Parser;->_currToken:Lcom/flurry/org/codehaus/jackson/JsonToken;

    sget-object v3, Lcom/flurry/org/codehaus/jackson/JsonToken;->FIELD_NAME:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-ne v2, v3, :cond_3

    .line 923
    :cond_0
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/util/TokenBuffer$Parser;->_currentObject()Ljava/lang/Object;

    move-result-object v0

    .line 924
    .local v0, "ob":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 925
    check-cast v0, Ljava/lang/String;

    .end local v0    # "ob":Ljava/lang/Object;
    move-object v1, v0

    .line 938
    :cond_1
    :goto_0
    return-object v1

    .line 927
    .restart local v0    # "ob":Ljava/lang/Object;
    :cond_2
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 929
    .end local v0    # "ob":Ljava/lang/Object;
    :cond_3
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/util/TokenBuffer$Parser;->_currToken:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-eqz v2, :cond_1

    .line 932
    sget-object v2, Lcom/flurry/org/codehaus/jackson/util/TokenBuffer$1;->$SwitchMap$org$codehaus$jackson$JsonToken:[I

    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/util/TokenBuffer$Parser;->_currToken:Lcom/flurry/org/codehaus/jackson/JsonToken;

    invoke-virtual {v3}, Lcom/flurry/org/codehaus/jackson/JsonToken;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 938
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/util/TokenBuffer$Parser;->_currToken:Lcom/flurry/org/codehaus/jackson/JsonToken;

    invoke-virtual {v1}, Lcom/flurry/org/codehaus/jackson/JsonToken;->asString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 935
    :pswitch_0
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/util/TokenBuffer$Parser;->_currentObject()Ljava/lang/Object;

    move-result-object v0

    .line 936
    .restart local v0    # "ob":Ljava/lang/Object;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 932
    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getTextCharacters()[C
    .locals 2

    .prologue
    .line 943
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/util/TokenBuffer$Parser;->getText()Ljava/lang/String;

    move-result-object v0

    .line 944
    .local v0, "str":Ljava/lang/String;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    goto :goto_0
.end method

.method public getTextLength()I
    .locals 2

    .prologue
    .line 949
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/util/TokenBuffer$Parser;->getText()Ljava/lang/String;

    move-result-object v0

    .line 950
    .local v0, "str":Ljava/lang/String;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    goto :goto_0
.end method

.method public getTextOffset()I
    .locals 1

    .prologue
    .line 954
    const/4 v0, 0x0

    return v0
.end method

.method public getTokenLocation()Lcom/flurry/org/codehaus/jackson/JsonLocation;
    .locals 1

    .prologue
    .line 901
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/util/TokenBuffer$Parser;->getCurrentLocation()Lcom/flurry/org/codehaus/jackson/JsonLocation;

    move-result-object v0

    return-object v0
.end method

.method public hasTextCharacters()Z
    .locals 1

    .prologue
    .line 959
    const/4 v0, 0x0

    return v0
.end method

.method public isClosed()Z
    .locals 1

    .prologue
    .line 889
    iget-boolean v0, p0, Lcom/flurry/org/codehaus/jackson/util/TokenBuffer$Parser;->_closed:Z

    return v0
.end method

.method public nextToken()Lcom/flurry/org/codehaus/jackson/JsonToken;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v5, -0x1

    .line 856
    iget-boolean v3, p0, Lcom/flurry/org/codehaus/jackson/util/TokenBuffer$Parser;->_closed:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/util/TokenBuffer$Parser;->_segment:Lcom/flurry/org/codehaus/jackson/util/TokenBuffer$Segment;

    if-nez v3, :cond_1

    .line 885
    :cond_0
    :goto_0
    return-object v2

    .line 859
    :cond_1
    iget v3, p0, Lcom/flurry/org/codehaus/jackson/util/TokenBuffer$Parser;->_segmentPtr:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/flurry/org/codehaus/jackson/util/TokenBuffer$Parser;->_segmentPtr:I

    const/16 v4, 0x10

    if-lt v3, v4, :cond_2

    .line 860
    const/4 v3, 0x0

    iput v3, p0, Lcom/flurry/org/codehaus/jackson/util/TokenBuffer$Parser;->_segmentPtr:I

    .line 861
    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/util/TokenBuffer$Parser;->_segment:Lcom/flurry/org/codehaus/jackson/util/TokenBuffer$Segment;

    invoke-virtual {v3}, Lcom/flurry/org/codehaus/jackson/util/TokenBuffer$Segment;->next()Lcom/flurry/org/codehaus/jackson/util/TokenBuffer$Segment;

    move-result-object v3

    iput-object v3, p0, Lcom/flurry/org/codehaus/jackson/util/TokenBuffer$Parser;->_segment:Lcom/flurry/org/codehaus/jackson/util/TokenBuffer$Segment;

    .line 862
    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/util/TokenBuffer$Parser;->_segment:Lcom/flurry/org/codehaus/jackson/util/TokenBuffer$Segment;

    if-eqz v3, :cond_0

    .line 866
    :cond_2
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/util/TokenBuffer$Parser;->_segment:Lcom/flurry/org/codehaus/jackson/util/TokenBuffer$Segment;

    iget v3, p0, Lcom/flurry/org/codehaus/jackson/util/TokenBuffer$Parser;->_segmentPtr:I

    invoke-virtual {v2, v3}, Lcom/flurry/org/codehaus/jackson/util/TokenBuffer$Segment;->type(I)Lcom/flurry/org/codehaus/jackson/JsonToken;

    move-result-object v2

    iput-object v2, p0, Lcom/flurry/org/codehaus/jackson/util/TokenBuffer$Parser;->_currToken:Lcom/flurry/org/codehaus/jackson/JsonToken;

    .line 868
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/util/TokenBuffer$Parser;->_currToken:Lcom/flurry/org/codehaus/jackson/JsonToken;

    sget-object v3, Lcom/flurry/org/codehaus/jackson/JsonToken;->FIELD_NAME:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-ne v2, v3, :cond_5

    .line 869
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/util/TokenBuffer$Parser;->_currentObject()Ljava/lang/Object;

    move-result-object v1

    .line 870
    .local v1, "ob":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_4

    check-cast v1, Ljava/lang/String;

    .end local v1    # "ob":Ljava/lang/Object;
    move-object v0, v1

    .line 871
    .local v0, "name":Ljava/lang/String;
    :goto_1
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/util/TokenBuffer$Parser;->_parsingContext:Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v2, v0}, Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;->setCurrentName(Ljava/lang/String;)V

    .line 885
    .end local v0    # "name":Ljava/lang/String;
    :cond_3
    :goto_2
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/util/TokenBuffer$Parser;->_currToken:Lcom/flurry/org/codehaus/jackson/JsonToken;

    goto :goto_0

    .line 870
    .restart local v1    # "ob":Ljava/lang/Object;
    :cond_4
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 872
    .end local v1    # "ob":Ljava/lang/Object;
    :cond_5
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/util/TokenBuffer$Parser;->_currToken:Lcom/flurry/org/codehaus/jackson/JsonToken;

    sget-object v3, Lcom/flurry/org/codehaus/jackson/JsonToken;->START_OBJECT:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-ne v2, v3, :cond_6

    .line 873
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/util/TokenBuffer$Parser;->_parsingContext:Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v2, v5, v5}, Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;->createChildObjectContext(II)Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;

    move-result-object v2

    iput-object v2, p0, Lcom/flurry/org/codehaus/jackson/util/TokenBuffer$Parser;->_parsingContext:Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;

    goto :goto_2

    .line 874
    :cond_6
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/util/TokenBuffer$Parser;->_currToken:Lcom/flurry/org/codehaus/jackson/JsonToken;

    sget-object v3, Lcom/flurry/org/codehaus/jackson/JsonToken;->START_ARRAY:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-ne v2, v3, :cond_7

    .line 875
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/util/TokenBuffer$Parser;->_parsingContext:Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v2, v5, v5}, Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;->createChildArrayContext(II)Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;

    move-result-object v2

    iput-object v2, p0, Lcom/flurry/org/codehaus/jackson/util/TokenBuffer$Parser;->_parsingContext:Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;

    goto :goto_2

    .line 876
    :cond_7
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/util/TokenBuffer$Parser;->_currToken:Lcom/flurry/org/codehaus/jackson/JsonToken;

    sget-object v3, Lcom/flurry/org/codehaus/jackson/JsonToken;->END_OBJECT:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-eq v2, v3, :cond_8

    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/util/TokenBuffer$Parser;->_currToken:Lcom/flurry/org/codehaus/jackson/JsonToken;

    sget-object v3, Lcom/flurry/org/codehaus/jackson/JsonToken;->END_ARRAY:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-ne v2, v3, :cond_3

    .line 879
    :cond_8
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/util/TokenBuffer$Parser;->_parsingContext:Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v2}, Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;->getParent()Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;

    move-result-object v2

    iput-object v2, p0, Lcom/flurry/org/codehaus/jackson/util/TokenBuffer$Parser;->_parsingContext:Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;

    .line 881
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/util/TokenBuffer$Parser;->_parsingContext:Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;

    if-nez v2, :cond_3

    .line 882
    invoke-static {v5, v5}, Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;->createRootContext(II)Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;

    move-result-object v2

    iput-object v2, p0, Lcom/flurry/org/codehaus/jackson/util/TokenBuffer$Parser;->_parsingContext:Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;

    goto :goto_2
.end method

.method public peekNextToken()Lcom/flurry/org/codehaus/jackson/JsonToken;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 823
    iget-boolean v3, p0, Lcom/flurry/org/codehaus/jackson/util/TokenBuffer$Parser;->_closed:Z

    if-eqz v3, :cond_1

    .line 830
    :cond_0
    :goto_0
    return-object v2

    .line 824
    :cond_1
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/util/TokenBuffer$Parser;->_segment:Lcom/flurry/org/codehaus/jackson/util/TokenBuffer$Segment;

    .line 825
    .local v1, "seg":Lcom/flurry/org/codehaus/jackson/util/TokenBuffer$Segment;
    iget v3, p0, Lcom/flurry/org/codehaus/jackson/util/TokenBuffer$Parser;->_segmentPtr:I

    add-int/lit8 v0, v3, 0x1

    .line 826
    .local v0, "ptr":I
    const/16 v3, 0x10

    if-lt v0, v3, :cond_2

    .line 827
    const/4 v0, 0x0

    .line 828
    if-nez v1, :cond_3

    move-object v1, v2

    .line 830
    :cond_2
    :goto_1
    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Lcom/flurry/org/codehaus/jackson/util/TokenBuffer$Segment;->type(I)Lcom/flurry/org/codehaus/jackson/JsonToken;

    move-result-object v2

    goto :goto_0

    .line 828
    :cond_3
    invoke-virtual {v1}, Lcom/flurry/org/codehaus/jackson/util/TokenBuffer$Segment;->next()Lcom/flurry/org/codehaus/jackson/util/TokenBuffer$Segment;

    move-result-object v1

    goto :goto_1
.end method

.method public setCodec(Lcom/flurry/org/codehaus/jackson/ObjectCodec;)V
    .locals 0
    .param p1, "c"    # Lcom/flurry/org/codehaus/jackson/ObjectCodec;

    .prologue
    .line 811
    iput-object p1, p0, Lcom/flurry/org/codehaus/jackson/util/TokenBuffer$Parser;->_codec:Lcom/flurry/org/codehaus/jackson/ObjectCodec;

    return-void
.end method

.method public setLocation(Lcom/flurry/org/codehaus/jackson/JsonLocation;)V
    .locals 0
    .param p1, "l"    # Lcom/flurry/org/codehaus/jackson/JsonLocation;

    .prologue
    .line 804
    iput-object p1, p0, Lcom/flurry/org/codehaus/jackson/util/TokenBuffer$Parser;->_location:Lcom/flurry/org/codehaus/jackson/JsonLocation;

    .line 805
    return-void
.end method
