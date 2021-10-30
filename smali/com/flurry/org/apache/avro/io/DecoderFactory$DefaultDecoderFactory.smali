.class Lcom/flurry/org/apache/avro/io/DecoderFactory$DefaultDecoderFactory;
.super Lcom/flurry/org/apache/avro/io/DecoderFactory;
.source "DecoderFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/org/apache/avro/io/DecoderFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DefaultDecoderFactory"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 310
    invoke-direct {p0}, Lcom/flurry/org/apache/avro/io/DecoderFactory;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/flurry/org/apache/avro/io/DecoderFactory$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/flurry/org/apache/avro/io/DecoderFactory$1;

    .prologue
    .line 310
    invoke-direct {p0}, Lcom/flurry/org/apache/avro/io/DecoderFactory$DefaultDecoderFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public configureDecoderBufferSize(I)Lcom/flurry/org/apache/avro/io/DecoderFactory;
    .locals 2
    .param p1, "bufferSize"    # I

    .prologue
    .line 313
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "This Factory instance is Immutable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
