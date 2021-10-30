.class public abstract Lcom/flurry/org/codehaus/jackson/JsonParser;
.super Ljava/lang/Object;
.source "JsonParser.java"

# interfaces
.implements Ljava/io/Closeable;
.implements Lcom/flurry/org/codehaus/jackson/Versioned;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/org/codehaus/jackson/JsonParser$1;,
        Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;,
        Lcom/flurry/org/codehaus/jackson/JsonParser$NumberType;
    }
.end annotation


# static fields
.field private static final MAX_BYTE_I:I = 0x7f

.field private static final MAX_SHORT_I:I = 0x7fff

.field private static final MIN_BYTE_I:I = -0x80

.field private static final MIN_SHORT_I:I = -0x8000


# instance fields
.field protected _currToken:Lcom/flurry/org/codehaus/jackson/JsonToken;

.field protected _features:I

.field protected _lastClearedToken:Lcom/flurry/org/codehaus/jackson/JsonToken;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 287
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(I)V
    .locals 0
    .param p1, "features"    # I

    .prologue
    .line 288
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 289
    iput p1, p0, Lcom/flurry/org/codehaus/jackson/JsonParser;->_features:I

    .line 290
    return-void
.end method


# virtual methods
.method protected _constructError(Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/JsonParseException;
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1432
    new-instance v0, Lcom/flurry/org/codehaus/jackson/JsonParseException;

    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getCurrentLocation()Lcom/flurry/org/codehaus/jackson/JsonLocation;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/flurry/org/codehaus/jackson/JsonParseException;-><init>(Ljava/lang/String;Lcom/flurry/org/codehaus/jackson/JsonLocation;)V

    return-object v0
.end method

.method public canUseSchema(Lcom/flurry/org/codehaus/jackson/FormatSchema;)Z
    .locals 1
    .param p1, "schema"    # Lcom/flurry/org/codehaus/jackson/FormatSchema;

    .prologue
    .line 343
    const/4 v0, 0x0

    return v0
.end method

.method public clearCurrentToken()V
    .locals 1

    .prologue
    .line 757
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/JsonParser;->_currToken:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-eqz v0, :cond_0

    .line 758
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/JsonParser;->_currToken:Lcom/flurry/org/codehaus/jackson/JsonToken;

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/JsonParser;->_lastClearedToken:Lcom/flurry/org/codehaus/jackson/JsonToken;

    .line 759
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/JsonParser;->_currToken:Lcom/flurry/org/codehaus/jackson/JsonToken;

    .line 761
    :cond_0
    return-void
.end method

.method public abstract close()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public configure(Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;Z)Lcom/flurry/org/codehaus/jackson/JsonParser;
    .locals 0
    .param p1, "f"    # Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;
    .param p2, "state"    # Z

    .prologue
    .line 486
    if-eqz p2, :cond_0

    .line 487
    invoke-virtual {p0, p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->enableFeature(Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;)V

    .line 491
    :goto_0
    return-object p0

    .line 489
    :cond_0
    invoke-virtual {p0, p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->disableFeature(Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;)V

    goto :goto_0
.end method

.method public disable(Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;)Lcom/flurry/org/codehaus/jackson/JsonParser;
    .locals 2
    .param p1, "f"    # Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;

    .prologue
    .line 474
    iget v0, p0, Lcom/flurry/org/codehaus/jackson/JsonParser;->_features:I

    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;->getMask()I

    move-result v1

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/flurry/org/codehaus/jackson/JsonParser;->_features:I

    .line 475
    return-object p0
.end method

.method public disableFeature(Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;)V
    .locals 0
    .param p1, "f"    # Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;

    .prologue
    .line 517
    invoke-virtual {p0, p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->disable(Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;)Lcom/flurry/org/codehaus/jackson/JsonParser;

    return-void
.end method

.method public enable(Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;)Lcom/flurry/org/codehaus/jackson/JsonParser;
    .locals 2
    .param p1, "f"    # Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;

    .prologue
    .line 462
    iget v0, p0, Lcom/flurry/org/codehaus/jackson/JsonParser;->_features:I

    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;->getMask()I

    move-result v1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/flurry/org/codehaus/jackson/JsonParser;->_features:I

    .line 463
    return-object p0
.end method

.method public enableFeature(Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;)V
    .locals 0
    .param p1, "f"    # Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;

    .prologue
    .line 512
    invoke-virtual {p0, p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->enable(Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;)Lcom/flurry/org/codehaus/jackson/JsonParser;

    return-void
.end method

.method public abstract getBigIntegerValue()Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonParseException;
        }
    .end annotation
.end method

.method public getBinaryValue()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 1157
    invoke-static {}, Lcom/flurry/org/codehaus/jackson/Base64Variants;->getDefaultVariant()Lcom/flurry/org/codehaus/jackson/Base64Variant;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getBinaryValue(Lcom/flurry/org/codehaus/jackson/Base64Variant;)[B

    move-result-object v0

    return-object v0
.end method

.method public abstract getBinaryValue(Lcom/flurry/org/codehaus/jackson/Base64Variant;)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonParseException;
        }
    .end annotation
.end method

.method public getBooleanValue()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 1097
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getCurrentToken()Lcom/flurry/org/codehaus/jackson/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/flurry/org/codehaus/jackson/JsonToken;->VALUE_TRUE:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 1098
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getCurrentToken()Lcom/flurry/org/codehaus/jackson/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/flurry/org/codehaus/jackson/JsonToken;->VALUE_FALSE:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 1099
    :cond_1
    new-instance v0, Lcom/flurry/org/codehaus/jackson/JsonParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current token ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/JsonParser;->_currToken:Lcom/flurry/org/codehaus/jackson/JsonToken;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") not of boolean type"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getCurrentLocation()Lcom/flurry/org/codehaus/jackson/JsonLocation;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/flurry/org/codehaus/jackson/JsonParseException;-><init>(Ljava/lang/String;Lcom/flurry/org/codehaus/jackson/JsonLocation;)V

    throw v0
.end method

.method public getByteValue()B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 960
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getIntValue()I

    move-result v0

    .line 962
    .local v0, "value":I
    const/16 v1, -0x80

    if-lt v0, v1, :cond_0

    const/16 v1, 0x7f

    if-le v0, v1, :cond_1

    .line 963
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Numeric value ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") out of range of Java byte"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->_constructError(Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/JsonParseException;

    move-result-object v1

    throw v1

    .line 965
    :cond_1
    int-to-byte v1, v0

    return v1
.end method

.method public abstract getCodec()Lcom/flurry/org/codehaus/jackson/ObjectCodec;
.end method

.method public abstract getCurrentLocation()Lcom/flurry/org/codehaus/jackson/JsonLocation;
.end method

.method public abstract getCurrentName()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonParseException;
        }
    .end annotation
.end method

.method public getCurrentToken()Lcom/flurry/org/codehaus/jackson/JsonToken;
    .locals 1

    .prologue
    .line 725
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/JsonParser;->_currToken:Lcom/flurry/org/codehaus/jackson/JsonToken;

    return-object v0
.end method

.method public abstract getDecimalValue()Ljava/math/BigDecimal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonParseException;
        }
    .end annotation
.end method

.method public abstract getDoubleValue()D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonParseException;
        }
    .end annotation
.end method

.method public getEmbeddedObject()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 1117
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getFloatValue()F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonParseException;
        }
    .end annotation
.end method

.method public getInputSource()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 372
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getIntValue()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonParseException;
        }
    .end annotation
