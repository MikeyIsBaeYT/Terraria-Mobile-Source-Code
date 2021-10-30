.class public Lcom/flurry/org/apache/avro/generic/GenericDatumWriter;
.super Ljava/lang/Object;
.source "GenericDatumWriter.java"

# interfaces
.implements Lcom/flurry/org/apache/avro/io/DatumWriter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/org/apache/avro/generic/GenericDatumWriter$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/flurry/org/apache/avro/io/DatumWriter",
        "<TD;>;"
    }
.end annotation


# instance fields
.field private final data:Lcom/flurry/org/apache/avro/generic/GenericData;

.field private root:Lcom/flurry/org/apache/avro/Schema;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    .local p0, "this":Lcom/flurry/org/apache/avro/generic/GenericDatumWriter;, "Lcom/flurry/org/apache/avro/generic/GenericDatumWriter<TD;>;"
    invoke-static {}, Lcom/flurry/org/apache/avro/generic/GenericData;->get()Lcom/flurry/org/apache/avro/generic/GenericData;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/flurry/org/apache/avro/generic/GenericDatumWriter;-><init>(Lcom/flurry/org/apache/avro/generic/GenericData;)V

    return-void
.end method

.method public constructor <init>(Lcom/flurry/org/apache/avro/Schema;)V
    .locals 0
    .param p1, "root"    # Lcom/flurry/org/apache/avro/Schema;

    .prologue
    .line 42
    .local p0, "this":Lcom/flurry/org/apache/avro/generic/GenericDatumWriter;, "Lcom/flurry/org/apache/avro/generic/GenericDatumWriter<TD;>;"
    invoke-direct {p0}, Lcom/flurry/org/apache/avro/generic/GenericDatumWriter;-><init>()V

    .line 43
    invoke-virtual {p0, p1}, Lcom/flurry/org/apache/avro/generic/GenericDatumWriter;->setSchema(Lcom/flurry/org/apache/avro/Schema;)V

    .line 44
    return-void
.end method

.method protected constructor <init>(Lcom/flurry/org/apache/avro/Schema;Lcom/flurry/org/apache/avro/generic/GenericData;)V
    .locals 0
    .param p1, "root"    # Lcom/flurry/org/apache/avro/Schema;
    .param p2, "data"    # Lcom/flurry/org/apache/avro/generic/GenericData;

    .prologue
    .line 47
    .local p0, "this":Lcom/flurry/org/apache/avro/generic/GenericDatumWriter;, "Lcom/flurry/org/apache/avro/generic/GenericDatumWriter<TD;>;"
    invoke-direct {p0, p2}, Lcom/flurry/org/apache/avro/generic/GenericDatumWriter;-><init>(Lcom/flurry/org/apache/avro/generic/GenericData;)V

    .line 48
    invoke-virtual {p0, p1}, Lcom/flurry/org/apache/avro/generic/GenericDatumWriter;->setSchema(Lcom/flurry/org/apache/avro/Schema;)V

    .line 49
    return-void
.end method

.method protected constructor <init>(Lcom/flurry/org/apache/avro/generic/GenericData;)V
    .locals 0
    .param p1, "data"    # Lcom/flurry/org/apache/avro/generic/GenericData;

    .prologue
    .line 39
    .local p0, "this":Lcom/flurry/org/apache/avro/generic/GenericDatumWriter;, "Lcom/flurry/org/apache/avro/generic/GenericDatumWriter<TD;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/flurry/org/apache/avro/generic/GenericDatumWriter;->data:Lcom/flurry/org/apache/avro/generic/GenericData;

    return-void
.end method

