.class public Lcom/flurry/android/AdReportedId$Builder;
.super Lcom/flurry/org/apache/avro/specific/SpecificRecordBuilderBase;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/org/apache/avro/data/RecordBuilder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/flurry/org/apache/avro/specific/SpecificRecordBuilderBase",
        "<",
        "Lcom/flurry/android/AdReportedId;",
        ">;",
        "Lcom/flurry/org/apache/avro/data/RecordBuilder",
        "<",
        "Lcom/flurry/android/AdReportedId;",
        ">;"
    }
.end annotation


# instance fields
.field private dW:Ljava/nio/ByteBuffer;

.field private type:I


# direct methods
.method synthetic constructor <init>()V
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/flurry/android/AdReportedId$Builder;-><init>(B)V

    return-void
.end method

.method private constructor <init>(B)V
    .locals 1

    .prologue
    .line 87
    sget-object v0, Lcom/flurry/android/AdReportedId;->SCHEMA$:Lcom/flurry/org/apache/avro/Schema;

    invoke-direct {p0, v0}, Lcom/flurry/org/apache/avro/specific/SpecificRecordBuilderBase;-><init>(Lcom/flurry/org/apache/avro/Schema;)V

    .line 88
    return-void
.end method


# virtual methods
.method public build()Lcom/flurry/android/AdReportedId;
    .locals 3

    .prologue
    .line 160
    :try_start_0
    new-instance v1, Lcom/flurry/android/AdReportedId;

    invoke-direct {v1}, Lcom/flurry/android/AdReportedId;-><init>()V

    .line 161
    invoke-virtual {p0}, Lcom/flurry/android/AdReportedId$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v2, 0x0

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/flurry/android/AdReportedId$Builder;->type:I

    :goto_0
    iput v0, v1, Lcom/flurry/android/AdReportedId;->type:I

    .line 162
    invoke-virtual {p0}, Lcom/flurry/android/AdReportedId$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v2, 0x1

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/flurry/android/AdReportedId$Builder;->dW:Ljava/nio/ByteBuffer;

    :goto_1
    iput-object v0, v1, Lcom/flurry/android/AdReportedId;->dW:Ljava/nio/ByteBuffer;

    .line 163
    return-object v1

    .line 161
    :cond_0
    invoke-virtual {p0}, Lcom/flurry/android/AdReportedId$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    const/4 v2, 0x0

    aget-object v0, v0, v2

    invoke-virtual {p0, v0}, Lcom/flurry/android/AdReportedId$Builder;->defaultValue(Lcom/flurry/org/apache/avro/Schema$Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    .line 162
    :cond_1
    invoke-virtual {p0}, Lcom/flurry/android/AdReportedId$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-virtual {p0, v0}, Lcom/flurry/android/AdReportedId$Builder;->defaultValue(Lcom/flurry/org/apache/avro/Schema$Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 164
    :catch_0
    move-exception v0

    .line 165
    new-instance v1, Lcom/flurry/org/apache/avro/AvroRuntimeException;

    invoke-direct {v1, v0}, Lcom/flurry/org/apache/avro/AvroRuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/flurry/android/AdReportedId$Builder;->build()Lcom/flurry/android/AdReportedId;

    move-result-object v0

    return-object v0
.end method

.method public clearId()Lcom/flurry/android/AdReportedId$Builder;
    .locals 3

    .prologue
    .line 152
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/android/AdReportedId$Builder;->dW:Ljava/nio/ByteBuffer;

    .line 153
    invoke-virtual {p0}, Lcom/flurry/android/AdReportedId$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 154
    return-object p0
.end method

.method public clearType()Lcom/flurry/android/AdReportedId$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 128
    invoke-virtual {p0}, Lcom/flurry/android/AdReportedId$Builder;->fieldSetFlags()[Z

    move-result-object v0

    aput-boolean v1, v0, v1

    .line 129
    return-object p0
.end method

.method public getId()Ljava/nio/ByteBuffer;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/flurry/android/AdReportedId$Builder;->dW:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public getType()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Lcom/flurry/android/AdReportedId$Builder;->type:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public hasId()Z
    .locals 2

    .prologue
    .line 147
    invoke-virtual {p0}, Lcom/flurry/android/AdReportedId$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    return v0
.end method

.method public hasType()Z
    .locals 2

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/flurry/android/AdReportedId$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    return v0
.end method

.method public setId(Ljava/nio/ByteBuffer;)Lcom/flurry/android/AdReportedId$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 139
    invoke-virtual {p0}, Lcom/flurry/android/AdReportedId$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-virtual {p0, v0, p1}, Lcom/flurry/android/AdReportedId$Builder;->validate(Lcom/flurry/org/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 140
    iput-object p1, p0, Lcom/flurry/android/AdReportedId$Builder;->dW:Ljava/nio/ByteBuffer;

    .line 141
    invoke-virtual {p0}, Lcom/flurry/android/AdReportedId$Builder;->fieldSetFlags()[Z

    move-result-object v0

    aput-boolean v1, v0, v1

    .line 142
    return-object p0
.end method

.method public setType(I)Lcom/flurry/android/AdReportedId$Builder;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 115
    invoke-virtual {p0}, Lcom/flurry/android/AdReportedId$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/flurry/android/AdReportedId$Builder;->validate(Lcom/flurry/org/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 116
    iput p1, p0, Lcom/flurry/android/AdReportedId$Builder;->type:I

    .line 117
    invoke-virtual {p0}, Lcom/flurry/android/AdReportedId$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    .line 118
    return-object p0
.end method
