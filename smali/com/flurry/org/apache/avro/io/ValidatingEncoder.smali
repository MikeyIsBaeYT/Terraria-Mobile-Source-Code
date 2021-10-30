.class public Lcom/flurry/org/apache/avro/io/ValidatingEncoder;
.super Lcom/flurry/org/apache/avro/io/ParsingEncoder;
.source "ValidatingEncoder.java"

# interfaces
.implements Lcom/flurry/org/apache/avro/io/parsing/Parser$ActionHandler;


# instance fields
.field protected out:Lcom/flurry/org/apache/avro/io/Encoder;

.field protected final parser:Lcom/flurry/org/apache/avro/io/parsing/Parser;


# direct methods
.method constructor <init>(Lcom/flurry/org/apache/avro/Schema;Lcom/flurry/org/apache/avro/io/Encoder;)V
    .locals 1
    .param p1, "schema"    # Lcom/flurry/org/apache/avro/Schema;
    .param p2, "in"    # Lcom/flurry/org/apache/avro/io/Encoder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 53
    new-instance v0, Lcom/flurry/org/apache/avro/io/parsing/ValidatingGrammarGenerator;

    invoke-direct {v0}, Lcom/flurry/org/apache/avro/io/parsing/ValidatingGrammarGenerator;-><init>()V

    invoke-virtual {v0, p1}, Lcom/flurry/org/apache/avro/io/parsing/ValidatingGrammarGenerator;->generate(Lcom/flurry/org/apache/avro/Schema;)Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/flurry/org/apache/avro/io/ValidatingEncoder;-><init>(Lcom/flurry/org/apache/avro/io/parsing/Symbol;Lcom/flurry/org/apache/avro/io/Encoder;)V

    .line 54
    return-void
.end method

.method constructor <init>(Lcom/flurry/org/apache/avro/io/parsing/Symbol;Lcom/flurry/org/apache/avro/io/Encoder;)V
    .locals 1
    .param p1, "root"    # Lcom/flurry/org/apache/avro/io/parsing/Symbol;
    .param p2, "out"    # Lcom/flurry/org/apache/avro/io/Encoder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/flurry/org/apache/avro/io/ParsingEncoder;-><init>()V

    .line 48
    iput-object p2, p0, Lcom/flurry/org/apache/avro/io/ValidatingEncoder;->out:Lcom/flurry/org/apache/avro/io/Encoder;

    .line 49
    new-instance v0, Lcom/flurry/org/apache/avro/io/parsing/Parser;

    invoke-direct {v0, p1, p0}, Lcom/flurry/org/apache/avro/io/parsing/Parser;-><init>(Lcom/flurry/org/apache/avro/io/parsing/Symbol;Lcom/flurry/org/apache/avro/io/parsing/Parser$ActionHandler;)V

    iput-object v0, p0, Lcom/flurry/org/apache/avro/io/ValidatingEncoder;->parser:Lcom/flurry/org/apache/avro/io/parsing/Parser;

    .line 50
    return-void
.end method


# virtual methods
.method public configure(Lcom/flurry/org/apache/avro/io/Encoder;)Lcom/flurry/org/apache/avro/io/ValidatingEncoder;
    .locals 1
    .param p1, "encoder"    # Lcom/flurry/org/apache/avro/io/Encoder;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/ValidatingEncoder;->parser:Lcom/flurry/org/apache/avro/io/parsing/Parser;

    invoke-virtual {v0}, Lcom/flurry/org/apache/avro/io/parsing/Parser;->reset()V

    .line 70
    iput-object p1, p0, Lcom/flurry/org/apache/avro/io/ValidatingEncoder;->out:Lcom/flurry/org/apache/avro/io/Encoder;

    .line 71
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
    .line 214
    const/4 v0, 0x0

    return-object v0
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 58
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/ValidatingEncoder;->out:Lcom/flurry/org/apache/avro/io/Encoder;

    invoke-virtual {v0}, Lcom/flurry/org/apache/avro/io/Encoder;->flush()V

    .line 59
    return-void
.end method

