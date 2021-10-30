.class public Lcom/flurry/org/apache/avro/file/SeekableByteArrayInput;
.super Ljava/io/ByteArrayInputStream;
.source "SeekableByteArrayInput.java"

# interfaces
.implements Lcom/flurry/org/apache/avro/file/SeekableInput;


# direct methods
.method public constructor <init>([B)V
    .locals 0
    .param p1, "data"    # [B

    .prologue
    .line 27
    invoke-direct {p0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 28
    return-void
.end method


# virtual methods
.method public length()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 31
    iget v0, p0, Lcom/flurry/org/apache/avro/file/SeekableByteArrayInput;->count:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public seek(J)V
    .locals 1
    .param p1, "p"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/flurry/org/apache/avro/file/SeekableByteArrayInput;->reset()V

    .line 36
    invoke-virtual {p0, p1, p2}, Lcom/flurry/org/apache/avro/file/SeekableByteArrayInput;->skip(J)J

    .line 37
    return-void
.end method

.method public tell()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 40
    iget v0, p0, Lcom/flurry/org/apache/avro/file/SeekableByteArrayInput;->pos:I

    int-to-long v0, v0

    return-wide v0
.end method
