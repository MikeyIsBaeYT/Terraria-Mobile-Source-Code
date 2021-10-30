.class Lcom/flurry/org/apache/avro/Schema$FixedSchema;
.super Lcom/flurry/org/apache/avro/Schema$NamedSchema;
.source "Schema.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/org/apache/avro/Schema;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FixedSchema"
.end annotation


# instance fields
.field private final size:I


# direct methods
.method public constructor <init>(Lcom/flurry/org/apache/avro/Schema$Name;Ljava/lang/String;I)V
    .locals 3
    .param p1, "name"    # Lcom/flurry/org/apache/avro/Schema$Name;
    .param p2, "doc"    # Ljava/lang/String;
    .param p3, "size"    # I

    .prologue
    .line 860
    sget-object v0, Lcom/flurry/org/apache/avro/Schema$Type;->FIXED:Lcom/flurry/org/apache/avro/Schema$Type;

    invoke-direct {p0, v0, p1, p2}, Lcom/flurry/org/apache/avro/Schema$NamedSchema;-><init>(Lcom/flurry/org/apache/avro/Schema$Type;Lcom/flurry/org/apache/avro/Schema$Name;Ljava/lang/String;)V

    .line 861
    if-gez p3, :cond_0

    .line 862
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid fixed size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 863
    :cond_0
    iput p3, p0, Lcom/flurry/org/apache/avro/Schema$FixedSchema;->size:I

    .line 864
    return-void
.end method


# virtual methods
.method computeHash()I
    .locals 2

    .prologue
    .line 875
    invoke-super {p0}, Lcom/flurry/org/apache/avro/Schema$NamedSchema;->computeHash()I

    move-result v0

    iget v1, p0, Lcom/flurry/org/apache/avro/Schema$FixedSchema;->size:I

    add-int/2addr v0, v1

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 867
    if-ne p1, p0, :cond_1

    .line 870
    :cond_0
    :goto_0
    return v1

    .line 868
    :cond_1
    instance-of v3, p1, Lcom/flurry/org/apache/avro/Schema$FixedSchema;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 869
    check-cast v0, Lcom/flurry/org/apache/avro/Schema$FixedSchema;

    .line 870
    .local v0, "that":Lcom/flurry/org/apache/avro/Schema$FixedSchema;
    invoke-virtual {p0, v0}, Lcom/flurry/org/apache/avro/Schema$FixedSchema;->equalCachedHash(Lcom/flurry/org/apache/avro/Schema;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0, v0}, Lcom/flurry/org/apache/avro/Schema$FixedSchema;->equalNames(Lcom/flurry/org/apache/avro/Schema$NamedSchema;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/flurry/org/apache/avro/Schema$FixedSchema;->size:I

    iget v4, v0, Lcom/flurry/org/apache/avro/Schema$FixedSchema;->size:I

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/flurry/org/apache/avro/Schema$FixedSchema;->props:Lcom/flurry/org/apache/avro/Schema$Props;

    iget-object v4, v0, Lcom/flurry/org/apache/avro/Schema$FixedSchema;->props:Lcom/flurry/org/apache/avro/Schema$Props;

    invoke-virtual {v3, v4}, Lcom/flurry/org/apache/avro/Schema$Props;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public getFixedSize()I
    .locals 1

    .prologue
    .line 865
    iget v0, p0, Lcom/flurry/org/apache/avro/Schema$FixedSchema;->size:I

    return v0
.end method

.method toJson(Lcom/flurry/org/apache/avro/Schema$Names;Lcom/flurry/org/codehaus/jackson/JsonGenerator;)V
    .locals 2
    .param p1, "names"    # Lcom/flurry/org/apache/avro/Schema$Names;
    .param p2, "gen"    # Lcom/flurry/org/codehaus/jackson/JsonGenerator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 877
    invoke-virtual {p0, p1, p2}, Lcom/flurry/org/apache/avro/Schema$FixedSchema;->writeNameRef(Lcom/flurry/org/apache/avro/Schema$Names;Lcom/flurry/org/codehaus/jackson/JsonGenerator;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 887
    :goto_0
    return-void

    .line 878
    :cond_0
    invoke-virtual {p2}, Lcom/flurry/org/codehaus/jackson/JsonGenerator;->writeStartObject()V

    .line 879
    const-string v0, "type"

    const-string v1, "fixed"

    invoke-virtual {p2, v0, v1}, Lcom/flurry/org/codehaus/jackson/JsonGenerator;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    .line 880
    invoke-virtual {p0, p1, p2}, Lcom/flurry/org/apache/avro/Schema$FixedSchema;->writeName(Lcom/flurry/org/apache/avro/Schema$Names;Lcom/flurry/org/codehaus/jackson/JsonGenerator;)V

    .line 881
    invoke-virtual {p0}, Lcom/flurry/org/apache/avro/Schema$FixedSchema;->getDoc()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 882
    const-string v0, "doc"

    invoke-virtual {p0}, Lcom/flurry/org/apache/avro/Schema$FixedSchema;->getDoc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/flurry/org/codehaus/jackson/JsonGenerator;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    .line 883
    :cond_1
    const-string v0, "size"

    iget v1, p0, Lcom/flurry/org/apache/avro/Schema$FixedSchema;->size:I

    invoke-virtual {p2, v0, v1}, Lcom/flurry/org/codehaus/jackson/JsonGenerator;->writeNumberField(Ljava/lang/String;I)V

    .line 884
    iget-object v0, p0, Lcom/flurry/org/apache/avro/Schema$FixedSchema;->props:Lcom/flurry/org/apache/avro/Schema$Props;

    invoke-virtual {v0, p2}, Lcom/flurry/org/apache/avro/Schema$Props;->write(Lcom/flurry/org/codehaus/jackson/JsonGenerator;)V

    .line 885
    invoke-virtual {p0, p2}, Lcom/flurry/org/apache/avro/Schema$FixedSchema;->aliasesToJson(Lcom/flurry/org/codehaus/jackson/JsonGenerator;)V

    .line 886
    invoke-virtual {p2}, Lcom/flurry/org/codehaus/jackson/JsonGenerator;->writeEndObject()V

    goto :goto_0
.end method