.method public setItemCount(J)V
    .locals 1
    .param p1, "itemCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 194
    invoke-super {p0, p1, p2}, Lcom/flurry/org/apache/avro/io/ParsingEncoder;->setItemCount(J)V

    .line 195
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/ValidatingEncoder;->out:Lcom/flurry/org/apache/avro/io/Encoder;

    invoke-virtual {v0, p1, p2}, Lcom/flurry/org/apache/avro/io/Encoder;->setItemCount(J)V

    .line 196
    return-void
.end method

.method public startItem()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 200
    invoke-super {p0}, Lcom/flurry/org/apache/avro/io/ParsingEncoder;->startItem()V

    .line 201
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/ValidatingEncoder;->out:Lcom/flurry/org/apache/avro/io/Encoder;

    invoke-virtual {v0}, Lcom/flurry/org/apache/avro/io/Encoder;->startItem()V

    .line 202
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
    .line 173
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/ValidatingEncoder;->parser:Lcom/flurry/org/apache/avro/io/parsing/Parser;

    sget-object v1, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->ARRAY_END:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    invoke-virtual {v0, v1}, Lcom/flurry/org/apache/avro/io/parsing/Parser;->advance(Lcom/flurry/org/apache/avro/io/parsing/Symbol;)Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    .line 174
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/ValidatingEncoder;->out:Lcom/flurry/org/apache/avro/io/Encoder;

    invoke-virtual {v0}, Lcom/flurry/org/apache/avro/io/Encoder;->writeArrayEnd()V

    .line 175
    invoke-virtual {p0}, Lcom/flurry/org/apache/avro/io/ValidatingEncoder;->pop()V

    .line 176
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
    .line 166
    invoke-virtual {p0}, Lcom/flurry/org/apache/avro/io/ValidatingEncoder;->push()V

    .line 167
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/ValidatingEncoder;->parser:Lcom/flurry/org/apache/avro/io/parsing/Parser;

    sget-object v1, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->ARRAY_START:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    invoke-virtual {v0, v1}, Lcom/flurry/org/apache/avro/io/parsing/Parser;->advance(Lcom/flurry/org/apache/avro/io/parsing/Symbol;)Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    .line 168
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/ValidatingEncoder;->out:Lcom/flurry/org/apache/avro/io/Encoder;

    invoke-virtual {v0}, Lcom/flurry/org/apache/avro/io/Encoder;->writeArrayStart()V

    .line 169
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
    .line 82
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/ValidatingEncoder;->parser:Lcom/flurry/org/apache/avro/io/parsing/Parser;

    sget-object v1, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->BOOLEAN:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    invoke-virtual {v0, v1}, Lcom/flurry/org/apache/avro/io/parsing/Parser;->advance(Lcom/flurry/org/apache/avro/io/parsing/Symbol;)Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    .line 83
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/ValidatingEncoder;->out:Lcom/flurry/org/apache/avro/io/Encoder;

    invoke-virtual {v0, p1}, Lcom/flurry/org/apache/avro/io/Encoder;->writeBoolean(Z)V

    .line 84
    return-void
.end method

