.class public Lcom/flurry/org/apache/avro/reflect/ReflectDatumReader;
.super Lcom/flurry/org/apache/avro/specific/SpecificDatumReader;
.source "ReflectDatumReader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/flurry/org/apache/avro/specific/SpecificDatumReader",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .local p0, "this":Lcom/flurry/org/apache/avro/reflect/ReflectDatumReader;, "Lcom/flurry/org/apache/avro/reflect/ReflectDatumReader<TT;>;"
    const/4 v1, 0x0

    .line 38
    invoke-static {}, Lcom/flurry/org/apache/avro/reflect/ReflectData;->get()Lcom/flurry/org/apache/avro/reflect/ReflectData;

    move-result-object v0

    invoke-direct {p0, v1, v1, v0}, Lcom/flurry/org/apache/avro/reflect/ReflectDatumReader;-><init>(Lcom/flurry/org/apache/avro/Schema;Lcom/flurry/org/apache/avro/Schema;Lcom/flurry/org/apache/avro/reflect/ReflectData;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Lcom/flurry/org/apache/avro/Schema;)V
    .locals 1
    .param p1, "root"    # Lcom/flurry/org/apache/avro/Schema;

    .prologue
    .line 47
    .local p0, "this":Lcom/flurry/org/apache/avro/reflect/ReflectDatumReader;, "Lcom/flurry/org/apache/avro/reflect/ReflectDatumReader<TT;>;"
    invoke-static {}, Lcom/flurry/org/apache/avro/reflect/ReflectData;->get()Lcom/flurry/org/apache/avro/reflect/ReflectData;

    move-result-object v0

    invoke-direct {p0, p1, p1, v0}, Lcom/flurry/org/apache/avro/reflect/ReflectDatumReader;-><init>(Lcom/flurry/org/apache/avro/Schema;Lcom/flurry/org/apache/avro/Schema;Lcom/flurry/org/apache/avro/reflect/ReflectData;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Lcom/flurry/org/apache/avro/Schema;Lcom/flurry/org/apache/avro/Schema;)V
    .locals 1
    .param p1, "writer"    # Lcom/flurry/org/apache/avro/Schema;
    .param p2, "reader"    # Lcom/flurry/org/apache/avro/Schema;

    .prologue
    .line 52
    .local p0, "this":Lcom/flurry/org/apache/avro/reflect/ReflectDatumReader;, "Lcom/flurry/org/apache/avro/reflect/ReflectDatumReader<TT;>;"
    invoke-static {}, Lcom/flurry/org/apache/avro/reflect/ReflectData;->get()Lcom/flurry/org/apache/avro/reflect/ReflectData;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/flurry/org/apache/avro/reflect/ReflectDatumReader;-><init>(Lcom/flurry/org/apache/avro/Schema;Lcom/flurry/org/apache/avro/Schema;Lcom/flurry/org/apache/avro/reflect/ReflectData;)V

    .line 53
    return-void
.end method

.method protected constructor <init>(Lcom/flurry/org/apache/avro/Schema;Lcom/flurry/org/apache/avro/Schema;Lcom/flurry/org/apache/avro/reflect/ReflectData;)V
    .locals 0
    .param p1, "writer"    # Lcom/flurry/org/apache/avro/Schema;
    .param p2, "reader"    # Lcom/flurry/org/apache/avro/Schema;
    .param p3, "data"    # Lcom/flurry/org/apache/avro/reflect/ReflectData;

    .prologue
    .line 56
    .local p0, "this":Lcom/flurry/org/apache/avro/reflect/ReflectDatumReader;, "Lcom/flurry/org/apache/avro/reflect/ReflectDatumReader<TT;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/flurry/org/apache/avro/specific/SpecificDatumReader;-><init>(Lcom/flurry/org/apache/avro/Schema;Lcom/flurry/org/apache/avro/Schema;Lcom/flurry/org/apache/avro/specific/SpecificData;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p0, "this":Lcom/flurry/org/apache/avro/reflect/ReflectDatumReader;, "Lcom/flurry/org/apache/avro/reflect/ReflectDatumReader<TT;>;"
    .local p1, "c":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {}, Lcom/flurry/org/apache/avro/reflect/ReflectData;->get()Lcom/flurry/org/apache/avro/reflect/ReflectData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/flurry/org/apache/avro/reflect/ReflectData;->getSchema(Ljava/lang/reflect/Type;)Lcom/flurry/org/apache/avro/Schema;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/flurry/org/apache/avro/reflect/ReflectDatumReader;-><init>(Lcom/flurry/org/apache/avro/Schema;)V

    .line 43
    return-void
.end method


