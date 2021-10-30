.class public Lcom/flurry/android/AppCloudSearch;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private bA:Lcom/flurry/android/CacheSearchItemsData;

.field private bz:Lcom/flurry/android/CacheSearchData;

.field private eD:Ljava/util/concurrent/ExecutorService;

.field private gx:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/flurry/android/AppCloudSearchPredicateMatch;",
            ">;"
        }
    .end annotation
.end field

.field private gy:Lcom/flurry/android/AppCloudSearchPredicateReturnOrder;

.field private gz:Lcom/flurry/android/AppCloudSearchPredicatePaginationOrLimit;

.field private mCollectionName:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object v0, p0, Lcom/flurry/android/AppCloudSearch;->bz:Lcom/flurry/android/CacheSearchData;

    .line 25
    iput-object v0, p0, Lcom/flurry/android/AppCloudSearch;->bA:Lcom/flurry/android/CacheSearchItemsData;

    .line 26
    iput-object v0, p0, Lcom/flurry/android/AppCloudSearch;->mCollectionName:Ljava/lang/String;

    .line 33
    iput-object v0, p0, Lcom/flurry/android/AppCloudSearch;->gx:Ljava/util/LinkedList;

    .line 34
    iput-object v0, p0, Lcom/flurry/android/AppCloudSearch;->gy:Lcom/flurry/android/AppCloudSearchPredicateReturnOrder;

    .line 35
    iput-object v0, p0, Lcom/flurry/android/AppCloudSearch;->gz:Lcom/flurry/android/AppCloudSearchPredicatePaginationOrLimit;

    .line 37
    iput-object v0, p0, Lcom/flurry/android/AppCloudSearch;->eD:Ljava/util/concurrent/ExecutorService;

    .line 40
    sget-object v0, Lcom/flurry/android/gn;->iL:Lcom/flurry/android/gn;

    invoke-static {v0}, Lcom/flurry/android/FlurryAppCloud;->a(Lcom/flurry/android/gn;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/CacheSearchData;

    iput-object v0, p0, Lcom/flurry/android/AppCloudSearch;->bz:Lcom/flurry/android/CacheSearchData;

    .line 41
    sget-object v0, Lcom/flurry/android/gn;->iM:Lcom/flurry/android/gn;

    invoke-static {v0}, Lcom/flurry/android/FlurryAppCloud;->a(Lcom/flurry/android/gn;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/CacheSearchItemsData;

    iput-object v0, p0, Lcom/flurry/android/AppCloudSearch;->bA:Lcom/flurry/android/CacheSearchItemsData;

    .line 42
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/AppCloudSearch;->eD:Ljava/util/concurrent/ExecutorService;

    .line 43
    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object v0, p0, Lcom/flurry/android/AppCloudSearch;->bz:Lcom/flurry/android/CacheSearchData;

    .line 25
    iput-object v0, p0, Lcom/flurry/android/AppCloudSearch;->bA:Lcom/flurry/android/CacheSearchItemsData;

    .line 26
    iput-object v0, p0, Lcom/flurry/android/AppCloudSearch;->mCollectionName:Ljava/lang/String;

    .line 33
    iput-object v0, p0, Lcom/flurry/android/AppCloudSearch;->gx:Ljava/util/LinkedList;

    .line 34
    iput-object v0, p0, Lcom/flurry/android/AppCloudSearch;->gy:Lcom/flurry/android/AppCloudSearchPredicateReturnOrder;

    .line 35
    iput-object v0, p0, Lcom/flurry/android/AppCloudSearch;->gz:Lcom/flurry/android/AppCloudSearchPredicatePaginationOrLimit;

    .line 37
    iput-object v0, p0, Lcom/flurry/android/AppCloudSearch;->eD:Ljava/util/concurrent/ExecutorService;

    .line 46
    sget-object v0, Lcom/flurry/android/gn;->iL:Lcom/flurry/android/gn;

    invoke-static {v0}, Lcom/flurry/android/FlurryAppCloud;->a(Lcom/flurry/android/gn;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/CacheSearchData;

    iput-object v0, p0, Lcom/flurry/android/AppCloudSearch;->bz:Lcom/flurry/android/CacheSearchData;

    .line 47
    sget-object v0, Lcom/flurry/android/gn;->iM:Lcom/flurry/android/gn;

    invoke-static {v0}, Lcom/flurry/android/FlurryAppCloud;->a(Lcom/flurry/android/gn;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/CacheSearchItemsData;

    iput-object v0, p0, Lcom/flurry/android/AppCloudSearch;->bA:Lcom/flurry/android/CacheSearchItemsData;

    .line 48
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/AppCloudSearch;->eD:Ljava/util/concurrent/ExecutorService;

    .line 49
    iput-object p1, p0, Lcom/flurry/android/AppCloudSearch;->mCollectionName:Ljava/lang/String;

    .line 50
    return-void
.end method

.method static synthetic a(Lcom/flurry/android/AppCloudSearch;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/flurry/android/AppCloudSearch;->mCollectionName:Ljava/lang/String;

    return-object v0
.end method

.method private a(IILcom/flurry/android/responses/AppCloudEnumSearchResultCompletionHandler;Z)V
    .locals 6

    .prologue
    .line 284
    invoke-static {p1, p2}, Lcom/flurry/android/AppCloudSearchPaginatingOrLimitPredicateCreator;->preginateResult(II)Lcom/flurry/android/AppCloudSearchPredicatePaginationOrLimit;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flurry/android/AppCloudSearch;->setPaginatingOrLimit(Lcom/flurry/android/AppCloudSearchPredicatePaginationOrLimit;)V

    .line 285
    new-instance v0, Lcom/flurry/android/ey;

    move-object v1, p0

    move-object v2, p3

    move v3, p2

    move v4, p1

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/flurry/android/ey;-><init>(Lcom/flurry/android/AppCloudSearch;Lcom/flurry/android/responses/AppCloudEnumSearchResultCompletionHandler;IIZ)V

    invoke-virtual {p0, v0}, Lcom/flurry/android/AppCloudSearch;->searchWithCompletionHandler(Lcom/flurry/android/responses/AppCloudSearchResultCompletionHandler;)V

    .line 310
    return-void
.end method

.method static synthetic a(Lcom/flurry/android/AppCloudSearch;IILcom/flurry/android/responses/AppCloudEnumSearchResultCompletionHandler;)V
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/flurry/android/AppCloudSearch;->a(IILcom/flurry/android/responses/AppCloudEnumSearchResultCompletionHandler;Z)V

    return-void
.end method

.method static synthetic b(Lcom/flurry/android/AppCloudSearch;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 21
    const-string v2, ""

    iget-object v0, p0, Lcom/flurry/android/AppCloudSearch;->gx:Ljava/util/LinkedList;

    if-eqz v0, :cond_0

    const-string v1, ""

    const/4 v0, 0x0

    move-object v2, v1

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/flurry/android/AppCloudSearch;->gx:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/flurry/android/AppCloudSearch;->gx:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/AppCloudSearchPredicateMatch;

    invoke-virtual {v0}, Lcom/flurry/android/AppCloudSearchPredicateMatch;->e()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "match"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    iget-object v1, p0, Lcom/flurry/android/AppCloudSearch;->gy:Lcom/flurry/android/AppCloudSearchPredicateReturnOrder;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/flurry/android/AppCloudSearch;->gy:Lcom/flurry/android/AppCloudSearchPredicateReturnOrder;

    invoke-virtual {v0}, Lcom/flurry/android/AppCloudSearchPredicateReturnOrder;->e()Ljava/lang/String;

    move-result-object v0

    :cond_1
    const-string v1, ""

    iget-object v3, p0, Lcom/flurry/android/AppCloudSearch;->gz:Lcom/flurry/android/AppCloudSearchPredicatePaginationOrLimit;

    if-eqz v3, :cond_2

    iget-object v1, p0, Lcom/flurry/android/AppCloudSearch;->gz:Lcom/flurry/android/AppCloudSearchPredicatePaginationOrLimit;

    invoke-virtual {v1}, Lcom/flurry/android/AppCloudSearchPredicatePaginationOrLimit;->e()Ljava/lang/String;

    move-result-object v1

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lcom/flurry/android/AppCloudSearch;)Lcom/flurry/android/CacheSearchData;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/flurry/android/AppCloudSearch;->bz:Lcom/flurry/android/CacheSearchData;

    return-object v0
.end method

.method static synthetic d(Lcom/flurry/android/AppCloudSearch;)Lcom/flurry/android/CacheSearchItemsData;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/flurry/android/AppCloudSearch;->bA:Lcom/flurry/android/CacheSearchItemsData;

    return-object v0
.end method

.method public static onMakeSearchNotValidForCollection(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 77
    sget-object v0, Lcom/flurry/android/gn;->iL:Lcom/flurry/android/gn;

    invoke-static {v0}, Lcom/flurry/android/FlurryAppCloud;->a(Lcom/flurry/android/gn;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/CacheSearchData;

    .line 78
    sget-object v1, Lcom/flurry/android/gn;->iM:Lcom/flurry/android/gn;

    invoke-static {v1}, Lcom/flurry/android/FlurryAppCloud;->a(Lcom/flurry/android/gn;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flurry/android/CacheSearchItemsData;

    .line 80
    if-eqz v0, :cond_0

    if-eqz v0, :cond_0

    .line 81
    invoke-virtual {v0, p0}, Lcom/flurry/android/CacheSearchData;->getIdsAssociatedWithCollectionName(Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v3

    .line 82
    invoke-virtual {v0, p0}, Lcom/flurry/android/CacheSearchData;->removeByCollectionName(Ljava/lang/String;)V

    .line 84
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    array-length v0, v3

    if-ge v2, v0, :cond_0

    .line 85
    aget-object v0, v3, v2

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/flurry/android/CacheSearchItemsData;->removeItemsById(Ljava/lang/String;)V

    .line 84
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 88
    :cond_0
    return-void
.end method

.method public static toStringAndPrint()V
    .locals 2

    .prologue
    .line 53
    const-string v0, "SearchCache"

    const-string v1, "============SEARCH REQUESTS=================="

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    sget-object v0, Lcom/flurry/android/gn;->iL:Lcom/flurry/android/gn;

    invoke-static {v0}, Lcom/flurry/android/FlurryAppCloud;->a(Lcom/flurry/android/gn;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/CacheSearchData;

    invoke-virtual {v0}, Lcom/flurry/android/CacheSearchData;->readAll()V

    .line 56
    const-string v0, "SearchCache"

    const-string v1, "============SEARCH ITEMS=================="

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    sget-object v0, Lcom/flurry/android/gn;->iM:Lcom/flurry/android/gn;

    invoke-static {v0}, Lcom/flurry/android/FlurryAppCloud;->a(Lcom/flurry/android/gn;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/CacheSearchItemsData;

    invoke-virtual {v0}, Lcom/flurry/android/CacheSearchItemsData;->readAll()V

    .line 58
    return-void
.end method


# virtual methods
.method public addPredicate(Lcom/flurry/android/AppCloudSearchPredicateMatch;)V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/flurry/android/AppCloudSearch;->gx:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/flurry/android/AppCloudSearch;->gx:Ljava/util/LinkedList;

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/flurry/android/AppCloudSearch;->gx:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 65
    return-void
.end method

.method public searchWithCompletionHandler(Lcom/flurry/android/responses/AppCloudSearchResultCompletionHandler;)V
    .locals 2

    .prologue
    .line 139
    iget-object v0, p0, Lcom/flurry/android/AppCloudSearch;->eD:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/flurry/android/eq;

    invoke-direct {v1, p0, p1}, Lcom/flurry/android/eq;-><init>(Lcom/flurry/android/AppCloudSearch;Lcom/flurry/android/responses/AppCloudSearchResultCompletionHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 140
    return-void
.end method

.method public searchWithFetchBatchSize(IILcom/flurry/android/responses/AppCloudEnumSearchResultCompletionHandler;)V
    .locals 1

    .prologue
    .line 278
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/flurry/android/AppCloudSearch;->a(IILcom/flurry/android/responses/AppCloudEnumSearchResultCompletionHandler;Z)V

    .line 279
    return-void
.end method

.method public setOrder(Lcom/flurry/android/AppCloudSearchPredicateReturnOrder;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/flurry/android/AppCloudSearch;->gy:Lcom/flurry/android/AppCloudSearchPredicateReturnOrder;

    .line 69
    return-void
.end method

.method public setPaginatingOrLimit(Lcom/flurry/android/AppCloudSearchPredicatePaginationOrLimit;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/flurry/android/AppCloudSearch;->gz:Lcom/flurry/android/AppCloudSearchPredicatePaginationOrLimit;

    .line 73
    return-void
.end method
