.class public Lcom/flurry/org/apache/avro/io/parsing/Symbol$Root;
.super Lcom/flurry/org/apache/avro/io/parsing/Symbol;
.source "Symbol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/org/apache/avro/io/parsing/Symbol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "Root"
.end annotation


# direct methods
.method private varargs constructor <init>([Lcom/flurry/org/apache/avro/io/parsing/Symbol;)V
    .locals 2
    .param p1, "symbols"    # [Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    .prologue
    .line 254
    sget-object v0, Lcom/flurry/org/apache/avro/io/parsing/Symbol$Kind;->ROOT:Lcom/flurry/org/apache/avro/io/parsing/Symbol$Kind;

    invoke-static {p1}, Lcom/flurry/org/apache/avro/io/parsing/Symbol$Root;->makeProduction([Lcom/flurry/org/apache/avro/io/parsing/Symbol;)[Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/flurry/org/apache/avro/io/parsing/Symbol;-><init>(Lcom/flurry/org/apache/avro/io/parsing/Symbol$Kind;[Lcom/flurry/org/apache/avro/io/parsing/Symbol;)V

    .line 255
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/parsing/Symbol$Root;->production:[Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    .line 256
    return-void
.end method

.method synthetic constructor <init>([Lcom/flurry/org/apache/avro/io/parsing/Symbol;Lcom/flurry/org/apache/avro/io/parsing/Symbol$1;)V
    .locals 0
    .param p1, "x0"    # [Lcom/flurry/org/apache/avro/io/parsing/Symbol;
    .param p2, "x1"    # Lcom/flurry/org/apache/avro/io/parsing/Symbol$1;

    .prologue
    .line 252
    invoke-direct {p0, p1}, Lcom/flurry/org/apache/avro/io/parsing/Symbol$Root;-><init>([Lcom/flurry/org/apache/avro/io/parsing/Symbol;)V

    return-void
.end method

.method private static makeProduction([Lcom/flurry/org/apache/avro/io/parsing/Symbol;)[Lcom/flurry/org/apache/avro/io/parsing/Symbol;
    .locals 6
    .param p0, "symbols"    # [Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    .prologue
    const/4 v1, 0x0

    .line 259
    invoke-static {p0, v1}, Lcom/flurry/org/apache/avro/io/parsing/Symbol$Root;->flattenedSize([Lcom/flurry/org/apache/avro/io/parsing/Symbol;I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    new-array v2, v0, [Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    .line 260
    .local v2, "result":[Lcom/flurry/org/apache/avro/io/parsing/Symbol;
    const/4 v3, 0x1

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/flurry/org/apache/avro/io/parsing/Symbol$Root;->flatten([Lcom/flurry/org/apache/avro/io/parsing/Symbol;I[Lcom/flurry/org/apache/avro/io/parsing/Symbol;ILjava/util/Map;Ljava/util/Map;)V

    .line 263
    return-object v2
.end method
