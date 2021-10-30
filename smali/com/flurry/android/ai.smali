.class final Lcom/flurry/android/ai;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/android/gj;


# instance fields
.field private final cc:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/gj;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 26
    new-instance v1, Lcom/flurry/android/dq;

    invoke-direct {v1}, Lcom/flurry/android/dq;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    new-instance v1, Lcom/flurry/android/ax;

    invoke-direct {v1}, Lcom/flurry/android/ax;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    new-instance v1, Lcom/flurry/android/fi;

    invoke-direct {v1}, Lcom/flurry/android/fi;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    new-instance v1, Lcom/flurry/android/g;

    invoke-direct {v1}, Lcom/flurry/android/g;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/ai;->cc:Ljava/util/List;

    .line 31
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/flurry/android/gl;)Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 35
    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    :cond_0
    move v1, v2

    .line 48
    :cond_1
    return v1

    .line 39
    :cond_2
    const/4 v0, 0x1

    .line 40
    iget-object v1, p0, Lcom/flurry/android/ai;->cc:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/gj;

    .line 41
    invoke-interface {v0, p1, p2}, Lcom/flurry/android/gj;->a(Landroid/content/Context;Lcom/flurry/android/gl;)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v2

    :goto_1
    move v1, v0

    .line 42
    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method
