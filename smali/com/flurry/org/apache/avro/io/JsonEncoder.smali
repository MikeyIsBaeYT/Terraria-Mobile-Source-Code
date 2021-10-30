.class public Lcom/flurry/org/apache/avro/io/JsonEncoder;
.super Lcom/flurry/org/apache/avro/io/ParsingEncoder;
.source "JsonEncoder.java"

# interfaces
.implements Lcom/flurry/org/apache/avro/io/parsing/Parser$ActionHandler;


# instance fields
.field protected isEmpty:Ljava/util/BitSet;

.field private out:Lcom/flurry/org/codehaus/jackson/JsonGenerator;

.field final parser:Lcom/flurry/org/apache/avro/io/parsing/Parser;


# direct methods
.method constructor <init>(Lcom/flurry/org/apache/avro/Schema;Lcom/flurry/org/codehaus/jackson/JsonGenerator;)V
    .locals 2
    .param p1, "sc"    # Lcom/flurry/org/apache/avro/Schema;
    .param p2, "out"    # Lcom/flurry/org/codehaus/jackson/JsonGenerator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/flurry/org/apache/avro/io/ParsingEncoder;-><init>()V

    .line 51
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    iput-object v0, p0, Lcom/flurry/org/apache/avro/io/JsonEncoder;->isEmpty:Ljava/util/BitSet;

    .line 58
    invoke-virtual {p0, p2}, Lcom/flurry/org/apache/avro/io/JsonEncoder;->configure(Lcom/flurry/org/codehaus/jackson/JsonGenerator;)Lcom/flurry/org/apache/avro/io/JsonEncoder;

    .line 59
    new-instance v0, Lcom/flurry/org/apache/avro/io/parsing/Parser;

    new-instance v1, Lcom/flurry/org/apache/avro/io/parsing/JsonGrammarGenerator;

    invoke-direct {v1}, Lcom/flurry/org/apache/avro/io/parsing/JsonGrammarGenerator;-><init>()V

    invoke-virtual {v1, p1}, Lcom/flurry/org/apache/avro/io/parsing/JsonGrammarGenerator;->generate(Lcom/flurry/org/apache/avro/Schema;)Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/flurry/org/apache/avro/io/parsing/Parser;-><init>(Lcom/flurry/org/apache/avro/io/parsing/Symbol;Lcom/flurry/org/apache/avro/io/parsing/Parser$ActionHandler;)V

    iput-object v0, p0, Lcom/flurry/org/apache/avro/io/JsonEncoder;->parser:Lcom/flurry/org/apache/avro/io/parsing/Parser;

    .line 61
    return-void
.end method

