.class public Lcom/flurry/org/apache/avro/io/parsing/ResolvingGrammarGenerator;
.super Lcom/flurry/org/apache/avro/io/parsing/ValidatingGrammarGenerator;
.source "ResolvingGrammarGenerator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/org/apache/avro/io/parsing/ResolvingGrammarGenerator$1;,
        Lcom/flurry/org/apache/avro/io/parsing/ResolvingGrammarGenerator$LitS2;
    }
.end annotation


# static fields
.field private static factory:Lcom/flurry/org/apache/avro/io/EncoderFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 281
    new-instance v0, Lcom/flurry/org/apache/avro/io/EncoderFactory;

    invoke-direct {v0}, Lcom/flurry/org/apache/avro/io/EncoderFactory;-><init>()V

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lcom/flurry/org/apache/avro/io/EncoderFactory;->configureBufferSize(I)Lcom/flurry/org/apache/avro/io/EncoderFactory;

    move-result-object v0

    sput-object v0, Lcom/flurry/org/apache/avro/io/parsing/ResolvingGrammarGenerator;->factory:Lcom/flurry/org/apache/avro/io/EncoderFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/flurry/org/apache/avro/io/parsing/ValidatingGrammarGenerator;-><init>()V

    .line 464
    return-void
.end method

.method private static bestBranch(Lcom/flurry/org/apache/avro/Schema;Lcom/flurry/org/apache/avro/Schema;)I
    .locals 8
    .param p0, "r"    # Lcom/flurry/org/apache/avro/Schema;
    .param p1, "w"    # Lcom/flurry/org/apache/avro/Schema;

    .prologue
    .line 419
    invoke-virtual {p1}, Lcom/flurry/org/apache/avro/Schema;->getType()Lcom/flurry/org/apache/avro/Schema$Type;

    move-result-object v5

    .line 421
    .local v5, "vt":Lcom/flurry/org/apache/avro/Schema$Type;
    const/4 v3, 0x0

    .line 422
    .local v3, "j":I
    invoke-virtual {p0}, Lcom/flurry/org/apache/avro/Schema;->getTypes()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/org/apache/avro/Schema;

    .line 423
    .local v0, "b":Lcom/flurry/org/apache/avro/Schema;
    invoke-virtual {v0}, Lcom/flurry/org/apache/avro/Schema;->getType()Lcom/flurry/org/apache/avro/Schema$Type;

    move-result-object v6

    if-ne v5, v6, :cond_4

    .line 424
    sget-object v6, Lcom/flurry/org/apache/avro/Schema$Type;->RECORD:Lcom/flurry/org/apache/avro/Schema$Type;

    if-eq v5, v6, :cond_0

    sget-object v6, Lcom/flurry/org/apache/avro/Schema$Type;->ENUM:Lcom/flurry/org/apache/avro/Schema$Type;

    if-eq v5, v6, :cond_0

    sget-object v6, Lcom/flurry/org/apache/avro/Schema$Type;->FIXED:Lcom/flurry/org/apache/avro/Schema$Type;

    if-ne v5, v6, :cond_3

    .line 426
    :cond_0
    invoke-virtual {p1}, Lcom/flurry/org/apache/avro/Schema;->getFullName()Ljava/lang/String;

    move-result-object v4

    .line 427
    .local v4, "vname":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/flurry/org/apache/avro/Schema;->getFullName()Ljava/lang/String;

    move-result-object v1

    .line 428
    .local v1, "bname":Ljava/lang/String;
    if-eqz v4, :cond_1

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    :cond_1
    if-ne v4, v1, :cond_4

    sget-object v6, Lcom/flurry/org/apache/avro/Schema$Type;->RECORD:Lcom/flurry/org/apache/avro/Schema$Type;

    if-ne v5, v6, :cond_4

    :cond_2
    move v6, v3

    .line 456
    .end local v0    # "b":Lcom/flurry/org/apache/avro/Schema;
    .end local v1    # "bname":Ljava/lang/String;
    .end local v4    # "vname":Ljava/lang/String;
    :goto_1
    return v6

    .restart local v0    # "b":Lcom/flurry/org/apache/avro/Schema;
    :cond_3
    move v6, v3

    .line 432
    goto :goto_1

    .line 433
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 437
    .end local v0    # "b":Lcom/flurry/org/apache/avro/Schema;
    :cond_5
    const/4 v3, 0x0

    .line 438
    invoke-virtual {p0}, Lcom/flurry/org/apache/avro/Schema;->getTypes()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/org/apache/avro/Schema;

    .line 439
    .restart local v0    # "b":Lcom/flurry/org/apache/avro/Schema;
    sget-object v6, Lcom/flurry/org/apache/avro/io/parsing/ResolvingGrammarGenerator$1;->$SwitchMap$org$apache$avro$Schema$Type:[I

    invoke-virtual {v5}, Lcom/flurry/org/apache/avro/Schema$Type;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 454
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 441
    :pswitch_0
    sget-object v6, Lcom/flurry/org/apache/avro/io/parsing/ResolvingGrammarGenerator$1;->$SwitchMap$org$apache$avro$Schema$Type:[I

    invoke-virtual {v0}, Lcom/flurry/org/apache/avro/Schema;->getType()Lcom/flurry/org/apache/avro/Schema$Type;

    move-result-object v7

    invoke-virtual {v7}, Lcom/flurry/org/apache/avro/Schema$Type;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_1

    :pswitch_1
    goto :goto_3

    :pswitch_2
    move v6, v3

    .line 443
    goto :goto_1

    .line 448
    :pswitch_3
    sget-object v6, Lcom/flurry/org/apache/avro/io/parsing/ResolvingGrammarGenerator$1;->$SwitchMap$org$apache$avro$Schema$Type:[I

    invoke-virtual {v0}, Lcom/flurry/org/apache/avro/Schema;->getType()Lcom/flurry/org/apache/avro/Schema$Type;

    move-result-object v7

    invoke-virtual {v7}, Lcom/flurry/org/apache/avro/Schema$Type;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_2

    goto :goto_3

    :pswitch_4
    move v6, v3

    .line 450
    goto :goto_1

    .line 456
    .end local v0    # "b":Lcom/flurry/org/apache/avro/Schema;
    :cond_6
    const/4 v6, -0x1

    goto :goto_1

    .line 439
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_3
        :pswitch_3
    .end packed-switch

    .line 441
    :pswitch_data_1
    .packed-switch 0x4
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 448
    :pswitch_data_2
    .packed-switch 0x6
        :pswitch_4
    .end packed-switch
.end method

.method public static encode(Lcom/flurry/org/apache/avro/io/Encoder;Lcom/flurry/org/apache/avro/Schema;Lcom/flurry/org/codehaus/jackson/JsonNode;)V
    .locals 13
    .param p0, "e"    # Lcom/flurry/org/apache/avro/io/Encoder;
    .param p1, "s"    # Lcom/flurry/org/apache/avro/Schema;
    .param p2, "n"    # Lcom/flurry/org/codehaus/jackson/JsonNode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    .line 309
    sget-object v10, Lcom/flurry/org/apache/avro/io/parsing/ResolvingGrammarGenerator$1;->$SwitchMap$org$apache$avro$Schema$Type:[I

    invoke-virtual {p1}, Lcom/flurry/org/apache/avro/Schema;->getType()Lcom/flurry/org/apache/avro/Schema$Type;

    move-result-object v11

    invoke-virtual {v11}, Lcom/flurry/org/apache/avro/Schema$Type;->ordinal()I

    move-result v11

    aget v10, v10, v11

    packed-switch v10, :pswitch_data_0

    .line 405
    :cond_0
    :goto_0
    return-void

    .line 311
    :pswitch_0
    invoke-virtual {p1}, Lcom/flurry/org/apache/avro/Schema;->getFields()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flurry/org/apache/avro/Schema$Field;

    .line 312
    .local v1, "f":Lcom/flurry/org/apache/avro/Schema$Field;
    invoke-virtual {v1}, Lcom/flurry/org/apache/avro/Schema$Field;->name()Ljava/lang/String;

    move-result-object v6

    .line 313
    .local v6, "name":Ljava/lang/String;
    invoke-virtual {p2, v6}, Lcom/flurry/org/codehaus/jackson/JsonNode;->get(Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/JsonNode;

    move-result-object v9

    .line 314
    .local v9, "v":Lcom/flurry/org/codehaus/jackson/JsonNode;
    if-nez v9, :cond_1

    .line 315
    invoke-virtual {v1}, Lcom/flurry/org/apache/avro/Schema$Field;->defaultValue()Lcom/flurry/org/codehaus/jackson/JsonNode;

    move-result-object v9

    .line 317
    :cond_1
    if-nez v9, :cond_2

    .line 318
    new-instance v10, Lcom/flurry/org/apache/avro/AvroTypeException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "No default value for: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/flurry/org/apache/avro/AvroTypeException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 320
    :cond_2
    invoke-virtual {v1}, Lcom/flurry/org/apache/avro/Schema$Field;->schema()Lcom/flurry/org/apache/avro/Schema;

    move-result-object v10

    invoke-static {p0, v10, v9}, Lcom/flurry/org/apache/avro/io/parsing/ResolvingGrammarGenerator;->encode(Lcom/flurry/org/apache/avro/io/Encoder;Lcom/flurry/org/apache/avro/Schema;Lcom/flurry/org/codehaus/jackson/JsonNode;)V

    goto :goto_1

    .line 324
    .end local v1    # "f":Lcom/flurry/org/apache/avro/Schema$Field;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v6    # "name":Ljava/lang/String;
    .end local v9    # "v":Lcom/flurry/org/codehaus/jackson/JsonNode;
    :pswitch_1
    invoke-virtual {p2}, Lcom/flurry/org/codehaus/jackson/JsonNode;->getTextValue()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v10}, Lcom/flurry/org/apache/avro/Schema;->getEnumOrdinal(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {p0, v10}, Lcom/flurry/org/apache/avro/io/Encoder;->writeEnum(I)V

    goto :goto_0

    .line 327
    :pswitch_2
    invoke-virtual {p0}, Lcom/flurry/org/apache/avro/io/Encoder;->writeArrayStart()V

    .line 328
    invoke-virtual {p2}, Lcom/flurry/org/codehaus/jackson/JsonNode;->size()I

    move-result v10

    int-to-long v10, v10

    invoke-virtual {p0, v10, v11}, Lcom/flurry/org/apache/avro/io/Encoder;->setItemCount(J)V

    .line 329
    invoke-virtual {p1}, Lcom/flurry/org/apache/avro/Schema;->getElementType()Lcom/flurry/org/apache/avro/Schema;

    move-result-object v2

    .line 330
    .local v2, "i":Lcom/flurry/org/apache/avro/Schema;
    invoke-virtual {p2}, Lcom/flurry/org/codehaus/jackson/JsonNode;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/flurry/org/codehaus/jackson/JsonNode;

    .line 331
    .local v8, "node":Lcom/flurry/org/codehaus/jackson/JsonNode;
    invoke-virtual {p0}, Lcom/flurry/org/apache/avro/io/Encoder;->startItem()V

    .line 332
    invoke-static {p0, v2, v8}, Lcom/flurry/org/apache/avro/io/parsing/ResolvingGrammarGenerator;->encode(Lcom/flurry/org/apache/avro/io/Encoder;Lcom/flurry/org/apache/avro/Schema;Lcom/flurry/org/codehaus/jackson/JsonNode;)V

    goto :goto_2

    .line 334
    .end local v8    # "node":Lcom/flurry/org/codehaus/jackson/JsonNode;
    :cond_3
    invoke-virtual {p0}, Lcom/flurry/org/apache/avro/io/Encoder;->writeArrayEnd()V

    goto :goto_0

    .line 337
    .end local v2    # "i":Lcom/flurry/org/apache/avro/Schema;
    .end local v3    # "i$":Ljava/util/Iterator;
    :pswitch_3
    invoke-virtual {p0}, Lcom/flurry/org/apache/avro/io/Encoder;->writeMapStart()V

    .line 338
    invoke-virtual {p2}, Lcom/flurry/org/codehaus/jackson/JsonNode;->size()I

    move-result v10

    int-to-long v10, v10

    invoke-virtual {p0, v10, v11}, Lcom/flurry/org/apache/avro/io/Encoder;->setItemCount(J)V

    .line 339
    invoke-virtual {p1}, Lcom/flurry/org/apache/avro/Schema;->getValueType()Lcom/flurry/org/apache/avro/Schema;

    move-result-object v9

    .line 340
    .local v9, "v":Lcom/flurry/org/apache/avro/Schema;
    invoke-virtual {p2}, Lcom/flurry/org/codehaus/jackson/JsonNode;->getFieldNames()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 341
    invoke-virtual {p0}, Lcom/flurry/org/apache/avro/io/Encoder;->startItem()V

    .line 342
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 343
    .local v5, "key":Ljava/lang/String;
    invoke-virtual {p0, v5}, Lcom/flurry/org/apache/avro/io/Encoder;->writeString(Ljava/lang/String;)V

    .line 344
    invoke-virtual {p2, v5}, Lcom/flurry/org/codehaus/jackson/JsonNode;->get(Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/JsonNode;

    move-result-object v10

    invoke-static {p0, v9, v10}, Lcom/flurry/org/apache/avro/io/parsing/ResolvingGrammarGenerator;->encode(Lcom/flurry/org/apache/avro/io/Encoder;Lcom/flurry/org/apache/avro/Schema;Lcom/flurry/org/codehaus/jackson/JsonNode;)V

    goto :goto_3

    .line 346
    .end local v5    # "key":Ljava/lang/String;
    :cond_4
    invoke-virtual {p0}, Lcom/flurry/org/apache/avro/io/Encoder;->writeMapEnd()V

    goto/16 :goto_0

    .line 349
    .end local v4    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v9    # "v":Lcom/flurry/org/apache/avro/Schema;
    :pswitch_4
    invoke-virtual {p0, v12}, Lcom/flurry/org/apache/avro/io/Encoder;->writeIndex(I)V

    .line 350
    invoke-virtual {p1}, Lcom/flurry/org/apache/avro/Schema;->getTypes()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/flurry/org/apache/avro/Schema;

    invoke-static {p0, v10, p2}, Lcom/flurry/org/apache/avro/io/parsing/ResolvingGrammarGenerator;->encode(Lcom/flurry/org/apache/avro/io/Encoder;Lcom/flurry/org/apache/avro/Schema;Lcom/flurry/org/codehaus/jackson/JsonNode;)V

    goto/16 :goto_0

    .line 353
    :pswitch_5
    invoke-virtual {p2}, Lcom/flurry/org/codehaus/jackson/JsonNode;->isTextual()Z

    move-result v10

    if-nez v10, :cond_5

    .line 354
    new-instance v10, Lcom/flurry/org/apache/avro/AvroTypeException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Non-string default value for fixed: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/flurry/org/apache/avro/AvroTypeException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 355
    :cond_5
    invoke-virtual {p2}, Lcom/flurry/org/codehaus/jackson/JsonNode;->getTextValue()Ljava/lang/String;

    move-result-object v10

    const-string v11, "ISO-8859-1"

    invoke-virtual {v10, v11}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 356
    .local v0, "bb":[B
    array-length v10, v0

    invoke-virtual {p1}, Lcom/flurry/org/apache/avro/Schema;->getFixedSize()I

    move-result v11

    if-eq v10, v11, :cond_6

    .line 358
    invoke-virtual {p1}, Lcom/flurry/org/apache/avro/Schema;->getFixedSize()I

    move-result v10

    new-array v7, v10, [B

    .line 359
    .local v7, "newBb":[B
    invoke-virtual {p1}, Lcom/flurry/org/apache/avro/Schema;->getFixedSize()I

    move-result v10

    array-length v11, v0

    if-le v10, v11, :cond_7

    array-length v10, v0

    :goto_4
    invoke-static {v0, v12, v7, v12, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 360
    move-object v0, v7

    .line 362
    .end local v7    # "newBb":[B
    :cond_6
    invoke-virtual {p0, v0}, Lcom/flurry/org/apache/avro/io/Encoder;->writeFixed([B)V

    goto/16 :goto_0

    .line 359
    .restart local v7    # "newBb":[B
    :cond_7
    invoke-virtual {p1}, Lcom/flurry/org/apache/avro/Schema;->getFixedSize()I

    move-result v10

    goto :goto_4

    .line 365
    .end local v0    # "bb":[B
    .end local v7    # "newBb":[B
    :pswitch_6
    invoke-virtual {p2}, Lcom/flurry/org/codehaus/jackson/JsonNode;->isTextual()Z

    move-result v10

    if-nez v10, :cond_8

    .line 366
    new-instance v10, Lcom/flurry/org/apache/avro/AvroTypeException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Non-string default value for string: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/flurry/org/apache/avro/AvroTypeException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 367
    :cond_8
    invoke-virtual {p2}, Lcom/flurry/org/codehaus/jackson/JsonNode;->getTextValue()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/flurry/org/apache/avro/io/Encoder;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 370
    :pswitch_7
    invoke-virtual {p2}, Lcom/flurry/org/codehaus/jackson/JsonNode;->isTextual()Z

    move-result v10

    if-nez v10, :cond_9

    .line 371
    new-instance v10, Lcom/flurry/org/apache/avro/AvroTypeException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Non-string default value for bytes: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/flurry/org/apache/avro/AvroTypeException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 372
    :cond_9
    invoke-virtual {p2}, Lcom/flurry/org/codehaus/jackson/JsonNode;->getTextValue()Ljava/lang/String;

    move-result-object v10

    const-string v11, "ISO-8859-1"

    invoke-virtual {v10, v11}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/flurry/org/apache/avro/io/Encoder;->writeBytes([B)V

    goto/16 :goto_0

    .line 375
    :pswitch_8
    invoke-virtual {p2}, Lcom/flurry/org/codehaus/jackson/JsonNode;->isNumber()Z

    move-result v10

    if-nez v10, :cond_a

    .line 376
    new-instance v10, Lcom/flurry/org/apache/avro/AvroTypeException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Non-numeric default value for int: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/flurry/org/apache/avro/AvroTypeException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 377
    :cond_a
    invoke-virtual {p2}, Lcom/flurry/org/codehaus/jackson/JsonNode;->getIntValue()I

    move-result v10

    invoke-virtual {p0, v10}, Lcom/flurry/org/apache/avro/io/Encoder;->writeInt(I)V

    goto/16 :goto_0

    .line 380
    :pswitch_9
    invoke-virtual {p2}, Lcom/flurry/org/codehaus/jackson/JsonNode;->isNumber()Z

    move-result v10

    if-nez v10, :cond_b

    .line 381
    new-instance v10, Lcom/flurry/org/apache/avro/AvroTypeException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Non-numeric default value for long: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/flurry/org/apache/avro/AvroTypeException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 382
    :cond_b
    invoke-virtual {p2}, Lcom/flurry/org/codehaus/jackson/JsonNode;->getLongValue()J

    move-result-wide v10

    invoke-virtual {p0, v10, v11}, Lcom/flurry/org/apache/avro/io/Encoder;->writeLong(J)V

    goto/16 :goto_0

    .line 385
    :pswitch_a
    invoke-virtual {p2}, Lcom/flurry/org/codehaus/jackson/JsonNode;->isNumber()Z

    move-result v10

    if-nez v10, :cond_c

    .line 386
    new-instance v10, Lcom/flurry/org/apache/avro/AvroTypeException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Non-numeric default value for float: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/flurry/org/apache/avro/AvroTypeException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 387
    :cond_c
    invoke-virtual {p2}, Lcom/flurry/org/codehaus/jackson/JsonNode;->getDoubleValue()D

    move-result-wide v10

    double-to-float v10, v10

    invoke-virtual {p0, v10}, Lcom/flurry/org/apache/avro/io/Encoder;->writeFloat(F)V

    goto/16 :goto_0

    .line 390
    :pswitch_b
    invoke-virtual {p2}, Lcom/flurry/org/codehaus/jackson/JsonNode;->isNumber()Z

    move-result v10

    if-nez v10, :cond_d

    .line 391
    new-instance v10, Lcom/flurry/org/apache/avro/AvroTypeException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Non-numeric default value for double: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/flurry/org/apache/avro/AvroTypeException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 392
    :cond_d
    invoke-virtual {p2}, Lcom/flurry/org/codehaus/jackson/JsonNode;->getDoubleValue()D

    move-result-wide v10

    invoke-virtual {p0, v10, v11}, Lcom/flurry/org/apache/avro/io/Encoder;->writeDouble(D)V

    goto/16 :goto_0

    .line 395
    :pswitch_c
    invoke-virtual {p2}, Lcom/flurry/org/codehaus/jackson/JsonNode;->isBoolean()Z

    move-result v10

    if-nez v10, :cond_e

    .line 396
    new-instance v10, Lcom/flurry/org/apache/avro/AvroTypeException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Non-boolean default for boolean: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/flurry/org/apache/avro/AvroTypeException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 397
    :cond_e
    invoke-virtual {p2}, Lcom/flurry/org/codehaus/jackson/JsonNode;->getBooleanValue()Z

    move-result v10

    invoke-virtual {p0, v10}, Lcom/flurry/org/apache/avro/io/Encoder;->writeBoolean(Z)V

    goto/16 :goto_0

    .line 400
    :pswitch_d
    invoke-virtual {p2}, Lcom/flurry/org/codehaus/jackson/JsonNode;->isNull()Z

    move-result v10

    if-nez v10, :cond_f

    .line 401
    new-instance v10, Lcom/flurry/org/apache/avro/AvroTypeException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Non-null default value for null type: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/flurry/org/apache/avro/AvroTypeException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 402
    :cond_f
    invoke-virtual {p0}, Lcom/flurry/org/apache/avro/io/Encoder;->writeNull()V

    goto/16 :goto_0

    .line 309
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_6
        :pswitch_7
        :pswitch_5
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private static getBinary(Lcom/flurry/org/apache/avro/Schema;Lcom/flurry/org/codehaus/jackson/JsonNode;)[B
    .locals 4
    .param p0, "s"    # Lcom/flurry/org/apache/avro/Schema;
    .param p1, "n"    # Lcom/flurry/org/codehaus/jackson/JsonNode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 291
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 292
    .local v1, "out":Ljava/io/ByteArrayOutputStream;
    sget-object v2, Lcom/flurry/org/apache/avro/io/parsing/ResolvingGrammarGenerator;->factory:Lcom/flurry/org/apache/avro/io/EncoderFactory;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/flurry/org/apache/avro/io/EncoderFactory;->binaryEncoder(Ljava/io/OutputStream;Lcom/flurry/org/apache/avro/io/BinaryEncoder;)Lcom/flurry/org/apache/avro/io/BinaryEncoder;

    move-result-object v0

    .line 293
    .local v0, "e":Lcom/flurry/org/apache/avro/io/Encoder;
    invoke-static {v0, p0, p1}, Lcom/flurry/org/apache/avro/io/parsing/ResolvingGrammarGenerator;->encode(Lcom/flurry/org/apache/avro/io/Encoder;Lcom/flurry/org/apache/avro/Schema;Lcom/flurry/org/codehaus/jackson/JsonNode;)V

    .line 294
    invoke-virtual {v0}, Lcom/flurry/org/apache/avro/io/Encoder;->flush()V

    .line 295
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    return-object v2
.end method

.method private static mkEnumAdjust(Ljava/util/List;Ljava/util/List;)Lcom/flurry/org/apache/avro/io/parsing/Symbol;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/flurry/org/apache/avro/io/parsing/Symbol;"
        }
    .end annotation

    .prologue
    .line 409
    .local p0, "wsymbols":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p1, "rsymbols":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    new-array v0, v3, [Ljava/lang/Object;

    .line 410
    .local v0, "adjustments":[Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_1

    .line 411
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 412
    .local v2, "j":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No match for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    aput-object v3, v0, v1

    .line 410
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 412
    :cond_0
    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v2}, Ljava/lang/Integer;-><init>(I)V

    goto :goto_1

    .line 415
    .end local v2    # "j":I
    :cond_1
    new-instance v3, Lcom/flurry/org/apache/avro/io/parsing/Symbol$EnumAdjustAction;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4, v0}, Lcom/flurry/org/apache/avro/io/parsing/Symbol$EnumAdjustAction;-><init>(I[Ljava/lang/Object;)V

    return-object v3
.end method

.method private resolveRecords(Lcom/flurry/org/apache/avro/Schema;Lcom/flurry/org/apache/avro/Schema;Ljava/util/Map;)Lcom/flurry/org/apache/avro/io/parsing/Symbol;
    .locals 24
    .param p1, "writer"    # Lcom/flurry/org/apache/avro/Schema;
    .param p2, "reader"    # Lcom/flurry/org/apache/avro/Schema;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/apache/avro/Schema;",
            "Lcom/flurry/org/apache/avro/Schema;",
            "Ljava/util/Map",
            "<",
            "Lcom/flurry/org/apache/avro/io/parsing/ValidatingGrammarGenerator$LitS;",
            "Lcom/flurry/org/apache/avro/io/parsing/Symbol;",
            ">;)",
            "Lcom/flurry/org/apache/avro/io/parsing/Symbol;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 202
    .local p3, "seen":Ljava/util/Map;, "Ljava/util/Map<Lcom/flurry/org/apache/avro/io/parsing/ValidatingGrammarGenerator$LitS;Lcom/flurry/org/apache/avro/io/parsing/Symbol;>;"
    new-instance v20, Lcom/flurry/org/apache/avro/io/parsing/ResolvingGrammarGenerator$LitS2;

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/flurry/org/apache/avro/io/parsing/ResolvingGrammarGenerator$LitS2;-><init>(Lcom/flurry/org/apache/avro/Schema;Lcom/flurry/org/apache/avro/Schema;)V

    .line 203
    .local v20, "wsc":Lcom/flurry/org/apache/avro/io/parsing/ValidatingGrammarGenerator$LitS;
    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    .line 204
    .local v12, "result":Lcom/flurry/org/apache/avro/io/parsing/Symbol;
    if-nez v12, :cond_8

    .line 205
    invoke-virtual/range {p1 .. p1}, Lcom/flurry/org/apache/avro/Schema;->getFields()Ljava/util/List;

    move-result-object v19

    .line 206
    .local v19, "wfields":Ljava/util/List;, "Ljava/util/List<Lcom/flurry/org/apache/avro/Schema$Field;>;"
    invoke-virtual/range {p2 .. p2}, Lcom/flurry/org/apache/avro/Schema;->getFields()Ljava/util/List;

    move-result-object v15

    .line 210
    .local v15, "rfields":Ljava/util/List;, "Ljava/util/List<Lcom/flurry/org/apache/avro/Schema$Field;>;"
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v21

    move/from16 v0, v21

    new-array v11, v0, [Lcom/flurry/org/apache/avro/Schema$Field;

    .line 211
    .local v11, "reordered":[Lcom/flurry/org/apache/avro/Schema$Field;
    const/16 v16, 0x0

    .line 212
    .local v16, "ridx":I
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v21

    add-int/lit8 v5, v21, 0x1

    .line 214
    .local v5, "count":I
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/flurry/org/apache/avro/Schema$Field;

    .line 215
    .local v6, "f":Lcom/flurry/org/apache/avro/Schema$Field;
    invoke-virtual {v6}, Lcom/flurry/org/apache/avro/Schema$Field;->name()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/flurry/org/apache/avro/Schema;->getField(Ljava/lang/String;)Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v10

    .line 216
    .local v10, "rdrField":Lcom/flurry/org/apache/avro/Schema$Field;
    if-eqz v10, :cond_0

    .line 217
    add-int/lit8 v17, v16, 0x1

    .end local v16    # "ridx":I
    .local v17, "ridx":I
    aput-object v10, v11, v16

    move/from16 v16, v17

    .end local v17    # "ridx":I
    .restart local v16    # "ridx":I
    goto :goto_0

    .line 221
    .end local v6    # "f":Lcom/flurry/org/apache/avro/Schema$Field;
    .end local v10    # "rdrField":Lcom/flurry/org/apache/avro/Schema$Field;
    :cond_1
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/flurry/org/apache/avro/Schema$Field;

    .line 222
    .local v14, "rf":Lcom/flurry/org/apache/avro/Schema$Field;
    invoke-virtual {v14}, Lcom/flurry/org/apache/avro/Schema$Field;->name()Ljava/lang/String;

    move-result-object v7

    .line 223
    .local v7, "fname":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Lcom/flurry/org/apache/avro/Schema;->getField(Ljava/lang/String;)Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v21

    if-nez v21, :cond_2

    .line 224
    invoke-virtual {v14}, Lcom/flurry/org/apache/avro/Schema$Field;->defaultValue()Lcom/flurry/org/codehaus/jackson/JsonNode;

    move-result-object v21

    if-nez v21, :cond_3

    .line 225
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Found "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const/16 v22, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/flurry/org/apache/avro/Schema;->toString(Z)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", expecting "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const/16 v22, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/flurry/org/apache/avro/Schema;->toString(Z)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->error(Ljava/lang/String;)Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    move-result-object v12

    .line 227
    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-interface {v0, v1, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v13, v12

    .line 278
    .end local v5    # "count":I
    .end local v7    # "fname":Ljava/lang/String;
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v11    # "reordered":[Lcom/flurry/org/apache/avro/Schema$Field;
    .end local v12    # "result":Lcom/flurry/org/apache/avro/io/parsing/Symbol;
    .end local v14    # "rf":Lcom/flurry/org/apache/avro/Schema$Field;
    .end local v15    # "rfields":Ljava/util/List;, "Ljava/util/List<Lcom/flurry/org/apache/avro/Schema$Field;>;"
    .end local v16    # "ridx":I
    .end local v19    # "wfields":Ljava/util/List;, "Ljava/util/List<Lcom/flurry/org/apache/avro/Schema$Field;>;"
    .local v13, "result":Lcom/flurry/org/apache/avro/io/parsing/Symbol;
    :goto_2
    return-object v13

    .line 230
    .end local v13    # "result":Lcom/flurry/org/apache/avro/io/parsing/Symbol;
    .restart local v5    # "count":I
    .restart local v7    # "fname":Ljava/lang/String;
    .restart local v8    # "i$":Ljava/util/Iterator;
    .restart local v11    # "reordered":[Lcom/flurry/org/apache/avro/Schema$Field;
    .restart local v12    # "result":Lcom/flurry/org/apache/avro/io/parsing/Symbol;
    .restart local v14    # "rf":Lcom/flurry/org/apache/avro/Schema$Field;
    .restart local v15    # "rfields":Ljava/util/List;, "Ljava/util/List<Lcom/flurry/org/apache/avro/Schema$Field;>;"
    .restart local v16    # "ridx":I
    .restart local v19    # "wfields":Ljava/util/List;, "Ljava/util/List<Lcom/flurry/org/apache/avro/Schema$Field;>;"
    :cond_3
    add-int/lit8 v17, v16, 0x1

    .end local v16    # "ridx":I
    .restart local v17    # "ridx":I
    aput-object v14, v11, v16

    .line 231
    add-int/lit8 v5, v5, 0x3

    move/from16 v16, v17

    .end local v17    # "ridx":I
    .restart local v16    # "ridx":I
    goto :goto_1

    .line 236
    .end local v7    # "fname":Ljava/lang/String;
    .end local v14    # "rf":Lcom/flurry/org/apache/avro/Schema$Field;
    :cond_4
    new-array v9, v5, [Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    .line 237
    .local v9, "production":[Lcom/flurry/org/apache/avro/io/parsing/Symbol;
    add-int/lit8 v5, v5, -0x1

    new-instance v21, Lcom/flurry/org/apache/avro/io/parsing/Symbol$FieldOrderAction;

    move-object/from16 v0, v21

    invoke-direct {v0, v11}, Lcom/flurry/org/apache/avro/io/parsing/Symbol$FieldOrderAction;-><init>([Lcom/flurry/org/apache/avro/Schema$Field;)V

    aput-object v21, v9, v5

    .line 243
    invoke-static {v9}, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->seq([Lcom/flurry/org/apache/avro/io/parsing/Symbol;)Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    move-result-object v12

    .line 244
    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-interface {v0, v1, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/flurry/org/apache/avro/Schema$Field;

    .line 255
    .local v18, "wf":Lcom/flurry/org/apache/avro/Schema$Field;
    invoke-virtual/range {v18 .. v18}, Lcom/flurry/org/apache/avro/Schema$Field;->name()Ljava/lang/String;

    move-result-object v7

    .line 256
    .restart local v7    # "fname":Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Lcom/flurry/org/apache/avro/Schema;->getField(Ljava/lang/String;)Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v14

    .line 257
    .restart local v14    # "rf":Lcom/flurry/org/apache/avro/Schema$Field;
    if-nez v14, :cond_5

    .line 258
    add-int/lit8 v5, v5, -0x1

    new-instance v21, Lcom/flurry/org/apache/avro/io/parsing/Symbol$SkipAction;

    invoke-virtual/range {v18 .. v18}, Lcom/flurry/org/apache/avro/Schema$Field;->schema()Lcom/flurry/org/apache/avro/Schema;

    move-result-object v22

    invoke-virtual/range {v18 .. v18}, Lcom/flurry/org/apache/avro/Schema$Field;->schema()Lcom/flurry/org/apache/avro/Schema;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/flurry/org/apache/avro/io/parsing/ResolvingGrammarGenerator;->generate(Lcom/flurry/org/apache/avro/Schema;Lcom/flurry/org/apache/avro/Schema;Ljava/util/Map;)Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Lcom/flurry/org/apache/avro/io/parsing/Symbol$SkipAction;-><init>(Lcom/flurry/org/apache/avro/io/parsing/Symbol;)V

    aput-object v21, v9, v5

    goto :goto_3

    .line 261
    :cond_5
    add-int/lit8 v5, v5, -0x1

    invoke-virtual/range {v18 .. v18}, Lcom/flurry/org/apache/avro/Schema$Field;->schema()Lcom/flurry/org/apache/avro/Schema;

    move-result-object v21

    invoke-virtual {v14}, Lcom/flurry/org/apache/avro/Schema$Field;->schema()Lcom/flurry/org/apache/avro/Schema;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/flurry/org/apache/avro/io/parsing/ResolvingGrammarGenerator;->generate(Lcom/flurry/org/apache/avro/Schema;Lcom/flurry/org/apache/avro/Schema;Ljava/util/Map;)Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    move-result-object v21

    aput-object v21, v9, v5

    goto :goto_3

    .line 267
    .end local v7    # "fname":Ljava/lang/String;
    .end local v14    # "rf":Lcom/flurry/org/apache/avro/Schema$Field;
    .end local v18    # "wf":Lcom/flurry/org/apache/avro/Schema$Field;
    :cond_6
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_7
    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/flurry/org/apache/avro/Schema$Field;

    .line 268
    .restart local v14    # "rf":Lcom/flurry/org/apache/avro/Schema$Field;
    invoke-virtual {v14}, Lcom/flurry/org/apache/avro/Schema$Field;->name()Ljava/lang/String;

    move-result-object v7

    .line 269
    .restart local v7    # "fname":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Lcom/flurry/org/apache/avro/Schema;->getField(Ljava/lang/String;)Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v18

    .line 270
    .restart local v18    # "wf":Lcom/flurry/org/apache/avro/Schema$Field;
    if-nez v18, :cond_7

    .line 271
    invoke-virtual {v14}, Lcom/flurry/org/apache/avro/Schema$Field;->schema()Lcom/flurry/org/apache/avro/Schema;

    move-result-object v21

    invoke-virtual {v14}, Lcom/flurry/org/apache/avro/Schema$Field;->defaultValue()Lcom/flurry/org/codehaus/jackson/JsonNode;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/flurry/org/apache/avro/io/parsing/ResolvingGrammarGenerator;->getBinary(Lcom/flurry/org/apache/avro/Schema;Lcom/flurry/org/codehaus/jackson/JsonNode;)[B

    move-result-object v4

    .line 272
    .local v4, "bb":[B
    add-int/lit8 v5, v5, -0x1

    new-instance v21, Lcom/flurry/org/apache/avro/io/parsing/Symbol$DefaultStartAction;

    move-object/from16 v0, v21

    invoke-direct {v0, v4}, Lcom/flurry/org/apache/avro/io/parsing/Symbol$DefaultStartAction;-><init>([B)V

    aput-object v21, v9, v5

    .line 273
    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v14}, Lcom/flurry/org/apache/avro/Schema$Field;->schema()Lcom/flurry/org/apache/avro/Schema;

    move-result-object v21

    invoke-virtual {v14}, Lcom/flurry/org/apache/avro/Schema$Field;->schema()Lcom/flurry/org/apache/avro/Schema;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/flurry/org/apache/avro/io/parsing/ResolvingGrammarGenerator;->generate(Lcom/flurry/org/apache/avro/Schema;Lcom/flurry/org/apache/avro/Schema;Ljava/util/Map;)Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    move-result-object v21

    aput-object v21, v9, v5

    .line 274
    add-int/lit8 v5, v5, -0x1

    sget-object v21, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->DEFAULT_END_ACTION:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    aput-object v21, v9, v5

    goto :goto_4

    .end local v4    # "bb":[B
    .end local v5    # "count":I
    .end local v7    # "fname":Ljava/lang/String;
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v9    # "production":[Lcom/flurry/org/apache/avro/io/parsing/Symbol;
    .end local v11    # "reordered":[Lcom/flurry/org/apache/avro/Schema$Field;
    .end local v14    # "rf":Lcom/flurry/org/apache/avro/Schema$Field;
    .end local v15    # "rfields":Ljava/util/List;, "Ljava/util/List<Lcom/flurry/org/apache/avro/Schema$Field;>;"
    .end local v16    # "ridx":I
    .end local v18    # "wf":Lcom/flurry/org/apache/avro/Schema$Field;
    .end local v19    # "wfields":Ljava/util/List;, "Ljava/util/List<Lcom/flurry/org/apache/avro/Schema$Field;>;"
    :cond_8
    move-object v13, v12

    .line 278
    .end local v12    # "result":Lcom/flurry/org/apache/avro/io/parsing/Symbol;
    .restart local v13    # "result":Lcom/flurry/org/apache/avro/io/parsing/Symbol;
    goto/16 :goto_2
.end method

.method private resolveUnion(Lcom/flurry/org/apache/avro/Schema;Lcom/flurry/org/apache/avro/Schema;Ljava/util/Map;)Lcom/flurry/org/apache/avro/io/parsing/Symbol;
    .locals 10
    .param p1, "writer"    # Lcom/flurry/org/apache/avro/Schema;
    .param p2, "reader"    # Lcom/flurry/org/apache/avro/Schema;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/apache/avro/Schema;",
            "Lcom/flurry/org/apache/avro/Schema;",
            "Ljava/util/Map",
            "<",
            "Lcom/flurry/org/apache/avro/io/parsing/ValidatingGrammarGenerator$LitS;",
            "Lcom/flurry/org/apache/avro/io/parsing/Symbol;",
            ">;)",
            "Lcom/flurry/org/apache/avro/io/parsing/Symbol;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 181
    .local p3, "seen":Ljava/util/Map;, "Ljava/util/Map<Lcom/flurry/org/apache/avro/io/parsing/ValidatingGrammarGenerator$LitS;Lcom/flurry/org/apache/avro/io/parsing/Symbol;>;"
    invoke-virtual {p1}, Lcom/flurry/org/apache/avro/Schema;->getTypes()Ljava/util/List;

    move-result-object v0

    .line 182
    .local v0, "alts":Ljava/util/List;, "Ljava/util/List<Lcom/flurry/org/apache/avro/Schema;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    .line 183
    .local v4, "size":I
    new-array v5, v4, [Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    .line 184
    .local v5, "symbols":[Lcom/flurry/org/apache/avro/io/parsing/Symbol;
    new-array v3, v4, [Ljava/lang/String;

    .line 190
    .local v3, "labels":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 191
    .local v1, "i":I
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/flurry/org/apache/avro/Schema;

    .line 192
    .local v6, "w":Lcom/flurry/org/apache/avro/Schema;
    invoke-virtual {p0, v6, p2, p3}, Lcom/flurry/org/apache/avro/io/parsing/ResolvingGrammarGenerator;->generate(Lcom/flurry/org/apache/avro/Schema;Lcom/flurry/org/apache/avro/Schema;Ljava/util/Map;)Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    move-result-object v7

    aput-object v7, v5, v1

    .line 193
    invoke-virtual {v6}, Lcom/flurry/org/apache/avro/Schema;->getFullName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v1

    .line 194
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 196
    .end local v6    # "w":Lcom/flurry/org/apache/avro/Schema;
    :cond_0
    const/4 v7, 0x2

    new-array v7, v7, [Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    const/4 v8, 0x0

    invoke-static {v5, v3}, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->alt([Lcom/flurry/org/apache/avro/io/parsing/Symbol;[Ljava/lang/String;)Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    new-instance v9, Lcom/flurry/org/apache/avro/io/parsing/Symbol$WriterUnionAction;

    invoke-direct {v9}, Lcom/flurry/org/apache/avro/io/parsing/Symbol$WriterUnionAction;-><init>()V

    aput-object v9, v7, v8

    invoke-static {v7}, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->seq([Lcom/flurry/org/apache/avro/io/parsing/Symbol;)Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    move-result-object v7

    return-object v7
.end method


# virtual methods
.method public final generate(Lcom/flurry/org/apache/avro/Schema;Lcom/flurry/org/apache/avro/Schema;)Lcom/flurry/org/apache/avro/io/parsing/Symbol;
    .locals 3
    .param p1, "writer"    # Lcom/flurry/org/apache/avro/Schema;
    .param p2, "reader"    # Lcom/flurry/org/apache/avro/Schema;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 50
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    const/4 v1, 0x0

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0, p1, p2, v2}, Lcom/flurry/org/apache/avro/io/parsing/ResolvingGrammarGenerator;->generate(Lcom/flurry/org/apache/avro/Schema;Lcom/flurry/org/apache/avro/Schema;Ljava/util/Map;)Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->root([Lcom/flurry/org/apache/avro/io/parsing/Symbol;)Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    move-result-object v0

    return-object v0
.end method

.method public generate(Lcom/flurry/org/apache/avro/Schema;Lcom/flurry/org/apache/avro/Schema;Ljava/util/Map;)Lcom/flurry/org/apache/avro/io/parsing/Symbol;
    .locals 11
    .param p1, "writer"    # Lcom/flurry/org/apache/avro/Schema;
    .param p2, "reader"    # Lcom/flurry/org/apache/avro/Schema;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/apache/avro/Schema;",
            "Lcom/flurry/org/apache/avro/Schema;",
            "Ljava/util/Map",
            "<",
            "Lcom/flurry/org/apache/avro/io/parsing/ValidatingGrammarGenerator$LitS;",
            "Lcom/flurry/org/apache/avro/io/parsing/Symbol;",
            ">;)",
            "Lcom/flurry/org/apache/avro/io/parsing/Symbol;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p3, "seen":Ljava/util/Map;, "Ljava/util/Map<Lcom/flurry/org/apache/avro/io/parsing/ValidatingGrammarGenerator$LitS;Lcom/flurry/org/apache/avro/io/parsing/Symbol;>;"
    const/4 v6, 0x2

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 69
    invoke-virtual {p1}, Lcom/flurry/org/apache/avro/Schema;->getType()Lcom/flurry/org/apache/avro/Schema$Type;

    move-result-object v3

    .line 70
    .local v3, "writerType":Lcom/flurry/org/apache/avro/Schema$Type;
    invoke-virtual {p2}, Lcom/flurry/org/apache/avro/Schema;->getType()Lcom/flurry/org/apache/avro/Schema$Type;

    move-result-object v1

    .line 72
    .local v1, "readerType":Lcom/flurry/org/apache/avro/Schema$Type;
    if-ne v3, v1, :cond_1

    .line 73
    sget-object v4, Lcom/flurry/org/apache/avro/io/parsing/ResolvingGrammarGenerator$1;->$SwitchMap$org$apache$avro$Schema$Type:[I

    invoke-virtual {v3}, Lcom/flurry/org/apache/avro/Schema$Type;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 122
    new-instance v4, Lcom/flurry/org/apache/avro/AvroTypeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unkown type for schema: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/flurry/org/apache/avro/AvroTypeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 75
    :pswitch_0
    sget-object v4, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->NULL:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    .line 175
    :goto_0
    return-object v4

    .line 77
    :pswitch_1
    sget-object v4, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->BOOLEAN:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    goto :goto_0

    .line 79
    :pswitch_2
    sget-object v4, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->INT:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    goto :goto_0

    .line 81
    :pswitch_3
    sget-object v4, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->LONG:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    goto :goto_0

    .line 83
    :pswitch_4
    sget-object v4, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->FLOAT:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    goto :goto_0

    .line 85
    :pswitch_5
    sget-object v4, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->DOUBLE:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    goto :goto_0

    .line 87
    :pswitch_6
    sget-object v4, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->STRING:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    goto :goto_0

    .line 89
    :pswitch_7
    sget-object v4, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->BYTES:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    goto :goto_0

    .line 91
    :pswitch_8
    invoke-virtual {p1}, Lcom/flurry/org/apache/avro/Schema;->getFullName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lcom/flurry/org/apache/avro/Schema;->getFullName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p1}, Lcom/flurry/org/apache/avro/Schema;->getFixedSize()I

    move-result v4

    invoke-virtual {p2}, Lcom/flurry/org/apache/avro/Schema;->getFixedSize()I

    move-result v5

    if-ne v4, v5, :cond_3

    .line 93
    new-array v4, v6, [Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    new-instance v5, Lcom/flurry/org/apache/avro/io/parsing/Symbol$IntCheckAction;

    invoke-virtual {p1}, Lcom/flurry/org/apache/avro/Schema;->getFixedSize()I

    move-result v6

    invoke-direct {v5, v6}, Lcom/flurry/org/apache/avro/io/parsing/Symbol$IntCheckAction;-><init>(I)V

    aput-object v5, v4, v10

    sget-object v5, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->FIXED:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    aput-object v5, v4, v9

    invoke-static {v4}, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->seq([Lcom/flurry/org/apache/avro/io/parsing/Symbol;)Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    move-result-object v4

    goto :goto_0

    .line 99
    :pswitch_9
    invoke-virtual {p1}, Lcom/flurry/org/apache/avro/Schema;->getFullName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {p1}, Lcom/flurry/org/apache/avro/Schema;->getFullName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lcom/flurry/org/apache/avro/Schema;->getFullName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 101
    :cond_0
    new-array v4, v6, [Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    invoke-virtual {p1}, Lcom/flurry/org/apache/avro/Schema;->getEnumSymbols()Ljava/util/List;

    move-result-object v5

    invoke-virtual {p2}, Lcom/flurry/org/apache/avro/Schema;->getEnumSymbols()Ljava/util/List;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/flurry/org/apache/avro/io/parsing/ResolvingGrammarGenerator;->mkEnumAdjust(Ljava/util/List;Ljava/util/List;)Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    move-result-object v5

    aput-object v5, v4, v10

    sget-object v5, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->ENUM:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    aput-object v5, v4, v9

    invoke-static {v4}, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->seq([Lcom/flurry/org/apache/avro/io/parsing/Symbol;)Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    move-result-object v4

    goto :goto_0

    .line 107
    :pswitch_a
    new-array v4, v6, [Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    sget-object v5, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->ARRAY_END:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    new-array v6, v9, [Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    invoke-virtual {p1}, Lcom/flurry/org/apache/avro/Schema;->getElementType()Lcom/flurry/org/apache/avro/Schema;

    move-result-object v7

    invoke-virtual {p2}, Lcom/flurry/org/apache/avro/Schema;->getElementType()Lcom/flurry/org/apache/avro/Schema;

    move-result-object v8

    invoke-virtual {p0, v7, v8, p3}, Lcom/flurry/org/apache/avro/io/parsing/ResolvingGrammarGenerator;->generate(Lcom/flurry/org/apache/avro/Schema;Lcom/flurry/org/apache/avro/Schema;Ljava/util/Map;)Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static {v5, v6}, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->repeat(Lcom/flurry/org/apache/avro/io/parsing/Symbol;[Lcom/flurry/org/apache/avro/io/parsing/Symbol;)Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    move-result-object v5

    aput-object v5, v4, v10

    sget-object v5, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->ARRAY_START:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    aput-object v5, v4, v9

    invoke-static {v4}, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->seq([Lcom/flurry/org/apache/avro/io/parsing/Symbol;)Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    move-result-object v4

    goto/16 :goto_0

    .line 113
    :pswitch_b
    new-array v4, v6, [Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    sget-object v5, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->MAP_END:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    new-array v6, v6, [Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    invoke-virtual {p1}, Lcom/flurry/org/apache/avro/Schema;->getValueType()Lcom/flurry/org/apache/avro/Schema;

    move-result-object v7

    invoke-virtual {p2}, Lcom/flurry/org/apache/avro/Schema;->getValueType()Lcom/flurry/org/apache/avro/Schema;

    move-result-object v8

    invoke-virtual {p0, v7, v8, p3}, Lcom/flurry/org/apache/avro/io/parsing/ResolvingGrammarGenerator;->generate(Lcom/flurry/org/apache/avro/Schema;Lcom/flurry/org/apache/avro/Schema;Ljava/util/Map;)Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    move-result-object v7

    aput-object v7, v6, v10

    sget-object v7, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->STRING:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->repeat(Lcom/flurry/org/apache/avro/io/parsing/Symbol;[Lcom/flurry/org/apache/avro/io/parsing/Symbol;)Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    move-result-object v5

    aput-object v5, v4, v10

    sget-object v5, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->MAP_START:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    aput-object v5, v4, v9

    invoke-static {v4}, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->seq([Lcom/flurry/org/apache/avro/io/parsing/Symbol;)Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    move-result-object v4

    goto/16 :goto_0

    .line 118
    :pswitch_c
    invoke-direct {p0, p1, p2, p3}, Lcom/flurry/org/apache/avro/io/parsing/ResolvingGrammarGenerator;->resolveRecords(Lcom/flurry/org/apache/avro/Schema;Lcom/flurry/org/apache/avro/Schema;Ljava/util/Map;)Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    move-result-object v4

    goto/16 :goto_0

    .line 120
    :pswitch_d
    invoke-direct {p0, p1, p2, p3}, Lcom/flurry/org/apache/avro/io/parsing/ResolvingGrammarGenerator;->resolveUnion(Lcom/flurry/org/apache/avro/Schema;Lcom/flurry/org/apache/avro/Schema;Ljava/util/Map;)Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    move-result-object v4

    goto/16 :goto_0

    .line 125
    :cond_1
    sget-object v4, Lcom/flurry/org/apache/avro/Schema$Type;->UNION:Lcom/flurry/org/apache/avro/Schema$Type;

    if-ne v3, v4, :cond_2

    .line 126
    invoke-direct {p0, p1, p2, p3}, Lcom/flurry/org/apache/avro/io/parsing/ResolvingGrammarGenerator;->resolveUnion(Lcom/flurry/org/apache/avro/Schema;Lcom/flurry/org/apache/avro/Schema;Ljava/util/Map;)Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    move-result-object v4

    goto/16 :goto_0

    .line 129
    :cond_2
    sget-object v4, Lcom/flurry/org/apache/avro/io/parsing/ResolvingGrammarGenerator$1;->$SwitchMap$org$apache$avro$Schema$Type:[I

    invoke-virtual {v1}, Lcom/flurry/org/apache/avro/Schema$Type;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_1

    .line 172
    :pswitch_e
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected schema type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 131
    :pswitch_f
    sget-object v4, Lcom/flurry/org/apache/avro/io/parsing/ResolvingGrammarGenerator$1;->$SwitchMap$org$apache$avro$Schema$Type:[I

    invoke-virtual {v3}, Lcom/flurry/org/apache/avro/Schema$Type;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_2

    .line 175
    :cond_3
    :goto_1
    :pswitch_10
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Found "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1, v9}, Lcom/flurry/org/apache/avro/Schema;->toString(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", expecting "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2, v9}, Lcom/flurry/org/apache/avro/Schema;->toString(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->error(Ljava/lang/String;)Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    move-result-object v4

    goto/16 :goto_0

    .line 133
    :pswitch_11
    invoke-super {p0, p1, p3}, Lcom/flurry/org/apache/avro/io/parsing/ValidatingGrammarGenerator;->generate(Lcom/flurry/org/apache/avro/Schema;Ljava/util/Map;)Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    move-result-object v4

    sget-object v5, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->LONG:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    invoke-static {v4, v5}, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->resolve(Lcom/flurry/org/apache/avro/io/parsing/Symbol;Lcom/flurry/org/apache/avro/io/parsing/Symbol;)Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    move-result-object v4

    goto/16 :goto_0

    .line 138
    :pswitch_12
    sget-object v4, Lcom/flurry/org/apache/avro/io/parsing/ResolvingGrammarGenerator$1;->$SwitchMap$org$apache$avro$Schema$Type:[I

    invoke-virtual {v3}, Lcom/flurry/org/apache/avro/Schema$Type;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_3

    goto :goto_1

    .line 141
    :pswitch_13
    invoke-super {p0, p1, p3}, Lcom/flurry/org/apache/avro/io/parsing/ValidatingGrammarGenerator;->generate(Lcom/flurry/org/apache/avro/Schema;Ljava/util/Map;)Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    move-result-object v4

    sget-object v5, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->FLOAT:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    invoke-static {v4, v5}, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->resolve(Lcom/flurry/org/apache/avro/io/parsing/Symbol;Lcom/flurry/org/apache/avro/io/parsing/Symbol;)Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    move-result-object v4

    goto/16 :goto_0

    .line 146
    :pswitch_14
    sget-object v4, Lcom/flurry/org/apache/avro/io/parsing/ResolvingGrammarGenerator$1;->$SwitchMap$org$apache$avro$Schema$Type:[I

    invoke-virtual {v3}, Lcom/flurry/org/apache/avro/Schema$Type;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_4

    goto :goto_1

    .line 150
    :pswitch_15
    invoke-super {p0, p1, p3}, Lcom/flurry/org/apache/avro/io/parsing/ValidatingGrammarGenerator;->generate(Lcom/flurry/org/apache/avro/Schema;Ljava/util/Map;)Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    move-result-object v4

    sget-object v5, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->DOUBLE:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    invoke-static {v4, v5}, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->resolve(Lcom/flurry/org/apache/avro/io/parsing/Symbol;Lcom/flurry/org/apache/avro/io/parsing/Symbol;)Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    move-result-object v4

    goto/16 :goto_0

    .line 155
    :pswitch_16
    invoke-static {p2, p1}, Lcom/flurry/org/apache/avro/io/parsing/ResolvingGrammarGenerator;->bestBranch(Lcom/flurry/org/apache/avro/Schema;Lcom/flurry/org/apache/avro/Schema;)I

    move-result v0

    .line 156
    .local v0, "j":I
    if-ltz v0, :cond_3

    .line 157
    invoke-virtual {p2}, Lcom/flurry/org/apache/avro/Schema;->getTypes()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/flurry/org/apache/avro/Schema;

    invoke-virtual {p0, p1, v4, p3}, Lcom/flurry/org/apache/avro/io/parsing/ResolvingGrammarGenerator;->generate(Lcom/flurry/org/apache/avro/Schema;Lcom/flurry/org/apache/avro/Schema;Ljava/util/Map;)Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    move-result-object v2

    .line 158
    .local v2, "s":Lcom/flurry/org/apache/avro/io/parsing/Symbol;
    new-array v4, v6, [Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    new-instance v5, Lcom/flurry/org/apache/avro/io/parsing/Symbol$UnionAdjustAction;

    invoke-direct {v5, v0, v2}, Lcom/flurry/org/apache/avro/io/parsing/Symbol$UnionAdjustAction;-><init>(ILcom/flurry/org/apache/avro/io/parsing/Symbol;)V

    aput-object v5, v4, v10

    sget-object v5, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->UNION:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    aput-object v5, v4, v9

    invoke-static {v4}, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->seq([Lcom/flurry/org/apache/avro/io/parsing/Symbol;)Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    move-result-object v4

    goto/16 :goto_0

    .line 73
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
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch

    .line 129
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_f
        :pswitch_12
        :pswitch_14
        :pswitch_10
        :pswitch_10
        :pswitch_e
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_16
    .end packed-switch

    .line 131
    :pswitch_data_2
    .packed-switch 0x3
        :pswitch_11
    .end packed-switch

    .line 138
    :pswitch_data_3
    .packed-switch 0x3
        :pswitch_13
        :pswitch_13
    .end packed-switch

    .line 146
    :pswitch_data_4
    .packed-switch 0x3
        :pswitch_15
        :pswitch_15
        :pswitch_15
    .end packed-switch
.end method
