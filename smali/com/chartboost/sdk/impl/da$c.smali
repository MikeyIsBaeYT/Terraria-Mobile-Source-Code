.class final Lcom/chartboost/sdk/impl/da$c;
.super Lcom/chartboost/sdk/impl/da$h;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/impl/da;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chartboost/sdk/impl/da$h",
        "<TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/chartboost/sdk/impl/da;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/impl/da;)V
    .locals 0

    .prologue
    .line 587
    iput-object p1, p0, Lcom/chartboost/sdk/impl/da$c;->a:Lcom/chartboost/sdk/impl/da;

    invoke-direct {p0}, Lcom/chartboost/sdk/impl/da$h;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 593
    iget-object v0, p0, Lcom/chartboost/sdk/impl/da$c;->a:Lcom/chartboost/sdk/impl/da;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/da;->a(Lcom/chartboost/sdk/impl/da;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 598
    iget-object v0, p0, Lcom/chartboost/sdk/impl/da$c;->a:Lcom/chartboost/sdk/impl/da;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/da;->a(Lcom/chartboost/sdk/impl/da;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 603
    iget-object v0, p0, Lcom/chartboost/sdk/impl/da$c;->a:Lcom/chartboost/sdk/impl/da;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/da;->a(Lcom/chartboost/sdk/impl/da;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
