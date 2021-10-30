.class Lcom/flurry/org/apache/avro/file/DataFileReader$SeekableInputStream;
.super Ljava/io/InputStream;
.source "DataFileReader.java"

# interfaces
.implements Lcom/flurry/org/apache/avro/file/SeekableInput;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/org/apache/avro/file/DataFileReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SeekableInputStream"
.end annotation


# instance fields
.field private in:Lcom/flurry/org/apache/avro/file/SeekableInput;

.field private final oneByte:[B


# direct methods
.method constructor <init>(Lcom/flurry/org/apache/avro/file/SeekableInput;)V
    .locals 1
    .param p1, "in"    # Lcom/flurry/org/apache/avro/file/SeekableInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 182
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 179
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/flurry/org/apache/avro/file/DataFileReader$SeekableInputStream;->oneByte:[B

    .line 183
    iput-object p1, p0, Lcom/flurry/org/apache/avro/file/DataFileReader$SeekableInputStream;->in:Lcom/flurry/org/apache/avro/file/SeekableInput;

    .line 184
    return-void
.end method


# virtual methods
.method public available()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 245
    iget-object v2, p0, Lcom/flurry/org/apache/avro/file/DataFileReader$SeekableInputStream;->in:Lcom/flurry/org/apache/avro/file/SeekableInput;

    invoke-interface {v2}, Lcom/flurry/org/apache/avro/file/SeekableInput;->length()J

    move-result-wide v2

    iget-object v4, p0, Lcom/flurry/org/apache/avro/file/DataFileReader$SeekableInputStream;->in:Lcom/flurry/org/apache/avro/file/SeekableInput;

    invoke-interface {v4}, Lcom/flurry/org/apache/avro/file/SeekableInput;->tell()J

    move-result-wide v4

    sub-long v0, v2, v4

    .line 246
    .local v0, "remaining":J
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    const v2, 0x7fffffff

    :goto_0
    return v2

    :cond_0
    long-to-int v2, v0

    goto :goto_0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 239
    iget-object v0, p0, Lcom/flurry/org/apache/avro/file/DataFileReader$SeekableInputStream;->in:Lcom/flurry/org/apache/avro/file/SeekableInput;

    invoke-interface {v0}, Lcom/flurry/org/apache/avro/file/SeekableInput;->close()V

    .line 240
    invoke-super {p0}, Ljava/io/InputStream;->close()V

    .line 241
    return-void
.end method

.method public length()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 200
    iget-object v0, p0, Lcom/flurry/org/apache/avro/file/DataFileReader$SeekableInputStream;->in:Lcom/flurry/org/apache/avro/file/SeekableInput;

    invoke-interface {v0}, Lcom/flurry/org/apache/avro/file/SeekableInput;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 215
    iget-object v1, p0, Lcom/flurry/org/apache/avro/file/DataFileReader$SeekableInputStream;->oneByte:[B

    invoke-virtual {p0, v1, v2, v3}, Lcom/flurry/org/apache/avro/file/DataFileReader$SeekableInputStream;->read([BII)I

    move-result v0

    .line 216
    .local v0, "n":I
    if-ne v0, v3, :cond_0

    .line 217
    iget-object v1, p0, Lcom/flurry/org/apache/avro/file/DataFileReader$SeekableInputStream;->oneByte:[B

    aget-byte v1, v1, v2

    and-int/lit16 v0, v1, 0xff

    .line 219
    .end local v0    # "n":I
    :cond_0
    return v0
.end method

.method public read([B)I
    .locals 3
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 205
    iget-object v0, p0, Lcom/flurry/org/apache/avro/file/DataFileReader$SeekableInputStream;->in:Lcom/flurry/org/apache/avro/file/SeekableInput;

    const/4 v1, 0x0

    array-length v2, p1

    invoke-interface {v0, p1, v1, v2}, Lcom/flurry/org/apache/avro/file/SeekableInput;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 1
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 210
    iget-object v0, p0, Lcom/flurry/org/apache/avro/file/DataFileReader$SeekableInputStream;->in:Lcom/flurry/org/apache/avro/file/SeekableInput;

    invoke-interface {v0, p1, p2, p3}, Lcom/flurry/org/apache/avro/file/SeekableInput;->read([BII)I

    move-result v0

    return v0
.end method

.method public seek(J)V
    .locals 3
    .param p1, "p"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 188
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 189
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal seek: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/flurry/org/apache/avro/file/DataFileReader$SeekableInputStream;->in:Lcom/flurry/org/apache/avro/file/SeekableInput;

    invoke-interface {v0, p1, p2}, Lcom/flurry/org/apache/avro/file/SeekableInput;->seek(J)V

    .line 191
    return-void
.end method

.method public skip(J)J
    .locals 9
    .param p1, "skip"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 225
    iget-object v6, p0, Lcom/flurry/org/apache/avro/file/DataFileReader$SeekableInputStream;->in:Lcom/flurry/org/apache/avro/file/SeekableInput;

    invoke-interface {v6}, Lcom/flurry/org/apache/avro/file/SeekableInput;->tell()J

    move-result-wide v2

    .line 226
    .local v2, "position":J
    iget-object v6, p0, Lcom/flurry/org/apache/avro/file/DataFileReader$SeekableInputStream;->in:Lcom/flurry/org/apache/avro/file/SeekableInput;

    invoke-interface {v6}, Lcom/flurry/org/apache/avro/file/SeekableInput;->length()J

    move-result-wide v0

    .line 227
    .local v0, "length":J
    sub-long v4, v0, v2

    .line 228
    .local v4, "remaining":J
    cmp-long v6, v4, p1

    if-lez v6, :cond_0

    .line 229
    iget-object v6, p0, Lcom/flurry/org/apache/avro/file/DataFileReader$SeekableInputStream;->in:Lcom/flurry/org/apache/avro/file/SeekableInput;

    invoke-interface {v6, p1, p2}, Lcom/flurry/org/apache/avro/file/SeekableInput;->seek(J)V

    .line 230
    iget-object v6, p0, Lcom/flurry/org/apache/avro/file/DataFileReader$SeekableInputStream;->in:Lcom/flurry/org/apache/avro/file/SeekableInput;

    invoke-interface {v6}, Lcom/flurry/org/apache/avro/file/SeekableInput;->tell()J

    move-result-wide v6

    sub-long/2addr v6, v2

    .line 233
    :goto_0
    return-wide v6

    .line 232
    :cond_0
    iget-object v6, p0, Lcom/flurry/org/apache/avro/file/DataFileReader$SeekableInputStream;->in:Lcom/flurry/org/apache/avro/file/SeekableInput;

    invoke-interface {v6, v4, v5}, Lcom/flurry/org/apache/avro/file/SeekableInput;->seek(J)V

    .line 233
    iget-object v6, p0, Lcom/flurry/org/apache/avro/file/DataFileReader$SeekableInputStream;->in:Lcom/flurry/org/apache/avro/file/SeekableInput;

    invoke-interface {v6}, Lcom/flurry/org/apache/avro/file/SeekableInput;->tell()J

    move-result-wide v6

    sub-long/2addr v6, v2

    goto :goto_0
.end method

.method public tell()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 195
    iget-object v0, p0, Lcom/flurry/org/apache/avro/file/DataFileReader$SeekableInputStream;->in:Lcom/flurry/org/apache/avro/file/SeekableInput;

    invoke-interface {v0}, Lcom/flurry/org/apache/avro/file/SeekableInput;->tell()J

    move-result-wide v0

    return-wide v0
.end method
