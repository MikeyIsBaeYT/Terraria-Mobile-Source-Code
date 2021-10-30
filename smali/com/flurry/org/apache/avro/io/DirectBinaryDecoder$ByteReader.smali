.class Lcom/flurry/org/apache/avro/io/DirectBinaryDecoder$ByteReader;
.super Ljava/lang/Object;
.source "DirectBinaryDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/org/apache/avro/io/DirectBinaryDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ByteReader"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flurry/org/apache/avro/io/DirectBinaryDecoder;


# direct methods
.method private constructor <init>(Lcom/flurry/org/apache/avro/io/DirectBinaryDecoder;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/flurry/org/apache/avro/io/DirectBinaryDecoder$ByteReader;->this$0:Lcom/flurry/org/apache/avro/io/DirectBinaryDecoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/flurry/org/apache/avro/io/DirectBinaryDecoder;Lcom/flurry/org/apache/avro/io/DirectBinaryDecoder$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/flurry/org/apache/avro/io/DirectBinaryDecoder;
    .param p2, "x1"    # Lcom/flurry/org/apache/avro/io/DirectBinaryDecoder$1;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/flurry/org/apache/avro/io/DirectBinaryDecoder$ByteReader;-><init>(Lcom/flurry/org/apache/avro/io/DirectBinaryDecoder;)V

    return-void
.end method


# virtual methods
.method public read(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;
    .locals 4
    .param p1, "old"    # Ljava/nio/ByteBuffer;
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 43
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    if-gt p2, v1, :cond_0

    .line 44
    move-object v0, p1

    .line 45
    .local v0, "result":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 49
    :goto_0
    iget-object v1, p0, Lcom/flurry/org/apache/avro/io/DirectBinaryDecoder$ByteReader;->this$0:Lcom/flurry/org/apache/avro/io/DirectBinaryDecoder;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    invoke-virtual {v1, v2, v3, p2}, Lcom/flurry/org/apache/avro/io/DirectBinaryDecoder;->doReadBytes([BII)V

    .line 50
    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 51
    return-object v0

    .line 47
    .end local v0    # "result":Ljava/nio/ByteBuffer;
    :cond_0
    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .restart local v0    # "result":Ljava/nio/ByteBuffer;
    goto :goto_0
.end method
