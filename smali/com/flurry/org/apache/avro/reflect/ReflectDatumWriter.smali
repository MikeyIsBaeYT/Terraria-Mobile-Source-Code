.class public Lcom/flurry/org/apache/avro/reflect/ReflectDatumWriter;
.super Lcom/flurry/org/apache/avro/specific/SpecificDatumWriter;
.source "ReflectDatumWriter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/flurry/org/apache/avro/specific/SpecificDatumWriter",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    .local p0, "this":Lcom/flurry/org/apache/avro/reflect/ReflectDatumWriter;, "Lcom/flurry/org/apache/avro/reflect/ReflectDatumWriter<TT;>;"
    invoke-static {}, Lcom/flurry/org/apache/avro/reflect/ReflectData;->get()Lcom/flurry/org/apache/avro/reflect/ReflectData;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/flurry/org/apache/avro/reflect/ReflectDatumWriter;-><init>(Lcom/flurry/org/apache/avro/reflect/ReflectData;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Lcom/flurry/org/apache/avro/Schema;)V
    .locals 1
    .param p1, "root"    # Lcom/flurry/org/apache/avro/Schema;

    .prologue
    .line 47
    .local p0, "this":Lcom/flurry/org/apache/avro/reflect/ReflectDatumWriter;, "Lcom/flurry/org/apache/avro/reflect/ReflectDatumWriter<TT;>;"
    invoke-static {}, Lcom/flurry/org/apache/avro/reflect/ReflectData;->get()Lcom/flurry/org/apache/avro/reflect/ReflectData;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/flurry/org/apache/avro/reflect/ReflectDatumWriter;-><init>(Lcom/flurry/org/apache/avro/Schema;Lcom/flurry/org/apache/avro/reflect/ReflectData;)V

    .line 48
    return-void
.end method

.method protected constructor <init>(Lcom/flurry/org/apache/avro/Schema;Lcom/flurry/org/apache/avro/reflect/ReflectData;)V
    .locals 0
    .param p1, "root"    # Lcom/flurry/org/apache/avro/Schema;
    .param p2, "reflectData"    # Lcom/flurry/org/apache/avro/reflect/ReflectData;

    .prologue
    .line 51
    .local p0, "this":Lcom/flurry/org/apache/avro/reflect/ReflectDatumWriter;, "Lcom/flurry/org/apache/avro/reflect/ReflectDatumWriter<TT;>;"
    invoke-direct {p0, p1, p2}, Lcom/flurry/org/apache/avro/specific/SpecificDatumWriter;-><init>(Lcom/flurry/org/apache/avro/Schema;Lcom/flurry/org/apache/avro/specific/SpecificData;)V

    .line 52
    return-void
.end method

