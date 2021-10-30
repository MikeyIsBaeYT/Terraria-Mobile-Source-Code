.class public Lcom/flurry/android/AdViewContainer$Builder;
.super Lcom/flurry/org/apache/avro/specific/SpecificRecordBuilderBase;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/org/apache/avro/data/RecordBuilder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/flurry/org/apache/avro/specific/SpecificRecordBuilderBase",
        "<",
        "Lcom/flurry/android/AdViewContainer;",
        ">;",
        "Lcom/flurry/org/apache/avro/data/RecordBuilder",
        "<",
        "Lcom/flurry/android/AdViewContainer;",
        ">;"
    }
.end annotation


# instance fields
.field private bp:I

.field private bq:I

.field private br:I

.field private bs:I

.field private density:F


# direct methods
.method synthetic constructor <init>()V
    .locals 1

    .prologue
    .line 133
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/flurry/android/AdViewContainer$Builder;-><init>(B)V

    return-void
.end method

.method private constructor <init>(B)V
    .locals 1

    .prologue
    .line 144
    sget-object v0, Lcom/flurry/android/AdViewContainer;->SCHEMA$:Lcom/flurry/org/apache/avro/Schema;

    invoke-direct {p0, v0}, Lcom/flurry/org/apache/avro/specific/SpecificRecordBuilderBase;-><init>(Lcom/flurry/org/apache/avro/Schema;)V

    .line 145
    return-void
.end method


