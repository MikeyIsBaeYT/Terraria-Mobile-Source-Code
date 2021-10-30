.class Lcom/flurry/org/apache/avro/Schema$EnumSchema;
.super Lcom/flurry/org/apache/avro/Schema$NamedSchema;
.source "Schema.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/org/apache/avro/Schema;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EnumSchema"
.end annotation


# instance fields
.field private final ordinals:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final symbols:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/flurry/org/apache/avro/Schema$Name;Ljava/lang/String;Lcom/flurry/org/apache/avro/Schema$LockableArrayList;)V
    .locals 7
    .param p1, "name"    # Lcom/flurry/org/apache/avro/Schema$Name;
    .param p2, "doc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/apache/avro/Schema$Name;",
            "Ljava/lang/String;",
            "Lcom/flurry/org/apache/avro/Schema$LockableArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 714
    .local p3, "symbols":Lcom/flurry/org/apache/avro/Schema$LockableArrayList;, "Lcom/flurry/org/apache/avro/Schema$LockableArrayList<Ljava/lang/String;>;"
    sget-object v4, Lcom/flurry/org/apache/avro/Schema$Type;->ENUM:Lcom/flurry/org/apache/avro/Schema$Type;

    invoke-direct {p0, v4, p1, p2}, Lcom/flurry/org/apache/avro/Schema$NamedSchema;-><init>(Lcom/flurry/org/apache/avro/Schema$Type;Lcom/flurry/org/apache/avro/Schema$Name;Ljava/lang/String;)V

    .line 715
    invoke-virtual {p3}, Lcom/flurry/org/apache/avro/Schema$LockableArrayList;->lock()Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/flurry/org/apache/avro/Schema$EnumSchema;->symbols:Ljava/util/List;

    .line 716
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/flurry/org/apache/avro/Schema$EnumSchema;->ordinals:Ljava/util/Map;

    .line 717
    const/4 v0, 0x0

    .line 718
    .local v0, "i":I
    invoke-virtual {p3}, Lcom/flurry/org/apache/avro/Schema$LockableArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 719
    .local v3, "symbol":Ljava/lang/String;
    iget-object v4, p0, Lcom/flurry/org/apache/avro/Schema$EnumSchema;->ordinals:Ljava/util/Map;

    invoke-static {v3}, Lcom/flurry/org/apache/avro/Schema;->access$200(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 720
    new-instance v4, Lcom/flurry/org/apache/avro/SchemaParseException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Duplicate enum symbol: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/flurry/org/apache/avro/SchemaParseException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    move v0, v1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    goto :goto_0

    .line 721
    .end local v3    # "symbol":Ljava/lang/String;
    :cond_1
    return-void
.end method


# virtual methods
.method computeHash()I
    .locals 2

    .prologue
    .line 735
    invoke-super {p0}, Lcom/flurry/org/apache/avro/Schema$NamedSchema;->computeHash()I

    move-result v0

    iget-object v1, p0, Lcom/flurry/org/apache/avro/Schema$EnumSchema;->symbols:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 727
    if-ne p1, p0, :cond_1

    .line 730
    :cond_0
    :goto_0
    return v1

    .line 728
    :cond_1
    instance-of v3, p1, Lcom/flurry/org/apache/avro/Schema$EnumSchema;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 729
    check-cast v0, Lcom/flurry/org/apache/avro/Schema$EnumSchema;

    .line 730
    .local v0, "that":Lcom/flurry/org/apache/avro/Schema$EnumSchema;
    invoke-virtual {p0, v0}, Lcom/flurry/org/apache/avro/Schema$EnumSchema;->equalCachedHash(Lcom/flurry/org/apache/avro/Schema;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0, v0}, Lcom/flurry/org/apache/avro/Schema$EnumSchema;->equalNames(Lcom/flurry/org/apache/avro/Schema$NamedSchema;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/flurry/org/apache/avro/Schema$EnumSchema;->symbols:Ljava/util/List;

    iget-object v4, v0, Lcom/flurry/org/apache/avro/Schema$EnumSchema;->symbols:Ljava/util/List;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/flurry/org/apache/avro/Schema$EnumSchema;->props:Lcom/flurry/org/apache/avro/Schema$Props;

    iget-object v4, v0, Lcom/flurry/org/apache/avro/Schema$EnumSchema;->props:Lcom/flurry/org/apache/avro/Schema$Props;

    invoke-virtual {v3, v4}, Lcom/flurry/org/apache/avro/Schema$Props;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public getEnumOrdinal(Ljava/lang/String;)I
    .locals 1
    .param p1, "symbol"    # Ljava/lang/String;

    .prologue
    .line 725
    iget-object v0, p0, Lcom/flurry/org/apache/avro/Schema$EnumSchema;->ordinals:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getEnumSymbols()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 722
    iget-object v0, p0, Lcom/flurry/org/apache/avro/Schema$EnumSchema;->symbols:Ljava/util/List;

    return-object v0
.end method

.method public hasEnumSymbol(Ljava/lang/String;)Z
    .locals 1
    .param p1, "symbol"    # Ljava/lang/String;

    .prologue
    .line 724
    iget-object v0, p0, Lcom/flurry/org/apache/avro/Schema$EnumSchema;->ordinals:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method toJson(Lcom/flurry/org/apache/avro/Schema$Names;Lcom/flurry/org/codehaus/jackson/JsonGenerator;)V
    .locals 4
    .param p1, "names"    # Lcom/flurry/org/apache/avro/Schema$Names;
    .param p2, "gen"    # Lcom/flurry/org/codehaus/jackson/JsonGenerator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 737
    invoke-virtual {p0, p1, p2}, Lcom/flurry/org/apache/avro/Schema$EnumSchema;->writeNameRef(Lcom/flurry/org/apache/avro/Schema$Names;Lcom/flurry/org/codehaus/jackson/JsonGenerator;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 750
    :goto_0
    return-void

    .line 738
    :cond_0
    invoke-virtual {p2}, Lcom/flurry/org/codehaus/jackson/JsonGenerator;->writeStartObject()V

    .line 739
    const-string v2, "type"

    const-string v3, "enum"

    invoke-virtual {p2, v2, v3}, Lcom/flurry/org/codehaus/jackson/JsonGenerator;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    .line 740
    invoke-virtual {p0, p1, p2}, Lcom/flurry/org/apache/avro/Schema$EnumSchema;->writeName(Lcom/flurry/org/apache/avro/Schema$Names;Lcom/flurry/org/codehaus/jackson/JsonGenerator;)V

    .line 741
    invoke-virtual {p0}, Lcom/flurry/org/apache/avro/Schema$EnumSchema;->getDoc()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 742
    const-string v2, "doc"

    invoke-virtual {p0}, Lcom/flurry/org/apache/avro/Schema$EnumSchema;->getDoc()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Lcom/flurry/org/codehaus/jackson/JsonGenerator;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    .line 743
    :cond_1
    const-string v2, "symbols"

    invoke-virtual {p2, v2}, Lcom/flurry/org/codehaus/jackson/JsonGenerator;->writeArrayFieldStart(Ljava/lang/String;)V

    .line 744
    iget-object v2, p0, Lcom/flurry/org/apache/avro/Schema$EnumSchema;->symbols:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 745
    .local v1, "symbol":Ljava/lang/String;
    invoke-virtual {p2, v1}, Lcom/flurry/org/codehaus/jackson/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_1

    .line 746
    .end local v1    # "symbol":Ljava/lang/String;
    :cond_2
    invoke-virtual {p2}, Lcom/flurry/org/codehaus/jackson/JsonGenerator;->writeEndArray()V

    .line 747
    iget-object v2, p0, Lcom/flurry/org/apache/avro/Schema$EnumSchema;->props:Lcom/flurry/org/apache/avro/Schema$Props;

    invoke-virtual {v2, p2}, Lcom/flurry/org/apache/avro/Schema$Props;->write(Lcom/flurry/org/codehaus/jackson/JsonGenerator;)V

    .line 748
    invoke-virtual {p0, p2}, Lcom/flurry/org/apache/avro/Schema$EnumSchema;->aliasesToJson(Lcom/flurry/org/codehaus/jackson/JsonGenerator;)V

    .line 749
    invoke-virtual {p2}, Lcom/flurry/org/codehaus/jackson/JsonGenerator;->writeEndObject()V

    goto :goto_0
.end method
