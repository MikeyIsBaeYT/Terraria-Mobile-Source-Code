.class public Lcom/flurry/org/apache/avro/io/parsing/Symbol$EnumLabelsAction;
.super Lcom/flurry/org/apache/avro/io/parsing/Symbol$IntCheckAction;
.source "Symbol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/org/apache/avro/io/parsing/Symbol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EnumLabelsAction"
.end annotation


# instance fields
.field public final symbols:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 498
    .local p1, "symbols":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/flurry/org/apache/avro/io/parsing/Symbol$IntCheckAction;-><init>(I)V

    .line 499
    iput-object p1, p0, Lcom/flurry/org/apache/avro/io/parsing/Symbol$EnumLabelsAction;->symbols:Ljava/util/List;

    .line 500
    return-void
.end method


# virtual methods
.method public findLabel(Ljava/lang/String;)I
    .locals 2
    .param p1, "l"    # Ljava/lang/String;

    .prologue
    .line 507
    if-eqz p1, :cond_1

    .line 508
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/flurry/org/apache/avro/io/parsing/Symbol$EnumLabelsAction;->symbols:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 509
    iget-object v1, p0, Lcom/flurry/org/apache/avro/io/parsing/Symbol$EnumLabelsAction;->symbols:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 514
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 508
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 514
    .end local v0    # "i":I
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public getLabel(I)Ljava/lang/String;
    .locals 1
    .param p1, "n"    # I

    .prologue
    .line 503
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/parsing/Symbol$EnumLabelsAction;->symbols:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
