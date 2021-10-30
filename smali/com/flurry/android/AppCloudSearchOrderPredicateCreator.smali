.class public Lcom/flurry/android/AppCloudSearchOrderPredicateCreator;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    return-void
.end method

.method public static ascending()Lcom/flurry/android/AppCloudSearchPredicateReturnOrder;
    .locals 2

    .prologue
    .line 10
    const-string v0, ""

    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/order_dir=ASC"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 12
    new-instance v1, Lcom/flurry/android/AppCloudSearchPredicateReturnOrder;

    invoke-direct {v1, v0}, Lcom/flurry/android/AppCloudSearchPredicateReturnOrder;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method public static ascending(Ljava/lang/String;)Lcom/flurry/android/AppCloudSearchPredicateReturnOrder;
    .locals 2

    .prologue
    .line 22
    const-string v0, ""

    .line 23
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/order_by="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/order_dir=ASC"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 24
    new-instance v1, Lcom/flurry/android/AppCloudSearchPredicateReturnOrder;

    invoke-direct {v1, v0}, Lcom/flurry/android/AppCloudSearchPredicateReturnOrder;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method public static descending()Lcom/flurry/android/AppCloudSearchPredicateReturnOrder;
    .locals 2

    .prologue
    .line 16
    const-string v0, ""

    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/order_dir=DESC"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 18
    new-instance v1, Lcom/flurry/android/AppCloudSearchPredicateReturnOrder;

    invoke-direct {v1, v0}, Lcom/flurry/android/AppCloudSearchPredicateReturnOrder;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method public static descending(Ljava/lang/String;)Lcom/flurry/android/AppCloudSearchPredicateReturnOrder;
    .locals 2

    .prologue
    .line 28
    const-string v0, ""

    .line 29
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/order_by="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/order_dir=DESC"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 30
    new-instance v1, Lcom/flurry/android/AppCloudSearchPredicateReturnOrder;

    invoke-direct {v1, v0}, Lcom/flurry/android/AppCloudSearchPredicateReturnOrder;-><init>(Ljava/lang/String;)V

    return-object v1
.end method
