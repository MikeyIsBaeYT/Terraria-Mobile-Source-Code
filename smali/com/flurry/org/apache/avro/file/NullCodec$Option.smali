.class Lcom/flurry/org/apache/avro/file/NullCodec$Option;
.super Lcom/flurry/org/apache/avro/file/CodecFactory;
.source "NullCodec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/org/apache/avro/file/NullCodec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Option"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/flurry/org/apache/avro/file/CodecFactory;-><init>()V

    return-void
.end method


# virtual methods
.method protected createInstance()Lcom/flurry/org/apache/avro/file/Codec;
    .locals 1

    .prologue
    .line 31
    invoke-static {}, Lcom/flurry/org/apache/avro/file/NullCodec;->access$000()Lcom/flurry/org/apache/avro/file/NullCodec;

    move-result-object v0

    return-object v0
.end method