.method private error(Lcom/flurry/org/apache/avro/Schema;Ljava/lang/Object;)V
    .locals 3
    .param p1, "schema"    # Lcom/flurry/org/apache/avro/Schema;
    .param p2, "datum"    # Ljava/lang/Object;

    .prologue
    .line 210
    .local p0, "this":Lcom/flurry/org/apache/avro/generic/GenericDatumWriter;, "Lcom/flurry/org/apache/avro/generic/GenericDatumWriter<TD;>;"
    new-instance v0, Lcom/flurry/org/apache/avro/AvroTypeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/flurry/org/apache/avro/AvroTypeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected getArrayElements(Ljava/lang/Object;)Ljava/util/Iterator;
    .locals 1
    .param p1, "array"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Iterator",
            "<+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 151
    .local p0, "this":Lcom/flurry/org/apache/avro/generic/GenericDatumWriter;, "Lcom/flurry/org/apache/avro/generic/GenericDatumWriter<TD;>;"
    check-cast p1, Ljava/util/Collection;

    .end local p1    # "array":Ljava/lang/Object;
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method protected getArraySize(Ljava/lang/Object;)J
    .locals 2
    .param p1, "array"    # Ljava/lang/Object;

    .prologue
    .line 144
    .local p0, "this":Lcom/flurry/org/apache/avro/generic/GenericDatumWriter;, "Lcom/flurry/org/apache/avro/generic/GenericDatumWriter<TD;>;"
    check-cast p1, Ljava/util/Collection;

    .end local p1    # "array":Ljava/lang/Object;
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getData()Lcom/flurry/org/apache/avro/generic/GenericData;
    .locals 1

    .prologue
    .line 52
    .local p0, "this":Lcom/flurry/org/apache/avro/generic/GenericDatumWriter;, "Lcom/flurry/org/apache/avro/generic/GenericDatumWriter<TD;>;"
    iget-object v0, p0, Lcom/flurry/org/apache/avro/generic/GenericDatumWriter;->data:Lcom/flurry/org/apache/avro/generic/GenericData;

    return-object v0
.end method

