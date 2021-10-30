.class public final Lcom/flurry/org/codehaus/jackson/map/util/ArrayBuilders$LongBuilder;
.super Lcom/flurry/org/codehaus/jackson/map/util/PrimitiveArrayBuilder;
.source "ArrayBuilders.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/org/codehaus/jackson/map/util/ArrayBuilders;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LongBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/flurry/org/codehaus/jackson/map/util/PrimitiveArrayBuilder",
        "<[J>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/flurry/org/codehaus/jackson/map/util/PrimitiveArrayBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic _constructArray(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 116
    invoke-virtual {p0, p1}, Lcom/flurry/org/codehaus/jackson/map/util/ArrayBuilders$LongBuilder;->_constructArray(I)[J

    move-result-object v0

    return-object v0
.end method

.method public final _constructArray(I)[J
    .locals 1
    .param p1, "len"    # I

    .prologue
    .line 121
    new-array v0, p1, [J

    return-object v0
.end method
