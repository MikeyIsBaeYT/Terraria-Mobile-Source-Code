.class public Lcom/flurry/org/apache/avro/io/parsing/Symbol$Alternative;
.super Lcom/flurry/org/apache/avro/io/parsing/Symbol;
.source "Symbol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/org/apache/avro/io/parsing/Symbol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Alternative"
.end annotation


# instance fields
.field public final labels:[Ljava/lang/String;

.field public final symbols:[Lcom/flurry/org/apache/avro/io/parsing/Symbol;


# direct methods
.method private constructor <init>([Lcom/flurry/org/apache/avro/io/parsing/Symbol;[Ljava/lang/String;)V
    .locals 1
    .param p1, "symbols"    # [Lcom/flurry/org/apache/avro/io/parsing/Symbol;
    .param p2, "labels"    # [Ljava/lang/String;

    .prologue
    .line 358
    sget-object v0, Lcom/flurry/org/apache/avro/io/parsing/Symbol$Kind;->ALTERNATIVE:Lcom/flurry/org/apache/avro/io/parsing/Symbol$Kind;

    invoke-direct {p0, v0}, Lcom/flurry/org/apache/avro/io/parsing/Symbol;-><init>(Lcom/flurry/org/apache/avro/io/parsing/Symbol$Kind;)V

    .line 359
    iput-object p1, p0, Lcom/flurry/org/apache/avro/io/parsing/Symbol$Alternative;->symbols:[Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    .line 360
    iput-object p2, p0, Lcom/flurry/org/apache/avro/io/parsing/Symbol$Alternative;->labels:[Ljava/lang/String;

    .line 361
    return-void
.end method

.method synthetic constructor <init>([Lcom/flurry/org/apache/avro/io/parsing/Symbol;[Ljava/lang/String;Lcom/flurry/org/apache/avro/io/parsing/Symbol$1;)V
    .locals 0
    .param p1, "x0"    # [Lcom/flurry/org/apache/avro/io/parsing/Symbol;
    .param p2, "x1"    # [Ljava/lang/String;
    .param p3, "x2"    # Lcom/flurry/org/apache/avro/io/parsing/Symbol$1;

    .prologue
    .line 354
    invoke-direct {p0, p1, p2}, Lcom/flurry/org/apache/avro/io/parsing/Symbol$Alternative;-><init>([Lcom/flurry/org/apache/avro/io/parsing/Symbol;[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public findLabel(Ljava/lang/String;)I
    .locals 2
    .param p1, "label"    # Ljava/lang/String;

    .prologue
    .line 376
    if-eqz p1, :cond_1

    .line 377
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/flurry/org/apache/avro/io/parsing/Symbol$Alternative;->labels:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 378
    iget-object v1, p0, Lcom/flurry/org/apache/avro/io/parsing/Symbol$Alternative;->labels:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 383
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 377
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 383
    .end local v0    # "i":I
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public flatten(Ljava/util/Map;Ljava/util/Map;)Lcom/flurry/org/apache/avro/io/parsing/Symbol$Alternative;
    .locals 4
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
            "Lcom/flurry/org/apache/avro/io/parsing/Symbol$Alternative;"
        }
    .end annotation

    .prologue
    .line 389
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Lcom/flurry/org/apache/avro/io/parsing/Symbol$Sequence;Lcom/flurry/org/apache/avro/io/parsing/Symbol$Sequence;>;"
    .local p2, "map2":Ljava/util/Map;, "Ljava/util/Map<Lcom/flurry/org/apache/avro/io/parsing/Symbol$Sequence;Ljava/util/List<Lcom/flurry/org/apache/avro/io/parsing/Symbol$Fixup;>;>;"
    iget-object v2, p0, Lcom/flurry/org/apache/avro/io/parsing/Symbol$Alternative;->symbols:[Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    array-length v2, v2

    new-array v1, v2, [Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    .line 390
    .local v1, "ss":[Lcom/flurry/org/apache/avro/io/parsing/Symbol;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 391
    iget-object v2, p0, Lcom/flurry/org/apache/avro/io/parsing/Symbol$Alternative;->symbols:[Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1, p2}, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->flatten(Ljava/util/Map;Ljava/util/Map;)Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    move-result-object v2

    aput-object v2, v1, v0

    .line 390
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 393
    :cond_0
    new-instance v2, Lcom/flurry/org/apache/avro/io/parsing/Symbol$Alternative;

    iget-object v3, p0, Lcom/flurry/org/apache/avro/io/parsing/Symbol$Alternative;->labels:[Ljava/lang/String;

    invoke-direct {v2, v1, v3}, Lcom/flurry/org/apache/avro/io/parsing/Symbol$Alternative;-><init>([Lcom/flurry/org/apache/avro/io/parsing/Symbol;[Ljava/lang/String;)V

    return-object v2
.end method

.method public bridge synthetic flatten(Ljava/util/Map;Ljava/util/Map;)Lcom/flurry/org/apache/avro/io/parsing/Symbol;
    .locals 1
    .param p1, "x0"    # Ljava/util/Map;
    .param p2, "x1"    # Ljava/util/Map;

    .prologue
    .line 354
    invoke-virtual {p0, p1, p2}, Lcom/flurry/org/apache/avro/io/parsing/Symbol$Alternative;->flatten(Ljava/util/Map;Ljava/util/Map;)Lcom/flurry/org/apache/avro/io/parsing/Symbol$Alternative;

    move-result-object v0

    return-object v0
.end method

.method public getLabel(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 368
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/parsing/Symbol$Alternative;->labels:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getSymbol(I)Lcom/flurry/org/apache/avro/io/parsing/Symbol;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 364
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/parsing/Symbol$Alternative;->symbols:[Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/parsing/Symbol$Alternative;->symbols:[Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    array-length v0, v0

    return v0
.end method
