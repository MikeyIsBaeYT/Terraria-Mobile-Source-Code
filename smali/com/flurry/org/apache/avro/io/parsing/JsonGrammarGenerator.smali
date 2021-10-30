.class public Lcom/flurry/org/apache/avro/io/parsing/JsonGrammarGenerator;
.super Lcom/flurry/org/apache/avro/io/parsing/ValidatingGrammarGenerator;
.source "JsonGrammarGenerator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/org/apache/avro/io/parsing/JsonGrammarGenerator$1;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/flurry/org/apache/avro/io/parsing/ValidatingGrammarGenerator;-><init>()V

    .line 97
    return-void
.end method


# virtual methods
.method public generate(Lcom/flurry/org/apache/avro/Schema;)Lcom/flurry/org/apache/avro/io/parsing/Symbol;
    .locals 3
    .param p1, "schema"    # Lcom/flurry/org/apache/avro/Schema;

    .prologue
    .line 37
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    const/4 v1, 0x0

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0, p1, v2}, Lcom/flurry/org/apache/avro/io/parsing/JsonGrammarGenerator;->generate(Lcom/flurry/org/apache/avro/Schema;Ljava/util/Map;)Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->root([Lcom/flurry/org/apache/avro/io/parsing/Symbol;)Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    move-result-object v0

    return-object v0
.end method

.method public generate(Lcom/flurry/org/apache/avro/Schema;Ljava/util/Map;)Lcom/flurry/org/apache/avro/io/parsing/Symbol;
    .locals 13
    .param p1, "sc"    # Lcom/flurry/org/apache/avro/Schema;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/apache/avro/Schema;",
            "Ljava/util/Map",
            "<",
            "Lcom/flurry/org/apache/avro/io/parsing/ValidatingGrammarGenerator$LitS;",
            "Lcom/flurry/org/apache/avro/io/parsing/Symbol;",
            ">;)",
            "Lcom/flurry/org/apache/avro/io/parsing/Symbol;"
        }
    .end annotation

    .prologue
    .line 51
    .local p2, "seen":Ljava/util/Map;, "Ljava/util/Map<Lcom/flurry/org/apache/avro/io/parsing/ValidatingGrammarGenerator$LitS;Lcom/flurry/org/apache/avro/io/parsing/Symbol;>;"
    sget-object v7, Lcom/flurry/org/apache/avro/io/parsing/JsonGrammarGenerator$1;->$SwitchMap$org$apache$avro$Schema$Type:[I

    invoke-virtual {p1}, Lcom/flurry/org/apache/avro/Schema;->getType()Lcom/flurry/org/apache/avro/Schema$Type;

    move-result-object v8

    invoke-virtual {v8}, Lcom/flurry/org/apache/avro/Schema$Type;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    .line 97
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "Unexpected schema type"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 62
    :pswitch_0
    invoke-super {p0, p1, p2}, Lcom/flurry/org/apache/avro/io/parsing/ValidatingGrammarGenerator;->generate(Lcom/flurry/org/apache/avro/Schema;Ljava/util/Map;)Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    move-result-object v5

    .line 94
    :cond_0
    :goto_0
    return-object v5

    .line 64
    :pswitch_1
    const/4 v7, 0x2

    new-array v7, v7, [Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    const/4 v8, 0x0

    new-instance v9, Lcom/flurry/org/apache/avro/io/parsing/Symbol$EnumLabelsAction;

    invoke-virtual {p1}, Lcom/flurry/org/apache/avro/Schema;->getEnumSymbols()Ljava/util/List;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/flurry/org/apache/avro/io/parsing/Symbol$EnumLabelsAction;-><init>(Ljava/util/List;)V

    aput-object v9, v7, v8

    const/4 v8, 0x1

    sget-object v9, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->ENUM:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    aput-object v9, v7, v8

    invoke-static {v7}, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->seq([Lcom/flurry/org/apache/avro/io/parsing/Symbol;)Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    move-result-object v5

    goto :goto_0

    .line 67
    :pswitch_2
    const/4 v7, 0x2

    new-array v7, v7, [Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    const/4 v8, 0x0

    sget-object v9, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->ARRAY_END:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    const/4 v10, 0x2

    new-array v10, v10, [Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    const/4 v11, 0x0

    sget-object v12, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->ITEM_END:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-virtual {p1}, Lcom/flurry/org/apache/avro/Schema;->getElementType()Lcom/flurry/org/apache/avro/Schema;

    move-result-object v12

    invoke-virtual {p0, v12, p2}, Lcom/flurry/org/apache/avro/io/parsing/JsonGrammarGenerator;->generate(Lcom/flurry/org/apache/avro/Schema;Ljava/util/Map;)Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->repeat(Lcom/flurry/org/apache/avro/io/parsing/Symbol;[Lcom/flurry/org/apache/avro/io/parsing/Symbol;)Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    sget-object v9, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->ARRAY_START:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    aput-object v9, v7, v8

    invoke-static {v7}, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->seq([Lcom/flurry/org/apache/avro/io/parsing/Symbol;)Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    move-result-object v5

    goto :goto_0

    .line 71
    :pswitch_3
    const/4 v7, 0x2

    new-array v7, v7, [Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    const/4 v8, 0x0

    sget-object v9, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->MAP_END:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    const/4 v10, 0x4

    new-array v10, v10, [Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    const/4 v11, 0x0

    sget-object v12, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->ITEM_END:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-virtual {p1}, Lcom/flurry/org/apache/avro/Schema;->getValueType()Lcom/flurry/org/apache/avro/Schema;

    move-result-object v12

    invoke-virtual {p0, v12, p2}, Lcom/flurry/org/apache/avro/io/parsing/JsonGrammarGenerator;->generate(Lcom/flurry/org/apache/avro/Schema;Ljava/util/Map;)Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    sget-object v12, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->MAP_KEY_MARKER:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    aput-object v12, v10, v11

    const/4 v11, 0x3

    sget-object v12, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->STRING:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->repeat(Lcom/flurry/org/apache/avro/io/parsing/Symbol;[Lcom/flurry/org/apache/avro/io/parsing/Symbol;)Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    sget-object v9, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->MAP_START:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    aput-object v9, v7, v8

    invoke-static {v7}, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->seq([Lcom/flurry/org/apache/avro/io/parsing/Symbol;)Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    move-result-object v5

    goto :goto_0

    .line 76
    :pswitch_4
    new-instance v6, Lcom/flurry/org/apache/avro/io/parsing/ValidatingGrammarGenerator$LitS;

    invoke-direct {v6, p1}, Lcom/flurry/org/apache/avro/io/parsing/ValidatingGrammarGenerator$LitS;-><init>(Lcom/flurry/org/apache/avro/Schema;)V

    .line 77
    .local v6, "wsc":Lcom/flurry/org/apache/avro/io/parsing/ValidatingGrammarGenerator$LitS;
    invoke-interface {p2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    .line 78
    .local v5, "rresult":Lcom/flurry/org/apache/avro/io/parsing/Symbol;
    if-nez v5, :cond_0

    .line 79
    invoke-virtual {p1}, Lcom/flurry/org/apache/avro/Schema;->getFields()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    mul-int/lit8 v7, v7, 0x3

    add-int/lit8 v7, v7, 0x2

    new-array v4, v7, [Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    .line 80
    .local v4, "production":[Lcom/flurry/org/apache/avro/io/parsing/Symbol;
    invoke-static {v4}, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->seq([Lcom/flurry/org/apache/avro/io/parsing/Symbol;)Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    move-result-object v5

    .line 81
    invoke-interface {p2, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    array-length v1, v4

    .line 84
    .local v1, "i":I
    const/4 v3, 0x0

    .line 85
    .local v3, "n":I
    add-int/lit8 v1, v1, -0x1

    sget-object v7, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->RECORD_START:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    aput-object v7, v4, v1

    .line 86
    invoke-virtual {p1}, Lcom/flurry/org/apache/avro/Schema;->getFields()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/org/apache/avro/Schema$Field;

    .line 87
    .local v0, "f":Lcom/flurry/org/apache/avro/Schema$Field;
    add-int/lit8 v1, v1, -0x1

    new-instance v7, Lcom/flurry/org/apache/avro/io/parsing/Symbol$FieldAdjustAction;

    invoke-virtual {v0}, Lcom/flurry/org/apache/avro/Schema$Field;->name()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v3, v8}, Lcom/flurry/org/apache/avro/io/parsing/Symbol$FieldAdjustAction;-><init>(ILjava/lang/String;)V

    aput-object v7, v4, v1

    .line 88
    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0}, Lcom/flurry/org/apache/avro/Schema$Field;->schema()Lcom/flurry/org/apache/avro/Schema;

    move-result-object v7

    invoke-virtual {p0, v7, p2}, Lcom/flurry/org/apache/avro/io/parsing/JsonGrammarGenerator;->generate(Lcom/flurry/org/apache/avro/Schema;Ljava/util/Map;)Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    move-result-object v7

    aput-object v7, v4, v1

    .line 89
    add-int/lit8 v1, v1, -0x1

    sget-object v7, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->FIELD_END:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    aput-object v7, v4, v1

    .line 90
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 92
    .end local v0    # "f":Lcom/flurry/org/apache/avro/Schema$Field;
    :cond_1
    add-int/lit8 v1, v1, -0x1

    sget-object v7, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->RECORD_END:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    aput-object v7, v4, v1

    goto/16 :goto_0

    .line 51
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
