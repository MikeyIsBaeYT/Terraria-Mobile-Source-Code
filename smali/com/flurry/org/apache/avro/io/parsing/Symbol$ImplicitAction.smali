.class public Lcom/flurry/org/apache/avro/io/parsing/Symbol$ImplicitAction;
.super Lcom/flurry/org/apache/avro/io/parsing/Symbol;
.source "Symbol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/org/apache/avro/io/parsing/Symbol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImplicitAction"
.end annotation


# instance fields
.field public final isTrailing:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 243
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/flurry/org/apache/avro/io/parsing/Symbol$ImplicitAction;-><init>(Z)V

    .line 244
    return-void
.end method

.method synthetic constructor <init>(Lcom/flurry/org/apache/avro/io/parsing/Symbol$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/flurry/org/apache/avro/io/parsing/Symbol$1;

    .prologue
    .line 234
    invoke-direct {p0}, Lcom/flurry/org/apache/avro/io/parsing/Symbol$ImplicitAction;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "isTrailing"    # Z

    .prologue
    .line 247
    sget-object v0, Lcom/flurry/org/apache/avro/io/parsing/Symbol$Kind;->IMPLICIT_ACTION:Lcom/flurry/org/apache/avro/io/parsing/Symbol$Kind;

    invoke-direct {p0, v0}, Lcom/flurry/org/apache/avro/io/parsing/Symbol;-><init>(Lcom/flurry/org/apache/avro/io/parsing/Symbol$Kind;)V

    .line 248
    iput-boolean p1, p0, Lcom/flurry/org/apache/avro/io/parsing/Symbol$ImplicitAction;->isTrailing:Z

    .line 249
    return-void
.end method

.method synthetic constructor <init>(ZLcom/flurry/org/apache/avro/io/parsing/Symbol$1;)V
    .locals 0
    .param p1, "x0"    # Z
    .param p2, "x1"    # Lcom/flurry/org/apache/avro/io/parsing/Symbol$1;

    .prologue
    .line 234
    invoke-direct {p0, p1}, Lcom/flurry/org/apache/avro/io/parsing/Symbol$ImplicitAction;-><init>(Z)V

    return-void
.end method
