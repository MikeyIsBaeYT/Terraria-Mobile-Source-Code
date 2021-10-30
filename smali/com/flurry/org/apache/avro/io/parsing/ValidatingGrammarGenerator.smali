.class public Lcom/flurry/org/apache/avro/io/parsing/ValidatingGrammarGenerator;
.super Ljava/lang/Object;
.source "ValidatingGrammarGenerator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/org/apache/avro/io/parsing/ValidatingGrammarGenerator$1;,
        Lcom/flurry/org/apache/avro/io/parsing/ValidatingGrammarGenerator$LitS;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    return-void
.end method


# virtual methods
.method public generate(Lcom/flurry/org/apache/avro/Schema;)Lcom/flurry/org/apache/avro/io/parsing/Symbol;
    .locals 3
    .param p1, "schema"    # Lcom/flurry/org/apache/avro/Schema;

    .prologue
    .line 36
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    const/4 v1, 0x0

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0, p1, v2}, Lcom/flurry/org/apache/avro/io/parsing/ValidatingGrammarGenerator;->generate(Lcom/flurry/org/apache/avro/Schema;Ljava/util/Map;)Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->root([Lcom/flurry/org/apache/avro/io/parsing/Symbol;)Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    move-result-object v0

    return-object v0
.end method

.method public generate(Lcom/flurry/org/apache/avro/Schema;Ljava/util/Map;)Lcom/flurry/org/apache/avro/io/parsing/Symbol;
    .locals 19
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
    .line 50
    .local p2, "seen":Ljava/util/Map;, "Ljava/util/Map<Lcom/flurry/org/apache/avro/io/parsing/ValidatingGrammarGenerator$LitS;Lcom/flurry/org/apache/avro/io/parsing/Symbol;>;"
    sget-object v13, Lcom/flurry/org/apache/avro/io/parsing/ValidatingGrammarGenerator$1;->$SwitchMap$org$apache$avro$Schema$Type:[I

    invoke-virtual/range {p1 .. p1}, Lcom/flurry/org/apache/avro/Schema;->getType()Lcom/flurry/org/apache/avro/Schema$Type;

    move-result-object v14

    invoke-virtual {v14}, Lcom/flurry/org/apache/avro/Schema$Type;->ordinal()I

    move-result v14

    aget v13, v13, v14

    packed-switch v13, :pswitch_data_0

    .line 114
    new-instance v13, Ljava/lang/RuntimeException;

    const-string v14, "Unexpected schema type"

    invoke-direct {v13, v14}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 52
    :pswitch_0
    sget-object v9, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->NULL:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    .line 111
    :cond_0
    :goto_0
    return-object v9

    .line 54
    :pswitch_1
    sget-object v9, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->BOOLEAN:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    goto :goto_0

    .line 56
    :pswitch_2
    sget-object v9, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->INT:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    goto :goto_0

    .line 58
    :pswitch_3
    sget-object v9, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->LONG:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    goto :goto_0

    .line 60
    :pswitch_4
    sget-object v9, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->FLOAT:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    goto :goto_0

    .line 62
    :pswitch_5
    sget-object v9, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->DOUBLE:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    goto :goto_0

    .line 64
    :pswitch_6
    sget-object v9, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->STRING:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    goto :goto_0

    .line 66
    :pswitch_7
    sget-object v9, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->BYTES:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    goto :goto_0

    .line 68
    :pswitch_8
    const/4 v13, 0x2

    new-array v13, v13, [Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    const/4 v14, 0x0

    new-instance v15, Lcom/flurry/org/apache/avro/io/parsing/Symbol$IntCheckAction;

    invoke-virtual/range {p1 .. p1}, Lcom/flurry/org/apache/avro/Schema;->getFixedSize()I

    move-result v16

    invoke-direct/range {v15 .. v16}, Lcom/flurry/org/apache/avro/io/parsing/Symbol$IntCheckAction;-><init>(I)V

    aput-object v15, v13, v14

    const/4 v14, 0x1

    sget-object v15, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->FIXED:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    aput-object v15, v13, v14

    invoke-static {v13}, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->seq([Lcom/flurry/org/apache/avro/io/parsing/Symbol;)Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    move-result-object v9

    goto :goto_0

    .line 71
    :pswitch_9
    const/4 v13, 0x2

    new-array v13, v13, [Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    const/4 v14, 0x0

    new-instance v15, Lcom/flurry/org/apache/avro/io/parsing/Symbol$IntCheckAction;

    invoke-virtual/range {p1 .. p1}, Lcom/flurry/org/apache/avro/Schema;->getEnumSymbols()Ljava/util/List;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v16

    invoke-direct/range {v15 .. v16}, Lcom/flurry/org/apache/avro/io/parsing/Symbol$IntCheckAction;-><init>(I)V

    aput-object v15, v13, v14

    const/4 v14, 0x1

    sget-object v15, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->ENUM:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    aput-object v15, v13, v14

    invoke-static {v13}, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->seq([Lcom/flurry/org/apache/avro/io/parsing/Symbol;)Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    move-result-object v9

    goto :goto_0

    .line 74
    :pswitch_a
    const/4 v13, 0x2

    new-array v13, v13, [Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    const/4 v14, 0x0

    sget-object v15, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->ARRAY_END:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/flurry/org/apache/avro/Schema;->getElementType()Lcom/flurry/org/apache/avro/Schema;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/flurry/org/apache/avro/io/parsing/ValidatingGrammarGenerator;->generate(Lcom/flurry/org/apache/avro/Schema;Ljava/util/Map;)Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v15 .. v16}, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->repeat(Lcom/flurry/org/apache/avro/io/parsing/Symbol;[Lcom/flurry/org/apache/avro/io/parsing/Symbol;)Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x1

    sget-object v15, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->ARRAY_START:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    aput-object v15, v13, v14

    invoke-static {v13}, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->seq([Lcom/flurry/org/apache/avro/io/parsing/Symbol;)Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    move-result-object v9

    goto :goto_0

    .line 77
    :pswitch_b
    const/4 v13, 0x2

    new-array v13, v13, [Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    const/4 v14, 0x0

    sget-object v15, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->MAP_END:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/flurry/org/apache/avro/Schema;->getValueType()Lcom/flurry/org/apache/avro/Schema;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/flurry/org/apache/avro/io/parsing/ValidatingGrammarGenerator;->generate(Lcom/flurry/org/apache/avro/Schema;Ljava/util/Map;)Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x1

    sget-object v18, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->STRING:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    aput-object v18, v16, v17

    invoke-static/range {v15 .. v16}, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->repeat(Lcom/flurry/org/apache/avro/io/parsing/Symbol;[Lcom/flurry/org/apache/avro/io/parsing/Symbol;)Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x1

    sget-object v15, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->MAP_START:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    aput-object v15, v13, v14

    invoke-static {v13}, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->seq([Lcom/flurry/org/apache/avro/io/parsing/Symbol;)Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    move-result-object v9

    goto/16 :goto_0

    .line 81
    :pswitch_c
    new-instance v12, Lcom/flurry/org/apache/avro/io/parsing/ValidatingGrammarGenerator$LitS;

    move-object/from16 v0, p1

    invoke-direct {v12, v0}, Lcom/flurry/org/apache/avro/io/parsing/ValidatingGrammarGenerator$LitS;-><init>(Lcom/flurry/org/apache/avro/Schema;)V

    .line 82
    .local v12, "wsc":Lcom/flurry/org/apache/avro/io/parsing/ValidatingGrammarGenerator$LitS;
    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    .line 83
    .local v9, "rresult":Lcom/flurry/org/apache/avro/io/parsing/Symbol;
    if-nez v9, :cond_0

    .line 84
    invoke-virtual/range {p1 .. p1}, Lcom/flurry/org/apache/avro/Schema;->getFields()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    new-array v8, v13, [Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    .line 90
    .local v8, "production":[Lcom/flurry/org/apache/avro/io/parsing/Symbol;
    invoke-static {v8}, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->seq([Lcom/flurry/org/apache/avro/io/parsing/Symbol;)Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    move-result-object v9

    .line 91
    move-object/from16 v0, p2

    invoke-interface {v0, v12, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    array-length v5, v8

    .line 94
    .local v5, "i":I
    invoke-virtual/range {p1 .. p1}, Lcom/flurry/org/apache/avro/Schema;->getFields()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/flurry/org/apache/avro/Schema$Field;

    .line 95
    .local v4, "f":Lcom/flurry/org/apache/avro/Schema$Field;
    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4}, Lcom/flurry/org/apache/avro/Schema$Field;->schema()Lcom/flurry/org/apache/avro/Schema;

    move-result-object v13

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v13, v1}, Lcom/flurry/org/apache/avro/io/parsing/ValidatingGrammarGenerator;->generate(Lcom/flurry/org/apache/avro/Schema;Ljava/util/Map;)Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    move-result-object v13

    aput-object v13, v8, v5

    goto :goto_1

    .line 101
    .end local v4    # "f":Lcom/flurry/org/apache/avro/Schema$Field;
    .end local v5    # "i":I
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v8    # "production":[Lcom/flurry/org/apache/avro/io/parsing/Symbol;
    .end local v9    # "rresult":Lcom/flurry/org/apache/avro/io/parsing/Symbol;
    .end local v12    # "wsc":Lcom/flurry/org/apache/avro/io/parsing/ValidatingGrammarGenerator$LitS;
    :pswitch_d
    invoke-virtual/range {p1 .. p1}, Lcom/flurry/org/apache/avro/Schema;->getTypes()Ljava/util/List;

    move-result-object v10

    .line 102
    .local v10, "subs":Ljava/util/List;, "Ljava/util/List<Lcom/flurry/org/apache/avro/Schema;>;"
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v13

    new-array v11, v13, [Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    .line 103
    .local v11, "symbols":[Lcom/flurry/org/apache/avro/io/parsing/Symbol;
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v13

    new-array v7, v13, [Ljava/lang/String;

    .line 105
    .local v7, "labels":[Ljava/lang/String;
    const/4 v5, 0x0

    .line 106
    .restart local v5    # "i":I
    invoke-virtual/range {p1 .. p1}, Lcom/flurry/org/apache/avro/Schema;->getTypes()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .restart local v6    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/flurry/org/apache/avro/Schema;

    .line 107
    .local v3, "b":Lcom/flurry/org/apache/avro/Schema;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v3, v1}, Lcom/flurry/org/apache/avro/io/parsing/ValidatingGrammarGenerator;->generate(Lcom/flurry/org/apache/avro/Schema;Ljava/util/Map;)Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    move-result-object v13

    aput-object v13, v11, v5

    .line 108
    invoke-virtual {v3}, Lcom/flurry/org/apache/avro/Schema;->getFullName()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v7, v5

    .line 109
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 111
    .end local v3    # "b":Lcom/flurry/org/apache/avro/Schema;
    :cond_1
    const/4 v13, 0x2

    new-array v13, v13, [Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    const/4 v14, 0x0

    invoke-static {v11, v7}, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->alt([Lcom/flurry/org/apache/avro/io/parsing/Symbol;[Ljava/lang/String;)Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x1

    sget-object v15, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->UNION:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    aput-object v15, v13, v14

    invoke-static {v13}, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->seq([Lcom/flurry/org/apache/avro/io/parsing/Symbol;)Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    move-result-object v9

    goto/16 :goto_0

    .line 50
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method
