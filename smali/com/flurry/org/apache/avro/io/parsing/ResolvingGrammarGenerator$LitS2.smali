.class Lcom/flurry/org/apache/avro/io/parsing/ResolvingGrammarGenerator$LitS2;
.super Lcom/flurry/org/apache/avro/io/parsing/ValidatingGrammarGenerator$LitS;
.source "ResolvingGrammarGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/org/apache/avro/io/parsing/ResolvingGrammarGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LitS2"
.end annotation


# instance fields
.field public expected:Lcom/flurry/org/apache/avro/Schema;


# direct methods
.method public constructor <init>(Lcom/flurry/org/apache/avro/Schema;Lcom/flurry/org/apache/avro/Schema;)V
    .locals 0
    .param p1, "actual"    # Lcom/flurry/org/apache/avro/Schema;
    .param p2, "expected"    # Lcom/flurry/org/apache/avro/Schema;

    .prologue
    .line 467
    invoke-direct {p0, p1}, Lcom/flurry/org/apache/avro/io/parsing/ValidatingGrammarGenerator$LitS;-><init>(Lcom/flurry/org/apache/avro/Schema;)V

    .line 468
    iput-object p2, p0, Lcom/flurry/org/apache/avro/io/parsing/ResolvingGrammarGenerator$LitS2;->expected:Lcom/flurry/org/apache/avro/Schema;

    .line 469
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 471
    instance-of v2, p1, Lcom/flurry/org/apache/avro/io/parsing/ResolvingGrammarGenerator$LitS2;

    if-nez v2, :cond_1

    .line 473
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 472
    check-cast v0, Lcom/flurry/org/apache/avro/io/parsing/ResolvingGrammarGenerator$LitS2;

    .line 473
    .local v0, "other":Lcom/flurry/org/apache/avro/io/parsing/ResolvingGrammarGenerator$LitS2;
    iget-object v2, p0, Lcom/flurry/org/apache/avro/io/parsing/ResolvingGrammarGenerator$LitS2;->actual:Lcom/flurry/org/apache/avro/Schema;

    iget-object v3, v0, Lcom/flurry/org/apache/avro/io/parsing/ResolvingGrammarGenerator$LitS2;->actual:Lcom/flurry/org/apache/avro/Schema;

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/flurry/org/apache/avro/io/parsing/ResolvingGrammarGenerator$LitS2;->expected:Lcom/flurry/org/apache/avro/Schema;

    iget-object v3, v0, Lcom/flurry/org/apache/avro/io/parsing/ResolvingGrammarGenerator$LitS2;->expected:Lcom/flurry/org/apache/avro/Schema;

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 476
    invoke-super {p0}, Lcom/flurry/org/apache/avro/io/parsing/ValidatingGrammarGenerator$LitS;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/flurry/org/apache/avro/io/parsing/ResolvingGrammarGenerator$LitS2;->expected:Lcom/flurry/org/apache/avro/Schema;

    invoke-virtual {v1}, Lcom/flurry/org/apache/avro/Schema;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
