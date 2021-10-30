.class public Lcom/flurry/org/apache/avro/file/DataFileReader12;
.super Ljava/lang/Object;
.source "DataFileReader12.java"

# interfaces
.implements Lcom/flurry/org/apache/avro/file/FileReader;
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/flurry/org/apache/avro/file/FileReader",
        "<TD;>;",
        "Ljava/io/Closeable;"
    }
.end annotation


# static fields
.field private static final CODEC:Ljava/lang/String; = "codec"

.field private static final COUNT:Ljava/lang/String; = "count"

.field private static final FOOTER_BLOCK:J = -0x1L

.field static final MAGIC:[B

.field private static final NULL_CODEC:Ljava/lang/String; = "null"

.field private static final SCHEMA:Ljava/lang/String; = "schema"

.field private static final SYNC:Ljava/lang/String; = "sync"

.field private static final SYNC_INTERVAL:I = 0x3e80

.field private static final SYNC_SIZE:I = 0x10

.field private static final VERSION:B


# instance fields
.field private blockCount:J

.field private blockStart:J

.field private count:J

.field private in:Lcom/flurry/org/apache/avro/file/DataFileReader$SeekableInputStream;

.field private meta:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field

.field private peek:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TD;"
        }
    .end annotation
.end field

.field private reader:Lcom/flurry/org/apache/avro/io/DatumReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/org/apache/avro/io/DatumReader",
            "<TD;>;"
        }
    .end annotation
.end field

.field private schema:Lcom/flurry/org/apache/avro/Schema;

