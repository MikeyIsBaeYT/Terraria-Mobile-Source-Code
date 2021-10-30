.class public Lcom/flurry/android/AdRequest$Builder;
.super Lcom/flurry/org/apache/avro/specific/SpecificRecordBuilderBase;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/org/apache/avro/data/RecordBuilder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/flurry/org/apache/avro/specific/SpecificRecordBuilderBase",
        "<",
        "Lcom/flurry/android/AdRequest;",
        ">;",
        "Lcom/flurry/org/apache/avro/data/RecordBuilder",
        "<",
        "Lcom/flurry/android/AdRequest;",
        ">;"
    }
.end annotation


# instance fields
.field private cA:Ljava/lang/CharSequence;

.field private cB:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private ce:J

.field private ch:Ljava/lang/CharSequence;

.field private ci:Ljava/lang/CharSequence;

.field private cj:Ljava/lang/CharSequence;

.field private ck:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/AdReportedId;",
            ">;"
        }
    .end annotation
.end field

.field private cl:Lcom/flurry/android/Location;

.field private cm:Z

.field private cn:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private co:Lcom/flurry/android/AdViewContainer;

.field private cp:Ljava/lang/CharSequence;

.field private cq:Ljava/lang/CharSequence;

.field private cr:Ljava/lang/CharSequence;

.field private cs:Ljava/lang/CharSequence;

.field private ct:Lcom/flurry/android/TestAds;

.field private cu:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private cv:Z

.field private cw:Z

.field private cx:I

.field private cy:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/FrequencyCapInfo;",
            ">;"
        }
    .end annotation
.end field

.field private cz:Z


# direct methods
.method synthetic constructor <init>()V
    .locals 1

    .prologue
    .line 439
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/flurry/android/AdRequest$Builder;-><init>(B)V

    return-void
.end method

.method private constructor <init>(B)V
    .locals 1

    .prologue
    .line 467
    sget-object v0, Lcom/flurry/android/AdRequest;->SCHEMA$:Lcom/flurry/org/apache/avro/Schema;

    invoke-direct {p0, v0}, Lcom/flurry/org/apache/avro/specific/SpecificRecordBuilderBase;-><init>(Lcom/flurry/org/apache/avro/Schema;)V

    .line 468
    return-void
.end method


