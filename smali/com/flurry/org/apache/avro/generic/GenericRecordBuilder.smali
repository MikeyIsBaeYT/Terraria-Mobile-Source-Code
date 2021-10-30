.class public Lcom/flurry/org/apache/avro/generic/GenericRecordBuilder;
.super Lcom/flurry/org/apache/avro/data/RecordBuilderBase;
.source "GenericRecordBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/flurry/org/apache/avro/data/RecordBuilderBase",
        "<",
        "Lcom/flurry/org/apache/avro/generic/GenericData$Record;",
        ">;"
    }
.end annotation


# instance fields
.field private final record:Lcom/flurry/org/apache/avro/generic/GenericData$Record;


# direct methods
.method public constructor <init>(Lcom/flurry/org/apache/avro/Schema;)V
    .locals 1
    .param p1, "schema"    # Lcom/flurry/org/apache/avro/Schema;

    .prologue
    .line 37
    invoke-static {}, Lcom/flurry/org/apache/avro/generic/GenericData;->get()Lcom/flurry/org/apache/avro/generic/GenericData;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/flurry/org/apache/avro/data/RecordBuilderBase;-><init>(Lcom/flurry/org/apache/avro/Schema;Lcom/flurry/org/apache/avro/generic/GenericData;)V

    .line 38
    new-instance v0, Lcom/flurry/org/apache/avro/generic/GenericData$Record;

    invoke-direct {v0, p1}, Lcom/flurry/org/apache/avro/generic/GenericData$Record;-><init>(Lcom/flurry/org/apache/avro/Schema;)V

    iput-object v0, p0, Lcom/flurry/org/apache/avro/generic/GenericRecordBuilder;->record:Lcom/flurry/org/apache/avro/generic/GenericData$Record;

    .line 39
    return-void
.end method

