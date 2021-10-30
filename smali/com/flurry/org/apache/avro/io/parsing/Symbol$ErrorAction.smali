.class public Lcom/flurry/org/apache/avro/io/parsing/Symbol$ErrorAction;
.super Lcom/flurry/org/apache/avro/io/parsing/Symbol$ImplicitAction;
.source "Symbol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/org/apache/avro/io/parsing/Symbol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ErrorAction"
.end annotation


# instance fields
.field public final msg:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 399
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/flurry/org/apache/avro/io/parsing/Symbol$ImplicitAction;-><init>(Lcom/flurry/org/apache/avro/io/parsing/Symbol$1;)V

    .line 400
    iput-object p1, p0, Lcom/flurry/org/apache/avro/io/parsing/Symbol$ErrorAction;->msg:Ljava/lang/String;

    .line 401
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/flurry/org/apache/avro/io/parsing/Symbol$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Lcom/flurry/org/apache/avro/io/parsing/Symbol$1;

    .prologue
    .line 397
    invoke-direct {p0, p1}, Lcom/flurry/org/apache/avro/io/parsing/Symbol$ErrorAction;-><init>(Ljava/lang/String;)V

    return-void
.end method
