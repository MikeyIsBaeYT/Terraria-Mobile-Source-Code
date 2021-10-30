.class public Lcom/flurry/android/Callback$Builder;
.super Lcom/flurry/org/apache/avro/specific/SpecificRecordBuilderBase;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/org/apache/avro/data/RecordBuilder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/flurry/org/apache/avro/specific/SpecificRecordBuilderBase",
        "<",
        "Lcom/flurry/android/Callback;",
        ">;",
        "Lcom/flurry/org/apache/avro/data/RecordBuilder",
        "<",
        "Lcom/flurry/android/Callback;",
        ">;"
    }
.end annotation


# instance fields
.field private cG:Ljava/lang/CharSequence;

.field private cH:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 87
    sget-object v0, Lcom/flurry/android/Callback;->SCHEMA$:Lcom/flurry/org/apache/avro/Schema;

    invoke-direct {p0, v0}, Lcom/flurry/org/apache/avro/specific/SpecificRecordBuilderBase;-><init>(Lcom/flurry/org/apache/avro/Schema;)V

    .line 88
    return-void
.end method


# virtual methods
.method public build()Lcom/flurry/android/Callback;
    .locals 3

    .prologue
    .line 161
    :try_start_0
    new-instance v1, Lcom/flurry/android/Callback;

    invoke-direct {v1}, Lcom/flurry/android/Callback;-><init>()V

    .line 162
    invoke-virtual {p0}, Lcom/flurry/android/Callback$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v2, 0x0

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/android/Callback$Builder;->cG:Ljava/lang/CharSequence;

    :goto_0
    iput-object v0, v1, Lcom/flurry/android/Callback;->cG:Ljava/lang/CharSequence;

    .line 163
    invoke-virtual {p0}, Lcom/flurry/android/Callback$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v2, 0x1

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/flurry/android/Callback$Builder;->cH:Ljava/util/List;

    :goto_1
    iput-object v0, v1, Lcom/flurry/android/Callback;->cH:Ljava/util/List;

    .line 164
    return-object v1

    .line 162
    :cond_0
    invoke-virtual {p0}, Lcom/flurry/android/Callback$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    const/4 v2, 0x0

    aget-object v0, v0, v2

    invoke-virtual {p0, v0}, Lcom/flurry/android/Callback$Builder;->defaultValue(Lcom/flurry/org/apache/avro/Schema$Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    goto :goto_0

    .line 163
    :cond_1
    invoke-virtual {p0}, Lcom/flurry/android/Callback$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-virtual {p0, v0}, Lcom/flurry/android/Callback$Builder;->defaultValue(Lcom/flurry/org/apache/avro/Schema$Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 165
    :catch_0
    move-exception v0

    .line 166
    new-instance v1, Lcom/flurry/org/apache/avro/AvroRuntimeException;

    invoke-direct {v1, v0}, Lcom/flurry/org/apache/avro/AvroRuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/flurry/android/Callback$Builder;->build()Lcom/flurry/android/Callback;

    move-result-object v0

    return-object v0
.end method

.method public clearActions()Lcom/flurry/android/Callback$Builder;
    .locals 3

    .prologue
    .line 153
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/android/Callback$Builder;->cH:Ljava/util/List;

    .line 154
    invoke-virtual {p0}, Lcom/flurry/android/Callback$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 155
    return-object p0
.end method

.method public clearEvent()Lcom/flurry/android/Callback$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 128
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/android/Callback$Builder;->cG:Ljava/lang/CharSequence;

    .line 129
    invoke-virtual {p0}, Lcom/flurry/android/Callback$Builder;->fieldSetFlags()[Z

    move-result-object v0

    aput-boolean v1, v0, v1

    .line 130
    return-object p0
.end method

.method public getActions()Ljava/util/List;
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
    .line 135
    iget-object v0, p0, Lcom/flurry/android/Callback$Builder;->cH:Ljava/util/List;

    return-object v0
.end method

.method public getEvent()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/flurry/android/Callback$Builder;->cG:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public hasActions()Z
    .locals 2

    .prologue
    .line 148
    invoke-virtual {p0}, Lcom/flurry/android/Callback$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    return v0
.end method

.method public hasEvent()Z
    .locals 2

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/flurry/android/Callback$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    return v0
.end method

.method public setActions(Ljava/util/List;)Lcom/flurry/android/Callback$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;)",
            "Lcom/flurry/android/Callback$Builder;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 140
    invoke-virtual {p0}, Lcom/flurry/android/Callback$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-virtual {p0, v0, p1}, Lcom/flurry/android/Callback$Builder;->validate(Lcom/flurry/org/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 141
    iput-object p1, p0, Lcom/flurry/android/Callback$Builder;->cH:Ljava/util/List;

    .line 142
    invoke-virtual {p0}, Lcom/flurry/android/Callback$Builder;->fieldSetFlags()[Z

    move-result-object v0

    aput-boolean v1, v0, v1

    .line 143
    return-object p0
.end method

.method public setEvent(Ljava/lang/CharSequence;)Lcom/flurry/android/Callback$Builder;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 115
    invoke-virtual {p0}, Lcom/flurry/android/Callback$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-virtual {p0, v0, p1}, Lcom/flurry/android/Callback$Builder;->validate(Lcom/flurry/org/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 116
    iput-object p1, p0, Lcom/flurry/android/Callback$Builder;->cG:Ljava/lang/CharSequence;

    .line 117
    invoke-virtual {p0}, Lcom/flurry/android/Callback$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    .line 118
    return-object p0
.end method
