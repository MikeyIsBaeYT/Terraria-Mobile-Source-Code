.class public abstract Lcom/flurry/org/codehaus/jackson/impl/JsonParserMinimalBase;
.super Lcom/flurry/org/codehaus/jackson/JsonParser;
.source "JsonParserMinimalBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/org/codehaus/jackson/impl/JsonParserMinimalBase$1;
    }
.end annotation


# static fields
.field protected static final INT_APOSTROPHE:I = 0x27

.field protected static final INT_ASTERISK:I = 0x2a

.field protected static final INT_BACKSLASH:I = 0x5c

.field protected static final INT_COLON:I = 0x3a

.field protected static final INT_COMMA:I = 0x2c

.field protected static final INT_CR:I = 0xd

.field protected static final INT_LBRACKET:I = 0x5b

.field protected static final INT_LCURLY:I = 0x7b

.field protected static final INT_LF:I = 0xa

.field protected static final INT_QUOTE:I = 0x22

.field protected static final INT_RBRACKET:I = 0x5d

.field protected static final INT_RCURLY:I = 0x7d

.field protected static final INT_SLASH:I = 0x2f

.field protected static final INT_SPACE:I = 0x20

.field protected static final INT_TAB:I = 0x9

.field protected static final INT_b:I = 0x62

.field protected static final INT_f:I = 0x66

.field protected static final INT_n:I = 0x6e

.field protected static final INT_r:I = 0x72

.field protected static final INT_t:I = 0x74

.field protected static final INT_u:I = 0x75


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/flurry/org/codehaus/jackson/JsonParser;-><init>()V

    return-void
.end method

.method protected constructor <init>(I)V
    .locals 0
    .param p1, "features"    # I

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;-><init>(I)V

    .line 62
    return-void
.end method

