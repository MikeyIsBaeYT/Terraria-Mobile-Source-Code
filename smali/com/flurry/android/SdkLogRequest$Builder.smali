.class public Lcom/flurry/android/SdkLogRequest$Builder;
.super Lcom/flurry/org/apache/avro/specific/SpecificRecordBuilderBase;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/org/apache/avro/data/RecordBuilder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/flurry/org/apache/avro/specific/SpecificRecordBuilderBase",
        "<",
        "Lcom/flurry/android/SdkLogRequest;",
        ">;",
        "Lcom/flurry/org/apache/avro/data/RecordBuilder",
        "<",
        "Lcom/flurry/android/SdkLogRequest;",
        ">;"
    }
.end annotation


# instance fields
.field private cR:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/SdkAdLog;",
            ">;"
        }
    .end annotation
.end field

.field private cS:J

.field private ch:Ljava/lang/CharSequence;

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

.field private cm:Z


# direct methods
.method synthetic constructor <init>()V
    .locals 1

    .prologue
    .line 133
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/flurry/android/SdkLogRequest$Builder;-><init>(B)V

    return-void
.end method

.method private constructor <init>(B)V
    .locals 1

    .prologue
    .line 144
    sget-object v0, Lcom/flurry/android/SdkLogRequest;->SCHEMA$:Lcom/flurry/org/apache/avro/Schema;

    invoke-direct {p0, v0}, Lcom/flurry/org/apache/avro/specific/SpecificRecordBuilderBase;-><init>(Lcom/flurry/org/apache/avro/Schema;)V

    .line 145
    return-void
.end method


