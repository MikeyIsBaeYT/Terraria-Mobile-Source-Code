.class Lcom/chartboost/sdk/impl/dc;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class",
            "<*>;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 71
    invoke-static {}, Lcom/chartboost/sdk/impl/df;->c()Lcom/chartboost/sdk/impl/df;

    move-result-object v0

    sput-object v0, Lcom/chartboost/sdk/impl/dc;->a:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method

.method public static a(Ljava/lang/Class;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 25
    invoke-static {}, Lcom/chartboost/sdk/impl/dc;->a()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v1

    .line 27
    :goto_0
    invoke-interface {v1, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 28
    if-eqz v0, :cond_0

    .line 29
    return-object v0

    .line 31
    :cond_0
    invoke-static {p0}, Lcom/chartboost/sdk/impl/dc;->b(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, p0, v0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private static a()Ljava/util/concurrent/ConcurrentMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class",
            "<*>;>;>;"
        }
    .end annotation

    .prologue
    .line 68
    sget-object v0, Lcom/chartboost/sdk/impl/dc;->a:Ljava/util/concurrent/ConcurrentMap;

    return-object v0
.end method

.method private static a(Ljava/lang/Class;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .line 47
    if-eqz p0, :cond_0

    const-class v0, Ljava/lang/Object;

    if-ne p0, v0, :cond_1

    .line 62
    :cond_0
    :goto_0
    return-void

    .line 52
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v1

    .line 53
    array-length v0, v1

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_2

    .line 54
    aget-object v2, v1, v0

    invoke-static {v2, p1}, Lcom/chartboost/sdk/impl/dc;->a(Ljava/lang/Class;Ljava/util/List;)V

    .line 53
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 58
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/chartboost/sdk/impl/dc;->a(Ljava/lang/Class;Ljava/util/List;)V

    .line 60
    invoke-interface {p1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 61
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private static b(Ljava/lang/Class;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 40
    const-class v1, Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    invoke-static {p0, v0}, Lcom/chartboost/sdk/impl/dc;->a(Ljava/lang/Class;Ljava/util/List;)V

    .line 42
    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 43
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
