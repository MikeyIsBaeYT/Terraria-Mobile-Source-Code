.class public Lcom/flurry/org/apache/avro/io/JsonDecoder;
.super Lcom/flurry/org/apache/avro/io/ParsingDecoder;
.source "JsonDecoder.java"

# interfaces
.implements Lcom/flurry/org/apache/avro/io/parsing/Parser$ActionHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/org/apache/avro/io/JsonDecoder$2;,
        Lcom/flurry/org/apache/avro/io/JsonDecoder$JsonElement;,
        Lcom/flurry/org/apache/avro/io/JsonDecoder$ReorderBuffer;
    }
.end annotation


# static fields
.field static final CHARSET:Ljava/lang/String; = "ISO-8859-1"

.field private static jsonFactory:Lcom/flurry/org/codehaus/jackson/JsonFactory;


# instance fields
.field currentReorderBuffer:Lcom/flurry/org/apache/avro/io/JsonDecoder$ReorderBuffer;

.field private in:Lcom/flurry/org/codehaus/jackson/JsonParser;

.field reorderBuffers:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/flurry/org/apache/avro/io/JsonDecoder$ReorderBuffer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    new-instance v0, Lcom/flurry/org/codehaus/jackson/JsonFactory;

    invoke-direct {v0}, Lcom/flurry/org/codehaus/jackson/JsonFactory;-><init>()V

    sput-object v0, Lcom/flurry/org/apache/avro/io/JsonDecoder;->jsonFactory:Lcom/flurry/org/codehaus/jackson/JsonFactory;

    return-void
.end method

.method constructor <init>(Lcom/flurry/org/apache/avro/Schema;Ljava/io/InputStream;)V
    .locals 1
    .param p1, "schema"    # Lcom/flurry/org/apache/avro/Schema;
    .param p2, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 77
    invoke-static {p1}, Lcom/flurry/org/apache/avro/io/JsonDecoder;->getSymbol(Lcom/flurry/org/apache/avro/Schema;)Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/flurry/org/apache/avro/io/JsonDecoder;-><init>(Lcom/flurry/org/apache/avro/io/parsing/Symbol;Ljava/io/InputStream;)V

    .line 78
    return-void
.end method

.method constructor <init>(Lcom/flurry/org/apache/avro/Schema;Ljava/lang/String;)V
    .locals 1
    .param p1, "schema"    # Lcom/flurry/org/apache/avro/Schema;
    .param p2, "in"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 81
    invoke-static {p1}, Lcom/flurry/org/apache/avro/io/JsonDecoder;->getSymbol(Lcom/flurry/org/apache/avro/Schema;)Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/flurry/org/apache/avro/io/JsonDecoder;-><init>(Lcom/flurry/org/apache/avro/io/parsing/Symbol;Ljava/lang/String;)V

    .line 82
    return-void
.end method

.method private constructor <init>(Lcom/flurry/org/apache/avro/io/parsing/Symbol;Ljava/io/InputStream;)V
    .locals 1
    .param p1, "root"    # Lcom/flurry/org/apache/avro/io/parsing/Symbol;
    .param p2, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/flurry/org/apache/avro/io/ParsingDecoder;-><init>(Lcom/flurry/org/apache/avro/io/parsing/Symbol;)V

    .line 56
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/flurry/org/apache/avro/io/JsonDecoder;->reorderBuffers:Ljava/util/Stack;

    .line 68
    invoke-virtual {p0, p2}, Lcom/flurry/org/apache/avro/io/JsonDecoder;->configure(Ljava/io/InputStream;)Lcom/flurry/org/apache/avro/io/JsonDecoder;

    .line 69
    return-void
.end method

.method private constructor <init>(Lcom/flurry/org/apache/avro/io/parsing/Symbol;Ljava/lang/String;)V
    .locals 1
    .param p1, "root"    # Lcom/flurry/org/apache/avro/io/parsing/Symbol;
    .param p2, "in"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/flurry/org/apache/avro/io/ParsingDecoder;-><init>(Lcom/flurry/org/apache/avro/io/parsing/Symbol;)V

    .line 56
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/flurry/org/apache/avro/io/JsonDecoder;->reorderBuffers:Ljava/util/Stack;

    .line 73
    invoke-virtual {p0, p2}, Lcom/flurry/org/apache/avro/io/JsonDecoder;->configure(Ljava/lang/String;)Lcom/flurry/org/apache/avro/io/JsonDecoder;

    .line 74
    return-void
.end method

.method private advance(Lcom/flurry/org/apache/avro/io/parsing/Symbol;)V
    .locals 2
    .param p1, "symbol"    # Lcom/flurry/org/apache/avro/io/parsing/Symbol;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 136
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/JsonDecoder;->parser:Lcom/flurry/org/apache/avro/io/parsing/SkipParser;

    invoke-virtual {v0}, Lcom/flurry/org/apache/avro/io/parsing/SkipParser;->processTrailingImplicitActions()V

    .line 137
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/JsonDecoder;->in:Lcom/flurry/org/codehaus/jackson/JsonParser;

    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getCurrentToken()Lcom/flurry/org/codehaus/jackson/JsonToken;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/JsonDecoder;->parser:Lcom/flurry/org/apache/avro/io/parsing/SkipParser;

    invoke-virtual {v0}, Lcom/flurry/org/apache/avro/io/parsing/SkipParser;->depth()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 138
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/JsonDecoder;->parser:Lcom/flurry/org/apache/avro/io/parsing/SkipParser;

    invoke-virtual {v0, p1}, Lcom/flurry/org/apache/avro/io/parsing/SkipParser;->advance(Lcom/flurry/org/apache/avro/io/parsing/Symbol;)Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    .line 140
    return-void
.end method

.method private checkFixed(I)V
    .locals 4
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 279
    sget-object v1, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->FIXED:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    invoke-direct {p0, v1}, Lcom/flurry/org/apache/avro/io/JsonDecoder;->advance(Lcom/flurry/org/apache/avro/io/parsing/Symbol;)V

    .line 280
    iget-object v1, p0, Lcom/flurry/org/apache/avro/io/JsonDecoder;->parser:Lcom/flurry/org/apache/avro/io/parsing/SkipParser;

    invoke-virtual {v1}, Lcom/flurry/org/apache/avro/io/parsing/SkipParser;->popSymbol()Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    move-result-object v0

    check-cast v0, Lcom/flurry/org/apache/avro/io/parsing/Symbol$IntCheckAction;

    .line 281
    .local v0, "top":Lcom/flurry/org/apache/avro/io/parsing/Symbol$IntCheckAction;
    iget v1, v0, Lcom/flurry/org/apache/avro/io/parsing/Symbol$IntCheckAction;->size:I

    if-eq p1, v1, :cond_0

    .line 282
    new-instance v1, Lcom/flurry/org/apache/avro/AvroTypeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Incorrect length for fixed binary: expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/flurry/org/apache/avro/io/parsing/Symbol$IntCheckAction;->size:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " but received "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bytes."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/flurry/org/apache/avro/AvroTypeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 286
    :cond_0
    return-void
.end method

.method private doArrayNext()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 365
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/JsonDecoder;->in:Lcom/flurry/org/codehaus/jackson/JsonParser;

    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getCurrentToken()Lcom/flurry/org/codehaus/jackson/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/flurry/org/codehaus/jackson/JsonToken;->END_ARRAY:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_0

    .line 366
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/JsonDecoder;->parser:Lcom/flurry/org/apache/avro/io/parsing/SkipParser;

    sget-object v1, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->ARRAY_END:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    invoke-virtual {v0, v1}, Lcom/flurry/org/apache/avro/io/parsing/SkipParser;->advance(Lcom/flurry/org/apache/avro/io/parsing/Symbol;)Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    .line 367
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/JsonDecoder;->in:Lcom/flurry/org/codehaus/jackson/JsonParser;

    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/JsonParser;->nextToken()Lcom/flurry/org/codehaus/jackson/JsonToken;

    .line 368
    const-wide/16 v0, 0x0

    .line 370
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x1

    goto :goto_0
.end method

.method private doMapNext()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 405
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/JsonDecoder;->in:Lcom/flurry/org/codehaus/jackson/JsonParser;

    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getCurrentToken()Lcom/flurry/org/codehaus/jackson/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/flurry/org/codehaus/jackson/JsonToken;->END_OBJECT:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_0

    .line 406
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/JsonDecoder;->in:Lcom/flurry/org/codehaus/jackson/JsonParser;

    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/JsonParser;->nextToken()Lcom/flurry/org/codehaus/jackson/JsonToken;

    .line 407
    sget-object v0, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->MAP_END:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    invoke-direct {p0, v0}, Lcom/flurry/org/apache/avro/io/JsonDecoder;->advance(Lcom/flurry/org/apache/avro/io/parsing/Symbol;)V

    .line 408
    const-wide/16 v0, 0x0

    .line 410
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x1

    goto :goto_0