.end method

.method public getLastClearedToken()Lcom/flurry/org/codehaus/jackson/JsonToken;
    .locals 1

    .prologue
    .line 806
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/JsonParser;->_lastClearedToken:Lcom/flurry/org/codehaus/jackson/JsonToken;

    return-object v0
.end method

.method public abstract getLongValue()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonParseException;
        }
    .end annotation
.end method

.method public abstract getNumberType()Lcom/flurry/org/codehaus/jackson/JsonParser$NumberType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonParseException;
        }
    .end annotation
.end method

.method public abstract getNumberValue()Ljava/lang/Number;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonParseException;
        }
    .end annotation
.end method

.method public abstract getParsingContext()Lcom/flurry/org/codehaus/jackson/JsonStreamContext;
.end method

.method public getShortValue()S
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 984
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getIntValue()I

    move-result v0

    .line 985
    .local v0, "value":I
    const/16 v1, -0x8000

    if-lt v0, v1, :cond_0

    const/16 v1, 0x7fff

    if-le v0, v1, :cond_1

    .line 986
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Numeric value ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") out of range of Java short"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->_constructError(Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/JsonParseException;

    move-result-object v1

    throw v1

    .line 988
    :cond_1
    int-to-short v1, v0

    return v1
.end method

.method public abstract getText()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonParseException;
        }
    .end annotation
