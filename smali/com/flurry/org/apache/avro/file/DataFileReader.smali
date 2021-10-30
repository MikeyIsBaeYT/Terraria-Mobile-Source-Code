.class public Lcom/flurry/org/apache/avro/file/DataFileReader;
.super Lcom/flurry/org/apache/avro/file/DataFileStream;
.source "DataFileReader.java"

# interfaces
.implements Lcom/flurry/org/apache/avro/file/FileReader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/org/apache/avro/file/DataFileReader$SeekableInputStream;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/flurry/org/apache/avro/file/DataFileStream",
        "<TD;>;",
        "Lcom/flurry/org/apache/avro/file/FileReader",
        "<TD;>;"
    }
.end annotation


# instance fields
.field private blockStart:J

.field private sin:Lcom/flurry/org/apache/avro/file/DataFileReader$SeekableInputStream;


# direct methods
.method public constructor <init>(Lcom/flurry/org/apache/avro/file/SeekableInput;Lcom/flurry/org/apache/avro/io/DatumReader;)V
    .locals 1
    .param p1, "sin"    # Lcom/flurry/org/apache/avro/file/SeekableInput;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/apache/avro/file/SeekableInput;",
            "Lcom/flurry/org/apache/avro/io/DatumReader",
            "<TD;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 95
    .local p0, "this":Lcom/flurry/org/apache/avro/file/DataFileReader;, "Lcom/flurry/org/apache/avro/file/DataFileReader<TD;>;"
    .local p2, "reader":Lcom/flurry/org/apache/avro/io/DatumReader;, "Lcom/flurry/org/apache/avro/io/DatumReader<TD;>;"
    invoke-direct {p0, p2}, Lcom/flurry/org/apache/avro/file/DataFileStream;-><init>(Lcom/flurry/org/apache/avro/io/DatumReader;)V

    .line 96
    new-instance v0, Lcom/flurry/org/apache/avro/file/DataFileReader$SeekableInputStream;

    invoke-direct {v0, p1}, Lcom/flurry/org/apache/avro/file/DataFileReader$SeekableInputStream;-><init>(Lcom/flurry/org/apache/avro/file/SeekableInput;)V

    iput-object v0, p0, Lcom/flurry/org/apache/avro/file/DataFileReader;->sin:Lcom/flurry/org/apache/avro/file/DataFileReader$SeekableInputStream;

    .line 97
    iget-object v0, p0, Lcom/flurry/org/apache/avro/file/DataFileReader;->sin:Lcom/flurry/org/apache/avro/file/DataFileReader$SeekableInputStream;

    invoke-virtual {p0, v0}, Lcom/flurry/org/apache/avro/file/DataFileReader;->initialize(Ljava/io/InputStream;)V

    .line 98
    invoke-virtual {p0}, Lcom/flurry/org/apache/avro/file/DataFileReader;->blockFinished()V

    .line 99
    return-void
.end method

