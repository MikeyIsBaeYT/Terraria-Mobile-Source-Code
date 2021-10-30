.class public Lcom/flurry/org/apache/avro/io/parsing/Symbol$SkipAction;
.super Lcom/flurry/org/apache/avro/io/parsing/Symbol$ImplicitAction;
.source "Symbol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/org/apache/avro/io/parsing/Symbol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SkipAction"
.end annotation


# instance fields
.field public final symToSkip:Lcom/flurry/org/apache/avro/io/parsing/Symbol;


# direct methods
.method public constructor <init>(Lcom/flurry/org/apache/avro/io/parsing/Symbol;)V
    .locals 2
    .param p1, "symToSkip"    # Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    .prologue
    .line 443
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/flurry/org/apache/avro/io/parsing/Symbol$ImplicitAction;-><init>(ZLcom/flurry/org/apache/avro/io/parsing/Symbol$1;)V

    .line 444
    iput-object p1, p0, Lcom/flurry/org/apache/avro/io/parsing/Symbol$SkipAction;->symToSkip:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    .line 445
    return-void
.end method


# virtual methods
.method public flatten(Ljava/util/Map;Ljava/util/Map;)Lcom/flurry/org/apache/avro/io/parsing/Symbol$SkipAction;
    .locals 2
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
            "Lcom/flurry/org/apache/avro/io/parsing/Symbol$SkipAction;"
        }
    .end annotation

    .prologue
    .line 450
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Lcom/flurry/org/apache/avro/io/parsing/Symbol$Sequence;Lcom/flurry/org/apache/avro/io/parsing/Symbol$Sequence;>;"
    .local p2, "map2":Ljava/util/Map;, "Ljava/util/Map<Lcom/flurry/org/apache/avro/io/parsing/Symbol$Sequence;Ljava/util/List<Lcom/flurry/org/apache/avro/io/parsing/Symbol$Fixup;>;>;"
    new-instance v0, Lcom/flurry/org/apache/avro/io/parsing/Symbol$SkipAction;

    iget-object v1, p0, Lcom/flurry/org/apache/avro/io/parsing/Symbol$SkipAction;->symToSkip:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    invoke-virtual {v1, p1, p2}, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->flatten(Ljava/util/Map;Ljava/util/Map;)Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/flurry/org/apache/avro/io/parsing/Symbol$SkipAction;-><init>(Lcom/flurry/org/apache/avro/io/parsing/Symbol;)V

    return-object v0
.end method

.method public bridge synthetic flatten(Ljava/util/Map;Ljava/util/Map;)Lcom/flurry/org/apache/avro/io/parsing/Symbol;
    .locals 1
    .param p1, "x0"    # Ljava/util/Map;
    .param p2, "x1"    # Ljava/util/Map;

    .prologue
    .line 440
    invoke-virtual {p0, p1, p2}, Lcom/flurry/org/apache/avro/io/parsing/Symbol$SkipAction;->flatten(Ljava/util/Map;Ljava/util/Map;)Lcom/flurry/org/apache/avro/io/parsing/Symbol$SkipAction;

    move-result-object v0

    return-object v0
.end method
