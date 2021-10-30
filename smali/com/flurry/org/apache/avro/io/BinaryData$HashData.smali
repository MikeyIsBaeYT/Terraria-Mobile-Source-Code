.class Lcom/flurry/org/apache/avro/io/BinaryData$HashData;
.super Ljava/lang/Object;
.source "BinaryData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/org/apache/avro/io/BinaryData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HashData"
.end annotation


# instance fields
.field private final bytes:Lcom/flurry/org/apache/avro/io/BinaryDecoder$BufferAccessor;

.field private final decoder:Lcom/flurry/org/apache/avro/io/BinaryDecoder;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 200
    new-instance v0, Lcom/flurry/org/apache/avro/io/BinaryDecoder;

    new-array v1, v2, [B

    invoke-direct {v0, v1, v2, v2}, Lcom/flurry/org/apache/avro/io/BinaryDecoder;-><init>([BII)V

    iput-object v0, p0, Lcom/flurry/org/apache/avro/io/BinaryData$HashData;->decoder:Lcom/flurry/org/apache/avro/io/BinaryDecoder;

    .line 201
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/BinaryData$HashData;->decoder:Lcom/flurry/org/apache/avro/io/BinaryDecoder;

    invoke-virtual {v0}, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->getBufferAccessor()Lcom/flurry/org/apache/avro/io/BinaryDecoder$BufferAccessor;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/org/apache/avro/io/BinaryData$HashData;->bytes:Lcom/flurry/org/apache/avro/io/BinaryDecoder$BufferAccessor;

    .line 202
    return-void
.end method

.method static synthetic access$400(Lcom/flurry/org/apache/avro/io/BinaryData$HashData;)Lcom/flurry/org/apache/avro/io/BinaryDecoder;
    .locals 1
    .param p0, "x0"    # Lcom/flurry/org/apache/avro/io/BinaryData$HashData;

    .prologue
    .line 196
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/BinaryData$HashData;->decoder:Lcom/flurry/org/apache/avro/io/BinaryDecoder;

    return-object v0
.end method

.method static synthetic access$500(Lcom/flurry/org/apache/avro/io/BinaryData$HashData;)Lcom/flurry/org/apache/avro/io/BinaryDecoder$BufferAccessor;
    .locals 1
    .param p0, "x0"    # Lcom/flurry/org/apache/avro/io/BinaryData$HashData;

    .prologue
    .line 196
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/BinaryData$HashData;->bytes:Lcom/flurry/org/apache/avro/io/BinaryDecoder$BufferAccessor;

    return-object v0
.end method


# virtual methods
.method public set([BII)V
    .locals 1
    .param p1, "bytes"    # [B
    .param p2, "start"    # I
    .param p3, "len"    # I

    .prologue
    .line 204
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/BinaryData$HashData;->decoder:Lcom/flurry/org/apache/avro/io/BinaryDecoder;

    invoke-virtual {v0, p1, p2, p3}, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->configure([BII)Lcom/flurry/org/apache/avro/io/BinaryDecoder;

    .line 205
    return-void
.end method
