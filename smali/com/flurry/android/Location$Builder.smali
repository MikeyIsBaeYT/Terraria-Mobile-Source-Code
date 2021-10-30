.class public Lcom/flurry/android/Location$Builder;
.super Lcom/flurry/org/apache/avro/specific/SpecificRecordBuilderBase;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/org/apache/avro/data/RecordBuilder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/flurry/org/apache/avro/specific/SpecificRecordBuilderBase",
        "<",
        "Lcom/flurry/android/Location;",
        ">;",
        "Lcom/flurry/org/apache/avro/data/RecordBuilder",
        "<",
        "Lcom/flurry/android/Location;",
        ">;"
    }
.end annotation


# instance fields
.field private eO:F

.field private eP:F


# direct methods
.method synthetic constructor <init>()V
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/flurry/android/Location$Builder;-><init>(B)V

    return-void
.end method

.method private constructor <init>(B)V
    .locals 1

    .prologue
    .line 87
    sget-object v0, Lcom/flurry/android/Location;->SCHEMA$:Lcom/flurry/org/apache/avro/Schema;

    invoke-direct {p0, v0}, Lcom/flurry/org/apache/avro/specific/SpecificRecordBuilderBase;-><init>(Lcom/flurry/org/apache/avro/Schema;)V

    .line 88
    return-void
.end method


# virtual methods
.method public build()Lcom/flurry/android/Location;
    .locals 3

    .prologue
    .line 159
    :try_start_0
    new-instance v1, Lcom/flurry/android/Location;

    invoke-direct {v1}, Lcom/flurry/android/Location;-><init>()V

    .line 160
    invoke-virtual {p0}, Lcom/flurry/android/Location$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v2, 0x0

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/flurry/android/Location$Builder;->eO:F

    :goto_0
    iput v0, v1, Lcom/flurry/android/Location;->eO:F

    .line 161
    invoke-virtual {p0}, Lcom/flurry/android/Location$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v2, 0x1

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/flurry/android/Location$Builder;->eP:F

    :goto_1
    iput v0, v1, Lcom/flurry/android/Location;->eP:F

    .line 162
    return-object v1

    .line 160
    :cond_0
    invoke-virtual {p0}, Lcom/flurry/android/Location$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    const/4 v2, 0x0

    aget-object v0, v0, v2

    invoke-virtual {p0, v0}, Lcom/flurry/android/Location$Builder;->defaultValue(Lcom/flurry/org/apache/avro/Schema$Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_0

    .line 161
    :cond_1
    invoke-virtual {p0}, Lcom/flurry/android/Location$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-virtual {p0, v0}, Lcom/flurry/android/Location$Builder;->defaultValue(Lcom/flurry/org/apache/avro/Schema$Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_1

    .line 163
    :catch_0
    move-exception v0

    .line 164
    new-instance v1, Lcom/flurry/org/apache/avro/AvroRuntimeException;

    invoke-direct {v1, v0}, Lcom/flurry/org/apache/avro/AvroRuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/flurry/android/Location$Builder;->build()Lcom/flurry/android/Location;

    move-result-object v0

    return-object v0
.end method

.method public clearLat()Lcom/flurry/android/Location$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 128
    invoke-virtual {p0}, Lcom/flurry/android/Location$Builder;->fieldSetFlags()[Z

    move-result-object v0

    aput-boolean v1, v0, v1

    .line 129
    return-object p0
.end method

.method public clearLon()Lcom/flurry/android/Location$Builder;
    .locals 3

    .prologue
    .line 152
    invoke-virtual {p0}, Lcom/flurry/android/Location$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 153
    return-object p0
.end method

.method public getLat()Ljava/lang/Float;
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Lcom/flurry/android/Location$Builder;->eO:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public getLon()Ljava/lang/Float;
    .locals 1

    .prologue
    .line 134
    iget v0, p0, Lcom/flurry/android/Location$Builder;->eP:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public hasLat()Z
    .locals 2

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/flurry/android/Location$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    return v0
.end method

.method public hasLon()Z
    .locals 2

    .prologue
    .line 147
    invoke-virtual {p0}, Lcom/flurry/android/Location$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    return v0
.end method

.method public setLat(F)Lcom/flurry/android/Location$Builder;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 115
    invoke-virtual {p0}, Lcom/flurry/android/Location$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/flurry/android/Location$Builder;->validate(Lcom/flurry/org/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 116
    iput p1, p0, Lcom/flurry/android/Location$Builder;->eO:F

    .line 117
    invoke-virtual {p0}, Lcom/flurry/android/Location$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    .line 118
    return-object p0
.end method

.method public setLon(F)Lcom/flurry/android/Location$Builder;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 139
    invoke-virtual {p0}, Lcom/flurry/android/Location$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/flurry/android/Location$Builder;->validate(Lcom/flurry/org/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 140
    iput p1, p0, Lcom/flurry/android/Location$Builder;->eP:F

    .line 141
    invoke-virtual {p0}, Lcom/flurry/android/Location$Builder;->fieldSetFlags()[Z

    move-result-object v0

    aput-boolean v2, v0, v2

    .line 142
    return-object p0
.end method
