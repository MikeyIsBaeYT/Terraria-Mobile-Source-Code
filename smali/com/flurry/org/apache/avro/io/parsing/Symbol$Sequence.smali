.class public Lcom/flurry/org/apache/avro/io/parsing/Symbol$Sequence;
.super Lcom/flurry/org/apache/avro/io/parsing/Symbol;
.source "Symbol.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/org/apache/avro/io/parsing/Symbol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "Sequence"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/flurry/org/apache/avro/io/parsing/Symbol;",
        "Ljava/lang/Iterable",
        "<",
        "Lcom/flurry/org/apache/avro/io/parsing/Symbol;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>([Lcom/flurry/org/apache/avro/io/parsing/Symbol;)V
    .locals 1
    .param p1, "productions"    # [Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    .prologue
    .line 269
    sget-object v0, Lcom/flurry/org/apache/avro/io/parsing/Symbol$Kind;->SEQUENCE:Lcom/flurry/org/apache/avro/io/parsing/Symbol$Kind;

    invoke-direct {p0, v0, p1}, Lcom/flurry/org/apache/avro/io/parsing/Symbol;-><init>(Lcom/flurry/org/apache/avro/io/parsing/Symbol$Kind;[Lcom/flurry/org/apache/avro/io/parsing/Symbol;)V

    .line 270
    return-void
.end method

.method synthetic constructor <init>([Lcom/flurry/org/apache/avro/io/parsing/Symbol;Lcom/flurry/org/apache/avro/io/parsing/Symbol$1;)V
    .locals 0
    .param p1, "x0"    # [Lcom/flurry/org/apache/avro/io/parsing/Symbol;
    .param p2, "x1"    # Lcom/flurry/org/apache/avro/io/parsing/Symbol$1;

    .prologue
    .line 267
    invoke-direct {p0, p1}, Lcom/flurry/org/apache/avro/io/parsing/Symbol$Sequence;-><init>([Lcom/flurry/org/apache/avro/io/parsing/Symbol;)V

    return-void
.end method


# virtual methods
.method public flatten(Ljava/util/Map;Ljava/util/Map;)Lcom/flurry/org/apache/avro/io/parsing/Symbol$Sequence;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/flurry/org/apache/avro/io/parsing/Symbol$Sequence;",
            "Lcom/flurry/org/apache/avro/io/parsing/Symbol$Sequence;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Lcom/flurry/org/apache/avro/io/parsing/Symbol$Sequence;",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/org/apache/avro/io/parsing/Symbol$Fixup;",
            ">;>;)",
            "Lcom/flurry/org/apache/avro/io/parsing/Symbol$Sequence;"
        }
    .end annotation

    .prologue
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Lcom/flurry/org/apache/avro/io/parsing/Symbol$Sequence;Lcom/flurry/org/apache/avro/io/parsing/Symbol$Sequence;>;"
    .local p2, "map2":Ljava/util/Map;, "Ljava/util/Map<Lcom/flurry/org/apache/avro/io/parsing/Symbol$Sequence;Ljava/util/List<Lcom/flurry/org/apache/avro/io/parsing/Symbol$Fixup;>;>;"
    const/4 v1, 0x0

    .line 304
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/flurry/org/apache/avro/io/parsing/Symbol$Sequence;

    .line 305
    .local v9, "result":Lcom/flurry/org/apache/avro/io/parsing/Symbol$Sequence;
    if-nez v9, :cond_1

    .line 306
    new-instance v9, Lcom/flurry/org/apache/avro/io/parsing/Symbol$Sequence;

    .end local v9    # "result":Lcom/flurry/org/apache/avro/io/parsing/Symbol$Sequence;
    invoke-virtual {p0}, Lcom/flurry/org/apache/avro/io/parsing/Symbol$Sequence;->flattenedSize()I

    move-result v0

    new-array v0, v0, [Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    invoke-direct {v9, v0}, Lcom/flurry/org/apache/avro/io/parsing/Symbol$Sequence;-><init>([Lcom/flurry/org/apache/avro/io/parsing/Symbol;)V

    .line 307
    .restart local v9    # "result":Lcom/flurry/org/apache/avro/io/parsing/Symbol$Sequence;
    invoke-interface {p1, p0, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 309
    .local v8, "l":Ljava/util/List;, "Ljava/util/List<Lcom/flurry/org/apache/avro/io/parsing/Symbol$Fixup;>;"
    invoke-interface {p2, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/parsing/Symbol$Sequence;->production:[Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    iget-object v2, v9, Lcom/flurry/org/apache/avro/io/parsing/Symbol$Sequence;->production:[Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    move v3, v1

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/flurry/org/apache/avro/io/parsing/Symbol$Sequence;->flatten([Lcom/flurry/org/apache/avro/io/parsing/Symbol;I[Lcom/flurry/org/apache/avro/io/parsing/Symbol;ILjava/util/Map;Ljava/util/Map;)V

    .line 313
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/flurry/org/apache/avro/io/parsing/Symbol$Fixup;

    .line 314
    .local v6, "f":Lcom/flurry/org/apache/avro/io/parsing/Symbol$Fixup;
    iget-object v0, v9, Lcom/flurry/org/apache/avro/io/parsing/Symbol$Sequence;->production:[Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    iget-object v2, v6, Lcom/flurry/org/apache/avro/io/parsing/Symbol$Fixup;->symbols:[Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    iget v3, v6, Lcom/flurry/org/apache/avro/io/parsing/Symbol$Fixup;->pos:I

    iget-object v4, v9, Lcom/flurry/org/apache/avro/io/parsing/Symbol$Sequence;->production:[Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    array-length v4, v4

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 317
    .end local v6    # "f":Lcom/flurry/org/apache/avro/io/parsing/Symbol$Fixup;
    :cond_0
    invoke-interface {p2, v9}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v8    # "l":Ljava/util/List;, "Ljava/util/List<Lcom/flurry/org/apache/avro/io/parsing/Symbol$Fixup;>;"
    :cond_1
    return-object v9
.end method

.method public bridge synthetic flatten(Ljava/util/Map;Ljava/util/Map;)Lcom/flurry/org/apache/avro/io/parsing/Symbol;
    .locals 1
    .param p1, "x0"    # Ljava/util/Map;
    .param p2, "x1"    # Ljava/util/Map;

    .prologue
    .line 267
    invoke-virtual {p0, p1, p2}, Lcom/flurry/org/apache/avro/io/parsing/Symbol$Sequence;->flatten(Ljava/util/Map;Ljava/util/Map;)Lcom/flurry/org/apache/avro/io/parsing/Symbol$Sequence;

    move-result-object v0

    return-object v0
.end method

.method public final flattenedSize()I
    .locals 2

    .prologue
    .line 324
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/parsing/Symbol$Sequence;->production:[Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/flurry/org/apache/avro/io/parsing/Symbol$Sequence;->flattenedSize([Lcom/flurry/org/apache/avro/io/parsing/Symbol;I)I

    move-result v0

    return v0
.end method

.method public get(I)Lcom/flurry/org/apache/avro/io/parsing/Symbol;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 273
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/parsing/Symbol$Sequence;->production:[Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/flurry/org/apache/avro/io/parsing/Symbol;",
            ">;"
        }
    .end annotation

    .prologue
    .line 281
    new-instance v0, Lcom/flurry/org/apache/avro/io/parsing/Symbol$Sequence$1;

    invoke-direct {v0, p0}, Lcom/flurry/org/apache/avro/io/parsing/Symbol$Sequence$1;-><init>(Lcom/flurry/org/apache/avro/io/parsing/Symbol$Sequence;)V

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/parsing/Symbol$Sequence;->production:[Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    array-length v0, v0

    return v0
.end method