.method constructor <init>(Lcom/flurry/org/apache/avro/Schema;Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "sc"    # Lcom/flurry/org/apache/avro/Schema;
    .param p2, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54
    invoke-static {p2}, Lcom/flurry/org/apache/avro/io/JsonEncoder;->getJsonGenerator(Ljava/io/OutputStream;)Lcom/flurry/org/codehaus/jackson/JsonGenerator;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/flurry/org/apache/avro/io/JsonEncoder;-><init>(Lcom/flurry/org/apache/avro/Schema;Lcom/flurry/org/codehaus/jackson/JsonGenerator;)V

    .line 55
    return-void
.end method

.method private static getJsonGenerator(Ljava/io/OutputStream;)Lcom/flurry/org/codehaus/jackson/JsonGenerator;
    .locals 4
    .param p0, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 74
    if-nez p0, :cond_0

    .line 75
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "OutputStream cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 76
    :cond_0
    new-instance v2, Lcom/flurry/org/codehaus/jackson/JsonFactory;

    invoke-direct {v2}, Lcom/flurry/org/codehaus/jackson/JsonFactory;-><init>()V

    sget-object v3, Lcom/flurry/org/codehaus/jackson/JsonEncoding;->UTF8:Lcom/flurry/org/codehaus/jackson/JsonEncoding;

    invoke-virtual {v2, p0, v3}, Lcom/flurry/org/codehaus/jackson/JsonFactory;->createJsonGenerator(Ljava/io/OutputStream;Lcom/flurry/org/codehaus/jackson/JsonEncoding;)Lcom/flurry/org/codehaus/jackson/JsonGenerator;

    move-result-object v0

    .line 78
    .local v0, "g":Lcom/flurry/org/codehaus/jackson/JsonGenerator;
    new-instance v1, Lcom/flurry/org/codehaus/jackson/util/MinimalPrettyPrinter;

    invoke-direct {v1}, Lcom/flurry/org/codehaus/jackson/util/MinimalPrettyPrinter;-><init>()V

    .line 79
    .local v1, "pp":Lcom/flurry/org/codehaus/jackson/util/MinimalPrettyPrinter;
    const-string v2, "line.separator"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/flurry/org/codehaus/jackson/util/MinimalPrettyPrinter;->setRootValueSeparator(Ljava/lang/String;)V

    .line 80
    invoke-virtual {v0, v1}, Lcom/flurry/org/codehaus/jackson/JsonGenerator;->setPrettyPrinter(Lcom/flurry/org/codehaus/jackson/PrettyPrinter;)Lcom/flurry/org/codehaus/jackson/JsonGenerator;

    .line 81
    return-object v0
.end method

.method private writeByteArray([BII)V
    .locals 3
    .param p1, "bytes"    # [B
    .param p2, "start"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 199
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/JsonEncoder;->out:Lcom/flurry/org/codehaus/jackson/JsonGenerator;

    new-instance v1, Ljava/lang/String;

    const-string v2, "ISO-8859-1"

    invoke-direct {v1, p1, p2, p3, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/flurry/org/codehaus/jackson/JsonGenerator;->writeString(Ljava/lang/String;)V

    .line 201
    return-void
.end method


# virtual methods
.method public configure(Lcom/flurry/org/codehaus/jackson/JsonGenerator;)Lcom/flurry/org/apache/avro/io/JsonEncoder;
    .locals 2
    .param p1, "generator"    # Lcom/flurry/org/codehaus/jackson/JsonGenerator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 117
    if-nez p1, :cond_0

    .line 118
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "JsonGenerator cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/JsonEncoder;->parser:Lcom/flurry/org/apache/avro/io/parsing/Parser;

    if-eqz v0, :cond_1

    .line 120
    invoke-virtual {p0}, Lcom/flurry/org/apache/avro/io/JsonEncoder;->flush()V

    .line 122
    :cond_1
    iput-object p1, p0, Lcom/flurry/org/apache/avro/io/JsonEncoder;->out:Lcom/flurry/org/codehaus/jackson/JsonGenerator;

    .line 123
    return-object p0
.end method

.method public configure(Ljava/io/OutputStream;)Lcom/flurry/org/apache/avro/io/JsonEncoder;
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 99
    invoke-static {p1}, Lcom/flurry/org/apache/avro/io/JsonEncoder;->getJsonGenerator(Ljava/io/OutputStream;)Lcom/flurry/org/codehaus/jackson/JsonGenerator;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flurry/org/apache/avro/io/JsonEncoder;->configure(Lcom/flurry/org/codehaus/jackson/JsonGenerator;)Lcom/flurry/org/apache/avro/io/JsonEncoder;

    .line 100
    return-object p0
.end method

.method public doAction(Lcom/flurry/org/apache/avro/io/parsing/Symbol;Lcom/flurry/org/apache/avro/io/parsing/Symbol;)Lcom/flurry/org/apache/avro/io/parsing/Symbol;
    .locals 4
    .param p1, "input"    # Lcom/flurry/org/apache/avro/io/parsing/Symbol;
    .param p2, "top"    # Lcom/flurry/org/apache/avro/io/parsing/Symbol;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 289
    instance-of v1, p2, Lcom/flurry/org/apache/avro/io/parsing/Symbol$FieldAdjustAction;

    if-eqz v1, :cond_1

    move-object v0, p2

    .line 290
    check-cast v0, Lcom/flurry/org/apache/avro/io/parsing/Symbol$FieldAdjustAction;

    .line 291
    .local v0, "fa":Lcom/flurry/org/apache/avro/io/parsing/Symbol$FieldAdjustAction;
    iget-object v1, p0, Lcom/flurry/org/apache/avro/io/JsonEncoder;->out:Lcom/flurry/org/codehaus/jackson/JsonGenerator;

    iget-object v2, v0, Lcom/flurry/org/apache/avro/io/parsing/Symbol$FieldAdjustAction;->fname:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/flurry/org/codehaus/jackson/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 299
    .end local v0    # "fa":Lcom/flurry/org/apache/avro/io/parsing/Symbol$FieldAdjustAction;
    :cond_0
    :goto_0
    const/4 v1, 0x0

    return-object v1

    .line 292
    :cond_1
    sget-object v1, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->RECORD_START:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    if-ne p2, v1, :cond_2

    .line 293
    iget-object v1, p0, Lcom/flurry/org/apache/avro/io/JsonEncoder;->out:Lcom/flurry/org/codehaus/jackson/JsonGenerator;

    invoke-virtual {v1}, Lcom/flurry/org/codehaus/jackson/JsonGenerator;->writeStartObject()V

    goto :goto_0

    .line 294
    :cond_2
    sget-object v1, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->RECORD_END:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    if-eq p2, v1, :cond_3

    sget-object v1, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->UNION_END:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    if-ne p2, v1, :cond_4

    .line 295
    :cond_3
    iget-object v1, p0, Lcom/flurry/org/apache/avro/io/JsonEncoder;->out:Lcom/flurry/org/codehaus/jackson/JsonGenerator;

    invoke-virtual {v1}, Lcom/flurry/org/codehaus/jackson/JsonGenerator;->writeEndObject()V

    goto :goto_0

    .line 296
    :cond_4
    sget-object v1, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->FIELD_END:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    if-eq p2, v1, :cond_0

    .line 297
    new-instance v1, Lcom/flurry/org/apache/avro/AvroTypeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown action symbol "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/flurry/org/apache/avro/AvroTypeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 65
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/JsonEncoder;->parser:Lcom/flurry/org/apache/avro/io/parsing/Parser;

    invoke-virtual {v0}, Lcom/flurry/org/apache/avro/io/parsing/Parser;->processImplicitActions()V

    .line 66
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/JsonEncoder;->out:Lcom/flurry/org/codehaus/jackson/JsonGenerator;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/JsonEncoder;->out:Lcom/flurry/org/codehaus/jackson/JsonGenerator;

    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/JsonGenerator;->flush()V

    .line 69
    :cond_0
    return-void
.end method

.method public startItem()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 267
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/JsonEncoder;->isEmpty:Ljava/util/BitSet;

    iget v1, p0, Lcom/flurry/org/apache/avro/io/JsonEncoder;->pos:I

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/JsonEncoder;->parser:Lcom/flurry/org/apache/avro/io/parsing/Parser;

    sget-object v1, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->ITEM_END:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    invoke-virtual {v0, v1}, Lcom/flurry/org/apache/avro/io/parsing/Parser;->advance(Lcom/flurry/org/apache/avro/io/parsing/Symbol;)Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    .line 270
    :cond_0
    invoke-super {p0}, Lcom/flurry/org/apache/avro/io/ParsingEncoder;->startItem()V

    .line 271
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/JsonEncoder;->isEmpty:Ljava/util/BitSet;

    invoke-virtual {p0}, Lcom/flurry/org/apache/avro/io/JsonEncoder;->depth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->clear(I)V

    .line 272
    return-void
.end method

.method public writeArrayEnd()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 237
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/JsonEncoder;->isEmpty:Ljava/util/BitSet;

    iget v1, p0, Lcom/flurry/org/apache/avro/io/JsonEncoder;->pos:I

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/JsonEncoder;->parser:Lcom/flurry/org/apache/avro/io/parsing/Parser;

    sget-object v1, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->ITEM_END:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    invoke-virtual {v0, v1}, Lcom/flurry/org/apache/avro/io/parsing/Parser;->advance(Lcom/flurry/org/apache/avro/io/parsing/Symbol;)Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    .line 240
    :cond_0
    invoke-virtual {p0}, Lcom/flurry/org/apache/avro/io/JsonEncoder;->pop()V

    .line 241
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/JsonEncoder;->parser:Lcom/flurry/org/apache/avro/io/parsing/Parser;

    sget-object v1, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->ARRAY_END:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    invoke-virtual {v0, v1}, Lcom/flurry/org/apache/avro/io/parsing/Parser;->advance(Lcom/flurry/org/apache/avro/io/parsing/Symbol;)Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    .line 242
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/JsonEncoder;->out:Lcom/flurry/org/codehaus/jackson/JsonGenerator;

    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/JsonGenerator;->writeEndArray()V

    .line 243
    return-void
.end method

.method public writeArrayStart()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 229
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/JsonEncoder;->parser:Lcom/flurry/org/apache/avro/io/parsing/Parser;

    sget-object v1, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->ARRAY_START:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    invoke-virtual {v0, v1}, Lcom/flurry/org/apache/avro/io/parsing/Parser;->advance(Lcom/flurry/org/apache/avro/io/parsing/Symbol;)Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    .line 230
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/JsonEncoder;->out:Lcom/flurry/org/codehaus/jackson/JsonGenerator;

    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/JsonGenerator;->writeStartArray()V

    .line 231
    invoke-virtual {p0}, Lcom/flurry/org/apache/avro/io/JsonEncoder;->push()V

    .line 232
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/JsonEncoder;->isEmpty:Ljava/util/BitSet;

    invoke-virtual {p0}, Lcom/flurry/org/apache/avro/io/JsonEncoder;->depth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 233
    return-void
.end method

.method public writeBoolean(Z)V
    .locals 2
    .param p1, "b"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 134
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/JsonEncoder;->parser:Lcom/flurry/org/apache/avro/io/parsing/Parser;

    sget-object v1, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->BOOLEAN:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    invoke-virtual {v0, v1}, Lcom/flurry/org/apache/avro/io/parsing/Parser;->advance(Lcom/flurry/org/apache/avro/io/parsing/Symbol;)Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    .line 135
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/JsonEncoder;->out:Lcom/flurry/org/codehaus/jackson/JsonGenerator;

    invoke-virtual {v0, p1}, Lcom/flurry/org/codehaus/jackson/JsonGenerator;->writeBoolean(Z)V

    .line 136
    return-void
.end method

.method public writeBytes(Ljava/nio/ByteBuffer;)V
    .locals 5
    .param p1, "bytes"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 180
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 181
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    invoke-virtual {p0, v2, v3, v4}, Lcom/flurry/org/apache/avro/io/JsonEncoder;->writeBytes([BII)V

    .line 189
    :goto_0
    return-void

    .line 183
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    new-array v0, v2, [B

    .line 184
    .local v0, "b":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 185
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    aput-byte v2, v0, v1

    .line 184
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 187
    :cond_1
    invoke-virtual {p0, v0}, Lcom/flurry/org/apache/avro/io/JsonEncoder;->writeBytes([B)V

    goto :goto_0
.end method

.method public writeBytes([BII)V
    .locals 2
    .param p1, "bytes"    # [B
    .param p2, "start"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 193
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/JsonEncoder;->parser:Lcom/flurry/org/apache/avro/io/parsing/Parser;

    sget-object v1, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->BYTES:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    invoke-virtual {v0, v1}, Lcom/flurry/org/apache/avro/io/parsing/Parser;->advance(Lcom/flurry/org/apache/avro/io/parsing/Symbol;)Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    .line 194
    invoke-direct {p0, p1, p2, p3}, Lcom/flurry/org/apache/avro/io/JsonEncoder;->writeByteArray([BII)V

    .line 195
    return-void
.end method

.method public writeDouble(D)V
    .locals 3
    .param p1, "d"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 158
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/JsonEncoder;->parser:Lcom/flurry/org/apache/avro/io/parsing/Parser;

    sget-object v1, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->DOUBLE:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    invoke-virtual {v0, v1}, Lcom/flurry/org/apache/avro/io/parsing/Parser;->advance(Lcom/flurry/org/apache/avro/io/parsing/Symbol;)Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    .line 159
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/JsonEncoder;->out:Lcom/flurry/org/codehaus/jackson/JsonGenerator;

    invoke-virtual {v0, p1, p2}, Lcom/flurry/org/codehaus/jackson/JsonGenerator;->writeNumber(D)V

    .line 160
    return-void
.end method

.method public writeEnum(I)V
    .locals 4
    .param p1, "e"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 217
    iget-object v1, p0, Lcom/flurry/org/apache/avro/io/JsonEncoder;->parser:Lcom/flurry/org/apache/avro/io/parsing/Parser;

    sget-object v2, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->ENUM:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    invoke-virtual {v1, v2}, Lcom/flurry/org/apache/avro/io/parsing/Parser;->advance(Lcom/flurry/org/apache/avro/io/parsing/Symbol;)Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    .line 218
    iget-object v1, p0, Lcom/flurry/org/apache/avro/io/JsonEncoder;->parser:Lcom/flurry/org/apache/avro/io/parsing/Parser;

    invoke-virtual {v1}, Lcom/flurry/org/apache/avro/io/parsing/Parser;->popSymbol()Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    move-result-object v0

    check-cast v0, Lcom/flurry/org/apache/avro/io/parsing/Symbol$EnumLabelsAction;

    .line 219
    .local v0, "top":Lcom/flurry/org/apache/avro/io/parsing/Symbol$EnumLabelsAction;
    if-ltz p1, :cond_0

    iget v1, v0, Lcom/flurry/org/apache/avro/io/parsing/Symbol$EnumLabelsAction;->size:I

    if-lt p1, v1, :cond_1

    .line 220
    :cond_0
    new-instance v1, Lcom/flurry/org/apache/avro/AvroTypeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Enumeration out of range: max is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/flurry/org/apache/avro/io/parsing/Symbol$EnumLabelsAction;->size:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " but received "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/flurry/org/apache/avro/AvroTypeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 224
    :cond_1
    iget-object v1, p0, Lcom/flurry/org/apache/avro/io/JsonEncoder;->out:Lcom/flurry/org/codehaus/jackson/JsonGenerator;

    invoke-virtual {v0, p1}, Lcom/flurry/org/apache/avro/io/parsing/Symbol$EnumLabelsAction;->getLabel(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/flurry/org/codehaus/jackson/JsonGenerator;->writeString(Ljava/lang/String;)V

    .line 225
    return-void
.end method

.method public writeFixed([BII)V
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
    .line 205
    iget-object v1, p0, Lcom/flurry/org/apache/avro/io/JsonEncoder;->parser:Lcom/flurry/org/apache/avro/io/parsing/Parser;

    sget-object v2, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->FIXED:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    invoke-virtual {v1, v2}, Lcom/flurry/org/apache/avro/io/parsing/Parser;->advance(Lcom/flurry/org/apache/avro/io/parsing/Symbol;)Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    .line 206
    iget-object v1, p0, Lcom/flurry/org/apache/avro/io/JsonEncoder;->parser:Lcom/flurry/org/apache/avro/io/parsing/Parser;

    invoke-virtual {v1}, Lcom/flurry/org/apache/avro/io/parsing/Parser;->popSymbol()Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    move-result-object v0

    check-cast v0, Lcom/flurry/org/apache/avro/io/parsing/Symbol$IntCheckAction;

    .line 207
    .local v0, "top":Lcom/flurry/org/apache/avro/io/parsing/Symbol$IntCheckAction;
    iget v1, v0, Lcom/flurry/org/apache/avro/io/parsing/Symbol$IntCheckAction;->size:I

    if-eq p3, v1, :cond_0

    .line 208
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

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bytes."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/flurry/org/apache/avro/AvroTypeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 212
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/flurry/org/apache/avro/io/JsonEncoder;->writeByteArray([BII)V

    .line 213
    return-void
.end method

.method public writeFloat(F)V
    .locals 2
    .param p1, "f"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 152
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/JsonEncoder;->parser:Lcom/flurry/org/apache/avro/io/parsing/Parser;

    sget-object v1, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->FLOAT:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    invoke-virtual {v0, v1}, Lcom/flurry/org/apache/avro/io/parsing/Parser;->advance(Lcom/flurry/org/apache/avro/io/parsing/Symbol;)Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    .line 153
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/JsonEncoder;->out:Lcom/flurry/org/codehaus/jackson/JsonGenerator;

    invoke-virtual {v0, p1}, Lcom/flurry/org/codehaus/jackson/JsonGenerator;->writeNumber(F)V

    .line 154
    return-void
.end method

.method public writeIndex(I)V
    .locals 4
    .param p1, "unionIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 276
    iget-object v2, p0, Lcom/flurry/org/apache/avro/io/JsonEncoder;->parser:Lcom/flurry/org/apache/avro/io/parsing/Parser;

    sget-object v3, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->UNION:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    invoke-virtual {v2, v3}, Lcom/flurry/org/apache/avro/io/parsing/Parser;->advance(Lcom/flurry/org/apache/avro/io/parsing/Symbol;)Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    .line 277
    iget-object v2, p0, Lcom/flurry/org/apache/avro/io/JsonEncoder;->parser:Lcom/flurry/org/apache/avro/io/parsing/Parser;

    invoke-virtual {v2}, Lcom/flurry/org/apache/avro/io/parsing/Parser;->popSymbol()Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    move-result-object v1

    check-cast v1, Lcom/flurry/org/apache/avro/io/parsing/Symbol$Alternative;

    .line 278
    .local v1, "top":Lcom/flurry/org/apache/avro/io/parsing/Symbol$Alternative;
    invoke-virtual {v1, p1}, Lcom/flurry/org/apache/avro/io/parsing/Symbol$Alternative;->getSymbol(I)Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    move-result-object v0

    .line 279
    .local v0, "symbol":Lcom/flurry/org/apache/avro/io/parsing/Symbol;
    sget-object v2, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->NULL:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    if-eq v0, v2, :cond_0

    .line 280
    iget-object v2, p0, Lcom/flurry/org/apache/avro/io/JsonEncoder;->out:Lcom/flurry/org/codehaus/jackson/JsonGenerator;

    invoke-virtual {v2}, Lcom/flurry/org/codehaus/jackson/JsonGenerator;->writeStartObject()V

    .line 281
    iget-object v2, p0, Lcom/flurry/org/apache/avro/io/JsonEncoder;->out:Lcom/flurry/org/codehaus/jackson/JsonGenerator;

    invoke-virtual {v1, p1}, Lcom/flurry/org/apache/avro/io/parsing/Symbol$Alternative;->getLabel(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/flurry/org/codehaus/jackson/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 282
    iget-object v2, p0, Lcom/flurry/org/apache/avro/io/JsonEncoder;->parser:Lcom/flurry/org/apache/avro/io/parsing/Parser;

    sget-object v3, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->UNION_END:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    invoke-virtual {v2, v3}, Lcom/flurry/org/apache/avro/io/parsing/Parser;->pushSymbol(Lcom/flurry/org/apache/avro/io/parsing/Symbol;)V

    .line 284
    :cond_0
    iget-object v2, p0, Lcom/flurry/org/apache/avro/io/JsonEncoder;->parser:Lcom/flurry/org/apache/avro/io/parsing/Parser;

    invoke-virtual {v2, v0}, Lcom/flurry/org/apache/avro/io/parsing/Parser;->pushSymbol(Lcom/flurry/org/apache/avro/io/parsing/Symbol;)V

    .line 285
    return-void
.end method

.method public writeInt(I)V
    .locals 2
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 140
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/JsonEncoder;->parser:Lcom/flurry/org/apache/avro/io/parsing/Parser;

    sget-object v1, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->INT:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    invoke-virtual {v0, v1}, Lcom/flurry/org/apache/avro/io/parsing/Parser;->advance(Lcom/flurry/org/apache/avro/io/parsing/Symbol;)Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    .line 141
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/JsonEncoder;->out:Lcom/flurry/org/codehaus/jackson/JsonGenerator;

    invoke-virtual {v0, p1}, Lcom/flurry/org/codehaus/jackson/JsonGenerator;->writeNumber(I)V

    .line 142
    return-void
.end method

.method public writeLong(J)V
    .locals 3
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 146
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/JsonEncoder;->parser:Lcom/flurry/org/apache/avro/io/parsing/Parser;

    sget-object v1, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->LONG:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    invoke-virtual {v0, v1}, Lcom/flurry/org/apache/avro/io/parsing/Parser;->advance(Lcom/flurry/org/apache/avro/io/parsing/Symbol;)Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    .line 147
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/JsonEncoder;->out:Lcom/flurry/org/codehaus/jackson/JsonGenerator;

    invoke-virtual {v0, p1, p2}, Lcom/flurry/org/codehaus/jackson/JsonGenerator;->writeNumber(J)V

    .line 148
    return-void
.end method

.method public writeMapEnd()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 256
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/JsonEncoder;->isEmpty:Ljava/util/BitSet;

    iget v1, p0, Lcom/flurry/org/apache/avro/io/JsonEncoder;->pos:I

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/JsonEncoder;->parser:Lcom/flurry/org/apache/avro/io/parsing/Parser;

    sget-object v1, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->ITEM_END:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    invoke-virtual {v0, v1}, Lcom/flurry/org/apache/avro/io/parsing/Parser;->advance(Lcom/flurry/org/apache/avro/io/parsing/Symbol;)Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    .line 259
    :cond_0
    invoke-virtual {p0}, Lcom/flurry/org/apache/avro/io/JsonEncoder;->pop()V

    .line 261
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/JsonEncoder;->parser:Lcom/flurry/org/apache/avro/io/parsing/Parser;

    sget-object v1, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->MAP_END:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    invoke-virtual {v0, v1}, Lcom/flurry/org/apache/avro/io/parsing/Parser;->advance(Lcom/flurry/org/apache/avro/io/parsing/Symbol;)Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    .line 262
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/JsonEncoder;->out:Lcom/flurry/org/codehaus/jackson/JsonGenerator;

    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/JsonGenerator;->writeEndObject()V

    .line 263
    return-void
.end method

.method public writeMapStart()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 247
    invoke-virtual {p0}, Lcom/flurry/org/apache/avro/io/JsonEncoder;->push()V

    .line 248
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/JsonEncoder;->isEmpty:Ljava/util/BitSet;

    invoke-virtual {p0}, Lcom/flurry/org/apache/avro/io/JsonEncoder;->depth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 250
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/JsonEncoder;->parser:Lcom/flurry/org/apache/avro/io/parsing/Parser;

    sget-object v1, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->MAP_START:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    invoke-virtual {v0, v1}, Lcom/flurry/org/apache/avro/io/parsing/Parser;->advance(Lcom/flurry/org/apache/avro/io/parsing/Symbol;)Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    .line 251
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/JsonEncoder;->out:Lcom/flurry/org/codehaus/jackson/JsonGenerator;

    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/JsonGenerator;->writeStartObject()V

    .line 252
    return-void
.end method

.method public writeNull()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 128
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/JsonEncoder;->parser:Lcom/flurry/org/apache/avro/io/parsing/Parser;

    sget-object v1, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->NULL:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    invoke-virtual {v0, v1}, Lcom/flurry/org/apache/avro/io/parsing/Parser;->advance(Lcom/flurry/org/apache/avro/io/parsing/Symbol;)Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    .line 129
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/JsonEncoder;->out:Lcom/flurry/org/codehaus/jackson/JsonGenerator;

    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/JsonGenerator;->writeNull()V

    .line 130
    return-void
.end method

.method public writeString(Lcom/flurry/org/apache/avro/util/Utf8;)V
    .locals 1
    .param p1, "utf8"    # Lcom/flurry/org/apache/avro/util/Utf8;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 164
    invoke-virtual {p1}, Lcom/flurry/org/apache/avro/util/Utf8;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flurry/org/apache/avro/io/JsonEncoder;->writeString(Ljava/lang/String;)V

    .line 165
    return-void
.end method

.method public writeString(Ljava/lang/String;)V
    .locals 2
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 169
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/JsonEncoder;->parser:Lcom/flurry/org/apache/avro/io/parsing/Parser;

    sget-object v1, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->STRING:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    invoke-virtual {v0, v1}, Lcom/flurry/org/apache/avro/io/parsing/Parser;->advance(Lcom/flurry/org/apache/avro/io/parsing/Symbol;)Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    .line 170
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/JsonEncoder;->parser:Lcom/flurry/org/apache/avro/io/parsing/Parser;

    invoke-virtual {v0}, Lcom/flurry/org/apache/avro/io/parsing/Parser;->topSymbol()Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    move-result-object v0

    sget-object v1, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->MAP_KEY_MARKER:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    if-ne v0, v1, :cond_0

    .line 171
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/JsonEncoder;->parser:Lcom/flurry/org/apache/avro/io/parsing/Parser;

    sget-object v1, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->MAP_KEY_MARKER:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    invoke-virtual {v0, v1}, Lcom/flurry/org/apache/avro/io/parsing/Parser;->advance(Lcom/flurry/org/apache/avro/io/parsing/Symbol;)Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    .line 172
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/JsonEncoder;->out:Lcom/flurry/org/codehaus/jackson/JsonGenerator;

    invoke-virtual {v0, p1}, Lcom/flurry/org/codehaus/jackson/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 176
    :goto_0
    return-void

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/JsonEncoder;->out:Lcom/flurry/org/codehaus/jackson/JsonGenerator;

    invoke-virtual {v0, p1}, Lcom/flurry/org/codehaus/jackson/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0
.end method
