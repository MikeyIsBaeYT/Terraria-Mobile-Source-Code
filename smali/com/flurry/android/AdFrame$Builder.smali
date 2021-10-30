.class public Lcom/flurry/android/AdFrame$Builder;
.super Lcom/flurry/org/apache/avro/specific/SpecificRecordBuilderBase;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/org/apache/avro/data/RecordBuilder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/flurry/org/apache/avro/specific/SpecificRecordBuilderBase",
        "<",
        "Lcom/flurry/android/AdFrame;",
        ">;",
        "Lcom/flurry/org/apache/avro/data/RecordBuilder",
        "<",
        "Lcom/flurry/android/AdFrame;",
        ">;"
    }
.end annotation


# instance fields
.field private I:I

.field private J:Ljava/lang/CharSequence;

.field private K:Ljava/lang/CharSequence;

.field private L:Lcom/flurry/android/AdSpaceLayout;

.field private M:Ljava/lang/CharSequence;

.field private callbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/Callback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 163
    sget-object v0, Lcom/flurry/android/AdFrame;->SCHEMA$:Lcom/flurry/org/apache/avro/Schema;

    invoke-direct {p0, v0}, Lcom/flurry/org/apache/avro/specific/SpecificRecordBuilderBase;-><init>(Lcom/flurry/org/apache/avro/Schema;)V

    .line 164
    return-void
.end method


