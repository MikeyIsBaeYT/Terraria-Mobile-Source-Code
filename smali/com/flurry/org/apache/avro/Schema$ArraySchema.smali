.class Lcom/flurry/org/apache/avro/Schema$ArraySchema;
.super Lcom/flurry/org/apache/avro/Schema;
.source "Schema.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/org/apache/avro/Schema;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ArraySchema"
.end annotation


# instance fields
.field private final elementType:Lcom/flurry/org/apache/avro/Schema;


# direct methods
.method public constructor <init>(Lcom/flurry/org/apache/avro/Schema;)V
    .locals 1
    .param p1, "elementType"    # Lcom/flurry/org/apache/avro/Schema;

    .prologue
    .line 756
    sget-object v0, Lcom/flurry/org/apache/avro/Schema$Type;->ARRAY:Lcom/flurry/org/apache/avro/Schema$Type;

    invoke-direct {p0, v0}, Lcom/flurry/org/apache/avro/Schema;-><init>(Lcom/flurry/org/apache/avro/Schema$Type;)V

    .line 757
    iput-object p1, p0, Lcom/flurry/org/apache/avro/Schema$ArraySchema;->elementType:Lcom/flurry/org/apache/avro/Schema;

    .line 758
    return-void
.end method


# virtual methods
.method computeHash()I
    .locals 2

    .prologue
    .line 769
    invoke-super {p0}, Lcom/flurry/org/apache/avro/Schema;->computeHash()I

    move-result v0

    iget-object v1, p0, Lcom/flurry/org/apache/avro/Schema$ArraySchema;->elementType:Lcom/flurry/org/apache/avro/Schema;

    invoke-virtual {v1}, Lcom/flurry/org/apache/avro/Schema;->computeHash()I

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

    .line 761
    if-ne p1, p0, :cond_1

    .line 764
    :cond_0
    :goto_0
    return v1

    .line 762
    :cond_1
    instance-of v3, p1, Lcom/flurry/org/apache/avro/Schema$ArraySchema;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 763
    check-cast v0, Lcom/flurry/org/apache/avro/Schema$ArraySchema;

    .line 764
    .local v0, "that":Lcom/flurry/org/apache/avro/Schema$ArraySchema;
    invoke-virtual {p0, v0}, Lcom/flurry/org/apache/avro/Schema$ArraySchema;->equalCachedHash(Lcom/flurry/org/apache/avro/Schema;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/flurry/org/apache/avro/Schema$ArraySchema;->elementType:Lcom/flurry/org/apache/avro/Schema;

    iget-object v4, v0, Lcom/flurry/org/apache/avro/Schema$ArraySchema;->elementType:Lcom/flurry/org/apache/avro/Schema;

    invoke-virtual {v3, v4}, Lcom/flurry/org/apache/avro/Schema;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/flurry/org/apache/avro/Schema$ArraySchema;->props:Lcom/flurry/org/apache/avro/Schema$Props;

    iget-object v4, v0, Lcom/flurry/org/apache/avro/Schema$ArraySchema;->props:Lcom/flurry/org/apache/avro/Schema$Props;

    invoke-virtual {v3, v4}, Lcom/flurry/org/apache/avro/Schema$Props;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public getElementType()Lcom/flurry/org/apache/avro/Schema;
    .locals 1

    .prologue
    .line 759
    iget-object v0, p0, Lcom/flurry/org/apache/avro/Schema$ArraySchema;->elementType:Lcom/flurry/org/apache/avro/Schema;

    return-object v0
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
    .line 772
    invoke-virtual {p2}, Lcom/flurry/org/codehaus/jackson/JsonGenerator;->writeStartObject()V

    .line 773
    const-string v0, "type"

    const-string v1, "array"

    invoke-virtual {p2, v0, v1}, Lcom/flurry/org/codehaus/jackson/JsonGenerator;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    .line 774
    const-string v0, "items"

    invoke-virtual {p2, v0}, Lcom/flurry/org/codehaus/jackson/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 775
    iget-object v0, p0, Lcom/flurry/org/apache/avro/Schema$ArraySchema;->elementType:Lcom/flurry/org/apache/avro/Schema;

    invoke-virtual {v0, p1, p2}, Lcom/flurry/org/apache/avro/Schema;->toJson(Lcom/flurry/org/apache/avro/Schema$Names;Lcom/flurry/org/codehaus/jackson/JsonGenerator;)V

    .line 776
    iget-object v0, p0, Lcom/flurry/org/apache/avro/Schema$ArraySchema;->props:Lcom/flurry/org/apache/avro/Schema$Props;

    invoke-virtual {v0, p2}, Lcom/flurry/org/apache/avro/Schema$Props;->write(Lcom/flurry/org/codehaus/jackson/JsonGenerator;)V

    .line 777
    invoke-virtual {p2}, Lcom/flurry/org/codehaus/jackson/JsonGenerator;->writeEndObject()V

    .line 778
    return-void
.end method
