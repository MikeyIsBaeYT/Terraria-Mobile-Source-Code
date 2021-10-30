.class public Lcom/flurry/org/apache/avro/generic/GenericData$Record;
.super Ljava/lang/Object;
.source "GenericData.java"

# interfaces
.implements Lcom/flurry/org/apache/avro/generic/GenericRecord;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/org/apache/avro/generic/GenericData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Record"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/flurry/org/apache/avro/generic/GenericRecord;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/flurry/org/apache/avro/generic/GenericData$Record;",
        ">;"
    }
.end annotation


# instance fields
.field private final schema:Lcom/flurry/org/apache/avro/Schema;

.field private final values:[Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/flurry/org/apache/avro/Schema;)V
    .locals 3
    .param p1, "schema"    # Lcom/flurry/org/apache/avro/Schema;

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    if-eqz p1, :cond_0

    sget-object v0, Lcom/flurry/org/apache/avro/Schema$Type;->RECORD:Lcom/flurry/org/apache/avro/Schema$Type;

    invoke-virtual {p1}, Lcom/flurry/org/apache/avro/Schema;->getType()Lcom/flurry/org/apache/avro/Schema$Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/org/apache/avro/Schema$Type;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 70
    :cond_0
    new-instance v0, Lcom/flurry/org/apache/avro/AvroRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not a record schema: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/flurry/org/apache/avro/AvroRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_1
    iput-object p1, p0, Lcom/flurry/org/apache/avro/generic/GenericData$Record;->schema:Lcom/flurry/org/apache/avro/Schema;

    .line 72
    invoke-virtual {p1}, Lcom/flurry/org/apache/avro/Schema;->getFields()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/flurry/org/apache/avro/generic/GenericData$Record;->values:[Ljava/lang/Object;

    .line 73
    return-void
.end method

.method public constructor <init>(Lcom/flurry/org/apache/avro/generic/GenericData$Record;Z)V
    .locals 5
    .param p1, "other"    # Lcom/flurry/org/apache/avro/generic/GenericData$Record;
    .param p2, "deepCopy"    # Z

    .prologue
    const/4 v4, 0x0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iget-object v1, p1, Lcom/flurry/org/apache/avro/generic/GenericData$Record;->schema:Lcom/flurry/org/apache/avro/Schema;

    iput-object v1, p0, Lcom/flurry/org/apache/avro/generic/GenericData$Record;->schema:Lcom/flurry/org/apache/avro/Schema;

    .line 76
    iget-object v1, p0, Lcom/flurry/org/apache/avro/generic/GenericData$Record;->schema:Lcom/flurry/org/apache/avro/Schema;

    invoke-virtual {v1}, Lcom/flurry/org/apache/avro/Schema;->getFields()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/Object;

    iput-object v1, p0, Lcom/flurry/org/apache/avro/generic/GenericData$Record;->values:[Ljava/lang/Object;

    .line 77
    if-eqz p2, :cond_0

    .line 78
    const/4 v0, 0x0

    .local v0, "ii":I
    :goto_0
    iget-object v1, p0, Lcom/flurry/org/apache/avro/generic/GenericData$Record;->values:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 79
    iget-object v2, p0, Lcom/flurry/org/apache/avro/generic/GenericData$Record;->values:[Ljava/lang/Object;

    invoke-static {}, Lcom/flurry/org/apache/avro/generic/GenericData;->access$000()Lcom/flurry/org/apache/avro/generic/GenericData;

    move-result-object v3

    iget-object v1, p0, Lcom/flurry/org/apache/avro/generic/GenericData$Record;->schema:Lcom/flurry/org/apache/avro/Schema;

    invoke-virtual {v1}, Lcom/flurry/org/apache/avro/Schema;->getFields()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flurry/org/apache/avro/Schema$Field;

    invoke-virtual {v1}, Lcom/flurry/org/apache/avro/Schema$Field;->schema()Lcom/flurry/org/apache/avro/Schema;

    move-result-object v1

    iget-object v4, p1, Lcom/flurry/org/apache/avro/generic/GenericData$Record;->values:[Ljava/lang/Object;

    aget-object v4, v4, v0

    invoke-virtual {v3, v1, v4}, Lcom/flurry/org/apache/avro/generic/GenericData;->deepCopy(Lcom/flurry/org/apache/avro/Schema;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v2, v0

    .line 78
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 84
    .end local v0    # "ii":I
    :cond_0
    iget-object v1, p1, Lcom/flurry/org/apache/avro/generic/GenericData$Record;->values:[Ljava/lang/Object;

    iget-object v2, p0, Lcom/flurry/org/apache/avro/generic/GenericData$Record;->values:[Ljava/lang/Object;

    iget-object v3, p1, Lcom/flurry/org/apache/avro/generic/GenericData$Record;->values:[Ljava/lang/Object;

    array-length v3, v3

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 86
    :cond_1
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/flurry/org/apache/avro/generic/GenericData$Record;)I
    .locals 2
    .param p1, "that"    # Lcom/flurry/org/apache/avro/generic/GenericData$Record;

    .prologue
    .line 114
    invoke-static {}, Lcom/flurry/org/apache/avro/generic/GenericData;->get()Lcom/flurry/org/apache/avro/generic/GenericData;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/org/apache/avro/generic/GenericData$Record;->schema:Lcom/flurry/org/apache/avro/Schema;

    invoke-virtual {v0, p0, p1, v1}, Lcom/flurry/org/apache/avro/generic/GenericData;->compare(Ljava/lang/Object;Ljava/lang/Object;Lcom/flurry/org/apache/avro/Schema;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 65
    check-cast p1, Lcom/flurry/org/apache/avro/generic/GenericData$Record;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/flurry/org/apache/avro/generic/GenericData$Record;->compareTo(Lcom/flurry/org/apache/avro/generic/GenericData$Record;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 103
    if-ne p1, p0, :cond_1

    .line 108
    :cond_0
    :goto_0
    return v1

    .line 104
    :cond_1
    instance-of v3, p1, Lcom/flurry/org/apache/avro/generic/GenericData$Record;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 105
    check-cast v0, Lcom/flurry/org/apache/avro/generic/GenericData$Record;

    .line 106
    .local v0, "that":Lcom/flurry/org/apache/avro/generic/GenericData$Record;
    iget-object v3, p0, Lcom/flurry/org/apache/avro/generic/GenericData$Record;->schema:Lcom/flurry/org/apache/avro/Schema;

    invoke-virtual {v3}, Lcom/flurry/org/apache/avro/Schema;->getFullName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lcom/flurry/org/apache/avro/generic/GenericData$Record;->schema:Lcom/flurry/org/apache/avro/Schema;

    invoke-virtual {v4}, Lcom/flurry/org/apache/avro/Schema;->getFullName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    move v1, v2

    .line 107
    goto :goto_0

    .line 108
    :cond_3
    invoke-static {}, Lcom/flurry/org/apache/avro/generic/GenericData;->get()Lcom/flurry/org/apache/avro/generic/GenericData;

    move-result-object v3

    iget-object v4, p0, Lcom/flurry/org/apache/avro/generic/GenericData$Record;->schema:Lcom/flurry/org/apache/avro/Schema;

    invoke-virtual {v3, p0, v0, v4, v1}, Lcom/flurry/org/apache/avro/generic/GenericData;->compare(Ljava/lang/Object;Ljava/lang/Object;Lcom/flurry/org/apache/avro/Schema;Z)I

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 101
    iget-object v0, p0, Lcom/flurry/org/apache/avro/generic/GenericData$Record;->values:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 97
    iget-object v1, p0, Lcom/flurry/org/apache/avro/generic/GenericData$Record;->schema:Lcom/flurry/org/apache/avro/Schema;

    invoke-virtual {v1, p1}, Lcom/flurry/org/apache/avro/Schema;->getField(Ljava/lang/String;)Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    .line 98
    .local v0, "field":Lcom/flurry/org/apache/avro/Schema$Field;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 99
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/flurry/org/apache/avro/generic/GenericData$Record;->values:[Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/flurry/org/apache/avro/Schema$Field;->pos()I

    move-result v2

    aget-object v1, v1, v2

    goto :goto_0
.end method

.method public getSchema()Lcom/flurry/org/apache/avro/Schema;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/flurry/org/apache/avro/generic/GenericData$Record;->schema:Lcom/flurry/org/apache/avro/Schema;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 111
    invoke-static {}, Lcom/flurry/org/apache/avro/generic/GenericData;->get()Lcom/flurry/org/apache/avro/generic/GenericData;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/org/apache/avro/generic/GenericData$Record;->schema:Lcom/flurry/org/apache/avro/Schema;

    invoke-virtual {v0, p0, v1}, Lcom/flurry/org/apache/avro/generic/GenericData;->hashCode(Ljava/lang/Object;Lcom/flurry/org/apache/avro/Schema;)I

    move-result v0

    return v0
.end method

.method public put(ILjava/lang/Object;)V
    .locals 1
    .param p1, "i"    # I
    .param p2, "v"    # Ljava/lang/Object;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/flurry/org/apache/avro/generic/GenericData$Record;->values:[Ljava/lang/Object;

    aput-object p2, v0, p1

    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 89
    iget-object v1, p0, Lcom/flurry/org/apache/avro/generic/GenericData$Record;->schema:Lcom/flurry/org/apache/avro/Schema;

    invoke-virtual {v1, p1}, Lcom/flurry/org/apache/avro/Schema;->getField(Ljava/lang/String;)Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    .line 90
    .local v0, "field":Lcom/flurry/org/apache/avro/Schema$Field;
    if-nez v0, :cond_0

    .line 91
    new-instance v1, Lcom/flurry/org/apache/avro/AvroRuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not a valid schema field: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/flurry/org/apache/avro/AvroRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 93
    :cond_0
    iget-object v1, p0, Lcom/flurry/org/apache/avro/generic/GenericData$Record;->values:[Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/flurry/org/apache/avro/Schema$Field;->pos()I

    move-result v2

    aput-object p2, v1, v2

    .line 94
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    invoke-static {}, Lcom/flurry/org/apache/avro/generic/GenericData;->get()Lcom/flurry/org/apache/avro/generic/GenericData;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/flurry/org/apache/avro/generic/GenericData;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
