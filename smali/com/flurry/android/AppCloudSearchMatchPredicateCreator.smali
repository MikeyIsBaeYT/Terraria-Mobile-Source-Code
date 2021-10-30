.class public Lcom/flurry/android/AppCloudSearchMatchPredicateCreator;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method

.method public static beginsWith(Ljava/lang/String;Ljava/lang/String;)Lcom/flurry/android/AppCloudSearchPredicateMatch;
    .locals 2

    .prologue
    .line 71
    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%20bw%20"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 73
    new-instance v1, Lcom/flurry/android/AppCloudSearchPredicateMatch;

    invoke-direct {v1, v0}, Lcom/flurry/android/AppCloudSearchPredicateMatch;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method public static contains(Ljava/lang/String;Ljava/lang/String;)Lcom/flurry/android/AppCloudSearchPredicateMatch;
    .locals 2

    .prologue
    .line 59
    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%20c%20"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 61
    new-instance v1, Lcom/flurry/android/AppCloudSearchPredicateMatch;

    invoke-direct {v1, v0}, Lcom/flurry/android/AppCloudSearchPredicateMatch;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method public static endsWith(Ljava/lang/String;Ljava/lang/String;)Lcom/flurry/android/AppCloudSearchPredicateMatch;
    .locals 2

    .prologue
    .line 83
    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%20ew%20"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 85
    new-instance v1, Lcom/flurry/android/AppCloudSearchPredicateMatch;

    invoke-direct {v1, v0}, Lcom/flurry/android/AppCloudSearchPredicateMatch;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method public static equalTo(Ljava/lang/String;Ljava/lang/String;)Lcom/flurry/android/AppCloudSearchPredicateMatch;
    .locals 2

    .prologue
    .line 23
    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%20eq%20"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 25
    new-instance v1, Lcom/flurry/android/AppCloudSearchPredicateMatch;

    invoke-direct {v1, v0}, Lcom/flurry/android/AppCloudSearchPredicateMatch;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method public static greaterThan(Ljava/lang/String;Ljava/lang/String;)Lcom/flurry/android/AppCloudSearchPredicateMatch;
    .locals 2

    .prologue
    .line 35
    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%20gt%20"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 37
    new-instance v1, Lcom/flurry/android/AppCloudSearchPredicateMatch;

    invoke-direct {v1, v0}, Lcom/flurry/android/AppCloudSearchPredicateMatch;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method public static greaterThanOrEquals(Ljava/lang/String;Ljava/lang/String;)Lcom/flurry/android/AppCloudSearchPredicateMatch;
    .locals 2

    .prologue
    .line 47
    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%20gte%20"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 49
    new-instance v1, Lcom/flurry/android/AppCloudSearchPredicateMatch;

    invoke-direct {v1, v0}, Lcom/flurry/android/AppCloudSearchPredicateMatch;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method public static inRange(Ljava/lang/String;[Ljava/lang/String;)Lcom/flurry/android/AppCloudSearchPredicateMatch;
    .locals 4

    .prologue
    .line 103
    const-string v1, ""

    .line 104
    const/4 v0, 0x0

    move v3, v0

    move-object v0, v1

    move v1, v3

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 105
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_0

    .line 106
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v2, p1, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 104
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 109
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v2, p1, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 113
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%20in%20"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 115
    new-instance v1, Lcom/flurry/android/AppCloudSearchPredicateMatch;

    invoke-direct {v1, v0}, Lcom/flurry/android/AppCloudSearchPredicateMatch;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method public static lessThan(Ljava/lang/String;Ljava/lang/String;)Lcom/flurry/android/AppCloudSearchPredicateMatch;
    .locals 2

    .prologue
    .line 41
    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%20lt%20"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 43
    new-instance v1, Lcom/flurry/android/AppCloudSearchPredicateMatch;

    invoke-direct {v1, v0}, Lcom/flurry/android/AppCloudSearchPredicateMatch;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method public static lessThanOrEquals(Ljava/lang/String;Ljava/lang/String;)Lcom/flurry/android/AppCloudSearchPredicateMatch;
    .locals 2

    .prologue
    .line 53
    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%20lte%20"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 55
    new-instance v1, Lcom/flurry/android/AppCloudSearchPredicateMatch;

    invoke-direct {v1, v0}, Lcom/flurry/android/AppCloudSearchPredicateMatch;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method public static notBeginsWith(Ljava/lang/String;Ljava/lang/String;)Lcom/flurry/android/AppCloudSearchPredicateMatch;
    .locals 2

    .prologue
    .line 77
    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%20nbw%20"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 79
    new-instance v1, Lcom/flurry/android/AppCloudSearchPredicateMatch;

    invoke-direct {v1, v0}, Lcom/flurry/android/AppCloudSearchPredicateMatch;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method public static notContains(Ljava/lang/String;Ljava/lang/String;)Lcom/flurry/android/AppCloudSearchPredicateMatch;
    .locals 2

    .prologue
    .line 65
    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%20nc%20"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 67
    new-instance v1, Lcom/flurry/android/AppCloudSearchPredicateMatch;

    invoke-direct {v1, v0}, Lcom/flurry/android/AppCloudSearchPredicateMatch;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method public static notEndsWith(Ljava/lang/String;Ljava/lang/String;)Lcom/flurry/android/AppCloudSearchPredicateMatch;
    .locals 2

    .prologue
    .line 89
    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%20new%20"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 91
    new-instance v1, Lcom/flurry/android/AppCloudSearchPredicateMatch;

    invoke-direct {v1, v0}, Lcom/flurry/android/AppCloudSearchPredicateMatch;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method public static notEqualTo(Ljava/lang/String;Ljava/lang/String;)Lcom/flurry/android/AppCloudSearchPredicateMatch;
    .locals 2

    .prologue
    .line 29
    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%20ne%20"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 31
    new-instance v1, Lcom/flurry/android/AppCloudSearchPredicateMatch;

    invoke-direct {v1, v0}, Lcom/flurry/android/AppCloudSearchPredicateMatch;-><init>(Ljava/lang/String;)V

    return-object v1
.end method
