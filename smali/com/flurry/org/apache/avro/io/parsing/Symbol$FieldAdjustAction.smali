.class public Lcom/flurry/org/apache/avro/io/parsing/Symbol$FieldAdjustAction;
.super Lcom/flurry/org/apache/avro/io/parsing/Symbol$ImplicitAction;
.source "Symbol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/org/apache/avro/io/parsing/Symbol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FieldAdjustAction"
.end annotation


# instance fields
.field public final fname:Ljava/lang/String;

.field public final rindex:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .param p1, "rindex"    # I
    .param p2, "fname"    # Ljava/lang/String;

    .prologue
    .line 458
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/flurry/org/apache/avro/io/parsing/Symbol$ImplicitAction;-><init>(Lcom/flurry/org/apache/avro/io/parsing/Symbol$1;)V

    .line 459
    iput p1, p0, Lcom/flurry/org/apache/avro/io/parsing/Symbol$FieldAdjustAction;->rindex:I

    .line 460
    iput-object p2, p0, Lcom/flurry/org/apache/avro/io/parsing/Symbol$FieldAdjustAction;->fname:Ljava/lang/String;

    .line 461
    return-void
.end method
