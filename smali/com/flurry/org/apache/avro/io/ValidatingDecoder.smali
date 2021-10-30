.class public Lcom/flurry/org/apache/avro/io/ValidatingDecoder;
.super Lcom/flurry/org/apache/avro/io/ParsingDecoder;
.source "ValidatingDecoder.java"

# interfaces
.implements Lcom/flurry/org/apache/avro/io/parsing/Parser$ActionHandler;


# instance fields
.field protected in:Lcom/flurry/org/apache/avro/io/Decoder;


# direct methods
.method constructor <init>(Lcom/flurry/org/apache/avro/Schema;Lcom/flurry/org/apache/avro/io/Decoder;)V
    .locals 1
    .param p1, "schema"    # Lcom/flurry/org/apache/avro/Schema;
    .param p2, "in"    # Lcom/flurry/org/apache/avro/io/Decoder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 51
    invoke-static {p1}, Lcom/flurry/org/apache/avro/io/ValidatingDecoder;->getSymbol(Lcom/flurry/org/apache/avro/Schema;)Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/flurry/org/apache/avro/io/ValidatingDecoder;-><init>(Lcom/flurry/org/apache/avro/io/parsing/Symbol;Lcom/flurry/org/apache/avro/io/Decoder;)V

    .line 52
    return-void
.end method

.method constructor <init>(Lcom/flurry/org/apache/avro/io/parsing/Symbol;Lcom/flurry/org/apache/avro/io/Decoder;)V
    .locals 0
    .param p1, "root"    # Lcom/flurry/org/apache/avro/io/parsing/Symbol;
    .param p2, "in"    # Lcom/flurry/org/apache/avro/io/Decoder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/flurry/org/apache/avro/io/ParsingDecoder;-><init>(Lcom/flurry/org/apache/avro/io/parsing/Symbol;)V

    .line 47
    invoke-virtual {p0, p2}, Lcom/flurry/org/apache/avro/io/ValidatingDecoder;->configure(Lcom/flurry/org/apache/avro/io/Decoder;)Lcom/flurry/org/apache/avro/io/ValidatingDecoder;

    .line 48
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
    .line 135
    iget-object v1, p0, Lcom/flurry/org/apache/avro/io/ValidatingDecoder;->parser:Lcom/flurry/org/apache/avro/io/parsing/SkipParser;

    sget-object v2, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->FIXED:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    invoke-virtual {v1, v2}, Lcom/flurry/org/apache/avro/io/parsing/SkipParser;->advance(Lcom/flurry/org/apache/avro/io/parsing/Symbol;)Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    .line 136
    iget-object v1, p0, Lcom/flurry/org/apache/avro/io/ValidatingDecoder;->parser:Lcom/flurry/org/apache/avro/io/parsing/SkipParser;

    invoke-virtual {v1}, Lcom/flurry/org/apache/avro/io/parsing/SkipParser;->popSymbol()Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    move-result-object v0

    check-cast v0, Lcom/flurry/org/apache/avro/io/parsing/Symbol$IntCheckAction;

    .line 137
    .local v0, "top":Lcom/flurry/org/apache/avro/io/parsing/Symbol$IntCheckAction;
    iget v1, v0, Lcom/flurry/org/apache/avro/io/parsing/Symbol$IntCheckAction;->size:I

    if-eq p1, v1, :cond_0

    .line 138
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

    .line 142
    :cond_0
    return-void
.end method

