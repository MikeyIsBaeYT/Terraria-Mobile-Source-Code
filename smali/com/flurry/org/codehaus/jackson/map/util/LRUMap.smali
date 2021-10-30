.class public Lcom/flurry/org/codehaus/jackson/map/util/LRUMap;
.super Ljava/util/LinkedHashMap;
.source "LRUMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/LinkedHashMap",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field protected final _maxEntries:I


# direct methods
.method public constructor <init>(II)V
    .locals 2
    .param p1, "initialEntries"    # I
    .param p2, "maxEntries"    # I

    .prologue
    .line 18
    .local p0, "this":Lcom/flurry/org/codehaus/jackson/map/util/LRUMap;, "Lcom/flurry/org/codehaus/jackson/map/util/LRUMap<TK;TV;>;"
    const v0, 0x3f4ccccd    # 0.8f

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    .line 19
    iput p2, p0, Lcom/flurry/org/codehaus/jackson/map/util/LRUMap;->_maxEntries:I

    .line 20
    return-void
.end method


# virtual methods
.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;)Z"
        }
    .end annotation

    .prologue
    .line 25
    .local p0, "this":Lcom/flurry/org/codehaus/jackson/map/util/LRUMap;, "Lcom/flurry/org/codehaus/jackson/map/util/LRUMap<TK;TV;>;"
    .local p1, "eldest":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/map/util/LRUMap;->size()I

    move-result v0

    iget v1, p0, Lcom/flurry/org/codehaus/jackson/map/util/LRUMap;->_maxEntries:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
