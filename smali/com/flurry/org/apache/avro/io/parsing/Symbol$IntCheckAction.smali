.class public Lcom/flurry/org/apache/avro/io/parsing/Symbol$IntCheckAction;
.super Lcom/flurry/org/apache/avro/io/parsing/Symbol;
.source "Symbol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/org/apache/avro/io/parsing/Symbol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IntCheckAction"
.end annotation


# instance fields
.field public final size:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 407
    sget-object v0, Lcom/flurry/org/apache/avro/io/parsing/Symbol$Kind;->EXPLICIT_ACTION:Lcom/flurry/org/apache/avro/io/parsing/Symbol$Kind;

    invoke-direct {p0, v0}, Lcom/flurry/org/apache/avro/io/parsing/Symbol;-><init>(Lcom/flurry/org/apache/avro/io/parsing/Symbol$Kind;)V

    .line 408
    iput p1, p0, Lcom/flurry/org/apache/avro/io/parsing/Symbol$IntCheckAction;->size:I

    .line 409
    return-void
.end method
