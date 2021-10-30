.class Lcom/flurry/org/apache/avro/file/SnappyCodec$Option;
.super Lcom/flurry/org/apache/avro/file/CodecFactory;
.source "SnappyCodec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/org/apache/avro/file/SnappyCodec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Option"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/flurry/org/apache/avro/file/CodecFactory;-><init>()V

    return-void
.end method


# virtual methods
.method protected createInstance()Lcom/flurry/org/apache/avro/file/Codec;
    .locals 2

    .prologue
    .line 33
    new-instance v0, Lcom/flurry/org/apache/avro/file/SnappyCodec;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/flurry/org/apache/avro/file/SnappyCodec;-><init>(Lcom/flurry/org/apache/avro/file/SnappyCodec$1;)V

    return-object v0
.end method
