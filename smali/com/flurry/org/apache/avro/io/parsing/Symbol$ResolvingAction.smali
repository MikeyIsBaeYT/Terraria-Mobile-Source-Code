.class public Lcom/flurry/org/apache/avro/io/parsing/Symbol$ResolvingAction;
.super Lcom/flurry/org/apache/avro/io/parsing/Symbol$ImplicitAction;
.source "Symbol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/org/apache/avro/io/parsing/Symbol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResolvingAction"
.end annotation


# instance fields
.field public final reader:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

.field public final writer:Lcom/flurry/org/apache/avro/io/parsing/Symbol;


# direct methods
.method private constructor <init>(Lcom/flurry/org/apache/avro/io/parsing/Symbol;Lcom/flurry/org/apache/avro/io/parsing/Symbol;)V
    .locals 1
    .param p1, "writer"    # Lcom/flurry/org/apache/avro/io/parsing/Symbol;
    .param p2, "reader"    # Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    .prologue
    .line 426
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/flurry/org/apache/avro/io/parsing/Symbol$ImplicitAction;-><init>(Lcom/flurry/org/apache/avro/io/parsing/Symbol$1;)V

    .line 427
    iput-object p1, p0, Lcom/flurry/org/apache/avro/io/parsing/Symbol$ResolvingAction;->writer:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    .line 428
    iput-object p2, p0, Lcom/flurry/org/apache/avro/io/parsing/Symbol$ResolvingAction;->reader:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    .line 429
    return-void
.end method

.method synthetic constructor <init>(Lcom/flurry/org/apache/avro/io/parsing/Symbol;Lcom/flurry/org/apache/avro/io/parsing/Symbol;Lcom/flurry/org/apache/avro/io/parsing/Symbol$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/flurry/org/apache/avro/io/parsing/Symbol;
    .param p2, "x1"    # Lcom/flurry/org/apache/avro/io/parsing/Symbol;
    .param p3, "x2"    # Lcom/flurry/org/apache/avro/io/parsing/Symbol$1;

    .prologue
    .line 423
    invoke-direct {p0, p1, p2}, Lcom/flurry/org/apache/avro/io/parsing/Symbol$ResolvingAction;-><init>(Lcom/flurry/org/apache/avro/io/parsing/Symbol;Lcom/flurry/org/apache/avro/io/parsing/Symbol;)V

    return-void
.end method


# virtual methods
.method public flatten(Ljava/util/Map;Ljava/util/Map;)Lcom/flurry/org/apache/avro/io/parsing/Symbol$ResolvingAction;
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
            "Lcom/flurry/org/apache/avro/io/parsing/Symbol$ResolvingAction;"
        }
    .end annotation

    .prologue
    .line 434
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Lcom/flurry/org/apache/avro/io/parsing/Symbol$Sequence;Lcom/flurry/org/apache/avro/io/parsing/Symbol$Sequence;>;"
    .local p2, "map2":Ljava/util/Map;, "Ljava/util/Map<Lcom/flurry/org/apache/avro/io/parsing/Symbol$Sequence;Ljava/util/List<Lcom/flurry/org/apache/avro/io/parsing/Symbol$Fixup;>;>;"
    new-instance v0, Lcom/flurry/org/apache/avro/io/parsing/Symbol$ResolvingAction;

    iget-object v1, p0, Lcom/flurry/org/apache/avro/io/parsing/Symbol$ResolvingAction;->writer:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    invoke-virtual {v1, p1, p2}, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->flatten(Ljava/util/Map;Ljava/util/Map;)Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/org/apache/avro/io/parsing/Symbol$ResolvingAction;->reader:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    invoke-virtual {v2, p1, p2}, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->flatten(Ljava/util/Map;Ljava/util/Map;)Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/flurry/org/apache/avro/io/parsing/Symbol$ResolvingAction;-><init>(Lcom/flurry/org/apache/avro/io/parsing/Symbol;Lcom/flurry/org/apache/avro/io/parsing/Symbol;)V

    return-object v0
.end method

.method public bridge synthetic flatten(Ljava/util/Map;Ljava/util/Map;)Lcom/flurry/org/apache/avro/io/parsing/Symbol;
    .locals 1
    .param p1, "x0"    # Ljava/util/Map;
    .param p2, "x1"    # Ljava/util/Map;

    .prologue
    .line 423
    invoke-virtual {p0, p1, p2}, Lcom/flurry/org/apache/avro/io/parsing/Symbol$ResolvingAction;->flatten(Ljava/util/Map;Ljava/util/Map;)Lcom/flurry/org/apache/avro/io/parsing/Symbol$ResolvingAction;

    move-result-object v0

    return-object v0
.end method
