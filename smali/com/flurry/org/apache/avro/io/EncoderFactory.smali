.class public Lcom/flurry/org/apache/avro/io/EncoderFactory;
.super Ljava/lang/Object;
.source "EncoderFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/org/apache/avro/io/EncoderFactory$1;,
        Lcom/flurry/org/apache/avro/io/EncoderFactory$DefaultEncoderFactory;
    }
.end annotation


# static fields
.field private static final DEFAULT_BLOCK_BUFFER_SIZE:I = 0x10000

.field private static final DEFAULT_BUFFER_SIZE:I = 0x800

.field private static final DEFAULT_FACTORY:Lcom/flurry/org/apache/avro/io/EncoderFactory;

.field private static final MAX_BLOCK_BUFFER_SIZE:I = 0x40000000

.field private static final MIN_BLOCK_BUFFER_SIZE:I = 0x40


# instance fields
.field protected binaryBlockSize:I

.field protected binaryBufferSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 49
    new-instance v0, Lcom/flurry/org/apache/avro/io/EncoderFactory$DefaultEncoderFactory;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/flurry/org/apache/avro/io/EncoderFactory$DefaultEncoderFactory;-><init>(Lcom/flurry/org/apache/avro/io/EncoderFactory$1;)V

    sput-object v0, Lcom/flurry/org/apache/avro/io/EncoderFactory;->DEFAULT_FACTORY:Lcom/flurry/org/apache/avro/io/EncoderFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/16 v0, 0x800

    iput v0, p0, Lcom/flurry/org/apache/avro/io/EncoderFactory;->binaryBufferSize:I

    .line 53
    const/high16 v0, 0x10000

    iput v0, p0, Lcom/flurry/org/apache/avro/io/EncoderFactory;->binaryBlockSize:I

    .line 326
    return-void
.end method

.method public static get()Lcom/flurry/org/apache/avro/io/EncoderFactory;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/flurry/org/apache/avro/io/EncoderFactory;->DEFAULT_FACTORY:Lcom/flurry/org/apache/avro/io/EncoderFactory;

    return-object v0
.end method


# virtual methods
.method public binaryEncoder(Ljava/io/OutputStream;Lcom/flurry/org/apache/avro/io/BinaryEncoder;)Lcom/flurry/org/apache/avro/io/BinaryEncoder;
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "reuse"    # Lcom/flurry/org/apache/avro/io/BinaryEncoder;

    .prologue
    .line 171
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/flurry/org/apache/avro/io/BufferedBinaryEncoder;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 172
    :cond_0
    new-instance v0, Lcom/flurry/org/apache/avro/io/BufferedBinaryEncoder;

    iget v1, p0, Lcom/flurry/org/apache/avro/io/EncoderFactory;->binaryBufferSize:I

    invoke-direct {v0, p1, v1}, Lcom/flurry/org/apache/avro/io/BufferedBinaryEncoder;-><init>(Ljava/io/OutputStream;I)V

    .line 174
    .end local p2    # "reuse":Lcom/flurry/org/apache/avro/io/BinaryEncoder;
    :goto_0
    return-object v0

    .restart local p2    # "reuse":Lcom/flurry/org/apache/avro/io/BinaryEncoder;
    :cond_1
    check-cast p2, Lcom/flurry/org/apache/avro/io/BufferedBinaryEncoder;

    .end local p2    # "reuse":Lcom/flurry/org/apache/avro/io/BinaryEncoder;
    iget v0, p0, Lcom/flurry/org/apache/avro/io/EncoderFactory;->binaryBufferSize:I

    invoke-virtual {p2, p1, v0}, Lcom/flurry/org/apache/avro/io/BufferedBinaryEncoder;->configure(Ljava/io/OutputStream;I)Lcom/flurry/org/apache/avro/io/BufferedBinaryEncoder;

    move-result-object v0

    goto :goto_0
.end method

.method public blockingBinaryEncoder(Ljava/io/OutputStream;Lcom/flurry/org/apache/avro/io/BinaryEncoder;)Lcom/flurry/org/apache/avro/io/BinaryEncoder;
    .locals 3
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "reuse"    # Lcom/flurry/org/apache/avro/io/BinaryEncoder;

    .prologue
    const/16 v2, 0x20

    .line 253
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 254
    :cond_0
    new-instance v0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;

    iget v1, p0, Lcom/flurry/org/apache/avro/io/EncoderFactory;->binaryBlockSize:I

    invoke-direct {v0, p1, v1, v2}, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;-><init>(Ljava/io/OutputStream;II)V

    .line 256
    .end local p2    # "reuse":Lcom/flurry/org/apache/avro/io/BinaryEncoder;
    :goto_0
    return-object v0

    .restart local p2    # "reuse":Lcom/flurry/org/apache/avro/io/BinaryEncoder;
    :cond_1
    check-cast p2, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;

    .end local p2    # "reuse":Lcom/flurry/org/apache/avro/io/BinaryEncoder;
    iget v0, p0, Lcom/flurry/org/apache/avro/io/EncoderFactory;->binaryBlockSize:I

    invoke-virtual {p2, p1, v0, v2}, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;->configure(Ljava/io/OutputStream;II)Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;

    move-result-object v0

    goto :goto_0
.end method

