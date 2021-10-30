.class public final Lcom/flurry/org/apache/avro/io/parsing/Symbol$FieldOrderAction;
.super Lcom/flurry/org/apache/avro/io/parsing/Symbol$ImplicitAction;
.source "Symbol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/org/apache/avro/io/parsing/Symbol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FieldOrderAction"
.end annotation


# instance fields
.field public final fields:[Lcom/flurry/org/apache/avro/Schema$Field;


# direct methods
.method public constructor <init>([Lcom/flurry/org/apache/avro/Schema$Field;)V
    .locals 1
    .param p1, "fields"    # [Lcom/flurry/org/apache/avro/Schema$Field;

    .prologue
    .line 466
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/flurry/org/apache/avro/io/parsing/Symbol$ImplicitAction;-><init>(Lcom/flurry/org/apache/avro/io/parsing/Symbol$1;)V

    .line 467
    iput-object p1, p0, Lcom/flurry/org/apache/avro/io/parsing/Symbol$FieldOrderAction;->fields:[Lcom/flurry/org/apache/avro/Schema$Field;

    .line 468
    return-void
.end method
