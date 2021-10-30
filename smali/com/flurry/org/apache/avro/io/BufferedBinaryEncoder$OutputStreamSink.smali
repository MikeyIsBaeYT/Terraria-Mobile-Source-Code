.class Lcom/flurry/org/apache/avro/io/BufferedBinaryEncoder$OutputStreamSink;
.super Lcom/flurry/org/apache/avro/io/BufferedBinaryEncoder$ByteSink;
.source "BufferedBinaryEncoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/org/apache/avro/io/BufferedBinaryEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "OutputStreamSink"
.end annotation


# instance fields
.field private final out:Ljava/io/OutputStream;


# direct methods
.method private constructor <init>(Ljava/io/OutputStream;)V
    .locals 0
    .param p1, "out"    # Ljava/io/OutputStream;

    .prologue
    .line 192
    invoke-direct {p0}, Lcom/flurry/org/apache/avro/io/BufferedBinaryEncoder$ByteSink;-><init>()V

    .line 193
    iput-object p1, p0, Lcom/flurry/org/apache/avro/io/BufferedBinaryEncoder$OutputStreamSink;->out:Ljava/io/OutputStream;

    .line 194
    return-void
.end method

.method synthetic constructor <init>(Ljava/io/OutputStream;Lcom/flurry/org/apache/avro/io/BufferedBinaryEncoder$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/io/OutputStream;
    .param p2, "x1"    # Lcom/flurry/org/apache/avro/io/BufferedBinaryEncoder$1;

    .prologue
    .line 189
    invoke-direct {p0, p1}, Lcom/flurry/org/apache/avro/io/BufferedBinaryEncoder$OutputStreamSink;-><init>(Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method protected innerFlush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 202
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/BufferedBinaryEncoder$OutputStreamSink;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 203
    return-void
.end method

.method protected innerWrite([BII)V
    .locals 1
    .param p1, "bytes"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 198
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/BufferedBinaryEncoder$OutputStreamSink;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 199
    return-void
.end method