.field private sync:[B

.field private syncBuffer:[B

.field private vin:Lcom/flurry/org/apache/avro/io/BinaryDecoder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/flurry/org/apache/avro/file/DataFileReader12;->MAGIC:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x4ft
        0x62t
        0x6at
        0x0t
    .end array-data
.end method

.method public constructor <init>(Lcom/flurry/org/apache/avro/file/SeekableInput;Lcom/flurry/org/apache/avro/io/DatumReader;)V
    .locals 18
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
    .line 65
    .local p0, "this":Lcom/flurry/org/apache/avro/file/DataFileReader12;, "Lcom/flurry/org/apache/avro/file/DataFileReader12<TD;>;"
    .local p2, "reader":Lcom/flurry/org/apache/avro/io/DatumReader;, "Lcom/flurry/org/apache/avro/io/DatumReader<TD;>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/flurry/org/apache/avro/file/DataFileReader12;->meta:Ljava/util/Map;

    .line 60
    const/16 v14, 0x10

    new-array v14, v14, [B

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/flurry/org/apache/avro/file/DataFileReader12;->sync:[B

    .line 61
    const/16 v14, 0x10

    new-array v14, v14, [B

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/flurry/org/apache/avro/file/DataFileReader12;->syncBuffer:[B

    .line 66
    new-instance v14, Lcom/flurry/org/apache/avro/file/DataFileReader$SeekableInputStream;

    move-object/from16 v0, p1

    invoke-direct {v14, v0}, Lcom/flurry/org/apache/avro/file/DataFileReader$SeekableInputStream;-><init>(Lcom/flurry/org/apache/avro/file/SeekableInput;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/flurry/org/apache/avro/file/DataFileReader12;->in:Lcom/flurry/org/apache/avro/file/DataFileReader$SeekableInputStream;

    .line 68
    const/4 v14, 0x4

    new-array v12, v14, [B

    .line 69
    .local v12, "magic":[B
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/flurry/org/apache/avro/file/DataFileReader12;->in:Lcom/flurry/org/apache/avro/file/DataFileReader$SeekableInputStream;

    invoke-virtual {v14, v12}, Lcom/flurry/org/apache/avro/file/DataFileReader$SeekableInputStream;->read([B)I

    .line 70
    sget-object v14, Lcom/flurry/org/apache/avro/file/DataFileReader12;->MAGIC:[B

    invoke-static {v14, v12}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v14

    if-nez v14, :cond_0

    .line 71
    new-instance v14, Ljava/io/IOException;

    const-string v15, "Not a data file."

    invoke-direct {v14, v15}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 73
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/flurry/org/apache/avro/file/DataFileReader12;->in:Lcom/flurry/org/apache/avro/file/DataFileReader$SeekableInputStream;

    invoke-virtual {v14}, Lcom/flurry/org/apache/avro/file/DataFileReader$SeekableInputStream;->length()J

    move-result-wide v10

    .line 74
    .local v10, "length":J
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/flurry/org/apache/avro/file/DataFileReader12;->in:Lcom/flurry/org/apache/avro/file/DataFileReader$SeekableInputStream;

    const-wide/16 v16, 0x4

    sub-long v16, v10, v16

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Lcom/flurry/org/apache/avro/file/DataFileReader$SeekableInputStream;->seek(J)V

    .line 75
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/flurry/org/apache/avro/file/DataFileReader12;->in:Lcom/flurry/org/apache/avro/file/DataFileReader$SeekableInputStream;

    invoke-virtual {v14}, Lcom/flurry/org/apache/avro/file/DataFileReader$SeekableInputStream;->read()I

    move-result v14

    shl-int/lit8 v14, v14, 0x18

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/flurry/org/apache/avro/file/DataFileReader12;->in:Lcom/flurry/org/apache/avro/file/DataFileReader$SeekableInputStream;

    invoke-virtual {v15}, Lcom/flurry/org/apache/avro/file/DataFileReader$SeekableInputStream;->read()I

    move-result v15

    shl-int/lit8 v15, v15, 0x10

    add-int/2addr v14, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/flurry/org/apache/avro/file/DataFileReader12;->in:Lcom/flurry/org/apache/avro/file/DataFileReader$SeekableInputStream;

    invoke-virtual {v15}, Lcom/flurry/org/apache/avro/file/DataFileReader$SeekableInputStream;->read()I

    move-result v15

    shl-int/lit8 v15, v15, 0x8

    add-int/2addr v14, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/flurry/org/apache/avro/file/DataFileReader12;->in:Lcom/flurry/org/apache/avro/file/DataFileReader$SeekableInputStream;

    invoke-virtual {v15}, Lcom/flurry/org/apache/avro/file/DataFileReader$SeekableInputStream;->read()I

    move-result v15

    add-int v4, v14, v15

    .line 76
    .local v4, "footerSize":I
    int-to-long v14, v4

    sub-long v14, v10, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/flurry/org/apache/avro/file/DataFileReader12;->seek(J)V

    .line 77
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/flurry/org/apache/avro/file/DataFileReader12;->vin:Lcom/flurry/org/apache/avro/io/BinaryDecoder;

    invoke-virtual {v14}, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->readMapStart()J

    move-result-wide v8

    .line 78
    .local v8, "l":J
    const-wide/16 v14, 0x0

    cmp-long v14, v8, v14

    if-lez v14, :cond_3

    .line 80
    :cond_1
    const-wide/16 v6, 0x0

    .local v6, "i":J
    :goto_0
    cmp-long v14, v6, v8

    if-gez v14, :cond_2

    .line 81
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/flurry/org/apache/avro/file/DataFileReader12;->vin:Lcom/flurry/org/apache/avro/io/BinaryDecoder;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->readString(Lcom/flurry/org/apache/avro/util/Utf8;)Lcom/flurry/org/apache/avro/util/Utf8;

    move-result-object v14

    invoke-virtual {v14}, Lcom/flurry/org/apache/avro/util/Utf8;->toString()Ljava/lang/String;

    move-result-object v5

    .line 82
    .local v5, "key":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/flurry/org/apache/avro/file/DataFileReader12;->vin:Lcom/flurry/org/apache/avro/io/BinaryDecoder;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->readBytes(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v13

    .line 83
    .local v13, "value":Ljava/nio/ByteBuffer;
    invoke-virtual {v13}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v14

    new-array v2, v14, [B

    .line 84
    .local v2, "bb":[B
    invoke-virtual {v13, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 85
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/flurry/org/apache/avro/file/DataFileReader12;->meta:Ljava/util/Map;

    invoke-interface {v14, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    const-wide/16 v14, 0x1

    add-long/2addr v6, v14

    goto :goto_0

    .line 87
    .end local v2    # "bb":[B
    .end local v5    # "key":Ljava/lang/String;
    .end local v13    # "value":Ljava/nio/ByteBuffer;
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/flurry/org/apache/avro/file/DataFileReader12;->vin:Lcom/flurry/org/apache/avro/io/BinaryDecoder;

    invoke-virtual {v14}, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->mapNext()J

    move-result-wide v8

    const-wide/16 v14, 0x0

    cmp-long v14, v8, v14

    if-nez v14, :cond_1

    .line 90
    .end local v6    # "i":J
    :cond_3
    const-string v14, "sync"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/flurry/org/apache/avro/file/DataFileReader12;->getMeta(Ljava/lang/String;)[B

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/flurry/org/apache/avro/file/DataFileReader12;->sync:[B

    .line 91
    const-string v14, "count"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/flurry/org/apache/avro/file/DataFileReader12;->getMetaLong(Ljava/lang/String;)J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/flurry/org/apache/avro/file/DataFileReader12;->count:J

    .line 92
    const-string v14, "codec"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/flurry/org/apache/avro/file/DataFileReader12;->getMetaString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 93
    .local v3, "codec":Ljava/lang/String;
    if-eqz v3, :cond_4

    const-string v14, "null"

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_4

    .line 94
    new-instance v14, Ljava/io/IOException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Unknown codec: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 96
    :cond_4
    const-string v14, "schema"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/flurry/org/apache/avro/file/DataFileReader12;->getMetaString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/flurry/org/apache/avro/Schema;->parse(Ljava/lang/String;)Lcom/flurry/org/apache/avro/Schema;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/flurry/org/apache/avro/file/DataFileReader12;->schema:Lcom/flurry/org/apache/avro/Schema;

    .line 97
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/flurry/org/apache/avro/file/DataFileReader12;->reader:Lcom/flurry/org/apache/avro/io/DatumReader;

    .line 99
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/flurry/org/apache/avro/file/DataFileReader12;->schema:Lcom/flurry/org/apache/avro/Schema;

    move-object/from16 v0, p2

    invoke-interface {v0, v14}, Lcom/flurry/org/apache/avro/io/DatumReader;->setSchema(Lcom/flurry/org/apache/avro/Schema;)V

    .line 101
    sget-object v14, Lcom/flurry/org/apache/avro/file/DataFileReader12;->MAGIC:[B

    array-length v14, v14

    int-to-long v14, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/flurry/org/apache/avro/file/DataFileReader12;->seek(J)V

    .line 102
    return-void
.end method

.method private skipSync()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 173
    .local p0, "this":Lcom/flurry/org/apache/avro/file/DataFileReader12;, "Lcom/flurry/org/apache/avro/file/DataFileReader12<TD;>;"
    iget-object v0, p0, Lcom/flurry/org/apache/avro/file/DataFileReader12;->vin:Lcom/flurry/org/apache/avro/io/BinaryDecoder;

    iget-object v1, p0, Lcom/flurry/org/apache/avro/file/DataFileReader12;->syncBuffer:[B

    invoke-virtual {v0, v1}, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->readFixed([B)V

    .line 174
    iget-object v0, p0, Lcom/flurry/org/apache/avro/file/DataFileReader12;->syncBuffer:[B

    iget-object v1, p0, Lcom/flurry/org/apache/avro/file/DataFileReader12;->sync:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_0

    .line 175
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid sync!"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 176
    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 224
    .local p0, "this":Lcom/flurry/org/apache/avro/file/DataFileReader12;, "Lcom/flurry/org/apache/avro/file/DataFileReader12<TD;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/flurry/org/apache/avro/file/DataFileReader12;->in:Lcom/flurry/org/apache/avro/file/DataFileReader$SeekableInputStream;

    invoke-virtual {v0}, Lcom/flurry/org/apache/avro/file/DataFileReader$SeekableInputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 225
    monitor-exit p0

    return-void

    .line 224
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMeta(Ljava/lang/String;)[B
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 106
    .local p0, "this":Lcom/flurry/org/apache/avro/file/DataFileReader12;, "Lcom/flurry/org/apache/avro/file/DataFileReader12<TD;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/flurry/org/apache/avro/file/DataFileReader12;->meta:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMetaLong(Ljava/lang/String;)J
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 122
    .local p0, "this":Lcom/flurry/org/apache/avro/file/DataFileReader12;, "Lcom/flurry/org/apache/avro/file/DataFileReader12<TD;>;"
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/flurry/org/apache/avro/file/DataFileReader12;->getMetaString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMetaString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 110
    .local p0, "this":Lcom/flurry/org/apache/avro/file/DataFileReader12;, "Lcom/flurry/org/apache/avro/file/DataFileReader12<TD;>;"
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/flurry/org/apache/avro/file/DataFileReader12;->getMeta(Ljava/lang/String;)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 111
    .local v1, "value":[B
    if-nez v1, :cond_0

    .line 112
    const/4 v2, 0x0

    .line 115
    :goto_0
    monitor-exit p0

    return-object v2

    :cond_0
    :try_start_1
    new-instance v2, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-direct {v2, v1, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 116
    :catch_0
    move-exception v0

    .line 117
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    :try_start_2
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 110
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v1    # "value":[B
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public getSchema()Lcom/flurry/org/apache/avro/Schema;
    .locals 1

    .prologue
    .line 127
    .local p0, "this":Lcom/flurry/org/apache/avro/file/DataFileReader12;, "Lcom/flurry/org/apache/avro/file/DataFileReader12<TD;>;"
    iget-object v0, p0, Lcom/flurry/org/apache/avro/file/DataFileReader12;->schema:Lcom/flurry/org/apache/avro/Schema;

    return-object v0
.end method

.method public hasNext()Z
    .locals 6

    .prologue
    .local p0, "this":Lcom/flurry/org/apache/avro/file/DataFileReader12;, "Lcom/flurry/org/apache/avro/file/DataFileReader12<TD;>;"
    const/4 v0, 0x1

    .line 133
    iget-object v1, p0, Lcom/flurry/org/apache/avro/file/DataFileReader12;->peek:Ljava/lang/Object;

    if-nez v1, :cond_0

    iget-wide v2, p0, Lcom/flurry/org/apache/avro/file/DataFileReader12;->blockCount:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    .line 136
    :cond_0
    :goto_0
    return v0

    .line 135
    :cond_1
    invoke-virtual {p0}, Lcom/flurry/org/apache/avro/file/DataFileReader12;->next()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/flurry/org/apache/avro/file/DataFileReader12;->peek:Ljava/lang/Object;

    .line 136
    iget-object v1, p0, Lcom/flurry/org/apache/avro/file/DataFileReader12;->peek:Ljava/lang/Object;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TD;>;"
        }
    .end annotation

    .prologue
    .line 131
    .local p0, "this":Lcom/flurry/org/apache/avro/file/DataFileReader12;, "Lcom/flurry/org/apache/avro/file/DataFileReader12<TD;>;"
    return-object p0
.end method

.method public next()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TD;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/flurry/org/apache/avro/file/DataFileReader12;, "Lcom/flurry/org/apache/avro/file/DataFileReader12<TD;>;"
    const/4 v3, 0x0

    .line 139
    iget-object v2, p0, Lcom/flurry/org/apache/avro/file/DataFileReader12;->peek:Ljava/lang/Object;

    if-eqz v2, :cond_0

    .line 140
    iget-object v1, p0, Lcom/flurry/org/apache/avro/file/DataFileReader12;->peek:Ljava/lang/Object;

    .line 141
    .local v1, "result":Ljava/lang/Object;, "TD;"
    iput-object v3, p0, Lcom/flurry/org/apache/avro/file/DataFileReader12;->peek:Ljava/lang/Object;

    .line 145
    .end local v1    # "result":Ljava/lang/Object;, "TD;"
    :goto_0
    return-object v1

    :cond_0
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, v2}, Lcom/flurry/org/apache/avro/file/DataFileReader12;->next(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 146
    :catch_0
    move-exception v0

    .line 147
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public declared-synchronized next(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)TD;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 155
    .local p0, "this":Lcom/flurry/org/apache/avro/file/DataFileReader12;, "Lcom/flurry/org/apache/avro/file/DataFileReader12<TD;>;"
    .local p1, "reuse":Ljava/lang/Object;, "TD;"
    monitor-enter p0

    :cond_0
    :goto_0
    :try_start_0
    iget-wide v0, p0, Lcom/flurry/org/apache/avro/file/DataFileReader12;->blockCount:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 157
    iget-object v0, p0, Lcom/flurry/org/apache/avro/file/DataFileReader12;->in:Lcom/flurry/org/apache/avro/file/DataFileReader$SeekableInputStream;

    invoke-virtual {v0}, Lcom/flurry/org/apache/avro/file/DataFileReader$SeekableInputStream;->tell()J

    move-result-wide v0

    iget-object v2, p0, Lcom/flurry/org/apache/avro/file/DataFileReader12;->in:Lcom/flurry/org/apache/avro/file/DataFileReader$SeekableInputStream;

    invoke-virtual {v2}, Lcom/flurry/org/apache/avro/file/DataFileReader$SeekableInputStream;->length()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 158
    const/4 v0, 0x0

    .line 169
    :goto_1
    monitor-exit p0

    return-object v0

    .line 160
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/flurry/org/apache/avro/file/DataFileReader12;->skipSync()V

    .line 162
    iget-object v0, p0, Lcom/flurry/org/apache/avro/file/DataFileReader12;->vin:Lcom/flurry/org/apache/avro/io/BinaryDecoder;

    invoke-virtual {v0}, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/flurry/org/apache/avro/file/DataFileReader12;->blockCount:J

    .line 164
    iget-wide v0, p0, Lcom/flurry/org/apache/avro/file/DataFileReader12;->blockCount:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/flurry/org/apache/avro/file/DataFileReader12;->vin:Lcom/flurry/org/apache/avro/io/BinaryDecoder;

    invoke-virtual {v0}, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->readLong()J

    move-result-wide v0

    iget-object v2, p0, Lcom/flurry/org/apache/avro/file/DataFileReader12;->in:Lcom/flurry/org/apache/avro/file/DataFileReader$SeekableInputStream;

    invoke-virtual {v2}, Lcom/flurry/org/apache/avro/file/DataFileReader$SeekableInputStream;->tell()J

    move-result-wide v2

    add-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lcom/flurry/org/apache/avro/file/DataFileReader12;->seek(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 155
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 168
    :cond_2
    :try_start_2
    iget-wide v0, p0, Lcom/flurry/org/apache/avro/file/DataFileReader12;->blockCount:J

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/flurry/org/apache/avro/file/DataFileReader12;->blockCount:J

    .line 169
    iget-object v0, p0, Lcom/flurry/org/apache/avro/file/DataFileReader12;->reader:Lcom/flurry/org/apache/avro/io/DatumReader;

    iget-object v1, p0, Lcom/flurry/org/apache/avro/file/DataFileReader12;->vin:Lcom/flurry/org/apache/avro/io/BinaryDecoder;

    invoke-interface {v0, p1, v1}, Lcom/flurry/org/apache/avro/io/DatumReader;->read(Ljava/lang/Object;Lcom/flurry/org/apache/avro/io/Decoder;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    goto :goto_1
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
    .line 214
    .local p0, "this":Lcom/flurry/org/apache/avro/file/DataFileReader12;, "Lcom/flurry/org/apache/avro/file/DataFileReader12<TD;>;"
    iget-wide v0, p0, Lcom/flurry/org/apache/avro/file/DataFileReader12;->blockStart:J

    const-wide/16 v2, 0x10

    add-long/2addr v2, p1

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    iget-wide v0, p0, Lcom/flurry/org/apache/avro/file/DataFileReader12;->blockStart:J

    iget-object v2, p0, Lcom/flurry/org/apache/avro/file/DataFileReader12;->in:Lcom/flurry/org/apache/avro/file/DataFileReader$SeekableInputStream;

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

.method public remove()V
    .locals 1

    .prologue
    .line 150
    .local p0, "this":Lcom/flurry/org/apache/avro/file/DataFileReader12;, "Lcom/flurry/org/apache/avro/file/DataFileReader12<TD;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public declared-synchronized seek(J)V
    .locals 3
    .param p1, "position"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 181
    .local p0, "this":Lcom/flurry/org/apache/avro/file/DataFileReader12;, "Lcom/flurry/org/apache/avro/file/DataFileReader12<TD;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/flurry/org/apache/avro/file/DataFileReader12;->in:Lcom/flurry/org/apache/avro/file/DataFileReader$SeekableInputStream;

    invoke-virtual {v0, p1, p2}, Lcom/flurry/org/apache/avro/file/DataFileReader$SeekableInputStream;->seek(J)V

    .line 182
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/flurry/org/apache/avro/file/DataFileReader12;->blockCount:J

    .line 183
    iput-wide p1, p0, Lcom/flurry/org/apache/avro/file/DataFileReader12;->blockStart:J

    .line 184
    invoke-static {}, Lcom/flurry/org/apache/avro/io/DecoderFactory;->get()Lcom/flurry/org/apache/avro/io/DecoderFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/org/apache/avro/file/DataFileReader12;->in:Lcom/flurry/org/apache/avro/file/DataFileReader$SeekableInputStream;

    iget-object v2, p0, Lcom/flurry/org/apache/avro/file/DataFileReader12;->vin:Lcom/flurry/org/apache/avro/io/BinaryDecoder;

    invoke-virtual {v0, v1, v2}, Lcom/flurry/org/apache/avro/io/DecoderFactory;->binaryDecoder(Ljava/io/InputStream;Lcom/flurry/org/apache/avro/io/BinaryDecoder;)Lcom/flurry/org/apache/avro/io/BinaryDecoder;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/org/apache/avro/file/DataFileReader12;->vin:Lcom/flurry/org/apache/avro/io/BinaryDecoder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    monitor-exit p0

    return-void

    .line 181
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized sync(J)V
    .locals 9
    .param p1, "position"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/flurry/org/apache/avro/file/DataFileReader12;, "Lcom/flurry/org/apache/avro/file/DataFileReader12<TD;>;"
    const-wide/16 v6, 0x10

    .line 190
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/flurry/org/apache/avro/file/DataFileReader12;->in:Lcom/flurry/org/apache/avro/file/DataFileReader$SeekableInputStream;

    invoke-virtual {v2}, Lcom/flurry/org/apache/avro/file/DataFileReader$SeekableInputStream;->tell()J

    move-result-wide v2

    add-long/2addr v2, v6

    iget-object v4, p0, Lcom/flurry/org/apache/avro/file/DataFileReader12;->in:Lcom/flurry/org/apache/avro/file/DataFileReader$SeekableInputStream;

    invoke-virtual {v4}, Lcom/flurry/org/apache/avro/file/DataFileReader$SeekableInputStream;->length()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    .line 191
    iget-object v2, p0, Lcom/flurry/org/apache/avro/file/DataFileReader12;->in:Lcom/flurry/org/apache/avro/file/DataFileReader$SeekableInputStream;

    invoke-virtual {v2}, Lcom/flurry/org/apache/avro/file/DataFileReader$SeekableInputStream;->length()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/flurry/org/apache/avro/file/DataFileReader12;->seek(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 209
    :goto_0
    monitor-exit p0

    return-void

    .line 194
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/flurry/org/apache/avro/file/DataFileReader12;->in:Lcom/flurry/org/apache/avro/file/DataFileReader$SeekableInputStream;

    invoke-virtual {v2, p1, p2}, Lcom/flurry/org/apache/avro/file/DataFileReader$SeekableInputStream;->seek(J)V

    .line 195
    iget-object v2, p0, Lcom/flurry/org/apache/avro/file/DataFileReader12;->vin:Lcom/flurry/org/apache/avro/io/BinaryDecoder;

    iget-object v3, p0, Lcom/flurry/org/apache/avro/file/DataFileReader12;->syncBuffer:[B

    invoke-virtual {v2, v3}, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->readFixed([B)V

    .line 196
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/flurry/org/apache/avro/file/DataFileReader12;->in:Lcom/flurry/org/apache/avro/file/DataFileReader$SeekableInputStream;

    invoke-virtual {v2}, Lcom/flurry/org/apache/avro/file/DataFileReader$SeekableInputStream;->tell()J

    move-result-wide v2

    iget-object v4, p0, Lcom/flurry/org/apache/avro/file/DataFileReader12;->in:Lcom/flurry/org/apache/avro/file/DataFileReader$SeekableInputStream;

    invoke-virtual {v4}, Lcom/flurry/org/apache/avro/file/DataFileReader$SeekableInputStream;->length()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_4

    .line 197
    const/4 v1, 0x0

    .line 198
    .local v1, "j":I
    :goto_2
    iget-object v2, p0, Lcom/flurry/org/apache/avro/file/DataFileReader12;->sync:[B

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 199
    iget-object v2, p0, Lcom/flurry/org/apache/avro/file/DataFileReader12;->sync:[B

    aget-byte v2, v2, v1

    iget-object v3, p0, Lcom/flurry/org/apache/avro/file/DataFileReader12;->syncBuffer:[B

    add-int v4, v0, v1

    iget-object v5, p0, Lcom/flurry/org/apache/avro/file/DataFileReader12;->sync:[B

    array-length v5, v5

    rem-int/2addr v4, v5

    aget-byte v3, v3, v4

    if-eq v2, v3, :cond_2

    .line 202
    :cond_1
    iget-object v2, p0, Lcom/flurry/org/apache/avro/file/DataFileReader12;->sync:[B

    array-length v2, v2

    if-ne v1, v2, :cond_3

    .line 203
    iget-object v2, p0, Lcom/flurry/org/apache/avro/file/DataFileReader12;->in:Lcom/flurry/org/apache/avro/file/DataFileReader$SeekableInputStream;

    invoke-virtual {v2}, Lcom/flurry/org/apache/avro/file/DataFileReader$SeekableInputStream;->tell()J

    move-result-wide v2

    sub-long/2addr v2, v6

    invoke-virtual {p0, v2, v3}, Lcom/flurry/org/apache/avro/file/DataFileReader12;->seek(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 190
    .end local v0    # "i":I
    .end local v1    # "j":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 198
    .restart local v0    # "i":I
    .restart local v1    # "j":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 206
    :cond_3
    :try_start_2
    iget-object v2, p0, Lcom/flurry/org/apache/avro/file/DataFileReader12;->syncBuffer:[B

    iget-object v3, p0, Lcom/flurry/org/apache/avro/file/DataFileReader12;->sync:[B

    array-length v3, v3

    rem-int v3, v0, v3

    iget-object v4, p0, Lcom/flurry/org/apache/avro/file/DataFileReader12;->in:Lcom/flurry/org/apache/avro/file/DataFileReader$SeekableInputStream;

    invoke-virtual {v4}, Lcom/flurry/org/apache/avro/file/DataFileReader$SeekableInputStream;->read()I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 196
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 208
    .end local v1    # "j":I
    :cond_4
    iget-object v2, p0, Lcom/flurry/org/apache/avro/file/DataFileReader12;->in:Lcom/flurry/org/apache/avro/file/DataFileReader$SeekableInputStream;

    invoke-virtual {v2}, Lcom/flurry/org/apache/avro/file/DataFileReader$SeekableInputStream;->length()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/flurry/org/apache/avro/file/DataFileReader12;->seek(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

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
    .line 219
    .local p0, "this":Lcom/flurry/org/apache/avro/file/DataFileReader12;, "Lcom/flurry/org/apache/avro/file/DataFileReader12<TD;>;"
    iget-object v0, p0, Lcom/flurry/org/apache/avro/file/DataFileReader12;->in:Lcom/flurry/org/apache/avro/file/DataFileReader$SeekableInputStream;

    invoke-virtual {v0}, Lcom/flurry/org/apache/avro/file/DataFileReader$SeekableInputStream;->tell()J

    move-result-wide v0

    return-wide v0
.end method
