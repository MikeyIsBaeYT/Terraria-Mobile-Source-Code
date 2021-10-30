.class public Lcom/flurry/org/apache/avro/specific/SpecificDatumReader;
.super Lcom/flurry/org/apache/avro/generic/GenericDatumReader;
.source "SpecificDatumReader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/flurry/org/apache/avro/generic/GenericDatumReader",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .local p0, "this":Lcom/flurry/org/apache/avro/specific/SpecificDatumReader;, "Lcom/flurry/org/apache/avro/specific/SpecificDatumReader<TT;>;"
    const/4 v1, 0x0

    .line 26
    invoke-static {}, Lcom/flurry/org/apache/avro/specific/SpecificData;->get()Lcom/flurry/org/apache/avro/specific/SpecificData;

    move-result-object v0

    invoke-direct {p0, v1, v1, v0}, Lcom/flurry/org/apache/avro/specific/SpecificDatumReader;-><init>(Lcom/flurry/org/apache/avro/Schema;Lcom/flurry/org/apache/avro/Schema;Lcom/flurry/org/apache/avro/specific/SpecificData;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Lcom/flurry/org/apache/avro/Schema;)V
    .locals 1
    .param p1, "schema"    # Lcom/flurry/org/apache/avro/Schema;

    .prologue
    .line 35
    .local p0, "this":Lcom/flurry/org/apache/avro/specific/SpecificDatumReader;, "Lcom/flurry/org/apache/avro/specific/SpecificDatumReader<TT;>;"
    invoke-static {}, Lcom/flurry/org/apache/avro/specific/SpecificData;->get()Lcom/flurry/org/apache/avro/specific/SpecificData;

    move-result-object v0

    invoke-direct {p0, p1, p1, v0}, Lcom/flurry/org/apache/avro/specific/SpecificDatumReader;-><init>(Lcom/flurry/org/apache/avro/Schema;Lcom/flurry/org/apache/avro/Schema;Lcom/flurry/org/apache/avro/specific/SpecificData;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Lcom/flurry/org/apache/avro/Schema;Lcom/flurry/org/apache/avro/Schema;)V
    .locals 1
    .param p1, "writer"    # Lcom/flurry/org/apache/avro/Schema;
    .param p2, "reader"    # Lcom/flurry/org/apache/avro/Schema;

    .prologue
    .line 40
    .local p0, "this":Lcom/flurry/org/apache/avro/specific/SpecificDatumReader;, "Lcom/flurry/org/apache/avro/specific/SpecificDatumReader<TT;>;"
    invoke-static {}, Lcom/flurry/org/apache/avro/specific/SpecificData;->get()Lcom/flurry/org/apache/avro/specific/SpecificData;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/flurry/org/apache/avro/specific/SpecificDatumReader;-><init>(Lcom/flurry/org/apache/avro/Schema;Lcom/flurry/org/apache/avro/Schema;Lcom/flurry/org/apache/avro/specific/SpecificData;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Lcom/flurry/org/apache/avro/Schema;Lcom/flurry/org/apache/avro/Schema;Lcom/flurry/org/apache/avro/specific/SpecificData;)V
    .locals 0
    .param p1, "writer"    # Lcom/flurry/org/apache/avro/Schema;
    .param p2, "reader"    # Lcom/flurry/org/apache/avro/Schema;
    .param p3, "data"    # Lcom/flurry/org/apache/avro/specific/SpecificData;

    .prologue
    .line 47
    .local p0, "this":Lcom/flurry/org/apache/avro/specific/SpecificDatumReader;, "Lcom/flurry/org/apache/avro/specific/SpecificDatumReader<TT;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/flurry/org/apache/avro/generic/GenericDatumReader;-><init>(Lcom/flurry/org/apache/avro/Schema;Lcom/flurry/org/apache/avro/Schema;Lcom/flurry/org/apache/avro/generic/GenericData;)V

    .line 48
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
    .line 30
    .local p0, "this":Lcom/flurry/org/apache/avro/specific/SpecificDatumReader;, "Lcom/flurry/org/apache/avro/specific/SpecificDatumReader<TT;>;"
    .local p1, "c":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {}, Lcom/flurry/org/apache/avro/specific/SpecificData;->get()Lcom/flurry/org/apache/avro/specific/SpecificData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/flurry/org/apache/avro/specific/SpecificData;->getSchema(Ljava/lang/reflect/Type;)Lcom/flurry/org/apache/avro/Schema;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/flurry/org/apache/avro/specific/SpecificDatumReader;-><init>(Lcom/flurry/org/apache/avro/Schema;)V

    .line 31
    return-void
