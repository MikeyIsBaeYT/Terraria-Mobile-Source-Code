.class public interface abstract Lcom/flurry/org/apache/avro/io/DatumReader;
.super Ljava/lang/Object;
.source "DatumReader.java"


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
.method public abstract read(Ljava/lang/Object;Lcom/flurry/org/apache/avro/io/Decoder;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;",
            "Lcom/flurry/org/apache/avro/io/Decoder;",
            ")TD;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract setSchema(Lcom/flurry/org/apache/avro/Schema;)V
.end method
