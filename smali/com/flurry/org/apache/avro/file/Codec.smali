.class abstract Lcom/flurry/org/apache/avro/file/Codec;
.super Ljava/lang/Object;
.source "Codec.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract compress(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method abstract decompress(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract equals(Ljava/lang/Object;)Z
.end method

.method abstract getName()Ljava/lang/String;
.end method

.method public abstract hashCode()I
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/flurry/org/apache/avro/file/Codec;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