.method protected constructor <init>(Lcom/flurry/org/apache/avro/file/SeekableInput;Lcom/flurry/org/apache/avro/io/DatumReader;Lcom/flurry/org/apache/avro/file/DataFileStream$Header;)V
    .locals 1
    .param p1, "sin"    # Lcom/flurry/org/apache/avro/file/SeekableInput;
    .param p3, "header"    # Lcom/flurry/org/apache/avro/file/DataFileStream$Header;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/apache/avro/file/SeekableInput;",
            "Lcom/flurry/org/apache/avro/io/DatumReader",
            "<TD;>;",
            "Lcom/flurry/org/apache/avro/file/DataFileStream$Header;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 105
    .local p0, "this":Lcom/flurry/org/apache/avro/file/DataFileReader;, "Lcom/flurry/org/apache/avro/file/DataFileReader<TD;>;"
    .local p2, "reader":Lcom/flurry/org/apache/avro/io/DatumReader;, "Lcom/flurry/org/apache/avro/io/DatumReader<TD;>;"
    invoke-direct {p0, p2}, Lcom/flurry/org/apache/avro/file/DataFileStream;-><init>(Lcom/flurry/org/apache/avro/io/DatumReader;)V

    .line 106
    new-instance v0, Lcom/flurry/org/apache/avro/file/DataFileReader$SeekableInputStream;

    invoke-direct {v0, p1}, Lcom/flurry/org/apache/avro/file/DataFileReader$SeekableInputStream;-><init>(Lcom/flurry/org/apache/avro/file/SeekableInput;)V

    iput-object v0, p0, Lcom/flurry/org/apache/avro/file/DataFileReader;->sin:Lcom/flurry/org/apache/avro/file/DataFileReader$SeekableInputStream;

    .line 107
    iget-object v0, p0, Lcom/flurry/org/apache/avro/file/DataFileReader;->sin:Lcom/flurry/org/apache/avro/file/DataFileReader$SeekableInputStream;

    invoke-virtual {p0, v0, p3}, Lcom/flurry/org/apache/avro/file/DataFileReader;->initialize(Ljava/io/InputStream;Lcom/flurry/org/apache/avro/file/DataFileStream$Header;)V

    .line 108
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lcom/flurry/org/apache/avro/io/DatumReader;)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Lcom/flurry/org/apache/avro/io/DatumReader",
            "<TD;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 89
    .local p0, "this":Lcom/flurry/org/apache/avro/file/DataFileReader;, "Lcom/flurry/org/apache/avro/file/DataFileReader<TD;>;"
    .local p2, "reader":Lcom/flurry/org/apache/avro/io/DatumReader;, "Lcom/flurry/org/apache/avro/io/DatumReader<TD;>;"
    new-instance v0, Lcom/flurry/org/apache/avro/file/SeekableFileInput;

    invoke-direct {v0, p1}, Lcom/flurry/org/apache/avro/file/SeekableFileInput;-><init>(Ljava/io/File;)V

    invoke-direct {p0, v0, p2}, Lcom/flurry/org/apache/avro/file/DataFileReader;-><init>(Lcom/flurry/org/apache/avro/file/SeekableInput;Lcom/flurry/org/apache/avro/io/DatumReader;)V

    .line 90
    return-void
.end method

.method public static openReader(Lcom/flurry/org/apache/avro/file/SeekableInput;Lcom/flurry/org/apache/avro/io/DatumReader;Lcom/flurry/org/apache/avro/file/DataFileStream$Header;Z)Lcom/flurry/org/apache/avro/file/DataFileReader;
    .locals 4
    .param p0, "in"    # Lcom/flurry/org/apache/avro/file/SeekableInput;
    .param p2, "header"    # Lcom/flurry/org/apache/avro/file/DataFileStream$Header;
    .param p3, "sync"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/flurry/org/apache/avro/file/SeekableInput;",
            "Lcom/flurry/org/apache/avro/io/DatumReader",
            "<TD;>;",
            "Lcom/flurry/org/apache/avro/file/DataFileStream$Header;",
            "Z)",
            "Lcom/flurry/org/apache/avro/file/DataFileReader",
            "<TD;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 78
    .local p1, "reader":Lcom/flurry/org/apache/avro/io/DatumReader;, "Lcom/flurry/org/apache/avro/io/DatumReader<TD;>;"
    new-instance v0, Lcom/flurry/org/apache/avro/file/DataFileReader;

    invoke-direct {v0, p0, p1, p2}, Lcom/flurry/org/apache/avro/file/DataFileReader;-><init>(Lcom/flurry/org/apache/avro/file/SeekableInput;Lcom/flurry/org/apache/avro/io/DatumReader;Lcom/flurry/org/apache/avro/file/DataFileStream$Header;)V

    .line 80
    .local v0, "dreader":Lcom/flurry/org/apache/avro/file/DataFileReader;, "Lcom/flurry/org/apache/avro/file/DataFileReader<TD;>;"
    if-eqz p3, :cond_0

    .line 81
    invoke-interface {p0}, Lcom/flurry/org/apache/avro/file/SeekableInput;->tell()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/flurry/org/apache/avro/file/DataFileReader;->sync(J)V

    .line 84
    :goto_0
    return-object v0

    .line 83
    :cond_0
    invoke-interface {p0}, Lcom/flurry/org/apache/avro/file/SeekableInput;->tell()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/flurry/org/apache/avro/file/DataFileReader;->seek(J)V

    goto :goto_0
.end method

