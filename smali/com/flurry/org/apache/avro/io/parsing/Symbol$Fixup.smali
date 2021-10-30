.class Lcom/flurry/org/apache/avro/io/parsing/Symbol$Fixup;
.super Ljava/lang/Object;
.source "Symbol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/org/apache/avro/io/parsing/Symbol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Fixup"
.end annotation


# instance fields
.field public final pos:I

.field public final symbols:[Lcom/flurry/org/apache/avro/io/parsing/Symbol;


# direct methods
.method public constructor <init>([Lcom/flurry/org/apache/avro/io/parsing/Symbol;I)V
    .locals 0
    .param p1, "symbols"    # [Lcom/flurry/org/apache/avro/io/parsing/Symbol;
    .param p2, "pos"    # I

    .prologue
    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    iput-object p1, p0, Lcom/flurry/org/apache/avro/io/parsing/Symbol$Fixup;->symbols:[Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    .line 140
    iput p2, p0, Lcom/flurry/org/apache/avro/io/parsing/Symbol$Fixup;->pos:I

    .line 141
    return-void
.end method
