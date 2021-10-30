.class Lcom/flurry/org/apache/avro/io/DirectBinaryDecoder$ReuseByteReader;
.super Lcom/flurry/org/apache/avro/io/DirectBinaryDecoder$ByteReader;
.source "DirectBinaryDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/org/apache/avro/io/DirectBinaryDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReuseByteReader"
.end annotation


# instance fields
.field private final bbi:Lcom/flurry/org/apache/avro/util/ByteBufferInputStream;

.field final synthetic this$0:Lcom/flurry/org/apache/avro/io/DirectBinaryDecoder;


# direct methods
.method public constructor <init>(Lcom/flurry/org/apache/avro/io/DirectBinaryDecoder;Lcom/flurry/org/apache/avro/util/ByteBufferInputStream;)V
    .locals 1
    .param p2, "bbi"    # Lcom/flurry/org/apache/avro/util/ByteBufferInputStream;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/flurry/org/apache/avro/io/DirectBinaryDecoder$ReuseByteReader;->this$0:Lcom/flurry/org/apache/avro/io/DirectBinaryDecoder;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/flurry/org/apache/avro/io/DirectBinaryDecoder$ByteReader;-><init>(Lcom/flurry/org/apache/avro/io/DirectBinaryDecoder;Lcom/flurry/org/apache/avro/io/DirectBinaryDecoder$1;)V

    .line 59
    iput-object p2, p0, Lcom/flurry/org/apache/avro/io/DirectBinaryDecoder$ReuseByteReader;->bbi:Lcom/flurry/org/apache/avro/util/ByteBufferInputStream;

    .line 60
    return-void
.end method


# virtual methods
.method public read(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;
    .locals 1
    .param p1, "old"    # Ljava/nio/ByteBuffer;
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 64
    if-eqz p1, :cond_0

    .line 65
    invoke-super {p0, p1, p2}, Lcom/flurry/org/apache/avro/io/DirectBinaryDecoder$ByteReader;->read(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 67
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/DirectBinaryDecoder$ReuseByteReader;->bbi:Lcom/flurry/org/apache/avro/util/ByteBufferInputStream;

    invoke-virtual {v0, p2}, Lcom/flurry/org/apache/avro/util/ByteBufferInputStream;->readBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_0
.end method
