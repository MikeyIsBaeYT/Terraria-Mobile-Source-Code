.class public abstract Lcom/chartboost/sdk/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chartboost/sdk/d$a;
    }
.end annotation


# static fields
.field protected static a:Landroid/os/Handler;


# instance fields
.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/chartboost/sdk/Model/a;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/chartboost/sdk/Model/a;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/chartboost/sdk/Model/a;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/chartboost/sdk/d$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    invoke-static {}, Lcom/chartboost/sdk/Libraries/CBUtility;->e()Landroid/os/Handler;

    move-result-object v0

    sput-object v0, Lcom/chartboost/sdk/d;->a:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 448
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chartboost/sdk/d;->e:Lcom/chartboost/sdk/d$a;

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/chartboost/sdk/d;->c:Ljava/util/Map;

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/chartboost/sdk/d;->b:Ljava/util/Map;

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/chartboost/sdk/d;->d:Ljava/util/Map;

    .line 52
    return-void
.end method

.method private b(Lcom/chartboost/sdk/Model/a;Z)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 257
    iget-object v0, p1, Lcom/chartboost/sdk/Model/a;->b:Lcom/chartboost/sdk/Model/a$b;

    sget-object v2, Lcom/chartboost/sdk/Model/a$b;->d:Lcom/chartboost/sdk/Model/a$b;

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    .line 258
    :goto_0
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/d;->i(Lcom/chartboost/sdk/Model/a;)V

    .line 260
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->h()Lcom/chartboost/sdk/e;

    move-result-object v2

    .line 261
    if-eqz v2, :cond_0

    .line 262
    invoke-virtual {v2}, Lcom/chartboost/sdk/e;->b()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 263
    invoke-virtual {v2, p1, v1}, Lcom/chartboost/sdk/e;->a(Lcom/chartboost/sdk/Model/a;Z)V

    .line 270
    :cond_0
    if-eqz p2, :cond_3

    .line 271
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/d;->h(Lcom/chartboost/sdk/Model/a;)V

    .line 275
    :goto_1
    return-void

    :cond_1
    move v0, v1

    .line 257
    goto :goto_0

    .line 264
    :cond_2
    iget-boolean v1, p1, Lcom/chartboost/sdk/Model/a;->i:Z

    if-eqz v1, :cond_0

    .line 265
    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/chartboost/sdk/Model/a;->b:Lcom/chartboost/sdk/Model/a$b;

    sget-object v1, Lcom/chartboost/sdk/Model/a$b;->c:Lcom/chartboost/sdk/Model/a$b;

    if-eq v0, v1, :cond_0

    goto :goto_1

    .line 273
    :cond_3
    invoke-static {p1}, Lcom/chartboost/sdk/Chartboost;->a(Lcom/chartboost/sdk/Model/a;)V

    goto :goto_1
.end method