.method public static openReader(Lcom/flurry/org/apache/avro/file/SeekableInput;Lcom/flurry/org/apache/avro/io/DatumReader;)Lcom/flurry/org/apache/avro/file/FileReader;
    .locals 8
    .param p0, "in"    # Lcom/flurry/org/apache/avro/file/SeekableInput;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/flurry/org/apache/avro/file/SeekableInput;",
            "Lcom/flurry/org/apache/avro/io/DatumReader",
            "<TD;>;)",
            "Lcom/flurry/org/apache/avro/file/FileReader",
            "<TD;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p1, "reader":Lcom/flurry/org/apache/avro/io/DatumReader;, "Lcom/flurry/org/apache/avro/io/DatumReader<TD;>;"
    const-wide/16 v6, 0x0

    .line 49
    invoke-interface {p0}, Lcom/flurry/org/apache/avro/file/SeekableInput;->length()J

    move-result-wide v2

    sget-object v4, Lcom/flurry/org/apache/avro/file/DataFileConstants;->MAGIC:[B

    array-length v4, v4

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 50
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Not an Avro data file"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 53
    :cond_0
    sget-object v2, Lcom/flurry/org/apache/avro/file/DataFileConstants;->MAGIC:[B

    array-length v2, v2

    new-array v1, v2, [B

    .line 54
    .local v1, "magic":[B
    invoke-interface {p0, v6, v7}, Lcom/flurry/org/apache/avro/file/SeekableInput;->seek(J)V

    .line 55
    const/4 v0, 0x0

    .local v0, "c":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    array-length v2, v1

    sub-int/2addr v2, v0

    invoke-interface {p0, v1, v0, v2}, Lcom/flurry/org/apache/avro/file/SeekableInput;->read([BII)I

    move-result v0

    goto :goto_0

    .line 56
    :cond_1
    invoke-interface {p0, v6, v7}, Lcom/flurry/org/apache/avro/file/SeekableInput;->seek(J)V

    .line 58
    sget-object v2, Lcom/flurry/org/apache/avro/file/DataFileConstants;->MAGIC:[B

    invoke-static {v2, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 59
    new-instance v2, Lcom/flurry/org/apache/avro/file/DataFileReader;

    invoke-direct {v2, p0, p1}, Lcom/flurry/org/apache/avro/file/DataFileReader;-><init>(Lcom/flurry/org/apache/avro/file/SeekableInput;Lcom/flurry/org/apache/avro/io/DatumReader;)V

    .line 61
    :goto_1
    return-object v2

    .line 60
    :cond_2
    sget-object v2, Lcom/flurry/org/apache/avro/file/DataFileReader12;->MAGIC:[B

    invoke-static {v2, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 61
    new-instance v2, Lcom/flurry/org/apache/avro/file/DataFileReader12;

    invoke-direct {v2, p0, p1}, Lcom/flurry/org/apache/avro/file/DataFileReader12;-><init>(Lcom/flurry/org/apache/avro/file/SeekableInput;Lcom/flurry/org/apache/avro/io/DatumReader;)V

    goto :goto_1

    .line 63
    :cond_3
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Not an Avro data file"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static openReader(Ljava/io/File;Lcom/flurry/org/apache/avro/io/DatumReader;)Lcom/flurry/org/apache/avro/file/FileReader;
    .locals 1
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/File;",
            "Lcom/flurry/org/apache/avro/io/DatumReader",
            "<TD;>;)",
            "Lcom/flurry/org/apache/avro/file/FileReader",
            "<TD;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 42
    .local p1, "reader":Lcom/flurry/org/apache/avro/io/DatumReader;, "Lcom/flurry/org/apache/avro/io/DatumReader<TD;>;"
    new-instance v0, Lcom/flurry/org/apache/avro/file/SeekableFileInput;

    invoke-direct {v0, p0}, Lcom/flurry/org/apache/avro/file/SeekableFileInput;-><init>(Ljava/io/File;)V

    invoke-static {v0, p1}, Lcom/flurry/org/apache/avro/file/DataFileReader;->openReader(Lcom/flurry/org/apache/avro/file/SeekableInput;Lcom/flurry/org/apache/avro/io/DatumReader;)Lcom/flurry/org/apache/avro/file/FileReader;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected blockFinished()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 161
    .local p0, "this":Lcom/flurry/org/apache/avro/file/DataFileReader;, "Lcom/flurry/org/apache/avro/file/DataFileReader<TD;>;"
    iget-object v0, p0, Lcom/flurry/org/apache/avro/file/DataFileReader;->sin:Lcom/flurry/org/apache/avro/file/DataFileReader$SeekableInputStream;

    invoke-virtual {v0}, Lcom/flurry/org/apache/avro/file/DataFileReader$SeekableInputStream;->tell()J

    move-result-wide v0

    iget-object v2, p0, Lcom/flurry/org/apache/avro/file/DataFileReader;->vin:Lcom/flurry/org/apache/avro/io/BinaryDecoder;

    invoke-virtual {v2}, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->inputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v2

    int-to-long v2, v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/flurry/org/apache/avro/file/DataFileReader;->blockStart:J

    .line 162
    return-void
.end method

.method public pastSync(J)Z
    .locals 5
    .param p1, "position"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 172
    .local p0, "this":Lcom/flurry/org/apache/avro/file/DataFileReader;, "Lcom/flurry/org/apache/avro/file/DataFileReader<TD;>;"
    iget-wide v0, p0, Lcom/flurry/org/apache/avro/file/DataFileReader;->blockStart:J

    const-wide/16 v2, 0x10

    add-long/2addr v2, p1

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    iget-wide v0, p0, Lcom/flurry/org/apache/avro/file/DataFileReader;->blockStart:J

    iget-object v2, p0, Lcom/flurry/org/apache/avro/file/DataFileReader;->sin:Lcom/flurry/org/apache/avro/file/DataFileReader$SeekableInputStream;

    invoke-virtual {v2}, Lcom/flurry/org/apache/avro/file/DataFileReader$SeekableInputStream;->length()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public previousSync()J
    .locals 2

    .prologue
    .line 166
    .local p0, "this":Lcom/flurry/org/apache/avro/file/DataFileReader;, "Lcom/flurry/org/apache/avro/file/DataFileReader<TD;>;"
    iget-wide v0, p0, Lcom/flurry/org/apache/avro/file/DataFileReader;->blockStart:J

    return-wide v0
.end method

.method public seek(J)V
    .locals 3
    .param p1, "position"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 114
    .local p0, "this":Lcom/flurry/org/apache/avro/file/DataFileReader;, "Lcom/flurry/org/apache/avro/file/DataFileReader<TD;>;"
    iget-object v0, p0, Lcom/flurry/org/apache/avro/file/DataFileReader;->sin:Lcom/flurry/org/apache/avro/file/DataFileReader$SeekableInputStream;

    invoke-virtual {v0, p1, p2}, Lcom/flurry/org/apache/avro/file/DataFileReader$SeekableInputStream;->seek(J)V

    .line 115
    invoke-static {}, Lcom/flurry/org/apache/avro/io/DecoderFactory;->get()Lcom/flurry/org/apache/avro/io/DecoderFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/org/apache/avro/file/DataFileReader;->sin:Lcom/flurry/org/apache/avro/file/DataFileReader$SeekableInputStream;

    iget-object v2, p0, Lcom/flurry/org/apache/avro/file/DataFileReader;->vin:Lcom/flurry/org/apache/avro/io/BinaryDecoder;

    invoke-virtual {v0, v1, v2}, Lcom/flurry/org/apache/avro/io/DecoderFactory;->binaryDecoder(Ljava/io/InputStream;Lcom/flurry/org/apache/avro/io/BinaryDecoder;)Lcom/flurry/org/apache/avro/io/BinaryDecoder;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/org/apache/avro/file/DataFileReader;->vin:Lcom/flurry/org/apache/avro/io/BinaryDecoder;

    .line 116
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/org/apache/avro/file/DataFileReader;->datumIn:Lcom/flurry/org/apache/avro/io/BinaryDecoder;

    .line 117
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/flurry/org/apache/avro/file/DataFileReader;->blockRemaining:J

    .line 118
    iput-wide p1, p0, Lcom/flurry/org/apache/avro/file/DataFileReader;->blockStart:J

    .line 119
    return-void
.end method

.method public sync(J)V
    .locals 11
    .param p1, "position"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/flurry/org/apache/avro/file/DataFileReader;, "Lcom/flurry/org/apache/avro/file/DataFileReader<TD;>;"
    const/16 v8, 0x10

    .line 127
    invoke-virtual {p0, p1, p2}, Lcom/flurry/org/apache/avro/file/DataFileReader;->seek(J)V

    .line 129
    const-wide/16 v6, 0x0

    cmp-long v5, p1, v6

    if-nez v5, :cond_0

    const-string v5, "avro.sync"

    invoke-virtual {p0, v5}, Lcom/flurry/org/apache/avro/file/DataFileReader;->getMeta(Ljava/lang/String;)[B

    move-result-object v5

    if-eqz v5, :cond_0

    .line 130
    iget-object v5, p0, Lcom/flurry/org/apache/avro/file/DataFileReader;->sin:Lcom/flurry/org/apache/avro/file/DataFileReader$SeekableInputStream;

    invoke-virtual {p0, v5}, Lcom/flurry/org/apache/avro/file/DataFileReader;->initialize(Ljava/io/InputStream;)V

    .line 156
    :goto_0
    return-void

    .line 134
    :cond_0
    const/4 v1, 0x0

    .line 135
    .local v1, "i":I
    :try_start_0
    iget-object v5, p0, Lcom/flurry/org/apache/avro/file/DataFileReader;->vin:Lcom/flurry/org/apache/avro/io/BinaryDecoder;

    invoke-virtual {v5}, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->inputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 136
    .local v3, "in":Ljava/io/InputStream;
    iget-object v5, p0, Lcom/flurry/org/apache/avro/file/DataFileReader;->vin:Lcom/flurry/org/apache/avro/io/BinaryDecoder;

    iget-object v6, p0, Lcom/flurry/org/apache/avro/file/DataFileReader;->syncBuffer:[B

    invoke-virtual {v5, v6}, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->readFixed([B)V

    .line 138
    :goto_1
    const/4 v4, 0x0

    .line 139
    .local v4, "j":I
    :goto_2
    if-ge v4, v8, :cond_1

    .line 140
    invoke-virtual {p0}, Lcom/flurry/org/apache/avro/file/DataFileReader;->getHeader()Lcom/flurry/org/apache/avro/file/DataFileStream$Header;

    move-result-object v5

    iget-object v5, v5, Lcom/flurry/org/apache/avro/file/DataFileStream$Header;->sync:[B

    aget-byte v5, v5, v4

    iget-object v6, p0, Lcom/flurry/org/apache/avro/file/DataFileReader;->syncBuffer:[B

    add-int v7, v1, v4

    rem-int/lit8 v7, v7, 0x10

    aget-byte v6, v6, v7

    if-eq v5, v6, :cond_3

    .line 143
    :cond_1
    if-ne v4, v8, :cond_4

    .line 144
    int-to-long v6, v1

    add-long/2addr v6, p1

    const-wide/16 v8, 0x10

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/flurry/org/apache/avro/file/DataFileReader;->blockStart:J
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 150
    .end local v3    # "in":Ljava/io/InputStream;
    .end local v4    # "j":I
    :catch_0
    move-exception v5

    .line 154
    .end local v1    # "i":I
    :cond_2
    :goto_3
    iget-object v5, p0, Lcom/flurry/org/apache/avro/file/DataFileReader;->sin:Lcom/flurry/org/apache/avro/file/DataFileReader$SeekableInputStream;

    invoke-virtual {v5}, Lcom/flurry/org/apache/avro/file/DataFileReader$SeekableInputStream;->tell()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/flurry/org/apache/avro/file/DataFileReader;->blockStart:J

    goto :goto_0

    .line 139
    .restart local v1    # "i":I
    .restart local v3    # "in":Ljava/io/InputStream;
    .restart local v4    # "j":I
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 147
    :cond_4
    :try_start_1
    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 148
    .local v0, "b":I
    iget-object v5, p0, Lcom/flurry/org/apache/avro/file/DataFileReader;->syncBuffer:[B
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    :try_start_2
    rem-int/lit8 v6, v1, 0x10

    int-to-byte v7, v0

    aput-byte v7, v5, v6
    :try_end_2
    .catch Ljava/io/EOFException; {:try_start_2 .. :try_end_2} :catch_1

    .line 149
    const/4 v5, -0x1

    if-eq v0, v5, :cond_2

    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_1

    .line 150
    .end local v1    # "i":I
    .restart local v2    # "i":I
    :catch_1
    move-exception v5

    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_3
.end method

.method public tell()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 175
    .local p0, "this":Lcom/flurry/org/apache/avro/file/DataFileReader;, "Lcom/flurry/org/apache/avro/file/DataFileReader<TD;>;"
    iget-object v0, p0, Lcom/flurry/org/apache/avro/file/DataFileReader;->sin:Lcom/flurry/org/apache/avro/file/DataFileReader$SeekableInputStream;

    invoke-virtual {v0}, Lcom/flurry/org/apache/avro/file/DataFileReader$SeekableInputStream;->tell()J

    move-result-wide v0

    return-wide v0
.end method
