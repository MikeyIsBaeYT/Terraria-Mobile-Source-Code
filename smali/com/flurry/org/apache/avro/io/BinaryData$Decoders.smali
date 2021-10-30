.class Lcom/flurry/org/apache/avro/io/BinaryData$Decoders;
.super Ljava/lang/Object;
.source "BinaryData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/org/apache/avro/io/BinaryData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Decoders"
.end annotation


# instance fields
.field private final b1:Lcom/flurry/org/apache/avro/io/BinaryDecoder$BufferAccessor;

.field private final b2:Lcom/flurry/org/apache/avro/io/BinaryDecoder$BufferAccessor;

.field private final d1:Lcom/flurry/org/apache/avro/io/BinaryDecoder;

.field private final d2:Lcom/flurry/org/apache/avro/io/BinaryDecoder;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Lcom/flurry/org/apache/avro/io/BinaryDecoder;

    new-array v1, v2, [B

    invoke-direct {v0, v1, v2, v2}, Lcom/flurry/org/apache/avro/io/BinaryDecoder;-><init>([BII)V

    iput-object v0, p0, Lcom/flurry/org/apache/avro/io/BinaryData$Decoders;->d1:Lcom/flurry/org/apache/avro/io/BinaryDecoder;

    .line 38
    new-instance v0, Lcom/flurry/org/apache/avro/io/BinaryDecoder;

    new-array v1, v2, [B

    invoke-direct {v0, v1, v2, v2}, Lcom/flurry/org/apache/avro/io/BinaryDecoder;-><init>([BII)V

    iput-object v0, p0, Lcom/flurry/org/apache/avro/io/BinaryData$Decoders;->d2:Lcom/flurry/org/apache/avro/io/BinaryDecoder;

    .line 39
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/BinaryData$Decoders;->d1:Lcom/flurry/org/apache/avro/io/BinaryDecoder;

    invoke-virtual {v0}, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->getBufferAccessor()Lcom/flurry/org/apache/avro/io/BinaryDecoder$BufferAccessor;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/org/apache/avro/io/BinaryData$Decoders;->b1:Lcom/flurry/org/apache/avro/io/BinaryDecoder$BufferAccessor;

    .line 40
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/BinaryData$Decoders;->d2:Lcom/flurry/org/apache/avro/io/BinaryDecoder;

    invoke-virtual {v0}, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->getBufferAccessor()Lcom/flurry/org/apache/avro/io/BinaryDecoder$BufferAccessor;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/org/apache/avro/io/BinaryData$Decoders;->b2:Lcom/flurry/org/apache/avro/io/BinaryDecoder$BufferAccessor;

    .line 41
    return-void
.end method

.method static synthetic access$000(Lcom/flurry/org/apache/avro/io/BinaryData$Decoders;)Lcom/flurry/org/apache/avro/io/BinaryDecoder;
    .locals 1
    .param p0, "x0"    # Lcom/flurry/org/apache/avro/io/BinaryData$Decoders;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/BinaryData$Decoders;->d1:Lcom/flurry/org/apache/avro/io/BinaryDecoder;

    return-object v0
.end method

.method static synthetic access$100(Lcom/flurry/org/apache/avro/io/BinaryData$Decoders;)Lcom/flurry/org/apache/avro/io/BinaryDecoder;
    .locals 1
    .param p0, "x0"    # Lcom/flurry/org/apache/avro/io/BinaryData$Decoders;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/BinaryData$Decoders;->d2:Lcom/flurry/org/apache/avro/io/BinaryDecoder;

    return-object v0
.end method

.method static synthetic access$200(Lcom/flurry/org/apache/avro/io/BinaryData$Decoders;)Lcom/flurry/org/apache/avro/io/BinaryDecoder$BufferAccessor;
    .locals 1
    .param p0, "x0"    # Lcom/flurry/org/apache/avro/io/BinaryData$Decoders;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/BinaryData$Decoders;->b1:Lcom/flurry/org/apache/avro/io/BinaryDecoder$BufferAccessor;

    return-object v0
.end method

.method static synthetic access$300(Lcom/flurry/org/apache/avro/io/BinaryData$Decoders;)Lcom/flurry/org/apache/avro/io/BinaryDecoder$BufferAccessor;
    .locals 1
    .param p0, "x0"    # Lcom/flurry/org/apache/avro/io/BinaryData$Decoders;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/BinaryData$Decoders;->b2:Lcom/flurry/org/apache/avro/io/BinaryDecoder$BufferAccessor;

    return-object v0
.end method


# virtual methods
.method public set([BII[BII)V
    .locals 1
    .param p1, "data1"    # [B
    .param p2, "off1"    # I
    .param p3, "len1"    # I
    .param p4, "data2"    # [B
    .param p5, "off2"    # I
    .param p6, "len2"    # I

    .prologue
    .line 44
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/BinaryData$Decoders;->d1:Lcom/flurry/org/apache/avro/io/BinaryDecoder;

    invoke-virtual {v0, p1, p2, p3}, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->configure([BII)Lcom/flurry/org/apache/avro/io/BinaryDecoder;

    .line 45
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/BinaryData$Decoders;->d2:Lcom/flurry/org/apache/avro/io/BinaryDecoder;

    invoke-virtual {v0, p4, p5, p6}, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->configure([BII)Lcom/flurry/org/apache/avro/io/BinaryDecoder;

    .line 46
    return-void
.end method