# virtual methods
.method public build()Lcom/flurry/android/AdRequest;
    .locals 3

    .prologue
    .line 1115
    :try_start_0
    new-instance v2, Lcom/flurry/android/AdRequest;

    invoke-direct {v2}, Lcom/flurry/android/AdRequest;-><init>()V

    .line 1116
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/android/AdRequest$Builder;->ch:Ljava/lang/CharSequence;

    :goto_0
    iput-object v0, v2, Lcom/flurry/android/AdRequest;->ch:Ljava/lang/CharSequence;

    .line 1117
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/flurry/android/AdRequest$Builder;->ci:Ljava/lang/CharSequence;

    :goto_1
    iput-object v0, v2, Lcom/flurry/android/AdRequest;->ci:Ljava/lang/CharSequence;

    .line 1118
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x2

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/flurry/android/AdRequest$Builder;->cj:Ljava/lang/CharSequence;

    :goto_2
    iput-object v0, v2, Lcom/flurry/android/AdRequest;->cj:Ljava/lang/CharSequence;

    .line 1119
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x3

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_3

    iget-wide v0, p0, Lcom/flurry/android/AdRequest$Builder;->ce:J

    :goto_3
    iput-wide v0, v2, Lcom/flurry/android/AdRequest;->ce:J

    .line 1120
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x4

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/flurry/android/AdRequest$Builder;->ck:Ljava/util/List;

    :goto_4
    iput-object v0, v2, Lcom/flurry/android/AdRequest;->ck:Ljava/util/List;

    .line 1121
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x5

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/flurry/android/AdRequest$Builder;->cl:Lcom/flurry/android/Location;

    :goto_5
    iput-object v0, v2, Lcom/flurry/android/AdRequest;->cl:Lcom/flurry/android/Location;

    .line 1122
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x6

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/flurry/android/AdRequest$Builder;->cm:Z

    :goto_6
    iput-boolean v0, v2, Lcom/flurry/android/AdRequest;->cm:Z

    .line 1123
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x7

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/flurry/android/AdRequest$Builder;->cn:Ljava/util/List;

    :goto_7
    iput-object v0, v2, Lcom/flurry/android/AdRequest;->cn:Ljava/util/List;

    .line 1124
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/16 v1, 0x8

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/flurry/android/AdRequest$Builder;->co:Lcom/flurry/android/AdViewContainer;

    :goto_8
    iput-object v0, v2, Lcom/flurry/android/AdRequest;->co:Lcom/flurry/android/AdViewContainer;

    .line 1125
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/16 v1, 0x9

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/flurry/android/AdRequest$Builder;->cp:Ljava/lang/CharSequence;

    :goto_9
    iput-object v0, v2, Lcom/flurry/android/AdRequest;->cp:Ljava/lang/CharSequence;

    .line 1126
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/16 v1, 0xa

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/flurry/android/AdRequest$Builder;->cq:Ljava/lang/CharSequence;

    :goto_a
    iput-object v0, v2, Lcom/flurry/android/AdRequest;->cq:Ljava/lang/CharSequence;

    .line 1127
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/16 v1, 0xb

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/flurry/android/AdRequest$Builder;->cr:Ljava/lang/CharSequence;

    :goto_b
    iput-object v0, v2, Lcom/flurry/android/AdRequest;->cr:Ljava/lang/CharSequence;

    .line 1128
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/16 v1, 0xc

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/flurry/android/AdRequest$Builder;->cs:Ljava/lang/CharSequence;

    :goto_c
    iput-object v0, v2, Lcom/flurry/android/AdRequest;->cs:Ljava/lang/CharSequence;

    .line 1129
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/16 v1, 0xd

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/flurry/android/AdRequest$Builder;->ct:Lcom/flurry/android/TestAds;

    :goto_d
    iput-object v0, v2, Lcom/flurry/android/AdRequest;->ct:Lcom/flurry/android/TestAds;

    .line 1130
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/16 v1, 0xe

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/flurry/android/AdRequest$Builder;->cu:Ljava/util/Map;

    :goto_e
    iput-object v0, v2, Lcom/flurry/android/AdRequest;->cu:Ljava/util/Map;

    .line 1131
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/16 v1, 0xf

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_f

    iget-boolean v0, p0, Lcom/flurry/android/AdRequest$Builder;->cv:Z

    :goto_f
    iput-boolean v0, v2, Lcom/flurry/android/AdRequest;->cv:Z

    .line 1132
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/16 v1, 0x10

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lcom/flurry/android/AdRequest$Builder;->cw:Z

    :goto_10
    iput-boolean v0, v2, Lcom/flurry/android/AdRequest;->cw:Z

    .line 1133
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/16 v1, 0x11

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_11

    iget v0, p0, Lcom/flurry/android/AdRequest$Builder;->cx:I

    :goto_11
    iput v0, v2, Lcom/flurry/android/AdRequest;->cx:I

    .line 1134
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/16 v1, 0x12

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/flurry/android/AdRequest$Builder;->cy:Ljava/util/List;

    :goto_12
    iput-object v0, v2, Lcom/flurry/android/AdRequest;->cy:Ljava/util/List;

    .line 1135
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/16 v1, 0x13

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_13

    iget-boolean v0, p0, Lcom/flurry/android/AdRequest$Builder;->cz:Z

    :goto_13
    iput-boolean v0, v2, Lcom/flurry/android/AdRequest;->cz:Z

    .line 1136
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/16 v1, 0x14

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/flurry/android/AdRequest$Builder;->cA:Ljava/lang/CharSequence;

    :goto_14
    iput-object v0, v2, Lcom/flurry/android/AdRequest;->cA:Ljava/lang/CharSequence;

    .line 1137
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/16 v1, 0x15

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/flurry/android/AdRequest$Builder;->cB:Ljava/util/List;

    :goto_15
    iput-object v0, v2, Lcom/flurry/android/AdRequest;->cB:Ljava/util/List;

    .line 1138
    return-object v2

    .line 1116
    :cond_0
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/flurry/android/AdRequest$Builder;->defaultValue(Lcom/flurry/org/apache/avro/Schema$Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 1117
    :cond_1
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/flurry/android/AdRequest$Builder;->defaultValue(Lcom/flurry/org/apache/avro/Schema$Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    goto/16 :goto_1

    .line 1118
    :cond_2
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/flurry/android/AdRequest$Builder;->defaultValue(Lcom/flurry/org/apache/avro/Schema$Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    goto/16 :goto_2

    .line 1119
    :cond_3
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    const/4 v1, 0x3

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/flurry/android/AdRequest$Builder;->defaultValue(Lcom/flurry/org/apache/avro/Schema$Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto/16 :goto_3

    .line 1120
    :cond_4
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    const/4 v1, 0x4

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/flurry/android/AdRequest$Builder;->defaultValue(Lcom/flurry/org/apache/avro/Schema$Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    goto/16 :goto_4

    .line 1121
    :cond_5
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    const/4 v1, 0x5

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/flurry/android/AdRequest$Builder;->defaultValue(Lcom/flurry/org/apache/avro/Schema$Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/Location;

    goto/16 :goto_5

    .line 1122
    :cond_6
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    const/4 v1, 0x6

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/flurry/android/AdRequest$Builder;->defaultValue(Lcom/flurry/org/apache/avro/Schema$Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto/16 :goto_6

    .line 1123
    :cond_7
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    const/4 v1, 0x7

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/flurry/android/AdRequest$Builder;->defaultValue(Lcom/flurry/org/apache/avro/Schema$Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    goto/16 :goto_7

    .line 1124
    :cond_8
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    const/16 v1, 0x8

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/flurry/android/AdRequest$Builder;->defaultValue(Lcom/flurry/org/apache/avro/Schema$Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/AdViewContainer;

    goto/16 :goto_8

    .line 1125
    :cond_9
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    const/16 v1, 0x9

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/flurry/android/AdRequest$Builder;->defaultValue(Lcom/flurry/org/apache/avro/Schema$Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    goto/16 :goto_9

    .line 1126
    :cond_a
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    const/16 v1, 0xa

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/flurry/android/AdRequest$Builder;->defaultValue(Lcom/flurry/org/apache/avro/Schema$Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    goto/16 :goto_a

    .line 1127
    :cond_b
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    const/16 v1, 0xb

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/flurry/android/AdRequest$Builder;->defaultValue(Lcom/flurry/org/apache/avro/Schema$Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    goto/16 :goto_b

    .line 1128
    :cond_c
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    const/16 v1, 0xc

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/flurry/android/AdRequest$Builder;->defaultValue(Lcom/flurry/org/apache/avro/Schema$Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    goto/16 :goto_c

    .line 1129
    :cond_d
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    const/16 v1, 0xd

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/flurry/android/AdRequest$Builder;->defaultValue(Lcom/flurry/org/apache/avro/Schema$Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/TestAds;

    goto/16 :goto_d

    .line 1130
    :cond_e
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    const/16 v1, 0xe

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/flurry/android/AdRequest$Builder;->defaultValue(Lcom/flurry/org/apache/avro/Schema$Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    goto/16 :goto_e

    .line 1131
    :cond_f
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    const/16 v1, 0xf

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/flurry/android/AdRequest$Builder;->defaultValue(Lcom/flurry/org/apache/avro/Schema$Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto/16 :goto_f

    .line 1132
    :cond_10
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    const/16 v1, 0x10

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/flurry/android/AdRequest$Builder;->defaultValue(Lcom/flurry/org/apache/avro/Schema$Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto/16 :goto_10

    .line 1133
    :cond_11
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    const/16 v1, 0x11

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/flurry/android/AdRequest$Builder;->defaultValue(Lcom/flurry/org/apache/avro/Schema$Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto/16 :goto_11

    .line 1134
    :cond_12
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    const/16 v1, 0x12

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/flurry/android/AdRequest$Builder;->defaultValue(Lcom/flurry/org/apache/avro/Schema$Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    goto/16 :goto_12

    .line 1135
    :cond_13
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    const/16 v1, 0x13

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/flurry/android/AdRequest$Builder;->defaultValue(Lcom/flurry/org/apache/avro/Schema$Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto/16 :goto_13

    .line 1136
    :cond_14
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    const/16 v1, 0x14

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/flurry/android/AdRequest$Builder;->defaultValue(Lcom/flurry/org/apache/avro/Schema$Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    goto/16 :goto_14

    .line 1137
    :cond_15
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    const/16 v1, 0x15

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/flurry/android/AdRequest$Builder;->defaultValue(Lcom/flurry/org/apache/avro/Schema$Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_15

    .line 1139
    :catch_0
    move-exception v0

    .line 1140
    new-instance v1, Lcom/flurry/org/apache/avro/AvroRuntimeException;

    invoke-direct {v1, v0}, Lcom/flurry/org/apache/avro/AvroRuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 439
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->build()Lcom/flurry/android/AdRequest;

    move-result-object v0

    return-object v0
.end method

.method public clearAdReportedIds()Lcom/flurry/android/AdRequest$Builder;
    .locals 3

    .prologue
    .line 687
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/android/AdRequest$Builder;->ck:Ljava/util/List;

    .line 688
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 689
    return-object p0
.end method

.method public clearAdSpaceName()Lcom/flurry/android/AdRequest$Builder;
    .locals 3

    .prologue
    .line 638
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/android/AdRequest$Builder;->cj:Ljava/lang/CharSequence;

    .line 639
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 640
    return-object p0
.end method

.method public clearAdTrackingEnabled()Lcom/flurry/android/AdRequest$Builder;
    .locals 3

    .prologue
    .line 1058
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/16 v1, 0x13

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 1059
    return-object p0
.end method

.method public clearAdViewContainer()Lcom/flurry/android/AdRequest$Builder;
    .locals 3

    .prologue
    .line 786
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/android/AdRequest$Builder;->co:Lcom/flurry/android/AdViewContainer;

    .line 787
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 788
    return-object p0
.end method

.method public clearAgentVersion()Lcom/flurry/android/AdRequest$Builder;
    .locals 3

    .prologue
    .line 613
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/android/AdRequest$Builder;->ci:Ljava/lang/CharSequence;

    .line 614
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 615
    return-object p0
.end method

.method public clearApiKey()Lcom/flurry/android/AdRequest$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 588
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/android/AdRequest$Builder;->ch:Ljava/lang/CharSequence;

    .line 589
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    aput-boolean v1, v0, v1

    .line 590
    return-object p0
.end method

.method public clearBcat()Lcom/flurry/android/AdRequest$Builder;
    .locals 3

    .prologue
    .line 1107
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/android/AdRequest$Builder;->cB:Ljava/util/List;

    .line 1108
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/16 v1, 0x15

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 1109
    return-object p0
.end method

.method public clearBindings()Lcom/flurry/android/AdRequest$Builder;
    .locals 3

    .prologue
    .line 761
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/android/AdRequest$Builder;->cn:Ljava/util/List;

    .line 762
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x7

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 763
    return-object p0
.end method

.method public clearCanDoSKAppStore()Lcom/flurry/android/AdRequest$Builder;
    .locals 3

    .prologue
    .line 985
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/16 v1, 0x10

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 986
    return-object p0
.end method

.method public clearDevicePlatform()Lcom/flurry/android/AdRequest$Builder;
    .locals 3

    .prologue
    .line 886
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/android/AdRequest$Builder;->cs:Ljava/lang/CharSequence;

    .line 887
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/16 v1, 0xc

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 888
    return-object p0
.end method

.method public clearFrequencyCapInfos()Lcom/flurry/android/AdRequest$Builder;
    .locals 3

    .prologue
    .line 1033
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/android/AdRequest$Builder;->cy:Ljava/util/List;

    .line 1034
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/16 v1, 0x12

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 1035
    return-object p0
.end method

.method public clearKeywords()Lcom/flurry/android/AdRequest$Builder;
    .locals 3

    .prologue
    .line 936
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/android/AdRequest$Builder;->cu:Ljava/util/Map;

    .line 937
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/16 v1, 0xe

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 938
    return-object p0
.end method

.method public clearLocale()Lcom/flurry/android/AdRequest$Builder;
    .locals 3

    .prologue
    .line 811
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/android/AdRequest$Builder;->cp:Ljava/lang/CharSequence;

    .line 812
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/16 v1, 0x9

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 813
    return-object p0
.end method

.method public clearLocation()Lcom/flurry/android/AdRequest$Builder;
    .locals 3

    .prologue
    .line 712
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/android/AdRequest$Builder;->cl:Lcom/flurry/android/Location;

    .line 713
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x5

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 714
    return-object p0
.end method

.method public clearNetworkStatus()Lcom/flurry/android/AdRequest$Builder;
    .locals 3

    .prologue
    .line 1009
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/16 v1, 0x11

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 1010
    return-object p0
.end method

.method public clearOsVersion()Lcom/flurry/android/AdRequest$Builder;
    .locals 3

    .prologue
    .line 861
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/android/AdRequest$Builder;->cr:Ljava/lang/CharSequence;

    .line 862
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/16 v1, 0xb

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 863
    return-object p0
.end method

.method public clearPreferredLanguage()Lcom/flurry/android/AdRequest$Builder;
    .locals 3

    .prologue
    .line 1082
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/android/AdRequest$Builder;->cA:Ljava/lang/CharSequence;

    .line 1083
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/16 v1, 0x14

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 1084
    return-object p0
.end method

.method public clearRefresh()Lcom/flurry/android/AdRequest$Builder;
    .locals 3

    .prologue
    .line 961
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/16 v1, 0xf

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 962
    return-object p0
.end method

.method public clearSessionId()Lcom/flurry/android/AdRequest$Builder;
    .locals 3

    .prologue
    .line 663
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 664
    return-object p0
.end method

.method public clearTestAds()Lcom/flurry/android/AdRequest$Builder;
    .locals 3

    .prologue
    .line 911
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/android/AdRequest$Builder;->ct:Lcom/flurry/android/TestAds;

    .line 912
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/16 v1, 0xd

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 913
    return-object p0
.end method

.method public clearTestDevice()Lcom/flurry/android/AdRequest$Builder;
    .locals 3

    .prologue
    .line 737
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x6

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 738
    return-object p0
.end method

.method public clearTimezone()Lcom/flurry/android/AdRequest$Builder;
    .locals 3

    .prologue
    .line 836
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/android/AdRequest$Builder;->cq:Ljava/lang/CharSequence;

    .line 837
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/16 v1, 0xa

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 838
    return-object p0
.end method

.method public getAdReportedIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/AdReportedId;",
            ">;"
        }
    .end annotation

    .prologue
    .line 669
    iget-object v0, p0, Lcom/flurry/android/AdRequest$Builder;->ck:Ljava/util/List;

    return-object v0
.end method

.method public getAdSpaceName()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 620
    iget-object v0, p0, Lcom/flurry/android/AdRequest$Builder;->cj:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getAdTrackingEnabled()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 1040
    iget-boolean v0, p0, Lcom/flurry/android/AdRequest$Builder;->cz:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getAdViewContainer()Lcom/flurry/android/AdViewContainer;
    .locals 1

    .prologue
    .line 768
    iget-object v0, p0, Lcom/flurry/android/AdRequest$Builder;->co:Lcom/flurry/android/AdViewContainer;

    return-object v0
.end method

.method public getAgentVersion()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 595
    iget-object v0, p0, Lcom/flurry/android/AdRequest$Builder;->ci:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getApiKey()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 570
    iget-object v0, p0, Lcom/flurry/android/AdRequest$Builder;->ch:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getBcat()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1089
    iget-object v0, p0, Lcom/flurry/android/AdRequest$Builder;->cB:Ljava/util/List;

    return-object v0
.end method

.method public getBindings()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 743
    iget-object v0, p0, Lcom/flurry/android/AdRequest$Builder;->cn:Ljava/util/List;

    return-object v0
.end method

.method public getCanDoSKAppStore()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 967
    iget-boolean v0, p0, Lcom/flurry/android/AdRequest$Builder;->cw:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getDevicePlatform()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 868
    iget-object v0, p0, Lcom/flurry/android/AdRequest$Builder;->cs:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getFrequencyCapInfos()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/FrequencyCapInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1015
    iget-object v0, p0, Lcom/flurry/android/AdRequest$Builder;->cy:Ljava/util/List;

    return-object v0
.end method

.method public getKeywords()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .prologue
    .line 918
    iget-object v0, p0, Lcom/flurry/android/AdRequest$Builder;->cu:Ljava/util/Map;

    return-object v0
.end method

.method public getLocale()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 793
    iget-object v0, p0, Lcom/flurry/android/AdRequest$Builder;->cp:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getLocation()Lcom/flurry/android/Location;
    .locals 1

    .prologue
    .line 694
    iget-object v0, p0, Lcom/flurry/android/AdRequest$Builder;->cl:Lcom/flurry/android/Location;

    return-object v0
.end method

.method public getNetworkStatus()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 991
    iget v0, p0, Lcom/flurry/android/AdRequest$Builder;->cx:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getOsVersion()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 843
    iget-object v0, p0, Lcom/flurry/android/AdRequest$Builder;->cr:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getPreferredLanguage()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1064
    iget-object v0, p0, Lcom/flurry/android/AdRequest$Builder;->cA:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getRefresh()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 943
    iget-boolean v0, p0, Lcom/flurry/android/AdRequest$Builder;->cv:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getSessionId()Ljava/lang/Long;
    .locals 2

    .prologue
    .line 645
    iget-wide v0, p0, Lcom/flurry/android/AdRequest$Builder;->ce:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getTestAds()Lcom/flurry/android/TestAds;
    .locals 1

    .prologue
    .line 893
    iget-object v0, p0, Lcom/flurry/android/AdRequest$Builder;->ct:Lcom/flurry/android/TestAds;

    return-object v0
.end method

.method public getTestDevice()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 719
    iget-boolean v0, p0, Lcom/flurry/android/AdRequest$Builder;->cm:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getTimezone()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 818
    iget-object v0, p0, Lcom/flurry/android/AdRequest$Builder;->cq:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public hasAdReportedIds()Z
    .locals 2

    .prologue
    .line 682
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x4

    aget-boolean v0, v0, v1

    return v0
.end method

.method public hasAdSpaceName()Z
    .locals 2

    .prologue
    .line 633
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x2

    aget-boolean v0, v0, v1

    return v0
.end method

.method public hasAdTrackingEnabled()Z
    .locals 2

    .prologue
    .line 1053
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/16 v1, 0x13

    aget-boolean v0, v0, v1

    return v0
.end method

.method public hasAdViewContainer()Z
    .locals 2

    .prologue
    .line 781
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/16 v1, 0x8

    aget-boolean v0, v0, v1

    return v0
.end method

.method public hasAgentVersion()Z
    .locals 2

    .prologue
    .line 608
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    return v0
.end method

.method public hasApiKey()Z
    .locals 2

    .prologue
    .line 583
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    return v0
.end method

.method public hasBcat()Z
    .locals 2

    .prologue
    .line 1102
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/16 v1, 0x15

    aget-boolean v0, v0, v1

    return v0
.end method

.method public hasBindings()Z
    .locals 2

    .prologue
    .line 756
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x7

    aget-boolean v0, v0, v1

    return v0
.end method

.method public hasCanDoSKAppStore()Z
    .locals 2

    .prologue
    .line 980
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/16 v1, 0x10

    aget-boolean v0, v0, v1

    return v0
.end method

.method public hasDevicePlatform()Z
    .locals 2

    .prologue
    .line 881
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/16 v1, 0xc

    aget-boolean v0, v0, v1

    return v0
.end method

.method public hasFrequencyCapInfos()Z
    .locals 2

    .prologue
    .line 1028
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/16 v1, 0x12

    aget-boolean v0, v0, v1

    return v0
.end method

.method public hasKeywords()Z
    .locals 2

    .prologue
    .line 931
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/16 v1, 0xe

    aget-boolean v0, v0, v1

    return v0
.end method

.method public hasLocale()Z
    .locals 2

    .prologue
    .line 806
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/16 v1, 0x9

    aget-boolean v0, v0, v1

    return v0
.end method

.method public hasLocation()Z
    .locals 2

    .prologue
    .line 707
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x5

    aget-boolean v0, v0, v1

    return v0
.end method

.method public hasNetworkStatus()Z
    .locals 2

    .prologue
    .line 1004
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/16 v1, 0x11

    aget-boolean v0, v0, v1

    return v0
.end method

.method public hasOsVersion()Z
    .locals 2

    .prologue
    .line 856
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/16 v1, 0xb

    aget-boolean v0, v0, v1

    return v0
.end method

.method public hasPreferredLanguage()Z
    .locals 2

    .prologue
    .line 1077
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/16 v1, 0x14

    aget-boolean v0, v0, v1

    return v0
.end method

.method public hasRefresh()Z
    .locals 2

    .prologue
    .line 956
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/16 v1, 0xf

    aget-boolean v0, v0, v1

    return v0
.end method

.method public hasSessionId()Z
    .locals 2

    .prologue
    .line 658
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x3

    aget-boolean v0, v0, v1

    return v0
.end method

.method public hasTestAds()Z
    .locals 2

    .prologue
    .line 906
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/16 v1, 0xd

    aget-boolean v0, v0, v1

    return v0
.end method

.method public hasTestDevice()Z
    .locals 2

    .prologue
    .line 732
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x6

    aget-boolean v0, v0, v1

    return v0
.end method

.method public hasTimezone()Z
    .locals 2

    .prologue
    .line 831
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/16 v1, 0xa

    aget-boolean v0, v0, v1

    return v0
.end method

.method public setAdReportedIds(Ljava/util/List;)Lcom/flurry/android/AdRequest$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/AdReportedId;",
            ">;)",
            "Lcom/flurry/android/AdRequest$Builder;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x4

    .line 674
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-virtual {p0, v0, p1}, Lcom/flurry/android/AdRequest$Builder;->validate(Lcom/flurry/org/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 675
    iput-object p1, p0, Lcom/flurry/android/AdRequest$Builder;->ck:Ljava/util/List;

    .line 676
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    .line 677
    return-object p0
.end method

.method public setAdSpaceName(Ljava/lang/CharSequence;)Lcom/flurry/android/AdRequest$Builder;
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 625
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-virtual {p0, v0, p1}, Lcom/flurry/android/AdRequest$Builder;->validate(Lcom/flurry/org/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 626
    iput-object p1, p0, Lcom/flurry/android/AdRequest$Builder;->cj:Ljava/lang/CharSequence;

    .line 627
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    .line 628
    return-object p0
.end method

.method public setAdTrackingEnabled(Z)Lcom/flurry/android/AdRequest$Builder;
    .locals 3

    .prologue
    const/16 v2, 0x13

    .line 1045
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/flurry/android/AdRequest$Builder;->validate(Lcom/flurry/org/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 1046
    iput-boolean p1, p0, Lcom/flurry/android/AdRequest$Builder;->cz:Z

    .line 1047
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    .line 1048
    return-object p0
.end method

.method public setAdViewContainer(Lcom/flurry/android/AdViewContainer;)Lcom/flurry/android/AdRequest$Builder;
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 773
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-virtual {p0, v0, p1}, Lcom/flurry/android/AdRequest$Builder;->validate(Lcom/flurry/org/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 774
    iput-object p1, p0, Lcom/flurry/android/AdRequest$Builder;->co:Lcom/flurry/android/AdViewContainer;

    .line 775
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    .line 776
    return-object p0
.end method

.method public setAgentVersion(Ljava/lang/CharSequence;)Lcom/flurry/android/AdRequest$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 600
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-virtual {p0, v0, p1}, Lcom/flurry/android/AdRequest$Builder;->validate(Lcom/flurry/org/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 601
    iput-object p1, p0, Lcom/flurry/android/AdRequest$Builder;->ci:Ljava/lang/CharSequence;

    .line 602
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    aput-boolean v1, v0, v1

    .line 603
    return-object p0
.end method

.method public setApiKey(Ljava/lang/CharSequence;)Lcom/flurry/android/AdRequest$Builder;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 575
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-virtual {p0, v0, p1}, Lcom/flurry/android/AdRequest$Builder;->validate(Lcom/flurry/org/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 576
    iput-object p1, p0, Lcom/flurry/android/AdRequest$Builder;->ch:Ljava/lang/CharSequence;

    .line 577
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    .line 578
    return-object p0
.end method

.method public setBcat(Ljava/util/List;)Lcom/flurry/android/AdRequest$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;)",
            "Lcom/flurry/android/AdRequest$Builder;"
        }
    .end annotation

    .prologue
    const/16 v2, 0x15

    .line 1094
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-virtual {p0, v0, p1}, Lcom/flurry/android/AdRequest$Builder;->validate(Lcom/flurry/org/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 1095
    iput-object p1, p0, Lcom/flurry/android/AdRequest$Builder;->cB:Ljava/util/List;

    .line 1096
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    .line 1097
    return-object p0
.end method

.method public setBindings(Ljava/util/List;)Lcom/flurry/android/AdRequest$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/flurry/android/AdRequest$Builder;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x7

    .line 748
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-virtual {p0, v0, p1}, Lcom/flurry/android/AdRequest$Builder;->validate(Lcom/flurry/org/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 749
    iput-object p1, p0, Lcom/flurry/android/AdRequest$Builder;->cn:Ljava/util/List;

    .line 750
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    .line 751
    return-object p0
.end method

.method public setCanDoSKAppStore(Z)Lcom/flurry/android/AdRequest$Builder;
    .locals 3

    .prologue
    const/16 v2, 0x10

    .line 972
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/flurry/android/AdRequest$Builder;->validate(Lcom/flurry/org/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 973
    iput-boolean p1, p0, Lcom/flurry/android/AdRequest$Builder;->cw:Z

    .line 974
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    .line 975
    return-object p0
.end method

.method public setDevicePlatform(Ljava/lang/CharSequence;)Lcom/flurry/android/AdRequest$Builder;
    .locals 3

    .prologue
    const/16 v2, 0xc

    .line 873
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-virtual {p0, v0, p1}, Lcom/flurry/android/AdRequest$Builder;->validate(Lcom/flurry/org/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 874
    iput-object p1, p0, Lcom/flurry/android/AdRequest$Builder;->cs:Ljava/lang/CharSequence;

    .line 875
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    .line 876
    return-object p0
.end method

.method public setFrequencyCapInfos(Ljava/util/List;)Lcom/flurry/android/AdRequest$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/FrequencyCapInfo;",
            ">;)",
            "Lcom/flurry/android/AdRequest$Builder;"
        }
    .end annotation

    .prologue
    const/16 v2, 0x12

    .line 1020
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-virtual {p0, v0, p1}, Lcom/flurry/android/AdRequest$Builder;->validate(Lcom/flurry/org/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 1021
    iput-object p1, p0, Lcom/flurry/android/AdRequest$Builder;->cy:Ljava/util/List;

    .line 1022
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    .line 1023
    return-object p0
.end method

.method public setKeywords(Ljava/util/Map;)Lcom/flurry/android/AdRequest$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            ">;)",
            "Lcom/flurry/android/AdRequest$Builder;"
        }
    .end annotation

    .prologue
    const/16 v2, 0xe

    .line 923
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-virtual {p0, v0, p1}, Lcom/flurry/android/AdRequest$Builder;->validate(Lcom/flurry/org/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 924
    iput-object p1, p0, Lcom/flurry/android/AdRequest$Builder;->cu:Ljava/util/Map;

    .line 925
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    .line 926
    return-object p0
.end method

.method public setLocale(Ljava/lang/CharSequence;)Lcom/flurry/android/AdRequest$Builder;
    .locals 3

    .prologue
    const/16 v2, 0x9

    .line 798
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-virtual {p0, v0, p1}, Lcom/flurry/android/AdRequest$Builder;->validate(Lcom/flurry/org/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 799
    iput-object p1, p0, Lcom/flurry/android/AdRequest$Builder;->cp:Ljava/lang/CharSequence;

    .line 800
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    .line 801
    return-object p0
.end method

.method public setLocation(Lcom/flurry/android/Location;)Lcom/flurry/android/AdRequest$Builder;
    .locals 3

    .prologue
    const/4 v2, 0x5

    .line 699
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-virtual {p0, v0, p1}, Lcom/flurry/android/AdRequest$Builder;->validate(Lcom/flurry/org/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 700
    iput-object p1, p0, Lcom/flurry/android/AdRequest$Builder;->cl:Lcom/flurry/android/Location;

    .line 701
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    .line 702
    return-object p0
.end method

.method public setNetworkStatus(I)Lcom/flurry/android/AdRequest$Builder;
    .locals 3

    .prologue
    const/16 v2, 0x11

    .line 996
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/flurry/android/AdRequest$Builder;->validate(Lcom/flurry/org/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 997
    iput p1, p0, Lcom/flurry/android/AdRequest$Builder;->cx:I

    .line 998
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    .line 999
    return-object p0
.end method

.method public setOsVersion(Ljava/lang/CharSequence;)Lcom/flurry/android/AdRequest$Builder;
    .locals 3

    .prologue
    const/16 v2, 0xb

    .line 848
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-virtual {p0, v0, p1}, Lcom/flurry/android/AdRequest$Builder;->validate(Lcom/flurry/org/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 849
    iput-object p1, p0, Lcom/flurry/android/AdRequest$Builder;->cr:Ljava/lang/CharSequence;

    .line 850
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    .line 851
    return-object p0
.end method

.method public setPreferredLanguage(Ljava/lang/CharSequence;)Lcom/flurry/android/AdRequest$Builder;
    .locals 3

    .prologue
    const/16 v2, 0x14

    .line 1069
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-virtual {p0, v0, p1}, Lcom/flurry/android/AdRequest$Builder;->validate(Lcom/flurry/org/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 1070
    iput-object p1, p0, Lcom/flurry/android/AdRequest$Builder;->cA:Ljava/lang/CharSequence;

    .line 1071
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    .line 1072
    return-object p0
.end method

.method public setRefresh(Z)Lcom/flurry/android/AdRequest$Builder;
    .locals 3

    .prologue
    const/16 v2, 0xf

    .line 948
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/flurry/android/AdRequest$Builder;->validate(Lcom/flurry/org/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 949
    iput-boolean p1, p0, Lcom/flurry/android/AdRequest$Builder;->cv:Z

    .line 950
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    .line 951
    return-object p0
.end method

.method public setSessionId(J)Lcom/flurry/android/AdRequest$Builder;
    .locals 3

    .prologue
    const/4 v2, 0x3

    .line 650
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/flurry/android/AdRequest$Builder;->validate(Lcom/flurry/org/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 651
    iput-wide p1, p0, Lcom/flurry/android/AdRequest$Builder;->ce:J

    .line 652
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    .line 653
    return-object p0
.end method

.method public setTestAds(Lcom/flurry/android/TestAds;)Lcom/flurry/android/AdRequest$Builder;
    .locals 3

    .prologue
    const/16 v2, 0xd

    .line 898
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-virtual {p0, v0, p1}, Lcom/flurry/android/AdRequest$Builder;->validate(Lcom/flurry/org/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 899
    iput-object p1, p0, Lcom/flurry/android/AdRequest$Builder;->ct:Lcom/flurry/android/TestAds;

    .line 900
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    .line 901
    return-object p0
.end method

.method public setTestDevice(Z)Lcom/flurry/android/AdRequest$Builder;
    .locals 3

    .prologue
    const/4 v2, 0x6

    .line 724
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/flurry/android/AdRequest$Builder;->validate(Lcom/flurry/org/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 725
    iput-boolean p1, p0, Lcom/flurry/android/AdRequest$Builder;->cm:Z

    .line 726
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    .line 727
    return-object p0
.end method

.method public setTimezone(Ljava/lang/CharSequence;)Lcom/flurry/android/AdRequest$Builder;
    .locals 3

    .prologue
    const/16 v2, 0xa

    .line 823
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-virtual {p0, v0, p1}, Lcom/flurry/android/AdRequest$Builder;->validate(Lcom/flurry/org/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 824
    iput-object p1, p0, Lcom/flurry/android/AdRequest$Builder;->cq:Ljava/lang/CharSequence;

    .line 825
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    .line 826
    return-object p0
.end method
