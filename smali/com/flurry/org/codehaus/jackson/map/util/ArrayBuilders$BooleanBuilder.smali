.class public final Lcom/flurry/org/codehaus/jackson/map/util/ArrayBuilders$BooleanBuilder;
.super Lcom/flurry/org/codehaus/jackson/map/util/PrimitiveArrayBuilder;
.source "ArrayBuilders.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/org/codehaus/jackson/map/util/ArrayBuilders;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BooleanBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/flurry/org/codehaus/jackson/map/util/PrimitiveArrayBuilder",
        "<[Z>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/flurry/org/codehaus/jackson/map/util/PrimitiveArrayBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic _constructArray(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Lcom/flurry/org/codehaus/jackson/map/util/ArrayBuilders$BooleanBuilder;->_constructArray(I)[Z

    move-result-object v0

    return-object v0
.end method

.method public final _constructArray(I)[Z
    .locals 1
    .param p1, "len"    # I

    .prologue
    .line 92
    new-array v0, p1, [Z

    return-object v0
.end method
