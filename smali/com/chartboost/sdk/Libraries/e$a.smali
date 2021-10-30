.class public Lcom/chartboost/sdk/Libraries/e$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/Libraries/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static a:Lcom/chartboost/sdk/Libraries/e$a;

.field private static c:Lorg/json/JSONObject;

.field private static d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static e:Lorg/json/JSONArray;

.field private static f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private b:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 184
    new-instance v0, Lcom/chartboost/sdk/Libraries/e$a;

    invoke-direct {v0, v1}, Lcom/chartboost/sdk/Libraries/e$a;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/chartboost/sdk/Libraries/e$a;->a:Lcom/chartboost/sdk/Libraries/e$a;

    .line 230
    sput-object v1, Lcom/chartboost/sdk/Libraries/e$a;->c:Lorg/json/JSONObject;

    .line 242
    sput-object v1, Lcom/chartboost/sdk/Libraries/e$a;->d:Ljava/util/Map;

    .line 255
    sput-object v1, Lcom/chartboost/sdk/Libraries/e$a;->e:Lorg/json/JSONArray;

    .line 267
    sput-object v1, Lcom/chartboost/sdk/Libraries/e$a;->f:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    iput-object p1, p0, Lcom/chartboost/sdk/Libraries/e$a;->b:Ljava/lang/Object;

    .line 190
    return-void
.end method

.method public static a()Lcom/chartboost/sdk/Libraries/e$a;
    .locals 1

    .prologue
    .line 193
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-static {v0}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;
    .locals 4

    .prologue
    .line 379
    instance-of v0, p0, Lcom/chartboost/sdk/Libraries/e$a;

    if-eqz v0, :cond_0

    .line 380
    check-cast p0, Lcom/chartboost/sdk/Libraries/e$a;

    .line 393
    :goto_0
    return-object p0

    .line 381
    :cond_0
    if-eqz p0, :cond_1

    sget-object v0, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-ne p0, v0, :cond_2

    .line 382
    :cond_1
    sget-object p0, Lcom/chartboost/sdk/Libraries/e$a;->a:Lcom/chartboost/sdk/Libraries/e$a;

    goto :goto_0

    .line 385
    :cond_2
    invoke-static {}, Lcom/chartboost/sdk/Libraries/e;->a()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/Libraries/e$a;

    .line 386
    if-eqz v0, :cond_3

    move-object p0, v0

    .line 387
    goto :goto_0

    .line 389
    :cond_3
    invoke-static {}, Lcom/chartboost/sdk/Libraries/CBUtility;->e()Landroid/os/Handler;

    move-result-object v0

    invoke-static {}, Lcom/chartboost/sdk/Libraries/e;->b()Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 390
    invoke-static {}, Lcom/chartboost/sdk/Libraries/CBUtility;->e()Landroid/os/Handler;

    move-result-object v0

    invoke-static {}, Lcom/chartboost/sdk/Libraries/e;->b()Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 391
    new-instance v0, Lcom/chartboost/sdk/Libraries/e$a;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/Libraries/e$a;-><init>(Ljava/lang/Object;)V

    .line 392
    invoke-static {}, Lcom/chartboost/sdk/Libraries/e;->a()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object p0, v0

    .line 393
    goto :goto_0
.end method

