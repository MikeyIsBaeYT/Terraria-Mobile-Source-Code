.class public Lcom/flurry/android/AdSpaceLayout$Builder;
.super Lcom/flurry/org/apache/avro/specific/SpecificRecordBuilderBase;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/org/apache/avro/data/RecordBuilder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/flurry/org/apache/avro/specific/SpecificRecordBuilderBase",
        "<",
        "Lcom/flurry/android/AdSpaceLayout;",
        ">;",
        "Lcom/flurry/org/apache/avro/data/RecordBuilder",
        "<",
        "Lcom/flurry/android/AdSpaceLayout;",
        ">;"
    }
.end annotation


# instance fields
.field private cU:I

.field private cV:I

.field private cW:Ljava/lang/CharSequence;

.field private cX:Ljava/lang/CharSequence;

.field private cY:Ljava/lang/CharSequence;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 144
    sget-object v0, Lcom/flurry/android/AdSpaceLayout;->SCHEMA$:Lcom/flurry/org/apache/avro/Schema;

    invoke-direct {p0, v0}, Lcom/flurry/org/apache/avro/specific/SpecificRecordBuilderBase;-><init>(Lcom/flurry/org/apache/avro/Schema;)V

    .line 145
    return-void
.end method


# virtual methods
.method public build()Lcom/flurry/android/AdSpaceLayout;
    .locals 3

    .prologue
    .line 303
    :try_start_0
    new-instance v1, Lcom/flurry/android/AdSpaceLayout;

    invoke-direct {v1}, Lcom/flurry/android/AdSpaceLayout;-><init>()V

    .line 304
    invoke-virtual {p0}, Lcom/flurry/android/AdSpaceLayout$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v2, 0x0

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/flurry/android/AdSpaceLayout$Builder;->cU:I

    :goto_0
    iput v0, v1, Lcom/flurry/android/AdSpaceLayout;->cU:I

    .line 305
    invoke-virtual {p0}, Lcom/flurry/android/AdSpaceLayout$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v2, 0x1

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/flurry/android/AdSpaceLayout$Builder;->cV:I

    :goto_1
    iput v0, v1, Lcom/flurry/android/AdSpaceLayout;->cV:I

    .line 306
    invoke-virtual {p0}, Lcom/flurry/android/AdSpaceLayout$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v2, 0x2

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/flurry/android/AdSpaceLayout$Builder;->cW:Ljava/lang/CharSequence;

    :goto_2
    iput-object v0, v1, Lcom/flurry/android/AdSpaceLayout;->cW:Ljava/lang/CharSequence;

    .line 307
    invoke-virtual {p0}, Lcom/flurry/android/AdSpaceLayout$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v2, 0x3

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/flurry/android/AdSpaceLayout$Builder;->cX:Ljava/lang/CharSequence;

    :goto_3
    iput-object v0, v1, Lcom/flurry/android/AdSpaceLayout;->cX:Ljava/lang/CharSequence;

    .line 308
    invoke-virtual {p0}, Lcom/flurry/android/AdSpaceLayout$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v2, 0x4

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/flurry/android/AdSpaceLayout$Builder;->cY:Ljava/lang/CharSequence;

    :goto_4
    iput-object v0, v1, Lcom/flurry/android/AdSpaceLayout;->cY:Ljava/lang/CharSequence;

    .line 309
    return-object v1

    .line 304
    :cond_0
    invoke-virtual {p0}, Lcom/flurry/android/AdSpaceLayout$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    const/4 v2, 0x0

    aget-object v0, v0, v2

    invoke-virtual {p0, v0}, Lcom/flurry/android/AdSpaceLayout$Builder;->defaultValue(Lcom/flurry/org/apache/avro/Schema$Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    .line 305
    :cond_1
    invoke-virtual {p0}, Lcom/flurry/android/AdSpaceLayout$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-virtual {p0, v0}, Lcom/flurry/android/AdSpaceLayout$Builder;->defaultValue(Lcom/flurry/org/apache/avro/Schema$Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1

    .line 306
    :cond_2
    invoke-virtual {p0}, Lcom/flurry/android/AdSpaceLayout$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    const/4 v2, 0x2

    aget-object v0, v0, v2

    invoke-virtual {p0, v0}, Lcom/flurry/android/AdSpaceLayout$Builder;->defaultValue(Lcom/flurry/org/apache/avro/Schema$Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    goto :goto_2

    .line 307
    :cond_3
    invoke-virtual {p0}, Lcom/flurry/android/AdSpaceLayout$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    const/4 v2, 0x3

    aget-object v0, v0, v2

    invoke-virtual {p0, v0}, Lcom/flurry/android/AdSpaceLayout$Builder;->defaultValue(Lcom/flurry/org/apache/avro/Schema$Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    goto :goto_3

    .line 308
    :cond_4
    invoke-virtual {p0}, Lcom/flurry/android/AdSpaceLayout$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    const/4 v2, 0x4

    aget-object v0, v0, v2

    invoke-virtual {p0, v0}, Lcom/flurry/android/AdSpaceLayout$Builder;->defaultValue(Lcom/flurry/org/apache/avro/Schema$Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 310
    :catch_0
    move-exception v0

    .line 311
    new-instance v1, Lcom/flurry/org/apache/avro/AvroRuntimeException;

    invoke-direct {v1, v0}, Lcom/flurry/org/apache/avro/AvroRuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/flurry/android/AdSpaceLayout$Builder;->build()Lcom/flurry/android/AdSpaceLayout;

    move-result-object v0

    return-object v0
.end method

.method public clearAdHeight()Lcom/flurry/android/AdSpaceLayout$Builder;
    .locals 3

    .prologue
    .line 221
    invoke-virtual {p0}, Lcom/flurry/android/AdSpaceLayout$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 222
    return-object p0
.end method

.method public clearAdWidth()Lcom/flurry/android/AdSpaceLayout$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 197
    invoke-virtual {p0}, Lcom/flurry/android/AdSpaceLayout$Builder;->fieldSetFlags()[Z

    move-result-object v0

    aput-boolean v1, v0, v1

    .line 198
    return-object p0
.end method

.method public clearAlignment()Lcom/flurry/android/AdSpaceLayout$Builder;
    .locals 3

    .prologue
    .line 295
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/android/AdSpaceLayout$Builder;->cY:Ljava/lang/CharSequence;

    .line 296
    invoke-virtual {p0}, Lcom/flurry/android/AdSpaceLayout$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 297
    return-object p0
.end method

.method public clearFix()Lcom/flurry/android/AdSpaceLayout$Builder;
    .locals 3

    .prologue
    .line 245
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/android/AdSpaceLayout$Builder;->cW:Ljava/lang/CharSequence;

    .line 246
    invoke-virtual {p0}, Lcom/flurry/android/AdSpaceLayout$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 247
    return-object p0
.end method

.method public clearFormat()Lcom/flurry/android/AdSpaceLayout$Builder;
    .locals 3

    .prologue
    .line 270
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/android/AdSpaceLayout$Builder;->cX:Ljava/lang/CharSequence;

    .line 271
    invoke-virtual {p0}, Lcom/flurry/android/AdSpaceLayout$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 272
    return-object p0
.end method

.method public getAdHeight()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 203
    iget v0, p0, Lcom/flurry/android/AdSpaceLayout$Builder;->cV:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getAdWidth()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 179
    iget v0, p0, Lcom/flurry/android/AdSpaceLayout$Builder;->cU:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getAlignment()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/flurry/android/AdSpaceLayout$Builder;->cY:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getFix()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/flurry/android/AdSpaceLayout$Builder;->cW:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getFormat()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/flurry/android/AdSpaceLayout$Builder;->cX:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public hasAdHeight()Z
    .locals 2

    .prologue
    .line 216
    invoke-virtual {p0}, Lcom/flurry/android/AdSpaceLayout$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    return v0
.end method

.method public hasAdWidth()Z
    .locals 2

    .prologue
    .line 192
    invoke-virtual {p0}, Lcom/flurry/android/AdSpaceLayout$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    return v0
.end method

.method public hasAlignment()Z
    .locals 2

    .prologue
    .line 290
    invoke-virtual {p0}, Lcom/flurry/android/AdSpaceLayout$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x4

    aget-boolean v0, v0, v1

    return v0
.end method

.method public hasFix()Z
    .locals 2

    .prologue
    .line 240
    invoke-virtual {p0}, Lcom/flurry/android/AdSpaceLayout$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x2

    aget-boolean v0, v0, v1

    return v0
.end method

.method public hasFormat()Z
    .locals 2

    .prologue
    .line 265
    invoke-virtual {p0}, Lcom/flurry/android/AdSpaceLayout$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x3

    aget-boolean v0, v0, v1

    return v0
.end method

.method public setAdHeight(I)Lcom/flurry/android/AdSpaceLayout$Builder;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 208
    invoke-virtual {p0}, Lcom/flurry/android/AdSpaceLayout$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/flurry/android/AdSpaceLayout$Builder;->validate(Lcom/flurry/org/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 209
    iput p1, p0, Lcom/flurry/android/AdSpaceLayout$Builder;->cV:I

    .line 210
    invoke-virtual {p0}, Lcom/flurry/android/AdSpaceLayout$Builder;->fieldSetFlags()[Z

    move-result-object v0

    aput-boolean v2, v0, v2

    .line 211
    return-object p0
.end method

.method public setAdWidth(I)Lcom/flurry/android/AdSpaceLayout$Builder;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 184
    invoke-virtual {p0}, Lcom/flurry/android/AdSpaceLayout$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/flurry/android/AdSpaceLayout$Builder;->validate(Lcom/flurry/org/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 185
    iput p1, p0, Lcom/flurry/android/AdSpaceLayout$Builder;->cU:I

    .line 186
    invoke-virtual {p0}, Lcom/flurry/android/AdSpaceLayout$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    .line 187
    return-object p0
.end method

.method public setAlignment(Ljava/lang/CharSequence;)Lcom/flurry/android/AdSpaceLayout$Builder;
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 282
    invoke-virtual {p0}, Lcom/flurry/android/AdSpaceLayout$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-virtual {p0, v0, p1}, Lcom/flurry/android/AdSpaceLayout$Builder;->validate(Lcom/flurry/org/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 283
    iput-object p1, p0, Lcom/flurry/android/AdSpaceLayout$Builder;->cY:Ljava/lang/CharSequence;

    .line 284
    invoke-virtual {p0}, Lcom/flurry/android/AdSpaceLayout$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    .line 285
    return-object p0
.end method

.method public setFix(Ljava/lang/CharSequence;)Lcom/flurry/android/AdSpaceLayout$Builder;
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 232
    invoke-virtual {p0}, Lcom/flurry/android/AdSpaceLayout$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-virtual {p0, v0, p1}, Lcom/flurry/android/AdSpaceLayout$Builder;->validate(Lcom/flurry/org/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 233
    iput-object p1, p0, Lcom/flurry/android/AdSpaceLayout$Builder;->cW:Ljava/lang/CharSequence;

    .line 234
    invoke-virtual {p0}, Lcom/flurry/android/AdSpaceLayout$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    .line 235
    return-object p0
.end method

.method public setFormat(Ljava/lang/CharSequence;)Lcom/flurry/android/AdSpaceLayout$Builder;
    .locals 3

    .prologue
    const/4 v2, 0x3

    .line 257
    invoke-virtual {p0}, Lcom/flurry/android/AdSpaceLayout$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-virtual {p0, v0, p1}, Lcom/flurry/android/AdSpaceLayout$Builder;->validate(Lcom/flurry/org/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 258
    iput-object p1, p0, Lcom/flurry/android/AdSpaceLayout$Builder;->cX:Ljava/lang/CharSequence;

    .line 259
    invoke-virtual {p0}, Lcom/flurry/android/AdSpaceLayout$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    .line 260
    return-object p0
.end method
