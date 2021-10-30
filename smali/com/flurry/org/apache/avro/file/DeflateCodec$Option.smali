.class Lcom/flurry/org/apache/avro/file/DeflateCodec$Option;
.super Lcom/flurry/org/apache/avro/file/CodecFactory;
.source "DeflateCodec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/org/apache/avro/file/DeflateCodec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Option"
.end annotation


# instance fields
.field private compressionLevel:I


# direct methods
.method constructor <init>(I)V
    .locals 0
    .param p1, "compressionLevel"    # I

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/flurry/org/apache/avro/file/CodecFactory;-><init>()V

    .line 45
    iput p1, p0, Lcom/flurry/org/apache/avro/file/DeflateCodec$Option;->compressionLevel:I

    .line 46
    return-void
.end method


# virtual methods
.method protected createInstance()Lcom/flurry/org/apache/avro/file/Codec;
    .locals 2

    .prologue
    .line 50
    new-instance v0, Lcom/flurry/org/apache/avro/file/DeflateCodec;

    iget v1, p0, Lcom/flurry/org/apache/avro/file/DeflateCodec$Option;->compressionLevel:I

    invoke-direct {v0, v1}, Lcom/flurry/org/apache/avro/file/DeflateCodec;-><init>(I)V

    return-object v0
.end method