# virtual methods
.method public build()Lcom/flurry/android/AdViewContainer;
    .locals 3

    .prologue
    .line 300
    :try_start_0
    new-instance v1, Lcom/flurry/android/AdViewContainer;

    invoke-direct {v1}, Lcom/flurry/android/AdViewContainer;-><init>()V

    .line 301
    invoke-virtual {p0}, Lcom/flurry/android/AdViewContainer$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v2, 0x0

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/flurry/android/AdViewContainer$Builder;->bp:I

    :goto_0
    iput v0, v1, Lcom/flurry/android/AdViewContainer;->bp:I

    .line 302
    invoke-virtual {p0}, Lcom/flurry/android/AdViewContainer$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v2, 0x1

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/flurry/android/AdViewContainer$Builder;->bq:I

    :goto_1
    iput v0, v1, Lcom/flurry/android/AdViewContainer;->bq:I

    .line 303
    invoke-virtual {p0}, Lcom/flurry/android/AdViewContainer$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v2, 0x2

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/flurry/android/AdViewContainer$Builder;->br:I

    :goto_2
    iput v0, v1, Lcom/flurry/android/AdViewContainer;->br:I

    .line 304
    invoke-virtual {p0}, Lcom/flurry/android/AdViewContainer$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v2, 0x3

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/flurry/android/AdViewContainer$Builder;->bs:I

    :goto_3
    iput v0, v1, Lcom/flurry/android/AdViewContainer;->bs:I

    .line 305
    invoke-virtual {p0}, Lcom/flurry/android/AdViewContainer$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v2, 0x4

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/flurry/android/AdViewContainer$Builder;->density:F

    :goto_4
    iput v0, v1, Lcom/flurry/android/AdViewContainer;->density:F

    .line 306
    return-object v1

    .line 301
    :cond_0
    invoke-virtual {p0}, Lcom/flurry/android/AdViewContainer$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    const/4 v2, 0x0

    aget-object v0, v0, v2

    invoke-virtual {p0, v0}, Lcom/flurry/android/AdViewContainer$Builder;->defaultValue(Lcom/flurry/org/apache/avro/Schema$Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    .line 302
    :cond_1
    invoke-virtual {p0}, Lcom/flurry/android/AdViewContainer$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-virtual {p0, v0}, Lcom/flurry/android/AdViewContainer$Builder;->defaultValue(Lcom/flurry/org/apache/avro/Schema$Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1

    .line 303
    :cond_2
    invoke-virtual {p0}, Lcom/flurry/android/AdViewContainer$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    const/4 v2, 0x2

    aget-object v0, v0, v2

    invoke-virtual {p0, v0}, Lcom/flurry/android/AdViewContainer$Builder;->defaultValue(Lcom/flurry/org/apache/avro/Schema$Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_2

    .line 304
    :cond_3
    invoke-virtual {p0}, Lcom/flurry/android/AdViewContainer$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    const/4 v2, 0x3

    aget-object v0, v0, v2

    invoke-virtual {p0, v0}, Lcom/flurry/android/AdViewContainer$Builder;->defaultValue(Lcom/flurry/org/apache/avro/Schema$Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_3

    .line 305
    :cond_4
    invoke-virtual {p0}, Lcom/flurry/android/AdViewContainer$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    const/4 v2, 0x4

    aget-object v0, v0, v2

    invoke-virtual {p0, v0}, Lcom/flurry/android/AdViewContainer$Builder;->defaultValue(Lcom/flurry/org/apache/avro/Schema$Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_4

    .line 307
    :catch_0
    move-exception v0

    .line 308
    new-instance v1, Lcom/flurry/org/apache/avro/AvroRuntimeException;

    invoke-direct {v1, v0}, Lcom/flurry/org/apache/avro/AvroRuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/flurry/android/AdViewContainer$Builder;->build()Lcom/flurry/android/AdViewContainer;

    move-result-object v0

    return-object v0
.end method

.method public clearDensity()Lcom/flurry/android/AdViewContainer$Builder;
    .locals 3

    .prologue
    .line 293
    invoke-virtual {p0}, Lcom/flurry/android/AdViewContainer$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 294
    return-object p0
.end method

.method public clearScreenHeight()Lcom/flurry/android/AdViewContainer$Builder;
    .locals 3

    .prologue
    .line 269
    invoke-virtual {p0}, Lcom/flurry/android/AdViewContainer$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 270
    return-object p0
.end method

.method public clearScreenWidth()Lcom/flurry/android/AdViewContainer$Builder;
    .locals 3

    .prologue
    .line 245
    invoke-virtual {p0}, Lcom/flurry/android/AdViewContainer$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 246
    return-object p0
.end method

.method public clearViewHeight()Lcom/flurry/android/AdViewContainer$Builder;
    .locals 3

    .prologue
    .line 221
    invoke-virtual {p0}, Lcom/flurry/android/AdViewContainer$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 222
    return-object p0
.end method

.method public clearViewWidth()Lcom/flurry/android/AdViewContainer$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 197
    invoke-virtual {p0}, Lcom/flurry/android/AdViewContainer$Builder;->fieldSetFlags()[Z

    move-result-object v0

    aput-boolean v1, v0, v1

    .line 198
    return-object p0
.end method

.method public getDensity()Ljava/lang/Float;
    .locals 1

    .prologue
    .line 275
    iget v0, p0, Lcom/flurry/android/AdViewContainer$Builder;->density:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public getScreenHeight()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 251
    iget v0, p0, Lcom/flurry/android/AdViewContainer$Builder;->bs:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getScreenWidth()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 227
    iget v0, p0, Lcom/flurry/android/AdViewContainer$Builder;->br:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getViewHeight()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 203
    iget v0, p0, Lcom/flurry/android/AdViewContainer$Builder;->bq:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getViewWidth()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 179
    iget v0, p0, Lcom/flurry/android/AdViewContainer$Builder;->bp:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public hasDensity()Z
    .locals 2

    .prologue
    .line 288
    invoke-virtual {p0}, Lcom/flurry/android/AdViewContainer$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x4

    aget-boolean v0, v0, v1

    return v0
.end method

.method public hasScreenHeight()Z
    .locals 2

    .prologue
    .line 264
    invoke-virtual {p0}, Lcom/flurry/android/AdViewContainer$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x3

    aget-boolean v0, v0, v1

    return v0
.end method

.method public hasScreenWidth()Z
    .locals 2

    .prologue
    .line 240
    invoke-virtual {p0}, Lcom/flurry/android/AdViewContainer$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x2

    aget-boolean v0, v0, v1

    return v0
.end method

.method public hasViewHeight()Z
    .locals 2

    .prologue
    .line 216
    invoke-virtual {p0}, Lcom/flurry/android/AdViewContainer$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    return v0
.end method

.method public hasViewWidth()Z
    .locals 2

    .prologue
    .line 192
    invoke-virtual {p0}, Lcom/flurry/android/AdViewContainer$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    return v0
.end method

.method public setDensity(F)Lcom/flurry/android/AdViewContainer$Builder;
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 280
    invoke-virtual {p0}, Lcom/flurry/android/AdViewContainer$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/flurry/android/AdViewContainer$Builder;->validate(Lcom/flurry/org/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 281
    iput p1, p0, Lcom/flurry/android/AdViewContainer$Builder;->density:F

    .line 282
    invoke-virtual {p0}, Lcom/flurry/android/AdViewContainer$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    .line 283
    return-object p0
.end method

.method public setScreenHeight(I)Lcom/flurry/android/AdViewContainer$Builder;
    .locals 3

    .prologue
    const/4 v2, 0x3

    .line 256
    invoke-virtual {p0}, Lcom/flurry/android/AdViewContainer$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/flurry/android/AdViewContainer$Builder;->validate(Lcom/flurry/org/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 257
    iput p1, p0, Lcom/flurry/android/AdViewContainer$Builder;->bs:I

    .line 258
    invoke-virtual {p0}, Lcom/flurry/android/AdViewContainer$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    .line 259
    return-object p0
.end method

.method public setScreenWidth(I)Lcom/flurry/android/AdViewContainer$Builder;
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 232
    invoke-virtual {p0}, Lcom/flurry/android/AdViewContainer$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/flurry/android/AdViewContainer$Builder;->validate(Lcom/flurry/org/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 233
    iput p1, p0, Lcom/flurry/android/AdViewContainer$Builder;->br:I

    .line 234
    invoke-virtual {p0}, Lcom/flurry/android/AdViewContainer$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    .line 235
    return-object p0
.end method

.method public setViewHeight(I)Lcom/flurry/android/AdViewContainer$Builder;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 208
    invoke-virtual {p0}, Lcom/flurry/android/AdViewContainer$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/flurry/android/AdViewContainer$Builder;->validate(Lcom/flurry/org/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 209
    iput p1, p0, Lcom/flurry/android/AdViewContainer$Builder;->bq:I

    .line 210
    invoke-virtual {p0}, Lcom/flurry/android/AdViewContainer$Builder;->fieldSetFlags()[Z

    move-result-object v0

    aput-boolean v2, v0, v2

    .line 211
    return-object p0
.end method

.method public setViewWidth(I)Lcom/flurry/android/AdViewContainer$Builder;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 184
    invoke-virtual {p0}, Lcom/flurry/android/AdViewContainer$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/flurry/android/AdViewContainer$Builder;->validate(Lcom/flurry/org/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 185
    iput p1, p0, Lcom/flurry/android/AdViewContainer$Builder;->bp:I

    .line 186
    invoke-virtual {p0}, Lcom/flurry/android/AdViewContainer$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    .line 187
    return-object p0
.end method
