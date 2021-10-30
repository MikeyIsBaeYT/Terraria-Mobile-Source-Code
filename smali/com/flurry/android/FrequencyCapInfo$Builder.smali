.class public Lcom/flurry/android/FrequencyCapInfo$Builder;
.super Lcom/flurry/org/apache/avro/specific/SpecificRecordBuilderBase;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/org/apache/avro/data/RecordBuilder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/flurry/org/apache/avro/specific/SpecificRecordBuilderBase",
        "<",
        "Lcom/flurry/android/FrequencyCapInfo;",
        ">;",
        "Lcom/flurry/org/apache/avro/data/RecordBuilder",
        "<",
        "Lcom/flurry/android/FrequencyCapInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private bJ:Ljava/lang/CharSequence;

.field private bK:J

.field private bL:I

.field private bM:I

.field private bN:I

.field private bO:J

.field private cI:I


# direct methods
.method synthetic constructor <init>()V
    .locals 1

    .prologue
    .line 169
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/flurry/android/FrequencyCapInfo$Builder;-><init>(B)V

    return-void
.end method

.method private constructor <init>(B)V
    .locals 1

    .prologue
    .line 182
    sget-object v0, Lcom/flurry/android/FrequencyCapInfo;->SCHEMA$:Lcom/flurry/org/apache/avro/Schema;

    invoke-direct {p0, v0}, Lcom/flurry/org/apache/avro/specific/SpecificRecordBuilderBase;-><init>(Lcom/flurry/org/apache/avro/Schema;)V

    .line 183
    return-void
.end method