# virtual methods
.method public build()Lcom/flurry/android/AdFrame;
    .locals 3

    .prologue
    .line 352
    :try_start_0
    new-instance v1, Lcom/flurry/android/AdFrame;

    invoke-direct {v1}, Lcom/flurry/android/AdFrame;-><init>()V

    .line 353
    invoke-virtual {p0}, Lcom/flurry/android/AdFrame$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v2, 0x0

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/flurry/android/AdFrame$Builder;->I:I

    :goto_0
    iput v0, v1, Lcom/flurry/android/AdFrame;->I:I

    .line 354
    invoke-virtual {p0}, Lcom/flurry/android/AdFrame$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v2, 0x1

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/flurry/android/AdFrame$Builder;->J:Ljava/lang/CharSequence;

    :goto_1
    iput-object v0, v1, Lcom/flurry/android/AdFrame;->J:Ljava/lang/CharSequence;

    .line 355
    invoke-virtual {p0}, Lcom/flurry/android/AdFrame$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v2, 0x2

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/flurry/android/AdFrame$Builder;->K:Ljava/lang/CharSequence;

    :goto_2
    iput-object v0, v1, Lcom/flurry/android/AdFrame;->K:Ljava/lang/CharSequence;

    .line 356
    invoke-virtual {p0}, Lcom/flurry/android/AdFrame$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v2, 0x3

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/flurry/android/AdFrame$Builder;->L:Lcom/flurry/android/AdSpaceLayout;

    :goto_3
    iput-object v0, v1, Lcom/flurry/android/AdFrame;->L:Lcom/flurry/android/AdSpaceLayout;

    .line 357
    invoke-virtual {p0}, Lcom/flurry/android/AdFrame$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v2, 0x4

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/flurry/android/AdFrame$Builder;->callbacks:Ljava/util/List;

    :goto_4
    iput-object v0, v1, Lcom/flurry/android/AdFrame;->callbacks:Ljava/util/List;

    .line 358
    invoke-virtual {p0}, Lcom/flurry/android/AdFrame$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v2, 0x5

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/flurry/android/AdFrame$Builder;->M:Ljava/lang/CharSequence;

    :goto_5
    iput-object v0, v1, Lcom/flurry/android/AdFrame;->M:Ljava/lang/CharSequence;

    .line 359
    return-object v1

    .line 353
    :cond_0
    invoke-virtual {p0}, Lcom/flurry/android/AdFrame$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    const/4 v2, 0x0

    aget-object v0, v0, v2

    invoke-virtual {p0, v0}, Lcom/flurry/android/AdFrame$Builder;->defaultValue(Lcom/flurry/org/apache/avro/Schema$Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    .line 354
    :cond_1
    invoke-virtual {p0}, Lcom/flurry/android/AdFrame$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-virtual {p0, v0}, Lcom/flurry/android/AdFrame$Builder;->defaultValue(Lcom/flurry/org/apache/avro/Schema$Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    goto :goto_1

    .line 355
    :cond_2
    invoke-virtual {p0}, Lcom/flurry/android/AdFrame$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    const/4 v2, 0x2

    aget-object v0, v0, v2

    invoke-virtual {p0, v0}, Lcom/flurry/android/AdFrame$Builder;->defaultValue(Lcom/flurry/org/apache/avro/Schema$Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    goto :goto_2

    .line 356
    :cond_3
    invoke-virtual {p0}, Lcom/flurry/android/AdFrame$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    const/4 v2, 0x3

    aget-object v0, v0, v2

    invoke-virtual {p0, v0}, Lcom/flurry/android/AdFrame$Builder;->defaultValue(Lcom/flurry/org/apache/avro/Schema$Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/AdSpaceLayout;

    goto :goto_3

    .line 357
    :cond_4
    invoke-virtual {p0}, Lcom/flurry/android/AdFrame$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    const/4 v2, 0x4

    aget-object v0, v0, v2

    invoke-virtual {p0, v0}, Lcom/flurry/android/AdFrame$Builder;->defaultValue(Lcom/flurry/org/apache/avro/Schema$Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    goto :goto_4

    .line 358
    :cond_5
    invoke-virtual {p0}, Lcom/flurry/android/AdFrame$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    const/4 v2, 0x5

    aget-object v0, v0, v2

    invoke-virtual {p0, v0}, Lcom/flurry/android/AdFrame$Builder;->defaultValue(Lcom/flurry/org/apache/avro/Schema$Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    .line 360
    :catch_0
    move-exception v0

    .line 361
    new-instance v1, Lcom/flurry/org/apache/avro/AvroRuntimeException;

    invoke-direct {v1, v0}, Lcom/flurry/org/apache/avro/AvroRuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 151
    invoke-virtual {p0}, Lcom/flurry/android/AdFrame$Builder;->build()Lcom/flurry/android/AdFrame;

    move-result-object v0

    return-object v0
.end method

.method public clearAdGuid()Lcom/flurry/android/AdFrame$Builder;
    .locals 3

    .prologue
    .line 344
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/android/AdFrame$Builder;->M:Ljava/lang/CharSequence;

    .line 345
    invoke-virtual {p0}, Lcom/flurry/android/AdFrame$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x5

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 346
    return-object p0
.end method

.method public clearAdSpaceLayout()Lcom/flurry/android/AdFrame$Builder;
    .locals 3

    .prologue
    .line 294
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/android/AdFrame$Builder;->L:Lcom/flurry/android/AdSpaceLayout;

    .line 295
    invoke-virtual {p0}, Lcom/flurry/android/AdFrame$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 296
    return-object p0
.end method

.method public clearBinding()Lcom/flurry/android/AdFrame$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 220
    invoke-virtual {p0}, Lcom/flurry/android/AdFrame$Builder;->fieldSetFlags()[Z

    move-result-object v0

    aput-boolean v1, v0, v1

    .line 221
    return-object p0
.end method

.method public clearCallbacks()Lcom/flurry/android/AdFrame$Builder;
    .locals 3

    .prologue
    .line 319
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/android/AdFrame$Builder;->callbacks:Ljava/util/List;

    .line 320
    invoke-virtual {p0}, Lcom/flurry/android/AdFrame$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 321
    return-object p0
.end method

.method public clearContent()Lcom/flurry/android/AdFrame$Builder;
    .locals 3

    .prologue
    .line 269
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/android/AdFrame$Builder;->K:Ljava/lang/CharSequence;

    .line 270
    invoke-virtual {p0}, Lcom/flurry/android/AdFrame$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 271
    return-object p0
.end method

.method public clearDisplay()Lcom/flurry/android/AdFrame$Builder;
    .locals 3

    .prologue
    .line 244
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/android/AdFrame$Builder;->J:Ljava/lang/CharSequence;

    .line 245
    invoke-virtual {p0}, Lcom/flurry/android/AdFrame$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 246
    return-object p0
.end method

.method public getAdGuid()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 326
    iget-object v0, p0, Lcom/flurry/android/AdFrame$Builder;->M:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getAdSpaceLayout()Lcom/flurry/android/AdSpaceLayout;
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/flurry/android/AdFrame$Builder;->L:Lcom/flurry/android/AdSpaceLayout;

    return-object v0
.end method

.method public getBinding()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 202
    iget v0, p0, Lcom/flurry/android/AdFrame$Builder;->I:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getCallbacks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/Callback;",
            ">;"
        }
    .end annotation

    .prologue
    .line 301
    iget-object v0, p0, Lcom/flurry/android/AdFrame$Builder;->callbacks:Ljava/util/List;

    return-object v0
.end method

.method public getContent()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/flurry/android/AdFrame$Builder;->K:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getDisplay()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/flurry/android/AdFrame$Builder;->J:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public hasAdGuid()Z
    .locals 2

    .prologue
    .line 339
    invoke-virtual {p0}, Lcom/flurry/android/AdFrame$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x5

    aget-boolean v0, v0, v1

    return v0
.end method

.method public hasAdSpaceLayout()Z
    .locals 2

    .prologue
    .line 289
    invoke-virtual {p0}, Lcom/flurry/android/AdFrame$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x3

    aget-boolean v0, v0, v1

    return v0
.end method

.method public hasBinding()Z
    .locals 2

    .prologue
    .line 215
    invoke-virtual {p0}, Lcom/flurry/android/AdFrame$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    return v0
.end method

.method public hasCallbacks()Z
    .locals 2

    .prologue
    .line 314
    invoke-virtual {p0}, Lcom/flurry/android/AdFrame$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x4

    aget-boolean v0, v0, v1

    return v0
.end method

.method public hasContent()Z
    .locals 2

    .prologue
    .line 264
    invoke-virtual {p0}, Lcom/flurry/android/AdFrame$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x2

    aget-boolean v0, v0, v1

    return v0
.end method

.method public hasDisplay()Z
    .locals 2

    .prologue
    .line 239
    invoke-virtual {p0}, Lcom/flurry/android/AdFrame$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    return v0
.end method

.method public setAdGuid(Ljava/lang/CharSequence;)Lcom/flurry/android/AdFrame$Builder;
    .locals 3

    .prologue
    const/4 v2, 0x5

    .line 331
    invoke-virtual {p0}, Lcom/flurry/android/AdFrame$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-virtual {p0, v0, p1}, Lcom/flurry/android/AdFrame$Builder;->validate(Lcom/flurry/org/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 332
    iput-object p1, p0, Lcom/flurry/android/AdFrame$Builder;->M:Ljava/lang/CharSequence;

    .line 333
    invoke-virtual {p0}, Lcom/flurry/android/AdFrame$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    .line 334
    return-object p0
.end method

.method public setAdSpaceLayout(Lcom/flurry/android/AdSpaceLayout;)Lcom/flurry/android/AdFrame$Builder;
    .locals 3

    .prologue
    const/4 v2, 0x3

    .line 281
    invoke-virtual {p0}, Lcom/flurry/android/AdFrame$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-virtual {p0, v0, p1}, Lcom/flurry/android/AdFrame$Builder;->validate(Lcom/flurry/org/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 282
    iput-object p1, p0, Lcom/flurry/android/AdFrame$Builder;->L:Lcom/flurry/android/AdSpaceLayout;

    .line 283
    invoke-virtual {p0}, Lcom/flurry/android/AdFrame$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    .line 284
    return-object p0
.end method

.method public setBinding(I)Lcom/flurry/android/AdFrame$Builder;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 207
    invoke-virtual {p0}, Lcom/flurry/android/AdFrame$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/flurry/android/AdFrame$Builder;->validate(Lcom/flurry/org/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 208
    iput p1, p0, Lcom/flurry/android/AdFrame$Builder;->I:I

    .line 209
    invoke-virtual {p0}, Lcom/flurry/android/AdFrame$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    .line 210
    return-object p0
.end method

.method public setCallbacks(Ljava/util/List;)Lcom/flurry/android/AdFrame$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/Callback;",
            ">;)",
            "Lcom/flurry/android/AdFrame$Builder;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x4

    .line 306
    invoke-virtual {p0}, Lcom/flurry/android/AdFrame$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-virtual {p0, v0, p1}, Lcom/flurry/android/AdFrame$Builder;->validate(Lcom/flurry/org/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 307
    iput-object p1, p0, Lcom/flurry/android/AdFrame$Builder;->callbacks:Ljava/util/List;

    .line 308
    invoke-virtual {p0}, Lcom/flurry/android/AdFrame$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    .line 309
    return-object p0
.end method

.method public setContent(Ljava/lang/CharSequence;)Lcom/flurry/android/AdFrame$Builder;
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 256
    invoke-virtual {p0}, Lcom/flurry/android/AdFrame$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-virtual {p0, v0, p1}, Lcom/flurry/android/AdFrame$Builder;->validate(Lcom/flurry/org/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 257
    iput-object p1, p0, Lcom/flurry/android/AdFrame$Builder;->K:Ljava/lang/CharSequence;

    .line 258
    invoke-virtual {p0}, Lcom/flurry/android/AdFrame$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    .line 259
    return-object p0
.end method

.method public setDisplay(Ljava/lang/CharSequence;)Lcom/flurry/android/AdFrame$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 231
    invoke-virtual {p0}, Lcom/flurry/android/AdFrame$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-virtual {p0, v0, p1}, Lcom/flurry/android/AdFrame$Builder;->validate(Lcom/flurry/org/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 232
    iput-object p1, p0, Lcom/flurry/android/AdFrame$Builder;->J:Ljava/lang/CharSequence;

    .line 233
    invoke-virtual {p0}, Lcom/flurry/android/AdFrame$Builder;->fieldSetFlags()[Z

    move-result-object v0

    aput-boolean v1, v0, v1

    .line 234
    return-object p0
.end method
