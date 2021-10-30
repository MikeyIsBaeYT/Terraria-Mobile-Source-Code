.class public abstract Lcom/flurry/org/apache/avro/data/RecordBuilderBase;
.super Ljava/lang/Object;
.source "RecordBuilderBase.java"

# interfaces
.implements Lcom/flurry/org/apache/avro/data/RecordBuilder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/flurry/org/apache/avro/generic/IndexedRecord;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/flurry/org/apache/avro/data/RecordBuilder",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final DEFAULT_VALUE_CACHE:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final EMPTY_FIELDS:[Lcom/flurry/org/apache/avro/Schema$Field;


# instance fields
.field private final data:Lcom/flurry/org/apache/avro/generic/GenericData;

.field private decoder:Lcom/flurry/org/apache/avro/io/BinaryDecoder;

.field private encoder:Lcom/flurry/org/apache/avro/io/BinaryEncoder;

.field private final fieldSetFlags:[Z

.field private final fields:[Lcom/flurry/org/apache/avro/Schema$Field;

.field private final schema:Lcom/flurry/org/apache/avro/Schema;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/flurry/org/apache/avro/data/RecordBuilderBase;->DEFAULT_VALUE_CACHE:Ljava/util/concurrent/ConcurrentMap;

    .line 45
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/flurry/org/apache/avro/Schema$Field;

    sput-object v0, Lcom/flurry/org/apache/avro/data/RecordBuilderBase;->EMPTY_FIELDS:[Lcom/flurry/org/apache/avro/Schema$Field;

    return-void
.end method

.method protected constructor <init>(Lcom/flurry/org/apache/avro/Schema;Lcom/flurry/org/apache/avro/generic/GenericData;)V
    .locals 2
    .param p1, "schema"    # Lcom/flurry/org/apache/avro/Schema;
    .param p2, "data"    # Lcom/flurry/org/apache/avro/generic/GenericData;

    .prologue
    .local p0, "this":Lcom/flurry/org/apache/avro/data/RecordBuilderBase;, "Lcom/flurry/org/apache/avro/data/RecordBuilderBase<TT;>;"
    const/4 v0, 0x0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object v0, p0, Lcom/flurry/org/apache/avro/data/RecordBuilderBase;->encoder:Lcom/flurry/org/apache/avro/io/BinaryEncoder;

    .line 51
    iput-object v0, p0, Lcom/flurry/org/apache/avro/data/RecordBuilderBase;->decoder:Lcom/flurry/org/apache/avro/io/BinaryDecoder;

    .line 63
    iput-object p1, p0, Lcom/flurry/org/apache/avro/data/RecordBuilderBase;->schema:Lcom/flurry/org/apache/avro/Schema;

    .line 64
    iput-object p2, p0, Lcom/flurry/org/apache/avro/data/RecordBuilderBase;->data:Lcom/flurry/org/apache/avro/generic/GenericData;

    .line 65
    invoke-virtual {p1}, Lcom/flurry/org/apache/avro/Schema;->getFields()Ljava/util/List;

    move-result-object v0

    sget-object v1, Lcom/flurry/org/apache/avro/data/RecordBuilderBase;->EMPTY_FIELDS:[Lcom/flurry/org/apache/avro/Schema$Field;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/flurry/org/apache/avro/Schema$Field;

    check-cast v0, [Lcom/flurry/org/apache/avro/Schema$Field;

    iput-object v0, p0, Lcom/flurry/org/apache/avro/data/RecordBuilderBase;->fields:[Lcom/flurry/org/apache/avro/Schema$Field;

    .line 66
    iget-object v0, p0, Lcom/flurry/org/apache/avro/data/RecordBuilderBase;->fields:[Lcom/flurry/org/apache/avro/Schema$Field;

    array-length v0, v0

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/flurry/org/apache/avro/data/RecordBuilderBase;->fieldSetFlags:[Z

    .line 67
    return-void
.end method

.method protected constructor <init>(Lcom/flurry/org/apache/avro/data/RecordBuilderBase;Lcom/flurry/org/apache/avro/generic/GenericData;)V
    .locals 4
    .param p2, "data"    # Lcom/flurry/org/apache/avro/generic/GenericData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/apache/avro/data/RecordBuilderBase",
            "<TT;>;",
            "Lcom/flurry/org/apache/avro/generic/GenericData;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/flurry/org/apache/avro/data/RecordBuilderBase;, "Lcom/flurry/org/apache/avro/data/RecordBuilderBase<TT;>;"
    .local p1, "other":Lcom/flurry/org/apache/avro/data/RecordBuilderBase;, "Lcom/flurry/org/apache/avro/data/RecordBuilderBase<TT;>;"
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object v0, p0, Lcom/flurry/org/apache/avro/data/RecordBuilderBase;->encoder:Lcom/flurry/org/apache/avro/io/BinaryEncoder;

    .line 51
    iput-object v0, p0, Lcom/flurry/org/apache/avro/data/RecordBuilderBase;->decoder:Lcom/flurry/org/apache/avro/io/BinaryDecoder;

    .line 75
    iget-object v0, p1, Lcom/flurry/org/apache/avro/data/RecordBuilderBase;->schema:Lcom/flurry/org/apache/avro/Schema;

    iput-object v0, p0, Lcom/flurry/org/apache/avro/data/RecordBuilderBase;->schema:Lcom/flurry/org/apache/avro/Schema;

    .line 76
    iput-object p2, p0, Lcom/flurry/org/apache/avro/data/RecordBuilderBase;->data:Lcom/flurry/org/apache/avro/generic/GenericData;

    .line 77
    iget-object v0, p0, Lcom/flurry/org/apache/avro/data/RecordBuilderBase;->schema:Lcom/flurry/org/apache/avro/Schema;

    invoke-virtual {v0}, Lcom/flurry/org/apache/avro/Schema;->getFields()Ljava/util/List;

    move-result-object v0

    sget-object v1, Lcom/flurry/org/apache/avro/data/RecordBuilderBase;->EMPTY_FIELDS:[Lcom/flurry/org/apache/avro/Schema$Field;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/flurry/org/apache/avro/Schema$Field;

    check-cast v0, [Lcom/flurry/org/apache/avro/Schema$Field;

    iput-object v0, p0, Lcom/flurry/org/apache/avro/data/RecordBuilderBase;->fields:[Lcom/flurry/org/apache/avro/Schema$Field;

    .line 78
    iget-object v0, p1, Lcom/flurry/org/apache/avro/data/RecordBuilderBase;->fieldSetFlags:[Z

    array-length v0, v0

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/flurry/org/apache/avro/data/RecordBuilderBase;->fieldSetFlags:[Z

    .line 79
    iget-object v0, p1, Lcom/flurry/org/apache/avro/data/RecordBuilderBase;->fieldSetFlags:[Z

    iget-object v1, p0, Lcom/flurry/org/apache/avro/data/RecordBuilderBase;->fieldSetFlags:[Z

    iget-object v2, p0, Lcom/flurry/org/apache/avro/data/RecordBuilderBase;->fieldSetFlags:[Z

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 81
    return-void
.end method

.method protected static isValidValue(Lcom/flurry/org/apache/avro/Schema$Field;Ljava/lang/Object;)Z
    .locals 7
    .param p0, "f"    # Lcom/flurry/org/apache/avro/Schema$Field;
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    .line 115
    if-eqz p1, :cond_1

    .line 137
    :cond_0
    :goto_0
    return v4

    .line 119
    :cond_1
    invoke-virtual {p0}, Lcom/flurry/org/apache/avro/Schema$Field;->schema()Lcom/flurry/org/apache/avro/Schema;

    move-result-object v2

    .line 120
    .local v2, "schema":Lcom/flurry/org/apache/avro/Schema;
    invoke-virtual {v2}, Lcom/flurry/org/apache/avro/Schema;->getType()Lcom/flurry/org/apache/avro/Schema$Type;

    move-result-object v3

    .line 123
    .local v3, "type":Lcom/flurry/org/apache/avro/Schema$Type;
    sget-object v5, Lcom/flurry/org/apache/avro/Schema$Type;->NULL:Lcom/flurry/org/apache/avro/Schema$Type;

    if-eq v3, v5, :cond_0

    .line 128
    sget-object v5, Lcom/flurry/org/apache/avro/Schema$Type;->UNION:Lcom/flurry/org/apache/avro/Schema$Type;

    if-ne v3, v5, :cond_3

    .line 129
    invoke-virtual {v2}, Lcom/flurry/org/apache/avro/Schema;->getTypes()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flurry/org/apache/avro/Schema;

    .line 130
    .local v1, "s":Lcom/flurry/org/apache/avro/Schema;
    invoke-virtual {v1}, Lcom/flurry/org/apache/avro/Schema;->getType()Lcom/flurry/org/apache/avro/Schema$Type;

    move-result-object v5

    sget-object v6, Lcom/flurry/org/apache/avro/Schema$Type;->NULL:Lcom/flurry/org/apache/avro/Schema$Type;

    if-ne v5, v6, :cond_2

    goto :goto_0

    .line 137
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "s":Lcom/flurry/org/apache/avro/Schema;
    :cond_3
    const/4 v4, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected final data()Lcom/flurry/org/apache/avro/generic/GenericData;
    .locals 1

    .prologue
    .line 56
    .local p0, "this":Lcom/flurry/org/apache/avro/data/RecordBuilderBase;, "Lcom/flurry/org/apache/avro/data/RecordBuilderBase<TT;>;"
    iget-object v0, p0, Lcom/flurry/org/apache/avro/data/RecordBuilderBase;->data:Lcom/flurry/org/apache/avro/generic/GenericData;

    return-object v0
.end method

.method protected defaultValue(Lcom/flurry/org/apache/avro/Schema$Field;)Ljava/lang/Object;
    .locals 9
    .param p1, "field"    # Lcom/flurry/org/apache/avro/Schema$Field;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/flurry/org/apache/avro/data/RecordBuilderBase;, "Lcom/flurry/org/apache/avro/data/RecordBuilderBase<TT;>;"
    const/4 v5, 0x0

    .line 149
    invoke-virtual {p1}, Lcom/flurry/org/apache/avro/Schema$Field;->defaultValue()Lcom/flurry/org/codehaus/jackson/JsonNode;

    move-result-object v1

    .line 150
    .local v1, "defaultJsonValue":Lcom/flurry/org/codehaus/jackson/JsonNode;
    if-nez v1, :cond_0

    .line 151
    new-instance v4, Lcom/flurry/org/apache/avro/AvroRuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Field "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " not set and has no default value"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/flurry/org/apache/avro/AvroRuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 153
    :cond_0
    invoke-virtual {v1}, Lcom/flurry/org/codehaus/jackson/JsonNode;->isNull()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p1}, Lcom/flurry/org/apache/avro/Schema$Field;->schema()Lcom/flurry/org/apache/avro/Schema;

    move-result-object v4

    invoke-virtual {v4}, Lcom/flurry/org/apache/avro/Schema;->getType()Lcom/flurry/org/apache/avro/Schema$Type;

    move-result-object v4

    sget-object v6, Lcom/flurry/org/apache/avro/Schema$Type;->NULL:Lcom/flurry/org/apache/avro/Schema$Type;

    if-eq v4, v6, :cond_1

    invoke-virtual {p1}, Lcom/flurry/org/apache/avro/Schema$Field;->schema()Lcom/flurry/org/apache/avro/Schema;

    move-result-object v4

    invoke-virtual {v4}, Lcom/flurry/org/apache/avro/Schema;->getType()Lcom/flurry/org/apache/avro/Schema$Type;

    move-result-object v4

    sget-object v6, Lcom/flurry/org/apache/avro/Schema$Type;->UNION:Lcom/flurry/org/apache/avro/Schema$Type;

    if-ne v4, v6, :cond_2

    invoke-virtual {p1}, Lcom/flurry/org/apache/avro/Schema$Field;->schema()Lcom/flurry/org/apache/avro/Schema;

    move-result-object v4

    invoke-virtual {v4}, Lcom/flurry/org/apache/avro/Schema;->getTypes()Ljava/util/List;

    move-result-object v4

    const/4 v6, 0x0

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/flurry/org/apache/avro/Schema;

    invoke-virtual {v4}, Lcom/flurry/org/apache/avro/Schema;->getType()Lcom/flurry/org/apache/avro/Schema$Type;

    move-result-object v4

    sget-object v6, Lcom/flurry/org/apache/avro/Schema$Type;->NULL:Lcom/flurry/org/apache/avro/Schema$Type;

    if-ne v4, v6, :cond_2

    :cond_1
    move-object v4, v5

    .line 190
    :goto_0
    return-object v4

    .line 161
    :cond_2
    const/4 v3, 0x0

    .line 164
    .local v3, "defaultValue":Ljava/lang/Object;
    sget-object v4, Lcom/flurry/org/apache/avro/data/RecordBuilderBase;->DEFAULT_VALUE_CACHE:Ljava/util/concurrent/ConcurrentMap;

    iget-object v6, p0, Lcom/flurry/org/apache/avro/data/RecordBuilderBase;->schema:Lcom/flurry/org/apache/avro/Schema;

    invoke-virtual {v6}, Lcom/flurry/org/apache/avro/Schema;->getFullName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/ConcurrentMap;

    .line 166
    .local v2, "defaultSchemaValues":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    if-nez v2, :cond_3

    .line 167
    sget-object v4, Lcom/flurry/org/apache/avro/data/RecordBuilderBase;->DEFAULT_VALUE_CACHE:Ljava/util/concurrent/ConcurrentMap;

    iget-object v6, p0, Lcom/flurry/org/apache/avro/data/RecordBuilderBase;->schema:Lcom/flurry/org/apache/avro/Schema;

    invoke-virtual {v6}, Lcom/flurry/org/apache/avro/Schema;->getFullName()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v8, p0, Lcom/flurry/org/apache/avro/data/RecordBuilderBase;->fields:[Lcom/flurry/org/apache/avro/Schema$Field;

    array-length v8, v8

    invoke-direct {v7, v8}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    invoke-interface {v4, v6, v7}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    sget-object v4, Lcom/flurry/org/apache/avro/data/RecordBuilderBase;->DEFAULT_VALUE_CACHE:Ljava/util/concurrent/ConcurrentMap;

    iget-object v6, p0, Lcom/flurry/org/apache/avro/data/RecordBuilderBase;->schema:Lcom/flurry/org/apache/avro/Schema;

    invoke-virtual {v6}, Lcom/flurry/org/apache/avro/Schema;->getFullName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "defaultSchemaValues":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    check-cast v2, Ljava/util/concurrent/ConcurrentMap;

    .line 171
    .restart local v2    # "defaultSchemaValues":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    :cond_3
    invoke-virtual {p1}, Lcom/flurry/org/apache/avro/Schema$Field;->pos()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 175
    if-nez v3, :cond_4

    .line 176
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 177
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    invoke-static {}, Lcom/flurry/org/apache/avro/io/EncoderFactory;->get()Lcom/flurry/org/apache/avro/io/EncoderFactory;

    move-result-object v4

    iget-object v6, p0, Lcom/flurry/org/apache/avro/data/RecordBuilderBase;->encoder:Lcom/flurry/org/apache/avro/io/BinaryEncoder;

    invoke-virtual {v4, v0, v6}, Lcom/flurry/org/apache/avro/io/EncoderFactory;->binaryEncoder(Ljava/io/OutputStream;Lcom/flurry/org/apache/avro/io/BinaryEncoder;)Lcom/flurry/org/apache/avro/io/BinaryEncoder;

    move-result-object v4

    iput-object v4, p0, Lcom/flurry/org/apache/avro/data/RecordBuilderBase;->encoder:Lcom/flurry/org/apache/avro/io/BinaryEncoder;

    .line 178
    iget-object v4, p0, Lcom/flurry/org/apache/avro/data/RecordBuilderBase;->encoder:Lcom/flurry/org/apache/avro/io/BinaryEncoder;

    invoke-virtual {p1}, Lcom/flurry/org/apache/avro/Schema$Field;->schema()Lcom/flurry/org/apache/avro/Schema;

    move-result-object v6

    invoke-static {v4, v6, v1}, Lcom/flurry/org/apache/avro/io/parsing/ResolvingGrammarGenerator;->encode(Lcom/flurry/org/apache/avro/io/Encoder;Lcom/flurry/org/apache/avro/Schema;Lcom/flurry/org/codehaus/jackson/JsonNode;)V

    .line 180
    iget-object v4, p0, Lcom/flurry/org/apache/avro/data/RecordBuilderBase;->encoder:Lcom/flurry/org/apache/avro/io/BinaryEncoder;

    invoke-virtual {v4}, Lcom/flurry/org/apache/avro/io/BinaryEncoder;->flush()V

    .line 181
    invoke-static {}, Lcom/flurry/org/apache/avro/io/DecoderFactory;->get()Lcom/flurry/org/apache/avro/io/DecoderFactory;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    iget-object v7, p0, Lcom/flurry/org/apache/avro/data/RecordBuilderBase;->decoder:Lcom/flurry/org/apache/avro/io/BinaryDecoder;

    invoke-virtual {v4, v6, v7}, Lcom/flurry/org/apache/avro/io/DecoderFactory;->binaryDecoder([BLcom/flurry/org/apache/avro/io/BinaryDecoder;)Lcom/flurry/org/apache/avro/io/BinaryDecoder;

    move-result-object v4

    iput-object v4, p0, Lcom/flurry/org/apache/avro/data/RecordBuilderBase;->decoder:Lcom/flurry/org/apache/avro/io/BinaryDecoder;

    .line 183
    iget-object v4, p0, Lcom/flurry/org/apache/avro/data/RecordBuilderBase;->data:Lcom/flurry/org/apache/avro/generic/GenericData;

    invoke-virtual {p1}, Lcom/flurry/org/apache/avro/Schema$Field;->schema()Lcom/flurry/org/apache/avro/Schema;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/flurry/org/apache/avro/generic/GenericData;->createDatumReader(Lcom/flurry/org/apache/avro/Schema;)Lcom/flurry/org/apache/avro/io/DatumReader;

    move-result-object v4

    iget-object v6, p0, Lcom/flurry/org/apache/avro/data/RecordBuilderBase;->decoder:Lcom/flurry/org/apache/avro/io/BinaryDecoder;

    invoke-interface {v4, v5, v6}, Lcom/flurry/org/apache/avro/io/DatumReader;->read(Ljava/lang/Object;Lcom/flurry/org/apache/avro/io/Decoder;)Ljava/lang/Object;

    move-result-object v3

    .line 185
    invoke-virtual {p1}, Lcom/flurry/org/apache/avro/Schema$Field;->pos()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4, v3}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    :cond_4
    iget-object v4, p0, Lcom/flurry/org/apache/avro/data/RecordBuilderBase;->data:Lcom/flurry/org/apache/avro/generic/GenericData;

    invoke-virtual {p1}, Lcom/flurry/org/apache/avro/Schema$Field;->schema()Lcom/flurry/org/apache/avro/Schema;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Lcom/flurry/org/apache/avro/generic/GenericData;->deepCopy(Lcom/flurry/org/apache/avro/Schema;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    goto/16 :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lcom/flurry/org/apache/avro/data/RecordBuilderBase;, "Lcom/flurry/org/apache/avro/data/RecordBuilderBase<TT;>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 204
    if-ne p0, p1, :cond_1

    .line 219
    :cond_0
    :goto_0
    return v1

    .line 206
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 207
    goto :goto_0

    .line 208
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 209
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 211
    check-cast v0, Lcom/flurry/org/apache/avro/data/RecordBuilderBase;

    .line 212
    .local v0, "other":Lcom/flurry/org/apache/avro/data/RecordBuilderBase;
    iget-object v3, p0, Lcom/flurry/org/apache/avro/data/RecordBuilderBase;->fieldSetFlags:[Z

    iget-object v4, v0, Lcom/flurry/org/apache/avro/data/RecordBuilderBase;->fieldSetFlags:[Z

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Z[Z)Z

    move-result v3

    if-nez v3, :cond_4

    move v1, v2

    .line 213
    goto :goto_0

    .line 214
    :cond_4
    iget-object v3, p0, Lcom/flurry/org/apache/avro/data/RecordBuilderBase;->schema:Lcom/flurry/org/apache/avro/Schema;

    if-nez v3, :cond_5

    .line 215
    iget-object v3, v0, Lcom/flurry/org/apache/avro/data/RecordBuilderBase;->schema:Lcom/flurry/org/apache/avro/Schema;

    if-eqz v3, :cond_0

    move v1, v2

    .line 216
    goto :goto_0

    .line 217
    :cond_5
    iget-object v3, p0, Lcom/flurry/org/apache/avro/data/RecordBuilderBase;->schema:Lcom/flurry/org/apache/avro/Schema;

    iget-object v4, v0, Lcom/flurry/org/apache/avro/data/RecordBuilderBase;->schema:Lcom/flurry/org/apache/avro/Schema;

    invoke-virtual {v3, v4}, Lcom/flurry/org/apache/avro/Schema;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 218
    goto :goto_0
.end method

.method protected final fieldSetFlags()[Z
    .locals 1

    .prologue
    .line 55
    .local p0, "this":Lcom/flurry/org/apache/avro/data/RecordBuilderBase;, "Lcom/flurry/org/apache/avro/data/RecordBuilderBase<TT;>;"
    iget-object v0, p0, Lcom/flurry/org/apache/avro/data/RecordBuilderBase;->fieldSetFlags:[Z

    return-object v0
.end method

.method protected final fields()[Lcom/flurry/org/apache/avro/Schema$Field;
    .locals 1

    .prologue
    .line 54
    .local p0, "this":Lcom/flurry/org/apache/avro/data/RecordBuilderBase;, "Lcom/flurry/org/apache/avro/data/RecordBuilderBase<TT;>;"
    iget-object v0, p0, Lcom/flurry/org/apache/avro/data/RecordBuilderBase;->fields:[Lcom/flurry/org/apache/avro/Schema$Field;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 195
    .local p0, "this":Lcom/flurry/org/apache/avro/data/RecordBuilderBase;, "Lcom/flurry/org/apache/avro/data/RecordBuilderBase<TT;>;"
    const/16 v0, 0x1f

    .line 196
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 197
    .local v1, "result":I
    iget-object v2, p0, Lcom/flurry/org/apache/avro/data/RecordBuilderBase;->fieldSetFlags:[Z

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([Z)I

    move-result v2

    add-int/lit8 v1, v2, 0x1f

    .line 198
    mul-int/lit8 v3, v1, 0x1f

    iget-object v2, p0, Lcom/flurry/org/apache/avro/data/RecordBuilderBase;->schema:Lcom/flurry/org/apache/avro/Schema;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    add-int v1, v3, v2

    .line 199
    return v1

    .line 198
    :cond_0
    iget-object v2, p0, Lcom/flurry/org/apache/avro/data/RecordBuilderBase;->schema:Lcom/flurry/org/apache/avro/Schema;

    invoke-virtual {v2}, Lcom/flurry/org/apache/avro/Schema;->hashCode()I

    move-result v2

    goto :goto_0
.end method

.method protected final schema()Lcom/flurry/org/apache/avro/Schema;
    .locals 1

    .prologue
    .line 53
    .local p0, "this":Lcom/flurry/org/apache/avro/data/RecordBuilderBase;, "Lcom/flurry/org/apache/avro/data/RecordBuilderBase<TT;>;"
    iget-object v0, p0, Lcom/flurry/org/apache/avro/data/RecordBuilderBase;->schema:Lcom/flurry/org/apache/avro/Schema;

    return-object v0
.end method

.method protected validate(Lcom/flurry/org/apache/avro/Schema$Field;Ljava/lang/Object;)V
    .locals 3
    .param p1, "field"    # Lcom/flurry/org/apache/avro/Schema$Field;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 96
    .local p0, "this":Lcom/flurry/org/apache/avro/data/RecordBuilderBase;, "Lcom/flurry/org/apache/avro/data/RecordBuilderBase<TT;>;"
    invoke-static {p1, p2}, Lcom/flurry/org/apache/avro/data/RecordBuilderBase;->isValidValue(Lcom/flurry/org/apache/avro/Schema$Field;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 100
    :cond_0
    return-void

    .line 99
    :cond_1
    invoke-virtual {p1}, Lcom/flurry/org/apache/avro/Schema$Field;->defaultValue()Lcom/flurry/org/codehaus/jackson/JsonNode;

    move-result-object v0

    if-nez v0, :cond_0

    .line 103
    new-instance v0, Lcom/flurry/org/apache/avro/AvroRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Field "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not accept null values"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/flurry/org/apache/avro/AvroRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