.method private static getSymbol(Lcom/flurry/org/apache/avro/Schema;)Lcom/flurry/org/apache/avro/io/parsing/Symbol;
    .locals 2
    .param p0, "schema"    # Lcom/flurry/org/apache/avro/Schema;

    .prologue
    .line 55
    if-nez p0, :cond_0

    .line 56
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Schema cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_0
    new-instance v0, Lcom/flurry/org/apache/avro/io/parsing/ValidatingGrammarGenerator;

    invoke-direct {v0}, Lcom/flurry/org/apache/avro/io/parsing/ValidatingGrammarGenerator;-><init>()V

    invoke-virtual {v0, p0}, Lcom/flurry/org/apache/avro/io/parsing/ValidatingGrammarGenerator;->generate(Lcom/flurry/org/apache/avro/Schema;)Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public arrayNext()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 188
    iget-object v2, p0, Lcom/flurry/org/apache/avro/io/ValidatingDecoder;->parser:Lcom/flurry/org/apache/avro/io/parsing/SkipParser;

    invoke-virtual {v2}, Lcom/flurry/org/apache/avro/io/parsing/SkipParser;->processTrailingImplicitActions()V

    .line 189
    iget-object v2, p0, Lcom/flurry/org/apache/avro/io/ValidatingDecoder;->in:Lcom/flurry/org/apache/avro/io/Decoder;

    invoke-virtual {v2}, Lcom/flurry/org/apache/avro/io/Decoder;->arrayNext()J

    move-result-wide v0

    .line 190
    .local v0, "result":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 191
    iget-object v2, p0, Lcom/flurry/org/apache/avro/io/ValidatingDecoder;->parser:Lcom/flurry/org/apache/avro/io/parsing/SkipParser;

    sget-object v3, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->ARRAY_END:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    invoke-virtual {v2, v3}, Lcom/flurry/org/apache/avro/io/parsing/SkipParser;->advance(Lcom/flurry/org/apache/avro/io/parsing/Symbol;)Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    .line 193
    :cond_0
    return-wide v0
.end method

.method public configure(Lcom/flurry/org/apache/avro/io/Decoder;)Lcom/flurry/org/apache/avro/io/ValidatingDecoder;
    .locals 1
    .param p1, "in"    # Lcom/flurry/org/apache/avro/io/Decoder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 63
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/ValidatingDecoder;->parser:Lcom/flurry/org/apache/avro/io/parsing/SkipParser;

    invoke-virtual {v0}, Lcom/flurry/org/apache/avro/io/parsing/SkipParser;->reset()V

    .line 64
    iput-object p1, p0, Lcom/flurry/org/apache/avro/io/ValidatingDecoder;->in:Lcom/flurry/org/apache/avro/io/Decoder;

    .line 65
    return-object p0
.end method

.method public doAction(Lcom/flurry/org/apache/avro/io/parsing/Symbol;Lcom/flurry/org/apache/avro/io/parsing/Symbol;)Lcom/flurry/org/apache/avro/io/parsing/Symbol;
    .locals 1
    .param p1, "input"    # Lcom/flurry/org/apache/avro/io/parsing/Symbol;
    .param p2, "top"    # Lcom/flurry/org/apache/avro/io/parsing/Symbol;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 251
    const/4 v0, 0x0

    return-object v0
.end method

.method public mapNext()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 220
    iget-object v2, p0, Lcom/flurry/org/apache/avro/io/ValidatingDecoder;->parser:Lcom/flurry/org/apache/avro/io/parsing/SkipParser;

    invoke-virtual {v2}, Lcom/flurry/org/apache/avro/io/parsing/SkipParser;->processTrailingImplicitActions()V

    .line 221
    iget-object v2, p0, Lcom/flurry/org/apache/avro/io/ValidatingDecoder;->in:Lcom/flurry/org/apache/avro/io/Decoder;

    invoke-virtual {v2}, Lcom/flurry/org/apache/avro/io/Decoder;->mapNext()J

    move-result-wide v0

    .line 222
    .local v0, "result":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 223
    iget-object v2, p0, Lcom/flurry/org/apache/avro/io/ValidatingDecoder;->parser:Lcom/flurry/org/apache/avro/io/parsing/SkipParser;

    sget-object v3, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->MAP_END:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    invoke-virtual {v2, v3}, Lcom/flurry/org/apache/avro/io/parsing/SkipParser;->advance(Lcom/flurry/org/apache/avro/io/parsing/Symbol;)Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    .line 225
    :cond_0
    return-wide v0
.end method

