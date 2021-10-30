.class public Lcom/flurry/org/codehaus/jackson/util/JsonParserSequence;
.super Lcom/flurry/org/codehaus/jackson/util/JsonParserDelegate;
.source "JsonParserSequence.java"


# instance fields
.field protected _nextParser:I

.field protected final _parsers:[Lcom/flurry/org/codehaus/jackson/JsonParser;


# direct methods
.method protected constructor <init>([Lcom/flurry/org/codehaus/jackson/JsonParser;)V
    .locals 1
    .param p1, "parsers"    # [Lcom/flurry/org/codehaus/jackson/JsonParser;

    .prologue
    .line 40
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-direct {p0, v0}, Lcom/flurry/org/codehaus/jackson/util/JsonParserDelegate;-><init>(Lcom/flurry/org/codehaus/jackson/JsonParser;)V

    .line 41
    iput-object p1, p0, Lcom/flurry/org/codehaus/jackson/util/JsonParserSequence;->_parsers:[Lcom/flurry/org/codehaus/jackson/JsonParser;

    .line 42
    const/4 v0, 0x1

    iput v0, p0, Lcom/flurry/org/codehaus/jackson/util/JsonParserSequence;->_nextParser:I

    .line 43
    return-void
.end method

.method public static createFlattened(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/JsonParser;)Lcom/flurry/org/codehaus/jackson/util/JsonParserSequence;
    .locals 4
    .param p0, "first"    # Lcom/flurry/org/codehaus/jackson/JsonParser;
    .param p1, "second"    # Lcom/flurry/org/codehaus/jackson/JsonParser;

    .prologue
    .line 56
    instance-of v1, p0, Lcom/flurry/org/codehaus/jackson/util/JsonParserSequence;

    if-nez v1, :cond_0

    instance-of v1, p1, Lcom/flurry/org/codehaus/jackson/util/JsonParserSequence;

    if-nez v1, :cond_0

    .line 58
    new-instance v1, Lcom/flurry/org/codehaus/jackson/util/JsonParserSequence;

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/flurry/org/codehaus/jackson/JsonParser;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-direct {v1, v2}, Lcom/flurry/org/codehaus/jackson/util/JsonParserSequence;-><init>([Lcom/flurry/org/codehaus/jackson/JsonParser;)V

    .line 71
    .end local p0    # "first":Lcom/flurry/org/codehaus/jackson/JsonParser;
    .end local p1    # "second":Lcom/flurry/org/codehaus/jackson/JsonParser;
    :goto_0
    return-object v1

    .line 60
    .restart local p0    # "first":Lcom/flurry/org/codehaus/jackson/JsonParser;
    .restart local p1    # "second":Lcom/flurry/org/codehaus/jackson/JsonParser;
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 61
    .local v0, "p":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/flurry/org/codehaus/jackson/JsonParser;>;"
    instance-of v1, p0, Lcom/flurry/org/codehaus/jackson/util/JsonParserSequence;

    if-eqz v1, :cond_1

    .line 62
    check-cast p0, Lcom/flurry/org/codehaus/jackson/util/JsonParserSequence;

    .end local p0    # "first":Lcom/flurry/org/codehaus/jackson/JsonParser;
    invoke-virtual {p0, v0}, Lcom/flurry/org/codehaus/jackson/util/JsonParserSequence;->addFlattenedActiveParsers(Ljava/util/List;)V

    .line 66
    :goto_1
    instance-of v1, p1, Lcom/flurry/org/codehaus/jackson/util/JsonParserSequence;

    if-eqz v1, :cond_2

    .line 67
    check-cast p1, Lcom/flurry/org/codehaus/jackson/util/JsonParserSequence;

    .end local p1    # "second":Lcom/flurry/org/codehaus/jackson/JsonParser;
    invoke-virtual {p1, v0}, Lcom/flurry/org/codehaus/jackson/util/JsonParserSequence;->addFlattenedActiveParsers(Ljava/util/List;)V

    .line 71
    :goto_2
    new-instance v2, Lcom/flurry/org/codehaus/jackson/util/JsonParserSequence;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lcom/flurry/org/codehaus/jackson/JsonParser;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/flurry/org/codehaus/jackson/JsonParser;

    invoke-direct {v2, v1}, Lcom/flurry/org/codehaus/jackson/util/JsonParserSequence;-><init>([Lcom/flurry/org/codehaus/jackson/JsonParser;)V

    move-object v1, v2

    goto :goto_0

    .line 64
    .restart local p0    # "first":Lcom/flurry/org/codehaus/jackson/JsonParser;
    .restart local p1    # "second":Lcom/flurry/org/codehaus/jackson/JsonParser;
    :cond_1
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 69
    .end local p0    # "first":Lcom/flurry/org/codehaus/jackson/JsonParser;
    :cond_2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method


# virtual methods
.method protected addFlattenedActiveParsers(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/org/codehaus/jackson/JsonParser;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 76
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/flurry/org/codehaus/jackson/JsonParser;>;"
    iget v3, p0, Lcom/flurry/org/codehaus/jackson/util/JsonParserSequence;->_nextParser:I

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/util/JsonParserSequence;->_parsers:[Lcom/flurry/org/codehaus/jackson/JsonParser;

    array-length v1, v3

    .local v1, "len":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 77
    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/util/JsonParserSequence;->_parsers:[Lcom/flurry/org/codehaus/jackson/JsonParser;

    aget-object v2, v3, v0

    .line 78
    .local v2, "p":Lcom/flurry/org/codehaus/jackson/JsonParser;
    instance-of v3, v2, Lcom/flurry/org/codehaus/jackson/util/JsonParserSequence;

    if-eqz v3, :cond_0

    .line 79
    check-cast v2, Lcom/flurry/org/codehaus/jackson/util/JsonParserSequence;

    .end local v2    # "p":Lcom/flurry/org/codehaus/jackson/JsonParser;
    invoke-virtual {v2, p1}, Lcom/flurry/org/codehaus/jackson/util/JsonParserSequence;->addFlattenedActiveParsers(Ljava/util/List;)V

    .line 76
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 81
    .restart local v2    # "p":Lcom/flurry/org/codehaus/jackson/JsonParser;
    :cond_0
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 84
    .end local v2    # "p":Lcom/flurry/org/codehaus/jackson/JsonParser;
    :cond_1
    return-void
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 97
    :cond_0
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/util/JsonParserSequence;->delegate:Lcom/flurry/org/codehaus/jackson/JsonParser;

    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/JsonParser;->close()V

    .line 98
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/util/JsonParserSequence;->switchToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 99
    return-void
.end method

.method public containedParsersCount()I
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/util/JsonParserSequence;->_parsers:[Lcom/flurry/org/codehaus/jackson/JsonParser;

    array-length v0, v0

    return v0
.end method

.method public nextToken()Lcom/flurry/org/codehaus/jackson/JsonToken;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 104
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/util/JsonParserSequence;->delegate:Lcom/flurry/org/codehaus/jackson/JsonParser;

    invoke-virtual {v1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->nextToken()Lcom/flurry/org/codehaus/jackson/JsonToken;

    move-result-object v0

    .line 105
    .local v0, "t":Lcom/flurry/org/codehaus/jackson/JsonToken;
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 110
    :goto_0
    return-object v1

    .line 106
    :cond_0
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/util/JsonParserSequence;->switchToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 107
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/util/JsonParserSequence;->delegate:Lcom/flurry/org/codehaus/jackson/JsonParser;

    invoke-virtual {v1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->nextToken()Lcom/flurry/org/codehaus/jackson/JsonToken;

    move-result-object v0

    .line 108
    if-eqz v0, :cond_0

    move-object v1, v0

    goto :goto_0

    .line 110
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected switchToNext()Z
    .locals 3

    .prologue
    .line 144
    iget v0, p0, Lcom/flurry/org/codehaus/jackson/util/JsonParserSequence;->_nextParser:I

    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/util/JsonParserSequence;->_parsers:[Lcom/flurry/org/codehaus/jackson/JsonParser;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 145
    const/4 v0, 0x0

    .line 148
    :goto_0
    return v0

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/util/JsonParserSequence;->_parsers:[Lcom/flurry/org/codehaus/jackson/JsonParser;

    iget v1, p0, Lcom/flurry/org/codehaus/jackson/util/JsonParserSequence;->_nextParser:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/flurry/org/codehaus/jackson/util/JsonParserSequence;->_nextParser:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/util/JsonParserSequence;->delegate:Lcom/flurry/org/codehaus/jackson/JsonParser;

    .line 148
    const/4 v0, 0x1

    goto :goto_0
.end method
