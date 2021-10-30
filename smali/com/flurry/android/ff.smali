.class abstract Lcom/flurry/android/ff;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/android/ba;
.implements Lcom/flurry/android/m;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract O()Ljava/lang/String;
.end method

.method protected abstract P()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/cs;",
            ">;"
        }
    .end annotation
.end method

.method protected abstract Q()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ActivityInfo;",
            ">;"
        }
    .end annotation
.end method

.method protected abstract R()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/cs;",
            ">;"
        }
    .end annotation
.end method

.method protected abstract S()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method protected abstract T()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public final a(Landroid/content/Context;Lcom/flurry/android/FlurryAds;Lcom/flurry/android/cw;Lcom/flurry/android/AdUnit;)Lcom/flurry/android/ae;
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 26
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-nez p4, :cond_1

    :cond_0
    move-object v0, v6

    .line 40
    :goto_0
    return-object v0

    .line 30
    :cond_1
    invoke-virtual {p0}, Lcom/flurry/android/ff;->O()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/flurry/android/ff;->P()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Lcom/flurry/android/ff;->aj()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0}, Lcom/flurry/android/ff;->T()Ljava/util/List;

    move-result-object v4

    invoke-virtual {p0}, Lcom/flurry/android/ff;->Q()Ljava/util/List;

    move-result-object v5

    new-instance v0, Lcom/flurry/android/gl;

    invoke-direct/range {v0 .. v5}, Lcom/flurry/android/gl;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 31
    if-eqz p1, :cond_2

    if-nez v0, :cond_3

    :cond_2
    move v0, v7

    :goto_1
    if-nez v0, :cond_5

    move-object v0, v6

    .line 32
    goto :goto_0

    .line 31
    :cond_3
    new-instance v1, Lcom/flurry/android/ai;

    invoke-direct {v1}, Lcom/flurry/android/ai;-><init>()V

    if-nez v1, :cond_4

    move v0, v7

    goto :goto_1

    :cond_4
    invoke-interface {v1, p1, v0}, Lcom/flurry/android/gj;->a(Landroid/content/Context;Lcom/flurry/android/gl;)Z

    move-result v0

    goto :goto_1

    .line 35
    :cond_5
    invoke-static {p1}, Lcom/flurry/android/aw;->l(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v5

    .line 36
    if-nez v5, :cond_6

    move-object v0, v6

    .line 37
    goto :goto_0

    :cond_6
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 40
    invoke-virtual/range {v0 .. v5}, Lcom/flurry/android/ff;->a(Landroid/content/Context;Lcom/flurry/android/FlurryAds;Lcom/flurry/android/cw;Lcom/flurry/android/AdUnit;Landroid/os/Bundle;)Lcom/flurry/android/ae;

    move-result-object v0

    goto :goto_0
.end method

.method protected abstract a(Landroid/content/Context;Lcom/flurry/android/FlurryAds;Lcom/flurry/android/cw;Lcom/flurry/android/AdUnit;Landroid/os/Bundle;)Lcom/flurry/android/ae;
.end method

.method protected abstract a(Landroid/content/Context;Lcom/flurry/android/FlurryAds;Lcom/flurry/android/cw;Lcom/flurry/android/AdCreative;Landroid/os/Bundle;)Lcom/flurry/android/p;
.end method

.method protected aj()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 132
    invoke-virtual {p0}, Lcom/flurry/android/ff;->S()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected ak()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 144
    invoke-virtual {p0}, Lcom/flurry/android/ff;->S()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final b(Landroid/content/Context;Lcom/flurry/android/FlurryAds;Lcom/flurry/android/cw;Lcom/flurry/android/AdUnit;)Lcom/flurry/android/p;
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 46
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-nez p4, :cond_1

    :cond_0
    move-object v0, v6

    .line 65
    :goto_0
    return-object v0

    .line 50
    :cond_1
    invoke-virtual {p0}, Lcom/flurry/android/ff;->O()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/flurry/android/ff;->R()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Lcom/flurry/android/ff;->ak()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0}, Lcom/flurry/android/ff;->T()Ljava/util/List;

    move-result-object v4

    new-instance v0, Lcom/flurry/android/gl;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/flurry/android/gl;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 51
    if-eqz p1, :cond_2

    if-nez v0, :cond_3

    :cond_2
    move v0, v7

    :goto_1
    if-nez v0, :cond_5

    move-object v0, v6

    .line 52
    goto :goto_0

    .line 51
    :cond_3
    new-instance v1, Lcom/flurry/android/ai;

    invoke-direct {v1}, Lcom/flurry/android/ai;-><init>()V

    if-nez v1, :cond_4

    move v0, v7

    goto :goto_1

    :cond_4
    invoke-interface {v1, p1, v0}, Lcom/flurry/android/gj;->a(Landroid/content/Context;Lcom/flurry/android/gl;)Z

    move-result v0

    goto :goto_1

    .line 55
    :cond_5
    invoke-static {p1}, Lcom/flurry/android/aw;->l(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v5

    .line 56
    if-nez v5, :cond_6

    move-object v0, v6

    .line 57
    goto :goto_0

    .line 60
    :cond_6
    if-nez p4, :cond_7

    move-object v4, v6

    .line 61
    :goto_2
    if-nez v4, :cond_c

    move-object v0, v6

    .line 62
    goto :goto_0

    .line 60
    :cond_7
    invoke-virtual {p4}, Lcom/flurry/android/AdUnit;->getAdFrames()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_9

    :cond_8
    move-object v4, v6

    goto :goto_2

    :cond_9
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/AdFrame;

    if-nez v0, :cond_a

    move-object v4, v6

    goto :goto_2

    :cond_a
    invoke-virtual {v0}, Lcom/flurry/android/AdFrame;->getAdSpaceLayout()Lcom/flurry/android/AdSpaceLayout;

    move-result-object v0

    if-nez v0, :cond_b

    move-object v4, v6

    goto :goto_2

    :cond_b
    invoke-static {v0}, Lcom/flurry/android/ct;->b(Lcom/flurry/android/AdSpaceLayout;)Lcom/flurry/android/AdCreative;

    move-result-object v4

    goto :goto_2

    :cond_c
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 65
    invoke-virtual/range {v0 .. v5}, Lcom/flurry/android/ff;->a(Landroid/content/Context;Lcom/flurry/android/FlurryAds;Lcom/flurry/android/cw;Lcom/flurry/android/AdCreative;Landroid/os/Bundle;)Lcom/flurry/android/p;

    move-result-object v0

    goto :goto_0
.end method
