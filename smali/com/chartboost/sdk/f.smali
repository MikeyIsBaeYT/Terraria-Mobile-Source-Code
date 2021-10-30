.class public abstract Lcom/chartboost/sdk/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chartboost/sdk/f$b;,
        Lcom/chartboost/sdk/f$a;
    }
.end annotation


# static fields
.field public static a:Landroid/os/Handler;


# instance fields
.field public b:Z

.field protected c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/chartboost/sdk/f$b;",
            ">;"
        }
    .end annotation
.end field

.field protected d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/chartboost/sdk/f$b;",
            ">;"
        }
    .end annotation
.end field

.field protected e:Lcom/chartboost/sdk/Libraries/e$a;

.field protected f:Lcom/chartboost/sdk/Model/a;

.field protected g:Lcom/chartboost/sdk/Libraries/f;

.field public h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field protected i:Z

.field protected j:Z

.field private k:Z

.field private l:Lcom/chartboost/sdk/f$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    invoke-static {}, Lcom/chartboost/sdk/Libraries/CBUtility;->e()Landroid/os/Handler;

    move-result-object v0

    sput-object v0, Lcom/chartboost/sdk/f;->a:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Lcom/chartboost/sdk/Model/a;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-boolean v1, p0, Lcom/chartboost/sdk/f;->b:Z

    .line 201
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/chartboost/sdk/f;->c:Ljava/util/List;

    .line 202
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/chartboost/sdk/f;->d:Ljava/util/List;

    .line 209
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/chartboost/sdk/f;->h:Ljava/util/Map;

    .line 211
    iput-boolean v2, p0, Lcom/chartboost/sdk/f;->i:Z

    iput-boolean v2, p0, Lcom/chartboost/sdk/f;->j:Z

    .line 214
    iput-object p1, p0, Lcom/chartboost/sdk/f;->f:Lcom/chartboost/sdk/Model/a;

    .line 215
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chartboost/sdk/f;->l:Lcom/chartboost/sdk/f$a;

    .line 216
    invoke-static {}, Lcom/chartboost/sdk/Libraries/CBUtility;->c()Lcom/chartboost/sdk/Libraries/f;

    move-result-object v0

    iput-object v0, p0, Lcom/chartboost/sdk/f;->g:Lcom/chartboost/sdk/Libraries/f;

    .line 217
    iput-boolean v1, p0, Lcom/chartboost/sdk/f;->k:Z

    .line 218
    return-void
.end method