.end method


# virtual methods
.method protected createEnum(Ljava/lang/String;Lcom/flurry/org/apache/avro/Schema;)Ljava/lang/Object;
    .locals 2
    .param p1, "symbol"    # Ljava/lang/String;
    .param p2, "schema"    # Lcom/flurry/org/apache/avro/Schema;

    .prologue
    .line 70
    .local p0, "this":Lcom/flurry/org/apache/avro/specific/SpecificDatumReader;, "Lcom/flurry/org/apache/avro/specific/SpecificDatumReader<TT;>;"
    invoke-virtual {p0}, Lcom/flurry/org/apache/avro/specific/SpecificDatumReader;->getSpecificData()Lcom/flurry/org/apache/avro/specific/SpecificData;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/flurry/org/apache/avro/specific/SpecificData;->getClass(Lcom/flurry/org/apache/avro/Schema;)Ljava/lang/Class;

    move-result-object v0

    .line 71
    .local v0, "c":Ljava/lang/Class;
    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/flurry/org/apache/avro/generic/GenericDatumReader;->createEnum(Ljava/lang/String;Lcom/flurry/org/apache/avro/Schema;)Ljava/lang/Object;

    move-result-object v1

    .line 72
    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0, p1}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    goto :goto_0
.end method

.method public getSpecificData()Lcom/flurry/org/apache/avro/specific/SpecificData;
    .locals 1

    .prologue
    .line 51
    .local p0, "this":Lcom/flurry/org/apache/avro/specific/SpecificDatumReader;, "Lcom/flurry/org/apache/avro/specific/SpecificDatumReader<TT;>;"
    invoke-virtual {p0}, Lcom/flurry/org/apache/avro/specific/SpecificDatumReader;->getData()Lcom/flurry/org/apache/avro/generic/GenericData;

    move-result-object v0

    check-cast v0, Lcom/flurry/org/apache/avro/specific/SpecificData;

    return-object v0
.end method

.method public setSchema(Lcom/flurry/org/apache/avro/Schema;)V
    .locals 4
    .param p1, "actual"    # Lcom/flurry/org/apache/avro/Schema;

    .prologue
    .line 57
    .local p0, "this":Lcom/flurry/org/apache/avro/specific/SpecificDatumReader;, "Lcom/flurry/org/apache/avro/specific/SpecificDatumReader<TT;>;"
    invoke-virtual {p0}, Lcom/flurry/org/apache/avro/specific/SpecificDatumReader;->getExpected()Lcom/flurry/org/apache/avro/Schema;

    move-result-object v2

    if-nez v2, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/flurry/org/apache/avro/Schema;->getType()Lcom/flurry/org/apache/avro/Schema$Type;

    move-result-object v2

    sget-object v3, Lcom/flurry/org/apache/avro/Schema$Type;->RECORD:Lcom/flurry/org/apache/avro/Schema$Type;

    if-ne v2, v3, :cond_0

    .line 59
    invoke-virtual {p0}, Lcom/flurry/org/apache/avro/specific/SpecificDatumReader;->getSpecificData()Lcom/flurry/org/apache/avro/specific/SpecificData;

    move-result-object v1

    .line 60
    .local v1, "data":Lcom/flurry/org/apache/avro/specific/SpecificData;
    invoke-virtual {v1, p1}, Lcom/flurry/org/apache/avro/specific/SpecificData;->getClass(Lcom/flurry/org/apache/avro/Schema;)Ljava/lang/Class;

    move-result-object v0

    .line 61
    .local v0, "c":Ljava/lang/Class;
    if-eqz v0, :cond_0

    const-class v2, Lcom/flurry/org/apache/avro/specific/SpecificRecord;

    invoke-virtual {v2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 62
    invoke-virtual {v1, v0}, Lcom/flurry/org/apache/avro/specific/SpecificData;->getSchema(Ljava/lang/reflect/Type;)Lcom/flurry/org/apache/avro/Schema;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/flurry/org/apache/avro/specific/SpecificDatumReader;->setExpected(Lcom/flurry/org/apache/avro/Schema;)V

    .line 64
    .end local v0    # "c":Ljava/lang/Class;
    .end local v1    # "data":Lcom/flurry/org/apache/avro/specific/SpecificData;
    :cond_0
    invoke-super {p0, p1}, Lcom/flurry/org/apache/avro/generic/GenericDatumReader;->setSchema(Lcom/flurry/org/apache/avro/Schema;)V

    .line 65
    return-void
.end method