# virtual methods
.method public build()Lcom/flurry/android/FrequencyCapInfo;
    .locals 3

    .prologue
    .line 395
    :try_start_0
    new-instance v2, Lcom/flurry/android/FrequencyCapInfo;

    invoke-direct {v2}, Lcom/flurry/android/FrequencyCapInfo;-><init>()V

    .line 396
    invoke-virtual {p0}, Lcom/flurry/android/FrequencyCapInfo$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/android/FrequencyCapInfo$Builder;->bJ:Ljava/lang/CharSequence;

    :goto_0
    iput-object v0, v2, Lcom/flurry/android/FrequencyCapInfo;->bJ:Ljava/lang/CharSequence;

    .line 397
    invoke-virtual {p0}, Lcom/flurry/android/FrequencyCapInfo$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/flurry/android/FrequencyCapInfo$Builder;->bK:J

    :goto_1
    iput-wide v0, v2, Lcom/flurry/android/FrequencyCapInfo;->bK:J

    .line 398
    invoke-virtual {p0}, Lcom/flurry/android/FrequencyCapInfo$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x2

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_2

    iget-wide v0, p0, Lcom/flurry/android/FrequencyCapInfo$Builder;->bO:J

    :goto_2
    iput-wide v0, v2, Lcom/flurry/android/FrequencyCapInfo;->bO:J

    .line 399
    invoke-virtual {p0}, Lcom/flurry/android/FrequencyCapInfo$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x3

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/flurry/android/FrequencyCapInfo$Builder;->cI:I

    :goto_3
    iput v0, v2, Lcom/flurry/android/FrequencyCapInfo;->cI:I

    .line 400
    invoke-virtual {p0}, Lcom/flurry/android/FrequencyCapInfo$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x4

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/flurry/android/FrequencyCapInfo$Builder;->bL:I

    :goto_4
    iput v0, v2, Lcom/flurry/android/FrequencyCapInfo;->bL:I

    .line 401
    invoke-virtual {p0}, Lcom/flurry/android/FrequencyCapInfo$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x5

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/flurry/android/FrequencyCapInfo$Builder;->bM:I

    :goto_5
    iput v0, v2, Lcom/flurry/android/FrequencyCapInfo;->bM:I

    .line 402
    invoke-virtual {p0}, Lcom/flurry/android/FrequencyCapInfo$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x6

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/flurry/android/FrequencyCapInfo$Builder;->bN:I

    :goto_6
    iput v0, v2, Lcom/flurry/android/FrequencyCapInfo;->bN:I

    .line 403
    return-object v2

    .line 396
    :cond_0
    invoke-virtual {p0}, Lcom/flurry/android/FrequencyCapInfo$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/flurry/android/FrequencyCapInfo$Builder;->defaultValue(Lcom/flurry/org/apache/avro/Schema$Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    goto :goto_0

    .line 397
    :cond_1
    invoke-virtual {p0}, Lcom/flurry/android/FrequencyCapInfo$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/flurry/android/FrequencyCapInfo$Builder;->defaultValue(Lcom/flurry/org/apache/avro/Schema$Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_1

    .line 398
    :cond_2
    invoke-virtual {p0}, Lcom/flurry/android/FrequencyCapInfo$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/flurry/android/FrequencyCapInfo$Builder;->defaultValue(Lcom/flurry/org/apache/avro/Schema$Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_2

    .line 399
    :cond_3
    invoke-virtual {p0}, Lcom/flurry/android/FrequencyCapInfo$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    const/4 v1, 0x3

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/flurry/android/FrequencyCapInfo$Builder;->defaultValue(Lcom/flurry/org/apache/avro/Schema$Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_3

    .line 400
    :cond_4
    invoke-virtual {p0}, Lcom/flurry/android/FrequencyCapInfo$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    const/4 v1, 0x4

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/flurry/android/FrequencyCapInfo$Builder;->defaultValue(Lcom/flurry/org/apache/avro/Schema$Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_4

    .line 401
    :cond_5
    invoke-virtual {p0}, Lcom/flurry/android/FrequencyCapInfo$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    const/4 v1, 0x5

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/flurry/android/FrequencyCapInfo$Builder;->defaultValue(Lcom/flurry/org/apache/avro/Schema$Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_5

    .line 402
    :cond_6
    invoke-virtual {p0}, Lcom/flurry/android/FrequencyCapInfo$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    const/4 v1, 0x6

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/flurry/android/FrequencyCapInfo$Builder;->defaultValue(Lcom/flurry/org/apache/avro/Schema$Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_6

    .line 404
    :catch_0
    move-exception v0

    .line 405
    new-instance v1, Lcom/flurry/org/apache/avro/AvroRuntimeException;

    invoke-direct {v1, v0}, Lcom/flurry/org/apache/avro/AvroRuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 169
    invoke-virtual {p0}, Lcom/flurry/android/FrequencyCapInfo$Builder;->build()Lcom/flurry/android/FrequencyCapInfo;

    move-result-object v0

    return-object v0
.end method

.method public clearExpirationTime()Lcom/flurry/android/FrequencyCapInfo$Builder;
    .locals 3

    .prologue
    .line 292
    invoke-virtual {p0}, Lcom/flurry/android/FrequencyCapInfo$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 293
    return-object p0
.end method

.method public clearIdHash()Lcom/flurry/android/FrequencyCapInfo$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 243
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/android/FrequencyCapInfo$Builder;->bJ:Ljava/lang/CharSequence;

    .line 244
    invoke-virtual {p0}, Lcom/flurry/android/FrequencyCapInfo$Builder;->fieldSetFlags()[Z

    move-result-object v0

    aput-boolean v1, v0, v1

    .line 245
    return-object p0
.end method

.method public clearNewCap()Lcom/flurry/android/FrequencyCapInfo$Builder;
    .locals 3

    .prologue
    .line 340
    invoke-virtual {p0}, Lcom/flurry/android/FrequencyCapInfo$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 341
    return-object p0
.end method

.method public clearPreviousCap()Lcom/flurry/android/FrequencyCapInfo$Builder;
    .locals 3

    .prologue
    .line 364
    invoke-virtual {p0}, Lcom/flurry/android/FrequencyCapInfo$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x5

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 365
    return-object p0
.end method

.method public clearPreviousCapType()Lcom/flurry/android/FrequencyCapInfo$Builder;
    .locals 3

    .prologue
    .line 388
    invoke-virtual {p0}, Lcom/flurry/android/FrequencyCapInfo$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x6

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 389
    return-object p0
.end method

.method public clearServeTime()Lcom/flurry/android/FrequencyCapInfo$Builder;
    .locals 3

    .prologue
    .line 268
    invoke-virtual {p0}, Lcom/flurry/android/FrequencyCapInfo$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 269
    return-object p0
.end method

.method public clearViews()Lcom/flurry/android/FrequencyCapInfo$Builder;
    .locals 3

    .prologue
    .line 316
    invoke-virtual {p0}, Lcom/flurry/android/FrequencyCapInfo$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 317
    return-object p0
.end method

.method public getExpirationTime()Ljava/lang/Long;
    .locals 2

    .prologue
    .line 274
    iget-wide v0, p0, Lcom/flurry/android/FrequencyCapInfo$Builder;->bO:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getIdHash()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/flurry/android/FrequencyCapInfo$Builder;->bJ:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getNewCap()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 322
    iget v0, p0, Lcom/flurry/android/FrequencyCapInfo$Builder;->bL:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getPreviousCap()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 346
    iget v0, p0, Lcom/flurry/android/FrequencyCapInfo$Builder;->bM:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getPreviousCapType()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 370
    iget v0, p0, Lcom/flurry/android/FrequencyCapInfo$Builder;->bN:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getServeTime()Ljava/lang/Long;
    .locals 2

    .prologue
    .line 250
    iget-wide v0, p0, Lcom/flurry/android/FrequencyCapInfo$Builder;->bK:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getViews()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 298
    iget v0, p0, Lcom/flurry/android/FrequencyCapInfo$Builder;->cI:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public hasExpirationTime()Z
    .locals 2

    .prologue
    .line 287
    invoke-virtual {p0}, Lcom/flurry/android/FrequencyCapInfo$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x2

    aget-boolean v0, v0, v1

    return v0
.end method

.method public hasIdHash()Z
    .locals 2

    .prologue
    .line 238
    invoke-virtual {p0}, Lcom/flurry/android/FrequencyCapInfo$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    return v0
.end method

.method public hasNewCap()Z
    .locals 2

    .prologue
    .line 335
    invoke-virtual {p0}, Lcom/flurry/android/FrequencyCapInfo$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x4

    aget-boolean v0, v0, v1

    return v0
.end method

.method public hasPreviousCap()Z
    .locals 2

    .prologue
    .line 359
    invoke-virtual {p0}, Lcom/flurry/android/FrequencyCapInfo$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x5

    aget-boolean v0, v0, v1

    return v0
.end method

.method public hasPreviousCapType()Z
    .locals 2

    .prologue
    .line 383
    invoke-virtual {p0}, Lcom/flurry/android/FrequencyCapInfo$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x6

    aget-boolean v0, v0, v1

    return v0
.end method

.method public hasServeTime()Z
    .locals 2

    .prologue
    .line 263
    invoke-virtual {p0}, Lcom/flurry/android/FrequencyCapInfo$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    return v0
.end method

.method public hasViews()Z
    .locals 2

    .prologue
    .line 311
    invoke-virtual {p0}, Lcom/flurry/android/FrequencyCapInfo$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x3

    aget-boolean v0, v0, v1

    return v0
.end method

.method public setExpirationTime(J)Lcom/flurry/android/FrequencyCapInfo$Builder;
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 279
    invoke-virtual {p0}, Lcom/flurry/android/FrequencyCapInfo$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/flurry/android/FrequencyCapInfo$Builder;->validate(Lcom/flurry/org/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 280
    iput-wide p1, p0, Lcom/flurry/android/FrequencyCapInfo$Builder;->bO:J

    .line 281
    invoke-virtual {p0}, Lcom/flurry/android/FrequencyCapInfo$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    .line 282
    return-object p0
.end method

.method public setIdHash(Ljava/lang/CharSequence;)Lcom/flurry/android/FrequencyCapInfo$Builder;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 230
    invoke-virtual {p0}, Lcom/flurry/android/FrequencyCapInfo$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-virtual {p0, v0, p1}, Lcom/flurry/android/FrequencyCapInfo$Builder;->validate(Lcom/flurry/org/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 231
    iput-object p1, p0, Lcom/flurry/android/FrequencyCapInfo$Builder;->bJ:Ljava/lang/CharSequence;

    .line 232
    invoke-virtual {p0}, Lcom/flurry/android/FrequencyCapInfo$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    .line 233
    return-object p0
.end method

.method public setNewCap(I)Lcom/flurry/android/FrequencyCapInfo$Builder;
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 327
    invoke-virtual {p0}, Lcom/flurry/android/FrequencyCapInfo$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/flurry/android/FrequencyCapInfo$Builder;->validate(Lcom/flurry/org/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 328
    iput p1, p0, Lcom/flurry/android/FrequencyCapInfo$Builder;->bL:I

    .line 329
    invoke-virtual {p0}, Lcom/flurry/android/FrequencyCapInfo$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    .line 330
    return-object p0
.end method

.method public setPreviousCap(I)Lcom/flurry/android/FrequencyCapInfo$Builder;
    .locals 3

    .prologue
    const/4 v2, 0x5

    .line 351
    invoke-virtual {p0}, Lcom/flurry/android/FrequencyCapInfo$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/flurry/android/FrequencyCapInfo$Builder;->validate(Lcom/flurry/org/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 352
    iput p1, p0, Lcom/flurry/android/FrequencyCapInfo$Builder;->bM:I

    .line 353
    invoke-virtual {p0}, Lcom/flurry/android/FrequencyCapInfo$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    .line 354
    return-object p0
.end method

.method public setPreviousCapType(I)Lcom/flurry/android/FrequencyCapInfo$Builder;
    .locals 3

    .prologue
    const/4 v2, 0x6

    .line 375
    invoke-virtual {p0}, Lcom/flurry/android/FrequencyCapInfo$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/flurry/android/FrequencyCapInfo$Builder;->validate(Lcom/flurry/org/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 376
    iput p1, p0, Lcom/flurry/android/FrequencyCapInfo$Builder;->bN:I

    .line 377
    invoke-virtual {p0}, Lcom/flurry/android/FrequencyCapInfo$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    .line 378
    return-object p0
.end method

.method public setServeTime(J)Lcom/flurry/android/FrequencyCapInfo$Builder;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 255
    invoke-virtual {p0}, Lcom/flurry/android/FrequencyCapInfo$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/flurry/android/FrequencyCapInfo$Builder;->validate(Lcom/flurry/org/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 256
    iput-wide p1, p0, Lcom/flurry/android/FrequencyCapInfo$Builder;->bK:J

    .line 257
    invoke-virtual {p0}, Lcom/flurry/android/FrequencyCapInfo$Builder;->fieldSetFlags()[Z

    move-result-object v0

    aput-boolean v2, v0, v2

    .line 258
    return-object p0
.end method

.method public setViews(I)Lcom/flurry/android/FrequencyCapInfo$Builder;
    .locals 3

    .prologue
    const/4 v2, 0x3

    .line 303
    invoke-virtual {p0}, Lcom/flurry/android/FrequencyCapInfo$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/flurry/android/FrequencyCapInfo$Builder;->validate(Lcom/flurry/org/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 304
    iput p1, p0, Lcom/flurry/android/FrequencyCapInfo$Builder;->cI:I

    .line 305
    invoke-virtual {p0}, Lcom/flurry/android/FrequencyCapInfo$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    .line 306
    return-object p0
.end method
