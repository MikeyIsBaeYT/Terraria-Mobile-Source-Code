.class public Lcom/flurry/org/apache/avro/specific/SpecificDatumWriter;
.super Lcom/flurry/org/apache/avro/generic/GenericDatumWriter;
.source "SpecificDatumWriter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/flurry/org/apache/avro/generic/GenericDatumWriter",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    .local p0, "this":Lcom/flurry/org/apache/avro/specific/SpecificDatumWriter;, "Lcom/flurry/org/apache/avro/specific/SpecificDatumWriter<TT;>;"
    invoke-static {}, Lcom/flurry/org/apache/avro/specific/SpecificData;->get()Lcom/flurry/org/apache/avro/specific/SpecificData;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/flurry/org/apache/avro/generic/GenericDatumWriter;-><init>(Lcom/flurry/org/apache/avro/generic/GenericData;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Lcom/flurry/org/apache/avro/Schema;)V
    .locals 1
    .param p1, "schema"    # Lcom/flurry/org/apache/avro/Schema;

    .prologue
    .line 37
    .local p0, "this":Lcom/flurry/org/apache/avro/specific/SpecificDatumWriter;, "Lcom/flurry/org/apache/avro/specific/SpecificDatumWriter<TT;>;"
    invoke-static {}, Lcom/flurry/org/apache/avro/specific/SpecificData;->get()Lcom/flurry/org/apache/avro/specific/SpecificData;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/flurry/org/apache/avro/generic/GenericDatumWriter;-><init>(Lcom/flurry/org/apache/avro/Schema;Lcom/flurry/org/apache/avro/generic/GenericData;)V

    .line 38
    return-void
.end method

.method protected constructor <init>(Lcom/flurry/org/apache/avro/Schema;Lcom/flurry/org/apache/avro/specific/SpecificData;)V
    .locals 0
    .param p1, "root"    # Lcom/flurry/org/apache/avro/Schema;
    .param p2, "specificData"    # Lcom/flurry/org/apache/avro/specific/SpecificData;

    .prologue
    .line 41
    .local p0, "this":Lcom/flurry/org/apache/avro/specific/SpecificDatumWriter;, "Lcom/flurry/org/apache/avro/specific/SpecificDatumWriter<TT;>;"
    invoke-direct {p0, p1, p2}, Lcom/flurry/org/apache/avro/generic/GenericDatumWriter;-><init>(Lcom/flurry/org/apache/avro/Schema;Lcom/flurry/org/apache/avro/generic/GenericData;)V

    .line 42
    return-void
.end method

.method protected constructor <init>(Lcom/flurry/org/apache/avro/specific/SpecificData;)V
    .locals 0
    .param p1, "specificData"    # Lcom/flurry/org/apache/avro/specific/SpecificData;

    .prologue
    .line 45
    .local p0, "this":Lcom/flurry/org/apache/avro/specific/SpecificDatumWriter;, "Lcom/flurry/org/apache/avro/specific/SpecificDatumWriter<TT;>;"
    invoke-direct {p0, p1}, Lcom/flurry/org/apache/avro/generic/GenericDatumWriter;-><init>(Lcom/flurry/org/apache/avro/generic/GenericData;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p0, "this":Lcom/flurry/org/apache/avro/specific/SpecificDatumWriter;, "Lcom/flurry/org/apache/avro/specific/SpecificDatumWriter<TT;>;"
    .local p1, "c":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {}, Lcom/flurry/org/apache/avro/specific/SpecificData;->get()Lcom/flurry/org/apache/avro/specific/SpecificData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/flurry/org/apache/avro/specific/SpecificData;->getSchema(Ljava/lang/reflect/Type;)Lcom/flurry/org/apache/avro/Schema;

    move-result-object v0

    invoke-static {}, Lcom/flurry/org/apache/avro/specific/SpecificData;->get()Lcom/flurry/org/apache/avro/specific/SpecificData;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/flurry/org/apache/avro/generic/GenericDatumWriter;-><init>(Lcom/flurry/org/apache/avro/Schema;Lcom/flurry/org/apache/avro/generic/GenericData;)V

    .line 34
    return-void
.end method


# virtual methods
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
    .line 51
    .local p0, "this":Lcom/flurry/org/apache/avro/specific/SpecificDatumWriter;, "Lcom/flurry/org/apache/avro/specific/SpecificDatumWriter<TT;>;"
    instance-of v0, p2, Ljava/lang/Enum;

    if-nez v0, :cond_0

    .line 52
    invoke-super {p0, p1, p2, p3}, Lcom/flurry/org/apache/avro/generic/GenericDatumWriter;->writeEnum(Lcom/flurry/org/apache/avro/Schema;Ljava/lang/Object;Lcom/flurry/org/apache/avro/io/Encoder;)V

    .line 55
    .end local p2    # "datum":Ljava/lang/Object;
    :goto_0
    return-void

    .line 54
    .restart local p2    # "datum":Ljava/lang/Object;
    :cond_0
    check-cast p2, Ljava/lang/Enum;

    .end local p2    # "datum":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-virtual {p3, v0}, Lcom/flurry/org/apache/avro/io/Encoder;->writeEnum(I)V

    goto :goto_0
.end method