.method public static j(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;
    .locals 3

    .prologue
    .line 485
    if-nez p0, :cond_0

    .line 486
    const-string v0, "CBJSON"

    const-string v1, "null passed when creating new JSON object"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 487
    sget-object v0, Lcom/chartboost/sdk/Libraries/e$a;->a:Lcom/chartboost/sdk/Libraries/e$a;

    .line 496
    :goto_0
    return-object v0

    .line 490
    :cond_0
    if-eqz p0, :cond_1

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 491
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v0

    goto :goto_0

    .line 493
    :cond_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 494
    :catch_0
    move-exception v0

    .line 495
    const-string v1, "CBJSON"

    const-string v2, "error creating new json object"

    invoke-static {v1, v2, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 496
    sget-object v0, Lcom/chartboost/sdk/Libraries/e$a;->a:Lcom/chartboost/sdk/Libraries/e$a;

    goto :goto_0
.end method


# virtual methods
.method public a(D)D
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/e$a;->b:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 296
    :try_start_0
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/e$a;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide p1

    .line 301
    :cond_0
    :goto_0
    return-wide p1

    :cond_1
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/e$a;->b:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Number;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/e$a;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p1

    goto :goto_0

    .line 297
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public a(F)F
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/e$a;->b:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 311
    :try_start_0
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/e$a;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p1

    .line 316
    :cond_0
    :goto_0
    return p1

    :cond_1
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/e$a;->b:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Number;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/e$a;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result p1

    goto :goto_0

    .line 312
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public a(I)I
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/e$a;->b:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 326
    :try_start_0
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/e$a;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p1

    .line 331
    :cond_0
    :goto_0
    return p1

    :cond_1
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/e$a;->b:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Number;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/e$a;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result p1

    goto :goto_0

    .line 327
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/e$a;->b:Ljava/lang/Object;

    instance-of v0, v0, Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/e$a;->b:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v0

    .line 206
    :goto_0
    return-object v0

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/e$a;->b:Ljava/lang/Object;

    instance-of v0, v0, Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 204
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/e$a;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v0

    goto :goto_0

    .line 206
    :cond_1
    sget-object v0, Lcom/chartboost/sdk/Libraries/e$a;->a:Lcom/chartboost/sdk/Libraries/e$a;

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 463
    sput-object v0, Lcom/chartboost/sdk/Libraries/e$a;->c:Lorg/json/JSONObject;

    .line 464
    sput-object v0, Lcom/chartboost/sdk/Libraries/e$a;->e:Lorg/json/JSONArray;

    .line 465
    sput-object v0, Lcom/chartboost/sdk/Libraries/e$a;->d:Ljava/util/Map;

    .line 466
    sput-object v0, Lcom/chartboost/sdk/Libraries/e$a;->f:Ljava/util/List;

    .line 467
    instance-of v0, p2, Lcom/chartboost/sdk/Libraries/e$a;

    if-eqz v0, :cond_0

    .line 468
    check-cast p2, Lcom/chartboost/sdk/Libraries/e$a;

    invoke-virtual {p2}, Lcom/chartboost/sdk/Libraries/e$a;->n()Ljava/lang/Object;

    move-result-object p2

    .line 469
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/e$a;->b:Ljava/lang/Object;

    instance-of v0, v0, Lorg/json/JSONObject;

    if-eqz v0, :cond_2

    .line 471
    :try_start_0
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/e$a;->b:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 482
    :cond_1
    :goto_0
    return-void

    .line 472
    :catch_0
    move-exception v0

    .line 473
    const-string v1, "Error updating balances dictionary."

    invoke-static {p0, v1, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 475
    :cond_2
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/e$a;->b:Ljava/lang/Object;

    instance-of v0, v0, Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 477
    :try_start_1
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/e$a;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 478
    :catch_1
    move-exception v0

    .line 479
    const-string v1, "Error updating balances dictionary."

    invoke-static {p0, v1, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public a(Z)Z
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/e$a;->b:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/e$a;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    :cond_0
    return p1
.end method

.method public b(I)J
    .locals 2

    .prologue
    .line 339
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/e$a;->b:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 341
    :try_start_0
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/e$a;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 346
    :goto_0
    return-wide v0

    .line 342
    :catch_0
    move-exception v0

    .line 343
    int-to-long v0, p1

    goto :goto_0

    .line 346
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/e$a;->b:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Number;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/e$a;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    goto :goto_0

    :cond_1
    int-to-long v0, p1

    goto :goto_0
.end method

.method public b()Z
    .locals 2

    .prologue
    .line 210
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/e$a;->b:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/e$a;->b:Ljava/lang/Object;

    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 223
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/e$a;->b()Z

    move-result v0

    return v0
.end method

.method public c(I)Lcom/chartboost/sdk/Libraries/e$a;
    .locals 1

    .prologue
    .line 410
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/e$a;->b:Ljava/lang/Object;

    instance-of v0, v0, Lorg/json/JSONArray;

    if-eqz v0, :cond_1

    .line 411
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/e$a;->b:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONArray;

    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object p0

    .line 421
    :cond_0
    :goto_0
    return-object p0

    .line 412
    :cond_1
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/e$a;->b:Ljava/lang/Object;

    instance-of v0, v0, Ljava/util/List;

    if-eqz v0, :cond_2

    .line 414
    :try_start_0
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/e$a;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    goto :goto_0

    .line 415
    :catch_0
    move-exception v0

    .line 416
    sget-object p0, Lcom/chartboost/sdk/Libraries/e$a;->a:Lcom/chartboost/sdk/Libraries/e$a;

    goto :goto_0

    .line 418
    :cond_2
    if-eqz p1, :cond_0

    .line 421
    sget-object p0, Lcom/chartboost/sdk/Libraries/e$a;->a:Lcom/chartboost/sdk/Libraries/e$a;

    goto :goto_0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 214
    invoke-virtual {p0}, Lcom/chartboost/sdk/Libraries/e$a;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 227
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/e$a;->c()Z

    move-result v0

    return v0
.end method

.method public d(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/e$a;->b:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/e$a;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    move-object v0, p1

    goto :goto_0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 219
    invoke-virtual {p0}, Lcom/chartboost/sdk/Libraries/e$a;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 426
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/e$a;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/e$a;->b:Ljava/lang/Object;

    instance-of v0, v0, Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/e$a;->b:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONObject;

    .line 239
    :goto_0
    return-object v0

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/e$a;->b:Ljava/lang/Object;

    instance-of v0, v0, Ljava/util/Map;

    if-eqz v0, :cond_2

    .line 235
    sget-object v0, Lcom/chartboost/sdk/Libraries/e$a;->c:Lorg/json/JSONObject;

    if-nez v0, :cond_1

    .line 236
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/e$a;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    invoke-static {v0}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v0

    sput-object v0, Lcom/chartboost/sdk/Libraries/e$a;->c:Lorg/json/JSONObject;

    .line 237
    :cond_1
    sget-object v0, Lcom/chartboost/sdk/Libraries/e$a;->c:Lorg/json/JSONObject;

    goto :goto_0

    .line 239
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    .line 359
    invoke-static {p1}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v0

    .line 360
    invoke-virtual {p0}, Lcom/chartboost/sdk/Libraries/e$a;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 361
    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/e$a;->b()Z

    move-result v0

    .line 371
    :goto_0
    return v0

    .line 362
    :cond_0
    invoke-virtual {p0}, Lcom/chartboost/sdk/Libraries/e$a;->e()Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/e$a;->e()Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 363
    invoke-virtual {p0}, Lcom/chartboost/sdk/Libraries/e$a;->e()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/e$a;->e()Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/chartboost/sdk/Libraries/i;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z

    move-result v0

    goto :goto_0

    .line 364
    :cond_1
    invoke-virtual {p0}, Lcom/chartboost/sdk/Libraries/e$a;->g()Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/e$a;->g()Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 365
    invoke-virtual {p0}, Lcom/chartboost/sdk/Libraries/e$a;->g()Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/e$a;->g()Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/chartboost/sdk/Libraries/i;->a(Lorg/json/JSONArray;Lorg/json/JSONArray;)Z

    move-result v0

    goto :goto_0

    .line 366
    :cond_2
    iget-object v1, p0, Lcom/chartboost/sdk/Libraries/e$a;->b:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 367
    iget-object v1, p0, Lcom/chartboost/sdk/Libraries/e$a;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/e$a;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 368
    :cond_3
    iget-object v1, v0, Lcom/chartboost/sdk/Libraries/e$a;->b:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 369
    iget-object v0, v0, Lcom/chartboost/sdk/Libraries/e$a;->b:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/chartboost/sdk/Libraries/e$a;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 371
    :cond_4
    invoke-virtual {p0}, Lcom/chartboost/sdk/Libraries/e$a;->n()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/e$a;->n()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public f(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 430
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/e$a;->k()I

    move-result v0

    return v0
.end method

.method public f()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 245
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/e$a;->b:Ljava/lang/Object;

    instance-of v0, v0, Lorg/json/JSONObject;

    if-eqz v0, :cond_1

    .line 246
    sget-object v0, Lcom/chartboost/sdk/Libraries/e$a;->d:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/e$a;->b:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/chartboost/sdk/Libraries/e$a;->d:Ljava/util/Map;

    .line 248
    :cond_0
    sget-object v0, Lcom/chartboost/sdk/Libraries/e$a;->d:Ljava/util/Map;

    .line 252
    :goto_0
    return-object v0

    .line 249
    :cond_1
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/e$a;->b:Ljava/lang/Object;

    instance-of v0, v0, Ljava/util/Map;

    if-eqz v0, :cond_2

    .line 250
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/e$a;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    goto :goto_0

    .line 252
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g(Ljava/lang/String;)D
    .locals 2

    .prologue
    .line 438
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/e$a;->i()D

    move-result-wide v0

    return-wide v0
.end method

.method public g()Lorg/json/JSONArray;
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/e$a;->b:Ljava/lang/Object;

    instance-of v0, v0, Lorg/json/JSONArray;

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/e$a;->b:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONArray;

    .line 264
    :goto_0
    return-object v0

    .line 259
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/e$a;->b:Ljava/lang/Object;

    instance-of v0, v0, Ljava/util/List;

    if-eqz v0, :cond_2

    .line 260
    sget-object v0, Lcom/chartboost/sdk/Libraries/e$a;->e:Lorg/json/JSONArray;

    if-nez v0, :cond_1

    .line 261
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/e$a;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v0

    sput-object v0, Lcom/chartboost/sdk/Libraries/e$a;->e:Lorg/json/JSONArray;

    .line 262
    :cond_1
    sget-object v0, Lcom/chartboost/sdk/Libraries/e$a;->e:Lorg/json/JSONArray;

    goto :goto_0

    .line 264
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h(Ljava/lang/String;)J
    .locals 2

    .prologue
    .line 442
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/e$a;->l()J

    move-result-wide v0

    return-wide v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 280
    invoke-virtual {p0}, Lcom/chartboost/sdk/Libraries/e$a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 281
    const/4 v0, 0x0

    .line 282
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/e$a;->b:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/e$a;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/e$a;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public i()D
    .locals 2

    .prologue
    .line 290
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/chartboost/sdk/Libraries/e$a;->a(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public i(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 446
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/e$a;->m()Z

    move-result v0

    return v0
.end method

.method public j()F
    .locals 1

    .prologue
    .line 305
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/Libraries/e$a;->a(F)F

    move-result v0

    return v0
.end method

.method public k()I
    .locals 1

    .prologue
    .line 320
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/Libraries/e$a;->a(I)I

    move-result v0

    return v0
.end method

.method public l()J
    .locals 2

    .prologue
    .line 335
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/Libraries/e$a;->b(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public m()Z
    .locals 1

    .prologue
    .line 350
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/Libraries/e$a;->a(Z)Z

    move-result v0

    return v0
.end method

.method public n()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/e$a;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public o()I
    .locals 1

    .prologue
    .line 400
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/e$a;->b:Ljava/lang/Object;

    instance-of v0, v0, Lorg/json/JSONArray;

    if-eqz v0, :cond_0

    .line 401
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/e$a;->b:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    .line 405
    :goto_0
    return v0

    .line 402
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/e$a;->b:Ljava/lang/Object;

    instance-of v0, v0, Ljava/util/List;

    if-eqz v0, :cond_1

    .line 403
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/e$a;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    .line 405
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 502
    invoke-virtual {p0}, Lcom/chartboost/sdk/Libraries/e$a;->e()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 503
    invoke-virtual {p0}, Lcom/chartboost/sdk/Libraries/e$a;->e()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 509
    :goto_0
    return-object v0

    .line 504
    :cond_0
    invoke-virtual {p0}, Lcom/chartboost/sdk/Libraries/e$a;->g()Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 505
    invoke-virtual {p0}, Lcom/chartboost/sdk/Libraries/e$a;->g()Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 506
    :cond_1
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/e$a;->b:Ljava/lang/Object;

    if-eqz v0, :cond_2

    .line 507
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/e$a;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 509
    :cond_2
    const-string v0, "null"

    goto :goto_0
.end method