.method public readArrayStart()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 178
    iget-object v2, p0, Lcom/flurry/org/apache/avro/io/ValidatingDecoder;->parser:Lcom/flurry/org/apache/avro/io/parsing/SkipParser;

    sget-object v3, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->ARRAY_START:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    invoke-virtual {v2, v3}, Lcom/flurry/org/apache/avro/io/parsing/SkipParser;->advance(Lcom/flurry/org/apache/avro/io/parsing/Symbol;)Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    .line 179
    iget-object v2, p0, Lcom/flurry/org/apache/avro/io/ValidatingDecoder;->in:Lcom/flurry/org/apache/avro/io/Decoder;

    invoke-virtual {v2}, Lcom/flurry/org/apache/avro/io/Decoder;->readArrayStart()J

    move-result-wide v0

    .line 180
    .local v0, "result":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 181
    iget-object v2, p0, Lcom/flurry/org/apache/avro/io/ValidatingDecoder;->parser:Lcom/flurry/org/apache/avro/io/parsing/SkipParser;

    sget-object v3, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->ARRAY_END:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    invoke-virtual {v2, v3}, Lcom/flurry/org/apache/avro/io/parsing/SkipParser;->advance(Lcom/flurry/org/apache/avro/io/parsing/Symbol;)Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    .line 183
    :cond_0
    return-wide v0
.end method

.method public readBoolean()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 76
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/ValidatingDecoder;->parser:Lcom/flurry/org/apache/avro/io/parsing/SkipParser;

    sget-object v1, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->BOOLEAN:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    invoke-virtual {v0, v1}, Lcom/flurry/org/apache/avro/io/parsing/SkipParser;->advance(Lcom/flurry/org/apache/avro/io/parsing/Symbol;)Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    .line 77
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/ValidatingDecoder;->in:Lcom/flurry/org/apache/avro/io/Decoder;

    invoke-virtual {v0}, Lcom/flurry/org/apache/avro/io/Decoder;->readBoolean()Z

    move-result v0

    return v0
.end method