.method public static a(Ljava/lang/String;)I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 398
    if-eqz p0, :cond_0

    .line 399
    const-string v0, "#"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 401
    :try_start_0
    invoke-static {p0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 424
    :cond_0
    :goto_0
    return v1

    .line 403
    :catch_0
    move-exception v0

    .line 406
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 409
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x5

    if-ne v0, v2, :cond_4

    .line 410
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 411
    const-string v0, "#"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v1

    .line 412
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 413
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 414
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 412
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 416
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 419
    :cond_4
    :try_start_1
    invoke-static {p0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    goto :goto_0

    .line 420
    :catch_1
    move-exception v0

    .line 421
    const-string v2, "CBViewProtocol"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error parsing color "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/chartboost/sdk/f;Lcom/chartboost/sdk/f$a;)Lcom/chartboost/sdk/f$a;
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/chartboost/sdk/f;->l:Lcom/chartboost/sdk/f$a;

    return-object p1
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 182
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/chartboost/sdk/f;Z)Z
    .locals 0

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/chartboost/sdk/f;->k:Z

    return p1
.end method


# virtual methods
.method public a()Lcom/chartboost/sdk/Libraries/f;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/chartboost/sdk/f;->g:Lcom/chartboost/sdk/Libraries/f;

    return-object v0
.end method

.method protected a(Landroid/view/View;Ljava/lang/Runnable;J)V
    .locals 3

    .prologue
    .line 389
    iget-object v0, p0, Lcom/chartboost/sdk/f;->h:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 390
    if-eqz v0, :cond_0

    .line 391
    sget-object v1, Lcom/chartboost/sdk/f;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 392
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/f;->h:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    sget-object v0, Lcom/chartboost/sdk/f;->a:Landroid/os/Handler;

    invoke-virtual {v0, p2, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 394
    return-void
.end method

.method protected a(Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lcom/chartboost/sdk/f;->f:Lcom/chartboost/sdk/Model/a;

    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/Model/a;->a(Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    .line 336
    return-void
.end method

.method public a(Lcom/chartboost/sdk/f$b;)V
    .locals 2

    .prologue
    .line 242
    invoke-interface {p1}, Lcom/chartboost/sdk/f$b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/chartboost/sdk/f;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/f;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 245
    iget-object v0, p0, Lcom/chartboost/sdk/f;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 246
    invoke-virtual {p0}, Lcom/chartboost/sdk/f;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 251
    :cond_1
    :goto_0
    return-void

    .line 248
    :cond_2
    const-string v0, "CBViewProtocol"

    const-string v1, "Error while downloading the assets"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 249
    sget-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->ASSETS_DOWNLOAD_FAILURE:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/f;->a(Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    goto :goto_0
.end method

.method public a(ZLandroid/view/View;)V
    .locals 1

    .prologue
    .line 359
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/chartboost/sdk/f;->a(ZLandroid/view/View;Z)V

    .line 360
    return-void
.end method

.method public a(ZLandroid/view/View;Z)V
    .locals 6

    .prologue
    const-wide/16 v4, 0xfa

    const/16 v0, 0x8

    .line 364
    if-eqz p1, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    if-nez p1, :cond_2

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-ne v1, v0, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/chartboost/sdk/f;->h:Ljava/util/Map;

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    .line 385
    :goto_0
    return-void

    .line 368
    :cond_2
    if-nez p3, :cond_4

    .line 369
    if-eqz p1, :cond_3

    const/4 v0, 0x0

    :cond_3
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 370
    invoke-virtual {p2, p1}, Landroid/view/View;->setClickable(Z)V

    goto :goto_0

    .line 373
    :cond_4
    new-instance v0, Lcom/chartboost/sdk/f$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/chartboost/sdk/f$1;-><init>(Lcom/chartboost/sdk/f;ZLandroid/view/View;)V

    .line 382
    invoke-static {p1, p2, v4, v5}, Lcom/chartboost/sdk/impl/bh;->a(ZLandroid/view/View;J)V

    .line 384
    invoke-virtual {p0, p2, v0, v4, v5}, Lcom/chartboost/sdk/f;->a(Landroid/view/View;Ljava/lang/Runnable;J)V

    goto :goto_0
.end method

.method public a(Lcom/chartboost/sdk/Libraries/e$a;)Z
    .locals 2

    .prologue
    .line 226
    const-string v0, "assets"

    invoke-virtual {p1, v0}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v0

    iput-object v0, p0, Lcom/chartboost/sdk/f;->e:Lcom/chartboost/sdk/Libraries/e$a;

    .line 227
    iget-object v0, p0, Lcom/chartboost/sdk/f;->e:Lcom/chartboost/sdk/Libraries/e$a;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/e$a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 228
    const-string v0, "CBViewProtocol"

    const-string v1, "Assets got from the response is null or empty"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 229
    sget-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->INVALID_RESPONSE:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/f;->a(Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    .line 230
    const/4 v0, 0x0

    .line 232
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/e$a;)Z
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lcom/chartboost/sdk/f;->f:Lcom/chartboost/sdk/Model/a;

    invoke-virtual {v0, p1, p2}, Lcom/chartboost/sdk/Model/a;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/e$a;)Z

    move-result v0

    return v0
.end method

.method protected abstract b(Landroid/content/Context;)Lcom/chartboost/sdk/f$a;
.end method

.method public b(Lcom/chartboost/sdk/f$b;)V
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lcom/chartboost/sdk/f;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 330
    iget-object v0, p0, Lcom/chartboost/sdk/f;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 331
    return-void
.end method

.method public b()Z
    .locals 2

    .prologue
    .line 256
    iget-object v0, p0, Lcom/chartboost/sdk/f;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 257
    const-string v0, "CBViewProtocol"

    const-string v1, "not completed loading assets for impression"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 258
    const/4 v0, 0x0

    .line 262
    :goto_0
    return v0

    .line 261
    :cond_0
    invoke-virtual {p0}, Lcom/chartboost/sdk/f;->i()V

    .line 262
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public c()Lcom/chartboost/sdk/Model/CBError$CBImpressionError;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 270
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->f()Landroid/app/Activity;

    move-result-object v1

    .line 271
    if-nez v1, :cond_1

    .line 272
    iput-object v0, p0, Lcom/chartboost/sdk/f;->l:Lcom/chartboost/sdk/f$a;

    .line 274
    sget-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->NO_HOST_ACTIVITY:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    .line 292
    :cond_0
    :goto_0
    return-object v0

    .line 277
    :cond_1
    iget-boolean v2, p0, Lcom/chartboost/sdk/f;->j:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/chartboost/sdk/f;->i:Z

    if-nez v2, :cond_2

    .line 278
    sget-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->WRONG_ORIENTATION:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    goto :goto_0

    .line 280
    :cond_2
    invoke-static {}, Lcom/chartboost/sdk/Libraries/CBUtility;->c()Lcom/chartboost/sdk/Libraries/f;

    move-result-object v2

    iput-object v2, p0, Lcom/chartboost/sdk/f;->g:Lcom/chartboost/sdk/Libraries/f;

    .line 281
    iget-object v2, p0, Lcom/chartboost/sdk/f;->g:Lcom/chartboost/sdk/Libraries/f;

    invoke-virtual {v2}, Lcom/chartboost/sdk/Libraries/f;->c()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/chartboost/sdk/f;->j:Z

    if-eqz v2, :cond_4

    :cond_3
    iget-object v2, p0, Lcom/chartboost/sdk/f;->g:Lcom/chartboost/sdk/Libraries/f;

    invoke-virtual {v2}, Lcom/chartboost/sdk/Libraries/f;->b()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-boolean v2, p0, Lcom/chartboost/sdk/f;->i:Z

    if-nez v2, :cond_5

    .line 283
    :cond_4
    iget-object v2, p0, Lcom/chartboost/sdk/f;->g:Lcom/chartboost/sdk/Libraries/f;

    invoke-virtual {v2}, Lcom/chartboost/sdk/Libraries/f;->a()Lcom/chartboost/sdk/Libraries/f;

    move-result-object v2

    iput-object v2, p0, Lcom/chartboost/sdk/f;->g:Lcom/chartboost/sdk/Libraries/f;

    .line 285
    :cond_5
    iget-object v2, p0, Lcom/chartboost/sdk/f;->l:Lcom/chartboost/sdk/f$a;

    if-nez v2, :cond_6

    .line 286
    invoke-virtual {p0, v1}, Lcom/chartboost/sdk/f;->b(Landroid/content/Context;)Lcom/chartboost/sdk/f$a;

    move-result-object v2

    iput-object v2, p0, Lcom/chartboost/sdk/f;->l:Lcom/chartboost/sdk/f$a;

    .line 288
    :cond_6
    iget-object v2, p0, Lcom/chartboost/sdk/f;->l:Lcom/chartboost/sdk/f$a;

    invoke-virtual {v2, v1}, Lcom/chartboost/sdk/f$a;->a(Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 291
    iput-object v0, p0, Lcom/chartboost/sdk/f;->l:Lcom/chartboost/sdk/f$a;

    .line 292
    sget-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->ERROR_CREATING_VIEW:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    goto :goto_0
.end method

.method public d()V
    .locals 4

    .prologue
    .line 302
    invoke-virtual {p0}, Lcom/chartboost/sdk/f;->f()V

    .line 304
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/chartboost/sdk/f;->h:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 305
    sget-object v2, Lcom/chartboost/sdk/f;->a:Landroid/os/Handler;

    iget-object v0, p0, Lcom/chartboost/sdk/f;->h:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 304
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 306
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/f;->h:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 307
    return-void
.end method

.method public e()Lcom/chartboost/sdk/f$a;
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lcom/chartboost/sdk/f;->l:Lcom/chartboost/sdk/f$a;

    return-object v0
.end method

.method public f()V
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lcom/chartboost/sdk/f;->l:Lcom/chartboost/sdk/f$a;

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/chartboost/sdk/f;->l:Lcom/chartboost/sdk/f$a;

    invoke-virtual {v0}, Lcom/chartboost/sdk/f$a;->b()V

    .line 319
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chartboost/sdk/f;->l:Lcom/chartboost/sdk/f$a;

    .line 320
    return-void
.end method

.method public g()Lcom/chartboost/sdk/Libraries/e$a;
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lcom/chartboost/sdk/f;->e:Lcom/chartboost/sdk/Libraries/e$a;

    return-object v0
.end method

.method protected h()V
    .locals 1

    .prologue
    .line 340
    iget-boolean v0, p0, Lcom/chartboost/sdk/f;->k:Z

    if-eqz v0, :cond_0

    .line 344
    :goto_0
    return-void

    .line 342
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/chartboost/sdk/f;->k:Z

    .line 343
    iget-object v0, p0, Lcom/chartboost/sdk/f;->f:Lcom/chartboost/sdk/Model/a;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Model/a;->b()V

    goto :goto_0
.end method

.method protected i()V
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lcom/chartboost/sdk/f;->f:Lcom/chartboost/sdk/Model/a;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Model/a;->c()V

    .line 349
    return-void
.end method

.method public j()Z
    .locals 1

    .prologue
    .line 429
    const/4 v0, 0x0

    return v0
.end method

.method public k()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 436
    iget-boolean v0, p0, Lcom/chartboost/sdk/f;->b:Z

    if-eqz v0, :cond_0

    .line 437
    iput-boolean v2, p0, Lcom/chartboost/sdk/f;->b:Z

    .line 438
    :cond_0
    invoke-virtual {p0}, Lcom/chartboost/sdk/f;->e()Lcom/chartboost/sdk/f$a;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/chartboost/sdk/Libraries/CBUtility;->c()Lcom/chartboost/sdk/Libraries/f;

    move-result-object v0

    invoke-virtual {p0}, Lcom/chartboost/sdk/f;->e()Lcom/chartboost/sdk/f$a;

    move-result-object v1

    invoke-static {v1}, Lcom/chartboost/sdk/f$a;->a(Lcom/chartboost/sdk/f$a;)Lcom/chartboost/sdk/Libraries/f;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 439
    invoke-virtual {p0}, Lcom/chartboost/sdk/f;->e()Lcom/chartboost/sdk/f$a;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/f$a;->a(Z)V

    .line 440
    :cond_1
    return-void
.end method

.method public l()V
    .locals 1

    .prologue
    .line 445
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/chartboost/sdk/f;->b:Z

    .line 446
    return-void
.end method