.end method

.method private doSkipFixed(I)V
    .locals 4
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 311
    iget-object v1, p0, Lcom/flurry/org/apache/avro/io/JsonDecoder;->in:Lcom/flurry/org/codehaus/jackson/JsonParser;

    invoke-virtual {v1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getCurrentToken()Lcom/flurry/org/codehaus/jackson/JsonToken;

    move-result-object v1

    sget-object v2, Lcom/flurry/org/codehaus/jackson/JsonToken;->VALUE_STRING:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-ne v1, v2, :cond_0

    .line 312
    invoke-direct {p0}, Lcom/flurry/org/apache/avro/io/JsonDecoder;->readByteArray()[B

    move-result-object v0

    .line 313
    .local v0, "result":[B
    iget-object v1, p0, Lcom/flurry/org/apache/avro/io/JsonDecoder;->in:Lcom/flurry/org/codehaus/jackson/JsonParser;

    invoke-virtual {v1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->nextToken()Lcom/flurry/org/codehaus/jackson/JsonToken;

    .line 314
    array-length v1, v0

    if-eq v1, p1, :cond_1

    .line 315
    new-instance v1, Lcom/flurry/org/apache/avro/AvroTypeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected fixed length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", but got"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/flurry/org/apache/avro/AvroTypeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 319
    .end local v0    # "result":[B
    :cond_0
    const-string v1, "fixed"

    invoke-direct {p0, v1}, Lcom/flurry/org/apache/avro/io/JsonDecoder;->error(Ljava/lang/String;)Lcom/flurry/org/apache/avro/AvroTypeException;

    move-result-object v1

    throw v1

    .line 321
    .restart local v0    # "result":[B
    :cond_1
    return-void
.end method

.method private error(Ljava/lang/String;)Lcom/flurry/org/apache/avro/AvroTypeException;
    .locals 3
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 697
    new-instance v0, Lcom/flurry/org/apache/avro/AvroTypeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/org/apache/avro/io/JsonDecoder;->in:Lcom/flurry/org/codehaus/jackson/JsonParser;

    invoke-virtual {v2}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getCurrentToken()Lcom/flurry/org/codehaus/jackson/JsonToken;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/flurry/org/apache/avro/AvroTypeException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static getSymbol(Lcom/flurry/org/apache/avro/Schema;)Lcom/flurry/org/apache/avro/io/parsing/Symbol;
    .locals 2
    .param p0, "schema"    # Lcom/flurry/org/apache/avro/Schema;

    .prologue
    .line 85
    if-nez p0, :cond_0

    .line 86
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Schema cannot be null!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_0
    new-instance v0, Lcom/flurry/org/apache/avro/io/parsing/JsonGrammarGenerator;

    invoke-direct {v0}, Lcom/flurry/org/apache/avro/io/parsing/JsonGrammarGenerator;-><init>()V

    invoke-virtual {v0, p0}, Lcom/flurry/org/apache/avro/io/parsing/JsonGrammarGenerator;->generate(Lcom/flurry/org/apache/avro/Schema;)Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    move-result-object v0

    return-object v0
.end method

.method private static getVaueAsTree(Lcom/flurry/org/codehaus/jackson/JsonParser;)Ljava/util/List;
    .locals 5
    .param p0, "in"    # Lcom/flurry/org/codehaus/jackson/JsonParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/JsonParser;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/org/apache/avro/io/JsonDecoder$JsonElement;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 524
    const/4 v0, 0x0

    .line 525
    .local v0, "level":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 527
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/flurry/org/apache/avro/io/JsonDecoder$JsonElement;>;"
    :cond_0
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getCurrentToken()Lcom/flurry/org/codehaus/jackson/JsonToken;

    move-result-object v2

    .line 528
    .local v2, "t":Lcom/flurry/org/codehaus/jackson/JsonToken;
    sget-object v3, Lcom/flurry/org/apache/avro/io/JsonDecoder$2;->$SwitchMap$org$codehaus$jackson$JsonToken:[I

    invoke-virtual {v2}, Lcom/flurry/org/codehaus/jackson/JsonToken;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 549
    :goto_0
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/JsonParser;->nextToken()Lcom/flurry/org/codehaus/jackson/JsonToken;

    .line 550
    if-nez v0, :cond_0

    .line 551
    new-instance v3, Lcom/flurry/org/apache/avro/io/JsonDecoder$JsonElement;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/flurry/org/apache/avro/io/JsonDecoder$JsonElement;-><init>(Lcom/flurry/org/codehaus/jackson/JsonToken;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 552
    return-object v1

    .line 531
    :pswitch_0
    add-int/lit8 v0, v0, 0x1

    .line 532
    new-instance v3, Lcom/flurry/org/apache/avro/io/JsonDecoder$JsonElement;

    invoke-direct {v3, v2}, Lcom/flurry/org/apache/avro/io/JsonDecoder$JsonElement;-><init>(Lcom/flurry/org/codehaus/jackson/JsonToken;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 536
    :pswitch_1
    add-int/lit8 v0, v0, -0x1

    .line 537
    new-instance v3, Lcom/flurry/org/apache/avro/io/JsonDecoder$JsonElement;

    invoke-direct {v3, v2}, Lcom/flurry/org/apache/avro/io/JsonDecoder$JsonElement;-><init>(Lcom/flurry/org/codehaus/jackson/JsonToken;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 546
    :pswitch_2
    new-instance v3, Lcom/flurry/org/apache/avro/io/JsonDecoder$JsonElement;

    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Lcom/flurry/org/apache/avro/io/JsonDecoder$JsonElement;-><init>(Lcom/flurry/org/codehaus/jackson/JsonToken;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 528
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private makeParser(Ljava/util/List;)Lcom/flurry/org/codehaus/jackson/JsonParser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/org/apache/avro/io/JsonDecoder$JsonElement;",
            ">;)",
            "Lcom/flurry/org/codehaus/jackson/JsonParser;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 556
    .local p1, "elements":Ljava/util/List;, "Ljava/util/List<Lcom/flurry/org/apache/avro/io/JsonDecoder$JsonElement;>;"
    new-instance v0, Lcom/flurry/org/apache/avro/io/JsonDecoder$1;

    invoke-direct {v0, p0, p1}, Lcom/flurry/org/apache/avro/io/JsonDecoder$1;-><init>(Lcom/flurry/org/apache/avro/io/JsonDecoder;Ljava/util/List;)V

    return-object v0
.end method

.method private readByteArray()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 264
    iget-object v1, p0, Lcom/flurry/org/apache/avro/io/JsonDecoder;->in:Lcom/flurry/org/codehaus/jackson/JsonParser;

    invoke-virtual {v1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ISO-8859-1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 265
    .local v0, "result":[B
    return-object v0
.end method


# virtual methods
.method public arrayNext()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 360
    sget-object v0, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->ITEM_END:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    invoke-direct {p0, v0}, Lcom/flurry/org/apache/avro/io/JsonDecoder;->advance(Lcom/flurry/org/apache/avro/io/parsing/Symbol;)V

    .line 361
    invoke-direct {p0}, Lcom/flurry/org/apache/avro/io/JsonDecoder;->doArrayNext()J

    move-result-wide v0

    return-wide v0
.end method

.method public configure(Ljava/io/InputStream;)Lcom/flurry/org/apache/avro/io/JsonDecoder;
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 104
    if-nez p1, :cond_0

    .line 105
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "InputStream to read from cannot be null!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/JsonDecoder;->parser:Lcom/flurry/org/apache/avro/io/parsing/SkipParser;

    invoke-virtual {v0}, Lcom/flurry/org/apache/avro/io/parsing/SkipParser;->reset()V

    .line 108
    sget-object v0, Lcom/flurry/org/apache/avro/io/JsonDecoder;->jsonFactory:Lcom/flurry/org/codehaus/jackson/JsonFactory;

    invoke-virtual {v0, p1}, Lcom/flurry/org/codehaus/jackson/JsonFactory;->createJsonParser(Ljava/io/InputStream;)Lcom/flurry/org/codehaus/jackson/JsonParser;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/org/apache/avro/io/JsonDecoder;->in:Lcom/flurry/org/codehaus/jackson/JsonParser;

    .line 109
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/JsonDecoder;->in:Lcom/flurry/org/codehaus/jackson/JsonParser;

    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/JsonParser;->nextToken()Lcom/flurry/org/codehaus/jackson/JsonToken;

    .line 110
    return-object p0
.end method

.method public configure(Ljava/lang/String;)Lcom/flurry/org/apache/avro/io/JsonDecoder;
    .locals 2
    .param p1, "in"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 126
    if-nez p1, :cond_0

    .line 127
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "String to read from cannot be null!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/JsonDecoder;->parser:Lcom/flurry/org/apache/avro/io/parsing/SkipParser;

    invoke-virtual {v0}, Lcom/flurry/org/apache/avro/io/parsing/SkipParser;->reset()V

    .line 130
    new-instance v0, Lcom/flurry/org/codehaus/jackson/JsonFactory;

    invoke-direct {v0}, Lcom/flurry/org/codehaus/jackson/JsonFactory;-><init>()V

    invoke-virtual {v0, p1}, Lcom/flurry/org/codehaus/jackson/JsonFactory;->createJsonParser(Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/JsonParser;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/org/apache/avro/io/JsonDecoder;->in:Lcom/flurry/org/codehaus/jackson/JsonParser;

    .line 131
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/JsonDecoder;->in:Lcom/flurry/org/codehaus/jackson/JsonParser;

    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/JsonParser;->nextToken()Lcom/flurry/org/codehaus/jackson/JsonToken;

    .line 132
    return-object p0
.end method

.method public doAction(Lcom/flurry/org/apache/avro/io/parsing/Symbol;Lcom/flurry/org/apache/avro/io/parsing/Symbol;)Lcom/flurry/org/apache/avro/io/parsing/Symbol;
    .locals 7
    .param p1, "input"    # Lcom/flurry/org/apache/avro/io/parsing/Symbol;
    .param p2, "top"    # Lcom/flurry/org/apache/avro/io/parsing/Symbol;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 452
    instance-of v4, p2, Lcom/flurry/org/apache/avro/io/parsing/Symbol$FieldAdjustAction;

    if-eqz v4, :cond_4

    move-object v0, p2

    .line 453
    check-cast v0, Lcom/flurry/org/apache/avro/io/parsing/Symbol$FieldAdjustAction;

    .line 454
    .local v0, "fa":Lcom/flurry/org/apache/avro/io/parsing/Symbol$FieldAdjustAction;
    iget-object v2, v0, Lcom/flurry/org/apache/avro/io/parsing/Symbol$FieldAdjustAction;->fname:Ljava/lang/String;

    .line 455
    .local v2, "name":Ljava/lang/String;
    iget-object v4, p0, Lcom/flurry/org/apache/avro/io/JsonDecoder;->currentReorderBuffer:Lcom/flurry/org/apache/avro/io/JsonDecoder$ReorderBuffer;

    if-eqz v4, :cond_1

    .line 456
    iget-object v4, p0, Lcom/flurry/org/apache/avro/io/JsonDecoder;->currentReorderBuffer:Lcom/flurry/org/apache/avro/io/JsonDecoder$ReorderBuffer;

    iget-object v4, v4, Lcom/flurry/org/apache/avro/io/JsonDecoder$ReorderBuffer;->savedFields:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 457
    .local v3, "node":Ljava/util/List;, "Ljava/util/List<Lcom/flurry/org/apache/avro/io/JsonDecoder$JsonElement;>;"
    if-eqz v3, :cond_1

    .line 458
    iget-object v4, p0, Lcom/flurry/org/apache/avro/io/JsonDecoder;->currentReorderBuffer:Lcom/flurry/org/apache/avro/io/JsonDecoder$ReorderBuffer;

    iget-object v4, v4, Lcom/flurry/org/apache/avro/io/JsonDecoder$ReorderBuffer;->savedFields:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 459
    iget-object v4, p0, Lcom/flurry/org/apache/avro/io/JsonDecoder;->currentReorderBuffer:Lcom/flurry/org/apache/avro/io/JsonDecoder$ReorderBuffer;

    iget-object v5, p0, Lcom/flurry/org/apache/avro/io/JsonDecoder;->in:Lcom/flurry/org/codehaus/jackson/JsonParser;

    iput-object v5, v4, Lcom/flurry/org/apache/avro/io/JsonDecoder$ReorderBuffer;->origParser:Lcom/flurry/org/codehaus/jackson/JsonParser;

    .line 460
    invoke-direct {p0, v3}, Lcom/flurry/org/apache/avro/io/JsonDecoder;->makeParser(Ljava/util/List;)Lcom/flurry/org/codehaus/jackson/JsonParser;

    move-result-object v4

    iput-object v4, p0, Lcom/flurry/org/apache/avro/io/JsonDecoder;->in:Lcom/flurry/org/codehaus/jackson/JsonParser;

    .line 507
    .end local v0    # "fa":Lcom/flurry/org/apache/avro/io/parsing/Symbol$FieldAdjustAction;
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "node":Ljava/util/List;, "Ljava/util/List<Lcom/flurry/org/apache/avro/io/JsonDecoder$JsonElement;>;"
    :cond_0
    :goto_0
    return-object v6

    .line 464
    .restart local v0    # "fa":Lcom/flurry/org/apache/avro/io/parsing/Symbol$FieldAdjustAction;
    .restart local v2    # "name":Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/flurry/org/apache/avro/io/JsonDecoder;->in:Lcom/flurry/org/codehaus/jackson/JsonParser;

    invoke-virtual {v4}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getCurrentToken()Lcom/flurry/org/codehaus/jackson/JsonToken;

    move-result-object v4

    sget-object v5, Lcom/flurry/org/codehaus/jackson/JsonToken;->FIELD_NAME:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-ne v4, v5, :cond_0

    .line 466
    :cond_2
    iget-object v4, p0, Lcom/flurry/org/apache/avro/io/JsonDecoder;->in:Lcom/flurry/org/codehaus/jackson/JsonParser;

    invoke-virtual {v4}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v1

    .line 467
    .local v1, "fn":Ljava/lang/String;
    iget-object v4, p0, Lcom/flurry/org/apache/avro/io/JsonDecoder;->in:Lcom/flurry/org/codehaus/jackson/JsonParser;

    invoke-virtual {v4}, Lcom/flurry/org/codehaus/jackson/JsonParser;->nextToken()Lcom/flurry/org/codehaus/jackson/JsonToken;

    .line 468
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 471
    iget-object v4, p0, Lcom/flurry/org/apache/avro/io/JsonDecoder;->currentReorderBuffer:Lcom/flurry/org/apache/avro/io/JsonDecoder$ReorderBuffer;

    if-nez v4, :cond_3

    .line 472
    new-instance v4, Lcom/flurry/org/apache/avro/io/JsonDecoder$ReorderBuffer;

    invoke-direct {v4, v6}, Lcom/flurry/org/apache/avro/io/JsonDecoder$ReorderBuffer;-><init>(Lcom/flurry/org/apache/avro/io/JsonDecoder$1;)V

    iput-object v4, p0, Lcom/flurry/org/apache/avro/io/JsonDecoder;->currentReorderBuffer:Lcom/flurry/org/apache/avro/io/JsonDecoder$ReorderBuffer;

    .line 474
    :cond_3
    iget-object v4, p0, Lcom/flurry/org/apache/avro/io/JsonDecoder;->currentReorderBuffer:Lcom/flurry/org/apache/avro/io/JsonDecoder$ReorderBuffer;

    iget-object v4, v4, Lcom/flurry/org/apache/avro/io/JsonDecoder$ReorderBuffer;->savedFields:Ljava/util/Map;

    iget-object v5, p0, Lcom/flurry/org/apache/avro/io/JsonDecoder;->in:Lcom/flurry/org/codehaus/jackson/JsonParser;

    invoke-static {v5}, Lcom/flurry/org/apache/avro/io/JsonDecoder;->getVaueAsTree(Lcom/flurry/org/codehaus/jackson/JsonParser;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v4, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 476
    iget-object v4, p0, Lcom/flurry/org/apache/avro/io/JsonDecoder;->in:Lcom/flurry/org/codehaus/jackson/JsonParser;

    invoke-virtual {v4}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getCurrentToken()Lcom/flurry/org/codehaus/jackson/JsonToken;

    move-result-object v4

    sget-object v5, Lcom/flurry/org/codehaus/jackson/JsonToken;->FIELD_NAME:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-eq v4, v5, :cond_2

    .line 477
    new-instance v4, Lcom/flurry/org/apache/avro/AvroTypeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Expected field name not found: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/flurry/org/apache/avro/io/parsing/Symbol$FieldAdjustAction;->fname:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/flurry/org/apache/avro/AvroTypeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 479
    .end local v0    # "fa":Lcom/flurry/org/apache/avro/io/parsing/Symbol$FieldAdjustAction;
    .end local v1    # "fn":Ljava/lang/String;
    .end local v2    # "name":Ljava/lang/String;
    :cond_4
    sget-object v4, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->FIELD_END:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    if-ne p2, v4, :cond_5

    .line 480
    iget-object v4, p0, Lcom/flurry/org/apache/avro/io/JsonDecoder;->currentReorderBuffer:Lcom/flurry/org/apache/avro/io/JsonDecoder$ReorderBuffer;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/flurry/org/apache/avro/io/JsonDecoder;->currentReorderBuffer:Lcom/flurry/org/apache/avro/io/JsonDecoder$ReorderBuffer;

    iget-object v4, v4, Lcom/flurry/org/apache/avro/io/JsonDecoder$ReorderBuffer;->origParser:Lcom/flurry/org/codehaus/jackson/JsonParser;

    if-eqz v4, :cond_0

    .line 481
    iget-object v4, p0, Lcom/flurry/org/apache/avro/io/JsonDecoder;->currentReorderBuffer:Lcom/flurry/org/apache/avro/io/JsonDecoder$ReorderBuffer;

    iget-object v4, v4, Lcom/flurry/org/apache/avro/io/JsonDecoder$ReorderBuffer;->origParser:Lcom/flurry/org/codehaus/jackson/JsonParser;

    iput-object v4, p0, Lcom/flurry/org/apache/avro/io/JsonDecoder;->in:Lcom/flurry/org/codehaus/jackson/JsonParser;

    .line 482
    iget-object v4, p0, Lcom/flurry/org/apache/avro/io/JsonDecoder;->currentReorderBuffer:Lcom/flurry/org/apache/avro/io/JsonDecoder$ReorderBuffer;

    iput-object v6, v4, Lcom/flurry/org/apache/avro/io/JsonDecoder$ReorderBuffer;->origParser:Lcom/flurry/org/codehaus/jackson/JsonParser;

    goto :goto_0

    .line 484
    :cond_5
    sget-object v4, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->RECORD_START:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    if-ne p2, v4, :cond_7

    .line 485
    iget-object v4, p0, Lcom/flurry/org/apache/avro/io/JsonDecoder;->in:Lcom/flurry/org/codehaus/jackson/JsonParser;

    invoke-virtual {v4}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getCurrentToken()Lcom/flurry/org/codehaus/jackson/JsonToken;

    move-result-object v4

    sget-object v5, Lcom/flurry/org/codehaus/jackson/JsonToken;->START_OBJECT:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-ne v4, v5, :cond_6

    .line 486
    iget-object v4, p0, Lcom/flurry/org/apache/avro/io/JsonDecoder;->in:Lcom/flurry/org/codehaus/jackson/JsonParser;

    invoke-virtual {v4}, Lcom/flurry/org/codehaus/jackson/JsonParser;->nextToken()Lcom/flurry/org/codehaus/jackson/JsonToken;

    .line 487
    iget-object v4, p0, Lcom/flurry/org/apache/avro/io/JsonDecoder;->reorderBuffers:Ljava/util/Stack;

    iget-object v5, p0, Lcom/flurry/org/apache/avro/io/JsonDecoder;->currentReorderBuffer:Lcom/flurry/org/apache/avro/io/JsonDecoder$ReorderBuffer;

    invoke-virtual {v4, v5}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 488
    iput-object v6, p0, Lcom/flurry/org/apache/avro/io/JsonDecoder;->currentReorderBuffer:Lcom/flurry/org/apache/avro/io/JsonDecoder$ReorderBuffer;

    goto/16 :goto_0

    .line 490
    :cond_6
    const-string v4, "record-start"

    invoke-direct {p0, v4}, Lcom/flurry/org/apache/avro/io/JsonDecoder;->error(Ljava/lang/String;)Lcom/flurry/org/apache/avro/AvroTypeException;

    move-result-object v4

    throw v4

    .line 492
    :cond_7
    sget-object v4, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->RECORD_END:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    if-eq p2, v4, :cond_8

    sget-object v4, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->UNION_END:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    if-ne p2, v4, :cond_c

    .line 493
    :cond_8
    iget-object v4, p0, Lcom/flurry/org/apache/avro/io/JsonDecoder;->in:Lcom/flurry/org/codehaus/jackson/JsonParser;

    invoke-virtual {v4}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getCurrentToken()Lcom/flurry/org/codehaus/jackson/JsonToken;

    move-result-object v4

    sget-object v5, Lcom/flurry/org/codehaus/jackson/JsonToken;->END_OBJECT:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-ne v4, v5, :cond_a

    .line 494
    iget-object v4, p0, Lcom/flurry/org/apache/avro/io/JsonDecoder;->in:Lcom/flurry/org/codehaus/jackson/JsonParser;

    invoke-virtual {v4}, Lcom/flurry/org/codehaus/jackson/JsonParser;->nextToken()Lcom/flurry/org/codehaus/jackson/JsonToken;

    .line 495
    sget-object v4, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->RECORD_END:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    if-ne p2, v4, :cond_0

    .line 496
    iget-object v4, p0, Lcom/flurry/org/apache/avro/io/JsonDecoder;->currentReorderBuffer:Lcom/flurry/org/apache/avro/io/JsonDecoder$ReorderBuffer;

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/flurry/org/apache/avro/io/JsonDecoder;->currentReorderBuffer:Lcom/flurry/org/apache/avro/io/JsonDecoder$ReorderBuffer;

    iget-object v4, v4, Lcom/flurry/org/apache/avro/io/JsonDecoder$ReorderBuffer;->savedFields:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_9

    .line 497
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown fields: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/flurry/org/apache/avro/io/JsonDecoder;->currentReorderBuffer:Lcom/flurry/org/apache/avro/io/JsonDecoder$ReorderBuffer;

    iget-object v5, v5, Lcom/flurry/org/apache/avro/io/JsonDecoder$ReorderBuffer;->savedFields:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/flurry/org/apache/avro/io/JsonDecoder;->error(Ljava/lang/String;)Lcom/flurry/org/apache/avro/AvroTypeException;

    move-result-object v4

    throw v4

    .line 499
    :cond_9
    iget-object v4, p0, Lcom/flurry/org/apache/avro/io/JsonDecoder;->reorderBuffers:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/flurry/org/apache/avro/io/JsonDecoder$ReorderBuffer;

    iput-object v4, p0, Lcom/flurry/org/apache/avro/io/JsonDecoder;->currentReorderBuffer:Lcom/flurry/org/apache/avro/io/JsonDecoder$ReorderBuffer;

    goto/16 :goto_0

    .line 502
    :cond_a
    sget-object v4, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->RECORD_END:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    if-ne p2, v4, :cond_b

    const-string v4, "record-end"

    :goto_1
    invoke-direct {p0, v4}, Lcom/flurry/org/apache/avro/io/JsonDecoder;->error(Ljava/lang/String;)Lcom/flurry/org/apache/avro/AvroTypeException;

    move-result-object v4

    throw v4

    :cond_b
    const-string v4, "union-end"

    goto :goto_1

    .line 505
    :cond_c
    new-instance v4, Lcom/flurry/org/apache/avro/AvroTypeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown action symbol "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/flurry/org/apache/avro/AvroTypeException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public mapNext()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 400
    sget-object v0, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->ITEM_END:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    invoke-direct {p0, v0}, Lcom/flurry/org/apache/avro/io/JsonDecoder;->advance(Lcom/flurry/org/apache/avro/io/parsing/Symbol;)V

    .line 401
    invoke-direct {p0}, Lcom/flurry/org/apache/avro/io/JsonDecoder;->doMapNext()J

    move-result-wide v0

    return-wide v0
.end method

.method public readArrayStart()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 349
    sget-object v0, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->ARRAY_START:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    invoke-direct {p0, v0}, Lcom/flurry/org/apache/avro/io/JsonDecoder;->advance(Lcom/flurry/org/apache/avro/io/parsing/Symbol;)V

    .line 350
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/JsonDecoder;->in:Lcom/flurry/org/codehaus/jackson/JsonParser;

    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getCurrentToken()Lcom/flurry/org/codehaus/jackson/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/flurry/org/codehaus/jackson/JsonToken;->START_ARRAY:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_0

    .line 351
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/JsonDecoder;->in:Lcom/flurry/org/codehaus/jackson/JsonParser;

    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/JsonParser;->nextToken()Lcom/flurry/org/codehaus/jackson/JsonToken;

    .line 352
    invoke-direct {p0}, Lcom/flurry/org/apache/avro/io/JsonDecoder;->doArrayNext()J

    move-result-wide v0

    return-wide v0

    .line 354
    :cond_0
    const-string v0, "array-start"

    invoke-direct {p0, v0}, Lcom/flurry/org/apache/avro/io/JsonDecoder;->error(Ljava/lang/String;)Lcom/flurry/org/apache/avro/AvroTypeException;

    move-result-object v0

    throw v0
.end method

.method public readBoolean()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 154
    sget-object v1, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->BOOLEAN:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    invoke-direct {p0, v1}, Lcom/flurry/org/apache/avro/io/JsonDecoder;->advance(Lcom/flurry/org/apache/avro/io/parsing/Symbol;)V

    .line 155
    iget-object v1, p0, Lcom/flurry/org/apache/avro/io/JsonDecoder;->in:Lcom/flurry/org/codehaus/jackson/JsonParser;

    invoke-virtual {v1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getCurrentToken()Lcom/flurry/org/codehaus/jackson/JsonToken;

    move-result-object v0

    .line 156
    .local v0, "t":Lcom/flurry/org/codehaus/jackson/JsonToken;
    sget-object v1, Lcom/flurry/org/codehaus/jackson/JsonToken;->VALUE_TRUE:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/flurry/org/codehaus/jackson/JsonToken;->VALUE_FALSE:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_2

    .line 157
    :cond_0
    iget-object v1, p0, Lcom/flurry/org/apache/avro/io/JsonDecoder;->in:Lcom/flurry/org/codehaus/jackson/JsonParser;

    invoke-virtual {v1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->nextToken()Lcom/flurry/org/codehaus/jackson/JsonToken;

    .line 158
    sget-object v1, Lcom/flurry/org/codehaus/jackson/JsonToken;->VALUE_TRUE:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 160
    :cond_2
    const-string v1, "boolean"

    invoke-direct {p0, v1}, Lcom/flurry/org/apache/avro/io/JsonDecoder;->error(Ljava/lang/String;)Lcom/flurry/org/apache/avro/AvroTypeException;

    move-result-object v1

    throw v1
.end method

.method public readBytes(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 3
    .param p1, "old"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 253
    sget-object v1, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->BYTES:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    invoke-direct {p0, v1}, Lcom/flurry/org/apache/avro/io/JsonDecoder;->advance(Lcom/flurry/org/apache/avro/io/parsing/Symbol;)V

    .line 254
    iget-object v1, p0, Lcom/flurry/org/apache/avro/io/JsonDecoder;->in:Lcom/flurry/org/codehaus/jackson/JsonParser;

    invoke-virtual {v1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getCurrentToken()Lcom/flurry/org/codehaus/jackson/JsonToken;

    move-result-object v1

    sget-object v2, Lcom/flurry/org/codehaus/jackson/JsonToken;->VALUE_STRING:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-ne v1, v2, :cond_0

    .line 255
    invoke-direct {p0}, Lcom/flurry/org/apache/avro/io/JsonDecoder;->readByteArray()[B

    move-result-object v0

    .line 256
    .local v0, "result":[B
    iget-object v1, p0, Lcom/flurry/org/apache/avro/io/JsonDecoder;->in:Lcom/flurry/org/codehaus/jackson/JsonParser;

    invoke-virtual {v1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->nextToken()Lcom/flurry/org/codehaus/jackson/JsonToken;

    .line 257
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    return-object v1

    .line 259
    .end local v0    # "result":[B
    :cond_0
    const-string v1, "bytes"

    invoke-direct {p0, v1}, Lcom/flurry/org/apache/avro/io/JsonDecoder;->error(Ljava/lang/String;)Lcom/flurry/org/apache/avro/AvroTypeException;

    move-result-object v1

    throw v1
.end method

.method public readDouble()D
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 202
    sget-object v2, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->DOUBLE:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    invoke-direct {p0, v2}, Lcom/flurry/org/apache/avro/io/JsonDecoder;->advance(Lcom/flurry/org/apache/avro/io/parsing/Symbol;)V

    .line 203
    iget-object v2, p0, Lcom/flurry/org/apache/avro/io/JsonDecoder;->in:Lcom/flurry/org/codehaus/jackson/JsonParser;

    invoke-virtual {v2}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getCurrentToken()Lcom/flurry/org/codehaus/jackson/JsonToken;

    move-result-object v2

    sget-object v3, Lcom/flurry/org/codehaus/jackson/JsonToken;->VALUE_NUMBER_FLOAT:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-ne v2, v3, :cond_0

    .line 204
    iget-object v2, p0, Lcom/flurry/org/apache/avro/io/JsonDecoder;->in:Lcom/flurry/org/codehaus/jackson/JsonParser;

    invoke-virtual {v2}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getDoubleValue()D

    move-result-wide v0

    .line 205
    .local v0, "result":D
    iget-object v2, p0, Lcom/flurry/org/apache/avro/io/JsonDecoder;->in:Lcom/flurry/org/codehaus/jackson/JsonParser;

    invoke-virtual {v2}, Lcom/flurry/org/codehaus/jackson/JsonParser;->nextToken()Lcom/flurry/org/codehaus/jackson/JsonToken;

    .line 206
    return-wide v0

    .line 208
    .end local v0    # "result":D
    :cond_0
    const-string v2, "double"

    invoke-direct {p0, v2}, Lcom/flurry/org/apache/avro/io/JsonDecoder;->error(Ljava/lang/String;)Lcom/flurry/org/apache/avro/AvroTypeException;

    move-result-object v2

    throw v2
.end method

.method public readEnum()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 332
    sget-object v2, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->ENUM:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    invoke-direct {p0, v2}, Lcom/flurry/org/apache/avro/io/JsonDecoder;->advance(Lcom/flurry/org/apache/avro/io/parsing/Symbol;)V

    .line 333
    iget-object v2, p0, Lcom/flurry/org/apache/avro/io/JsonDecoder;->parser:Lcom/flurry/org/apache/avro/io/parsing/SkipParser;

    invoke-virtual {v2}, Lcom/flurry/org/apache/avro/io/parsing/SkipParser;->popSymbol()Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    move-result-object v1

    check-cast v1, Lcom/flurry/org/apache/avro/io/parsing/Symbol$EnumLabelsAction;

    .line 334
    .local v1, "top":Lcom/flurry/org/apache/avro/io/parsing/Symbol$EnumLabelsAction;
    iget-object v2, p0, Lcom/flurry/org/apache/avro/io/JsonDecoder;->in:Lcom/flurry/org/codehaus/jackson/JsonParser;

    invoke-virtual {v2}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getCurrentToken()Lcom/flurry/org/codehaus/jackson/JsonToken;

    move-result-object v2

    sget-object v3, Lcom/flurry/org/codehaus/jackson/JsonToken;->VALUE_STRING:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-ne v2, v3, :cond_1

    .line 335
    iget-object v2, p0, Lcom/flurry/org/apache/avro/io/JsonDecoder;->in:Lcom/flurry/org/codehaus/jackson/JsonParser;

    invoke-virtual {v2}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    .line 336
    iget-object v2, p0, Lcom/flurry/org/apache/avro/io/JsonDecoder;->in:Lcom/flurry/org/codehaus/jackson/JsonParser;

    invoke-virtual {v2}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/flurry/org/apache/avro/io/parsing/Symbol$EnumLabelsAction;->findLabel(Ljava/lang/String;)I

    move-result v0

    .line 337
    .local v0, "n":I
    if-ltz v0, :cond_0

    .line 338
    iget-object v2, p0, Lcom/flurry/org/apache/avro/io/JsonDecoder;->in:Lcom/flurry/org/codehaus/jackson/JsonParser;

    invoke-virtual {v2}, Lcom/flurry/org/codehaus/jackson/JsonParser;->nextToken()Lcom/flurry/org/codehaus/jackson/JsonToken;

    .line 339
    return v0

    .line 341
    :cond_0
    new-instance v2, Lcom/flurry/org/apache/avro/AvroTypeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown symbol in enum "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/flurry/org/apache/avro/io/JsonDecoder;->in:Lcom/flurry/org/codehaus/jackson/JsonParser;

    invoke-virtual {v4}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/flurry/org/apache/avro/AvroTypeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 343
    .end local v0    # "n":I
    :cond_1
    const-string v2, "fixed"

    invoke-direct {p0, v2}, Lcom/flurry/org/apache/avro/io/JsonDecoder;->error(Ljava/lang/String;)Lcom/flurry/org/apache/avro/AvroTypeException;

    move-result-object v2

    throw v2
.end method

.method public readFixed([BII)V
    .locals 4
    .param p1, "bytes"    # [B
    .param p2, "start"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 290
    invoke-direct {p0, p3}, Lcom/flurry/org/apache/avro/io/JsonDecoder;->checkFixed(I)V

    .line 291
    iget-object v1, p0, Lcom/flurry/org/apache/avro/io/JsonDecoder;->in:Lcom/flurry/org/codehaus/jackson/JsonParser;

    invoke-virtual {v1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getCurrentToken()Lcom/flurry/org/codehaus/jackson/JsonToken;

    move-result-object v1

    sget-object v2, Lcom/flurry/org/codehaus/jackson/JsonToken;->VALUE_STRING:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-ne v1, v2, :cond_1

    .line 292
    invoke-direct {p0}, Lcom/flurry/org/apache/avro/io/JsonDecoder;->readByteArray()[B

    move-result-object v0

    .line 293
    .local v0, "result":[B
    iget-object v1, p0, Lcom/flurry/org/apache/avro/io/JsonDecoder;->in:Lcom/flurry/org/codehaus/jackson/JsonParser;

    invoke-virtual {v1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->nextToken()Lcom/flurry/org/codehaus/jackson/JsonToken;

    .line 294
    array-length v1, v0

    if-eq v1, p3, :cond_0

    .line 295
    new-instance v1, Lcom/flurry/org/apache/avro/AvroTypeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected fixed length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", but got"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/flurry/org/apache/avro/AvroTypeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 298
    :cond_0
    const/4 v1, 0x0

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 302
    return-void

    .line 300
    .end local v0    # "result":[B
    :cond_1
    const-string v1, "fixed"

    invoke-direct {p0, v1}, Lcom/flurry/org/apache/avro/io/JsonDecoder;->error(Ljava/lang/String;)Lcom/flurry/org/apache/avro/AvroTypeException;

    move-result-object v1

    throw v1
.end method

.method public readFloat()F
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 190
    sget-object v1, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->FLOAT:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    invoke-direct {p0, v1}, Lcom/flurry/org/apache/avro/io/JsonDecoder;->advance(Lcom/flurry/org/apache/avro/io/parsing/Symbol;)V

    .line 191
    iget-object v1, p0, Lcom/flurry/org/apache/avro/io/JsonDecoder;->in:Lcom/flurry/org/codehaus/jackson/JsonParser;

    invoke-virtual {v1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getCurrentToken()Lcom/flurry/org/codehaus/jackson/JsonToken;

    move-result-object v1

    sget-object v2, Lcom/flurry/org/codehaus/jackson/JsonToken;->VALUE_NUMBER_FLOAT:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-ne v1, v2, :cond_0

    .line 192
    iget-object v1, p0, Lcom/flurry/org/apache/avro/io/JsonDecoder;->in:Lcom/flurry/org/codehaus/jackson/JsonParser;

    invoke-virtual {v1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getFloatValue()F

    move-result v0

    .line 193
    .local v0, "result":F
    iget-object v1, p0, Lcom/flurry/org/apache/avro/io/JsonDecoder;->in:Lcom/flurry/org/codehaus/jackson/JsonParser;

    invoke-virtual {v1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->nextToken()Lcom/flurry/org/codehaus/jackson/JsonToken;

    .line 194
    return v0

    .line 196
    .end local v0    # "result":F
    :cond_0
    const-string v1, "float"

    invoke-direct {p0, v1}, Lcom/flurry/org/apache/avro/io/JsonDecoder;->error(Ljava/lang/String;)Lcom/flurry/org/apache/avro/AvroTypeException;

    move-result-object v1

    throw v1
.end method

.method public readIndex()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 429
    sget-object v3, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->UNION:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    invoke-direct {p0, v3}, Lcom/flurry/org/apache/avro/io/JsonDecoder;->advance(Lcom/flurry/org/apache/avro/io/parsing/Symbol;)V

    .line 430
    iget-object v3, p0, Lcom/flurry/org/apache/avro/io/JsonDecoder;->parser:Lcom/flurry/org/apache/avro/io/parsing/SkipParser;

    invoke-virtual {v3}, Lcom/flurry/org/apache/avro/io/parsing/SkipParser;->popSymbol()Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    move-result-object v0

    check-cast v0, Lcom/flurry/org/apache/avro/io/parsing/Symbol$Alternative;

    .line 433
    .local v0, "a":Lcom/flurry/org/apache/avro/io/parsing/Symbol$Alternative;
    iget-object v3, p0, Lcom/flurry/org/apache/avro/io/JsonDecoder;->in:Lcom/flurry/org/codehaus/jackson/JsonParser;

    invoke-virtual {v3}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getCurrentToken()Lcom/flurry/org/codehaus/jackson/JsonToken;

    move-result-object v3

    sget-object v4, Lcom/flurry/org/codehaus/jackson/JsonToken;->VALUE_NULL:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-ne v3, v4, :cond_0

    .line 434
    const-string v1, "null"

    .line 443
    .local v1, "label":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0, v1}, Lcom/flurry/org/apache/avro/io/parsing/Symbol$Alternative;->findLabel(Ljava/lang/String;)I

    move-result v2

    .line 444
    .local v2, "n":I
    if-gez v2, :cond_2

    .line 445
    new-instance v3, Lcom/flurry/org/apache/avro/AvroTypeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown union branch "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/flurry/org/apache/avro/AvroTypeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 435
    .end local v1    # "label":Ljava/lang/String;
    .end local v2    # "n":I
    :cond_0
    iget-object v3, p0, Lcom/flurry/org/apache/avro/io/JsonDecoder;->in:Lcom/flurry/org/codehaus/jackson/JsonParser;

    invoke-virtual {v3}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getCurrentToken()Lcom/flurry/org/codehaus/jackson/JsonToken;

    move-result-object v3

    sget-object v4, Lcom/flurry/org/codehaus/jackson/JsonToken;->START_OBJECT:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lcom/flurry/org/apache/avro/io/JsonDecoder;->in:Lcom/flurry/org/codehaus/jackson/JsonParser;

    invoke-virtual {v3}, Lcom/flurry/org/codehaus/jackson/JsonParser;->nextToken()Lcom/flurry/org/codehaus/jackson/JsonToken;

    move-result-object v3

    sget-object v4, Lcom/flurry/org/codehaus/jackson/JsonToken;->FIELD_NAME:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-ne v3, v4, :cond_1

    .line 437
    iget-object v3, p0, Lcom/flurry/org/apache/avro/io/JsonDecoder;->in:Lcom/flurry/org/codehaus/jackson/JsonParser;

    invoke-virtual {v3}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v1

    .line 438
    .restart local v1    # "label":Ljava/lang/String;
    iget-object v3, p0, Lcom/flurry/org/apache/avro/io/JsonDecoder;->in:Lcom/flurry/org/codehaus/jackson/JsonParser;

    invoke-virtual {v3}, Lcom/flurry/org/codehaus/jackson/JsonParser;->nextToken()Lcom/flurry/org/codehaus/jackson/JsonToken;

    .line 439
    iget-object v3, p0, Lcom/flurry/org/apache/avro/io/JsonDecoder;->parser:Lcom/flurry/org/apache/avro/io/parsing/SkipParser;

    sget-object v4, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->UNION_END:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    invoke-virtual {v3, v4}, Lcom/flurry/org/apache/avro/io/parsing/SkipParser;->pushSymbol(Lcom/flurry/org/apache/avro/io/parsing/Symbol;)V

    goto :goto_0

    .line 441
    .end local v1    # "label":Ljava/lang/String;
    :cond_1
    const-string v3, "start-union"

    invoke-direct {p0, v3}, Lcom/flurry/org/apache/avro/io/JsonDecoder;->error(Ljava/lang/String;)Lcom/flurry/org/apache/avro/AvroTypeException;

    move-result-object v3

    throw v3

    .line 446
    .restart local v1    # "label":Ljava/lang/String;
    .restart local v2    # "n":I
    :cond_2
    iget-object v3, p0, Lcom/flurry/org/apache/avro/io/JsonDecoder;->parser:Lcom/flurry/org/apache/avro/io/parsing/SkipParser;

    invoke-virtual {v0, v2}, Lcom/flurry/org/apache/avro/io/parsing/Symbol$Alternative;->getSymbol(I)Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/flurry/org/apache/avro/io/parsing/SkipParser;->pushSymbol(Lcom/flurry/org/apache/avro/io/parsing/Symbol;)V

    .line 447
    return v2
.end method

.method public readInt()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 166
    sget-object v1, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->INT:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    invoke-direct {p0, v1}, Lcom/flurry/org/apache/avro/io/JsonDecoder;->advance(Lcom/flurry/org/apache/avro/io/parsing/Symbol;)V

    .line 167
    iget-object v1, p0, Lcom/flurry/org/apache/avro/io/JsonDecoder;->in:Lcom/flurry/org/codehaus/jackson/JsonParser;

    invoke-virtual {v1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getCurrentToken()Lcom/flurry/org/codehaus/jackson/JsonToken;

    move-result-object v1

    sget-object v2, Lcom/flurry/org/codehaus/jackson/JsonToken;->VALUE_NUMBER_INT:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-ne v1, v2, :cond_0

    .line 168
    iget-object v1, p0, Lcom/flurry/org/apache/avro/io/JsonDecoder;->in:Lcom/flurry/org/codehaus/jackson/JsonParser;

    invoke-virtual {v1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getIntValue()I

    move-result v0

    .line 169
    .local v0, "result":I
    iget-object v1, p0, Lcom/flurry/org/apache/avro/io/JsonDecoder;->in:Lcom/flurry/org/codehaus/jackson/JsonParser;

    invoke-virtual {v1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->nextToken()Lcom/flurry/org/codehaus/jackson/JsonToken;

    .line 170
    return v0

    .line 172
    .end local v0    # "result":I
    :cond_0
    const-string v1, "int"

    invoke-direct {p0, v1}, Lcom/flurry/org/apache/avro/io/JsonDecoder;->error(Ljava/lang/String;)Lcom/flurry/org/apache/avro/AvroTypeException;

    move-result-object v1

    throw v1
.end method

.method public readLong()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 178
    sget-object v2, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->LONG:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    invoke-direct {p0, v2}, Lcom/flurry/org/apache/avro/io/JsonDecoder;->advance(Lcom/flurry/org/apache/avro/io/parsing/Symbol;)V

    .line 179
    iget-object v2, p0, Lcom/flurry/org/apache/avro/io/JsonDecoder;->in:Lcom/flurry/org/codehaus/jackson/JsonParser;

    invoke-virtual {v2}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getCurrentToken()Lcom/flurry/org/codehaus/jackson/JsonToken;

    move-result-object v2

    sget-object v3, Lcom/flurry/org/codehaus/jackson/JsonToken;->VALUE_NUMBER_INT:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-ne v2, v3, :cond_0

    .line 180
    iget-object v2, p0, Lcom/flurry/org/apache/avro/io/JsonDecoder;->in:Lcom/flurry/org/codehaus/jackson/JsonParser;

    invoke-virtual {v2}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getLongValue()J

    move-result-wide v0

    .line 181
    .local v0, "result":J
    iget-object v2, p0, Lcom/flurry/org/apache/avro/io/JsonDecoder;->in:Lcom/flurry/org/codehaus/jackson/JsonParser;

    invoke-virtual {v2}, Lcom/flurry/org/codehaus/jackson/JsonParser;->nextToken()Lcom/flurry/org/codehaus/jackson/JsonToken;

    .line 182
    return-wide v0

    .line 184
    .end local v0    # "result":J
    :cond_0
    const-string v2, "long"

    invoke-direct {p0, v2}, Lcom/flurry/org/apache/avro/io/JsonDecoder;->error(Ljava/lang/String;)Lcom/flurry/org/apache/avro/AvroTypeException;

    move-result-object v2

    throw v2
.end method

.method public readMapStart()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 389
    sget-object v0, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->MAP_START:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    invoke-direct {p0, v0}, Lcom/flurry/org/apache/avro/io/JsonDecoder;->advance(Lcom/flurry/org/apache/avro/io/parsing/Symbol;)V

    .line 390
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/JsonDecoder;->in:Lcom/flurry/org/codehaus/jackson/JsonParser;

    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getCurrentToken()Lcom/flurry/org/codehaus/jackson/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/flurry/org/codehaus/jackson/JsonToken;->START_OBJECT:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_0

    .line 391
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/JsonDecoder;->in:Lcom/flurry/org/codehaus/jackson/JsonParser;

    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/JsonParser;->nextToken()Lcom/flurry/org/codehaus/jackson/JsonToken;

    .line 392
    invoke-direct {p0}, Lcom/flurry/org/apache/avro/io/JsonDecoder;->doMapNext()J

    move-result-wide v0

    return-wide v0

    .line 394
    :cond_0
    const-string v0, "map-start"

    invoke-direct {p0, v0}, Lcom/flurry/org/apache/avro/io/JsonDecoder;->error(Ljava/lang/String;)Lcom/flurry/org/apache/avro/AvroTypeException;

    move-result-object v0

    throw v0
.end method

.method public readNull()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 144
    sget-object v0, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->NULL:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    invoke-direct {p0, v0}, Lcom/flurry/org/apache/avro/io/JsonDecoder;->advance(Lcom/flurry/org/apache/avro/io/parsing/Symbol;)V

    .line 145
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/JsonDecoder;->in:Lcom/flurry/org/codehaus/jackson/JsonParser;

    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getCurrentToken()Lcom/flurry/org/codehaus/jackson/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/flurry/org/codehaus/jackson/JsonToken;->VALUE_NULL:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_0

    .line 146
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/JsonDecoder;->in:Lcom/flurry/org/codehaus/jackson/JsonParser;

    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/JsonParser;->nextToken()Lcom/flurry/org/codehaus/jackson/JsonToken;

    .line 150
    return-void

    .line 148
    :cond_0
    const-string v0, "null"

    invoke-direct {p0, v0}, Lcom/flurry/org/apache/avro/io/JsonDecoder;->error(Ljava/lang/String;)Lcom/flurry/org/apache/avro/AvroTypeException;

    move-result-object v0

    throw v0
.end method

.method public readString(Lcom/flurry/org/apache/avro/util/Utf8;)Lcom/flurry/org/apache/avro/util/Utf8;
    .locals 2
    .param p1, "old"    # Lcom/flurry/org/apache/avro/util/Utf8;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 214
    new-instance v0, Lcom/flurry/org/apache/avro/util/Utf8;

    invoke-virtual {p0}, Lcom/flurry/org/apache/avro/io/JsonDecoder;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/flurry/org/apache/avro/util/Utf8;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public readString()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 219
    sget-object v1, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->STRING:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    invoke-direct {p0, v1}, Lcom/flurry/org/apache/avro/io/JsonDecoder;->advance(Lcom/flurry/org/apache/avro/io/parsing/Symbol;)V

    .line 220
    iget-object v1, p0, Lcom/flurry/org/apache/avro/io/JsonDecoder;->parser:Lcom/flurry/org/apache/avro/io/parsing/SkipParser;

    invoke-virtual {v1}, Lcom/flurry/org/apache/avro/io/parsing/SkipParser;->topSymbol()Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    move-result-object v1

    sget-object v2, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->MAP_KEY_MARKER:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    if-ne v1, v2, :cond_0

    .line 221
    iget-object v1, p0, Lcom/flurry/org/apache/avro/io/JsonDecoder;->parser:Lcom/flurry/org/apache/avro/io/parsing/SkipParser;

    sget-object v2, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->MAP_KEY_MARKER:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    invoke-virtual {v1, v2}, Lcom/flurry/org/apache/avro/io/parsing/SkipParser;->advance(Lcom/flurry/org/apache/avro/io/parsing/Symbol;)Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    .line 222
    iget-object v1, p0, Lcom/flurry/org/apache/avro/io/JsonDecoder;->in:Lcom/flurry/org/codehaus/jackson/JsonParser;

    invoke-virtual {v1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getCurrentToken()Lcom/flurry/org/codehaus/jackson/JsonToken;

    move-result-object v1

    sget-object v2, Lcom/flurry/org/codehaus/jackson/JsonToken;->FIELD_NAME:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-eq v1, v2, :cond_1

    .line 223
    const-string v1, "map-key"

    invoke-direct {p0, v1}, Lcom/flurry/org/apache/avro/io/JsonDecoder;->error(Ljava/lang/String;)Lcom/flurry/org/apache/avro/AvroTypeException;

    move-result-object v1

    throw v1

    .line 226
    :cond_0
    iget-object v1, p0, Lcom/flurry/org/apache/avro/io/JsonDecoder;->in:Lcom/flurry/org/codehaus/jackson/JsonParser;

    invoke-virtual {v1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getCurrentToken()Lcom/flurry/org/codehaus/jackson/JsonToken;

    move-result-object v1

    sget-object v2, Lcom/flurry/org/codehaus/jackson/JsonToken;->VALUE_STRING:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-eq v1, v2, :cond_1

    .line 227
    const-string v1, "string"

    invoke-direct {p0, v1}, Lcom/flurry/org/apache/avro/io/JsonDecoder;->error(Ljava/lang/String;)Lcom/flurry/org/apache/avro/AvroTypeException;

    move-result-object v1

    throw v1

    .line 230
    :cond_1
    iget-object v1, p0, Lcom/flurry/org/apache/avro/io/JsonDecoder;->in:Lcom/flurry/org/codehaus/jackson/JsonParser;

    invoke-virtual {v1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v0

    .line 231
    .local v0, "result":Ljava/lang/String;
    iget-object v1, p0, Lcom/flurry/org/apache/avro/io/JsonDecoder;->in:Lcom/flurry/org/codehaus/jackson/JsonParser;

    invoke-virtual {v1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->nextToken()Lcom/flurry/org/codehaus/jackson/JsonToken;

    .line 232
    return-object v0
.end method

.method public skipArray()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 376
    sget-object v0, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->ARRAY_START:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    invoke-direct {p0, v0}, Lcom/flurry/org/apache/avro/io/JsonDecoder;->advance(Lcom/flurry/org/apache/avro/io/parsing/Symbol;)V

    .line 377
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/JsonDecoder;->in:Lcom/flurry/org/codehaus/jackson/JsonParser;

    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getCurrentToken()Lcom/flurry/org/codehaus/jackson/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/flurry/org/codehaus/jackson/JsonToken;->START_ARRAY:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_0

    .line 378
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/JsonDecoder;->in:Lcom/flurry/org/codehaus/jackson/JsonParser;

    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/JsonParser;->skipChildren()Lcom/flurry/org/codehaus/jackson/JsonParser;

    .line 379
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/JsonDecoder;->in:Lcom/flurry/org/codehaus/jackson/JsonParser;

    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/JsonParser;->nextToken()Lcom/flurry/org/codehaus/jackson/JsonToken;

    .line 380
    sget-object v0, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->ARRAY_END:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    invoke-direct {p0, v0}, Lcom/flurry/org/apache/avro/io/JsonDecoder;->advance(Lcom/flurry/org/apache/avro/io/parsing/Symbol;)V

    .line 384
    const-wide/16 v0, 0x0

    return-wide v0

    .line 382
    :cond_0
    const-string v0, "array-start"

    invoke-direct {p0, v0}, Lcom/flurry/org/apache/avro/io/JsonDecoder;->error(Ljava/lang/String;)Lcom/flurry/org/apache/avro/AvroTypeException;

    move-result-object v0

    throw v0
.end method

.method public skipBytes()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 270
    sget-object v0, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->BYTES:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    invoke-direct {p0, v0}, Lcom/flurry/org/apache/avro/io/JsonDecoder;->advance(Lcom/flurry/org/apache/avro/io/parsing/Symbol;)V

    .line 271
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/JsonDecoder;->in:Lcom/flurry/org/codehaus/jackson/JsonParser;

    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getCurrentToken()Lcom/flurry/org/codehaus/jackson/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/flurry/org/codehaus/jackson/JsonToken;->VALUE_STRING:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_0

    .line 272
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/JsonDecoder;->in:Lcom/flurry/org/codehaus/jackson/JsonParser;

    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/JsonParser;->nextToken()Lcom/flurry/org/codehaus/jackson/JsonToken;

    .line 276
    return-void

    .line 274
    :cond_0
    const-string v0, "bytes"

    invoke-direct {p0, v0}, Lcom/flurry/org/apache/avro/io/JsonDecoder;->error(Ljava/lang/String;)Lcom/flurry/org/apache/avro/AvroTypeException;

    move-result-object v0

    throw v0
.end method

.method protected skipFixed()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 325
    sget-object v1, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->FIXED:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    invoke-direct {p0, v1}, Lcom/flurry/org/apache/avro/io/JsonDecoder;->advance(Lcom/flurry/org/apache/avro/io/parsing/Symbol;)V

    .line 326
    iget-object v1, p0, Lcom/flurry/org/apache/avro/io/JsonDecoder;->parser:Lcom/flurry/org/apache/avro/io/parsing/SkipParser;

    invoke-virtual {v1}, Lcom/flurry/org/apache/avro/io/parsing/SkipParser;->popSymbol()Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    move-result-object v0

    check-cast v0, Lcom/flurry/org/apache/avro/io/parsing/Symbol$IntCheckAction;

    .line 327
    .local v0, "top":Lcom/flurry/org/apache/avro/io/parsing/Symbol$IntCheckAction;
    iget v1, v0, Lcom/flurry/org/apache/avro/io/parsing/Symbol$IntCheckAction;->size:I

    invoke-direct {p0, v1}, Lcom/flurry/org/apache/avro/io/JsonDecoder;->doSkipFixed(I)V

    .line 328
    return-void
.end method

.method public skipFixed(I)V
    .locals 0
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 306
    invoke-direct {p0, p1}, Lcom/flurry/org/apache/avro/io/JsonDecoder;->checkFixed(I)V

    .line 307
    invoke-direct {p0, p1}, Lcom/flurry/org/apache/avro/io/JsonDecoder;->doSkipFixed(I)V

    .line 308
    return-void
.end method

.method public skipMap()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 416
    sget-object v0, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->MAP_START:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    invoke-direct {p0, v0}, Lcom/flurry/org/apache/avro/io/JsonDecoder;->advance(Lcom/flurry/org/apache/avro/io/parsing/Symbol;)V

    .line 417
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/JsonDecoder;->in:Lcom/flurry/org/codehaus/jackson/JsonParser;

    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getCurrentToken()Lcom/flurry/org/codehaus/jackson/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/flurry/org/codehaus/jackson/JsonToken;->START_OBJECT:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_0

    .line 418
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/JsonDecoder;->in:Lcom/flurry/org/codehaus/jackson/JsonParser;

    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/JsonParser;->skipChildren()Lcom/flurry/org/codehaus/jackson/JsonParser;

    .line 419
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/JsonDecoder;->in:Lcom/flurry/org/codehaus/jackson/JsonParser;

    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/JsonParser;->nextToken()Lcom/flurry/org/codehaus/jackson/JsonToken;

    .line 420
    sget-object v0, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->MAP_END:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    invoke-direct {p0, v0}, Lcom/flurry/org/apache/avro/io/JsonDecoder;->advance(Lcom/flurry/org/apache/avro/io/parsing/Symbol;)V

    .line 424
    const-wide/16 v0, 0x0

    return-wide v0

    .line 422
    :cond_0
    const-string v0, "map-start"

    invoke-direct {p0, v0}, Lcom/flurry/org/apache/avro/io/JsonDecoder;->error(Ljava/lang/String;)Lcom/flurry/org/apache/avro/AvroTypeException;

    move-result-object v0

    throw v0
.end method

.method public skipString()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 237
    sget-object v0, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->STRING:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    invoke-direct {p0, v0}, Lcom/flurry/org/apache/avro/io/JsonDecoder;->advance(Lcom/flurry/org/apache/avro/io/parsing/Symbol;)V

    .line 238
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/JsonDecoder;->parser:Lcom/flurry/org/apache/avro/io/parsing/SkipParser;

    invoke-virtual {v0}, Lcom/flurry/org/apache/avro/io/parsing/SkipParser;->topSymbol()Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    move-result-object v0

    sget-object v1, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->MAP_KEY_MARKER:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    if-ne v0, v1, :cond_0

    .line 239
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/JsonDecoder;->parser:Lcom/flurry/org/apache/avro/io/parsing/SkipParser;

    sget-object v1, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->MAP_KEY_MARKER:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    invoke-virtual {v0, v1}, Lcom/flurry/org/apache/avro/io/parsing/SkipParser;->advance(Lcom/flurry/org/apache/avro/io/parsing/Symbol;)Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    .line 240
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/JsonDecoder;->in:Lcom/flurry/org/codehaus/jackson/JsonParser;

    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getCurrentToken()Lcom/flurry/org/codehaus/jackson/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/flurry/org/codehaus/jackson/JsonToken;->FIELD_NAME:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-eq v0, v1, :cond_1

    .line 241
    const-string v0, "map-key"

    invoke-direct {p0, v0}, Lcom/flurry/org/apache/avro/io/JsonDecoder;->error(Ljava/lang/String;)Lcom/flurry/org/apache/avro/AvroTypeException;

    move-result-object v0

    throw v0

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/JsonDecoder;->in:Lcom/flurry/org/codehaus/jackson/JsonParser;

    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getCurrentToken()Lcom/flurry/org/codehaus/jackson/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/flurry/org/codehaus/jackson/JsonToken;->VALUE_STRING:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-eq v0, v1, :cond_1

    .line 245
    const-string v0, "string"

    invoke-direct {p0, v0}, Lcom/flurry/org/apache/avro/io/JsonDecoder;->error(Ljava/lang/String;)Lcom/flurry/org/apache/avro/AvroTypeException;

    move-result-object v0

    throw v0

    .line 248
    :cond_1
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/JsonDecoder;->in:Lcom/flurry/org/codehaus/jackson/JsonParser;

    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/JsonParser;->nextToken()Lcom/flurry/org/codehaus/jackson/JsonToken;

    .line 249
    return-void
.end method