.end method

.method public abstract getTextCharacters()[C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonParseException;
        }
    .end annotation
.end method

.method public abstract getTextLength()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonParseException;
        }
    .end annotation
.end method

.method public abstract getTextOffset()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonParseException;
        }
    .end annotation
.end method

.method public abstract getTokenLocation()Lcom/flurry/org/codehaus/jackson/JsonLocation;
.end method

.method public getValueAsBoolean()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 1282
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getValueAsBoolean(Z)Z

    move-result v0

    return v0
.end method

.method public getValueAsBoolean(Z)Z
    .locals 0
    .param p1, "defaultValue"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 1299
    return p1
.end method

.method public getValueAsDouble()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 1248
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getValueAsDouble(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public getValueAsDouble(D)D
    .locals 1
    .param p1, "defaultValue"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 1265
    return-wide p1
.end method

.method public getValueAsInt()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 1180
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getValueAsInt(I)I

    move-result v0

    return v0
.end method

.method public getValueAsInt(I)I
    .locals 0
    .param p1, "defaultValue"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 1197
    return p1
.end method

.method public getValueAsLong()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 1214
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getValueAsInt(I)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getValueAsLong(J)J
    .locals 1
    .param p1, "defaultValue"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 1231
    return-wide p1
.end method

.method public hasCurrentToken()Z
    .locals 1

    .prologue
    .line 740
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/JsonParser;->_currToken:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTextCharacters()Z
    .locals 1

    .prologue
    .line 917
    const/4 v0, 0x0

    return v0
.end method

.method public abstract isClosed()Z
.end method

.method public isEnabled(Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;)Z
    .locals 2
    .param p1, "f"    # Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;

    .prologue
    .line 501
    iget v0, p0, Lcom/flurry/org/codehaus/jackson/JsonParser;->_features:I

    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;->getMask()I

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isExpectedStartArrayToken()Z
    .locals 2

    .prologue
    .line 829
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getCurrentToken()Lcom/flurry/org/codehaus/jackson/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/flurry/org/codehaus/jackson/JsonToken;->START_ARRAY:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isFeatureEnabled(Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;)Z
    .locals 1
    .param p1, "f"    # Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;

    .prologue
    .line 522
    invoke-virtual {p0, p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->isEnabled(Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;)Z

    move-result v0

    return v0
.end method

.method public nextBooleanValue()Ljava/lang/Boolean;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 671
    sget-object v0, Lcom/flurry/org/codehaus/jackson/JsonParser$1;->$SwitchMap$org$codehaus$jackson$JsonToken:[I

    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/JsonParser;->nextToken()Lcom/flurry/org/codehaus/jackson/JsonToken;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/org/codehaus/jackson/JsonToken;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 677
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 673
    :pswitch_0
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    .line 675
    :pswitch_1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    .line 671
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public nextFieldName(Lcom/flurry/org/codehaus/jackson/SerializableString;)Z
    .locals 2
    .param p1, "str"    # Lcom/flurry/org/codehaus/jackson/SerializableString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 592
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/JsonParser;->nextToken()Lcom/flurry/org/codehaus/jackson/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/flurry/org/codehaus/jackson/JsonToken;->FIELD_NAME:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_0

    invoke-interface {p1}, Lcom/flurry/org/codehaus/jackson/SerializableString;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public nextIntValue(I)I
    .locals 2
    .param p1, "defaultValue"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 630
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/JsonParser;->nextToken()Lcom/flurry/org/codehaus/jackson/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/flurry/org/codehaus/jackson/JsonToken;->VALUE_NUMBER_INT:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getIntValue()I

    move-result p1

    .end local p1    # "defaultValue":I
    :cond_0
    return p1
.end method

.method public nextLongValue(J)J
    .locals 3
    .param p1, "defaultValue"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 649
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/JsonParser;->nextToken()Lcom/flurry/org/codehaus/jackson/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/flurry/org/codehaus/jackson/JsonToken;->VALUE_NUMBER_INT:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getLongValue()J

    move-result-wide p1

    .end local p1    # "defaultValue":J
    :cond_0
    return-wide p1
.end method

.method public nextTextValue()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 611
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/JsonParser;->nextToken()Lcom/flurry/org/codehaus/jackson/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/flurry/org/codehaus/jackson/JsonToken;->VALUE_STRING:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract nextToken()Lcom/flurry/org/codehaus/jackson/JsonToken;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonParseException;
        }
    .end annotation
.end method

.method public nextValue()Lcom/flurry/org/codehaus/jackson/JsonToken;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 567
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/JsonParser;->nextToken()Lcom/flurry/org/codehaus/jackson/JsonToken;

    move-result-object v0

    .line 568
    .local v0, "t":Lcom/flurry/org/codehaus/jackson/JsonToken;
    sget-object v1, Lcom/flurry/org/codehaus/jackson/JsonToken;->FIELD_NAME:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_0

    .line 569
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/JsonParser;->nextToken()Lcom/flurry/org/codehaus/jackson/JsonToken;

    move-result-object v0

    .line 571
    :cond_0
    return-object v0
.end method

.method public readValueAs(Lcom/flurry/org/codehaus/jackson/type/TypeReference;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/flurry/org/codehaus/jackson/type/TypeReference",
            "<*>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 1361
    .local p1, "valueTypeRef":Lcom/flurry/org/codehaus/jackson/type/TypeReference;, "Lcom/flurry/org/codehaus/jackson/type/TypeReference<*>;"
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getCodec()Lcom/flurry/org/codehaus/jackson/ObjectCodec;

    move-result-object v0

    .line 1362
    .local v0, "codec":Lcom/flurry/org/codehaus/jackson/ObjectCodec;
    if-nez v0, :cond_0

    .line 1363
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "No ObjectCodec defined for the parser, can not deserialize JSON into Java objects"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1368
    :cond_0
    invoke-virtual {v0, p0, p1}, Lcom/flurry/org/codehaus/jackson/ObjectCodec;->readValue(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/type/TypeReference;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public readValueAs(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 1332
    .local p1, "valueType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getCodec()Lcom/flurry/org/codehaus/jackson/ObjectCodec;

    move-result-object v0

    .line 1333
    .local v0, "codec":Lcom/flurry/org/codehaus/jackson/ObjectCodec;
    if-nez v0, :cond_0

    .line 1334
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "No ObjectCodec defined for the parser, can not deserialize JSON into Java objects"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1336
    :cond_0
    invoke-virtual {v0, p0, p1}, Lcom/flurry/org/codehaus/jackson/ObjectCodec;->readValue(Lcom/flurry/org/codehaus/jackson/JsonParser;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public readValueAsTree()Lcom/flurry/org/codehaus/jackson/JsonNode;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 1413
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getCodec()Lcom/flurry/org/codehaus/jackson/ObjectCodec;

    move-result-object v0

    .line 1414
    .local v0, "codec":Lcom/flurry/org/codehaus/jackson/ObjectCodec;
    if-nez v0, :cond_0

    .line 1415
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "No ObjectCodec defined for the parser, can not deserialize JSON into JsonNode tree"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1417
    :cond_0
    invoke-virtual {v0, p0}, Lcom/flurry/org/codehaus/jackson/ObjectCodec;->readTree(Lcom/flurry/org/codehaus/jackson/JsonParser;)Lcom/flurry/org/codehaus/jackson/JsonNode;

    move-result-object v1

    return-object v1
.end method

.method public readValuesAs(Lcom/flurry/org/codehaus/jackson/type/TypeReference;)Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/flurry/org/codehaus/jackson/type/TypeReference",
            "<*>;)",
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 1396
    .local p1, "valueTypeRef":Lcom/flurry/org/codehaus/jackson/type/TypeReference;, "Lcom/flurry/org/codehaus/jackson/type/TypeReference<*>;"
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getCodec()Lcom/flurry/org/codehaus/jackson/ObjectCodec;

    move-result-object v0

    .line 1397
    .local v0, "codec":Lcom/flurry/org/codehaus/jackson/ObjectCodec;
    if-nez v0, :cond_0

    .line 1398
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "No ObjectCodec defined for the parser, can not deserialize JSON into Java objects"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1400
    :cond_0
    invoke-virtual {v0, p0, p1}, Lcom/flurry/org/codehaus/jackson/ObjectCodec;->readValues(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/type/TypeReference;)Ljava/util/Iterator;

    move-result-object v1

    return-object v1
.end method

.method public readValuesAs(Ljava/lang/Class;)Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 1380
    .local p1, "valueType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getCodec()Lcom/flurry/org/codehaus/jackson/ObjectCodec;

    move-result-object v0

    .line 1381
    .local v0, "codec":Lcom/flurry/org/codehaus/jackson/ObjectCodec;
    if-nez v0, :cond_0

    .line 1382
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "No ObjectCodec defined for the parser, can not deserialize JSON into Java objects"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1384
    :cond_0
    invoke-virtual {v0, p0, p1}, Lcom/flurry/org/codehaus/jackson/ObjectCodec;->readValues(Lcom/flurry/org/codehaus/jackson/JsonParser;Ljava/lang/Class;)Ljava/util/Iterator;

    move-result-object v1

    return-object v1
.end method

.method public releaseBuffered(Ljava/io/OutputStream;)I
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 423
    const/4 v0, -0x1

    return v0
.end method

.method public releaseBuffered(Ljava/io/Writer;)I
    .locals 1
    .param p1, "w"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 445
    const/4 v0, -0x1

    return v0
.end method

.method public abstract setCodec(Lcom/flurry/org/codehaus/jackson/ObjectCodec;)V
.end method

.method public setFeature(Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;Z)V
    .locals 0
    .param p1, "f"    # Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;
    .param p2, "state"    # Z

    .prologue
    .line 507
    invoke-virtual {p0, p1, p2}, Lcom/flurry/org/codehaus/jackson/JsonParser;->configure(Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;Z)Lcom/flurry/org/codehaus/jackson/JsonParser;

    return-void
.end method

.method public setSchema(Lcom/flurry/org/codehaus/jackson/FormatSchema;)V
    .locals 3
    .param p1, "schema"    # Lcom/flurry/org/codehaus/jackson/FormatSchema;

    .prologue
    .line 328
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Parser of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not support schema of type \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/flurry/org/codehaus/jackson/FormatSchema;->getSchemaType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract skipChildren()Lcom/flurry/org/codehaus/jackson/JsonParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonParseException;
        }
    .end annotation
.end method

.method public version()Lcom/flurry/org/codehaus/jackson/Version;
    .locals 1

    .prologue
    .line 351
    invoke-static {}, Lcom/flurry/org/codehaus/jackson/Version;->unknownVersion()Lcom/flurry/org/codehaus/jackson/Version;

    move-result-object v0

    return-object v0
.end method