# virtual methods
.method protected addToArray(Ljava/lang/Object;JLjava/lang/Object;)V
    .locals 2
    .param p1, "array"    # Ljava/lang/Object;
    .param p2, "pos"    # J
    .param p4, "e"    # Ljava/lang/Object;

    .prologue
    .line 87
    .local p0, "this":Lcom/flurry/org/apache/avro/reflect/ReflectDatumReader;, "Lcom/flurry/org/apache/avro/reflect/ReflectDatumReader<TT;>;"
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_0

    .line 88
    check-cast p1, Ljava/util/Collection;

    .end local p1    # "array":Ljava/lang/Object;
    invoke-interface {p1, p4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 92
    :goto_0
    return-void

    .line 90
    .restart local p1    # "array":Ljava/lang/Object;
    :cond_0
    long-to-int v0, p2

    invoke-static {p1, v0, p4}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    goto :goto_0
.end method

.method protected createString(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 121
    .local p0, "this":Lcom/flurry/org/apache/avro/reflect/ReflectDatumReader;, "Lcom/flurry/org/apache/avro/reflect/ReflectDatumReader<TT;>;"
    return-object p1
.end method

.method protected newArray(Ljava/lang/Object;ILcom/flurry/org/apache/avro/Schema;)Ljava/lang/Object;
    .locals 4
    .param p1, "old"    # Ljava/lang/Object;
    .param p2, "size"    # I
    .param p3, "schema"    # Lcom/flurry/org/apache/avro/Schema;

    .prologue
    .line 62
    .local p0, "this":Lcom/flurry/org/apache/avro/reflect/ReflectDatumReader;, "Lcom/flurry/org/apache/avro/reflect/ReflectDatumReader<TT;>;"
    invoke-static {}, Lcom/flurry/org/apache/avro/reflect/ReflectData;->get()Lcom/flurry/org/apache/avro/reflect/ReflectData;

    move-result-object v1

    .line 63
    .local v1, "data":Lcom/flurry/org/apache/avro/reflect/ReflectData;
    const-string v3, "java-class"

    invoke-static {p3, v3}, Lcom/flurry/org/apache/avro/reflect/ReflectData;->getClassProp(Lcom/flurry/org/apache/avro/Schema;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 64
    .local v0, "collectionClass":Ljava/lang/Class;
    if-eqz v0, :cond_2

    .line 65
    instance-of v3, p1, Ljava/util/Collection;

    if-eqz v3, :cond_0

    move-object v3, p1

    .line 66
    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->clear()V

    .line 76
    .end local p1    # "old":Ljava/lang/Object;
    :goto_0
    return-object p1

    .line 69
    .restart local p1    # "old":Ljava/lang/Object;
    :cond_0
    const-class v3, Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 70
    new-instance p1, Ljava/util/ArrayList;

    .end local p1    # "old":Ljava/lang/Object;
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    .line 71
    .restart local p1    # "old":Ljava/lang/Object;
    :cond_1
    invoke-static {v0, p3}, Lcom/flurry/org/apache/avro/reflect/ReflectData;->newInstance(Ljava/lang/Class;Lcom/flurry/org/apache/avro/Schema;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    .line 73
    :cond_2
    const-string v3, "java-element-class"

    invoke-static {p3, v3}, Lcom/flurry/org/apache/avro/reflect/ReflectData;->getClassProp(Lcom/flurry/org/apache/avro/Schema;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 74
    .local v2, "elementClass":Ljava/lang/Class;
    if-nez v2, :cond_3

    .line 75
    invoke-virtual {p3}, Lcom/flurry/org/apache/avro/Schema;->getElementType()Lcom/flurry/org/apache/avro/Schema;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/flurry/org/apache/avro/reflect/ReflectData;->getClass(Lcom/flurry/org/apache/avro/Schema;)Ljava/lang/Class;

    move-result-object v2

    .line 76
    :cond_3
    invoke-static {v2, p2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0
.end method

.method protected peekArray(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "array"    # Ljava/lang/Object;

    .prologue
    .line 81
    .local p0, "this":Lcom/flurry/org/apache/avro/reflect/ReflectDatumReader;, "Lcom/flurry/org/apache/avro/reflect/ReflectDatumReader<TT;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method protected readBytes(Ljava/lang/Object;Lcom/flurry/org/apache/avro/io/Decoder;)Ljava/lang/Object;
    .locals 3
    .param p1, "old"    # Ljava/lang/Object;
    .param p2, "in"    # Lcom/flurry/org/apache/avro/io/Decoder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 125
    .local p0, "this":Lcom/flurry/org/apache/avro/reflect/ReflectDatumReader;, "Lcom/flurry/org/apache/avro/reflect/ReflectDatumReader<TT;>;"
    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Lcom/flurry/org/apache/avro/io/Decoder;->readBytes(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 126
    .local v0, "bytes":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    new-array v1, v2, [B

    .line 127
    .local v1, "result":[B
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 128
    return-object v1
.end method

.method protected readInt(Ljava/lang/Object;Lcom/flurry/org/apache/avro/Schema;Lcom/flurry/org/apache/avro/io/Decoder;)Ljava/lang/Object;
    .locals 3
    .param p1, "old"    # Ljava/lang/Object;
    .param p2, "expected"    # Lcom/flurry/org/apache/avro/Schema;
    .param p3, "in"    # Lcom/flurry/org/apache/avro/io/Decoder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 134
    .local p0, "this":Lcom/flurry/org/apache/avro/reflect/ReflectDatumReader;, "Lcom/flurry/org/apache/avro/reflect/ReflectDatumReader<TT;>;"
    invoke-virtual {p3}, Lcom/flurry/org/apache/avro/io/Decoder;->readInt()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 135
    .local v1, "value":Ljava/lang/Integer;
    const-string v2, "java-class"

    invoke-virtual {p2, v2}, Lcom/flurry/org/apache/avro/Schema;->getProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 136
    .local v0, "intClass":Ljava/lang/String;
    const-class v2, Ljava/lang/Byte;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 137
    check-cast v1, Ljava/lang/Integer;

    .end local v1    # "value":Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->byteValue()B

    move-result v2

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    .line 140
    :cond_0
    :goto_0
    return-object v1

    .line 138
    .restart local v1    # "value":Ljava/lang/Integer;
    :cond_1
    const-class v2, Ljava/lang/Short;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 139
    check-cast v1, Ljava/lang/Integer;

    .end local v1    # "value":Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->shortValue()S

    move-result v2

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    .local v1, "value":Ljava/lang/Short;
    goto :goto_0
.end method

.method protected readString(Ljava/lang/Object;Lcom/flurry/org/apache/avro/Schema;Lcom/flurry/org/apache/avro/io/Decoder;)Ljava/lang/Object;
    .locals 6
    .param p1, "old"    # Ljava/lang/Object;
    .param p2, "s"    # Lcom/flurry/org/apache/avro/Schema;
    .param p3, "in"    # Lcom/flurry/org/apache/avro/io/Decoder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 98
    .local p0, "this":Lcom/flurry/org/apache/avro/reflect/ReflectDatumReader;, "Lcom/flurry/org/apache/avro/reflect/ReflectDatumReader<TT;>;"
    const/4 v3, 0x0

    invoke-virtual {p0, v3, p3}, Lcom/flurry/org/apache/avro/reflect/ReflectDatumReader;->readString(Ljava/lang/Object;Lcom/flurry/org/apache/avro/io/Decoder;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 99
    .local v2, "value":Ljava/lang/String;
    const-string v3, "java-class"

    invoke-static {p2, v3}, Lcom/flurry/org/apache/avro/reflect/ReflectData;->getClassProp(Lcom/flurry/org/apache/avro/Schema;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 100
    .local v0, "c":Ljava/lang/Class;
    if-eqz v0, :cond_0

    .line 102
    const/4 v3, 0x1

    :try_start_0
    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v2

    .line 112
    .end local v2    # "value":Ljava/lang/String;
    :cond_0
    return-object v2

    .line 103
    .restart local v2    # "value":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 104
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    new-instance v3, Lcom/flurry/org/apache/avro/AvroRuntimeException;

    invoke-direct {v3, v1}, Lcom/flurry/org/apache/avro/AvroRuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 105
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v1

    .line 106
    .local v1, "e":Ljava/lang/InstantiationException;
    new-instance v3, Lcom/flurry/org/apache/avro/AvroRuntimeException;

    invoke-direct {v3, v1}, Lcom/flurry/org/apache/avro/AvroRuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 107
    .end local v1    # "e":Ljava/lang/InstantiationException;
    :catch_2
    move-exception v1

    .line 108
    .local v1, "e":Ljava/lang/IllegalAccessException;
    new-instance v3, Lcom/flurry/org/apache/avro/AvroRuntimeException;

    invoke-direct {v3, v1}, Lcom/flurry/org/apache/avro/AvroRuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 109
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v1

    .line 110
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v3, Lcom/flurry/org/apache/avro/AvroRuntimeException;

    invoke-direct {v3, v1}, Lcom/flurry/org/apache/avro/AvroRuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method protected readString(Ljava/lang/Object;Lcom/flurry/org/apache/avro/io/Decoder;)Ljava/lang/Object;
    .locals 1
    .param p1, "old"    # Ljava/lang/Object;
    .param p2, "in"    # Lcom/flurry/org/apache/avro/io/Decoder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 117
    .local p0, "this":Lcom/flurry/org/apache/avro/reflect/ReflectDatumReader;, "Lcom/flurry/org/apache/avro/reflect/ReflectDatumReader<TT;>;"
    const/4 v0, 0x0

    invoke-super {p0, v0, p2}, Lcom/flurry/org/apache/avro/specific/SpecificDatumReader;->readString(Ljava/lang/Object;Lcom/flurry/org/apache/avro/io/Decoder;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
