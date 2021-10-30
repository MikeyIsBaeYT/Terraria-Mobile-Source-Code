.class public Lcom/flurry/android/AdUnit$Builder;
.super Lcom/flurry/org/apache/avro/specific/SpecificRecordBuilderBase;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/org/apache/avro/data/RecordBuilder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/flurry/org/apache/avro/specific/SpecificRecordBuilderBase",
        "<",
        "Lcom/flurry/android/AdUnit;",
        ">;",
        "Lcom/flurry/org/apache/avro/data/RecordBuilder",
        "<",
        "Lcom/flurry/android/AdUnit;",
        ">;"
    }
.end annotation


# instance fields
.field private bE:Ljava/lang/CharSequence;

.field private bF:J

.field private bG:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/AdFrame;",
            ">;"
        }
    .end annotation
.end field

.field private bH:I

.field private bI:Ljava/lang/CharSequence;

.field private bJ:Ljava/lang/CharSequence;

.field private bK:J

.field private bL:I

.field private bM:I

.field private bN:I

.field private bO:J

.field private bP:J

.field private bQ:Ljava/lang/CharSequence;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 296
    sget-object v0, Lcom/flurry/android/AdUnit;->SCHEMA$:Lcom/flurry/org/apache/avro/Schema;

    invoke-direct {p0, v0}, Lcom/flurry/org/apache/avro/specific/SpecificRecordBuilderBase;-><init>(Lcom/flurry/org/apache/avro/Schema;)V

    .line 297
    return-void
.end method


