.class public Lcom/flurry/org/apache/avro/io/parsing/Symbol$DefaultStartAction;
.super Lcom/flurry/org/apache/avro/io/parsing/Symbol$ImplicitAction;
.source "Symbol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/org/apache/avro/io/parsing/Symbol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefaultStartAction"
.end annotation


# instance fields
.field public final contents:[B


# direct methods
.method public constructor <init>([B)V
    .locals 1
    .param p1, "contents"    # [B

    .prologue
    .line 473
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/flurry/org/apache/avro/io/parsing/Symbol$ImplicitAction;-><init>(Lcom/flurry/org/apache/avro/io/parsing/Symbol$1;)V

    .line 474
    iput-object p1, p0, Lcom/flurry/org/apache/avro/io/parsing/Symbol$DefaultStartAction;->contents:[B

    .line 475
    return-void
.end method
