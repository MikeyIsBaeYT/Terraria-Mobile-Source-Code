.class public abstract Lcom/flurry/org/apache/avro/specific/SpecificRecordBuilderBase;
.super Lcom/flurry/org/apache/avro/data/RecordBuilderBase;
.source "SpecificRecordBuilderBase.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/flurry/org/apache/avro/specific/SpecificRecord;",
        ">",
        "Lcom/flurry/org/apache/avro/data/RecordBuilderBase",
        "<TT;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Lcom/flurry/org/apache/avro/Schema;)V
    .locals 1
    .param p1, "schema"    # Lcom/flurry/org/apache/avro/Schema;

    .prologue
    .line 35
    .local p0, "this":Lcom/flurry/org/apache/avro/specific/SpecificRecordBuilderBase;, "Lcom/flurry/org/apache/avro/specific/SpecificRecordBuilderBase<TT;>;"
    invoke-static {}, Lcom/flurry/org/apache/avro/specific/SpecificData;->get()Lcom/flurry/org/apache/avro/specific/SpecificData;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/flurry/org/apache/avro/data/RecordBuilderBase;-><init>(Lcom/flurry/org/apache/avro/Schema;Lcom/flurry/org/apache/avro/generic/GenericData;)V

    .line 36
    return-void
.end method

.method protected constructor <init>(Lcom/flurry/org/apache/avro/specific/SpecificRecord;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 51
    .local p0, "this":Lcom/flurry/org/apache/avro/specific/SpecificRecordBuilderBase;, "Lcom/flurry/org/apache/avro/specific/SpecificRecordBuilderBase<TT;>;"
    .local p1, "other":Lcom/flurry/org/apache/avro/specific/SpecificRecord;, "TT;"
    invoke-interface {p1}, Lcom/flurry/org/apache/avro/specific/SpecificRecord;->getSchema()Lcom/flurry/org/apache/avro/Schema;

    move-result-object v0

    invoke-static {}, Lcom/flurry/org/apache/avro/specific/SpecificData;->get()Lcom/flurry/org/apache/avro/specific/SpecificData;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/flurry/org/apache/avro/data/RecordBuilderBase;-><init>(Lcom/flurry/org/apache/avro/Schema;Lcom/flurry/org/apache/avro/generic/GenericData;)V

    .line 52
    return-void
.end method

.method protected constructor <init>(Lcom/flurry/org/apache/avro/specific/SpecificRecordBuilderBase;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/apache/avro/specific/SpecificRecordBuilderBase",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 43
    .local p0, "this":Lcom/flurry/org/apache/avro/specific/SpecificRecordBuilderBase;, "Lcom/flurry/org/apache/avro/specific/SpecificRecordBuilderBase<TT;>;"
    .local p1, "other":Lcom/flurry/org/apache/avro/specific/SpecificRecordBuilderBase;, "Lcom/flurry/org/apache/avro/specific/SpecificRecordBuilderBase<TT;>;"
    invoke-static {}, Lcom/flurry/org/apache/avro/specific/SpecificData;->get()Lcom/flurry/org/apache/avro/specific/SpecificData;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/flurry/org/apache/avro/data/RecordBuilderBase;-><init>(Lcom/flurry/org/apache/avro/data/RecordBuilderBase;Lcom/flurry/org/apache/avro/generic/GenericData;)V

    .line 44
    return-void
.end method