.method public writeBytes(Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "bytes"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 130
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/ValidatingEncoder;->parser:Lcom/flurry/org/apache/avro/io/parsing/Parser;

    sget-object v1, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->BYTES:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    invoke-virtual {v0, v1}, Lcom/flurry/org/apache/avro/io/parsing/Parser;->advance(Lcom/flurry/org/apache/avro/io/parsing/Symbol;)Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    .line 131
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/ValidatingEncoder;->out:Lcom/flurry/org/apache/avro/io/Encoder;

    invoke-virtual {v0, p1}, Lcom/flurry/org/apache/avro/io/Encoder;->writeBytes(Ljava/nio/ByteBuffer;)V

    .line 132
    return-void
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
    .line 136
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/ValidatingEncoder;->parser:Lcom/flurry/org/apache/avro/io/parsing/Parser;

    sget-object v1, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->BYTES:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    invoke-virtual {v0, v1}, Lcom/flurry/org/apache/avro/io/parsing/Parser;->advance(Lcom/flurry/org/apache/avro/io/parsing/Symbol;)Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    .line 137
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/ValidatingEncoder;->out:Lcom/flurry/org/apache/avro/io/Encoder;

    invoke-virtual {v0, p1, p2, p3}, Lcom/flurry/org/apache/avro/io/Encoder;->writeBytes([BII)V

    .line 138
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
    .line 106
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/ValidatingEncoder;->parser:Lcom/flurry/org/apache/avro/io/parsing/Parser;

    sget-object v1, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->DOUBLE:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    invoke-virtual {v0, v1}, Lcom/flurry/org/apache/avro/io/parsing/Parser;->advance(Lcom/flurry/org/apache/avro/io/parsing/Symbol;)Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    .line 107
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/ValidatingEncoder;->out:Lcom/flurry/org/apache/avro/io/Encoder;

    invoke-virtual {v0, p1, p2}, Lcom/flurry/org/apache/avro/io/Encoder;->writeDouble(D)V

    .line 108
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
    .line 154
    iget-object v1, p0, Lcom/flurry/org/apache/avro/io/ValidatingEncoder;->parser:Lcom/flurry/org/apache/avro/io/parsing/Parser;

    sget-object v2, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->ENUM:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    invoke-virtual {v1, v2}, Lcom/flurry/org/apache/avro/io/parsing/Parser;->advance(Lcom/flurry/org/apache/avro/io/parsing/Symbol;)Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    .line 155
    iget-object v1, p0, Lcom/flurry/org/apache/avro/io/ValidatingEncoder;->parser:Lcom/flurry/org/apache/avro/io/parsing/Parser;

    invoke-virtual {v1}, Lcom/flurry/org/apache/avro/io/parsing/Parser;->popSymbol()Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    move-result-object v0

    check-cast v0, Lcom/flurry/org/apache/avro/io/parsing/Symbol$IntCheckAction;

    .line 156
    .local v0, "top":Lcom/flurry/org/apache/avro/io/parsing/Symbol$IntCheckAction;
    if-ltz p1, :cond_0

    iget v1, v0, Lcom/flurry/org/apache/avro/io/parsing/Symbol$IntCheckAction;->size:I

    if-lt p1, v1, :cond_1

    .line 157
    :cond_0
    new-instance v1, Lcom/flurry/org/apache/avro/AvroTypeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Enumeration out of range: max is "

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

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/flurry/org/apache/avro/AvroTypeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 161
    :cond_1
    iget-object v1, p0, Lcom/flurry/org/apache/avro/io/ValidatingEncoder;->out:Lcom/flurry/org/apache/avro/io/Encoder;

    invoke-virtual {v1, p1}, Lcom/flurry/org/apache/avro/io/Encoder;->writeEnum(I)V

    .line 162
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
    .line 142
    iget-object v1, p0, Lcom/flurry/org/apache/avro/io/ValidatingEncoder;->parser:Lcom/flurry/org/apache/avro/io/parsing/Parser;

    sget-object v2, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->FIXED:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    invoke-virtual {v1, v2}, Lcom/flurry/org/apache/avro/io/parsing/Parser;->advance(Lcom/flurry/org/apache/avro/io/parsing/Symbol;)Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    .line 143
    iget-object v1, p0, Lcom/flurry/org/apache/avro/io/ValidatingEncoder;->parser:Lcom/flurry/org/apache/avro/io/parsing/Parser;

    invoke-virtual {v1}, Lcom/flurry/org/apache/avro/io/parsing/Parser;->popSymbol()Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    move-result-object v0

    check-cast v0, Lcom/flurry/org/apache/avro/io/parsing/Symbol$IntCheckAction;

    .line 144
    .local v0, "top":Lcom/flurry/org/apache/avro/io/parsing/Symbol$IntCheckAction;
    iget v1, v0, Lcom/flurry/org/apache/avro/io/parsing/Symbol$IntCheckAction;->size:I

    if-eq p3, v1, :cond_0

    .line 145
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

    .line 149
    :cond_0
    iget-object v1, p0, Lcom/flurry/org/apache/avro/io/ValidatingEncoder;->out:Lcom/flurry/org/apache/avro/io/Encoder;

    invoke-virtual {v1, p1, p2, p3}, Lcom/flurry/org/apache/avro/io/Encoder;->writeFixed([BII)V

    .line 150
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
    .line 100
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/ValidatingEncoder;->parser:Lcom/flurry/org/apache/avro/io/parsing/Parser;

    sget-object v1, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->FLOAT:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    invoke-virtual {v0, v1}, Lcom/flurry/org/apache/avro/io/parsing/Parser;->advance(Lcom/flurry/org/apache/avro/io/parsing/Symbol;)Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    .line 101
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/ValidatingEncoder;->out:Lcom/flurry/org/apache/avro/io/Encoder;

    invoke-virtual {v0, p1}, Lcom/flurry/org/apache/avro/io/Encoder;->writeFloat(F)V

    .line 102
    return-void
.end method

.method public writeIndex(I)V
    .locals 3
    .param p1, "unionIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 206
    iget-object v1, p0, Lcom/flurry/org/apache/avro/io/ValidatingEncoder;->parser:Lcom/flurry/org/apache/avro/io/parsing/Parser;

    sget-object v2, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->UNION:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    invoke-virtual {v1, v2}, Lcom/flurry/org/apache/avro/io/parsing/Parser;->advance(Lcom/flurry/org/apache/avro/io/parsing/Symbol;)Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    .line 207
    iget-object v1, p0, Lcom/flurry/org/apache/avro/io/ValidatingEncoder;->parser:Lcom/flurry/org/apache/avro/io/parsing/Parser;

    invoke-virtual {v1}, Lcom/flurry/org/apache/avro/io/parsing/Parser;->popSymbol()Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    move-result-object v0

    check-cast v0, Lcom/flurry/org/apache/avro/io/parsing/Symbol$Alternative;

    .line 208
    .local v0, "top":Lcom/flurry/org/apache/avro/io/parsing/Symbol$Alternative;
    iget-object v1, p0, Lcom/flurry/org/apache/avro/io/ValidatingEncoder;->parser:Lcom/flurry/org/apache/avro/io/parsing/Parser;

    invoke-virtual {v0, p1}, Lcom/flurry/org/apache/avro/io/parsing/Symbol$Alternative;->getSymbol(I)Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/flurry/org/apache/avro/io/parsing/Parser;->pushSymbol(Lcom/flurry/org/apache/avro/io/parsing/Symbol;)V

    .line 209
    iget-object v1, p0, Lcom/flurry/org/apache/avro/io/ValidatingEncoder;->out:Lcom/flurry/org/apache/avro/io/Encoder;

    invoke-virtual {v1, p1}, Lcom/flurry/org/apache/avro/io/Encoder;->writeIndex(I)V

    .line 210
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
    .line 88
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/ValidatingEncoder;->parser:Lcom/flurry/org/apache/avro/io/parsing/Parser;

    sget-object v1, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->INT:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    invoke-virtual {v0, v1}, Lcom/flurry/org/apache/avro/io/parsing/Parser;->advance(Lcom/flurry/org/apache/avro/io/parsing/Symbol;)Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    .line 89
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/ValidatingEncoder;->out:Lcom/flurry/org/apache/avro/io/Encoder;

    invoke-virtual {v0, p1}, Lcom/flurry/org/apache/avro/io/Encoder;->writeInt(I)V

    .line 90
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
    .line 94
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/ValidatingEncoder;->parser:Lcom/flurry/org/apache/avro/io/parsing/Parser;

    sget-object v1, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->LONG:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    invoke-virtual {v0, v1}, Lcom/flurry/org/apache/avro/io/parsing/Parser;->advance(Lcom/flurry/org/apache/avro/io/parsing/Symbol;)Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    .line 95
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/ValidatingEncoder;->out:Lcom/flurry/org/apache/avro/io/Encoder;

    invoke-virtual {v0, p1, p2}, Lcom/flurry/org/apache/avro/io/Encoder;->writeLong(J)V

    .line 96
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
    .line 187
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/ValidatingEncoder;->parser:Lcom/flurry/org/apache/avro/io/parsing/Parser;

    sget-object v1, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->MAP_END:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    invoke-virtual {v0, v1}, Lcom/flurry/org/apache/avro/io/parsing/Parser;->advance(Lcom/flurry/org/apache/avro/io/parsing/Symbol;)Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    .line 188
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/ValidatingEncoder;->out:Lcom/flurry/org/apache/avro/io/Encoder;

    invoke-virtual {v0}, Lcom/flurry/org/apache/avro/io/Encoder;->writeMapEnd()V

    .line 189
    invoke-virtual {p0}, Lcom/flurry/org/apache/avro/io/ValidatingEncoder;->pop()V

    .line 190
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
    .line 180
    invoke-virtual {p0}, Lcom/flurry/org/apache/avro/io/ValidatingEncoder;->push()V

    .line 181
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/ValidatingEncoder;->parser:Lcom/flurry/org/apache/avro/io/parsing/Parser;

    sget-object v1, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->MAP_START:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    invoke-virtual {v0, v1}, Lcom/flurry/org/apache/avro/io/parsing/Parser;->advance(Lcom/flurry/org/apache/avro/io/parsing/Symbol;)Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    .line 182
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/ValidatingEncoder;->out:Lcom/flurry/org/apache/avro/io/Encoder;

    invoke-virtual {v0}, Lcom/flurry/org/apache/avro/io/Encoder;->writeMapStart()V

    .line 183
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
    .line 76
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/ValidatingEncoder;->parser:Lcom/flurry/org/apache/avro/io/parsing/Parser;

    sget-object v1, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->NULL:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    invoke-virtual {v0, v1}, Lcom/flurry/org/apache/avro/io/parsing/Parser;->advance(Lcom/flurry/org/apache/avro/io/parsing/Symbol;)Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    .line 77
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/ValidatingEncoder;->out:Lcom/flurry/org/apache/avro/io/Encoder;

    invoke-virtual {v0}, Lcom/flurry/org/apache/avro/io/Encoder;->writeNull()V

    .line 78
    return-void
.end method

.method public writeString(Lcom/flurry/org/apache/avro/util/Utf8;)V
    .locals 2
    .param p1, "utf8"    # Lcom/flurry/org/apache/avro/util/Utf8;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 112
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/ValidatingEncoder;->parser:Lcom/flurry/org/apache/avro/io/parsing/Parser;

    sget-object v1, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->STRING:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    invoke-virtual {v0, v1}, Lcom/flurry/org/apache/avro/io/parsing/Parser;->advance(Lcom/flurry/org/apache/avro/io/parsing/Symbol;)Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    .line 113
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/ValidatingEncoder;->out:Lcom/flurry/org/apache/avro/io/Encoder;

    invoke-virtual {v0, p1}, Lcom/flurry/org/apache/avro/io/Encoder;->writeString(Lcom/flurry/org/apache/avro/util/Utf8;)V

    .line 114
    return-void
.end method

.method public writeString(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "charSequence"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 124
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/ValidatingEncoder;->parser:Lcom/flurry/org/apache/avro/io/parsing/Parser;

    sget-object v1, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->STRING:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    invoke-virtual {v0, v1}, Lcom/flurry/org/apache/avro/io/parsing/Parser;->advance(Lcom/flurry/org/apache/avro/io/parsing/Symbol;)Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    .line 125
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/ValidatingEncoder;->out:Lcom/flurry/org/apache/avro/io/Encoder;

    invoke-virtual {v0, p1}, Lcom/flurry/org/apache/avro/io/Encoder;->writeString(Ljava/lang/CharSequence;)V

    .line 126
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
    .line 118
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/ValidatingEncoder;->parser:Lcom/flurry/org/apache/avro/io/parsing/Parser;

    sget-object v1, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->STRING:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    invoke-virtual {v0, v1}, Lcom/flurry/org/apache/avro/io/parsing/Parser;->advance(Lcom/flurry/org/apache/avro/io/parsing/Symbol;)Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    .line 119
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/ValidatingEncoder;->out:Lcom/flurry/org/apache/avro/io/Encoder;

    invoke-virtual {v0, p1}, Lcom/flurry/org/apache/avro/io/Encoder;->writeString(Ljava/lang/String;)V

    .line 120
    return-void
.end method
