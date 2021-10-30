.class Lcom/flurry/org/apache/avro/io/EncoderFactory$DefaultEncoderFactory;
.super Lcom/flurry/org/apache/avro/io/EncoderFactory;
.source "EncoderFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/org/apache/avro/io/EncoderFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DefaultEncoderFactory"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 326
    invoke-direct {p0}, Lcom/flurry/org/apache/avro/io/EncoderFactory;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/flurry/org/apache/avro/io/EncoderFactory$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/flurry/org/apache/avro/io/EncoderFactory$1;

    .prologue
    .line 326
    invoke-direct {p0}, Lcom/flurry/org/apache/avro/io/EncoderFactory$DefaultEncoderFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public configureBlockSize(I)Lcom/flurry/org/apache/avro/io/EncoderFactory;
    .locals 2
    .param p1, "size"    # I

    .prologue
    .line 329
    new-instance v0, Lcom/flurry/org/apache/avro/AvroRuntimeException;

    const-string v1, "Default EncoderFactory cannot be configured"

    invoke-direct {v0, v1}, Lcom/flurry/org/apache/avro/AvroRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public configureBufferSize(I)Lcom/flurry/org/apache/avro/io/EncoderFactory;
    .locals 2
    .param p1, "size"    # I

    .prologue
    .line 333
    new-instance v0, Lcom/flurry/org/apache/avro/AvroRuntimeException;

    const-string v1, "Default EncoderFactory cannot be configured"

    invoke-direct {v0, v1}, Lcom/flurry/org/apache/avro/AvroRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
