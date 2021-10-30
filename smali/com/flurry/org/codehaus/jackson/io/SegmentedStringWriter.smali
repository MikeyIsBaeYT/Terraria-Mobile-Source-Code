.class public final Lcom/flurry/org/codehaus/jackson/io/SegmentedStringWriter;
.super Ljava/io/Writer;
.source "SegmentedStringWriter.java"


# instance fields
.field protected final _buffer:Lcom/flurry/org/codehaus/jackson/util/TextBuffer;


# direct methods
.method public constructor <init>(Lcom/flurry/org/codehaus/jackson/util/BufferRecycler;)V
    .locals 1
    .param p1, "br"    # Lcom/flurry/org/codehaus/jackson/util/BufferRecycler;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 26
    new-instance v0, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;

    invoke-direct {v0, p1}, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;-><init>(Lcom/flurry/org/codehaus/jackson/util/BufferRecycler;)V

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/io/SegmentedStringWriter;->_buffer:Lcom/flurry/org/codehaus/jackson/util/TextBuffer;

    .line 27
    return-void
.end method


# virtual methods
.method public append(C)Ljava/io/Writer;
    .locals 0
    .param p1, "c"    # C

    .prologue
    .line 38
    invoke-virtual {p0, p1}, Lcom/flurry/org/codehaus/jackson/io/SegmentedStringWriter;->write(I)V

    .line 39
    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;)Ljava/io/Writer;
    .locals 4
    .param p1, "csq"    # Ljava/lang/CharSequence;

    .prologue
    .line 45
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 46
    .local v0, "str":Ljava/lang/String;
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/io/SegmentedStringWriter;->_buffer:Lcom/flurry/org/codehaus/jackson/util/TextBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->append(Ljava/lang/String;II)V

    .line 47
    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;II)Ljava/io/Writer;
    .locals 4
    .param p1, "csq"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 53
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, "str":Ljava/lang/String;
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/io/SegmentedStringWriter;->_buffer:Lcom/flurry/org/codehaus/jackson/util/TextBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->append(Ljava/lang/String;II)V

    .line 55
    return-object p0
.end method

.method public bridge synthetic append(C)Ljava/lang/Appendable;
    .locals 1
    .param p1, "x0"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 18
    invoke-virtual {p0, p1}, Lcom/flurry/org/codehaus/jackson/io/SegmentedStringWriter;->append(C)Ljava/io/Writer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .locals 1
    .param p1, "x0"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 18
    invoke-virtual {p0, p1}, Lcom/flurry/org/codehaus/jackson/io/SegmentedStringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .locals 1
    .param p1, "x0"    # Ljava/lang/CharSequence;
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 18
    invoke-virtual {p0, p1, p2, p3}, Lcom/flurry/org/codehaus/jackson/io/SegmentedStringWriter;->append(Ljava/lang/CharSequence;II)Ljava/io/Writer;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 0

    .prologue
    .line 58
    return-void
.end method

.method public flush()V
    .locals 0

    .prologue
    .line 60
    return-void
.end method

.method public getAndClear()Ljava/lang/String;
    .locals 2

    .prologue
    .line 100
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/io/SegmentedStringWriter;->_buffer:Lcom/flurry/org/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v1}, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->contentsAsString()Ljava/lang/String;

    move-result-object v0

    .line 101
    .local v0, "result":Ljava/lang/String;
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/io/SegmentedStringWriter;->_buffer:Lcom/flurry/org/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v1}, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->releaseBuffers()V

    .line 102
    return-object v0
.end method

.method public write(I)V
    .locals 2
    .param p1, "c"    # I

    .prologue
    .line 74
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/io/SegmentedStringWriter;->_buffer:Lcom/flurry/org/codehaus/jackson/util/TextBuffer;

    int-to-char v1, p1

    invoke-virtual {v0, v1}, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->append(C)V

    .line 75
    return-void
.end method

.method public write(Ljava/lang/String;)V
    .locals 3
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/io/SegmentedStringWriter;->_buffer:Lcom/flurry/org/codehaus/jackson/util/TextBuffer;

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->append(Ljava/lang/String;II)V

    return-void
.end method

.method public write(Ljava/lang/String;II)V
    .locals 3
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    .line 82
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/io/SegmentedStringWriter;->_buffer:Lcom/flurry/org/codehaus/jackson/util/TextBuffer;

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->append(Ljava/lang/String;II)V

    .line 83
    return-void
.end method

.method public write([C)V
    .locals 3
    .param p1, "cbuf"    # [C

    .prologue
    .line 64
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/io/SegmentedStringWriter;->_buffer:Lcom/flurry/org/codehaus/jackson/util/TextBuffer;

    const/4 v1, 0x0

    array-length v2, p1

    invoke-virtual {v0, p1, v1, v2}, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->append([CII)V

    .line 65
    return-void
.end method

.method public write([CII)V
    .locals 1
    .param p1, "cbuf"    # [C
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    .line 69
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/io/SegmentedStringWriter;->_buffer:Lcom/flurry/org/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/flurry/org/codehaus/jackson/util/TextBuffer;->append([CII)V

    .line 70
    return-void
.end method
