.class final Lcom/flurry/android/r;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static Y:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/flurry/android/bv;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/flurry/android/r;->Y:Ljava/util/HashMap;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 13
    sget-object v0, Lcom/flurry/android/r;->Y:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 15
    sget-object v0, Lcom/flurry/android/r;->Y:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/bv;

    .line 16
    invoke-virtual {v0, p1, p2}, Lcom/flurry/android/bv;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 24
    :goto_0
    return-void

    .line 19
    :cond_0
    new-instance v0, Lcom/flurry/android/bv;

    invoke-direct {v0, p0}, Lcom/flurry/android/bv;-><init>(Ljava/lang/String;)V

    .line 20
    invoke-virtual {v0, p1, p2}, Lcom/flurry/android/bv;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 21
    sget-object v1, Lcom/flurry/android/r;->Y:Ljava/util/HashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/flurry/android/r;->Y:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 47
    :goto_0
    return-void

    .line 45
    :cond_0
    sget-object v0, Lcom/flurry/android/r;->Y:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/bv;

    .line 46
    invoke-virtual {v0, p1, p2}, Lcom/flurry/android/bv;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 28
    sget-object v0, Lcom/flurry/android/r;->Y:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30
    sget-object v0, Lcom/flurry/android/r;->Y:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/bv;

    .line 31
    invoke-virtual {v0, p2, p3}, Lcom/flurry/android/bv;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 39
    :goto_0
    return-void

    .line 34
    :cond_0
    new-instance v0, Lcom/flurry/android/bv;

    invoke-direct {v0, p0, p1}, Lcom/flurry/android/bv;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    invoke-virtual {v0, p2, p3}, Lcom/flurry/android/bv;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 36
    sget-object v1, Lcom/flurry/android/r;->Y:Ljava/util/HashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/flurry/android/r;->Y:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 52
    const/4 v0, 0x0

    .line 55
    :goto_0
    return v0

    .line 54
    :cond_0
    sget-object v0, Lcom/flurry/android/r;->Y:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 74
    sget-object v0, Lcom/flurry/android/r;->Y:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 75
    const/4 v0, 0x0

    .line 83
    :goto_0
    return v0

    .line 77
    :cond_0
    sget-object v0, Lcom/flurry/android/r;->Y:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/bv;

    .line 78
    invoke-virtual {v0, p1}, Lcom/flurry/android/bv;->a(Ljava/lang/Object;)Z

    move-result v1

    .line 79
    invoke-virtual {v0}, Lcom/flurry/android/bv;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 80
    sget-object v0, Lcom/flurry/android/r;->Y:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    move v0, v1

    .line 83
    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 60
    sget-object v0, Lcom/flurry/android/r;->Y:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 61
    const/4 v0, 0x0

    .line 69
    :goto_0
    return v0

    .line 63
    :cond_0
    sget-object v0, Lcom/flurry/android/r;->Y:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/bv;

    .line 64
    invoke-virtual {v0, p1}, Lcom/flurry/android/bv;->removeObserverForKey(Ljava/lang/String;)Z

    move-result v1

    .line 65
    invoke-virtual {v0}, Lcom/flurry/android/bv;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 66
    sget-object v0, Lcom/flurry/android/r;->Y:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    move v0, v1

    .line 69
    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 96
    sget-object v0, Lcom/flurry/android/r;->Y:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 97
    new-instance v0, Lcom/flurry/android/bv;

    invoke-direct {v0, p0}, Lcom/flurry/android/bv;-><init>(Ljava/lang/String;)V

    .line 98
    sget-object v1, Lcom/flurry/android/r;->Y:Ljava/util/HashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    :cond_0
    sget-object v0, Lcom/flurry/android/r;->Y:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/bv;

    .line 102
    invoke-virtual {v0}, Lcom/flurry/android/bv;->al()V

    .line 103
    const/4 v0, 0x1

    return v0
.end method

.method public static c(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 107
    sget-object v0, Lcom/flurry/android/r;->Y:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 108
    const/4 v0, 0x0

    .line 112
    :goto_0
    return v0

    .line 110
    :cond_0
    sget-object v0, Lcom/flurry/android/r;->Y:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/bv;

    .line 111
    invoke-virtual {v0}, Lcom/flurry/android/bv;->am()V

    .line 112
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static d(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 116
    sget-object v0, Lcom/flurry/android/r;->Y:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 117
    const/4 v0, 0x0

    .line 119
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static e(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 123
    sget-object v0, Lcom/flurry/android/r;->Y:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 124
    const/4 v0, 0x0

    .line 127
    :goto_0
    return v0

    .line 126
    :cond_0
    sget-object v0, Lcom/flurry/android/r;->Y:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/bv;

    .line 127
    invoke-virtual {v0}, Lcom/flurry/android/bv;->isAutoSyncEnabled()Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method final start()V
    .locals 2

    .prologue
    .line 131
    sget-object v0, Lcom/flurry/android/r;->Y:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 132
    sget-object v0, Lcom/flurry/android/r;->Y:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/bv;

    .line 133
    invoke-virtual {v0}, Lcom/flurry/android/bv;->start()V

    goto :goto_0

    .line 136
    :cond_0
    return-void
.end method

.method final stop()V
    .locals 2

    .prologue
    .line 139
    sget-object v0, Lcom/flurry/android/r;->Y:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 140
    sget-object v0, Lcom/flurry/android/r;->Y:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/bv;

    .line 141
    invoke-virtual {v0}, Lcom/flurry/android/bv;->stop()V

    goto :goto_0

    .line 144
    :cond_0
    return-void
.end method
