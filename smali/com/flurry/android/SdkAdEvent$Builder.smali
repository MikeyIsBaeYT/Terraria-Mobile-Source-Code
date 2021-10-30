.class public Lcom/flurry/android/SdkAdEvent$Builder;
.super Lcom/flurry/org/apache/avro/specific/SpecificRecordBuilderBase;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/org/apache/avro/data/RecordBuilder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/flurry/org/apache/avro/specific/SpecificRecordBuilderBase",
        "<",
        "Lcom/flurry/android/SdkAdEvent;",
        ">;",
        "Lcom/flurry/org/apache/avro/data/RecordBuilder",
        "<",
        "Lcom/flurry/android/SdkAdEvent;",
        ">;"
    }
.end annotation


# instance fields
.field private ab:Ljava/lang/CharSequence;

.field private ac:Ljava/util/Map;
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

.field private ad:J


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 106
    sget-object v0, Lcom/flurry/android/SdkAdEvent;->SCHEMA$:Lcom/flurry/org/apache/avro/Schema;

    invoke-direct {p0, v0}, Lcom/flurry/org/apache/avro/specific/SpecificRecordBuilderBase;-><init>(Lcom/flurry/org/apache/avro/Schema;)V

    .line 107
    return-void
.end method


# virtual methods
.method public build()Lcom/flurry/android/SdkAdEvent;
    .locals 3

    .prologue
    .line 208
    :try_start_0
    new-instance v2, Lcom/flurry/android/SdkAdEvent;

    invoke-direct {v2}, Lcom/flurry/android/SdkAdEvent;-><init>()V

    .line 209
    invoke-virtual {p0}, Lcom/flurry/android/SdkAdEvent$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/android/SdkAdEvent$Builder;->ab:Ljava/lang/CharSequence;

    :goto_0
    iput-object v0, v2, Lcom/flurry/android/SdkAdEvent;->ab:Ljava/lang/CharSequence;

    .line 210
    invoke-virtual {p0}, Lcom/flurry/android/SdkAdEvent$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/flurry/android/SdkAdEvent$Builder;->ac:Ljava/util/Map;

    :goto_1
    iput-object v0, v2, Lcom/flurry/android/SdkAdEvent;->ac:Ljava/util/Map;

    .line 211
    invoke-virtual {p0}, Lcom/flurry/android/SdkAdEvent$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x2

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_2

    iget-wide v0, p0, Lcom/flurry/android/SdkAdEvent$Builder;->ad:J

    :goto_2
    iput-wide v0, v2, Lcom/flurry/android/SdkAdEvent;->ad:J

    .line 212
    return-object v2

    .line 209
    :cond_0
    invoke-virtual {p0}, Lcom/flurry/android/SdkAdEvent$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/flurry/android/SdkAdEvent$Builder;->defaultValue(Lcom/flurry/org/apache/avro/Schema$Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    goto :goto_0

    .line 210
    :cond_1
    invoke-virtual {p0}, Lcom/flurry/android/SdkAdEvent$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/flurry/android/SdkAdEvent$Builder;->defaultValue(Lcom/flurry/org/apache/avro/Schema$Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    goto :goto_1

    .line 211
    :cond_2
    invoke-virtual {p0}, Lcom/flurry/android/SdkAdEvent$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/flurry/android/SdkAdEvent$Builder;->defaultValue(Lcom/flurry/org/apache/avro/Schema$Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

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
    invoke-virtual {p0}, Lcom/flurry/android/SdkAdEvent$Builder;->build()Lcom/flurry/android/SdkAdEvent;

    move-result-object v0

    return-object v0
.end method

.method public clearParams()Lcom/flurry/android/SdkAdEvent$Builder;
    .locals 3

    .prologue
    .line 176
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/android/SdkAdEvent$Builder;->ac:Ljava/util/Map;

    .line 177
    invoke-virtual {p0}, Lcom/flurry/android/SdkAdEvent$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 178
    return-object p0
.end method

.method public clearTimeOffset()Lcom/flurry/android/SdkAdEvent$Builder;
    .locals 3

    .prologue
    .line 201
    invoke-virtual {p0}, Lcom/flurry/android/SdkAdEvent$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 202
    return-object p0
.end method

.method public clearType()Lcom/flurry/android/SdkAdEvent$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 151
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/android/SdkAdEvent$Builder;->ab:Ljava/lang/CharSequence;

    .line 152
    invoke-virtual {p0}, Lcom/flurry/android/SdkAdEvent$Builder;->fieldSetFlags()[Z

    move-result-object v0

    aput-boolean v1, v0, v1

    .line 153
    return-object p0
.end method

.method public getParams()Ljava/util/Map;
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
    .line 158
    iget-object v0, p0, Lcom/flurry/android/SdkAdEvent$Builder;->ac:Ljava/util/Map;

    return-object v0
.end method

.method public getTimeOffset()Ljava/lang/Long;
    .locals 2

    .prologue
    .line 183
    iget-wide v0, p0, Lcom/flurry/android/SdkAdEvent$Builder;->ad:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getType()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/flurry/android/SdkAdEvent$Builder;->ab:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public hasParams()Z
    .locals 2

    .prologue
    .line 171
    invoke-virtual {p0}, Lcom/flurry/android/SdkAdEvent$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    return v0
.end method

.method public hasTimeOffset()Z
    .locals 2

    .prologue
    .line 196
    invoke-virtual {p0}, Lcom/flurry/android/SdkAdEvent$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x2

    aget-boolean v0, v0, v1

    return v0
.end method

.method public hasType()Z
    .locals 2

    .prologue
    .line 146
    invoke-virtual {p0}, Lcom/flurry/android/SdkAdEvent$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    return v0
.end method

.method public setParams(Ljava/util/Map;)Lcom/flurry/android/SdkAdEvent$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            ">;)",
            "Lcom/flurry/android/SdkAdEvent$Builder;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 163
    invoke-virtual {p0}, Lcom/flurry/android/SdkAdEvent$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-virtual {p0, v0, p1}, Lcom/flurry/android/SdkAdEvent$Builder;->validate(Lcom/flurry/org/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 164
    iput-object p1, p0, Lcom/flurry/android/SdkAdEvent$Builder;->ac:Ljava/util/Map;

    .line 165
    invoke-virtual {p0}, Lcom/flurry/android/SdkAdEvent$Builder;->fieldSetFlags()[Z

    move-result-object v0

    aput-boolean v1, v0, v1

    .line 166
    return-object p0
.end method

.method public setTimeOffset(J)Lcom/flurry/android/SdkAdEvent$Builder;
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 188
    invoke-virtual {p0}, Lcom/flurry/android/SdkAdEvent$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/flurry/android/SdkAdEvent$Builder;->validate(Lcom/flurry/org/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 189
    iput-wide p1, p0, Lcom/flurry/android/SdkAdEvent$Builder;->ad:J

    .line 190
    invoke-virtual {p0}, Lcom/flurry/android/SdkAdEvent$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    .line 191
    return-object p0
.end method

.method public setType(Ljava/lang/CharSequence;)Lcom/flurry/android/SdkAdEvent$Builder;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 138
    invoke-virtual {p0}, Lcom/flurry/android/SdkAdEvent$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-virtual {p0, v0, p1}, Lcom/flurry/android/SdkAdEvent$Builder;->validate(Lcom/flurry/org/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 139
    iput-object p1, p0, Lcom/flurry/android/SdkAdEvent$Builder;->ab:Ljava/lang/CharSequence;

    .line 140
    invoke-virtual {p0}, Lcom/flurry/android/SdkAdEvent$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    .line 141
    return-object p0
.end method