.method public constructor <init>(Lcom/flurry/org/apache/avro/generic/GenericData$Record;)V
    .locals 5
    .param p1, "other"    # Lcom/flurry/org/apache/avro/generic/GenericData$Record;

    .prologue
    .line 55
    invoke-virtual {p1}, Lcom/flurry/org/apache/avro/generic/GenericData$Record;->getSchema()Lcom/flurry/org/apache/avro/Schema;

    move-result-object v3

    invoke-static {}, Lcom/flurry/org/apache/avro/generic/GenericData;->get()Lcom/flurry/org/apache/avro/generic/GenericData;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/flurry/org/apache/avro/data/RecordBuilderBase;-><init>(Lcom/flurry/org/apache/avro/Schema;Lcom/flurry/org/apache/avro/generic/GenericData;)V

    .line 56
    new-instance v3, Lcom/flurry/org/apache/avro/generic/GenericData$Record;

    const/4 v4, 0x1

    invoke-direct {v3, p1, v4}, Lcom/flurry/org/apache/avro/generic/GenericData$Record;-><init>(Lcom/flurry/org/apache/avro/generic/GenericData$Record;Z)V

    iput-object v3, p0, Lcom/flurry/org/apache/avro/generic/GenericRecordBuilder;->record:Lcom/flurry/org/apache/avro/generic/GenericData$Record;

    .line 59
    invoke-virtual {p0}, Lcom/flurry/org/apache/avro/generic/GenericRecordBuilder;->schema()Lcom/flurry/org/apache/avro/Schema;

    move-result-object v3

    invoke-virtual {v3}, Lcom/flurry/org/apache/avro/Schema;->getFields()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/org/apache/avro/Schema$Field;

    .line 60
    .local v0, "f":Lcom/flurry/org/apache/avro/Schema$Field;
    invoke-virtual {v0}, Lcom/flurry/org/apache/avro/Schema$Field;->pos()I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/flurry/org/apache/avro/generic/GenericData$Record;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 63
    .local v2, "value":Ljava/lang/Object;
    invoke-static {v0, v2}, Lcom/flurry/org/apache/avro/generic/GenericRecordBuilder;->isValidValue(Lcom/flurry/org/apache/avro/Schema$Field;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 64
    invoke-virtual {p0}, Lcom/flurry/org/apache/avro/generic/GenericRecordBuilder;->data()Lcom/flurry/org/apache/avro/generic/GenericData;

    move-result-object v3

    invoke-virtual {v0}, Lcom/flurry/org/apache/avro/Schema$Field;->schema()Lcom/flurry/org/apache/avro/Schema;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lcom/flurry/org/apache/avro/generic/GenericData;->deepCopy(Lcom/flurry/org/apache/avro/Schema;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v0, v3}, Lcom/flurry/org/apache/avro/generic/GenericRecordBuilder;->set(Lcom/flurry/org/apache/avro/Schema$Field;Ljava/lang/Object;)Lcom/flurry/org/apache/avro/generic/GenericRecordBuilder;

    goto :goto_0

    .line 67
    .end local v0    # "f":Lcom/flurry/org/apache/avro/Schema$Field;
    .end local v2    # "value":Ljava/lang/Object;
    :cond_1
    return-void
.end method

.method public constructor <init>(Lcom/flurry/org/apache/avro/generic/GenericRecordBuilder;)V
    .locals 3
    .param p1, "other"    # Lcom/flurry/org/apache/avro/generic/GenericRecordBuilder;

    .prologue
    .line 46
    invoke-static {}, Lcom/flurry/org/apache/avro/generic/GenericData;->get()Lcom/flurry/org/apache/avro/generic/GenericData;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/flurry/org/apache/avro/data/RecordBuilderBase;-><init>(Lcom/flurry/org/apache/avro/data/RecordBuilderBase;Lcom/flurry/org/apache/avro/generic/GenericData;)V

    .line 47
    new-instance v0, Lcom/flurry/org/apache/avro/generic/GenericData$Record;

    iget-object v1, p1, Lcom/flurry/org/apache/avro/generic/GenericRecordBuilder;->record:Lcom/flurry/org/apache/avro/generic/GenericData$Record;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/flurry/org/apache/avro/generic/GenericData$Record;-><init>(Lcom/flurry/org/apache/avro/generic/GenericData$Record;Z)V

    iput-object v0, p0, Lcom/flurry/org/apache/avro/generic/GenericRecordBuilder;->record:Lcom/flurry/org/apache/avro/generic/GenericData$Record;

    .line 48
    return-void
.end method

.method private getWithDefault(Lcom/flurry/org/apache/avro/Schema$Field;)Ljava/lang/Object;
    .locals 2
    .param p1, "field"    # Lcom/flurry/org/apache/avro/Schema$Field;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 231
    invoke-virtual {p0}, Lcom/flurry/org/apache/avro/generic/GenericRecordBuilder;->fieldSetFlags()[Z

    move-result-object v0

    invoke-virtual {p1}, Lcom/flurry/org/apache/avro/Schema$Field;->pos()I

    move-result v1

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/org/apache/avro/generic/GenericRecordBuilder;->record:Lcom/flurry/org/apache/avro/generic/GenericData$Record;

    invoke-virtual {p1}, Lcom/flurry/org/apache/avro/Schema$Field;->pos()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/flurry/org/apache/avro/generic/GenericData$Record;->get(I)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/flurry/org/apache/avro/generic/GenericRecordBuilder;->defaultValue(Lcom/flurry/org/apache/avro/Schema$Field;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method private set(Lcom/flurry/org/apache/avro/Schema$Field;ILjava/lang/Object;)Lcom/flurry/org/apache/avro/generic/GenericRecordBuilder;
    .locals 2
    .param p1, "field"    # Lcom/flurry/org/apache/avro/Schema$Field;
    .param p2, "pos"    # I
    .param p3, "value"    # Ljava/lang/Object;

    .prologue
    .line 134
    invoke-virtual {p0, p1, p3}, Lcom/flurry/org/apache/avro/generic/GenericRecordBuilder;->validate(Lcom/flurry/org/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 135
    iget-object v0, p0, Lcom/flurry/org/apache/avro/generic/GenericRecordBuilder;->record:Lcom/flurry/org/apache/avro/generic/GenericData$Record;

    invoke-virtual {v0, p2, p3}, Lcom/flurry/org/apache/avro/generic/GenericData$Record;->put(ILjava/lang/Object;)V

    .line 136
    invoke-virtual {p0}, Lcom/flurry/org/apache/avro/generic/GenericRecordBuilder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x1

    aput-boolean v1, v0, p2

    .line 137
    return-object p0
.end method


# virtual methods
.method public build()Lcom/flurry/org/apache/avro/generic/GenericData$Record;
    .locals 8

    .prologue
    .line 200
    :try_start_0
    new-instance v5, Lcom/flurry/org/apache/avro/generic/GenericData$Record;

    invoke-virtual {p0}, Lcom/flurry/org/apache/avro/generic/GenericRecordBuilder;->schema()Lcom/flurry/org/apache/avro/Schema;

    move-result-object v7

    invoke-direct {v5, v7}, Lcom/flurry/org/apache/avro/generic/GenericData$Record;-><init>(Lcom/flurry/org/apache/avro/Schema;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    .local v5, "record":Lcom/flurry/org/apache/avro/generic/GenericData$Record;
    invoke-virtual {p0}, Lcom/flurry/org/apache/avro/generic/GenericRecordBuilder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    .local v0, "arr$":[Lcom/flurry/org/apache/avro/Schema$Field;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v2, v0, v3

    .line 208
    .local v2, "field":Lcom/flurry/org/apache/avro/Schema$Field;
    :try_start_1
    invoke-direct {p0, v2}, Lcom/flurry/org/apache/avro/generic/GenericRecordBuilder;->getWithDefault(Lcom/flurry/org/apache/avro/Schema$Field;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v6

    .line 212
    .local v6, "value":Ljava/lang/Object;
    if-eqz v6, :cond_0

    .line 213
    invoke-virtual {v2}, Lcom/flurry/org/apache/avro/Schema$Field;->pos()I

    move-result v7

    invoke-virtual {v5, v7, v6}, Lcom/flurry/org/apache/avro/generic/GenericData$Record;->put(ILjava/lang/Object;)V

    .line 205
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 201
    .end local v0    # "arr$":[Lcom/flurry/org/apache/avro/Schema$Field;
    .end local v2    # "field":Lcom/flurry/org/apache/avro/Schema$Field;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "record":Lcom/flurry/org/apache/avro/generic/GenericData$Record;
    .end local v6    # "value":Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 202
    .local v1, "e":Ljava/lang/Exception;
    new-instance v7, Lcom/flurry/org/apache/avro/AvroRuntimeException;

    invoke-direct {v7, v1}, Lcom/flurry/org/apache/avro/AvroRuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 209
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "arr$":[Lcom/flurry/org/apache/avro/Schema$Field;
    .restart local v2    # "field":Lcom/flurry/org/apache/avro/Schema$Field;
    .restart local v3    # "i$":I
    .restart local v4    # "len$":I
    .restart local v5    # "record":Lcom/flurry/org/apache/avro/generic/GenericData$Record;
    :catch_1
    move-exception v1

    .line 210
    .local v1, "e":Ljava/io/IOException;
    new-instance v7, Lcom/flurry/org/apache/avro/AvroRuntimeException;

    invoke-direct {v7, v1}, Lcom/flurry/org/apache/avro/AvroRuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 217
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "field":Lcom/flurry/org/apache/avro/Schema$Field;
    :cond_1
    return-object v5
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/flurry/org/apache/avro/generic/GenericRecordBuilder;->build()Lcom/flurry/org/apache/avro/generic/GenericData$Record;

    move-result-object v0

    return-object v0
.end method

.method protected clear(I)Lcom/flurry/org/apache/avro/generic/GenericRecordBuilder;
    .locals 2
    .param p1, "pos"    # I

    .prologue
    .line 191
    iget-object v0, p0, Lcom/flurry/org/apache/avro/generic/GenericRecordBuilder;->record:Lcom/flurry/org/apache/avro/generic/GenericData$Record;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/flurry/org/apache/avro/generic/GenericData$Record;->put(ILjava/lang/Object;)V

    .line 192
    invoke-virtual {p0}, Lcom/flurry/org/apache/avro/generic/GenericRecordBuilder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x0

    aput-boolean v1, v0, p1

    .line 193
    return-object p0
.end method

.method public clear(Lcom/flurry/org/apache/avro/Schema$Field;)Lcom/flurry/org/apache/avro/generic/GenericRecordBuilder;
    .locals 1
    .param p1, "field"    # Lcom/flurry/org/apache/avro/Schema$Field;

    .prologue
    .line 182
    invoke-virtual {p1}, Lcom/flurry/org/apache/avro/Schema$Field;->pos()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/flurry/org/apache/avro/generic/GenericRecordBuilder;->clear(I)Lcom/flurry/org/apache/avro/generic/GenericRecordBuilder;

    move-result-object v0

    return-object v0
.end method

.method public clear(Ljava/lang/String;)Lcom/flurry/org/apache/avro/generic/GenericRecordBuilder;
    .locals 1
    .param p1, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 173
    invoke-virtual {p0}, Lcom/flurry/org/apache/avro/generic/GenericRecordBuilder;->schema()Lcom/flurry/org/apache/avro/Schema;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/flurry/org/apache/avro/Schema;->getField(Ljava/lang/String;)Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flurry/org/apache/avro/generic/GenericRecordBuilder;->clear(Lcom/flurry/org/apache/avro/Schema$Field;)Lcom/flurry/org/apache/avro/generic/GenericRecordBuilder;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 245
    if-ne p0, p1, :cond_1

    .line 257
    :cond_0
    :goto_0
    return v1

    .line 247
    :cond_1
    invoke-super {p0, p1}, Lcom/flurry/org/apache/avro/data/RecordBuilderBase;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    move v1, v2

    .line 248
    goto :goto_0

    .line 249
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 250
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 251
    check-cast v0, Lcom/flurry/org/apache/avro/generic/GenericRecordBuilder;

    .line 252
    .local v0, "other":Lcom/flurry/org/apache/avro/generic/GenericRecordBuilder;
    iget-object v3, p0, Lcom/flurry/org/apache/avro/generic/GenericRecordBuilder;->record:Lcom/flurry/org/apache/avro/generic/GenericData$Record;

    if-nez v3, :cond_4

    .line 253
    iget-object v3, v0, Lcom/flurry/org/apache/avro/generic/GenericRecordBuilder;->record:Lcom/flurry/org/apache/avro/generic/GenericData$Record;

    if-eqz v3, :cond_0

    move v1, v2

    .line 254
    goto :goto_0

    .line 255
    :cond_4
    iget-object v3, p0, Lcom/flurry/org/apache/avro/generic/GenericRecordBuilder;->record:Lcom/flurry/org/apache/avro/generic/GenericData$Record;

    iget-object v4, v0, Lcom/flurry/org/apache/avro/generic/GenericRecordBuilder;->record:Lcom/flurry/org/apache/avro/generic/GenericData$Record;

    invoke-virtual {v3, v4}, Lcom/flurry/org/apache/avro/generic/GenericData$Record;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 256
    goto :goto_0
.end method

.method protected get(I)Ljava/lang/Object;
    .locals 1
    .param p1, "pos"    # I

    .prologue
    .line 93
    iget-object v0, p0, Lcom/flurry/org/apache/avro/generic/GenericRecordBuilder;->record:Lcom/flurry/org/apache/avro/generic/GenericData$Record;

    invoke-virtual {v0, p1}, Lcom/flurry/org/apache/avro/generic/GenericData$Record;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(Lcom/flurry/org/apache/avro/Schema$Field;)Ljava/lang/Object;
    .locals 1
    .param p1, "field"    # Lcom/flurry/org/apache/avro/Schema$Field;

    .prologue
    .line 84
    invoke-virtual {p1}, Lcom/flurry/org/apache/avro/Schema$Field;->pos()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/flurry/org/apache/avro/generic/GenericRecordBuilder;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/flurry/org/apache/avro/generic/GenericRecordBuilder;->schema()Lcom/flurry/org/apache/avro/Schema;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/flurry/org/apache/avro/Schema;->getField(Ljava/lang/String;)Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flurry/org/apache/avro/generic/GenericRecordBuilder;->get(Lcom/flurry/org/apache/avro/Schema$Field;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected has(I)Z
    .locals 1
    .param p1, "pos"    # I

    .prologue
    .line 164
    invoke-virtual {p0}, Lcom/flurry/org/apache/avro/generic/GenericRecordBuilder;->fieldSetFlags()[Z

    move-result-object v0

    aget-boolean v0, v0, p1

    return v0
.end method

.method public has(Lcom/flurry/org/apache/avro/Schema$Field;)Z
    .locals 1
    .param p1, "field"    # Lcom/flurry/org/apache/avro/Schema$Field;

    .prologue
    .line 155
    invoke-virtual {p1}, Lcom/flurry/org/apache/avro/Schema$Field;->pos()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/flurry/org/apache/avro/generic/GenericRecordBuilder;->has(I)Z

    move-result v0

    return v0
.end method

.method public has(Ljava/lang/String;)Z
    .locals 1
    .param p1, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 146
    invoke-virtual {p0}, Lcom/flurry/org/apache/avro/generic/GenericRecordBuilder;->schema()Lcom/flurry/org/apache/avro/Schema;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/flurry/org/apache/avro/Schema;->getField(Ljava/lang/String;)Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flurry/org/apache/avro/generic/GenericRecordBuilder;->has(Lcom/flurry/org/apache/avro/Schema$Field;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 237
    const/16 v0, 0x1f

    .line 238
    .local v0, "prime":I
    invoke-super {p0}, Lcom/flurry/org/apache/avro/data/RecordBuilderBase;->hashCode()I

    move-result v1

    .line 239
    .local v1, "result":I
    mul-int/lit8 v3, v1, 0x1f

    iget-object v2, p0, Lcom/flurry/org/apache/avro/generic/GenericRecordBuilder;->record:Lcom/flurry/org/apache/avro/generic/GenericData$Record;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    add-int v1, v3, v2

    .line 240
    return v1

    .line 239
    :cond_0
    iget-object v2, p0, Lcom/flurry/org/apache/avro/generic/GenericRecordBuilder;->record:Lcom/flurry/org/apache/avro/generic/GenericData$Record;

    invoke-virtual {v2}, Lcom/flurry/org/apache/avro/generic/GenericData$Record;->hashCode()I

    move-result v2

    goto :goto_0
.end method

.method protected set(ILjava/lang/Object;)Lcom/flurry/org/apache/avro/generic/GenericRecordBuilder;
    .locals 1
    .param p1, "pos"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/flurry/org/apache/avro/generic/GenericRecordBuilder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    aget-object v0, v0, p1

    invoke-direct {p0, v0, p1, p2}, Lcom/flurry/org/apache/avro/generic/GenericRecordBuilder;->set(Lcom/flurry/org/apache/avro/Schema$Field;ILjava/lang/Object;)Lcom/flurry/org/apache/avro/generic/GenericRecordBuilder;

    move-result-object v0

    return-object v0
.end method

.method public set(Lcom/flurry/org/apache/avro/Schema$Field;Ljava/lang/Object;)Lcom/flurry/org/apache/avro/generic/GenericRecordBuilder;
    .locals 1
    .param p1, "field"    # Lcom/flurry/org/apache/avro/Schema$Field;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 113
    invoke-virtual {p1}, Lcom/flurry/org/apache/avro/Schema$Field;->pos()I

    move-result v0

    invoke-direct {p0, p1, v0, p2}, Lcom/flurry/org/apache/avro/generic/GenericRecordBuilder;->set(Lcom/flurry/org/apache/avro/Schema$Field;ILjava/lang/Object;)Lcom/flurry/org/apache/avro/generic/GenericRecordBuilder;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/flurry/org/apache/avro/generic/GenericRecordBuilder;
    .locals 1
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/flurry/org/apache/avro/generic/GenericRecordBuilder;->schema()Lcom/flurry/org/apache/avro/Schema;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/flurry/org/apache/avro/Schema;->getField(Ljava/lang/String;)Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/flurry/org/apache/avro/generic/GenericRecordBuilder;->set(Lcom/flurry/org/apache/avro/Schema$Field;Ljava/lang/Object;)Lcom/flurry/org/apache/avro/generic/GenericRecordBuilder;

    move-result-object v0

    return-object v0
.end method
