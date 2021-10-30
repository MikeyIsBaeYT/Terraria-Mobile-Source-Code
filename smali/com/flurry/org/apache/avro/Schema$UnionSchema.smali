.class Lcom/flurry/org/apache/avro/Schema$UnionSchema;
.super Lcom/flurry/org/apache/avro/Schema;
.source "Schema.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/org/apache/avro/Schema;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UnionSchema"
.end annotation


# instance fields
.field private final indexByName:Ljava/util/Map;
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

.field private final types:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/flurry/org/apache/avro/Schema;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/flurry/org/apache/avro/Schema$LockableArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/apache/avro/Schema$LockableArrayList",
            "<",
            "Lcom/flurry/org/apache/avro/Schema;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 814
    .local p1, "types":Lcom/flurry/org/apache/avro/Schema$LockableArrayList;, "Lcom/flurry/org/apache/avro/Schema$LockableArrayList<Lcom/flurry/org/apache/avro/Schema;>;"
    sget-object v5, Lcom/flurry/org/apache/avro/Schema$Type;->UNION:Lcom/flurry/org/apache/avro/Schema$Type;

    invoke-direct {p0, v5}, Lcom/flurry/org/apache/avro/Schema;-><init>(Lcom/flurry/org/apache/avro/Schema$Type;)V

    .line 811
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lcom/flurry/org/apache/avro/Schema$UnionSchema;->indexByName:Ljava/util/Map;

    .line 815
    invoke-virtual {p1}, Lcom/flurry/org/apache/avro/Schema$LockableArrayList;->lock()Ljava/util/List;

    move-result-object v5

    iput-object v5, p0, Lcom/flurry/org/apache/avro/Schema$UnionSchema;->types:Ljava/util/List;

    .line 816
    const/4 v1, 0x0

    .line 817
    .local v1, "index":I
    invoke-virtual {p1}, Lcom/flurry/org/apache/avro/Schema$LockableArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/flurry/org/apache/avro/Schema;

    .line 818
    .local v4, "type":Lcom/flurry/org/apache/avro/Schema;
    invoke-virtual {v4}, Lcom/flurry/org/apache/avro/Schema;->getType()Lcom/flurry/org/apache/avro/Schema$Type;

    move-result-object v5

    sget-object v6, Lcom/flurry/org/apache/avro/Schema$Type;->UNION:Lcom/flurry/org/apache/avro/Schema$Type;

    if-ne v5, v6, :cond_0

    .line 819
    new-instance v5, Lcom/flurry/org/apache/avro/AvroRuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Nested union: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/flurry/org/apache/avro/AvroRuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 820
    :cond_0
    invoke-virtual {v4}, Lcom/flurry/org/apache/avro/Schema;->getFullName()Ljava/lang/String;

    move-result-object v3

    .line 821
    .local v3, "name":Ljava/lang/String;
    if-nez v3, :cond_1

    .line 822
    new-instance v5, Lcom/flurry/org/apache/avro/AvroRuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Nameless in union:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/flurry/org/apache/avro/AvroRuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 823
    :cond_1
    iget-object v5, p0, Lcom/flurry/org/apache/avro/Schema$UnionSchema;->indexByName:Ljava/util/Map;

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "index":I
    .local v2, "index":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 824
    new-instance v5, Lcom/flurry/org/apache/avro/AvroRuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Duplicate in union:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/flurry/org/apache/avro/AvroRuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_2
    move v1, v2

    .line 825
    .end local v2    # "index":I
    .restart local v1    # "index":I
    goto :goto_0

    .line 826
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "type":Lcom/flurry/org/apache/avro/Schema;
    :cond_3
    return-void
.end method


# virtual methods
.method public addProp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 846
    new-instance v0, Lcom/flurry/org/apache/avro/AvroRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t set properties on a union: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/flurry/org/apache/avro/AvroRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method computeHash()I
    .locals 4

    .prologue
    .line 838
    invoke-super {p0}, Lcom/flurry/org/apache/avro/Schema;->computeHash()I

    move-result v0

    .line 839
    .local v0, "hash":I
    iget-object v3, p0, Lcom/flurry/org/apache/avro/Schema$UnionSchema;->types:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/flurry/org/apache/avro/Schema;

    .line 840
    .local v2, "type":Lcom/flurry/org/apache/avro/Schema;
    invoke-virtual {v2}, Lcom/flurry/org/apache/avro/Schema;->computeHash()I

    move-result v3

    add-int/2addr v0, v3

    goto :goto_0

    .line 841
    .end local v2    # "type":Lcom/flurry/org/apache/avro/Schema;
    :cond_0
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 830
    if-ne p1, p0, :cond_1

    .line 833
    :cond_0
    :goto_0
    return v1

    .line 831
    :cond_1
    instance-of v3, p1, Lcom/flurry/org/apache/avro/Schema$UnionSchema;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 832
    check-cast v0, Lcom/flurry/org/apache/avro/Schema$UnionSchema;

    .line 833
    .local v0, "that":Lcom/flurry/org/apache/avro/Schema$UnionSchema;
    invoke-virtual {p0, v0}, Lcom/flurry/org/apache/avro/Schema$UnionSchema;->equalCachedHash(Lcom/flurry/org/apache/avro/Schema;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/flurry/org/apache/avro/Schema$UnionSchema;->types:Ljava/util/List;

    iget-object v4, v0, Lcom/flurry/org/apache/avro/Schema$UnionSchema;->types:Ljava/util/List;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/flurry/org/apache/avro/Schema$UnionSchema;->props:Lcom/flurry/org/apache/avro/Schema$Props;

    iget-object v4, v0, Lcom/flurry/org/apache/avro/Schema$UnionSchema;->props:Lcom/flurry/org/apache/avro/Schema$Props;

    invoke-virtual {v3, v4}, Lcom/flurry/org/apache/avro/Schema$Props;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public getIndexNamed(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 828
    iget-object v0, p0, Lcom/flurry/org/apache/avro/Schema$UnionSchema;->indexByName:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public getTypes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/org/apache/avro/Schema;",
            ">;"
        }
    .end annotation

    .prologue
    .line 827
    iget-object v0, p0, Lcom/flurry/org/apache/avro/Schema$UnionSchema;->types:Ljava/util/List;

    return-object v0
.end method

.method toJson(Lcom/flurry/org/apache/avro/Schema$Names;Lcom/flurry/org/codehaus/jackson/JsonGenerator;)V
    .locals 3
    .param p1, "names"    # Lcom/flurry/org/apache/avro/Schema$Names;
    .param p2, "gen"    # Lcom/flurry/org/codehaus/jackson/JsonGenerator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 850
    invoke-virtual {p2}, Lcom/flurry/org/codehaus/jackson/JsonGenerator;->writeStartArray()V

    .line 851
    iget-object v2, p0, Lcom/flurry/org/apache/avro/Schema$UnionSchema;->types:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flurry/org/apache/avro/Schema;

    .line 852
    .local v1, "type":Lcom/flurry/org/apache/avro/Schema;
    invoke-virtual {v1, p1, p2}, Lcom/flurry/org/apache/avro/Schema;->toJson(Lcom/flurry/org/apache/avro/Schema$Names;Lcom/flurry/org/codehaus/jackson/JsonGenerator;)V

    goto :goto_0

    .line 853
    .end local v1    # "type":Lcom/flurry/org/apache/avro/Schema;
    :cond_0
    invoke-virtual {p2}, Lcom/flurry/org/codehaus/jackson/JsonGenerator;->writeEndArray()V

    .line 854
    return-void
.end method
