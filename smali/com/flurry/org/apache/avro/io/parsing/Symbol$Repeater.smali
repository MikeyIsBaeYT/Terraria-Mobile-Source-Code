.class public Lcom/flurry/org/apache/avro/io/parsing/Symbol$Repeater;
.super Lcom/flurry/org/apache/avro/io/parsing/Symbol;
.source "Symbol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/org/apache/avro/io/parsing/Symbol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Repeater"
.end annotation


# instance fields
.field public final end:Lcom/flurry/org/apache/avro/io/parsing/Symbol;


# direct methods
.method private varargs constructor <init>(Lcom/flurry/org/apache/avro/io/parsing/Symbol;[Lcom/flurry/org/apache/avro/io/parsing/Symbol;)V
    .locals 2
    .param p1, "end"    # Lcom/flurry/org/apache/avro/io/parsing/Symbol;
    .param p2, "sequenceToRepeat"    # [Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    .prologue
    .line 332
    sget-object v0, Lcom/flurry/org/apache/avro/io/parsing/Symbol$Kind;->REPEATER:Lcom/flurry/org/apache/avro/io/parsing/Symbol$Kind;

    invoke-static {p2}, Lcom/flurry/org/apache/avro/io/parsing/Symbol$Repeater;->makeProduction([Lcom/flurry/org/apache/avro/io/parsing/Symbol;)[Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/flurry/org/apache/avro/io/parsing/Symbol;-><init>(Lcom/flurry/org/apache/avro/io/parsing/Symbol$Kind;[Lcom/flurry/org/apache/avro/io/parsing/Symbol;)V

    .line 333
    iput-object p1, p0, Lcom/flurry/org/apache/avro/io/parsing/Symbol$Repeater;->end:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    .line 334
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/parsing/Symbol$Repeater;->production:[Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    .line 335
    return-void
.end method

.method synthetic constructor <init>(Lcom/flurry/org/apache/avro/io/parsing/Symbol;[Lcom/flurry/org/apache/avro/io/parsing/Symbol;Lcom/flurry/org/apache/avro/io/parsing/Symbol$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/flurry/org/apache/avro/io/parsing/Symbol;
    .param p2, "x1"    # [Lcom/flurry/org/apache/avro/io/parsing/Symbol;
    .param p3, "x2"    # Lcom/flurry/org/apache/avro/io/parsing/Symbol$1;

    .prologue
    .line 328
    invoke-direct {p0, p1, p2}, Lcom/flurry/org/apache/avro/io/parsing/Symbol$Repeater;-><init>(Lcom/flurry/org/apache/avro/io/parsing/Symbol;[Lcom/flurry/org/apache/avro/io/parsing/Symbol;)V

    return-void
.end method

.method private static makeProduction([Lcom/flurry/org/apache/avro/io/parsing/Symbol;)[Lcom/flurry/org/apache/avro/io/parsing/Symbol;
    .locals 4
    .param p0, "p"    # [Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    .prologue
    .line 338
    array-length v1, p0

    add-int/lit8 v1, v1, 0x1

    new-array v0, v1, [Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    .line 339
    .local v0, "result":[Lcom/flurry/org/apache/avro/io/parsing/Symbol;
    const/4 v1, 0x0

    const/4 v2, 0x1

    array-length v3, p0

    invoke-static {p0, v1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 340
    return-object v0
.end method


# virtual methods
.method public flatten(Ljava/util/Map;Ljava/util/Map;)Lcom/flurry/org/apache/avro/io/parsing/Symbol$Repeater;
    .locals 7
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
            "Lcom/flurry/org/apache/avro/io/parsing/Symbol$Repeater;"
        }
    .end annotation

    .prologue
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Lcom/flurry/org/apache/avro/io/parsing/Symbol$Sequence;Lcom/flurry/org/apache/avro/io/parsing/Symbol$Sequence;>;"
    .local p2, "map2":Ljava/util/Map;, "Ljava/util/Map<Lcom/flurry/org/apache/avro/io/parsing/Symbol$Sequence;Ljava/util/List<Lcom/flurry/org/apache/avro/io/parsing/Symbol$Fixup;>;>;"
    const/4 v1, 0x1

    .line 346
    new-instance v6, Lcom/flurry/org/apache/avro/io/parsing/Symbol$Repeater;

    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/parsing/Symbol$Repeater;->end:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    iget-object v2, p0, Lcom/flurry/org/apache/avro/io/parsing/Symbol$Repeater;->production:[Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    invoke-static {v2, v1}, Lcom/flurry/org/apache/avro/io/parsing/Symbol$Repeater;->flattenedSize([Lcom/flurry/org/apache/avro/io/parsing/Symbol;I)I

    move-result v2

    new-array v2, v2, [Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    invoke-direct {v6, v0, v2}, Lcom/flurry/org/apache/avro/io/parsing/Symbol$Repeater;-><init>(Lcom/flurry/org/apache/avro/io/parsing/Symbol;[Lcom/flurry/org/apache/avro/io/parsing/Symbol;)V

    .line 348
    .local v6, "result":Lcom/flurry/org/apache/avro/io/parsing/Symbol$Repeater;
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/parsing/Symbol$Repeater;->production:[Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    iget-object v2, v6, Lcom/flurry/org/apache/avro/io/parsing/Symbol$Repeater;->production:[Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    move v3, v1

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/flurry/org/apache/avro/io/parsing/Symbol$Repeater;->flatten([Lcom/flurry/org/apache/avro/io/parsing/Symbol;I[Lcom/flurry/org/apache/avro/io/parsing/Symbol;ILjava/util/Map;Ljava/util/Map;)V

    .line 349
    return-object v6
.end method

.method public bridge synthetic flatten(Ljava/util/Map;Ljava/util/Map;)Lcom/flurry/org/apache/avro/io/parsing/Symbol;
    .locals 1
    .param p1, "x0"    # Ljava/util/Map;
    .param p2, "x1"    # Ljava/util/Map;

    .prologue
    .line 328
    invoke-virtual {p0, p1, p2}, Lcom/flurry/org/apache/avro/io/parsing/Symbol$Repeater;->flatten(Ljava/util/Map;Ljava/util/Map;)Lcom/flurry/org/apache/avro/io/parsing/Symbol$Repeater;

    move-result-object v0

    return-object v0
.end method
