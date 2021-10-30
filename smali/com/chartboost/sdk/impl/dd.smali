.class public Lcom/chartboost/sdk/impl/dd;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chartboost/sdk/impl/dd$1;,
        Lcom/chartboost/sdk/impl/dd$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;TT;>;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    invoke-static {}, Lcom/chartboost/sdk/impl/df;->c()Lcom/chartboost/sdk/impl/df;

    move-result-object v0

    iput-object v0, p0, Lcom/chartboost/sdk/impl/dd;->a:Ljava/util/Map;

    .line 65
    new-instance v0, Lcom/chartboost/sdk/impl/dd$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/chartboost/sdk/impl/dd$a;-><init>(Lcom/chartboost/sdk/impl/dd;Lcom/chartboost/sdk/impl/dd$1;)V

    invoke-static {v0}, Lcom/chartboost/sdk/impl/de;->a(Lcom/chartboost/sdk/impl/dg;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/chartboost/sdk/impl/dd;->b:Ljava/util/Map;

    return-void
.end method

.method public static a(Ljava/lang/Class;)Ljava/util/List;
    .locals 1
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
    .line 48
    invoke-static {p0}, Lcom/chartboost/sdk/impl/dc;->a(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/chartboost/sdk/impl/dd;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/chartboost/sdk/impl/dd;->a:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/chartboost/sdk/impl/dd;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;TT;)TT;"
        }
    .end annotation

    .prologue
    .line 74
    :try_start_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/dd;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 76
    iget-object v1, p0, Lcom/chartboost/sdk/impl/dd;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/chartboost/sdk/impl/dd;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    throw v0
.end method

.method public a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 69
    iget-object v0, p0, Lcom/chartboost/sdk/impl/dd;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