.method protected constructor <init>(Lcom/flurry/org/apache/avro/reflect/ReflectData;)V
    .locals 0
    .param p1, "reflectData"    # Lcom/flurry/org/apache/avro/reflect/ReflectData;

    .prologue
    .line 55
    .local p0, "this":Lcom/flurry/org/apache/avro/reflect/ReflectDatumWriter;, "Lcom/flurry/org/apache/avro/reflect/ReflectDatumWriter<TT;>;"
    invoke-direct {p0, p1}, Lcom/flurry/org/apache/avro/specific/SpecificDatumWriter;-><init>(Lcom/flurry/org/apache/avro/specific/SpecificData;)V

    .line 56
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
    .line 39
    .local p0, "this":Lcom/flurry/org/apache/avro/reflect/ReflectDatumWriter;, "Lcom/flurry/org/apache/avro/reflect/ReflectDatumWriter<TT;>;"
    .local p1, "c":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {}, Lcom/flurry/org/apache/avro/reflect/ReflectData;->get()Lcom/flurry/org/apache/avro/reflect/ReflectData;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/flurry/org/apache/avro/reflect/ReflectDatumWriter;-><init>(Ljava/lang/Class;Lcom/flurry/org/apache/avro/reflect/ReflectData;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Lcom/flurry/org/apache/avro/reflect/ReflectData;)V
    .locals 1
    .param p2, "data"    # Lcom/flurry/org/apache/avro/reflect/ReflectData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/flurry/org/apache/avro/reflect/ReflectData;",
            ")V"
        }
    .end annotation

    .prologue
    .line 43
    .local p0, "this":Lcom/flurry/org/apache/avro/reflect/ReflectDatumWriter;, "Lcom/flurry/org/apache/avro/reflect/ReflectDatumWriter<TT;>;"
    .local p1, "c":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p2, p1}, Lcom/flurry/org/apache/avro/reflect/ReflectData;->getSchema(Ljava/lang/reflect/Type;)Lcom/flurry/org/apache/avro/Schema;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/flurry/org/apache/avro/reflect/ReflectDatumWriter;-><init>(Lcom/flurry/org/apache/avro/Schema;Lcom/flurry/org/apache/avro/reflect/ReflectData;)V

    .line 44
    return-void
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
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 69
    .local p0, "this":Lcom/flurry/org/apache/avro/reflect/ReflectDatumWriter;, "Lcom/flurry/org/apache/avro/reflect/ReflectDatumWriter<TT;>;"
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_0

    .line 70
    check-cast p1, Ljava/util/Collection;

    .end local p1    # "array":Ljava/lang/Object;
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 71
    :goto_0
    return-object v0

    .restart local p1    # "array":Ljava/lang/Object;
    :cond_0
    new-instance v0, Lcom/flurry/org/apache/avro/reflect/ReflectDatumWriter$1;

    invoke-direct {v0, p0, p1}, Lcom/flurry/org/apache/avro/reflect/ReflectDatumWriter$1;-><init>(Lcom/flurry/org/apache/avro/reflect/ReflectDatumWriter;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected getArraySize(Ljava/lang/Object;)J
    .locals 2
    .param p1, "array"    # Ljava/lang/Object;

    .prologue
    .line 61
    .local p0, "this":Lcom/flurry/org/apache/avro/reflect/ReflectDatumWriter;, "Lcom/flurry/org/apache/avro/reflect/ReflectDatumWriter<TT;>;"
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_0

    .line 62
    check-cast p1, Ljava/util/Collection;

    .end local p1    # "array":Ljava/lang/Object;
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    int-to-long v0, v0

    .line 63
    :goto_0
    return-wide v0

    .restart local p1    # "array":Ljava/lang/Object;
    :cond_0
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    int-to-long v0, v0

    goto :goto_0
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
    .line 99
    .local p0, "this":Lcom/flurry/org/apache/avro/reflect/ReflectDatumWriter;, "Lcom/flurry/org/apache/avro/reflect/ReflectDatumWriter<TT;>;"
    instance-of v2, p2, Ljava/lang/Byte;

    if-eqz v2, :cond_1

    .line 100
    check-cast p2, Ljava/lang/Byte;

    .end local p2    # "datum":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Byte;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 104
    :cond_0
    :goto_0
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Lcom/flurry/org/apache/avro/specific/SpecificDatumWriter;->write(Lcom/flurry/org/apache/avro/Schema;Ljava/lang/Object;Lcom/flurry/org/apache/avro/io/Encoder;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    return-void

    .line 101
    .restart local p2    # "datum":Ljava/lang/Object;
    :cond_1
    instance-of v2, p2, Ljava/lang/Short;

    if-eqz v2, :cond_0

    .line 102
    check-cast p2, Ljava/lang/Short;

    .end local p2    # "datum":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Short;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .local p2, "datum":Ljava/lang/Integer;
    goto :goto_0

    .line 105
    .end local p2    # "datum":Ljava/lang/Integer;
    :catch_0
    move-exception v0

    .line 106
    .local v0, "e":Ljava/lang/NullPointerException;
    new-instance v1, Ljava/lang/NullPointerException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/flurry/org/apache/avro/Schema;->getFullName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 108
    .local v1, "result":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-nez v2, :cond_2

    .end local v0    # "e":Ljava/lang/NullPointerException;
    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/NullPointerException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 109
    throw v1

    .line 108
    .restart local v0    # "e":Ljava/lang/NullPointerException;
    :cond_2
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_1
.end method

.method protected writeBytes(Ljava/lang/Object;Lcom/flurry/org/apache/avro/io/Encoder;)V
    .locals 1
    .param p1, "datum"    # Ljava/lang/Object;
    .param p2, "out"    # Lcom/flurry/org/apache/avro/io/Encoder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 90
    .local p0, "this":Lcom/flurry/org/apache/avro/reflect/ReflectDatumWriter;, "Lcom/flurry/org/apache/avro/reflect/ReflectDatumWriter<TT;>;"
    instance-of v0, p1, [B

    if-eqz v0, :cond_0

    .line 91
    check-cast p1, [B

    .end local p1    # "datum":Ljava/lang/Object;
    check-cast p1, [B

    invoke-virtual {p2, p1}, Lcom/flurry/org/apache/avro/io/Encoder;->writeBytes([B)V

    .line 94
    :goto_0
    return-void

    .line 93
    .restart local p1    # "datum":Ljava/lang/Object;
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/flurry/org/apache/avro/specific/SpecificDatumWriter;->writeBytes(Ljava/lang/Object;Lcom/flurry/org/apache/avro/io/Encoder;)V

    goto :goto_0
.end method

.method protected writeString(Lcom/flurry/org/apache/avro/Schema;Ljava/lang/Object;Lcom/flurry/org/apache/avro/io/Encoder;)V
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
    .line 83
    .local p0, "this":Lcom/flurry/org/apache/avro/reflect/ReflectDatumWriter;, "Lcom/flurry/org/apache/avro/reflect/ReflectDatumWriter<TT;>;"
    const-string v0, "java-class"

    invoke-virtual {p1, v0}, Lcom/flurry/org/apache/avro/Schema;->getProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    .line 85
    .end local p2    # "datum":Ljava/lang/Object;
    :cond_0
    invoke-virtual {p0, p2, p3}, Lcom/flurry/org/apache/avro/reflect/ReflectDatumWriter;->writeString(Ljava/lang/Object;Lcom/flurry/org/apache/avro/io/Encoder;)V

    .line 86
    return-void
.end method