# virtual methods
.method public build()Lcom/flurry/android/AdUnit;
    .locals 3

    .prologue
    .line 681
    :try_start_0
    new-instance v2, Lcom/flurry/android/AdUnit;

    invoke-direct {v2}, Lcom/flurry/android/AdUnit;-><init>()V

    .line 682
    invoke-virtual {p0}, Lcom/flurry/android/AdUnit$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/android/AdUnit$Builder;->bE:Ljava/lang/CharSequence;

    :goto_0
    iput-object v0, v2, Lcom/flurry/android/AdUnit;->bE:Ljava/lang/CharSequence;

    .line 683
    invoke-virtual {p0}, Lcom/flurry/android/AdUnit$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/flurry/android/AdUnit$Builder;->bF:J

    :goto_1
    iput-wide v0, v2, Lcom/flurry/android/AdUnit;->bF:J

    .line 684
    invoke-virtual {p0}, Lcom/flurry/android/AdUnit$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x2

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/flurry/android/AdUnit$Builder;->bG:Ljava/util/List;

    :goto_2
    iput-object v0, v2, Lcom/flurry/android/AdUnit;->bG:Ljava/util/List;

    .line 685
    invoke-virtual {p0}, Lcom/flurry/android/AdUnit$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x3

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/flurry/android/AdUnit$Builder;->bH:I

    :goto_3
    iput v0, v2, Lcom/flurry/android/AdUnit;->bH:I

    .line 686
    invoke-virtual {p0}, Lcom/flurry/android/AdUnit$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x4

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/flurry/android/AdUnit$Builder;->bI:Ljava/lang/CharSequence;

    :goto_4
    iput-object v0, v2, Lcom/flurry/android/AdUnit;->bI:Ljava/lang/CharSequence;

    .line 687
    invoke-virtual {p0}, Lcom/flurry/android/AdUnit$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x5

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/flurry/android/AdUnit$Builder;->bJ:Ljava/lang/CharSequence;

    :goto_5
    iput-object v0, v2, Lcom/flurry/android/AdUnit;->bJ:Ljava/lang/CharSequence;

    .line 688
    invoke-virtual {p0}, Lcom/flurry/android/AdUnit$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x6

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_6

    iget-wide v0, p0, Lcom/flurry/android/AdUnit$Builder;->bK:J

    :goto_6
    iput-wide v0, v2, Lcom/flurry/android/AdUnit;->bK:J

    .line 689
    invoke-virtual {p0}, Lcom/flurry/android/AdUnit$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x7

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/flurry/android/AdUnit$Builder;->bL:I

    :goto_7
    iput v0, v2, Lcom/flurry/android/AdUnit;->bL:I

    .line 690
    invoke-virtual {p0}, Lcom/flurry/android/AdUnit$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/16 v1, 0x8

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_8

    iget v0, p0, Lcom/flurry/android/AdUnit$Builder;->bM:I

    :goto_8
    iput v0, v2, Lcom/flurry/android/AdUnit;->bM:I

    .line 691
    invoke-virtual {p0}, Lcom/flurry/android/AdUnit$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/16 v1, 0x9

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_9

    iget v0, p0, Lcom/flurry/android/AdUnit$Builder;->bN:I

    :goto_9
    iput v0, v2, Lcom/flurry/android/AdUnit;->bN:I

    .line 692
    invoke-virtual {p0}, Lcom/flurry/android/AdUnit$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/16 v1, 0xa

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_a

    iget-wide v0, p0, Lcom/flurry/android/AdUnit$Builder;->bO:J

    :goto_a
    iput-wide v0, v2, Lcom/flurry/android/AdUnit;->bO:J

    .line 693
    invoke-virtual {p0}, Lcom/flurry/android/AdUnit$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/16 v1, 0xb

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_b

    iget-wide v0, p0, Lcom/flurry/android/AdUnit$Builder;->bP:J

    :goto_b
    iput-wide v0, v2, Lcom/flurry/android/AdUnit;->bP:J

    .line 694
    invoke-virtual {p0}, Lcom/flurry/android/AdUnit$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/16 v1, 0xc

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/flurry/android/AdUnit$Builder;->bQ:Ljava/lang/CharSequence;

    :goto_c
    iput-object v0, v2, Lcom/flurry/android/AdUnit;->bQ:Ljava/lang/CharSequence;

    .line 695
    return-object v2

    .line 682
    :cond_0
    invoke-virtual {p0}, Lcom/flurry/android/AdUnit$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/flurry/android/AdUnit$Builder;->defaultValue(Lcom/flurry/org/apache/avro/Schema$Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 683
    :cond_1
    invoke-virtual {p0}, Lcom/flurry/android/AdUnit$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/flurry/android/AdUnit$Builder;->defaultValue(Lcom/flurry/org/apache/avro/Schema$Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto/16 :goto_1

    .line 684
    :cond_2
    invoke-virtual {p0}, Lcom/flurry/android/AdUnit$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/flurry/android/AdUnit$Builder;->defaultValue(Lcom/flurry/org/apache/avro/Schema$Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    goto/16 :goto_2

    .line 685
    :cond_3
    invoke-virtual {p0}, Lcom/flurry/android/AdUnit$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    const/4 v1, 0x3

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/flurry/android/AdUnit$Builder;->defaultValue(Lcom/flurry/org/apache/avro/Schema$Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto/16 :goto_3

    .line 686
    :cond_4
    invoke-virtual {p0}, Lcom/flurry/android/AdUnit$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    const/4 v1, 0x4

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/flurry/android/AdUnit$Builder;->defaultValue(Lcom/flurry/org/apache/avro/Schema$Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    goto/16 :goto_4

    .line 687
    :cond_5
    invoke-virtual {p0}, Lcom/flurry/android/AdUnit$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    const/4 v1, 0x5

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/flurry/android/AdUnit$Builder;->defaultValue(Lcom/flurry/org/apache/avro/Schema$Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    goto/16 :goto_5

    .line 688
    :cond_6
    invoke-virtual {p0}, Lcom/flurry/android/AdUnit$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    const/4 v1, 0x6

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/flurry/android/AdUnit$Builder;->defaultValue(Lcom/flurry/org/apache/avro/Schema$Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto/16 :goto_6

    .line 689
    :cond_7
    invoke-virtual {p0}, Lcom/flurry/android/AdUnit$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    const/4 v1, 0x7

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/flurry/android/AdUnit$Builder;->defaultValue(Lcom/flurry/org/apache/avro/Schema$Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto/16 :goto_7

    .line 690
    :cond_8
    invoke-virtual {p0}, Lcom/flurry/android/AdUnit$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    const/16 v1, 0x8

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/flurry/android/AdUnit$Builder;->defaultValue(Lcom/flurry/org/apache/avro/Schema$Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto/16 :goto_8

    .line 691
    :cond_9
    invoke-virtual {p0}, Lcom/flurry/android/AdUnit$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    const/16 v1, 0x9

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/flurry/android/AdUnit$Builder;->defaultValue(Lcom/flurry/org/apache/avro/Schema$Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto/16 :goto_9

    .line 692
    :cond_a
    invoke-virtual {p0}, Lcom/flurry/android/AdUnit$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    const/16 v1, 0xa

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/flurry/android/AdUnit$Builder;->defaultValue(Lcom/flurry/org/apache/avro/Schema$Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto/16 :goto_a

    .line 693
    :cond_b
    invoke-virtual {p0}, Lcom/flurry/android/AdUnit$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    const/16 v1, 0xb

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/flurry/android/AdUnit$Builder;->defaultValue(Lcom/flurry/org/apache/avro/Schema$Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto/16 :goto_b

    .line 694
    :cond_c
    invoke-virtual {p0}, Lcom/flurry/android/AdUnit$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    const/16 v1, 0xc

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/flurry/android/AdUnit$Builder;->defaultValue(Lcom/flurry/org/apache/avro/Schema$Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_c

    .line 696
    :catch_0
    move-exception v0

    .line 697
    new-instance v1, Lcom/flurry/org/apache/avro/AvroRuntimeException;

    invoke-direct {v1, v0}, Lcom/flurry/org/apache/avro/AvroRuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 277
    invoke-virtual {p0}, Lcom/flurry/android/AdUnit$Builder;->build()Lcom/flurry/android/AdUnit;

    move-result-object v0

    return-object v0
.end method

.method public clearAdFrames()Lcom/flurry/android/AdUnit$Builder;
    .locals 3

    .prologue
    .line 430
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/android/AdUnit$Builder;->bG:Ljava/util/List;

    .line 431
    invoke-virtual {p0}, Lcom/flurry/android/AdUnit$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 432
    return-object p0
.end method

.method public clearAdSpace()Lcom/flurry/android/AdUnit$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 381
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/android/AdUnit$Builder;->bE:Ljava/lang/CharSequence;

    .line 382
    invoke-virtual {p0}, Lcom/flurry/android/AdUnit$Builder;->fieldSetFlags()[Z

    move-result-object v0

    aput-boolean v1, v0, v1

    .line 383
    return-object p0
.end method

.method public clearAdomain()Lcom/flurry/android/AdUnit$Builder;
    .locals 3

    .prologue
    .line 673
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/android/AdUnit$Builder;->bQ:Ljava/lang/CharSequence;

    .line 674
    invoke-virtual {p0}, Lcom/flurry/android/AdUnit$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/16 v1, 0xc

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 675
    return-object p0
.end method

.method public clearCombinable()Lcom/flurry/android/AdUnit$Builder;
    .locals 3

    .prologue
    .line 455
    invoke-virtual {p0}, Lcom/flurry/android/AdUnit$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 456
    return-object p0
.end method

.method public clearExpiration()Lcom/flurry/android/AdUnit$Builder;
    .locals 3

    .prologue
    .line 406
    invoke-virtual {p0}, Lcom/flurry/android/AdUnit$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 407
    return-object p0
.end method

.method public clearExpirationTime()Lcom/flurry/android/AdUnit$Builder;
    .locals 3

    .prologue
    .line 625
    invoke-virtual {p0}, Lcom/flurry/android/AdUnit$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/16 v1, 0xa

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 626
    return-object p0
.end method

.method public clearGroupId()Lcom/flurry/android/AdUnit$Builder;
    .locals 3

    .prologue
    .line 479
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/android/AdUnit$Builder;->bI:Ljava/lang/CharSequence;

    .line 480
    invoke-virtual {p0}, Lcom/flurry/android/AdUnit$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 481
    return-object p0
.end method

.method public clearIdHash()Lcom/flurry/android/AdUnit$Builder;
    .locals 3

    .prologue
    .line 504
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/android/AdUnit$Builder;->bJ:Ljava/lang/CharSequence;

    .line 505
    invoke-virtual {p0}, Lcom/flurry/android/AdUnit$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x5

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 506
    return-object p0
.end method

.method public clearNewCap()Lcom/flurry/android/AdUnit$Builder;
    .locals 3

    .prologue
    .line 553
    invoke-virtual {p0}, Lcom/flurry/android/AdUnit$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x7

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 554
    return-object p0
.end method

.method public clearPreviousCap()Lcom/flurry/android/AdUnit$Builder;
    .locals 3

    .prologue
    .line 577
    invoke-virtual {p0}, Lcom/flurry/android/AdUnit$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 578
    return-object p0
.end method

.method public clearPreviousCapType()Lcom/flurry/android/AdUnit$Builder;
    .locals 3

    .prologue
    .line 601
    invoke-virtual {p0}, Lcom/flurry/android/AdUnit$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/16 v1, 0x9

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 602
    return-object p0
.end method

.method public clearPrice()Lcom/flurry/android/AdUnit$Builder;
    .locals 3

    .prologue
    .line 649
    invoke-virtual {p0}, Lcom/flurry/android/AdUnit$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/16 v1, 0xb

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 650
    return-object p0
.end method

.method public clearServeTime()Lcom/flurry/android/AdUnit$Builder;
    .locals 3

    .prologue
    .line 529
    invoke-virtual {p0}, Lcom/flurry/android/AdUnit$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x6

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 530
    return-object p0
.end method

.method public getAdFrames()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/AdFrame;",
            ">;"
        }
    .end annotation

    .prologue
    .line 412
    iget-object v0, p0, Lcom/flurry/android/AdUnit$Builder;->bG:Ljava/util/List;

    return-object v0
.end method

.method public getAdSpace()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 363
    iget-object v0, p0, Lcom/flurry/android/AdUnit$Builder;->bE:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getAdomain()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 655
    iget-object v0, p0, Lcom/flurry/android/AdUnit$Builder;->bQ:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getCombinable()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 437
    iget v0, p0, Lcom/flurry/android/AdUnit$Builder;->bH:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getExpiration()Ljava/lang/Long;
    .locals 2

    .prologue
    .line 388
    iget-wide v0, p0, Lcom/flurry/android/AdUnit$Builder;->bF:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getExpirationTime()Ljava/lang/Long;
    .locals 2

    .prologue
    .line 607
    iget-wide v0, p0, Lcom/flurry/android/AdUnit$Builder;->bO:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getGroupId()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 461
    iget-object v0, p0, Lcom/flurry/android/AdUnit$Builder;->bI:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getIdHash()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 486
    iget-object v0, p0, Lcom/flurry/android/AdUnit$Builder;->bJ:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getNewCap()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 535
    iget v0, p0, Lcom/flurry/android/AdUnit$Builder;->bL:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getPreviousCap()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 559
    iget v0, p0, Lcom/flurry/android/AdUnit$Builder;->bM:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getPreviousCapType()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 583
    iget v0, p0, Lcom/flurry/android/AdUnit$Builder;->bN:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getPrice()Ljava/lang/Long;
    .locals 2

    .prologue
    .line 631
    iget-wide v0, p0, Lcom/flurry/android/AdUnit$Builder;->bP:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getServeTime()Ljava/lang/Long;
    .locals 2

    .prologue
    .line 511
    iget-wide v0, p0, Lcom/flurry/android/AdUnit$Builder;->bK:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public hasAdFrames()Z
    .locals 2

    .prologue
    .line 425
    invoke-virtual {p0}, Lcom/flurry/android/AdUnit$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x2

    aget-boolean v0, v0, v1

    return v0
.end method

.method public hasAdSpace()Z
    .locals 2

    .prologue
    .line 376
    invoke-virtual {p0}, Lcom/flurry/android/AdUnit$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    return v0
.end method

.method public hasAdomain()Z
    .locals 2

    .prologue
    .line 668
    invoke-virtual {p0}, Lcom/flurry/android/AdUnit$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/16 v1, 0xc

    aget-boolean v0, v0, v1

    return v0
.end method

.method public hasCombinable()Z
    .locals 2

    .prologue
    .line 450
    invoke-virtual {p0}, Lcom/flurry/android/AdUnit$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x3

    aget-boolean v0, v0, v1

    return v0
.end method

.method public hasExpiration()Z
    .locals 2

    .prologue
    .line 401
    invoke-virtual {p0}, Lcom/flurry/android/AdUnit$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    return v0
.end method

.method public hasExpirationTime()Z
    .locals 2

    .prologue
    .line 620
    invoke-virtual {p0}, Lcom/flurry/android/AdUnit$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/16 v1, 0xa

    aget-boolean v0, v0, v1

    return v0
.end method

.method public hasGroupId()Z
    .locals 2

    .prologue
    .line 474
    invoke-virtual {p0}, Lcom/flurry/android/AdUnit$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x4

    aget-boolean v0, v0, v1

    return v0
.end method

.method public hasIdHash()Z
    .locals 2

    .prologue
    .line 499
    invoke-virtual {p0}, Lcom/flurry/android/AdUnit$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x5

    aget-boolean v0, v0, v1

    return v0
.end method

.method public hasNewCap()Z
    .locals 2

    .prologue
    .line 548
    invoke-virtual {p0}, Lcom/flurry/android/AdUnit$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x7

    aget-boolean v0, v0, v1

    return v0
.end method

.method public hasPreviousCap()Z
    .locals 2

    .prologue
    .line 572
    invoke-virtual {p0}, Lcom/flurry/android/AdUnit$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/16 v1, 0x8

    aget-boolean v0, v0, v1

    return v0
.end method

.method public hasPreviousCapType()Z
    .locals 2

    .prologue
    .line 596
    invoke-virtual {p0}, Lcom/flurry/android/AdUnit$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/16 v1, 0x9

    aget-boolean v0, v0, v1

    return v0
.end method

.method public hasPrice()Z
    .locals 2

    .prologue
    .line 644
    invoke-virtual {p0}, Lcom/flurry/android/AdUnit$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/16 v1, 0xb

    aget-boolean v0, v0, v1

    return v0
.end method

.method public hasServeTime()Z
    .locals 2

    .prologue
    .line 524
    invoke-virtual {p0}, Lcom/flurry/android/AdUnit$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x6

    aget-boolean v0, v0, v1

    return v0
.end method

.method public setAdFrames(Ljava/util/List;)Lcom/flurry/android/AdUnit$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/AdFrame;",
            ">;)",
            "Lcom/flurry/android/AdUnit$Builder;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    .line 417
    invoke-virtual {p0}, Lcom/flurry/android/AdUnit$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-virtual {p0, v0, p1}, Lcom/flurry/android/AdUnit$Builder;->validate(Lcom/flurry/org/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 418
    iput-object p1, p0, Lcom/flurry/android/AdUnit$Builder;->bG:Ljava/util/List;

    .line 419
    invoke-virtual {p0}, Lcom/flurry/android/AdUnit$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    .line 420
    return-object p0
.end method

.method public setAdSpace(Ljava/lang/CharSequence;)Lcom/flurry/android/AdUnit$Builder;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 368
    invoke-virtual {p0}, Lcom/flurry/android/AdUnit$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-virtual {p0, v0, p1}, Lcom/flurry/android/AdUnit$Builder;->validate(Lcom/flurry/org/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 369
    iput-object p1, p0, Lcom/flurry/android/AdUnit$Builder;->bE:Ljava/lang/CharSequence;

    .line 370
    invoke-virtual {p0}, Lcom/flurry/android/AdUnit$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    .line 371
    return-object p0
.end method

.method public setAdomain(Ljava/lang/CharSequence;)Lcom/flurry/android/AdUnit$Builder;
    .locals 3

    .prologue
    const/16 v2, 0xc

    .line 660
    invoke-virtual {p0}, Lcom/flurry/android/AdUnit$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-virtual {p0, v0, p1}, Lcom/flurry/android/AdUnit$Builder;->validate(Lcom/flurry/org/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 661
    iput-object p1, p0, Lcom/flurry/android/AdUnit$Builder;->bQ:Ljava/lang/CharSequence;

    .line 662
    invoke-virtual {p0}, Lcom/flurry/android/AdUnit$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    .line 663
    return-object p0
.end method

.method public setCombinable(I)Lcom/flurry/android/AdUnit$Builder;
    .locals 3

    .prologue
    const/4 v2, 0x3

    .line 442
    invoke-virtual {p0}, Lcom/flurry/android/AdUnit$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/flurry/android/AdUnit$Builder;->validate(Lcom/flurry/org/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 443
    iput p1, p0, Lcom/flurry/android/AdUnit$Builder;->bH:I

    .line 444
    invoke-virtual {p0}, Lcom/flurry/android/AdUnit$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    .line 445
    return-object p0
.end method

.method public setExpiration(J)Lcom/flurry/android/AdUnit$Builder;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 393
    invoke-virtual {p0}, Lcom/flurry/android/AdUnit$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/flurry/android/AdUnit$Builder;->validate(Lcom/flurry/org/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 394
    iput-wide p1, p0, Lcom/flurry/android/AdUnit$Builder;->bF:J

    .line 395
    invoke-virtual {p0}, Lcom/flurry/android/AdUnit$Builder;->fieldSetFlags()[Z

    move-result-object v0

    aput-boolean v2, v0, v2

    .line 396
    return-object p0
.end method

.method public setExpirationTime(J)Lcom/flurry/android/AdUnit$Builder;
    .locals 3

    .prologue
    const/16 v2, 0xa

    .line 612
    invoke-virtual {p0}, Lcom/flurry/android/AdUnit$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/flurry/android/AdUnit$Builder;->validate(Lcom/flurry/org/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 613
    iput-wide p1, p0, Lcom/flurry/android/AdUnit$Builder;->bO:J

    .line 614
    invoke-virtual {p0}, Lcom/flurry/android/AdUnit$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    .line 615
    return-object p0
.end method

.method public setGroupId(Ljava/lang/CharSequence;)Lcom/flurry/android/AdUnit$Builder;
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 466
    invoke-virtual {p0}, Lcom/flurry/android/AdUnit$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-virtual {p0, v0, p1}, Lcom/flurry/android/AdUnit$Builder;->validate(Lcom/flurry/org/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 467
    iput-object p1, p0, Lcom/flurry/android/AdUnit$Builder;->bI:Ljava/lang/CharSequence;

    .line 468
    invoke-virtual {p0}, Lcom/flurry/android/AdUnit$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    .line 469
    return-object p0
.end method

.method public setIdHash(Ljava/lang/CharSequence;)Lcom/flurry/android/AdUnit$Builder;
    .locals 3

    .prologue
    const/4 v2, 0x5

    .line 491
    invoke-virtual {p0}, Lcom/flurry/android/AdUnit$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-virtual {p0, v0, p1}, Lcom/flurry/android/AdUnit$Builder;->validate(Lcom/flurry/org/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 492
    iput-object p1, p0, Lcom/flurry/android/AdUnit$Builder;->bJ:Ljava/lang/CharSequence;

    .line 493
    invoke-virtual {p0}, Lcom/flurry/android/AdUnit$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    .line 494
    return-object p0
.end method

.method public setNewCap(I)Lcom/flurry/android/AdUnit$Builder;
    .locals 3

    .prologue
    const/4 v2, 0x7

    .line 540
    invoke-virtual {p0}, Lcom/flurry/android/AdUnit$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/flurry/android/AdUnit$Builder;->validate(Lcom/flurry/org/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 541
    iput p1, p0, Lcom/flurry/android/AdUnit$Builder;->bL:I

    .line 542
    invoke-virtual {p0}, Lcom/flurry/android/AdUnit$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    .line 543
    return-object p0
.end method

.method public setPreviousCap(I)Lcom/flurry/android/AdUnit$Builder;
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 564
    invoke-virtual {p0}, Lcom/flurry/android/AdUnit$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/flurry/android/AdUnit$Builder;->validate(Lcom/flurry/org/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 565
    iput p1, p0, Lcom/flurry/android/AdUnit$Builder;->bM:I

    .line 566
    invoke-virtual {p0}, Lcom/flurry/android/AdUnit$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    .line 567
    return-object p0
.end method

.method public setPreviousCapType(I)Lcom/flurry/android/AdUnit$Builder;
    .locals 3

    .prologue
    const/16 v2, 0x9

    .line 588
    invoke-virtual {p0}, Lcom/flurry/android/AdUnit$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/flurry/android/AdUnit$Builder;->validate(Lcom/flurry/org/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 589
    iput p1, p0, Lcom/flurry/android/AdUnit$Builder;->bN:I

    .line 590
    invoke-virtual {p0}, Lcom/flurry/android/AdUnit$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    .line 591
    return-object p0
.end method

.method public setPrice(J)Lcom/flurry/android/AdUnit$Builder;
    .locals 3

    .prologue
    const/16 v2, 0xb

    .line 636
    invoke-virtual {p0}, Lcom/flurry/android/AdUnit$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/flurry/android/AdUnit$Builder;->validate(Lcom/flurry/org/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 637
    iput-wide p1, p0, Lcom/flurry/android/AdUnit$Builder;->bP:J

    .line 638
    invoke-virtual {p0}, Lcom/flurry/android/AdUnit$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    .line 639
    return-object p0
.end method

.method public setServeTime(J)Lcom/flurry/android/AdUnit$Builder;
    .locals 3

    .prologue
    const/4 v2, 0x6

    .line 516
    invoke-virtual {p0}, Lcom/flurry/android/AdUnit$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/flurry/android/AdUnit$Builder;->validate(Lcom/flurry/org/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 517
    iput-wide p1, p0, Lcom/flurry/android/AdUnit$Builder;->bK:J

    .line 518
    invoke-virtual {p0}, Lcom/flurry/android/AdUnit$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    .line 519
    return-object p0
.end method
