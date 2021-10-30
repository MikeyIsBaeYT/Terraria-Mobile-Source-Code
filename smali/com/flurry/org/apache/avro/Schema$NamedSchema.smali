.class abstract Lcom/flurry/org/apache/avro/Schema$NamedSchema;
.super Lcom/flurry/org/apache/avro/Schema;
.source "Schema.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/org/apache/avro/Schema;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "NamedSchema"
.end annotation


# instance fields
.field aliases:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/flurry/org/apache/avro/Schema$Name;",
            ">;"
        }
    .end annotation
.end field

.field final doc:Ljava/lang/String;

.field final name:Lcom/flurry/org/apache/avro/Schema$Name;


# direct methods
.method public constructor <init>(Lcom/flurry/org/apache/avro/Schema$Type;Lcom/flurry/org/apache/avro/Schema$Name;Ljava/lang/String;)V
    .locals 3
    .param p1, "type"    # Lcom/flurry/org/apache/avro/Schema$Type;
    .param p2, "name"    # Lcom/flurry/org/apache/avro/Schema$Name;
    .param p3, "doc"    # Ljava/lang/String;

    .prologue
    .line 520
    invoke-direct {p0, p1}, Lcom/flurry/org/apache/avro/Schema;-><init>(Lcom/flurry/org/apache/avro/Schema$Type;)V

    .line 521
    iput-object p2, p0, Lcom/flurry/org/apache/avro/Schema$NamedSchema;->name:Lcom/flurry/org/apache/avro/Schema$Name;

    .line 522
    iput-object p3, p0, Lcom/flurry/org/apache/avro/Schema$NamedSchema;->doc:Ljava/lang/String;

    .line 523
    sget-object v0, Lcom/flurry/org/apache/avro/Schema$NamedSchema;->PRIMITIVES:Ljava/util/Map;

    invoke-static {p2}, Lcom/flurry/org/apache/avro/Schema$Name;->access$400(Lcom/flurry/org/apache/avro/Schema$Name;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 524
    new-instance v0, Lcom/flurry/org/apache/avro/AvroTypeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Schemas may not be named after primitives: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Lcom/flurry/org/apache/avro/Schema$Name;->access$400(Lcom/flurry/org/apache/avro/Schema$Name;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/flurry/org/apache/avro/AvroTypeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 526
    :cond_0
    return-void
.end method


# virtual methods
.method public addAlias(Ljava/lang/String;)V
    .locals 3
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 532
    iget-object v0, p0, Lcom/flurry/org/apache/avro/Schema$NamedSchema;->aliases:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 533
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/flurry/org/apache/avro/Schema$NamedSchema;->aliases:Ljava/util/Set;

    .line 534
    :cond_0
    iget-object v0, p0, Lcom/flurry/org/apache/avro/Schema$NamedSchema;->aliases:Ljava/util/Set;

    new-instance v1, Lcom/flurry/org/apache/avro/Schema$Name;

    iget-object v2, p0, Lcom/flurry/org/apache/avro/Schema$NamedSchema;->name:Lcom/flurry/org/apache/avro/Schema$Name;

    invoke-static {v2}, Lcom/flurry/org/apache/avro/Schema$Name;->access$600(Lcom/flurry/org/apache/avro/Schema$Name;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lcom/flurry/org/apache/avro/Schema$Name;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 535
    return-void
.end method

.method public aliasesToJson(Lcom/flurry/org/codehaus/jackson/JsonGenerator;)V
    .locals 3
    .param p1, "gen"    # Lcom/flurry/org/codehaus/jackson/JsonGenerator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 563
    iget-object v2, p0, Lcom/flurry/org/apache/avro/Schema$NamedSchema;->aliases:Ljava/util/Set;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/flurry/org/apache/avro/Schema$NamedSchema;->aliases:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 569
    :cond_0
    :goto_0
    return-void

    .line 564
    :cond_1
    const-string v2, "aliases"

    invoke-virtual {p1, v2}, Lcom/flurry/org/codehaus/jackson/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 565
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonGenerator;->writeStartArray()V

    .line 566
    iget-object v2, p0, Lcom/flurry/org/apache/avro/Schema$NamedSchema;->aliases:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/org/apache/avro/Schema$Name;

    .line 567
    .local v0, "alias":Lcom/flurry/org/apache/avro/Schema$Name;
    iget-object v2, p0, Lcom/flurry/org/apache/avro/Schema$NamedSchema;->name:Lcom/flurry/org/apache/avro/Schema$Name;

    invoke-static {v2}, Lcom/flurry/org/apache/avro/Schema$Name;->access$600(Lcom/flurry/org/apache/avro/Schema$Name;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/flurry/org/apache/avro/Schema$Name;->getQualified(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/flurry/org/codehaus/jackson/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_1

    .line 568
    .end local v0    # "alias":Lcom/flurry/org/apache/avro/Schema$Name;
    :cond_2
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonGenerator;->writeEndArray()V

    goto :goto_0
.end method

.method computeHash()I
    .locals 2

    .prologue
    .line 560
    invoke-super {p0}, Lcom/flurry/org/apache/avro/Schema;->computeHash()I

    move-result v0

    iget-object v1, p0, Lcom/flurry/org/apache/avro/Schema$NamedSchema;->name:Lcom/flurry/org/apache/avro/Schema$Name;

    invoke-virtual {v1}, Lcom/flurry/org/apache/avro/Schema$Name;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public equalNames(Lcom/flurry/org/apache/avro/Schema$NamedSchema;)Z
    .locals 2
    .param p1, "that"    # Lcom/flurry/org/apache/avro/Schema$NamedSchema;

    .prologue
    .line 557
    iget-object v0, p0, Lcom/flurry/org/apache/avro/Schema$NamedSchema;->name:Lcom/flurry/org/apache/avro/Schema$Name;

    iget-object v1, p1, Lcom/flurry/org/apache/avro/Schema$NamedSchema;->name:Lcom/flurry/org/apache/avro/Schema$Name;

    invoke-virtual {v0, v1}, Lcom/flurry/org/apache/avro/Schema$Name;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getAliases()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 537
    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    .line 538
    .local v2, "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/flurry/org/apache/avro/Schema$NamedSchema;->aliases:Ljava/util/Set;

    if-eqz v3, :cond_0

    .line 539
    iget-object v3, p0, Lcom/flurry/org/apache/avro/Schema$NamedSchema;->aliases:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/org/apache/avro/Schema$Name;

    .line 540
    .local v0, "alias":Lcom/flurry/org/apache/avro/Schema$Name;
    invoke-static {v0}, Lcom/flurry/org/apache/avro/Schema$Name;->access$400(Lcom/flurry/org/apache/avro/Schema$Name;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 541
    .end local v0    # "alias":Lcom/flurry/org/apache/avro/Schema$Name;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    return-object v2
.end method

.method public getDoc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 528
    iget-object v0, p0, Lcom/flurry/org/apache/avro/Schema$NamedSchema;->doc:Ljava/lang/String;

    return-object v0
.end method

.method public getFullName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 530
    iget-object v0, p0, Lcom/flurry/org/apache/avro/Schema$NamedSchema;->name:Lcom/flurry/org/apache/avro/Schema$Name;

    invoke-static {v0}, Lcom/flurry/org/apache/avro/Schema$Name;->access$400(Lcom/flurry/org/apache/avro/Schema$Name;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 527
    iget-object v0, p0, Lcom/flurry/org/apache/avro/Schema$NamedSchema;->name:Lcom/flurry/org/apache/avro/Schema$Name;

    invoke-static {v0}, Lcom/flurry/org/apache/avro/Schema$Name;->access$500(Lcom/flurry/org/apache/avro/Schema$Name;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    .prologue
    .line 529
    iget-object v0, p0, Lcom/flurry/org/apache/avro/Schema$NamedSchema;->name:Lcom/flurry/org/apache/avro/Schema$Name;

    invoke-static {v0}, Lcom/flurry/org/apache/avro/Schema$Name;->access$600(Lcom/flurry/org/apache/avro/Schema$Name;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeName(Lcom/flurry/org/apache/avro/Schema$Names;Lcom/flurry/org/codehaus/jackson/JsonGenerator;)V
    .locals 1
    .param p1, "names"    # Lcom/flurry/org/apache/avro/Schema$Names;
    .param p2, "gen"    # Lcom/flurry/org/codehaus/jackson/JsonGenerator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 554
    iget-object v0, p0, Lcom/flurry/org/apache/avro/Schema$NamedSchema;->name:Lcom/flurry/org/apache/avro/Schema$Name;

    invoke-virtual {v0, p1, p2}, Lcom/flurry/org/apache/avro/Schema$Name;->writeName(Lcom/flurry/org/apache/avro/Schema$Names;Lcom/flurry/org/codehaus/jackson/JsonGenerator;)V

    .line 555
    return-void
.end method

.method public writeNameRef(Lcom/flurry/org/apache/avro/Schema$Names;Lcom/flurry/org/codehaus/jackson/JsonGenerator;)Z
    .locals 2
    .param p1, "names"    # Lcom/flurry/org/apache/avro/Schema$Names;
    .param p2, "gen"    # Lcom/flurry/org/codehaus/jackson/JsonGenerator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 545
    iget-object v0, p0, Lcom/flurry/org/apache/avro/Schema$NamedSchema;->name:Lcom/flurry/org/apache/avro/Schema$Name;

    invoke-virtual {p1, v0}, Lcom/flurry/org/apache/avro/Schema$Names;->get(Ljava/lang/Object;)Lcom/flurry/org/apache/avro/Schema;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flurry/org/apache/avro/Schema$NamedSchema;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 546
    iget-object v0, p0, Lcom/flurry/org/apache/avro/Schema$NamedSchema;->name:Lcom/flurry/org/apache/avro/Schema$Name;

    invoke-virtual {p1}, Lcom/flurry/org/apache/avro/Schema$Names;->space()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/org/apache/avro/Schema$Name;->getQualified(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/flurry/org/codehaus/jackson/JsonGenerator;->writeString(Ljava/lang/String;)V

    .line 547
    const/4 v0, 0x1

    .line 551
    :goto_0
    return v0

    .line 548
    :cond_0
    iget-object v0, p0, Lcom/flurry/org/apache/avro/Schema$NamedSchema;->name:Lcom/flurry/org/apache/avro/Schema$Name;

    invoke-static {v0}, Lcom/flurry/org/apache/avro/Schema$Name;->access$500(Lcom/flurry/org/apache/avro/Schema$Name;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 549
    iget-object v0, p0, Lcom/flurry/org/apache/avro/Schema$NamedSchema;->name:Lcom/flurry/org/apache/avro/Schema$Name;

    invoke-virtual {p1, v0, p0}, Lcom/flurry/org/apache/avro/Schema$Names;->put(Lcom/flurry/org/apache/avro/Schema$Name;Lcom/flurry/org/apache/avro/Schema;)Lcom/flurry/org/apache/avro/Schema;

    .line 551
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