.method private final declared-synchronized r(Lcom/chartboost/sdk/Model/a;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 175
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/d;->n(Lcom/chartboost/sdk/Model/a;)Lcom/chartboost/sdk/Model/a;

    move-result-object v2

    .line 176
    if-eqz v2, :cond_0

    .line 177
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "%s %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "Request already in process for impression with location"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p1, Lcom/chartboost/sdk/Model/a;->d:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    :goto_0
    monitor-exit p0

    return v0

    .line 180
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/d;->p(Lcom/chartboost/sdk/Model/a;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v1

    .line 181
    goto :goto_0

    .line 175
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method protected abstract a(Ljava/lang/String;Z)Lcom/chartboost/sdk/Model/a;
.end method

.method protected a()V
    .locals 1

    .prologue
    .line 437
    iget-object v0, p0, Lcom/chartboost/sdk/d;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 438
    return-void
.end method

.method protected a(Lcom/chartboost/sdk/Model/a;)V
    .locals 1

    .prologue
    .line 104
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/d;->q(Lcom/chartboost/sdk/Model/a;)V

    .line 105
    invoke-virtual {p0}, Lcom/chartboost/sdk/d;->b()Lcom/chartboost/sdk/d$a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/chartboost/sdk/d$a;->d(Lcom/chartboost/sdk/Model/a;)V

    .line 106
    sget-object v0, Lcom/chartboost/sdk/Model/a$b;->d:Lcom/chartboost/sdk/Model/a$b;

    iput-object v0, p1, Lcom/chartboost/sdk/Model/a;->b:Lcom/chartboost/sdk/Model/a$b;

    .line 107
    return-void
.end method

.method protected a(Lcom/chartboost/sdk/Model/a;Lcom/chartboost/sdk/Libraries/e$a;)V
    .locals 3

    .prologue
    .line 341
    const-string v0, "status"

    invoke-virtual {p2, v0}, Lcom/chartboost/sdk/Libraries/e$a;->f(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x194

    if-ne v0, v1, :cond_0

    .line 342
    iget-object v0, p1, Lcom/chartboost/sdk/Model/a;->c:Lcom/chartboost/sdk/Model/a$c;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid status code"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "status"

    invoke-virtual {p2, v2}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 343
    sget-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->NO_AD_FOUND:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-virtual {p0, p1, v0}, Lcom/chartboost/sdk/d;->a(Lcom/chartboost/sdk/Model/a;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    .line 354
    :goto_0
    return-void

    .line 345
    :cond_0
    const-string v0, "status"

    invoke-virtual {p2, v0}, Lcom/chartboost/sdk/Libraries/e$a;->f(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_1

    .line 346
    iget-object v0, p1, Lcom/chartboost/sdk/Model/a;->c:Lcom/chartboost/sdk/Model/a$c;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid status code"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "status"

    invoke-virtual {p2, v2}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 347
    sget-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->INVALID_RESPONSE:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-virtual {p0, p1, v0}, Lcom/chartboost/sdk/d;->a(Lcom/chartboost/sdk/Model/a;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    goto :goto_0

    .line 352
    :cond_1
    invoke-virtual {p0}, Lcom/chartboost/sdk/d;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/chartboost/sdk/Model/a;->p()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p1, Lcom/chartboost/sdk/Model/a;->f:Z

    invoke-static {v0, v1, v2}, Lcom/chartboost/sdk/Tracking/a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 353
    invoke-static {}, Lcom/chartboost/sdk/c;->a()Lcom/chartboost/sdk/c;

    move-result-object v0

    iget-object v0, v0, Lcom/chartboost/sdk/c;->a:Lcom/chartboost/sdk/Model/a$a;

    invoke-virtual {p1, p2, v0}, Lcom/chartboost/sdk/Model/a;->a(Lcom/chartboost/sdk/Libraries/e$a;Lcom/chartboost/sdk/Model/a$a;)V

    goto :goto_0
.end method

.method protected a(Lcom/chartboost/sdk/Model/a;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V
    .locals 2

    .prologue
    .line 186
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/d;->o(Lcom/chartboost/sdk/Model/a;)V

    .line 188
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->h()Lcom/chartboost/sdk/e;

    move-result-object v0

    .line 189
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/chartboost/sdk/e;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 190
    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/chartboost/sdk/e;->a(Lcom/chartboost/sdk/Model/a;Z)V

    .line 195
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/chartboost/sdk/d;->e()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/chartboost/sdk/Model/a;->d:Ljava/lang/String;

    invoke-static {v0, v1, p2}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    .line 197
    invoke-virtual {p0}, Lcom/chartboost/sdk/d;->b()Lcom/chartboost/sdk/d$a;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/chartboost/sdk/d$a;->a(Lcom/chartboost/sdk/Model/a;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    .line 198
    return-void

    .line 191
    :cond_1
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/chartboost/sdk/e;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 192
    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/e;->b(Lcom/chartboost/sdk/Model/a;)V

    goto :goto_0
.end method

.method public a(Lcom/chartboost/sdk/Model/a;Z)V
    .locals 0

    .prologue
    .line 499
    return-void
.end method

.method protected final a(Lcom/chartboost/sdk/impl/az;Lcom/chartboost/sdk/Model/a;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 362
    const-string v0, "location"

    iget-object v1, p2, Lcom/chartboost/sdk/Model/a;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/chartboost/sdk/impl/az;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 363
    iget-boolean v0, p2, Lcom/chartboost/sdk/Model/a;->f:Z

    if-eqz v0, :cond_0

    .line 364
    const-string v0, "cache"

    const-string v1, "1"

    invoke-virtual {p1, v0, v1}, Lcom/chartboost/sdk/impl/az;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 365
    invoke-virtual {p1, v2}, Lcom/chartboost/sdk/impl/az;->b(Z)V

    .line 367
    :cond_0
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->getValidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/chartboost/sdk/impl/az;->b(Landroid/content/Context;)V

    .line 369
    iput-boolean v2, p2, Lcom/chartboost/sdk/Model/a;->q:Z

    .line 370
    new-instance v0, Lcom/chartboost/sdk/d$3;

    invoke-direct {v0, p0, p2}, Lcom/chartboost/sdk/d$3;-><init>(Lcom/chartboost/sdk/d;Lcom/chartboost/sdk/Model/a;)V

    invoke-virtual {p1, v0}, Lcom/chartboost/sdk/impl/az;->a(Lcom/chartboost/sdk/impl/az$c;)V

    .line 389
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 56
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/chartboost/sdk/d;->a(Ljava/lang/String;Z)Lcom/chartboost/sdk/Model/a;

    move-result-object v0

    .line 58
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->h()Lcom/chartboost/sdk/e;

    move-result-object v1

    .line 59
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/chartboost/sdk/e;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 60
    sget-object v1, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->IMPRESSION_ALREADY_VISIBLE:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-virtual {p0, v0, v1}, Lcom/chartboost/sdk/d;->a(Lcom/chartboost/sdk/Model/a;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    .line 79
    :cond_0
    :goto_0
    return-void

    .line 64
    :cond_1
    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/d;->b(Lcom/chartboost/sdk/Model/a;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 67
    sget-object v1, Lcom/chartboost/sdk/d;->a:Landroid/os/Handler;

    new-instance v2, Lcom/chartboost/sdk/d$1;

    invoke-direct {v2, p0, p1, v0}, Lcom/chartboost/sdk/d$1;-><init>(Lcom/chartboost/sdk/d;Ljava/lang/String;Lcom/chartboost/sdk/Model/a;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method protected final b()Lcom/chartboost/sdk/d$a;
    .locals 1

    .prologue
    .line 451
    iget-object v0, p0, Lcom/chartboost/sdk/d;->e:Lcom/chartboost/sdk/d$a;

    if-nez v0, :cond_0

    .line 452
    invoke-virtual {p0}, Lcom/chartboost/sdk/d;->c()Lcom/chartboost/sdk/d$a;

    move-result-object v0

    iput-object v0, p0, Lcom/chartboost/sdk/d;->e:Lcom/chartboost/sdk/d$a;

    .line 453
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/d;->e:Lcom/chartboost/sdk/d$a;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/d;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 88
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/d;->d(Ljava/lang/String;)Lcom/chartboost/sdk/Model/a;

    move-result-object v0

    .line 89
    if-eqz v0, :cond_0

    .line 90
    invoke-virtual {p0}, Lcom/chartboost/sdk/d;->b()Lcom/chartboost/sdk/d$a;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/chartboost/sdk/d$a;->d(Lcom/chartboost/sdk/Model/a;)V

    .line 100
    :cond_0
    :goto_0
    return-void

    .line 95
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/chartboost/sdk/d;->a(Ljava/lang/String;Z)Lcom/chartboost/sdk/Model/a;

    move-result-object v0

    .line 96
    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/d;->b(Lcom/chartboost/sdk/Model/a;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 99
    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/d;->c(Lcom/chartboost/sdk/Model/a;)V

    goto :goto_0
.end method

.method protected final b(Lcom/chartboost/sdk/Model/a;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 114
    invoke-virtual {p0}, Lcom/chartboost/sdk/d;->b()Lcom/chartboost/sdk/d$a;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/chartboost/sdk/d$a;->h(Lcom/chartboost/sdk/Model/a;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 122
    :cond_0
    :goto_0
    return v0

    .line 117
    :cond_1
    invoke-static {}, Lcom/chartboost/sdk/Libraries/CBUtility;->a()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "cbPrefSessionCount"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 118
    if-ne v2, v1, :cond_0

    .line 119
    sget-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->FIRST_SESSION_INTERSTITIALS_DISABLED:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-virtual {p0, p1, v0}, Lcom/chartboost/sdk/d;->a(Lcom/chartboost/sdk/Model/a;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    move v0, v1

    .line 120
    goto :goto_0
.end method

.method protected abstract c()Lcom/chartboost/sdk/d$a;
.end method

.method protected c(Lcom/chartboost/sdk/Model/a;)V
    .locals 3

    .prologue
    .line 127
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/d;->f(Lcom/chartboost/sdk/Model/a;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 158
    :cond_0
    :goto_0
    return-void

    .line 130
    :cond_1
    invoke-virtual {p0}, Lcom/chartboost/sdk/d;->b()Lcom/chartboost/sdk/d$a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/chartboost/sdk/d$a;->g(Lcom/chartboost/sdk/Model/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    invoke-direct {p0, p1}, Lcom/chartboost/sdk/d;->r(Lcom/chartboost/sdk/Model/a;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 139
    iget-boolean v0, p1, Lcom/chartboost/sdk/Model/a;->f:Z

    if-nez v0, :cond_2

    .line 140
    invoke-static {}, Lcom/chartboost/sdk/b;->t()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 141
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/chartboost/sdk/Model/a;->i:Z

    .line 142
    invoke-static {p1}, Lcom/chartboost/sdk/Chartboost;->a(Lcom/chartboost/sdk/Model/a;)V

    .line 146
    :cond_2
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/d;->d(Lcom/chartboost/sdk/Model/a;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 147
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/d;->o(Lcom/chartboost/sdk/Model/a;)V

    goto :goto_0

    .line 151
    :cond_3
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/d;->e(Lcom/chartboost/sdk/Model/a;)Lcom/chartboost/sdk/impl/az;

    move-result-object v0

    .line 152
    if-eqz v0, :cond_0

    .line 153
    invoke-virtual {p0, v0, p1}, Lcom/chartboost/sdk/d;->a(Lcom/chartboost/sdk/impl/az;Lcom/chartboost/sdk/Model/a;)V

    .line 155
    invoke-virtual {p0}, Lcom/chartboost/sdk/d;->e()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/chartboost/sdk/Model/a;->d:Ljava/lang/String;

    iget-boolean v2, p1, Lcom/chartboost/sdk/Model/a;->f:Z

    invoke-static {v0, v1, v2}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public c(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 418
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/d;->d(Ljava/lang/String;)Lcom/chartboost/sdk/Model/a;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected d()Landroid/content/Context;
    .locals 3

    .prologue
    .line 475
    :try_start_0
    const-class v0, Lcom/chartboost/sdk/Chartboost;

    const-string v1, "getValidContext"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 476
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 477
    const/4 v1, 0x0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 482
    :goto_0
    return-object v0

    .line 478
    :catch_0
    move-exception v0

    .line 479
    const-string v1, "Error encountered getting valid context"

    invoke-static {p0, v1, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 480
    invoke-static {v0}, Lcom/chartboost/sdk/Libraries/CBUtility;->throwProguardError(Ljava/lang/Exception;)V

    .line 482
    invoke-static {}, Lcom/chartboost/sdk/b;->v()Landroid/content/Context;

    move-result-object v0

    goto :goto_0
.end method

.method protected d(Ljava/lang/String;)Lcom/chartboost/sdk/Model/a;
    .locals 2

    .prologue
    .line 423
    iget-object v0, p0, Lcom/chartboost/sdk/d;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/Model/a;

    .line 424
    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/d;->m(Lcom/chartboost/sdk/Model/a;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 427
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected d(Lcom/chartboost/sdk/Model/a;)Z
    .locals 1

    .prologue
    .line 162
    const/4 v0, 0x1

    return v0
.end method

.method protected abstract e(Lcom/chartboost/sdk/Model/a;)Lcom/chartboost/sdk/impl/az;
.end method

.method public abstract e()Ljava/lang/String;
.end method

.method protected e(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 432
    iget-object v0, p0, Lcom/chartboost/sdk/d;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    return-void
.end method

.method protected final f(Lcom/chartboost/sdk/Model/a;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 207
    invoke-static {}, Lcom/chartboost/sdk/b;->m()Z

    move-result v1

    if-nez v1, :cond_0

    .line 208
    sget-object v1, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->SESSION_NOT_STARTED:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-virtual {p0, p1, v1}, Lcom/chartboost/sdk/d;->a(Lcom/chartboost/sdk/Model/a;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    .line 225
    :goto_0
    return v0

    .line 213
    :cond_0
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->h()Lcom/chartboost/sdk/e;

    move-result-object v1

    .line 214
    iget-boolean v2, p1, Lcom/chartboost/sdk/Model/a;->f:Z

    if-nez v2, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/chartboost/sdk/e;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 215
    sget-object v1, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->IMPRESSION_ALREADY_VISIBLE:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-virtual {p0, p1, v1}, Lcom/chartboost/sdk/d;->a(Lcom/chartboost/sdk/Model/a;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    goto :goto_0

    .line 220
    :cond_1
    invoke-static {}, Lcom/chartboost/sdk/impl/ay;->a()Lcom/chartboost/sdk/impl/ay;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chartboost/sdk/impl/ay;->c()Z

    move-result v1

    if-nez v1, :cond_2

    .line 221
    sget-object v1, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->INTERNET_UNAVAILABLE:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-virtual {p0, p1, v1}, Lcom/chartboost/sdk/d;->a(Lcom/chartboost/sdk/Model/a;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    goto :goto_0

    .line 225
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected g(Lcom/chartboost/sdk/Model/a;)V
    .locals 3

    .prologue
    .line 229
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/d;->o(Lcom/chartboost/sdk/Model/a;)V

    .line 230
    iget-object v0, p1, Lcom/chartboost/sdk/Model/a;->b:Lcom/chartboost/sdk/Model/a$b;

    sget-object v1, Lcom/chartboost/sdk/Model/a$b;->c:Lcom/chartboost/sdk/Model/a$b;

    if-eq v0, v1, :cond_1

    const/4 v0, 0x1

    move v1, v0

    .line 231
    :goto_0
    if-eqz v1, :cond_3

    .line 232
    invoke-static {}, Lcom/chartboost/sdk/b;->a()Lcom/chartboost/sdk/Chartboost$CBFramework;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/chartboost/sdk/b;->a()Lcom/chartboost/sdk/Chartboost$CBFramework;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/Chartboost$CBFramework;->doesWrapperUseCustomShouldDisplayBehavior()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p1, Lcom/chartboost/sdk/Model/a;->d:Ljava/lang/String;

    if-nez v0, :cond_2

    const-string v0, ""

    .line 236
    :goto_1
    iget-object v2, p0, Lcom/chartboost/sdk/d;->d:Ljava/util/Map;

    invoke-interface {v2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    :cond_0
    invoke-virtual {p0}, Lcom/chartboost/sdk/d;->b()Lcom/chartboost/sdk/d$a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/chartboost/sdk/d$a;->f(Lcom/chartboost/sdk/Model/a;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 242
    :goto_2
    return-void

    .line 230
    :cond_1
    const/4 v0, 0x0

    move v1, v0

    goto :goto_0

    .line 233
    :cond_2
    iget-object v0, p1, Lcom/chartboost/sdk/Model/a;->d:Ljava/lang/String;

    goto :goto_1

    .line 241
    :cond_3
    invoke-direct {p0, p1, v1}, Lcom/chartboost/sdk/d;->b(Lcom/chartboost/sdk/Model/a;Z)V

    goto :goto_2
.end method

.method protected h(Lcom/chartboost/sdk/Model/a;)V
    .locals 0

    .prologue
    .line 280
    invoke-static {p1}, Lcom/chartboost/sdk/Chartboost;->a(Lcom/chartboost/sdk/Model/a;)V

    .line 281
    return-void
.end method

.method protected i(Lcom/chartboost/sdk/Model/a;)V
    .locals 0

    .prologue
    .line 286
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/d;->j(Lcom/chartboost/sdk/Model/a;)V

    .line 287
    return-void
.end method

.method public j(Lcom/chartboost/sdk/Model/a;)V
    .locals 1

    .prologue
    .line 295
    iget-boolean v0, p1, Lcom/chartboost/sdk/Model/a;->g:Z

    if-eqz v0, :cond_1

    .line 302
    :cond_0
    :goto_0
    return-void

    .line 297
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/chartboost/sdk/Model/a;->g:Z

    .line 298
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/chartboost/sdk/Model/a;->f:Z

    .line 299
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/d;->k(Lcom/chartboost/sdk/Model/a;)V

    .line 300
    iget-object v0, p1, Lcom/chartboost/sdk/Model/a;->d:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/d;->d(Ljava/lang/String;)Lcom/chartboost/sdk/Model/a;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 301
    iget-object v0, p1, Lcom/chartboost/sdk/Model/a;->d:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/d;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected k(Lcom/chartboost/sdk/Model/a;)V
    .locals 3

    .prologue
    .line 305
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/d;->l(Lcom/chartboost/sdk/Model/a;)Lcom/chartboost/sdk/impl/az;

    move-result-object v0

    .line 306
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/az;->a(Z)V

    .line 307
    invoke-virtual {p0}, Lcom/chartboost/sdk/d;->d()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/az;->b(Landroid/content/Context;)V

    .line 309
    iget-boolean v1, p1, Lcom/chartboost/sdk/Model/a;->f:Z

    if-eqz v1, :cond_1

    .line 310
    const-string v1, "cached"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Lcom/chartboost/sdk/impl/az;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 314
    :goto_0
    invoke-virtual {p1}, Lcom/chartboost/sdk/Model/a;->w()Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v1

    const-string v2, "ad_id"

    invoke-virtual {v1, v2}, Lcom/chartboost/sdk/Libraries/e$a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 315
    if-eqz v1, :cond_0

    .line 316
    const-string v2, "ad_id"

    invoke-virtual {v0, v2, v1}, Lcom/chartboost/sdk/impl/az;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 317
    :cond_0
    const-string v1, "location"

    iget-object v2, p1, Lcom/chartboost/sdk/Model/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/chartboost/sdk/impl/az;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 318
    new-instance v1, Lcom/chartboost/sdk/d$2;

    invoke-direct {v1, p0, p1}, Lcom/chartboost/sdk/d$2;-><init>(Lcom/chartboost/sdk/d;Lcom/chartboost/sdk/Model/a;)V

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/az;->a(Lcom/chartboost/sdk/impl/az$c;)V

    .line 325
    invoke-virtual {p0}, Lcom/chartboost/sdk/d;->e()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/chartboost/sdk/Model/a;->d:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/chartboost/sdk/Model/a;->p()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    return-void

    .line 312
    :cond_1
    const-string v1, "cached"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/chartboost/sdk/impl/az;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected abstract l(Lcom/chartboost/sdk/Model/a;)Lcom/chartboost/sdk/impl/az;
.end method

.method protected final m(Lcom/chartboost/sdk/Model/a;)Z
    .locals 6

    .prologue
    .line 332
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iget-object v1, p1, Lcom/chartboost/sdk/Model/a;->a:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    .line 333
    const-wide/32 v2, 0x15180

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected declared-synchronized n(Lcom/chartboost/sdk/Model/a;)Lcom/chartboost/sdk/Model/a;
    .locals 2

    .prologue
    .line 395
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 396
    :try_start_0
    iget-object v0, p0, Lcom/chartboost/sdk/d;->b:Ljava/util/Map;

    iget-object v1, p1, Lcom/chartboost/sdk/Model/a;->d:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/Model/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 398
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 395
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized o(Lcom/chartboost/sdk/Model/a;)V
    .locals 2

    .prologue
    .line 403
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 404
    :try_start_0
    iget-object v0, p0, Lcom/chartboost/sdk/d;->b:Ljava/util/Map;

    iget-object v1, p1, Lcom/chartboost/sdk/Model/a;->d:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 405
    :cond_0
    monitor-exit p0

    return-void

    .line 403
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized p(Lcom/chartboost/sdk/Model/a;)V
    .locals 2

    .prologue
    .line 409
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 410
    :try_start_0
    iget-object v0, p0, Lcom/chartboost/sdk/d;->b:Ljava/util/Map;

    iget-object v1, p1, Lcom/chartboost/sdk/Model/a;->d:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 411
    :cond_0
    monitor-exit p0

    return-void

    .line 409
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected q(Lcom/chartboost/sdk/Model/a;)V
    .locals 2

    .prologue
    .line 442
    iget-object v0, p0, Lcom/chartboost/sdk/d;->c:Ljava/util/Map;

    iget-object v1, p1, Lcom/chartboost/sdk/Model/a;->d:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    return-void
.end method
