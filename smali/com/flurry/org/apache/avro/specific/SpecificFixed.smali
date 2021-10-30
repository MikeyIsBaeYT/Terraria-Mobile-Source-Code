.class public abstract Lcom/flurry/org/apache/avro/specific/SpecificFixed;
.super Lcom/flurry/org/apache/avro/generic/GenericData$Fixed;
.source "SpecificFixed.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/flurry/org/apache/avro/generic/GenericData$Fixed;-><init>()V

    .line 25
    invoke-static {}, Lcom/flurry/org/apache/avro/specific/SpecificData;->get()Lcom/flurry/org/apache/avro/specific/SpecificData;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/org/apache/avro/specific/SpecificData;->getSchema(Ljava/lang/reflect/Type;)Lcom/flurry/org/apache/avro/Schema;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flurry/org/apache/avro/specific/SpecificFixed;->setSchema(Lcom/flurry/org/apache/avro/Schema;)V

    .line 26
    return-void
.end method

.method public constructor <init>([B)V
    .locals 0
    .param p1, "bytes"    # [B

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/flurry/org/apache/avro/specific/SpecificFixed;-><init>()V

    .line 30
    invoke-virtual {p0, p1}, Lcom/flurry/org/apache/avro/specific/SpecificFixed;->bytes([B)V

    .line 31
    return-void
.end method
