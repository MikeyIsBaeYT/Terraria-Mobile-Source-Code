.class public Lcom/flurry/org/apache/avro/io/parsing/Symbol$EnumAdjustAction;
.super Lcom/flurry/org/apache/avro/io/parsing/Symbol$IntCheckAction;
.source "Symbol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/org/apache/avro/io/parsing/Symbol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EnumAdjustAction"
.end annotation


# instance fields
.field public final adjustments:[Ljava/lang/Object;


# direct methods
.method public constructor <init>(I[Ljava/lang/Object;)V
    .locals 0
    .param p1, "rsymCount"    # I
    .param p2, "adjustments"    # [Ljava/lang/Object;

    .prologue
    .line 415
    invoke-direct {p0, p1}, Lcom/flurry/org/apache/avro/io/parsing/Symbol$IntCheckAction;-><init>(I)V

    .line 416
    iput-object p2, p0, Lcom/flurry/org/apache/avro/io/parsing/Symbol$EnumAdjustAction;->adjustments:[Ljava/lang/Object;

    .line 417
    return-void
.end method
