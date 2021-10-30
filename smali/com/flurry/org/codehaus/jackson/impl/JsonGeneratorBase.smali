.class public abstract Lcom/flurry/org/codehaus/jackson/impl/JsonGeneratorBase;
.super Lcom/flurry/org/codehaus/jackson/JsonGenerator;
.source "JsonGeneratorBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/org/codehaus/jackson/impl/JsonGeneratorBase$1;
    }
.end annotation


# instance fields
.field protected _cfgNumbersAsStrings:Z

.field protected _closed:Z

.field protected _features:I

.field protected _objectCodec:Lcom/flurry/org/codehaus/jackson/ObjectCodec;

.field protected _writeContext:Lcom/flurry/org/codehaus/jackson/impl/JsonWriteContext;


# direct methods
.method protected constructor <init>(ILcom/flurry/org/codehaus/jackson/ObjectCodec;)V
    .locals 1
    .param p1, "features"    # I
    .param p2, "codec"    # Lcom/flurry/org/codehaus/jackson/ObjectCodec;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/flurry/org/codehaus/jackson/JsonGenerator;-><init>()V

    .line 72
    iput p1, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonGeneratorBase;->_features:I

    .line 73
    invoke-static {}, Lcom/flurry/org/codehaus/jackson/impl/JsonWriteContext;->createRootContext()Lcom/flurry/org/codehaus/jackson/impl/JsonWriteContext;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonGeneratorBase;->_writeContext:Lcom/flurry/org/codehaus/jackson/impl/JsonWriteContext;

    .line 74
    iput-object p2, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonGeneratorBase;->_objectCodec:Lcom/flurry/org/codehaus/jackson/ObjectCodec;

    .line 75
    sget-object v0, Lcom/flurry/org/codehaus/jackson/JsonGenerator$Feature;->WRITE_NUMBERS_AS_STRINGS:Lcom/flurry/org/codehaus/jackson/JsonGenerator$Feature;

    invoke-virtual {p0, v0}, Lcom/flurry/org/codehaus/jackson/impl/JsonGeneratorBase;->isEnabled(Lcom/flurry/org/codehaus/jackson/JsonGenerator$Feature;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonGeneratorBase;->_cfgNumbersAsStrings:Z

    .line 76
    return-void
.end method


# virtual methods
.method protected _cantHappen()V
    .locals 2

    .prologue
    .line 485
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Internal error: should never end up through this code path"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected abstract _releaseBuffers()V
.end method

.method protected _reportError(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 480
    new-instance v0, Lcom/flurry/org/codehaus/jackson/JsonGenerationException;

    invoke-direct {v0, p1}, Lcom/flurry/org/codehaus/jackson/JsonGenerationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected _reportUnsupportedOperation()V
    .locals 3

    .prologue
    .line 568
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Operation not supported by generator of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final _throwInternal()V
    .locals 2

    .prologue
    .line 561
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Internal error: this code path should never get executed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected abstract _verifyValueWrite(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation
.end method

.method protected _writeEndArray()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 191
    return-void
.end method

.method protected _writeEndObject()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 233
    return-void
.end method

.method protected _writeSimpleObject(Ljava/lang/Object;)V
    .locals 4
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 502
    if-nez p1, :cond_0

    .line 503
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/JsonGeneratorBase;->writeNull()V

    .line 554
    .end local p1    # "value":Ljava/lang/Object;
    :goto_0
    return-void

    .line 506
    .restart local p1    # "value":Ljava/lang/Object;
    :cond_0
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 507
    check-cast p1, Ljava/lang/String;

    .end local p1    # "value":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/flurry/org/codehaus/jackson/impl/JsonGeneratorBase;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 510
    .restart local p1    # "value":Ljava/lang/Object;
    :cond_1
    instance-of v1, p1, Ljava/lang/Number;

    if-eqz v1, :cond_b

    move-object v0, p1

    .line 511
    check-cast v0, Ljava/lang/Number;

    .line 512
    .local v0, "n":Ljava/lang/Number;
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_2

    .line 513
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/flurry/org/codehaus/jackson/impl/JsonGeneratorBase;->writeNumber(I)V

    goto :goto_0

    .line 515
    :cond_2
    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_3

    .line 516
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/flurry/org/codehaus/jackson/impl/JsonGeneratorBase;->writeNumber(J)V

    goto :goto_0

    .line 518
    :cond_3
    instance-of v1, v0, Ljava/lang/Double;

    if-eqz v1, :cond_4

    .line 519
    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/flurry/org/codehaus/jackson/impl/JsonGeneratorBase;->writeNumber(D)V

    goto :goto_0

    .line 521
    :cond_4
    instance-of v1, v0, Ljava/lang/Float;

    if-eqz v1, :cond_5

    .line 522
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/flurry/org/codehaus/jackson/impl/JsonGeneratorBase;->writeNumber(F)V

    goto :goto_0

    .line 524
    :cond_5
    instance-of v1, v0, Ljava/lang/Short;

    if-eqz v1, :cond_6

    .line 525
    invoke-virtual {v0}, Ljava/lang/Number;->shortValue()S

    move-result v1

    invoke-virtual {p0, v1}, Lcom/flurry/org/codehaus/jackson/impl/JsonGeneratorBase;->writeNumber(I)V

    goto :goto_0

    .line 527
    :cond_6
    instance-of v1, v0, Ljava/lang/Byte;

    if-eqz v1, :cond_7

    .line 528
    invoke-virtual {v0}, Ljava/lang/Number;->byteValue()B

    move-result v1

    invoke-virtual {p0, v1}, Lcom/flurry/org/codehaus/jackson/impl/JsonGeneratorBase;->writeNumber(I)V

    goto :goto_0

    .line 530
    :cond_7
    instance-of v1, v0, Ljava/math/BigInteger;

    if-eqz v1, :cond_8

    .line 531
    check-cast v0, Ljava/math/BigInteger;

    .end local v0    # "n":Ljava/lang/Number;
    invoke-virtual {p0, v0}, Lcom/flurry/org/codehaus/jackson/impl/JsonGeneratorBase;->writeNumber(Ljava/math/BigInteger;)V

    goto :goto_0

    .line 533
    .restart local v0    # "n":Ljava/lang/Number;
    :cond_8
    instance-of v1, v0, Ljava/math/BigDecimal;

    if-eqz v1, :cond_9

    .line 534
    check-cast v0, Ljava/math/BigDecimal;

    .end local v0    # "n":Ljava/lang/Number;
    invoke-virtual {p0, v0}, Lcom/flurry/org/codehaus/jackson/impl/JsonGeneratorBase;->writeNumber(Ljava/math/BigDecimal;)V

    goto :goto_0

    .line 539
    .restart local v0    # "n":Ljava/lang/Number;
    :cond_9
    instance-of v1, v0, Ljava/util/concurrent/atomic/AtomicInteger;

    if-eqz v1, :cond_a

    .line 540
    check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .end local v0    # "n":Ljava/lang/Number;
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/flurry/org/codehaus/jackson/impl/JsonGeneratorBase;->writeNumber(I)V

    goto :goto_0

    .line 542
    .restart local v0    # "n":Ljava/lang/Number;
    :cond_a
    instance-of v1, v0, Ljava/util/concurrent/atomic/AtomicLong;

    if-eqz v1, :cond_e

    .line 543
    check-cast v0, Ljava/util/concurrent/atomic/AtomicLong;

    .end local v0    # "n":Ljava/lang/Number;
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/flurry/org/codehaus/jackson/impl/JsonGeneratorBase;->writeNumber(J)V

    goto/16 :goto_0

    .line 546
    :cond_b
    instance-of v1, p1, [B

    if-eqz v1, :cond_c

    .line 547
    check-cast p1, [B

    .end local p1    # "value":Ljava/lang/Object;
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/flurry/org/codehaus/jackson/impl/JsonGeneratorBase;->writeBinary([B)V

    goto/16 :goto_0

    .line 549
    .restart local p1    # "value":Ljava/lang/Object;
    :cond_c
    instance-of v1, p1, Ljava/lang/Boolean;

    if-eqz v1, :cond_d

    .line 550
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "value":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/flurry/org/codehaus/jackson/impl/JsonGeneratorBase;->writeBoolean(Z)V

    goto/16 :goto_0

    .line 552
    .restart local p1    # "value":Ljava/lang/Object;
    :cond_d
    instance-of v1, p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v1, :cond_e

    .line 553
    check-cast p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .end local p1    # "value":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/flurry/org/codehaus/jackson/impl/JsonGeneratorBase;->writeBoolean(Z)V

    goto/16 :goto_0

    .line 556
    .restart local p1    # "value":Ljava/lang/Object;
    :cond_e
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No ObjectCodec defined for the generator, can only serialize simple wrapper types (type passed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected _writeStartArray()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 169
    return-void
.end method

.method protected _writeStartObject()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 211
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
    .line 348
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonGeneratorBase;->_closed:Z

    .line 349
    return-void
.end method

.method public final copyCurrentEvent(Lcom/flurry/org/codehaus/jackson/JsonParser;)V
    .locals 4
    .param p1, "jp"    # Lcom/flurry/org/codehaus/jackson/JsonParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 364
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getCurrentToken()Lcom/flurry/org/codehaus/jackson/JsonToken;

    move-result-object v0

    .line 366
    .local v0, "t":Lcom/flurry/org/codehaus/jackson/JsonToken;
    if-nez v0, :cond_0

    .line 367
    const-string v1, "No current event to copy"

    invoke-virtual {p0, v1}, Lcom/flurry/org/codehaus/jackson/impl/JsonGeneratorBase;->_reportError(Ljava/lang/String;)V

    .line 369
    :cond_0
    sget-object v1, Lcom/flurry/org/codehaus/jackson/impl/JsonGeneratorBase$1;->$SwitchMap$org$codehaus$jackson$JsonToken:[I

    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/JsonToken;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 429
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/JsonGeneratorBase;->_cantHappen()V

    .line 431
    :goto_0
    return-void

    .line 371
    :pswitch_0
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/JsonGeneratorBase;->writeStartObject()V

    goto :goto_0

    .line 374
    :pswitch_1
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/JsonGeneratorBase;->writeEndObject()V

    goto :goto_0

    .line 377
    :pswitch_2
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/JsonGeneratorBase;->writeStartArray()V

    goto :goto_0

    .line 380
    :pswitch_3
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/JsonGeneratorBase;->writeEndArray()V

    goto :goto_0

    .line 383
    :pswitch_4
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/flurry/org/codehaus/jackson/impl/JsonGeneratorBase;->writeFieldName(Ljava/lang/String;)V

    goto :goto_0

    .line 386
    :pswitch_5
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->hasTextCharacters()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 387
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getTextCharacters()[C

    move-result-object v1

    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getTextOffset()I

    move-result v2

    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getTextLength()I

    move-result v3

    invoke-virtual {p0, v1, v2, v3}, Lcom/flurry/org/codehaus/jackson/impl/JsonGeneratorBase;->writeString([CII)V

    goto :goto_0

    .line 389
    :cond_1
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/flurry/org/codehaus/jackson/impl/JsonGeneratorBase;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 393
    :pswitch_6
    sget-object v1, Lcom/flurry/org/codehaus/jackson/impl/JsonGeneratorBase$1;->$SwitchMap$org$codehaus$jackson$JsonParser$NumberType:[I

    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getNumberType()Lcom/flurry/org/codehaus/jackson/JsonParser$NumberType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/flurry/org/codehaus/jackson/JsonParser$NumberType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1

    .line 401
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getLongValue()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/flurry/org/codehaus/jackson/impl/JsonGeneratorBase;->writeNumber(J)V

    goto :goto_0

    .line 395
    :pswitch_7
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getIntValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/flurry/org/codehaus/jackson/impl/JsonGeneratorBase;->writeNumber(I)V

    goto :goto_0

    .line 398
    :pswitch_8
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getBigIntegerValue()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/flurry/org/codehaus/jackson/impl/JsonGeneratorBase;->writeNumber(Ljava/math/BigInteger;)V

    goto :goto_0

    .line 405
    :pswitch_9
    sget-object v1, Lcom/flurry/org/codehaus/jackson/impl/JsonGeneratorBase$1;->$SwitchMap$org$codehaus$jackson$JsonParser$NumberType:[I

    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getNumberType()Lcom/flurry/org/codehaus/jackson/JsonParser$NumberType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/flurry/org/codehaus/jackson/JsonParser$NumberType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_2

    .line 413
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getDoubleValue()D

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/flurry/org/codehaus/jackson/impl/JsonGeneratorBase;->writeNumber(D)V

    goto :goto_0

    .line 407
    :pswitch_a
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getDecimalValue()Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/flurry/org/codehaus/jackson/impl/JsonGeneratorBase;->writeNumber(Ljava/math/BigDecimal;)V

    goto :goto_0

    .line 410
    :pswitch_b
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getFloatValue()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/flurry/org/codehaus/jackson/impl/JsonGeneratorBase;->writeNumber(F)V

    goto/16 :goto_0

    .line 417
    :pswitch_c
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/flurry/org/codehaus/jackson/impl/JsonGeneratorBase;->writeBoolean(Z)V

    goto/16 :goto_0

    .line 420
    :pswitch_d
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/flurry/org/codehaus/jackson/impl/JsonGeneratorBase;->writeBoolean(Z)V

    goto/16 :goto_0

    .line 423
    :pswitch_e
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/JsonGeneratorBase;->writeNull()V

    goto/16 :goto_0

    .line 426
    :pswitch_f
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getEmbeddedObject()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/flurry/org/codehaus/jackson/impl/JsonGeneratorBase;->writeObject(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 369
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
        :pswitch_9
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch

    .line 393
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_7
        :pswitch_8
    .end packed-switch

    .line 405
    :pswitch_data_2
    .packed-switch 0x3
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public final copyCurrentStructure(Lcom/flurry/org/codehaus/jackson/JsonParser;)V
    .locals 3
    .param p1, "jp"    # Lcom/flurry/org/codehaus/jackson/JsonParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 437
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getCurrentToken()Lcom/flurry/org/codehaus/jackson/JsonToken;

    move-result-object v0

    .line 440
    .local v0, "t":Lcom/flurry/org/codehaus/jackson/JsonToken;
    sget-object v1, Lcom/flurry/org/codehaus/jackson/JsonToken;->FIELD_NAME:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_0

    .line 441
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/flurry/org/codehaus/jackson/impl/JsonGeneratorBase;->writeFieldName(Ljava/lang/String;)V

    .line 442
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->nextToken()Lcom/flurry/org/codehaus/jackson/JsonToken;

    move-result-object v0

    .line 446
    :cond_0
    sget-object v1, Lcom/flurry/org/codehaus/jackson/impl/JsonGeneratorBase$1;->$SwitchMap$org$codehaus$jackson$JsonToken:[I

    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/JsonToken;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 462
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/flurry/org/codehaus/jackson/impl/JsonGeneratorBase;->copyCurrentEvent(Lcom/flurry/org/codehaus/jackson/JsonParser;)V

    .line 464
    :goto_0
    return-void

    .line 448
    :pswitch_1
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/JsonGeneratorBase;->writeStartArray()V

    .line 449
    :goto_1
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->nextToken()Lcom/flurry/org/codehaus/jackson/JsonToken;

    move-result-object v1

    sget-object v2, Lcom/flurry/org/codehaus/jackson/JsonToken;->END_ARRAY:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-eq v1, v2, :cond_1

    .line 450
    invoke-virtual {p0, p1}, Lcom/flurry/org/codehaus/jackson/impl/JsonGeneratorBase;->copyCurrentStructure(Lcom/flurry/org/codehaus/jackson/JsonParser;)V

    goto :goto_1

    .line 452
    :cond_1
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/JsonGeneratorBase;->writeEndArray()V

    goto :goto_0

    .line 455
    :pswitch_2
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/JsonGeneratorBase;->writeStartObject()V

    .line 456
    :goto_2
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->nextToken()Lcom/flurry/org/codehaus/jackson/JsonToken;

    move-result-object v1

    sget-object v2, Lcom/flurry/org/codehaus/jackson/JsonToken;->END_OBJECT:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-eq v1, v2, :cond_2

    .line 457
    invoke-virtual {p0, p1}, Lcom/flurry/org/codehaus/jackson/impl/JsonGeneratorBase;->copyCurrentStructure(Lcom/flurry/org/codehaus/jackson/JsonParser;)V

    goto :goto_2

    .line 459
    :cond_2
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/JsonGeneratorBase;->writeEndObject()V

    goto :goto_0

    .line 446
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public disable(Lcom/flurry/org/codehaus/jackson/JsonGenerator$Feature;)Lcom/flurry/org/codehaus/jackson/JsonGenerator;
    .locals 3
    .param p1, "f"    # Lcom/flurry/org/codehaus/jackson/JsonGenerator$Feature;

    .prologue
    const/4 v2, 0x0

    .line 102
    iget v0, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonGeneratorBase;->_features:I

    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonGenerator$Feature;->getMask()I

    move-result v1

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonGeneratorBase;->_features:I

    .line 103
    sget-object v0, Lcom/flurry/org/codehaus/jackson/JsonGenerator$Feature;->WRITE_NUMBERS_AS_STRINGS:Lcom/flurry/org/codehaus/jackson/JsonGenerator$Feature;

    if-ne p1, v0, :cond_1

    .line 104
    iput-boolean v2, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonGeneratorBase;->_cfgNumbersAsStrings:Z

    .line 108
    :cond_0
    :goto_0
    return-object p0

    .line 105
    :cond_1
    sget-object v0, Lcom/flurry/org/codehaus/jackson/JsonGenerator$Feature;->ESCAPE_NON_ASCII:Lcom/flurry/org/codehaus/jackson/JsonGenerator$Feature;

    if-ne p1, v0, :cond_0

    .line 106
    invoke-virtual {p0, v2}, Lcom/flurry/org/codehaus/jackson/impl/JsonGeneratorBase;->setHighestNonEscapedChar(I)Lcom/flurry/org/codehaus/jackson/JsonGenerator;

    goto :goto_0
.end method

.method public enable(Lcom/flurry/org/codehaus/jackson/JsonGenerator$Feature;)Lcom/flurry/org/codehaus/jackson/JsonGenerator;
    .locals 2
    .param p1, "f"    # Lcom/flurry/org/codehaus/jackson/JsonGenerator$Feature;

    .prologue
    .line 91
    iget v0, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonGeneratorBase;->_features:I

    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonGenerator$Feature;->getMask()I

    move-result v1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonGeneratorBase;->_features:I

    .line 92
    sget-object v0, Lcom/flurry/org/codehaus/jackson/JsonGenerator$Feature;->WRITE_NUMBERS_AS_STRINGS:Lcom/flurry/org/codehaus/jackson/JsonGenerator$Feature;

    if-ne p1, v0, :cond_1

    .line 93
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonGeneratorBase;->_cfgNumbersAsStrings:Z

    .line 97
    :cond_0
    :goto_0
    return-object p0

    .line 94
    :cond_1
    sget-object v0, Lcom/flurry/org/codehaus/jackson/JsonGenerator$Feature;->ESCAPE_NON_ASCII:Lcom/flurry/org/codehaus/jackson/JsonGenerator$Feature;

    if-ne p1, v0, :cond_0

    .line 95
    const/16 v0, 0x7f

    invoke-virtual {p0, v0}, Lcom/flurry/org/codehaus/jackson/impl/JsonGeneratorBase;->setHighestNonEscapedChar(I)Lcom/flurry/org/codehaus/jackson/JsonGenerator;

    goto :goto_0
.end method

.method public abstract flush()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final getCodec()Lcom/flurry/org/codehaus/jackson/ObjectCodec;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonGeneratorBase;->_objectCodec:Lcom/flurry/org/codehaus/jackson/ObjectCodec;

    return-object v0
.end method

.method public bridge synthetic getOutputContext()Lcom/flurry/org/codehaus/jackson/JsonStreamContext;
    .locals 1

    .prologue
    .line 19
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/JsonGeneratorBase;->getOutputContext()Lcom/flurry/org/codehaus/jackson/impl/JsonWriteContext;

    move-result-object v0

    return-object v0
.end method

.method public final getOutputContext()Lcom/flurry/org/codehaus/jackson/impl/JsonWriteContext;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonGeneratorBase;->_writeContext:Lcom/flurry/org/codehaus/jackson/impl/JsonWriteContext;

    return-object v0
.end method

.method public isClosed()Z
    .locals 1

    .prologue
    .line 352
    iget-boolean v0, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonGeneratorBase;->_closed:Z

    return v0
.end method

.method public final isEnabled(Lcom/flurry/org/codehaus/jackson/JsonGenerator$Feature;)Z
    .locals 2
    .param p1, "f"    # Lcom/flurry/org/codehaus/jackson/JsonGenerator$Feature;

    .prologue
    .line 115
    iget v0, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonGeneratorBase;->_features:I

    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonGenerator$Feature;->getMask()I

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

.method public setCodec(Lcom/flurry/org/codehaus/jackson/ObjectCodec;)Lcom/flurry/org/codehaus/jackson/JsonGenerator;
    .locals 0
    .param p1, "oc"    # Lcom/flurry/org/codehaus/jackson/ObjectCodec;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonGeneratorBase;->_objectCodec:Lcom/flurry/org/codehaus/jackson/ObjectCodec;

    .line 126
    return-object p0
.end method

.method public useDefaultPrettyPrinter()Lcom/flurry/org/codehaus/jackson/JsonGenerator;
    .locals 1

    .prologue
    .line 120
    new-instance v0, Lcom/flurry/org/codehaus/jackson/util/DefaultPrettyPrinter;

    invoke-direct {v0}, Lcom/flurry/org/codehaus/jackson/util/DefaultPrettyPrinter;-><init>()V

    invoke-virtual {p0, v0}, Lcom/flurry/org/codehaus/jackson/impl/JsonGeneratorBase;->setPrettyPrinter(Lcom/flurry/org/codehaus/jackson/PrettyPrinter;)Lcom/flurry/org/codehaus/jackson/JsonGenerator;

    move-result-object v0

    return-object v0
.end method

.method public version()Lcom/flurry/org/codehaus/jackson/Version;
    .locals 1

    .prologue
    .line 80
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/flurry/org/codehaus/jackson/util/VersionUtil;->versionFor(Ljava/lang/Class;)Lcom/flurry/org/codehaus/jackson/Version;

    move-result-object v0

    return-object v0
.end method

.method public writeEndArray()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 174
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonGeneratorBase;->_writeContext:Lcom/flurry/org/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/impl/JsonWriteContext;->inArray()Z

    move-result v0

    if-nez v0, :cond_0

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current context not an ARRAY but "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonGeneratorBase;->_writeContext:Lcom/flurry/org/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v1}, Lcom/flurry/org/codehaus/jackson/impl/JsonWriteContext;->getTypeDesc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flurry/org/codehaus/jackson/impl/JsonGeneratorBase;->_reportError(Ljava/lang/String;)V

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonGeneratorBase;->_cfgPrettyPrinter:Lcom/flurry/org/codehaus/jackson/PrettyPrinter;

    if-eqz v0, :cond_1

    .line 178
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonGeneratorBase;->_cfgPrettyPrinter:Lcom/flurry/org/codehaus/jackson/PrettyPrinter;

    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonGeneratorBase;->_writeContext:Lcom/flurry/org/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v1}, Lcom/flurry/org/codehaus/jackson/impl/JsonWriteContext;->getEntryCount()I

    move-result v1

    invoke-interface {v0, p0, v1}, Lcom/flurry/org/codehaus/jackson/PrettyPrinter;->writeEndArray(Lcom/flurry/org/codehaus/jackson/JsonGenerator;I)V

    .line 182
    :goto_0
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonGeneratorBase;->_writeContext:Lcom/flurry/org/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/impl/JsonWriteContext;->getParent()Lcom/flurry/org/codehaus/jackson/impl/JsonWriteContext;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonGeneratorBase;->_writeContext:Lcom/flurry/org/codehaus/jackson/impl/JsonWriteContext;

    .line 183
    return-void

    .line 180
    :cond_1
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/JsonGeneratorBase;->_writeEndArray()V

    goto :goto_0
.end method

.method public writeEndObject()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 216
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonGeneratorBase;->_writeContext:Lcom/flurry/org/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/impl/JsonWriteContext;->inObject()Z

    move-result v0

    if-nez v0, :cond_0

    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current context not an object but "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonGeneratorBase;->_writeContext:Lcom/flurry/org/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v1}, Lcom/flurry/org/codehaus/jackson/impl/JsonWriteContext;->getTypeDesc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flurry/org/codehaus/jackson/impl/JsonGeneratorBase;->_reportError(Ljava/lang/String;)V

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonGeneratorBase;->_writeContext:Lcom/flurry/org/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/impl/JsonWriteContext;->getParent()Lcom/flurry/org/codehaus/jackson/impl/JsonWriteContext;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonGeneratorBase;->_writeContext:Lcom/flurry/org/codehaus/jackson/impl/JsonWriteContext;

    .line 220
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonGeneratorBase;->_cfgPrettyPrinter:Lcom/flurry/org/codehaus/jackson/PrettyPrinter;

    if-eqz v0, :cond_1

    .line 221
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonGeneratorBase;->_cfgPrettyPrinter:Lcom/flurry/org/codehaus/jackson/PrettyPrinter;

    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonGeneratorBase;->_writeContext:Lcom/flurry/org/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v1}, Lcom/flurry/org/codehaus/jackson/impl/JsonWriteContext;->getEntryCount()I

    move-result v1

    invoke-interface {v0, p0, v1}, Lcom/flurry/org/codehaus/jackson/PrettyPrinter;->writeEndObject(Lcom/flurry/org/codehaus/jackson/JsonGenerator;I)V

    .line 225
    :goto_0
    return-void

    .line 223
    :cond_1
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/JsonGeneratorBase;->_writeEndObject()V

    goto :goto_0
.end method

.method public writeObject(Ljava/lang/Object;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 304
    if-nez p1, :cond_0

    .line 306
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/JsonGeneratorBase;->writeNull()V

    .line 319
    :goto_0
    return-void

    .line 313
    :cond_0
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonGeneratorBase;->_objectCodec:Lcom/flurry/org/codehaus/jackson/ObjectCodec;

    if-eqz v0, :cond_1

    .line 314
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonGeneratorBase;->_objectCodec:Lcom/flurry/org/codehaus/jackson/ObjectCodec;

    invoke-virtual {v0, p0, p1}, Lcom/flurry/org/codehaus/jackson/ObjectCodec;->writeValue(Lcom/flurry/org/codehaus/jackson/JsonGenerator;Ljava/lang/Object;)V

    goto :goto_0

    .line 317
    :cond_1
    invoke-virtual {p0, p1}, Lcom/flurry/org/codehaus/jackson/impl/JsonGeneratorBase;->_writeSimpleObject(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public writeRawValue(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 253
    const-string v0, "write raw value"

    invoke-virtual {p0, v0}, Lcom/flurry/org/codehaus/jackson/impl/JsonGeneratorBase;->_verifyValueWrite(Ljava/lang/String;)V

    .line 254
    invoke-virtual {p0, p1}, Lcom/flurry/org/codehaus/jackson/impl/JsonGeneratorBase;->writeRaw(Ljava/lang/String;)V

    .line 255
    return-void
.end method

.method public writeRawValue(Ljava/lang/String;II)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 261
    const-string v0, "write raw value"

    invoke-virtual {p0, v0}, Lcom/flurry/org/codehaus/jackson/impl/JsonGeneratorBase;->_verifyValueWrite(Ljava/lang/String;)V

    .line 262
    invoke-virtual {p0, p1, p2, p3}, Lcom/flurry/org/codehaus/jackson/impl/JsonGeneratorBase;->writeRaw(Ljava/lang/String;II)V

    .line 263
    return-void
.end method

.method public writeRawValue([CII)V
    .locals 1
    .param p1, "text"    # [C
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 269
    const-string v0, "write raw value"

    invoke-virtual {p0, v0}, Lcom/flurry/org/codehaus/jackson/impl/JsonGeneratorBase;->_verifyValueWrite(Ljava/lang/String;)V

    .line 270
    invoke-virtual {p0, p1, p2, p3}, Lcom/flurry/org/codehaus/jackson/impl/JsonGeneratorBase;->writeRaw([CII)V

    .line 271
    return-void
.end method

.method public writeStartArray()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 154
    const-string v0, "start an array"

    invoke-virtual {p0, v0}, Lcom/flurry/org/codehaus/jackson/impl/JsonGeneratorBase;->_verifyValueWrite(Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonGeneratorBase;->_writeContext:Lcom/flurry/org/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/impl/JsonWriteContext;->createChildArrayContext()Lcom/flurry/org/codehaus/jackson/impl/JsonWriteContext;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonGeneratorBase;->_writeContext:Lcom/flurry/org/codehaus/jackson/impl/JsonWriteContext;

    .line 156
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonGeneratorBase;->_cfgPrettyPrinter:Lcom/flurry/org/codehaus/jackson/PrettyPrinter;

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonGeneratorBase;->_cfgPrettyPrinter:Lcom/flurry/org/codehaus/jackson/PrettyPrinter;

    invoke-interface {v0, p0}, Lcom/flurry/org/codehaus/jackson/PrettyPrinter;->writeStartArray(Lcom/flurry/org/codehaus/jackson/JsonGenerator;)V

    .line 161
    :goto_0
    return-void

    .line 159
    :cond_0
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/JsonGeneratorBase;->_writeStartArray()V

    goto :goto_0
.end method

.method public writeStartObject()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 196
    const-string v0, "start an object"

    invoke-virtual {p0, v0}, Lcom/flurry/org/codehaus/jackson/impl/JsonGeneratorBase;->_verifyValueWrite(Ljava/lang/String;)V

    .line 197
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonGeneratorBase;->_writeContext:Lcom/flurry/org/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/impl/JsonWriteContext;->createChildObjectContext()Lcom/flurry/org/codehaus/jackson/impl/JsonWriteContext;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonGeneratorBase;->_writeContext:Lcom/flurry/org/codehaus/jackson/impl/JsonWriteContext;

    .line 198
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonGeneratorBase;->_cfgPrettyPrinter:Lcom/flurry/org/codehaus/jackson/PrettyPrinter;

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonGeneratorBase;->_cfgPrettyPrinter:Lcom/flurry/org/codehaus/jackson/PrettyPrinter;

    invoke-interface {v0, p0}, Lcom/flurry/org/codehaus/jackson/PrettyPrinter;->writeStartObject(Lcom/flurry/org/codehaus/jackson/JsonGenerator;)V

    .line 203
    :goto_0
    return-void

    .line 201
    :cond_0
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/JsonGeneratorBase;->_writeStartObject()V

    goto :goto_0
.end method

.method public writeTree(Lcom/flurry/org/codehaus/jackson/JsonNode;)V
    .locals 2
    .param p1, "rootNode"    # Lcom/flurry/org/codehaus/jackson/JsonNode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 326
    if-nez p1, :cond_0

    .line 327
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/JsonGeneratorBase;->writeNull()V

    .line 334
    :goto_0
    return-void

    .line 329
    :cond_0
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonGeneratorBase;->_objectCodec:Lcom/flurry/org/codehaus/jackson/ObjectCodec;

    if-nez v0, :cond_1

    .line 330
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No ObjectCodec defined for the generator, can not serialize JsonNode-based trees"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 332
    :cond_1
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonGeneratorBase;->_objectCodec:Lcom/flurry/org/codehaus/jackson/ObjectCodec;

    invoke-virtual {v0, p0, p1}, Lcom/flurry/org/codehaus/jackson/ObjectCodec;->writeTree(Lcom/flurry/org/codehaus/jackson/JsonGenerator;Lcom/flurry/org/codehaus/jackson/JsonNode;)V

    goto :goto_0
.end method
