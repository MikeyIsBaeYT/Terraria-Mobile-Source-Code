.class public Lcom/flurry/android/TestAds$Builder;
.super Lcom/flurry/org/apache/avro/specific/SpecificRecordBuilderBase;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/org/apache/avro/data/RecordBuilder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/flurry/org/apache/avro/specific/SpecificRecordBuilderBase",
        "<",
        "Lcom/flurry/android/TestAds;",
        ">;",
        "Lcom/flurry/org/apache/avro/data/RecordBuilder",
        "<",
        "Lcom/flurry/android/TestAds;",
        ">;"
    }
.end annotation


# instance fields
.field private eh:I


# direct methods
.method synthetic constructor <init>()V
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/flurry/android/TestAds$Builder;-><init>(B)V

    return-void
.end method

.method private constructor <init>(B)V
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lcom/flurry/android/TestAds;->SCHEMA$:Lcom/flurry/org/apache/avro/Schema;

    invoke-direct {p0, v0}, Lcom/flurry/org/apache/avro/specific/SpecificRecordBuilderBase;-><init>(Lcom/flurry/org/apache/avro/Schema;)V

    .line 69
    return-void
.end method


# virtual methods
.method public build()Lcom/flurry/android/TestAds;
    .locals 3

    .prologue
    .line 112
    :try_start_0
    new-instance v1, Lcom/flurry/android/TestAds;

    invoke-direct {v1}, Lcom/flurry/android/TestAds;-><init>()V

    .line 113
    invoke-virtual {p0}, Lcom/flurry/android/TestAds$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v2, 0x0

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/flurry/android/TestAds$Builder;->eh:I

    :goto_0
    iput v0, v1, Lcom/flurry/android/TestAds;->eh:I

    .line 114
    return-object v1

    .line 113
    :cond_0
    invoke-virtual {p0}, Lcom/flurry/android/TestAds$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    const/4 v2, 0x0

    aget-object v0, v0, v2

    invoke-virtual {p0, v0}, Lcom/flurry/android/TestAds$Builder;->defaultValue(Lcom/flurry/org/apache/avro/Schema$Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 115
    :catch_0
    move-exception v0

    .line 116
    new-instance v1, Lcom/flurry/org/apache/avro/AvroRuntimeException;

    invoke-direct {v1, v0}, Lcom/flurry/org/apache/avro/AvroRuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/flurry/android/TestAds$Builder;->build()Lcom/flurry/android/TestAds;

    move-result-object v0

    return-object v0
.end method

.method public clearAdspacePlacement()Lcom/flurry/android/TestAds$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 105
    invoke-virtual {p0}, Lcom/flurry/android/TestAds$Builder;->fieldSetFlags()[Z

    move-result-object v0

    aput-boolean v1, v0, v1

    .line 106
    return-object p0
.end method

.method public getAdspacePlacement()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Lcom/flurry/android/TestAds$Builder;->eh:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public hasAdspacePlacement()Z
    .locals 2

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/flurry/android/TestAds$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    return v0
.end method

.method public setAdspacePlacement(I)Lcom/flurry/android/TestAds$Builder;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 92
    invoke-virtual {p0}, Lcom/flurry/android/TestAds$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/flurry/android/TestAds$Builder;->validate(Lcom/flurry/org/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 93
    iput p1, p0, Lcom/flurry/android/TestAds$Builder;->eh:I

    .line 94
    invoke-virtual {p0}, Lcom/flurry/android/TestAds$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    .line 95
    return-object p0
.end method
