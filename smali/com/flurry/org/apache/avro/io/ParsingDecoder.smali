.class public abstract Lcom/flurry/org/apache/avro/io/ParsingDecoder;
.super Lcom/flurry/org/apache/avro/io/Decoder;
.source "ParsingDecoder.java"

# interfaces
.implements Lcom/flurry/org/apache/avro/io/parsing/Parser$ActionHandler;
.implements Lcom/flurry/org/apache/avro/io/parsing/SkipParser$SkipHandler;


# instance fields
.field protected final parser:Lcom/flurry/org/apache/avro/io/parsing/SkipParser;


# direct methods
.method protected constructor <init>(Lcom/flurry/org/apache/avro/io/parsing/Symbol;)V
    .locals 1
    .param p1, "root"    # Lcom/flurry/org/apache/avro/io/parsing/Symbol;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/flurry/org/apache/avro/io/Decoder;-><init>()V

    .line 34
    new-instance v0, Lcom/flurry/org/apache/avro/io/parsing/SkipParser;

    invoke-direct {v0, p1, p0, p0}, Lcom/flurry/org/apache/avro/io/parsing/SkipParser;-><init>(Lcom/flurry/org/apache/avro/io/parsing/Symbol;Lcom/flurry/org/apache/avro/io/parsing/Parser$ActionHandler;Lcom/flurry/org/apache/avro/io/parsing/SkipParser$SkipHandler;)V

    iput-object v0, p0, Lcom/flurry/org/apache/avro/io/ParsingDecoder;->parser:Lcom/flurry/org/apache/avro/io/parsing/SkipParser;

    .line 35
    return-void
.end method


# virtual methods
.method public skipAction()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 41
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/ParsingDecoder;->parser:Lcom/flurry/org/apache/avro/io/parsing/SkipParser;

    invoke-virtual {v0}, Lcom/flurry/org/apache/avro/io/parsing/SkipParser;->popSymbol()Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    .line 42
    return-void
.end method

.method protected abstract skipFixed()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public skipTopSymbol()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 46
    iget-object v1, p0, Lcom/flurry/org/apache/avro/io/ParsingDecoder;->parser:Lcom/flurry/org/apache/avro/io/parsing/SkipParser;

    invoke-virtual {v1}, Lcom/flurry/org/apache/avro/io/parsing/SkipParser;->topSymbol()Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    move-result-object v0

    .line 47
    .local v0, "top":Lcom/flurry/org/apache/avro/io/parsing/Symbol;
    sget-object v1, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->NULL:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    if-ne v0, v1, :cond_0

    .line 48
    invoke-virtual {p0}, Lcom/flurry/org/apache/avro/io/ParsingDecoder;->readNull()V

    .line 49
    :cond_0
    sget-object v1, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->BOOLEAN:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    if-ne v0, v1, :cond_2

    .line 50
    invoke-virtual {p0}, Lcom/flurry/org/apache/avro/io/ParsingDecoder;->readBoolean()Z

    .line 74
    :cond_1
    :goto_0
    return-void

    .line 51
    :cond_2
    sget-object v1, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->INT:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    if-ne v0, v1, :cond_3

    .line 52
    invoke-virtual {p0}, Lcom/flurry/org/apache/avro/io/ParsingDecoder;->readInt()I

    goto :goto_0

    .line 53
    :cond_3
    sget-object v1, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->LONG:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    if-ne v0, v1, :cond_4

    .line 54
    invoke-virtual {p0}, Lcom/flurry/org/apache/avro/io/ParsingDecoder;->readLong()J

    goto :goto_0

    .line 55
    :cond_4
    sget-object v1, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->FLOAT:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    if-ne v0, v1, :cond_5

    .line 56
    invoke-virtual {p0}, Lcom/flurry/org/apache/avro/io/ParsingDecoder;->readFloat()F

    goto :goto_0

    .line 57
    :cond_5
    sget-object v1, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->DOUBLE:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    if-ne v0, v1, :cond_6

    .line 58
    invoke-virtual {p0}, Lcom/flurry/org/apache/avro/io/ParsingDecoder;->readDouble()D

    goto :goto_0

    .line 59
    :cond_6
    sget-object v1, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->STRING:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    if-ne v0, v1, :cond_7

    .line 60
    invoke-virtual {p0}, Lcom/flurry/org/apache/avro/io/ParsingDecoder;->skipString()V

    goto :goto_0

    .line 61
    :cond_7
    sget-object v1, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->BYTES:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    if-ne v0, v1, :cond_8

    .line 62
    invoke-virtual {p0}, Lcom/flurry/org/apache/avro/io/ParsingDecoder;->skipBytes()V

    goto :goto_0

    .line 63
    :cond_8
    sget-object v1, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->ENUM:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    if-ne v0, v1, :cond_9

    .line 64
    invoke-virtual {p0}, Lcom/flurry/org/apache/avro/io/ParsingDecoder;->readEnum()I

    goto :goto_0

    .line 65
    :cond_9
    sget-object v1, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->FIXED:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    if-ne v0, v1, :cond_a

    .line 66
    invoke-virtual {p0}, Lcom/flurry/org/apache/avro/io/ParsingDecoder;->skipFixed()V

    goto :goto_0

    .line 67
    :cond_a
    sget-object v1, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->UNION:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    if-ne v0, v1, :cond_b

    .line 68
    invoke-virtual {p0}, Lcom/flurry/org/apache/avro/io/ParsingDecoder;->readIndex()I

    goto :goto_0

    .line 69
    :cond_b
    sget-object v1, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->ARRAY_START:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    if-ne v0, v1, :cond_c

    .line 70
    invoke-virtual {p0}, Lcom/flurry/org/apache/avro/io/ParsingDecoder;->skipArray()J

    goto :goto_0

    .line 71
    :cond_c
    sget-object v1, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->MAP_START:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    if-ne v0, v1, :cond_1

    .line 72
    invoke-virtual {p0}, Lcom/flurry/org/apache/avro/io/ParsingDecoder;->skipMap()J

    goto :goto_0
.end method
