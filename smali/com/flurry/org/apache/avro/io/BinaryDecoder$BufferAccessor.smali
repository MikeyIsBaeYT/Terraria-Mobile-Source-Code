.class Lcom/flurry/org/apache/avro/io/BinaryDecoder$BufferAccessor;
.super Ljava/lang/Object;
.source "BinaryDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/org/apache/avro/io/BinaryDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BufferAccessor"
.end annotation


# instance fields
.field private buf:[B

.field private final decoder:Lcom/flurry/org/apache/avro/io/BinaryDecoder;

.field detached:Z

.field private limit:I

.field private pos:I


# direct methods
.method private constructor <init>(Lcom/flurry/org/apache/avro/io/BinaryDecoder;)V
    .locals 1
    .param p1, "decoder"    # Lcom/flurry/org/apache/avro/io/BinaryDecoder;

    .prologue
    .line 494
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 492
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder$BufferAccessor;->detached:Z

    .line 495
    iput-object p1, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder$BufferAccessor;->decoder:Lcom/flurry/org/apache/avro/io/BinaryDecoder;

    .line 496
    return-void
.end method

.method synthetic constructor <init>(Lcom/flurry/org/apache/avro/io/BinaryDecoder;Lcom/flurry/org/apache/avro/io/BinaryDecoder$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/flurry/org/apache/avro/io/BinaryDecoder;
    .param p2, "x1"    # Lcom/flurry/org/apache/avro/io/BinaryDecoder$1;

    .prologue
    .line 487
    invoke-direct {p0, p1}, Lcom/flurry/org/apache/avro/io/BinaryDecoder$BufferAccessor;-><init>(Lcom/flurry/org/apache/avro/io/BinaryDecoder;)V

    return-void
.end method


# virtual methods
.method detach()V
    .locals 1

    .prologue
    .line 499
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder$BufferAccessor;->decoder:Lcom/flurry/org/apache/avro/io/BinaryDecoder;

    invoke-static {v0}, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->access$300(Lcom/flurry/org/apache/avro/io/BinaryDecoder;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder$BufferAccessor;->buf:[B

    .line 500
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder$BufferAccessor;->decoder:Lcom/flurry/org/apache/avro/io/BinaryDecoder;

    invoke-static {v0}, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->access$400(Lcom/flurry/org/apache/avro/io/BinaryDecoder;)I

    move-result v0

    iput v0, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder$BufferAccessor;->pos:I

    .line 501
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder$BufferAccessor;->decoder:Lcom/flurry/org/apache/avro/io/BinaryDecoder;

    invoke-static {v0}, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->access$500(Lcom/flurry/org/apache/avro/io/BinaryDecoder;)I

    move-result v0

    iput v0, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder$BufferAccessor;->limit:I

    .line 502
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder$BufferAccessor;->detached:Z

    .line 503
    return-void
.end method

.method getBuf()[B
    .locals 1

    .prologue
    .line 520
    iget-boolean v0, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder$BufferAccessor;->detached:Z

    if-eqz v0, :cond_0

    .line 521
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder$BufferAccessor;->buf:[B

    .line 523
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder$BufferAccessor;->decoder:Lcom/flurry/org/apache/avro/io/BinaryDecoder;

    invoke-static {v0}, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->access$300(Lcom/flurry/org/apache/avro/io/BinaryDecoder;)[B

    move-result-object v0

    goto :goto_0
.end method

.method getLim()I
    .locals 1

    .prologue
    .line 513
    iget-boolean v0, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder$BufferAccessor;->detached:Z

    if-eqz v0, :cond_0

    .line 514
    iget v0, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder$BufferAccessor;->limit:I

    .line 516
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder$BufferAccessor;->decoder:Lcom/flurry/org/apache/avro/io/BinaryDecoder;

    invoke-static {v0}, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->access$500(Lcom/flurry/org/apache/avro/io/BinaryDecoder;)I

    move-result v0

    goto :goto_0
.end method

.method getPos()I
    .locals 1

    .prologue
    .line 506
    iget-boolean v0, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder$BufferAccessor;->detached:Z

    if-eqz v0, :cond_0

    .line 507
    iget v0, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder$BufferAccessor;->pos:I

    .line 509
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder$BufferAccessor;->decoder:Lcom/flurry/org/apache/avro/io/BinaryDecoder;

    invoke-static {v0}, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->access$400(Lcom/flurry/org/apache/avro/io/BinaryDecoder;)I

    move-result v0

    goto :goto_0
.end method

.method setBuf([BII)V
    .locals 2
    .param p1, "buf"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 541
    iget-boolean v0, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder$BufferAccessor;->detached:Z

    if-eqz v0, :cond_0

    .line 542
    iput-object p1, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder$BufferAccessor;->buf:[B

    .line 543
    add-int v0, p2, p3

    iput v0, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder$BufferAccessor;->limit:I

    .line 544
    iput p2, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder$BufferAccessor;->pos:I

    .line 551
    :goto_0
    return-void

    .line 546
    :cond_0
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder$BufferAccessor;->decoder:Lcom/flurry/org/apache/avro/io/BinaryDecoder;

    invoke-static {v0, p1}, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->access$302(Lcom/flurry/org/apache/avro/io/BinaryDecoder;[B)[B

    .line 547
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder$BufferAccessor;->decoder:Lcom/flurry/org/apache/avro/io/BinaryDecoder;

    add-int v1, p2, p3

    invoke-static {v0, v1}, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->access$502(Lcom/flurry/org/apache/avro/io/BinaryDecoder;I)I

    .line 548
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder$BufferAccessor;->decoder:Lcom/flurry/org/apache/avro/io/BinaryDecoder;

    invoke-static {v0, p2}, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->access$402(Lcom/flurry/org/apache/avro/io/BinaryDecoder;I)I

    .line 549
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder$BufferAccessor;->decoder:Lcom/flurry/org/apache/avro/io/BinaryDecoder;

    invoke-static {v0, p2}, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->access$602(Lcom/flurry/org/apache/avro/io/BinaryDecoder;I)I

    goto :goto_0
.end method

.method setLimit(I)V
    .locals 1
    .param p1, "limit"    # I

    .prologue
    .line 534
    iget-boolean v0, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder$BufferAccessor;->detached:Z

    if-eqz v0, :cond_0

    .line 535
    iput p1, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder$BufferAccessor;->limit:I

    .line 538
    :goto_0
    return-void

    .line 537
    :cond_0
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder$BufferAccessor;->decoder:Lcom/flurry/org/apache/avro/io/BinaryDecoder;

    invoke-static {v0, p1}, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->access$502(Lcom/flurry/org/apache/avro/io/BinaryDecoder;I)I

    goto :goto_0
.end method

.method setPos(I)V
    .locals 1
    .param p1, "pos"    # I

    .prologue
    .line 527
    iget-boolean v0, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder$BufferAccessor;->detached:Z

    if-eqz v0, :cond_0

    .line 528
    iput p1, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder$BufferAccessor;->pos:I

    .line 531
    :goto_0
    return-void

    .line 530
    :cond_0
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/BinaryDecoder$BufferAccessor;->decoder:Lcom/flurry/org/apache/avro/io/BinaryDecoder;

    invoke-static {v0, p1}, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->access$402(Lcom/flurry/org/apache/avro/io/BinaryDecoder;I)I

    goto :goto_0
.end method
