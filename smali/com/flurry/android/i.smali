.class final Lcom/flurry/android/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/android/ba;


# static fields
.field private static final A:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/flurry/android/ba;",
            ">;"
        }
    .end annotation
.end field

.field private static p:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 19
    const-class v0, Lcom/flurry/android/i;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/android/i;->p:Ljava/lang/String;

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "FLURRY"

    new-instance v2, Lcom/flurry/android/fg;

    invoke-direct {v2}, Lcom/flurry/android/fg;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "THIRD_PARTY"

    new-instance v2, Lcom/flurry/android/bb;

    invoke-direct {v2}, Lcom/flurry/android/bb;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/flurry/android/i;->A:Ljava/util/Map;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/flurry/android/FlurryAds;Lcom/flurry/android/cw;Lcom/flurry/android/AdUnit;)Lcom/flurry/android/ae;
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 31
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-nez p4, :cond_1

    :cond_0
    move-object v0, v1

    .line 47
    :goto_0
    return-object v0

    .line 35
    :cond_1
    if-eqz p4, :cond_6

    invoke-virtual {p4}, Lcom/flurry/android/AdUnit;->getAdFrames()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    move-object v2, v1

    .line 36
    :goto_1
    if-nez v2, :cond_7

    move-object v0, v1

    .line 37
    goto :goto_0

    .line 35
    :cond_3
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/AdFrame;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/flurry/android/AdFrame;->getBinding()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p4}, Lcom/flurry/android/AdUnit;->getCombinable()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v2, v3, :cond_4

    const/4 v2, 0x2

    if-eq v0, v2, :cond_4

    if-eq v0, v3, :cond_4

    const/4 v2, 0x3

    if-ne v0, v2, :cond_5

    :cond_4
    const-string v0, "FLURRY"

    move-object v2, v0

    goto :goto_1

    :cond_5
    const/4 v2, 0x4

    if-ne v0, v2, :cond_6

    const-string v0, "THIRD_PARTY"

    move-object v2, v0

    goto :goto_1

    :cond_6
    move-object v2, v1

    goto :goto_1

    .line 40
    :cond_7
    sget-object v0, Lcom/flurry/android/i;->A:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/ba;

    .line 41
    if-nez v0, :cond_8

    .line 42
    sget-object v0, Lcom/flurry/android/i;->p:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot create ad takeover for type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 43
    goto :goto_0

    .line 46
    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Creating ad takeover for type: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/flurry/android/ba;->a(Landroid/content/Context;Lcom/flurry/android/FlurryAds;Lcom/flurry/android/cw;Lcom/flurry/android/AdUnit;)Lcom/flurry/android/ae;

    move-result-object v0

    goto :goto_0
.end method