.method public readBytes(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 2
    .param p1, "old"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 124
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/ValidatingDecoder;->parser:Lcom/flurry/org/apache/avro/io/parsing/SkipParser;

    sget-object v1, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->BYTES:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    invoke-virtual {v0, v1}, Lcom/flurry/org/apache/avro/io/parsing/SkipParser;->advance(Lcom/flurry/org/apache/avro/io/parsing/Symbol;)Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    .line 125
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/ValidatingDecoder;->in:Lcom/flurry/org/apache/avro/io/Decoder;

    invoke-virtual {v0, p1}, Lcom/flurry/org/apache/avro/io/Decoder;->readBytes(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public readDouble()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 100
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/ValidatingDecoder;->parser:Lcom/flurry/org/apache/avro/io/parsing/SkipParser;

    sget-object v1, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->DOUBLE:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    invoke-virtual {v0, v1}, Lcom/flurry/org/apache/avro/io/parsing/SkipParser;->advance(Lcom/flurry/org/apache/avro/io/parsing/Symbol;)Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    .line 101
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/ValidatingDecoder;->in:Lcom/flurry/org/apache/avro/io/Decoder;

    invoke-virtual {v0}, Lcom/flurry/org/apache/avro/io/Decoder;->readDouble()D

    move-result-wide v0

    return-wide v0
.end method

.method public readEnum()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 165
    iget-object v2, p0, Lcom/flurry/org/apache/avro/io/ValidatingDecoder;->parser:Lcom/flurry/org/apache/avro/io/parsing/SkipParser;

    sget-object v3, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->ENUM:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    invoke-virtual {v2, v3}, Lcom/flurry/org/apache/avro/io/parsing/SkipParser;->advance(Lcom/flurry/org/apache/avro/io/parsing/Symbol;)Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    .line 166
    iget-object v2, p0, Lcom/flurry/org/apache/avro/io/ValidatingDecoder;->parser:Lcom/flurry/org/apache/avro/io/parsing/SkipParser;

    invoke-virtual {v2}, Lcom/flurry/org/apache/avro/io/parsing/SkipParser;->popSymbol()Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    move-result-object v1

    check-cast v1, Lcom/flurry/org/apache/avro/io/parsing/Symbol$IntCheckAction;

    .line 167
    .local v1, "top":Lcom/flurry/org/apache/avro/io/parsing/Symbol$IntCheckAction;
    iget-object v2, p0, Lcom/flurry/org/apache/avro/io/ValidatingDecoder;->in:Lcom/flurry/org/apache/avro/io/Decoder;

    invoke-virtual {v2}, Lcom/flurry/org/apache/avro/io/Decoder;->readEnum()I

    move-result v0

    .line 168
    .local v0, "result":I
    if-ltz v0, :cond_0

    iget v2, v1, Lcom/flurry/org/apache/avro/io/parsing/Symbol$IntCheckAction;->size:I

    if-lt v0, v2, :cond_1

    .line 169
    :cond_0
    new-instance v2, Lcom/flurry/org/apache/avro/AvroTypeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Enumeration out of range: max is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/flurry/org/apache/avro/io/parsing/Symbol$IntCheckAction;->size:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " but received "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/flurry/org/apache/avro/AvroTypeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 173
    :cond_1
    return v0
.end method

.method public readFixed([BII)V
    .locals 1
    .param p1, "bytes"    # [B
    .param p2, "start"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 146
    invoke-direct {p0, p3}, Lcom/flurry/org/apache/avro/io/ValidatingDecoder;->checkFixed(I)V

    .line 147
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/ValidatingDecoder;->in:Lcom/flurry/org/apache/avro/io/Decoder;

    invoke-virtual {v0, p1, p2, p3}, Lcom/flurry/org/apache/avro/io/Decoder;->readFixed([BII)V

    .line 148
    return-void
.end method

.method public readFloat()F
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 94
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/ValidatingDecoder;->parser:Lcom/flurry/org/apache/avro/io/parsing/SkipParser;

    sget-object v1, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->FLOAT:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    invoke-virtual {v0, v1}, Lcom/flurry/org/apache/avro/io/parsing/SkipParser;->advance(Lcom/flurry/org/apache/avro/io/parsing/Symbol;)Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    .line 95
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/ValidatingDecoder;->in:Lcom/flurry/org/apache/avro/io/Decoder;

    invoke-virtual {v0}, Lcom/flurry/org/apache/avro/io/Decoder;->readFloat()F

    move-result v0

    return v0
.end method

.method public readIndex()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 242
    iget-object v2, p0, Lcom/flurry/org/apache/avro/io/ValidatingDecoder;->parser:Lcom/flurry/org/apache/avro/io/parsing/SkipParser;

    sget-object v3, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->UNION:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    invoke-virtual {v2, v3}, Lcom/flurry/org/apache/avro/io/parsing/SkipParser;->advance(Lcom/flurry/org/apache/avro/io/parsing/Symbol;)Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    .line 243
    iget-object v2, p0, Lcom/flurry/org/apache/avro/io/ValidatingDecoder;->parser:Lcom/flurry/org/apache/avro/io/parsing/SkipParser;

    invoke-virtual {v2}, Lcom/flurry/org/apache/avro/io/parsing/SkipParser;->popSymbol()Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    move-result-object v1

    check-cast v1, Lcom/flurry/org/apache/avro/io/parsing/Symbol$Alternative;

    .line 244
    .local v1, "top":Lcom/flurry/org/apache/avro/io/parsing/Symbol$Alternative;
    iget-object v2, p0, Lcom/flurry/org/apache/avro/io/ValidatingDecoder;->in:Lcom/flurry/org/apache/avro/io/Decoder;

    invoke-virtual {v2}, Lcom/flurry/org/apache/avro/io/Decoder;->readIndex()I

    move-result v0

    .line 245
    .local v0, "result":I
    iget-object v2, p0, Lcom/flurry/org/apache/avro/io/ValidatingDecoder;->parser:Lcom/flurry/org/apache/avro/io/parsing/SkipParser;

    invoke-virtual {v1, v0}, Lcom/flurry/org/apache/avro/io/parsing/Symbol$Alternative;->getSymbol(I)Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/flurry/org/apache/avro/io/parsing/SkipParser;->pushSymbol(Lcom/flurry/org/apache/avro/io/parsing/Symbol;)V

    .line 246
    return v0
.end method

.method public readInt()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 82
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/ValidatingDecoder;->parser:Lcom/flurry/org/apache/avro/io/parsing/SkipParser;

    sget-object v1, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->INT:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    invoke-virtual {v0, v1}, Lcom/flurry/org/apache/avro/io/parsing/SkipParser;->advance(Lcom/flurry/org/apache/avro/io/parsing/Symbol;)Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    .line 83
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/ValidatingDecoder;->in:Lcom/flurry/org/apache/avro/io/Decoder;

    invoke-virtual {v0}, Lcom/flurry/org/apache/avro/io/Decoder;->readInt()I

    move-result v0

    return v0
.end method

.method public readLong()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 88
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/ValidatingDecoder;->parser:Lcom/flurry/org/apache/avro/io/parsing/SkipParser;

    sget-object v1, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->LONG:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    invoke-virtual {v0, v1}, Lcom/flurry/org/apache/avro/io/parsing/SkipParser;->advance(Lcom/flurry/org/apache/avro/io/parsing/Symbol;)Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    .line 89
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/ValidatingDecoder;->in:Lcom/flurry/org/apache/avro/io/Decoder;

    invoke-virtual {v0}, Lcom/flurry/org/apache/avro/io/Decoder;->readLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public readMapStart()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 210
    iget-object v2, p0, Lcom/flurry/org/apache/avro/io/ValidatingDecoder;->parser:Lcom/flurry/org/apache/avro/io/parsing/SkipParser;

    sget-object v3, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->MAP_START:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    invoke-virtual {v2, v3}, Lcom/flurry/org/apache/avro/io/parsing/SkipParser;->advance(Lcom/flurry/org/apache/avro/io/parsing/Symbol;)Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    .line 211
    iget-object v2, p0, Lcom/flurry/org/apache/avro/io/ValidatingDecoder;->in:Lcom/flurry/org/apache/avro/io/Decoder;

    invoke-virtual {v2}, Lcom/flurry/org/apache/avro/io/Decoder;->readMapStart()J

    move-result-wide v0

    .line 212
    .local v0, "result":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 213
    iget-object v2, p0, Lcom/flurry/org/apache/avro/io/ValidatingDecoder;->parser:Lcom/flurry/org/apache/avro/io/parsing/SkipParser;

    sget-object v3, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->MAP_END:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    invoke-virtual {v2, v3}, Lcom/flurry/org/apache/avro/io/parsing/SkipParser;->advance(Lcom/flurry/org/apache/avro/io/parsing/Symbol;)Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    .line 215
    :cond_0
    return-wide v0
.end method

.method public readNull()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 70
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/ValidatingDecoder;->parser:Lcom/flurry/org/apache/avro/io/parsing/SkipParser;

    sget-object v1, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->NULL:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    invoke-virtual {v0, v1}, Lcom/flurry/org/apache/avro/io/parsing/SkipParser;->advance(Lcom/flurry/org/apache/avro/io/parsing/Symbol;)Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    .line 71
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/ValidatingDecoder;->in:Lcom/flurry/org/apache/avro/io/Decoder;

    invoke-virtual {v0}, Lcom/flurry/org/apache/avro/io/Decoder;->readNull()V

    .line 72
    return-void
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
    .line 106
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/ValidatingDecoder;->parser:Lcom/flurry/org/apache/avro/io/parsing/SkipParser;

    sget-object v1, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->STRING:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    invoke-virtual {v0, v1}, Lcom/flurry/org/apache/avro/io/parsing/SkipParser;->advance(Lcom/flurry/org/apache/avro/io/parsing/Symbol;)Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    .line 107
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/ValidatingDecoder;->in:Lcom/flurry/org/apache/avro/io/Decoder;

    invoke-virtual {v0, p1}, Lcom/flurry/org/apache/avro/io/Decoder;->readString(Lcom/flurry/org/apache/avro/util/Utf8;)Lcom/flurry/org/apache/avro/util/Utf8;

    move-result-object v0

    return-object v0
.end method

.method public readString()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 112
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/ValidatingDecoder;->parser:Lcom/flurry/org/apache/avro/io/parsing/SkipParser;

    sget-object v1, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->STRING:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    invoke-virtual {v0, v1}, Lcom/flurry/org/apache/avro/io/parsing/SkipParser;->advance(Lcom/flurry/org/apache/avro/io/parsing/Symbol;)Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    .line 113
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/ValidatingDecoder;->in:Lcom/flurry/org/apache/avro/io/Decoder;

    invoke-virtual {v0}, Lcom/flurry/org/apache/avro/io/Decoder;->readString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public skipArray()J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x0

    .line 198
    iget-object v4, p0, Lcom/flurry/org/apache/avro/io/ValidatingDecoder;->parser:Lcom/flurry/org/apache/avro/io/parsing/SkipParser;

    sget-object v5, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->ARRAY_START:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    invoke-virtual {v4, v5}, Lcom/flurry/org/apache/avro/io/parsing/SkipParser;->advance(Lcom/flurry/org/apache/avro/io/parsing/Symbol;)Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    .line 199
    iget-object v4, p0, Lcom/flurry/org/apache/avro/io/ValidatingDecoder;->in:Lcom/flurry/org/apache/avro/io/Decoder;

    invoke-virtual {v4}, Lcom/flurry/org/apache/avro/io/Decoder;->skipArray()J

    move-result-wide v0

    .local v0, "c":J
    :goto_0
    cmp-long v4, v0, v6

    if-eqz v4, :cond_1

    move-wide v2, v0

    .line 200
    .end local v0    # "c":J
    .local v2, "c":J
    :goto_1
    const-wide/16 v4, 0x1

    sub-long v0, v2, v4

    .end local v2    # "c":J
    .restart local v0    # "c":J
    cmp-long v4, v2, v6

    if-lez v4, :cond_0

    .line 201
    iget-object v4, p0, Lcom/flurry/org/apache/avro/io/ValidatingDecoder;->parser:Lcom/flurry/org/apache/avro/io/parsing/SkipParser;

    invoke-virtual {v4}, Lcom/flurry/org/apache/avro/io/parsing/SkipParser;->skipRepeater()V

    move-wide v2, v0

    .end local v0    # "c":J
    .restart local v2    # "c":J
    goto :goto_1

    .line 199
    .end local v2    # "c":J
    .restart local v0    # "c":J
    :cond_0
    iget-object v4, p0, Lcom/flurry/org/apache/avro/io/ValidatingDecoder;->in:Lcom/flurry/org/apache/avro/io/Decoder;

    invoke-virtual {v4}, Lcom/flurry/org/apache/avro/io/Decoder;->skipArray()J

    move-result-wide v0

    goto :goto_0

    .line 204
    :cond_1
    iget-object v4, p0, Lcom/flurry/org/apache/avro/io/ValidatingDecoder;->parser:Lcom/flurry/org/apache/avro/io/parsing/SkipParser;

    sget-object v5, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->ARRAY_END:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    invoke-virtual {v4, v5}, Lcom/flurry/org/apache/avro/io/parsing/SkipParser;->advance(Lcom/flurry/org/apache/avro/io/parsing/Symbol;)Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    .line 205
    return-wide v6
.end method

.method public skipBytes()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 130
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/ValidatingDecoder;->parser:Lcom/flurry/org/apache/avro/io/parsing/SkipParser;

    sget-object v1, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->BYTES:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    invoke-virtual {v0, v1}, Lcom/flurry/org/apache/avro/io/parsing/SkipParser;->advance(Lcom/flurry/org/apache/avro/io/parsing/Symbol;)Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    .line 131
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/ValidatingDecoder;->in:Lcom/flurry/org/apache/avro/io/Decoder;

    invoke-virtual {v0}, Lcom/flurry/org/apache/avro/io/Decoder;->skipBytes()V

    .line 132
    return-void
.end method

.method protected skipFixed()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 158
    iget-object v1, p0, Lcom/flurry/org/apache/avro/io/ValidatingDecoder;->parser:Lcom/flurry/org/apache/avro/io/parsing/SkipParser;

    sget-object v2, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->FIXED:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    invoke-virtual {v1, v2}, Lcom/flurry/org/apache/avro/io/parsing/SkipParser;->advance(Lcom/flurry/org/apache/avro/io/parsing/Symbol;)Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    .line 159
    iget-object v1, p0, Lcom/flurry/org/apache/avro/io/ValidatingDecoder;->parser:Lcom/flurry/org/apache/avro/io/parsing/SkipParser;

    invoke-virtual {v1}, Lcom/flurry/org/apache/avro/io/parsing/SkipParser;->popSymbol()Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    move-result-object v0

    check-cast v0, Lcom/flurry/org/apache/avro/io/parsing/Symbol$IntCheckAction;

    .line 160
    .local v0, "top":Lcom/flurry/org/apache/avro/io/parsing/Symbol$IntCheckAction;
    iget-object v1, p0, Lcom/flurry/org/apache/avro/io/ValidatingDecoder;->in:Lcom/flurry/org/apache/avro/io/Decoder;

    iget v2, v0, Lcom/flurry/org/apache/avro/io/parsing/Symbol$IntCheckAction;->size:I

    invoke-virtual {v1, v2}, Lcom/flurry/org/apache/avro/io/Decoder;->skipFixed(I)V

    .line 161
    return-void
.end method

.method public skipFixed(I)V
    .locals 1
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 152
    invoke-direct {p0, p1}, Lcom/flurry/org/apache/avro/io/ValidatingDecoder;->checkFixed(I)V

    .line 153
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/ValidatingDecoder;->in:Lcom/flurry/org/apache/avro/io/Decoder;

    invoke-virtual {v0, p1}, Lcom/flurry/org/apache/avro/io/Decoder;->skipFixed(I)V

    .line 154
    return-void
.end method

.method public skipMap()J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x0

    .line 230
    iget-object v4, p0, Lcom/flurry/org/apache/avro/io/ValidatingDecoder;->parser:Lcom/flurry/org/apache/avro/io/parsing/SkipParser;

    sget-object v5, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->MAP_START:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    invoke-virtual {v4, v5}, Lcom/flurry/org/apache/avro/io/parsing/SkipParser;->advance(Lcom/flurry/org/apache/avro/io/parsing/Symbol;)Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    .line 231
    iget-object v4, p0, Lcom/flurry/org/apache/avro/io/ValidatingDecoder;->in:Lcom/flurry/org/apache/avro/io/Decoder;

    invoke-virtual {v4}, Lcom/flurry/org/apache/avro/io/Decoder;->skipMap()J

    move-result-wide v0

    .local v0, "c":J
    :goto_0
    cmp-long v4, v0, v6

    if-eqz v4, :cond_1

    move-wide v2, v0

    .line 232
    .end local v0    # "c":J
    .local v2, "c":J
    :goto_1
    const-wide/16 v4, 0x1

    sub-long v0, v2, v4

    .end local v2    # "c":J
    .restart local v0    # "c":J
    cmp-long v4, v2, v6

    if-lez v4, :cond_0

    .line 233
    iget-object v4, p0, Lcom/flurry/org/apache/avro/io/ValidatingDecoder;->parser:Lcom/flurry/org/apache/avro/io/parsing/SkipParser;

    invoke-virtual {v4}, Lcom/flurry/org/apache/avro/io/parsing/SkipParser;->skipRepeater()V

    move-wide v2, v0

    .end local v0    # "c":J
    .restart local v2    # "c":J
    goto :goto_1

    .line 231
    .end local v2    # "c":J
    .restart local v0    # "c":J
    :cond_0
    iget-object v4, p0, Lcom/flurry/org/apache/avro/io/ValidatingDecoder;->in:Lcom/flurry/org/apache/avro/io/Decoder;

    invoke-virtual {v4}, Lcom/flurry/org/apache/avro/io/Decoder;->skipMap()J

    move-result-wide v0

    goto :goto_0

    .line 236
    :cond_1
    iget-object v4, p0, Lcom/flurry/org/apache/avro/io/ValidatingDecoder;->parser:Lcom/flurry/org/apache/avro/io/parsing/SkipParser;

    sget-object v5, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->MAP_END:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    invoke-virtual {v4, v5}, Lcom/flurry/org/apache/avro/io/parsing/SkipParser;->advance(Lcom/flurry/org/apache/avro/io/parsing/Symbol;)Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    .line 237
    return-wide v6
.end method

.method public skipString()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 118
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/ValidatingDecoder;->parser:Lcom/flurry/org/apache/avro/io/parsing/SkipParser;

    sget-object v1, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->STRING:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    invoke-virtual {v0, v1}, Lcom/flurry/org/apache/avro/io/parsing/SkipParser;->advance(Lcom/flurry/org/apache/avro/io/parsing/Symbol;)Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    .line 119
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/ValidatingDecoder;->in:Lcom/flurry/org/apache/avro/io/Decoder;

    invoke-virtual {v0}, Lcom/flurry/org/apache/avro/io/Decoder;->skipString()V

    .line 120
    return-void
.end method
