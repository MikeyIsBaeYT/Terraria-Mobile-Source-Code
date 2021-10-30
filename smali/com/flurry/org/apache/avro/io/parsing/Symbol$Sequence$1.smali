.class Lcom/flurry/org/apache/avro/io/parsing/Symbol$Sequence$1;
.super Ljava/lang/Object;
.source "Symbol.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/org/apache/avro/io/parsing/Symbol$Sequence;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Lcom/flurry/org/apache/avro/io/parsing/Symbol;",
        ">;"
    }
.end annotation


# instance fields
.field private pos:I

.field final synthetic this$0:Lcom/flurry/org/apache/avro/io/parsing/Symbol$Sequence;


# direct methods
.method constructor <init>(Lcom/flurry/org/apache/avro/io/parsing/Symbol$Sequence;)V
    .locals 1

    .prologue
    .line 281
    iput-object p1, p0, Lcom/flurry/org/apache/avro/io/parsing/Symbol$Sequence$1;->this$0:Lcom/flurry/org/apache/avro/io/parsing/Symbol$Sequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 282
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/parsing/Symbol$Sequence$1;->this$0:Lcom/flurry/org/apache/avro/io/parsing/Symbol$Sequence;

    iget-object v0, v0, Lcom/flurry/org/apache/avro/io/parsing/Symbol$Sequence;->production:[Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    array-length v0, v0

    iput v0, p0, Lcom/flurry/org/apache/avro/io/parsing/Symbol$Sequence$1;->pos:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 285
    iget v0, p0, Lcom/flurry/org/apache/avro/io/parsing/Symbol$Sequence$1;->pos:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Lcom/flurry/org/apache/avro/io/parsing/Symbol;
    .locals 2

    .prologue
    .line 289
    iget v0, p0, Lcom/flurry/org/apache/avro/io/parsing/Symbol$Sequence$1;->pos:I

    if-lez v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/parsing/Symbol$Sequence$1;->this$0:Lcom/flurry/org/apache/avro/io/parsing/Symbol$Sequence;

    iget-object v0, v0, Lcom/flurry/org/apache/avro/io/parsing/Symbol$Sequence;->production:[Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    iget v1, p0, Lcom/flurry/org/apache/avro/io/parsing/Symbol$Sequence$1;->pos:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/flurry/org/apache/avro/io/parsing/Symbol$Sequence$1;->pos:I

    aget-object v0, v0, v1

    return-object v0

    .line 292
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 281
    invoke-virtual {p0}, Lcom/flurry/org/apache/avro/io/parsing/Symbol$Sequence$1;->next()Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 297
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