.method protected static final _getCharDesc(I)Ljava/lang/String;
    .locals 3
    .param p0, "ch"    # I

    .prologue
    .line 508
    int-to-char v0, p0

    .line 509
    .local v0, "c":C
    invoke-static {v0}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 510
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "(CTRL-CHAR, code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 515
    :goto_0
    return-object v1

    .line 512
    :cond_0
    const/16 v1, 0xff

    if-le p0, v1, :cond_1

    .line 513
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' (code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 515
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' (code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method protected final _constructError(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/flurry/org/codehaus/jackson/JsonParseException;
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 537
    new-instance v0, Lcom/flurry/org/codehaus/jackson/JsonParseException;

    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/JsonParserMinimalBase;->getCurrentLocation()Lcom/flurry/org/codehaus/jackson/JsonLocation;

    move-result-object v1

    invoke-direct {v0, p1, v1, p2}, Lcom/flurry/org/codehaus/jackson/JsonParseException;-><init>(Ljava/lang/String;Lcom/flurry/org/codehaus/jackson/JsonLocation;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method protected _decodeBase64(Ljava/lang/String;Lcom/flurry/org/codehaus/jackson/util/ByteArrayBuilder;Lcom/flurry/org/codehaus/jackson/Base64Variant;)V
    .locals 11
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "builder"    # Lcom/flurry/org/codehaus/jackson/util/ByteArrayBuilder;
    .param p3, "b64variant"    # Lcom/flurry/org/codehaus/jackson/Base64Variant;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x3

    const/4 v9, -0x2

    const/4 v8, 0x0

    .line 313
    const/4 v4, 0x0

    .line 314
    .local v4, "ptr":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 317
    .local v3, "len":I
    :goto_0
    if-ge v4, v3, :cond_0

    .line 321
    :goto_1
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "ptr":I
    .local v5, "ptr":I
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 322
    .local v1, "ch":C
    if-lt v5, v3, :cond_1

    move v4, v5

    .line 398
    .end local v1    # "ch":C
    .end local v5    # "ptr":I
    .restart local v4    # "ptr":I
    :cond_0
    :goto_2
    return-void

    .line 325
    .end local v4    # "ptr":I
    .restart local v1    # "ch":C
    .restart local v5    # "ptr":I
    :cond_1
    const/16 v6, 0x20

    if-le v1, v6, :cond_f

    .line 326
    invoke-virtual {p3, v1}, Lcom/flurry/org/codehaus/jackson/Base64Variant;->decodeBase64Char(C)I

    move-result v0

    .line 327
    .local v0, "bits":I
    if-gez v0, :cond_2

    .line 328
    const/4 v6, 0x0

    invoke-virtual {p0, p3, v1, v6, v8}, Lcom/flurry/org/codehaus/jackson/impl/JsonParserMinimalBase;->_reportInvalidBase64(Lcom/flurry/org/codehaus/jackson/Base64Variant;CILjava/lang/String;)V

    .line 330
    :cond_2
    move v2, v0

    .line 332
    .local v2, "decodedData":I
    if-lt v5, v3, :cond_3

    .line 333
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/JsonParserMinimalBase;->_reportBase64EOF()V

    .line 335
    :cond_3
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "ptr":I
    .restart local v4    # "ptr":I
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 336
    invoke-virtual {p3, v1}, Lcom/flurry/org/codehaus/jackson/Base64Variant;->decodeBase64Char(C)I

    move-result v0

    .line 337
    if-gez v0, :cond_4

    .line 338
    const/4 v6, 0x1

    invoke-virtual {p0, p3, v1, v6, v8}, Lcom/flurry/org/codehaus/jackson/impl/JsonParserMinimalBase;->_reportInvalidBase64(Lcom/flurry/org/codehaus/jackson/Base64Variant;CILjava/lang/String;)V

    .line 340
    :cond_4
    shl-int/lit8 v6, v2, 0x6

    or-int v2, v6, v0

    .line 342
    if-lt v4, v3, :cond_6

    .line 344
    invoke-virtual {p3}, Lcom/flurry/org/codehaus/jackson/Base64Variant;->usesPadding()Z

    move-result v6

    if-nez v6, :cond_5

    .line 345
    shr-int/lit8 v2, v2, 0x4

    .line 346
    invoke-virtual {p2, v2}, Lcom/flurry/org/codehaus/jackson/util/ByteArrayBuilder;->append(I)V

    goto :goto_2

    .line 349
    :cond_5
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/JsonParserMinimalBase;->_reportBase64EOF()V

    .line 351
    :cond_6
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "ptr":I
    .restart local v5    # "ptr":I
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 352
    invoke-virtual {p3, v1}, Lcom/flurry/org/codehaus/jackson/Base64Variant;->decodeBase64Char(C)I

    move-result v0

    .line 355
    if-gez v0, :cond_a

    .line 356
    if-eq v0, v9, :cond_7

    .line 357
    const/4 v6, 0x2

    invoke-virtual {p0, p3, v1, v6, v8}, Lcom/flurry/org/codehaus/jackson/impl/JsonParserMinimalBase;->_reportInvalidBase64(Lcom/flurry/org/codehaus/jackson/Base64Variant;CILjava/lang/String;)V

    .line 360
    :cond_7
    if-lt v5, v3, :cond_8

    .line 361
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/JsonParserMinimalBase;->_reportBase64EOF()V

    .line 363
    :cond_8
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "ptr":I
    .restart local v4    # "ptr":I
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 364
    invoke-virtual {p3, v1}, Lcom/flurry/org/codehaus/jackson/Base64Variant;->usesPaddingChar(C)Z

    move-result v6

    if-nez v6, :cond_9

    .line 365
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "expected padding character \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p3}, Lcom/flurry/org/codehaus/jackson/Base64Variant;->getPaddingChar()C

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, p3, v1, v10, v6}, Lcom/flurry/org/codehaus/jackson/impl/JsonParserMinimalBase;->_reportInvalidBase64(Lcom/flurry/org/codehaus/jackson/Base64Variant;CILjava/lang/String;)V

    .line 368
    :cond_9
    shr-int/lit8 v2, v2, 0x4

    .line 369
    invoke-virtual {p2, v2}, Lcom/flurry/org/codehaus/jackson/util/ByteArrayBuilder;->append(I)V

    goto/16 :goto_0

    .line 373
    .end local v4    # "ptr":I
    .restart local v5    # "ptr":I
    :cond_a
    shl-int/lit8 v6, v2, 0x6

    or-int v2, v6, v0

    .line 375
    if-lt v5, v3, :cond_c

    .line 377
    invoke-virtual {p3}, Lcom/flurry/org/codehaus/jackson/Base64Variant;->usesPadding()Z

    move-result v6

    if-nez v6, :cond_b

    .line 378
    shr-int/lit8 v2, v2, 0x2

    .line 379
    invoke-virtual {p2, v2}, Lcom/flurry/org/codehaus/jackson/util/ByteArrayBuilder;->appendTwoBytes(I)V

    move v4, v5

    .line 380
    .end local v5    # "ptr":I
    .restart local v4    # "ptr":I
    goto/16 :goto_2

    .line 382
    .end local v4    # "ptr":I
    .restart local v5    # "ptr":I
    :cond_b
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/JsonParserMinimalBase;->_reportBase64EOF()V

    .line 384
    :cond_c
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "ptr":I
    .restart local v4    # "ptr":I
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 385
    invoke-virtual {p3, v1}, Lcom/flurry/org/codehaus/jackson/Base64Variant;->decodeBase64Char(C)I

    move-result v0

    .line 386
    if-gez v0, :cond_e

    .line 387
    if-eq v0, v9, :cond_d

    .line 388
    invoke-virtual {p0, p3, v1, v10, v8}, Lcom/flurry/org/codehaus/jackson/impl/JsonParserMinimalBase;->_reportInvalidBase64(Lcom/flurry/org/codehaus/jackson/Base64Variant;CILjava/lang/String;)V

    .line 390
    :cond_d
    shr-int/lit8 v2, v2, 0x2

    .line 391
    invoke-virtual {p2, v2}, Lcom/flurry/org/codehaus/jackson/util/ByteArrayBuilder;->appendTwoBytes(I)V

    goto/16 :goto_0

    .line 394
    :cond_e
    shl-int/lit8 v6, v2, 0x6

    or-int v2, v6, v0

    .line 395
    invoke-virtual {p2, v2}, Lcom/flurry/org/codehaus/jackson/util/ByteArrayBuilder;->appendThreeBytes(I)V

    goto/16 :goto_0

    .end local v0    # "bits":I
    .end local v2    # "decodedData":I
    .end local v4    # "ptr":I
    .restart local v5    # "ptr":I
    :cond_f
    move v4, v5

    .end local v5    # "ptr":I
    .restart local v4    # "ptr":I
    goto/16 :goto_1