.method public configureBlockSize(I)Lcom/flurry/org/apache/avro/io/EncoderFactory;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 118
    const/16 v0, 0x40

    if-ge p1, v0, :cond_0

    .line 119
    const/16 p1, 0x40

    .line 120
    :cond_0
    const/high16 v0, 0x40000000    # 2.0f

    if-le p1, v0, :cond_1

    .line 121
    const/high16 p1, 0x40000000    # 2.0f

    .line 122
    :cond_1
    iput p1, p0, Lcom/flurry/org/apache/avro/io/EncoderFactory;->binaryBufferSize:I

    .line 123
    return-object p0
.end method

.method public configureBufferSize(I)Lcom/flurry/org/apache/avro/io/EncoderFactory;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 82
    const/16 v0, 0x20

    if-ge p1, v0, :cond_0

    .line 83
    const/16 p1, 0x20

    .line 84
    :cond_0
    const/high16 v0, 0x1000000

    if-le p1, v0, :cond_1

    .line 85
    const/high16 p1, 0x1000000

    .line 86
    :cond_1
    iput p1, p0, Lcom/flurry/org/apache/avro/io/EncoderFactory;->binaryBufferSize:I

    .line 87
    return-object p0
.end method

.method public directBinaryEncoder(Ljava/io/OutputStream;Lcom/flurry/org/apache/avro/io/BinaryEncoder;)Lcom/flurry/org/apache/avro/io/BinaryEncoder;
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "reuse"    # Lcom/flurry/org/apache/avro/io/BinaryEncoder;

    .prologue
    .line 212
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/flurry/org/apache/avro/io/DirectBinaryEncoder;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 213
    :cond_0
    new-instance v0, Lcom/flurry/org/apache/avro/io/DirectBinaryEncoder;

    invoke-direct {v0, p1}, Lcom/flurry/org/apache/avro/io/DirectBinaryEncoder;-><init>(Ljava/io/OutputStream;)V

    .line 215
    .end local p2    # "reuse":Lcom/flurry/org/apache/avro/io/BinaryEncoder;
    :goto_0
    return-object v0

    .restart local p2    # "reuse":Lcom/flurry/org/apache/avro/io/BinaryEncoder;
    :cond_1
    check-cast p2, Lcom/flurry/org/apache/avro/io/DirectBinaryEncoder;

    .end local p2    # "reuse":Lcom/flurry/org/apache/avro/io/BinaryEncoder;
    invoke-virtual {p2, p1}, Lcom/flurry/org/apache/avro/io/DirectBinaryEncoder;->configure(Ljava/io/OutputStream;)Lcom/flurry/org/apache/avro/io/DirectBinaryEncoder;

    move-result-object v0

    goto :goto_0
.end method

.method public getBlockSize()I
    .locals 1

    .prologue
    .line 137
    iget v0, p0, Lcom/flurry/org/apache/avro/io/EncoderFactory;->binaryBlockSize:I

    return v0
.end method

.method public getBufferSize()I
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lcom/flurry/org/apache/avro/io/EncoderFactory;->binaryBufferSize:I

    return v0
.end method

.method public jsonEncoder(Lcom/flurry/org/apache/avro/Schema;Lcom/flurry/org/codehaus/jackson/JsonGenerator;)Lcom/flurry/org/apache/avro/io/JsonEncoder;
    .locals 1
    .param p1, "schema"    # Lcom/flurry/org/apache/avro/Schema;
    .param p2, "gen"    # Lcom/flurry/org/codehaus/jackson/JsonGenerator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 299
    new-instance v0, Lcom/flurry/org/apache/avro/io/JsonEncoder;

    invoke-direct {v0, p1, p2}, Lcom/flurry/org/apache/avro/io/JsonEncoder;-><init>(Lcom/flurry/org/apache/avro/Schema;Lcom/flurry/org/codehaus/jackson/JsonGenerator;)V

    return-object v0
.end method

.method public jsonEncoder(Lcom/flurry/org/apache/avro/Schema;Ljava/io/OutputStream;)Lcom/flurry/org/apache/avro/io/JsonEncoder;
    .locals 1
    .param p1, "schema"    # Lcom/flurry/org/apache/avro/Schema;
    .param p2, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 278
    new-instance v0, Lcom/flurry/org/apache/avro/io/JsonEncoder;

    invoke-direct {v0, p1, p2}, Lcom/flurry/org/apache/avro/io/JsonEncoder;-><init>(Lcom/flurry/org/apache/avro/Schema;Ljava/io/OutputStream;)V

    return-object v0
.end method

.method public validatingEncoder(Lcom/flurry/org/apache/avro/Schema;Lcom/flurry/org/apache/avro/io/Encoder;)Lcom/flurry/org/apache/avro/io/ValidatingEncoder;
    .locals 1
    .param p1, "schema"    # Lcom/flurry/org/apache/avro/Schema;
    .param p2, "encoder"    # Lcom/flurry/org/apache/avro/io/Encoder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 322
    new-instance v0, Lcom/flurry/org/apache/avro/io/ValidatingEncoder;

    invoke-direct {v0, p1, p2}, Lcom/flurry/org/apache/avro/io/ValidatingEncoder;-><init>(Lcom/flurry/org/apache/avro/Schema;Lcom/flurry/org/apache/avro/io/Encoder;)V

    return-object v0
.end method