# virtual methods
.method public build()Lcom/flurry/android/SdkLogRequest;
    .locals 3

    .prologue
    .line 303
    :try_start_0
    new-instance v2, Lcom/flurry/android/SdkLogRequest;

    invoke-direct {v2}, Lcom/flurry/android/SdkLogRequest;-><init>()V

    .line 304
    invoke-virtual {p0}, Lcom/flurry/android/SdkLogRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/android/SdkLogRequest$Builder;->ch:Ljava/lang/CharSequence;

    :goto_0
    iput-object v0, v2, Lcom/flurry/android/SdkLogRequest;->ch:Ljava/lang/CharSequence;

    .line 305
    invoke-virtual {p0}, Lcom/flurry/android/SdkLogRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/flurry/android/SdkLogRequest$Builder;->ck:Ljava/util/List;

    :goto_1
    iput-object v0, v2, Lcom/flurry/android/SdkLogRequest;->ck:Ljava/util/List;

    .line 306
    invoke-virtual {p0}, Lcom/flurry/android/SdkLogRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x2

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/flurry/android/SdkLogRequest$Builder;->cR:Ljava/util/List;

    :goto_2
    iput-object v0, v2, Lcom/flurry/android/SdkLogRequest;->cR:Ljava/util/List;

    .line 307
    invoke-virtual {p0}, Lcom/flurry/android/SdkLogRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x3

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_3

    iget-wide v0, p0, Lcom/flurry/android/SdkLogRequest$Builder;->cS:J

    :goto_3
    iput-wide v0, v2, Lcom/flurry/android/SdkLogRequest;->cS:J

    .line 308
    invoke-virtual {p0}, Lcom/flurry/android/SdkLogRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x4

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/flurry/android/SdkLogRequest$Builder;->cm:Z

    :goto_4
    iput-boolean v0, v2, Lcom/flurry/android/SdkLogRequest;->cm:Z

    .line 309
    return-object v2

    .line 304
    :cond_0
    invoke-virtual {p0}, Lcom/flurry/android/SdkLogRequest$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/flurry/android/SdkLogRequest$Builder;->defaultValue(Lcom/flurry/org/apache/avro/Schema$Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    goto :goto_0

    .line 305
    :cond_1
    invoke-virtual {p0}, Lcom/flurry/android/SdkLogRequest$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/flurry/android/SdkLogRequest$Builder;->defaultValue(Lcom/flurry/org/apache/avro/Schema$Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    goto :goto_1

    .line 306
    :cond_2
    invoke-virtual {p0}, Lcom/flurry/android/SdkLogRequest$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/flurry/android/SdkLogRequest$Builder;->defaultValue(Lcom/flurry/org/apache/avro/Schema$Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    goto :goto_2

    .line 307
    :cond_3
    invoke-virtual {p0}, Lcom/flurry/android/SdkLogRequest$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    const/4 v1, 0x3

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/flurry/android/SdkLogRequest$Builder;->defaultValue(Lcom/flurry/org/apache/avro/Schema$Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_3

    .line 308
    :cond_4
    invoke-virtual {p0}, Lcom/flurry/android/SdkLogRequest$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    const/4 v1, 0x4

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/flurry/android/SdkLogRequest$Builder;->defaultValue(Lcom/flurry/org/apache/avro/Schema$Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

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
    invoke-virtual {p0}, Lcom/flurry/android/SdkLogRequest$Builder;->build()Lcom/flurry/android/SdkLogRequest;

    move-result-object v0

    return-object v0
.end method

.method public clearAdReportedIds()Lcom/flurry/android/SdkLogRequest$Builder;
    .locals 3

    .prologue
    .line 222
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/android/SdkLogRequest$Builder;->ck:Ljava/util/List;

    .line 223
    invoke-virtual {p0}, Lcom/flurry/android/SdkLogRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 224
    return-object p0
.end method

.method public clearAgentTimestamp()Lcom/flurry/android/SdkLogRequest$Builder;
    .locals 3

    .prologue
    .line 272
    invoke-virtual {p0}, Lcom/flurry/android/SdkLogRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 273
    return-object p0
.end method

.method public clearApiKey()Lcom/flurry/android/SdkLogRequest$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 197
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/android/SdkLogRequest$Builder;->ch:Ljava/lang/CharSequence;

    .line 198
    invoke-virtual {p0}, Lcom/flurry/android/SdkLogRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    aput-boolean v1, v0, v1

    .line 199
    return-object p0
.end method

.method public clearSdkAdLogs()Lcom/flurry/android/SdkLogRequest$Builder;
    .locals 3

    .prologue
    .line 247
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/android/SdkLogRequest$Builder;->cR:Ljava/util/List;

    .line 248
    invoke-virtual {p0}, Lcom/flurry/android/SdkLogRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 249
    return-object p0
.end method

.method public clearTestDevice()Lcom/flurry/android/SdkLogRequest$Builder;
    .locals 3

    .prologue
    .line 296
    invoke-virtual {p0}, Lcom/flurry/android/SdkLogRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 297
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
    .line 204
    iget-object v0, p0, Lcom/flurry/android/SdkLogRequest$Builder;->ck:Ljava/util/List;

    return-object v0
.end method

.method public getAgentTimestamp()Ljava/lang/Long;
    .locals 2

    .prologue
    .line 254
    iget-wide v0, p0, Lcom/flurry/android/SdkLogRequest$Builder;->cS:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getApiKey()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/flurry/android/SdkLogRequest$Builder;->ch:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getSdkAdLogs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/SdkAdLog;",
            ">;"
        }
    .end annotation

    .prologue
    .line 229
    iget-object v0, p0, Lcom/flurry/android/SdkLogRequest$Builder;->cR:Ljava/util/List;

    return-object v0
.end method

.method public getTestDevice()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 278
    iget-boolean v0, p0, Lcom/flurry/android/SdkLogRequest$Builder;->cm:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public hasAdReportedIds()Z
    .locals 2

    .prologue
    .line 217
    invoke-virtual {p0}, Lcom/flurry/android/SdkLogRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    return v0
.end method

.method public hasAgentTimestamp()Z
    .locals 2

    .prologue
    .line 267
    invoke-virtual {p0}, Lcom/flurry/android/SdkLogRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x3

    aget-boolean v0, v0, v1

    return v0
.end method

.method public hasApiKey()Z
    .locals 2

    .prologue
    .line 192
    invoke-virtual {p0}, Lcom/flurry/android/SdkLogRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    return v0
.end method

.method public hasSdkAdLogs()Z
    .locals 2

    .prologue
    .line 242
    invoke-virtual {p0}, Lcom/flurry/android/SdkLogRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x2

    aget-boolean v0, v0, v1

    return v0
.end method

.method public hasTestDevice()Z
    .locals 2

    .prologue
    .line 291
    invoke-virtual {p0}, Lcom/flurry/android/SdkLogRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x4

    aget-boolean v0, v0, v1

    return v0
.end method

.method public setAdReportedIds(Ljava/util/List;)Lcom/flurry/android/SdkLogRequest$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/AdReportedId;",
            ">;)",
            "Lcom/flurry/android/SdkLogRequest$Builder;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 209
    invoke-virtual {p0}, Lcom/flurry/android/SdkLogRequest$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-virtual {p0, v0, p1}, Lcom/flurry/android/SdkLogRequest$Builder;->validate(Lcom/flurry/org/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 210
    iput-object p1, p0, Lcom/flurry/android/SdkLogRequest$Builder;->ck:Ljava/util/List;

    .line 211
    invoke-virtual {p0}, Lcom/flurry/android/SdkLogRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    aput-boolean v1, v0, v1

    .line 212
    return-object p0
.end method

.method public setAgentTimestamp(J)Lcom/flurry/android/SdkLogRequest$Builder;
    .locals 3

    .prologue
    const/4 v2, 0x3

    .line 259
    invoke-virtual {p0}, Lcom/flurry/android/SdkLogRequest$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/flurry/android/SdkLogRequest$Builder;->validate(Lcom/flurry/org/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 260
    iput-wide p1, p0, Lcom/flurry/android/SdkLogRequest$Builder;->cS:J

    .line 261
    invoke-virtual {p0}, Lcom/flurry/android/SdkLogRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    .line 262
    return-object p0
.end method

.method public setApiKey(Ljava/lang/CharSequence;)Lcom/flurry/android/SdkLogRequest$Builder;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 184
    invoke-virtual {p0}, Lcom/flurry/android/SdkLogRequest$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-virtual {p0, v0, p1}, Lcom/flurry/android/SdkLogRequest$Builder;->validate(Lcom/flurry/org/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 185
    iput-object p1, p0, Lcom/flurry/android/SdkLogRequest$Builder;->ch:Ljava/lang/CharSequence;

    .line 186
    invoke-virtual {p0}, Lcom/flurry/android/SdkLogRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    .line 187
    return-object p0
.end method

.method public setSdkAdLogs(Ljava/util/List;)Lcom/flurry/android/SdkLogRequest$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/SdkAdLog;",
            ">;)",
            "Lcom/flurry/android/SdkLogRequest$Builder;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    .line 234
    invoke-virtual {p0}, Lcom/flurry/android/SdkLogRequest$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-virtual {p0, v0, p1}, Lcom/flurry/android/SdkLogRequest$Builder;->validate(Lcom/flurry/org/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 235
    iput-object p1, p0, Lcom/flurry/android/SdkLogRequest$Builder;->cR:Ljava/util/List;

    .line 236
    invoke-virtual {p0}, Lcom/flurry/android/SdkLogRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    .line 237
    return-object p0
.end method

.method public setTestDevice(Z)Lcom/flurry/android/SdkLogRequest$Builder;
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 283
    invoke-virtual {p0}, Lcom/flurry/android/SdkLogRequest$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/flurry/android/SdkLogRequest$Builder;->validate(Lcom/flurry/org/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 284
    iput-boolean p1, p0, Lcom/flurry/android/SdkLogRequest$Builder;->cm:Z

    .line 285
    invoke-virtual {p0}, Lcom/flurry/android/SdkLogRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    .line 286
    return-object p0
.end method
