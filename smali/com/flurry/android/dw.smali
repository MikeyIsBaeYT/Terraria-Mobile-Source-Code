.class final Lcom/flurry/android/dw;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final fF:Lcom/flurry/android/dw;


# instance fields
.field private final fG:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/flurry/android/av;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    new-instance v0, Lcom/flurry/android/dw;

    invoke-direct {v0}, Lcom/flurry/android/dw;-><init>()V

    sput-object v0, Lcom/flurry/android/dw;->fF:Lcom/flurry/android/dw;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/flurry/android/dw;->fG:Ljava/util/Map;

    .line 35
    return-void
.end method

.method public static e(Landroid/content/Context;Ljava/lang/String;)Lcom/flurry/android/av;
    .locals 1

    .prologue
    .line 26
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 27
    :cond_0
    const/4 v0, 0x0

    .line 30
    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/flurry/android/dw;->fF:Lcom/flurry/android/dw;

    invoke-direct {v0, p0, p1}, Lcom/flurry/android/dw;->f(Landroid/content/Context;Ljava/lang/String;)Lcom/flurry/android/av;

    move-result-object v0

    goto :goto_0
.end method

.method private declared-synchronized f(Landroid/content/Context;Ljava/lang/String;)Lcom/flurry/android/av;
    .locals 2

    .prologue
    .line 38
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/flurry/android/dw;->fG:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/av;

    .line 39
    if-nez v0, :cond_0

    .line 40
    new-instance v0, Lcom/flurry/android/av;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/flurry/android/av;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 41
    iget-object v1, p0, Lcom/flurry/android/dw;->fG:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    :cond_0
    monitor-exit p0

    return-object v0

    .line 38
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
