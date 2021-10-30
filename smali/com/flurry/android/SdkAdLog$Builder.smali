.class public Lcom/flurry/android/SdkAdLog$Builder;
.super Lcom/flurry/org/apache/avro/specific/SpecificRecordBuilderBase;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/org/apache/avro/data/RecordBuilder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/flurry/org/apache/avro/specific/SpecificRecordBuilderBase",
        "<",
        "Lcom/flurry/android/SdkAdLog;",
        ">;",
        "Lcom/flurry/org/apache/avro/data/RecordBuilder",
        "<",
        "Lcom/flurry/android/SdkAdLog;",
        ">;"
    }
.end annotation


# instance fields
.field private ce:J

.field private cf:Ljava/lang/CharSequence;

.field private cg:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/SdkAdEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 106
    sget-object v0, Lcom/flurry/android/SdkAdLog;->SCHEMA$:Lcom/flurry/org/apache/avro/Schema;

    invoke-direct {p0, v0}, Lcom/flurry/org/apache/avro/specific/SpecificRecordBuilderBase;-><init>(Lcom/flurry/org/apache/avro/Schema;)V

    .line 107
    return-void
.end method


# virtual methods
.method public build()Lcom/flurry/android/SdkAdLog;
    .locals 3

    .prologue
    .line 208
    :try_start_0
    new-instance v2, Lcom/flurry/android/SdkAdLog;

    invoke-direct {v2}, Lcom/flurry/android/SdkAdLog;-><init>()V

    .line 209
    invoke-virtual {p0}, Lcom/flurry/android/SdkAdLog$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/flurry/android/SdkAdLog$Builder;->ce:J

    :goto_0
    iput-wide v0, v2, Lcom/flurry/android/SdkAdLog;->ce:J

    .line 210
    invoke-virtual {p0}, Lcom/flurry/android/SdkAdLog$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/flurry/android/SdkAdLog$Builder;->cf:Ljava/lang/CharSequence;

    :goto_1
    iput-object v0, v2, Lcom/flurry/android/SdkAdLog;->cf:Ljava/lang/CharSequence;

    .line 211
    invoke-virtual {p0}, Lcom/flurry/android/SdkAdLog$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x2

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/flurry/android/SdkAdLog$Builder;->cg:Ljava/util/List;

    :goto_2
    iput-object v0, v2, Lcom/flurry/android/SdkAdLog;->cg:Ljava/util/List;

    .line 212
    return-object v2

    .line 209
    :cond_0
    invoke-virtual {p0}, Lcom/flurry/android/SdkAdLog$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/flurry/android/SdkAdLog$Builder;->defaultValue(Lcom/flurry/org/apache/avro/Schema$Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0

    .line 210
    :cond_1
    invoke-virtual {p0}, Lcom/flurry/android/SdkAdLog$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/flurry/android/SdkAdLog$Builder;->defaultValue(Lcom/flurry/org/apache/avro/Schema$Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    goto :goto_1

    .line 211
    :cond_2
    invoke-virtual {p0}, Lcom/flurry/android/SdkAdLog$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/flurry/android/SdkAdLog$Builder;->defaultValue(Lcom/flurry/org/apache/avro/Schema$Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 213
    :catch_0
    move-exception v0

    .line 214
    new-instance v1, Lcom/flurry/org/apache/avro/AvroRuntimeException;

    invoke-direct {v1, v0}, Lcom/flurry/org/apache/avro/AvroRuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/flurry/android/SdkAdLog$Builder;->build()Lcom/flurry/android/SdkAdLog;

    move-result-object v0

    return-object v0
.end method

.method public clearAdLogGUID()Lcom/flurry/android/SdkAdLog$Builder;
    .locals 3

    .prologue
    .line 175
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/android/SdkAdLog$Builder;->cf:Ljava/lang/CharSequence;

    .line 176
    invoke-virtual {p0}, Lcom/flurry/android/SdkAdLog$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 177
    return-object p0
.end method

.method public clearSdkAdEvents()Lcom/flurry/android/SdkAdLog$Builder;
    .locals 3

    .prologue
    .line 200
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/android/SdkAdLog$Builder;->cg:Ljava/util/List;

    .line 201
    invoke-virtual {p0}, Lcom/flurry/android/SdkAdLog$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 202
    return-object p0
.end method

.method public clearSessionId()Lcom/flurry/android/SdkAdLog$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 151
    invoke-virtual {p0}, Lcom/flurry/android/SdkAdLog$Builder;->fieldSetFlags()[Z

    move-result-object v0

    aput-boolean v1, v0, v1

    .line 152
    return-object p0
.end method

.method public getAdLogGUID()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/flurry/android/SdkAdLog$Builder;->cf:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getSdkAdEvents()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/SdkAdEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 182
    iget-object v0, p0, Lcom/flurry/android/SdkAdLog$Builder;->cg:Ljava/util/List;

    return-object v0
.end method

.method public getSessionId()Ljava/lang/Long;
    .locals 2

    .prologue
    .line 133
    iget-wide v0, p0, Lcom/flurry/android/SdkAdLog$Builder;->ce:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public hasAdLogGUID()Z
    .locals 2

    .prologue
    .line 170
    invoke-virtual {p0}, Lcom/flurry/android/SdkAdLog$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    return v0
.end method

.method public hasSdkAdEvents()Z
    .locals 2

    .prologue
    .line 195
    invoke-virtual {p0}, Lcom/flurry/android/SdkAdLog$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x2

    aget-boolean v0, v0, v1

    return v0
.end method

.method public hasSessionId()Z
    .locals 2

    .prologue
    .line 146
    invoke-virtual {p0}, Lcom/flurry/android/SdkAdLog$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    return v0
.end method

.method public setAdLogGUID(Ljava/lang/CharSequence;)Lcom/flurry/android/SdkAdLog$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 162
    invoke-virtual {p0}, Lcom/flurry/android/SdkAdLog$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-virtual {p0, v0, p1}, Lcom/flurry/android/SdkAdLog$Builder;->validate(Lcom/flurry/org/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 163
    iput-object p1, p0, Lcom/flurry/android/SdkAdLog$Builder;->cf:Ljava/lang/CharSequence;

    .line 164
    invoke-virtual {p0}, Lcom/flurry/android/SdkAdLog$Builder;->fieldSetFlags()[Z

    move-result-object v0

    aput-boolean v1, v0, v1

    .line 165
    return-object p0
.end method

.method public setSdkAdEvents(Ljava/util/List;)Lcom/flurry/android/SdkAdLog$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/SdkAdEvent;",
            ">;)",
            "Lcom/flurry/android/SdkAdLog$Builder;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    .line 187
    invoke-virtual {p0}, Lcom/flurry/android/SdkAdLog$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-virtual {p0, v0, p1}, Lcom/flurry/android/SdkAdLog$Builder;->validate(Lcom/flurry/org/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 188
    iput-object p1, p0, Lcom/flurry/android/SdkAdLog$Builder;->cg:Ljava/util/List;

    .line 189
    invoke-virtual {p0}, Lcom/flurry/android/SdkAdLog$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    .line 190
    return-object p0
.end method

.method public setSessionId(J)Lcom/flurry/android/SdkAdLog$Builder;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 138
    invoke-virtual {p0}, Lcom/flurry/android/SdkAdLog$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/flurry/android/SdkAdLog$Builder;->validate(Lcom/flurry/org/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 139
    iput-wide p1, p0, Lcom/flurry/android/SdkAdLog$Builder;->ce:J

    .line 140
    invoke-virtual {p0}, Lcom/flurry/android/SdkAdLog$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    .line 141
    return-object p0
.end method
