.class final Lcom/chartboost/sdk/impl/dd$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/chartboost/sdk/impl/dg;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/impl/dd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/chartboost/sdk/impl/dg",
        "<",
        "Ljava/lang/Class",
        "<*>;TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/chartboost/sdk/impl/dd;


# direct methods
.method private constructor <init>(Lcom/chartboost/sdk/impl/dd;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/chartboost/sdk/impl/dd$a;->a:Lcom/chartboost/sdk/impl/dd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/chartboost/sdk/impl/dd;Lcom/chartboost/sdk/impl/dd$1;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/chartboost/sdk/impl/dd$a;-><init>(Lcom/chartboost/sdk/impl/dd;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)TT;"
        }
    .end annotation

    .prologue
    .line 54
    invoke-static {p1}, Lcom/chartboost/sdk/impl/dd;->a(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 55
    iget-object v2, p0, Lcom/chartboost/sdk/impl/dd$a;->a:Lcom/chartboost/sdk/impl/dd;

    invoke-static {v2}, Lcom/chartboost/sdk/impl/dd;->a(Lcom/chartboost/sdk/impl/dd;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 56
    if-eqz v0, :cond_0

    .line 60
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 51
    check-cast p1, Ljava/lang/Class;

    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/impl/dd$a;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
