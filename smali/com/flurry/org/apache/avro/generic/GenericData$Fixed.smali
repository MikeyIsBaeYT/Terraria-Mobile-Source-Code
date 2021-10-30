.class public Lcom/flurry/org/apache/avro/generic/GenericData$Fixed;
.super Ljava/lang/Object;
.source "GenericData.java"

# interfaces
.implements Lcom/flurry/org/apache/avro/generic/GenericFixed;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/org/apache/avro/generic/GenericData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Fixed"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/flurry/org/apache/avro/generic/GenericFixed;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/flurry/org/apache/avro/generic/GenericData$Fixed;",
        ">;"
    }
.end annotation


# instance fields
.field private bytes:[B

.field private schema:Lcom/flurry/org/apache/avro/Schema;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/flurry/org/apache/avro/Schema;)V
    .locals 0
    .param p1, "schema"    # Lcom/flurry/org/apache/avro/Schema;

    .prologue
    .line 238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lcom/flurry/org/apache/avro/generic/GenericData$Fixed;->setSchema(Lcom/flurry/org/apache/avro/Schema;)V

    return-void
.end method

.method public constructor <init>(Lcom/flurry/org/apache/avro/Schema;[B)V
    .locals 0
    .param p1, "schema"    # Lcom/flurry/org/apache/avro/Schema;
    .param p2, "bytes"    # [B

    .prologue
    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 241
    iput-object p1, p0, Lcom/flurry/org/apache/avro/generic/GenericData$Fixed;->schema:Lcom/flurry/org/apache/avro/Schema;

    .line 242
    iput-object p2, p0, Lcom/flurry/org/apache/avro/generic/GenericData$Fixed;->bytes:[B

    .line 243
    return-void
.end method


# virtual methods
.method public bytes([B)V
    .locals 0
    .param p1, "bytes"    # [B

    .prologue
    .line 254
    iput-object p1, p0, Lcom/flurry/org/apache/avro/generic/GenericData$Fixed;->bytes:[B

    return-void
.end method

.method public bytes()[B
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/flurry/org/apache/avro/generic/GenericData$Fixed;->bytes:[B

    return-object v0
.end method

.method public compareTo(Lcom/flurry/org/apache/avro/generic/GenericData$Fixed;)I
    .locals 6
    .param p1, "that"    # Lcom/flurry/org/apache/avro/generic/GenericData$Fixed;

    .prologue
    const/4 v1, 0x0

    .line 272
    iget-object v0, p0, Lcom/flurry/org/apache/avro/generic/GenericData$Fixed;->bytes:[B

    iget-object v2, p0, Lcom/flurry/org/apache/avro/generic/GenericData$Fixed;->bytes:[B

    array-length v2, v2

    iget-object v3, p1, Lcom/flurry/org/apache/avro/generic/GenericData$Fixed;->bytes:[B

    iget-object v4, p1, Lcom/flurry/org/apache/avro/generic/GenericData$Fixed;->bytes:[B

    array-length v5, v4

    move v4, v1

    invoke-static/range {v0 .. v5}, Lcom/flurry/org/apache/avro/io/BinaryData;->compareBytes([BII[BII)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 234
    check-cast p1, Lcom/flurry/org/apache/avro/generic/GenericData$Fixed;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/flurry/org/apache/avro/generic/GenericData$Fixed;->compareTo(Lcom/flurry/org/apache/avro/generic/GenericData$Fixed;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    .line 260
    if-ne p1, p0, :cond_1

    .line 261
    .end local p1    # "o":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .restart local p1    # "o":Ljava/lang/Object;
    :cond_1
    instance-of v1, p1, Lcom/flurry/org/apache/avro/generic/GenericFixed;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/flurry/org/apache/avro/generic/GenericData$Fixed;->bytes:[B

    check-cast p1, Lcom/flurry/org/apache/avro/generic/GenericFixed;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-interface {p1}, Lcom/flurry/org/apache/avro/generic/GenericFixed;->bytes()[B

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSchema()Lcom/flurry/org/apache/avro/Schema;
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/flurry/org/apache/avro/generic/GenericData$Fixed;->schema:Lcom/flurry/org/apache/avro/Schema;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/flurry/org/apache/avro/generic/GenericData$Fixed;->bytes:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    return v0
.end method

.method protected setSchema(Lcom/flurry/org/apache/avro/Schema;)V
    .locals 1
    .param p1, "schema"    # Lcom/flurry/org/apache/avro/Schema;

    .prologue
    .line 248
    iput-object p1, p0, Lcom/flurry/org/apache/avro/generic/GenericData$Fixed;->schema:Lcom/flurry/org/apache/avro/Schema;

    .line 249
    invoke-virtual {p1}, Lcom/flurry/org/apache/avro/Schema;->getFixedSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/flurry/org/apache/avro/generic/GenericData$Fixed;->bytes:[B

    .line 250
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/flurry/org/apache/avro/generic/GenericData$Fixed;->bytes:[B

    invoke-static {v0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