.method protected getMapEntries(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 1
    .param p1, "map"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 181
    .local p0, "this":Lcom/flurry/org/apache/avro/generic/GenericDatumWriter;, "Lcom/flurry/org/apache/avro/generic/GenericDatumWriter<TD;>;"
    check-cast p1, Ljava/util/Map;

    .end local p1    # "map":Ljava/lang/Object;
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected getMapSize(Ljava/lang/Object;)I
    .locals 1
    .param p1, "map"    # Ljava/lang/Object;

    .prologue
    .line 174
    .local p0, "this":Lcom/flurry/org/apache/avro/generic/GenericDatumWriter;, "Lcom/flurry/org/apache/avro/generic/GenericDatumWriter<TD;>;"
    check-cast p1, Ljava/util/Map;

    .end local p1    # "map":Ljava/lang/Object;
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method protected npe(Ljava/lang/NullPointerException;Ljava/lang/String;)Ljava/lang/NullPointerException;
    .locals 3
    .param p1, "e"    # Ljava/lang/NullPointerException;
    .param p2, "s"    # Ljava/lang/String;

    .prologue
    .line 92
    .local p0, "this":Lcom/flurry/org/apache/avro/generic/GenericDatumWriter;, "Lcom/flurry/org/apache/avro/generic/GenericDatumWriter<TD;>;"
    new-instance v0, Ljava/lang/NullPointerException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 93
    .local v0, "result":Ljava/lang/NullPointerException;
    invoke-virtual {p1}, Ljava/lang/NullPointerException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_0

    .end local p1    # "e":Ljava/lang/NullPointerException;
    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/NullPointerException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 94
    return-object v0

    .line 93
    .restart local p1    # "e":Ljava/lang/NullPointerException;
    :cond_0
    invoke-virtual {p1}, Ljava/lang/NullPointerException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    goto :goto_0
.end method

.method protected resolveUnion(Lcom/flurry/org/apache/avro/Schema;Ljava/lang/Object;)I
    .locals 1
    .param p1, "union"    # Lcom/flurry/org/apache/avro/Schema;
    .param p2, "datum"    # Ljava/lang/Object;

    .prologue
    .line 137
    .local p0, "this":Lcom/flurry/org/apache/avro/generic/GenericDatumWriter;, "Lcom/flurry/org/apache/avro/generic/GenericDatumWriter<TD;>;"
    iget-object v0, p0, Lcom/flurry/org/apache/avro/generic/GenericDatumWriter;->data:Lcom/flurry/org/apache/avro/generic/GenericData;

    invoke-virtual {v0, p1, p2}, Lcom/flurry/org/apache/avro/generic/GenericData;->resolveUnion(Lcom/flurry/org/apache/avro/Schema;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public setSchema(Lcom/flurry/org/apache/avro/Schema;)V
    .locals 0
    .param p1, "root"    # Lcom/flurry/org/apache/avro/Schema;

    .prologue
    .line 54
    .local p0, "this":Lcom/flurry/org/apache/avro/generic/GenericDatumWriter;, "Lcom/flurry/org/apache/avro/generic/GenericDatumWriter<TD;>;"
    iput-object p1, p0, Lcom/flurry/org/apache/avro/generic/GenericDatumWriter;->root:Lcom/flurry/org/apache/avro/Schema;

    return-void
.end method

.method protected write(Lcom/flurry/org/apache/avro/Schema;Ljava/lang/Object;Lcom/flurry/org/apache/avro/io/Encoder;)V
    .locals 4
    .param p1, "schema"    # Lcom/flurry/org/apache/avro/Schema;
    .param p2, "datum"    # Ljava/lang/Object;
    .param p3, "out"    # Lcom/flurry/org/apache/avro/io/Encoder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 64
    .local p0, "this":Lcom/flurry/org/apache/avro/generic/GenericDatumWriter;, "Lcom/flurry/org/apache/avro/generic/GenericDatumWriter<TD;>;"
    :try_start_0
    sget-object v2, Lcom/flurry/org/apache/avro/generic/GenericDatumWriter$1;->$SwitchMap$org$apache$avro$Schema$Type:[I

    invoke-virtual {p1}, Lcom/flurry/org/apache/avro/Schema;->getType()Lcom/flurry/org/apache/avro/Schema$Type;

    move-result-object v3

    invoke-virtual {v3}, Lcom/flurry/org/apache/avro/Schema$Type;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 83
    invoke-direct {p0, p1, p2}, Lcom/flurry/org/apache/avro/generic/GenericDatumWriter;->error(Lcom/flurry/org/apache/avro/Schema;Ljava/lang/Object;)V

    .line 88
    .end local p2    # "datum":Ljava/lang/Object;
    :goto_0
    return-void

    .line 65
    .restart local p2    # "datum":Ljava/lang/Object;
    :pswitch_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/flurry/org/apache/avro/generic/GenericDatumWriter;->writeRecord(Lcom/flurry/org/apache/avro/Schema;Ljava/lang/Object;Lcom/flurry/org/apache/avro/io/Encoder;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 85
    .end local p2    # "datum":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 86
    .local v0, "e":Ljava/lang/NullPointerException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/flurry/org/apache/avro/Schema;->getFullName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/flurry/org/apache/avro/generic/GenericDatumWriter;->npe(Ljava/lang/NullPointerException;Ljava/lang/String;)Ljava/lang/NullPointerException;

    move-result-object v2

    throw v2

    .line 66
    .end local v0    # "e":Ljava/lang/NullPointerException;
    .restart local p2    # "datum":Ljava/lang/Object;
    :pswitch_1
    :try_start_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/flurry/org/apache/avro/generic/GenericDatumWriter;->writeEnum(Lcom/flurry/org/apache/avro/Schema;Ljava/lang/Object;Lcom/flurry/org/apache/avro/io/Encoder;)V

    goto :goto_0

    .line 67
    :pswitch_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/flurry/org/apache/avro/generic/GenericDatumWriter;->writeArray(Lcom/flurry/org/apache/avro/Schema;Ljava/lang/Object;Lcom/flurry/org/apache/avro/io/Encoder;)V

    goto :goto_0

    .line 68
    :pswitch_3
    invoke-virtual {p0, p1, p2, p3}, Lcom/flurry/org/apache/avro/generic/GenericDatumWriter;->writeMap(Lcom/flurry/org/apache/avro/Schema;Ljava/lang/Object;Lcom/flurry/org/apache/avro/io/Encoder;)V

    goto :goto_0

    .line 70
    :pswitch_4
    invoke-virtual {p0, p1, p2}, Lcom/flurry/org/apache/avro/generic/GenericDatumWriter;->resolveUnion(Lcom/flurry/org/apache/avro/Schema;Ljava/lang/Object;)I

    move-result v1

    .line 71
    .local v1, "index":I
    invoke-virtual {p3, v1}, Lcom/flurry/org/apache/avro/io/Encoder;->writeIndex(I)V

    .line 72
    invoke-virtual {p1}, Lcom/flurry/org/apache/avro/Schema;->getTypes()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/flurry/org/apache/avro/Schema;

    invoke-virtual {p0, v2, p2, p3}, Lcom/flurry/org/apache/avro/generic/GenericDatumWriter;->write(Lcom/flurry/org/apache/avro/Schema;Ljava/lang/Object;Lcom/flurry/org/apache/avro/io/Encoder;)V

    goto :goto_0

    .line 74
    .end local v1    # "index":I
    :pswitch_5
    invoke-virtual {p0, p1, p2, p3}, Lcom/flurry/org/apache/avro/generic/GenericDatumWriter;->writeFixed(Lcom/flurry/org/apache/avro/Schema;Ljava/lang/Object;Lcom/flurry/org/apache/avro/io/Encoder;)V

    goto :goto_0

    .line 75
    :pswitch_6
    invoke-virtual {p0, p1, p2, p3}, Lcom/flurry/org/apache/avro/generic/GenericDatumWriter;->writeString(Lcom/flurry/org/apache/avro/Schema;Ljava/lang/Object;Lcom/flurry/org/apache/avro/io/Encoder;)V

    goto :goto_0

    .line 76
    :pswitch_7
    invoke-virtual {p0, p2, p3}, Lcom/flurry/org/apache/avro/generic/GenericDatumWriter;->writeBytes(Ljava/lang/Object;Lcom/flurry/org/apache/avro/io/Encoder;)V

    goto :goto_0

    .line 77
    :pswitch_8
    check-cast p2, Ljava/lang/Number;

    .end local p2    # "datum":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-virtual {p3, v2}, Lcom/flurry/org/apache/avro/io/Encoder;->writeInt(I)V

    goto :goto_0

    .line 78
    .restart local p2    # "datum":Ljava/lang/Object;
    :pswitch_9
    check-cast p2, Ljava/lang/Long;

    .end local p2    # "datum":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p3, v2, v3}, Lcom/flurry/org/apache/avro/io/Encoder;->writeLong(J)V

    goto :goto_0

    .line 79
    .restart local p2    # "datum":Ljava/lang/Object;
    :pswitch_a
    check-cast p2, Ljava/lang/Float;

    .end local p2    # "datum":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {p3, v2}, Lcom/flurry/org/apache/avro/io/Encoder;->writeFloat(F)V

    goto :goto_0

    .line 80
    .restart local p2    # "datum":Ljava/lang/Object;
    :pswitch_b
    check-cast p2, Ljava/lang/Double;

    .end local p2    # "datum":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p3, v2, v3}, Lcom/flurry/org/apache/avro/io/Encoder;->writeDouble(D)V

    goto :goto_0

    .line 81
    .restart local p2    # "datum":Ljava/lang/Object;
    :pswitch_c
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "datum":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {p3, v2}, Lcom/flurry/org/apache/avro/io/Encoder;->writeBoolean(Z)V

    goto :goto_0

    .line 82
    .restart local p2    # "datum":Ljava/lang/Object;
    :pswitch_d
    invoke-virtual {p3}, Lcom/flurry/org/apache/avro/io/Encoder;->writeNull()V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 64
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method public write(Ljava/lang/Object;Lcom/flurry/org/apache/avro/io/Encoder;)V
    .locals 1
    .param p2, "out"    # Lcom/flurry/org/apache/avro/io/Encoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;",
            "Lcom/flurry/org/apache/avro/io/Encoder;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 57
    .local p0, "this":Lcom/flurry/org/apache/avro/generic/GenericDatumWriter;, "Lcom/flurry/org/apache/avro/generic/GenericDatumWriter<TD;>;"
    .local p1, "datum":Ljava/lang/Object;, "TD;"
    iget-object v0, p0, Lcom/flurry/org/apache/avro/generic/GenericDatumWriter;->root:Lcom/flurry/org/apache/avro/Schema;

    invoke-virtual {p0, v0, p1, p2}, Lcom/flurry/org/apache/avro/generic/GenericDatumWriter;->write(Lcom/flurry/org/apache/avro/Schema;Ljava/lang/Object;Lcom/flurry/org/apache/avro/io/Encoder;)V

    .line 58
    return-void
.end method

.method protected writeArray(Lcom/flurry/org/apache/avro/Schema;Ljava/lang/Object;Lcom/flurry/org/apache/avro/io/Encoder;)V
    .locals 5
    .param p1, "schema"    # Lcom/flurry/org/apache/avro/Schema;
    .param p2, "datum"    # Ljava/lang/Object;
    .param p3, "out"    # Lcom/flurry/org/apache/avro/io/Encoder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 123
    .local p0, "this":Lcom/flurry/org/apache/avro/generic/GenericDatumWriter;, "Lcom/flurry/org/apache/avro/generic/GenericDatumWriter<TD;>;"
    invoke-virtual {p1}, Lcom/flurry/org/apache/avro/Schema;->getElementType()Lcom/flurry/org/apache/avro/Schema;

    move-result-object v0

    .line 124
    .local v0, "element":Lcom/flurry/org/apache/avro/Schema;
    invoke-virtual {p0, p2}, Lcom/flurry/org/apache/avro/generic/GenericDatumWriter;->getArraySize(Ljava/lang/Object;)J

    move-result-wide v2

    .line 125
    .local v2, "size":J
    invoke-virtual {p3}, Lcom/flurry/org/apache/avro/io/Encoder;->writeArrayStart()V

    .line 126
    invoke-virtual {p3, v2, v3}, Lcom/flurry/org/apache/avro/io/Encoder;->setItemCount(J)V

    .line 127
    invoke-virtual {p0, p2}, Lcom/flurry/org/apache/avro/generic/GenericDatumWriter;->getArrayElements(Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<+Ljava/lang/Object;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 128
    invoke-virtual {p3}, Lcom/flurry/org/apache/avro/io/Encoder;->startItem()V

    .line 129
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v0, v4, p3}, Lcom/flurry/org/apache/avro/generic/GenericDatumWriter;->write(Lcom/flurry/org/apache/avro/Schema;Ljava/lang/Object;Lcom/flurry/org/apache/avro/io/Encoder;)V

    goto :goto_0

    .line 131
    :cond_0
    invoke-virtual {p3}, Lcom/flurry/org/apache/avro/io/Encoder;->writeArrayEnd()V

    .line 132
    return-void
.end method

.method protected writeBytes(Ljava/lang/Object;Lcom/flurry/org/apache/avro/io/Encoder;)V
    .locals 0
    .param p1, "datum"    # Ljava/lang/Object;
    .param p2, "out"    # Lcom/flurry/org/apache/avro/io/Encoder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 199
    .local p0, "this":Lcom/flurry/org/apache/avro/generic/GenericDatumWriter;, "Lcom/flurry/org/apache/avro/generic/GenericDatumWriter<TD;>;"
    check-cast p1, Ljava/nio/ByteBuffer;

    .end local p1    # "datum":Ljava/lang/Object;
    invoke-virtual {p2, p1}, Lcom/flurry/org/apache/avro/io/Encoder;->writeBytes(Ljava/nio/ByteBuffer;)V

    .line 200
    return-void
.end method

.method protected writeEnum(Lcom/flurry/org/apache/avro/Schema;Ljava/lang/Object;Lcom/flurry/org/apache/avro/io/Encoder;)V
    .locals 1
    .param p1, "schema"    # Lcom/flurry/org/apache/avro/Schema;
    .param p2, "datum"    # Ljava/lang/Object;
    .param p3, "out"    # Lcom/flurry/org/apache/avro/io/Encoder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 116
    .local p0, "this":Lcom/flurry/org/apache/avro/generic/GenericDatumWriter;, "Lcom/flurry/org/apache/avro/generic/GenericDatumWriter<TD;>;"
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/flurry/org/apache/avro/Schema;->getEnumOrdinal(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p3, v0}, Lcom/flurry/org/apache/avro/io/Encoder;->writeEnum(I)V

    .line 117
    return-void
.end method

.method protected writeFixed(Lcom/flurry/org/apache/avro/Schema;Ljava/lang/Object;Lcom/flurry/org/apache/avro/io/Encoder;)V
    .locals 3
    .param p1, "schema"    # Lcom/flurry/org/apache/avro/Schema;
    .param p2, "datum"    # Ljava/lang/Object;
    .param p3, "out"    # Lcom/flurry/org/apache/avro/io/Encoder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 206
    .local p0, "this":Lcom/flurry/org/apache/avro/generic/GenericDatumWriter;, "Lcom/flurry/org/apache/avro/generic/GenericDatumWriter<TD;>;"
    check-cast p2, Lcom/flurry/org/apache/avro/generic/GenericFixed;

    .end local p2    # "datum":Ljava/lang/Object;
    invoke-interface {p2}, Lcom/flurry/org/apache/avro/generic/GenericFixed;->bytes()[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/flurry/org/apache/avro/Schema;->getFixedSize()I

    move-result v2

    invoke-virtual {p3, v0, v1, v2}, Lcom/flurry/org/apache/avro/io/Encoder;->writeFixed([BII)V

    .line 207
    return-void
.end method

.method protected writeMap(Lcom/flurry/org/apache/avro/Schema;Ljava/lang/Object;Lcom/flurry/org/apache/avro/io/Encoder;)V
    .locals 6
    .param p1, "schema"    # Lcom/flurry/org/apache/avro/Schema;
    .param p2, "datum"    # Ljava/lang/Object;
    .param p3, "out"    # Lcom/flurry/org/apache/avro/io/Encoder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 158
    .local p0, "this":Lcom/flurry/org/apache/avro/generic/GenericDatumWriter;, "Lcom/flurry/org/apache/avro/generic/GenericDatumWriter<TD;>;"
    invoke-virtual {p1}, Lcom/flurry/org/apache/avro/Schema;->getValueType()Lcom/flurry/org/apache/avro/Schema;

    move-result-object v3

    .line 159
    .local v3, "value":Lcom/flurry/org/apache/avro/Schema;
    invoke-virtual {p0, p2}, Lcom/flurry/org/apache/avro/generic/GenericDatumWriter;->getMapSize(Ljava/lang/Object;)I

    move-result v2

    .line 160
    .local v2, "size":I
    invoke-virtual {p3}, Lcom/flurry/org/apache/avro/io/Encoder;->writeMapStart()V

    .line 161
    int-to-long v4, v2

    invoke-virtual {p3, v4, v5}, Lcom/flurry/org/apache/avro/io/Encoder;->setItemCount(J)V

    .line 162
    invoke-virtual {p0, p2}, Lcom/flurry/org/apache/avro/generic/GenericDatumWriter;->getMapEntries(Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 163
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-virtual {p3}, Lcom/flurry/org/apache/avro/io/Encoder;->startItem()V

    .line 164
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v4, p3}, Lcom/flurry/org/apache/avro/generic/GenericDatumWriter;->writeString(Ljava/lang/Object;Lcom/flurry/org/apache/avro/io/Encoder;)V

    .line 165
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v3, v4, p3}, Lcom/flurry/org/apache/avro/generic/GenericDatumWriter;->write(Lcom/flurry/org/apache/avro/Schema;Ljava/lang/Object;Lcom/flurry/org/apache/avro/io/Encoder;)V

    goto :goto_0

    .line 167
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    :cond_0
    invoke-virtual {p3}, Lcom/flurry/org/apache/avro/io/Encoder;->writeMapEnd()V

    .line 168
    return-void
.end method

.method protected writeRecord(Lcom/flurry/org/apache/avro/Schema;Ljava/lang/Object;Lcom/flurry/org/apache/avro/io/Encoder;)V
    .locals 8
    .param p1, "schema"    # Lcom/flurry/org/apache/avro/Schema;
    .param p2, "datum"    # Ljava/lang/Object;
    .param p3, "out"    # Lcom/flurry/org/apache/avro/io/Encoder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 101
    .local p0, "this":Lcom/flurry/org/apache/avro/generic/GenericDatumWriter;, "Lcom/flurry/org/apache/avro/generic/GenericDatumWriter<TD;>;"
    iget-object v5, p0, Lcom/flurry/org/apache/avro/generic/GenericDatumWriter;->data:Lcom/flurry/org/apache/avro/generic/GenericData;

    invoke-virtual {v5, p2, p1}, Lcom/flurry/org/apache/avro/generic/GenericData;->getRecordState(Ljava/lang/Object;Lcom/flurry/org/apache/avro/Schema;)Ljava/lang/Object;

    move-result-object v3

    .line 102
    .local v3, "state":Ljava/lang/Object;
    invoke-virtual {p1}, Lcom/flurry/org/apache/avro/Schema;->getFields()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flurry/org/apache/avro/Schema$Field;

    .line 103
    .local v1, "f":Lcom/flurry/org/apache/avro/Schema$Field;
    iget-object v5, p0, Lcom/flurry/org/apache/avro/generic/GenericDatumWriter;->data:Lcom/flurry/org/apache/avro/generic/GenericData;

    invoke-virtual {v1}, Lcom/flurry/org/apache/avro/Schema$Field;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Lcom/flurry/org/apache/avro/Schema$Field;->pos()I

    move-result v7

    invoke-virtual {v5, p2, v6, v7, v3}, Lcom/flurry/org/apache/avro/generic/GenericData;->getField(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 105
    .local v4, "value":Ljava/lang/Object;
    :try_start_0
    invoke-virtual {v1}, Lcom/flurry/org/apache/avro/Schema$Field;->schema()Lcom/flurry/org/apache/avro/Schema;

    move-result-object v5

    invoke-virtual {p0, v5, v4, p3}, Lcom/flurry/org/apache/avro/generic/GenericDatumWriter;->write(Lcom/flurry/org/apache/avro/Schema;Ljava/lang/Object;Lcom/flurry/org/apache/avro/io/Encoder;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 106
    :catch_0
    move-exception v0

    .line 107
    .local v0, "e":Ljava/lang/NullPointerException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " in field "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/flurry/org/apache/avro/Schema$Field;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v0, v5}, Lcom/flurry/org/apache/avro/generic/GenericDatumWriter;->npe(Ljava/lang/NullPointerException;Ljava/lang/String;)Ljava/lang/NullPointerException;

    move-result-object v5

    throw v5

    .line 110
    .end local v0    # "e":Ljava/lang/NullPointerException;
    .end local v1    # "f":Lcom/flurry/org/apache/avro/Schema$Field;
    .end local v4    # "value":Ljava/lang/Object;
    :cond_0
    return-void
.end method

.method protected writeString(Lcom/flurry/org/apache/avro/Schema;Ljava/lang/Object;Lcom/flurry/org/apache/avro/io/Encoder;)V
    .locals 0
    .param p1, "schema"    # Lcom/flurry/org/apache/avro/Schema;
    .param p2, "datum"    # Ljava/lang/Object;
    .param p3, "out"    # Lcom/flurry/org/apache/avro/io/Encoder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 188
    .local p0, "this":Lcom/flurry/org/apache/avro/generic/GenericDatumWriter;, "Lcom/flurry/org/apache/avro/generic/GenericDatumWriter<TD;>;"
    invoke-virtual {p0, p2, p3}, Lcom/flurry/org/apache/avro/generic/GenericDatumWriter;->writeString(Ljava/lang/Object;Lcom/flurry/org/apache/avro/io/Encoder;)V

    .line 189
    return-void
.end method

.method protected writeString(Ljava/lang/Object;Lcom/flurry/org/apache/avro/io/Encoder;)V
    .locals 0
    .param p1, "datum"    # Ljava/lang/Object;
    .param p2, "out"    # Lcom/flurry/org/apache/avro/io/Encoder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 193
    .local p0, "this":Lcom/flurry/org/apache/avro/generic/GenericDatumWriter;, "Lcom/flurry/org/apache/avro/generic/GenericDatumWriter<TD;>;"
    check-cast p1, Ljava/lang/CharSequence;

    .end local p1    # "datum":Ljava/lang/Object;
    invoke-virtual {p2, p1}, Lcom/flurry/org/apache/avro/io/Encoder;->writeString(Ljava/lang/CharSequence;)V

    .line 194
    return-void
.end method