.end method

.method protected abstract _handleEOF()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/org/codehaus/jackson/JsonParseException;
        }
    .end annotation
.end method

.method protected _handleUnrecognizedCharacterEscape(C)C
    .locals 2
    .param p1, "ch"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 489
    sget-object v0, Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;->ALLOW_BACKSLASH_ESCAPING_ANY_CHARACTER:Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;

    invoke-virtual {p0, v0}, Lcom/flurry/org/codehaus/jackson/impl/JsonParserMinimalBase;->isEnabled(Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 497
    :cond_0
    :goto_0
    return p1

    .line 493
    :cond_1
    const/16 v0, 0x27

    if-ne p1, v0, :cond_2

    sget-object v0, Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;->ALLOW_SINGLE_QUOTES:Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;

    invoke-virtual {p0, v0}, Lcom/flurry/org/codehaus/jackson/impl/JsonParserMinimalBase;->isEnabled(Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 496
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unrecognized character escape "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/flurry/org/codehaus/jackson/impl/JsonParserMinimalBase;->_getCharDesc(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flurry/org/codehaus/jackson/impl/JsonParserMinimalBase;->_reportError(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected _reportBase64EOF()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 425
    const-string v0, "Unexpected end-of-String in base64 content"

    invoke-virtual {p0, v0}, Lcom/flurry/org/codehaus/jackson/impl/JsonParserMinimalBase;->_constructError(Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/JsonParseException;

    move-result-object v0

    throw v0
.end method

.method protected final _reportError(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 521
    invoke-virtual {p0, p1}, Lcom/flurry/org/codehaus/jackson/impl/JsonParserMinimalBase;->_constructError(Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/JsonParseException;

    move-result-object v0

    throw v0
.end method

.method protected _reportInvalidBase64(Lcom/flurry/org/codehaus/jackson/Base64Variant;CILjava/lang/String;)V
    .locals 3
    .param p1, "b64variant"    # Lcom/flurry/org/codehaus/jackson/Base64Variant;
    .param p2, "ch"    # C
    .param p3, "bindex"    # I
    .param p4, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 408
    const/16 v1, 0x20

    if-gt p2, v1, :cond_1

    .line 409
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal white space character (code 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") as character #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, p3, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " of 4-char base64 unit: can only used between units"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 418
    .local v0, "base":Ljava/lang/String;
    :goto_0
    if-eqz p4, :cond_0

    .line 419
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 421
    :cond_0
    invoke-virtual {p0, v0}, Lcom/flurry/org/codehaus/jackson/impl/JsonParserMinimalBase;->_constructError(Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/JsonParseException;

    move-result-object v1

    throw v1

    .line 410
    .end local v0    # "base":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1, p2}, Lcom/flurry/org/codehaus/jackson/Base64Variant;->usesPaddingChar(C)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 411
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected padding character (\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/Base64Variant;->getPaddingChar()C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\') as character #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, p3, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " of 4-char base64 unit: padding only legal as 3rd or 4th character"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "base":Ljava/lang/String;
    goto :goto_0

    .line 412
    .end local v0    # "base":Ljava/lang/String;
    :cond_2
    invoke-static {p2}, Ljava/lang/Character;->isDefined(C)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p2}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 414
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal character (code 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") in base64 content"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "base":Ljava/lang/String;
    goto :goto_0

    .line 416
    .end local v0    # "base":Ljava/lang/String;
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal character \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' (code 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") in base64 content"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "base":Ljava/lang/String;
    goto/16 :goto_0
.end method

.method protected _reportInvalidEOF()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 448
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserMinimalBase;->_currToken:Lcom/flurry/org/codehaus/jackson/JsonToken;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flurry/org/codehaus/jackson/impl/JsonParserMinimalBase;->_reportInvalidEOF(Ljava/lang/String;)V

    .line 449
    return-void
.end method

.method protected _reportInvalidEOF(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 454
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected end-of-input"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flurry/org/codehaus/jackson/impl/JsonParserMinimalBase;->_reportError(Ljava/lang/String;)V

    .line 455
    return-void
.end method

.method protected _reportInvalidEOFInValue()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 459
    const-string v0, " in a value"

    invoke-virtual {p0, v0}, Lcom/flurry/org/codehaus/jackson/impl/JsonParserMinimalBase;->_reportInvalidEOF(Ljava/lang/String;)V

    .line 460
    return-void
.end method

.method protected _reportUnexpectedChar(ILjava/lang/String;)V
    .locals 3
    .param p1, "ch"    # I
    .param p2, "comment"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 438
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected character ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/flurry/org/codehaus/jackson/impl/JsonParserMinimalBase;->_getCharDesc(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 439
    .local v0, "msg":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 440
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 442
    :cond_0
    invoke-virtual {p0, v0}, Lcom/flurry/org/codehaus/jackson/impl/JsonParserMinimalBase;->_reportError(Ljava/lang/String;)V

    .line 443
    return-void
.end method

.method protected final _throwInternal()V
    .locals 2

    .prologue
    .line 532
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Internal error: this code path should never get executed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected _throwInvalidSpace(I)V
    .locals 4
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 465
    int-to-char v0, p1

    .line 466
    .local v0, "c":C
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal character ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/flurry/org/codehaus/jackson/impl/JsonParserMinimalBase;->_getCharDesc(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "): only regular white space (\\r, \\n, \\t) is allowed between tokens"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 467
    .local v1, "msg":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/flurry/org/codehaus/jackson/impl/JsonParserMinimalBase;->_reportError(Ljava/lang/String;)V

    .line 468
    return-void
.end method

.method protected _throwUnquotedSpace(ILjava/lang/String;)V
    .locals 4
    .param p1, "i"    # I
    .param p2, "ctxtDesc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 479
    sget-object v2, Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;->ALLOW_UNQUOTED_CONTROL_CHARS:Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;

    invoke-virtual {p0, v2}, Lcom/flurry/org/codehaus/jackson/impl/JsonParserMinimalBase;->isEnabled(Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x20

    if-lt p1, v2, :cond_1

    .line 480
    :cond_0
    int-to-char v0, p1

    .line 481
    .local v0, "c":C
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal unquoted character ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/flurry/org/codehaus/jackson/impl/JsonParserMinimalBase;->_getCharDesc(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "): has to be escaped using backslash to be included in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 482
    .local v1, "msg":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/flurry/org/codehaus/jackson/impl/JsonParserMinimalBase;->_reportError(Ljava/lang/String;)V

    .line 484
    .end local v0    # "c":C
    .end local v1    # "msg":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method protected final _wrapError(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 527
    invoke-virtual {p0, p1, p2}, Lcom/flurry/org/codehaus/jackson/impl/JsonParserMinimalBase;->_constructError(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/flurry/org/codehaus/jackson/JsonParseException;

    move-result-object v0

    throw v0
.end method

.method public abstract close()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getBinaryValue(Lcom/flurry/org/codehaus/jackson/Base64Variant;)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonParseException;
        }
    .end annotation
.end method

.method public abstract getCurrentName()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonParseException;
        }
    .end annotation
.end method

.method public abstract getParsingContext()Lcom/flurry/org/codehaus/jackson/JsonStreamContext;
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

.method public getValueAsBoolean(Z)Z
    .locals 6
    .param p1, "defaultValue"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 190
    iget-object v4, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserMinimalBase;->_currToken:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-eqz v4, :cond_0

    .line 191
    sget-object v4, Lcom/flurry/org/codehaus/jackson/impl/JsonParserMinimalBase$1;->$SwitchMap$org$codehaus$jackson$JsonToken:[I

    iget-object v5, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserMinimalBase;->_currToken:Lcom/flurry/org/codehaus/jackson/JsonToken;

    invoke-virtual {v5}, Lcom/flurry/org/codehaus/jackson/JsonToken;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    :cond_0
    move v2, p1

    .line 214
    :cond_1
    :goto_0
    :pswitch_0
    return v2

    .line 193
    :pswitch_1
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/JsonParserMinimalBase;->getIntValue()I

    move-result v4

    if-nez v4, :cond_1

    move v2, v3

    goto :goto_0

    :pswitch_2
    move v2, v3

    .line 198
    goto :goto_0

    .line 201
    :pswitch_3
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/JsonParserMinimalBase;->getEmbeddedObject()Ljava/lang/Object;

    move-result-object v1

    .line 202
    .local v1, "value":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/Boolean;

    if-eqz v3, :cond_2

    .line 203
    check-cast v1, Ljava/lang/Boolean;

    .end local v1    # "value":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_0

    .line 207
    :cond_2
    :pswitch_4
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/JsonParserMinimalBase;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 208
    .local v0, "str":Ljava/lang/String;
    const-string v3, "true"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 191
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public getValueAsDouble(D)D
    .locals 3
    .param p1, "defaultValue"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 274
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserMinimalBase;->_currToken:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-eqz v1, :cond_0

    .line 275
    sget-object v1, Lcom/flurry/org/codehaus/jackson/impl/JsonParserMinimalBase$1;->$SwitchMap$org$codehaus$jackson$JsonToken:[I

    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserMinimalBase;->_currToken:Lcom/flurry/org/codehaus/jackson/JsonToken;

    invoke-virtual {v2}, Lcom/flurry/org/codehaus/jackson/JsonToken;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 295
    .end local p1    # "defaultValue":D
    :cond_0
    :goto_0
    return-wide p1

    .line 278
    .restart local p1    # "defaultValue":D
    :pswitch_0
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/JsonParserMinimalBase;->getDoubleValue()D

    move-result-wide p1

    goto :goto_0

    .line 280
    :pswitch_1
    const-wide/high16 p1, 0x3ff0000000000000L    # 1.0

    goto :goto_0

    .line 283
    :pswitch_2
    const-wide/16 p1, 0x0

    goto :goto_0

    .line 285
    :pswitch_3
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/JsonParserMinimalBase;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1, p2}, Lcom/flurry/org/codehaus/jackson/io/NumberInput;->parseAsDouble(Ljava/lang/String;D)D

    move-result-wide p1

    goto :goto_0

    .line 288
    :pswitch_4
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/JsonParserMinimalBase;->getEmbeddedObject()Ljava/lang/Object;

    move-result-object v0

    .line 289
    .local v0, "value":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_0

    .line 290
    check-cast v0, Ljava/lang/Number;

    .end local v0    # "value":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p1

    goto :goto_0

    .line 275
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method public getValueAsInt(I)I
    .locals 3
    .param p1, "defaultValue"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 220
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserMinimalBase;->_currToken:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-eqz v1, :cond_0

    .line 221
    sget-object v1, Lcom/flurry/org/codehaus/jackson/impl/JsonParserMinimalBase$1;->$SwitchMap$org$codehaus$jackson$JsonToken:[I

    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserMinimalBase;->_currToken:Lcom/flurry/org/codehaus/jackson/JsonToken;

    invoke-virtual {v2}, Lcom/flurry/org/codehaus/jackson/JsonToken;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 241
    .end local p1    # "defaultValue":I
    :cond_0
    :goto_0
    return p1

    .line 224
    .restart local p1    # "defaultValue":I
    :pswitch_0
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/JsonParserMinimalBase;->getIntValue()I

    move-result p1

    goto :goto_0

    .line 226
    :pswitch_1
    const/4 p1, 0x1

    goto :goto_0

    .line 229
    :pswitch_2
    const/4 p1, 0x0

    goto :goto_0

    .line 231
    :pswitch_3
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/JsonParserMinimalBase;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/flurry/org/codehaus/jackson/io/NumberInput;->parseAsInt(Ljava/lang/String;I)I

    move-result p1

    goto :goto_0

    .line 234
    :pswitch_4
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/JsonParserMinimalBase;->getEmbeddedObject()Ljava/lang/Object;

    move-result-object v0

    .line 235
    .local v0, "value":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_0

    .line 236
    check-cast v0, Ljava/lang/Number;

    .end local v0    # "value":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result p1

    goto :goto_0

    .line 221
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method public getValueAsLong(J)J
    .locals 3
    .param p1, "defaultValue"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 247
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserMinimalBase;->_currToken:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-eqz v1, :cond_0

    .line 248
    sget-object v1, Lcom/flurry/org/codehaus/jackson/impl/JsonParserMinimalBase$1;->$SwitchMap$org$codehaus$jackson$JsonToken:[I

    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserMinimalBase;->_currToken:Lcom/flurry/org/codehaus/jackson/JsonToken;

    invoke-virtual {v2}, Lcom/flurry/org/codehaus/jackson/JsonToken;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 268
    .end local p1    # "defaultValue":J
    :cond_0
    :goto_0
    return-wide p1

    .line 251
    .restart local p1    # "defaultValue":J
    :pswitch_0
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/JsonParserMinimalBase;->getLongValue()J

    move-result-wide p1

    goto :goto_0

    .line 253
    :pswitch_1
    const-wide/16 p1, 0x1

    goto :goto_0

    .line 256
    :pswitch_2
    const-wide/16 p1, 0x0

    goto :goto_0

    .line 258
    :pswitch_3
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/JsonParserMinimalBase;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1, p2}, Lcom/flurry/org/codehaus/jackson/io/NumberInput;->parseAsLong(Ljava/lang/String;J)J

    move-result-wide p1

    goto :goto_0

    .line 261
    :pswitch_4
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/JsonParserMinimalBase;->getEmbeddedObject()Ljava/lang/Object;

    move-result-object v0

    .line 262
    .local v0, "value":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_0

    .line 263
    check-cast v0, Ljava/lang/Number;

    .end local v0    # "value":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide p1

    goto :goto_0

    .line 248
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method public abstract hasTextCharacters()Z
.end method

.method public abstract isClosed()Z
.end method

.method public abstract nextToken()Lcom/flurry/org/codehaus/jackson/JsonToken;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonParseException;
        }
    .end annotation
.end method

.method public skipChildren()Lcom/flurry/org/codehaus/jackson/JsonParser;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 91
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserMinimalBase;->_currToken:Lcom/flurry/org/codehaus/jackson/JsonToken;

    sget-object v3, Lcom/flurry/org/codehaus/jackson/JsonToken;->START_OBJECT:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonParserMinimalBase;->_currToken:Lcom/flurry/org/codehaus/jackson/JsonToken;

    sget-object v3, Lcom/flurry/org/codehaus/jackson/JsonToken;->START_ARRAY:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-eq v2, v3, :cond_0

    .line 118
    :goto_0
    return-object p0

    .line 95
    :cond_0
    const/4 v0, 0x1

    .line 101
    .local v0, "open":I
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/JsonParserMinimalBase;->nextToken()Lcom/flurry/org/codehaus/jackson/JsonToken;

    move-result-object v1

    .line 102
    .local v1, "t":Lcom/flurry/org/codehaus/jackson/JsonToken;
    if-nez v1, :cond_2

    .line 103
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/JsonParserMinimalBase;->_handleEOF()V

    goto :goto_0

    .line 110
    :cond_2
    sget-object v2, Lcom/flurry/org/codehaus/jackson/impl/JsonParserMinimalBase$1;->$SwitchMap$org$codehaus$jackson$JsonToken:[I

    invoke-virtual {v1}, Lcom/flurry/org/codehaus/jackson/JsonToken;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 113
    :pswitch_0
    add-int/lit8 v0, v0, 0x1

    .line 114
    goto :goto_1

    .line 117
    :pswitch_1
    add-int/lit8 v0, v0, -0x1

    if-nez v0, :cond_1

    goto :goto_0

    .line 110
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
