.class public Lcom/flurry/org/apache/avro/io/parsing/Symbol$UnionAdjustAction;
.super Lcom/flurry/org/apache/avro/io/parsing/Symbol$ImplicitAction;
.source "Symbol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/org/apache/avro/io/parsing/Symbol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UnionAdjustAction"
.end annotation


# instance fields
.field public final rindex:I

.field public final symToParse:Lcom/flurry/org/apache/avro/io/parsing/Symbol;


# direct methods
.method public constructor <init>(ILcom/flurry/org/apache/avro/io/parsing/Symbol;)V
    .locals 1
    .param p1, "rindex"    # I
    .param p2, "symToParse"    # Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    .prologue
    .line 481
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/flurry/org/apache/avro/io/parsing/Symbol$ImplicitAction;-><init>(Lcom/flurry/org/apache/avro/io/parsing/Symbol$1;)V

    .line 482
    iput p1, p0, Lcom/flurry/org/apache/avro/io/parsing/Symbol$UnionAdjustAction;->rindex:I

    .line 483
    iput-object p2, p0, Lcom/flurry/org/apache/avro/io/parsing/Symbol$UnionAdjustAction;->symToParse:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    .line 484
    return-void
.end method


# virtual methods
.method public flatten(Ljava/util/Map;Ljava/util/Map;)Lcom/flurry/org/apache/avro/io/parsing/Symbol$UnionAdjustAction;
    .locals 3
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
            "Lcom/flurry/org/apache/avro/io/parsing/Symbol$UnionAdjustAction;"
        }
    .end annotation

    .prologue
    .line 489
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Lcom/flurry/org/apache/avro/io/parsing/Symbol$Sequence;Lcom/flurry/org/apache/avro/io/parsing/Symbol$Sequence;>;"
    .local p2, "map2":Ljava/util/Map;, "Ljava/util/Map<Lcom/flurry/org/apache/avro/io/parsing/Symbol$Sequence;Ljava/util/List<Lcom/flurry/org/apache/avro/io/parsing/Symbol$Fixup;>;>;"
    new-instance v0, Lcom/flurry/org/apache/avro/io/parsing/Symbol$UnionAdjustAction;

    iget v1, p0, Lcom/flurry/org/apache/avro/io/parsing/Symbol$UnionAdjustAction;->rindex:I

    iget-object v2, p0, Lcom/flurry/org/apache/avro/io/parsing/Symbol$UnionAdjustAction;->symToParse:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    invoke-virtual {v2, p1, p2}, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->flatten(Ljava/util/Map;Ljava/util/Map;)Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/flurry/org/apache/avro/io/parsing/Symbol$UnionAdjustAction;-><init>(ILcom/flurry/org/apache/avro/io/parsing/Symbol;)V

    return-object v0
.end method

.method public bridge synthetic flatten(Ljava/util/Map;Ljava/util/Map;)Lcom/flurry/org/apache/avro/io/parsing/Symbol;
    .locals 1
    .param p1, "x0"    # Ljava/util/Map;
    .param p2, "x1"    # Ljava/util/Map;

    .prologue
    .line 478
    invoke-virtual {p0, p1, p2}, Lcom/flurry/org/apache/avro/io/parsing/Symbol$UnionAdjustAction;->flatten(Ljava/util/Map;Ljava/util/Map;)Lcom/flurry/org/apache/avro/io/parsing/Symbol$UnionAdjustAction;

    move-result-object v0

    return-object v0
.end method
