.class public Lcom/flurry/org/codehaus/jackson/map/util/Comparators;
.super Ljava/lang/Object;
.source "Comparators.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getArrayComparator(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p0, "defaultValue"    # Ljava/lang/Object;

    .prologue
    .line 24
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    .line 25
    .local v0, "length":I
    new-instance v1, Lcom/flurry/org/codehaus/jackson/map/util/Comparators$1;

    invoke-direct {v1, p0, v0}, Lcom/flurry/org/codehaus/jackson/map/util/Comparators$1;-><init>(Ljava/lang/Object;I)V

    return-object v1
.end method
