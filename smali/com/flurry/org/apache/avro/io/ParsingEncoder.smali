.class public abstract Lcom/flurry/org/apache/avro/io/ParsingEncoder;
.super Lcom/flurry/org/apache/avro/io/Encoder;
.source "ParsingEncoder.java"


# instance fields
.field private counts:[J

.field protected pos:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/flurry/org/apache/avro/io/Encoder;-><init>()V

    .line 32
    const/16 v0, 0xa

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/flurry/org/apache/avro/io/ParsingEncoder;->counts:[J

    .line 34
    const/4 v0, -0x1

    iput v0, p0, Lcom/flurry/org/apache/avro/io/ParsingEncoder;->pos:I

    return-void
.end method


# virtual methods
.method protected final depth()I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/flurry/org/apache/avro/io/ParsingEncoder;->pos:I

    return v0
.end method

.method protected final pop()V
    .locals 4

    .prologue
    .line 59
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/ParsingEncoder;->counts:[J

    iget v1, p0, Lcom/flurry/org/apache/avro/io/ParsingEncoder;->pos:I

    aget-wide v0, v0, v1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 60
    new-instance v0, Lcom/flurry/org/apache/avro/AvroTypeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Incorrect number of items written. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/org/apache/avro/io/ParsingEncoder;->counts:[J

    iget v3, p0, Lcom/flurry/org/apache/avro/io/ParsingEncoder;->pos:I

    aget-wide v2, v2, v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " more required."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/flurry/org/apache/avro/AvroTypeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_0
    iget v0, p0, Lcom/flurry/org/apache/avro/io/ParsingEncoder;->pos:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/flurry/org/apache/avro/io/ParsingEncoder;->pos:I

    .line 64
    return-void
.end method

.method protected final push()V
    .locals 4

    .prologue
    .line 52
    iget v0, p0, Lcom/flurry/org/apache/avro/io/ParsingEncoder;->pos:I

    iget-object v1, p0, Lcom/flurry/org/apache/avro/io/ParsingEncoder;->counts:[J

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 53
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/ParsingEncoder;->counts:[J

    iget v1, p0, Lcom/flurry/org/apache/avro/io/ParsingEncoder;->pos:I

    add-int/lit8 v1, v1, 0xa

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/org/apache/avro/io/ParsingEncoder;->counts:[J

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/ParsingEncoder;->counts:[J

    iget v1, p0, Lcom/flurry/org/apache/avro/io/ParsingEncoder;->pos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/flurry/org/apache/avro/io/ParsingEncoder;->pos:I

    const-wide/16 v2, 0x0

    aput-wide v2, v0, v1

    .line 56
    return-void
.end method

.method public setItemCount(J)V
    .locals 5
    .param p1, "itemCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 38
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/ParsingEncoder;->counts:[J

    iget v1, p0, Lcom/flurry/org/apache/avro/io/ParsingEncoder;->pos:I

    aget-wide v0, v0, v1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 39
    new-instance v0, Lcom/flurry/org/apache/avro/AvroTypeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Incorrect number of items written. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/org/apache/avro/io/ParsingEncoder;->counts:[J

    iget v3, p0, Lcom/flurry/org/apache/avro/io/ParsingEncoder;->pos:I

    aget-wide v2, v2, v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " more required."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/flurry/org/apache/avro/AvroTypeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/ParsingEncoder;->counts:[J

    iget v1, p0, Lcom/flurry/org/apache/avro/io/ParsingEncoder;->pos:I

    aput-wide p1, v0, v1

    .line 43
    return-void
.end method

.method public startItem()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 47
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/ParsingEncoder;->counts:[J

    iget v1, p0, Lcom/flurry/org/apache/avro/io/ParsingEncoder;->pos:I

    aget-wide v2, v0, v1

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    aput-wide v2, v0, v1

    .line 48
    return-void
.end method
