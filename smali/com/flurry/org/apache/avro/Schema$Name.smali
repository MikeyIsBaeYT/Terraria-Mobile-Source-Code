.class Lcom/flurry/org/apache/avro/Schema$Name;
.super Ljava/lang/Object;
.source "Schema.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/org/apache/avro/Schema;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Name"
.end annotation


# instance fields
.field private final full:Ljava/lang/String;

.field private final name:Ljava/lang/String;

.field private final space:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "space"    # Ljava/lang/String;

    .prologue
    .line 476
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 477
    if-nez p1, :cond_0

    .line 478
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/flurry/org/apache/avro/Schema$Name;->full:Ljava/lang/String;

    iput-object v1, p0, Lcom/flurry/org/apache/avro/Schema$Name;->space:Ljava/lang/String;

    iput-object v1, p0, Lcom/flurry/org/apache/avro/Schema$Name;->name:Ljava/lang/String;

    .line 490
    :goto_0
    return-void

    .line 481
    :cond_0
    const/16 v1, 0x2e

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 482
    .local v0, "lastDot":I
    if-gez v0, :cond_1

    .line 483
    iput-object p2, p0, Lcom/flurry/org/apache/avro/Schema$Name;->space:Ljava/lang/String;

    .line 484
    invoke-static {p1}, Lcom/flurry/org/apache/avro/Schema;->access$200(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/flurry/org/apache/avro/Schema$Name;->name:Ljava/lang/String;

    .line 489
    :goto_1
    iget-object v1, p0, Lcom/flurry/org/apache/avro/Schema$Name;->space:Ljava/lang/String;

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/flurry/org/apache/avro/Schema$Name;->name:Ljava/lang/String;

    :goto_2
    iput-object v1, p0, Lcom/flurry/org/apache/avro/Schema$Name;->full:Ljava/lang/String;

    goto :goto_0

    .line 486
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/flurry/org/apache/avro/Schema$Name;->space:Ljava/lang/String;

    .line 487
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/flurry/org/apache/avro/Schema;->access$200(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/flurry/org/apache/avro/Schema$Name;->name:Ljava/lang/String;

    goto :goto_1

    .line 489
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/flurry/org/apache/avro/Schema$Name;->space:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/org/apache/avro/Schema$Name;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2
.end method

.method static synthetic access$400(Lcom/flurry/org/apache/avro/Schema$Name;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/flurry/org/apache/avro/Schema$Name;

    .prologue
    .line 472
    iget-object v0, p0, Lcom/flurry/org/apache/avro/Schema$Name;->full:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/flurry/org/apache/avro/Schema$Name;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/flurry/org/apache/avro/Schema$Name;

    .prologue
    .line 472
    iget-object v0, p0, Lcom/flurry/org/apache/avro/Schema$Name;->name:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/flurry/org/apache/avro/Schema$Name;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/flurry/org/apache/avro/Schema$Name;

    .prologue
    .line 472
    iget-object v0, p0, Lcom/flurry/org/apache/avro/Schema$Name;->space:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 492
    if-ne p1, p0, :cond_1

    .line 495
    :cond_0
    :goto_0
    return v1

    .line 493
    :cond_1
    instance-of v3, p1, Lcom/flurry/org/apache/avro/Schema$Name;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 494
    check-cast v0, Lcom/flurry/org/apache/avro/Schema$Name;

    .line 495
    .local v0, "that":Lcom/flurry/org/apache/avro/Schema$Name;
    iget-object v3, p0, Lcom/flurry/org/apache/avro/Schema$Name;->full:Ljava/lang/String;

    if-nez v3, :cond_3

    iget-object v3, v0, Lcom/flurry/org/apache/avro/Schema$Name;->full:Ljava/lang/String;

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/flurry/org/apache/avro/Schema$Name;->full:Ljava/lang/String;

    iget-object v2, v0, Lcom/flurry/org/apache/avro/Schema$Name;->full:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getQualified(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "defaultSpace"    # Ljava/lang/String;

    .prologue
    .line 511
    iget-object v0, p0, Lcom/flurry/org/apache/avro/Schema$Name;->space:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/org/apache/avro/Schema$Name;->space:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/flurry/org/apache/avro/Schema$Name;->name:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/flurry/org/apache/avro/Schema$Name;->full:Ljava/lang/String;

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 498
    iget-object v0, p0, Lcom/flurry/org/apache/avro/Schema$Name;->full:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/flurry/org/apache/avro/Schema$Name;->full:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 500
    iget-object v0, p0, Lcom/flurry/org/apache/avro/Schema$Name;->full:Ljava/lang/String;

    return-object v0
.end method

.method public writeName(Lcom/flurry/org/apache/avro/Schema$Names;Lcom/flurry/org/codehaus/jackson/JsonGenerator;)V
    .locals 2
    .param p1, "names"    # Lcom/flurry/org/apache/avro/Schema$Names;
    .param p2, "gen"    # Lcom/flurry/org/codehaus/jackson/JsonGenerator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 502
    iget-object v0, p0, Lcom/flurry/org/apache/avro/Schema$Name;->name:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, "name"

    iget-object v1, p0, Lcom/flurry/org/apache/avro/Schema$Name;->name:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Lcom/flurry/org/codehaus/jackson/JsonGenerator;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    :cond_0
    iget-object v0, p0, Lcom/flurry/org/apache/avro/Schema$Name;->space:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 504
    iget-object v0, p0, Lcom/flurry/org/apache/avro/Schema$Name;->space:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/flurry/org/apache/avro/Schema$Names;->space()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 505
    const-string v0, "namespace"

    iget-object v1, p0, Lcom/flurry/org/apache/avro/Schema$Name;->space:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Lcom/flurry/org/codehaus/jackson/JsonGenerator;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    :cond_1
    invoke-virtual {p1}, Lcom/flurry/org/apache/avro/Schema$Names;->space()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 507
    iget-object v0, p0, Lcom/flurry/org/apache/avro/Schema$Name;->space:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/flurry/org/apache/avro/Schema$Names;->space(Ljava/lang/String;)V

    .line 509
    :cond_2
    return-void
.end method
