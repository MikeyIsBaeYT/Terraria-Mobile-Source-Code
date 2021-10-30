.class public interface abstract Lcom/flurry/org/apache/avro/io/DatumWriter;
.super Ljava/lang/Object;
.source "DatumWriter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract setSchema(Lcom/flurry/org/apache/avro/Schema;)V
.end method

.method public abstract write(Ljava/lang/Object;Lcom/flurry/org/apache/avro/io/Encoder;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;",
            "Lcom/flurry/org/apache/avro/io/Encoder;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
