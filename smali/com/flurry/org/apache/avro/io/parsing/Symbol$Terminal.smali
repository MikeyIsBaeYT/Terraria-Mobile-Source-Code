.class Lcom/flurry/org/apache/avro/io/parsing/Symbol$Terminal;
.super Lcom/flurry/org/apache/avro/io/parsing/Symbol;
.source "Symbol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/org/apache/avro/io/parsing/Symbol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Terminal"
.end annotation


# instance fields
.field private final printName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "printName"    # Ljava/lang/String;

    .prologue
    .line 228
    sget-object v0, Lcom/flurry/org/apache/avro/io/parsing/Symbol$Kind;->TERMINAL:Lcom/flurry/org/apache/avro/io/parsing/Symbol$Kind;

    invoke-direct {p0, v0}, Lcom/flurry/org/apache/avro/io/parsing/Symbol;-><init>(Lcom/flurry/org/apache/avro/io/parsing/Symbol$Kind;)V

    .line 229
    iput-object p1, p0, Lcom/flurry/org/apache/avro/io/parsing/Symbol$Terminal;->printName:Ljava/lang/String;

    .line 230
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/parsing/Symbol$Terminal;->printName:Ljava/lang/String;

    return-object v0
.end method
