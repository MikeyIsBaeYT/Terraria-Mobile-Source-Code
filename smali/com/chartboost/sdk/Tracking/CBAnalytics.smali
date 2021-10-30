.class public Lcom/chartboost/sdk/Tracking/CBAnalytics;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;,
        Lcom/chartboost/sdk/Tracking/CBAnalytics$CBLevelType;,
        Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPType;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    return-void
.end method

.method private static declared-synchronized a(Lcom/chartboost/sdk/Libraries/e$a;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 514
    const-class v1, Lcom/chartboost/sdk/Tracking/CBAnalytics;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lcom/chartboost/sdk/impl/az;

    const-string v2, "/post-install-event/"

    const-string v3, "tracking"

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/chartboost/sdk/impl/az;-><init>(Ljava/lang/String;)V

    .line 515
    const-string v2, "track_info"

    invoke-virtual {v0, v2, p0}, Lcom/chartboost/sdk/impl/az;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 516
    const/4 v2, 0x1

    new-array v2, v2, [Lcom/chartboost/sdk/Libraries/g$k;

    const/4 v3, 0x0

    const-string v4, "status"

    sget-object v5, Lcom/chartboost/sdk/Libraries/a;->a:Lcom/chartboost/sdk/Libraries/g$a;

    invoke-static {v4, v5}, Lcom/chartboost/sdk/Libraries/g;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$k;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/chartboost/sdk/Libraries/g;->a([Lcom/chartboost/sdk/Libraries/g$k;)Lcom/chartboost/sdk/Libraries/g$a;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/impl/az;->a(Lcom/chartboost/sdk/Libraries/g$a;)V

    .line 518
    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/impl/az;->b(Ljava/lang/String;)V

    .line 519
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/impl/az;->a(Z)V

    .line 520
    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/az;->s()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 521
    monitor-exit v1

    return-void

    .line 514
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static declared-synchronized a(Lcom/chartboost/sdk/Libraries/e$a;Ljava/lang/String;Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPType;)V
    .locals 7

    .prologue
    .line 482
    const-class v1, Lcom/chartboost/sdk/Tracking/CBAnalytics;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lcom/chartboost/sdk/impl/az;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "%s%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "/post-install-event/"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/chartboost/sdk/impl/az;-><init>(Ljava/lang/String;)V

    .line 483
    invoke-virtual {v0, p1, p0}, Lcom/chartboost/sdk/impl/az;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 484
    const/4 v2, 0x1

    new-array v2, v2, [Lcom/chartboost/sdk/Libraries/g$k;

    const/4 v3, 0x0

    const-string v4, "status"

    sget-object v5, Lcom/chartboost/sdk/Libraries/a;->a:Lcom/chartboost/sdk/Libraries/g$a;

    invoke-static {v4, v5}, Lcom/chartboost/sdk/Libraries/g;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$k;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/chartboost/sdk/Libraries/g;->a([Lcom/chartboost/sdk/Libraries/g$k;)Lcom/chartboost/sdk/Libraries/g$a;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/impl/az;->a(Lcom/chartboost/sdk/Libraries/g$a;)V

    .line 486
    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/impl/az;->b(Ljava/lang/String;)V

    .line 487
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/impl/az;->a(Z)V

    .line 488
    new-instance v2, Lcom/chartboost/sdk/Tracking/CBAnalytics$1;

    invoke-direct {v2, p1, p2}, Lcom/chartboost/sdk/Tracking/CBAnalytics$1;-><init>(Ljava/lang/String;Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPType;)V

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/impl/az;->a(Lcom/chartboost/sdk/impl/az$c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 511
    monitor-exit v1

    return-void

    .line 482
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPType;)V
    .locals 6

    .prologue
    .line 217
    const-class v1, Lcom/chartboost/sdk/Tracking/CBAnalytics;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/chartboost/sdk/b;->v()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    .line 218
    const-string v0, "CBPostInstallTracker"

    const-string v2, "You need call Chartboost.init() before calling any public API\'s"

    invoke-static {v0, v2}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 294
    :goto_0
    monitor-exit v1

    return-void

    .line 223
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/chartboost/sdk/b;->m()Z

    move-result v0

    if-nez v0, :cond_1

    .line 224
    const-string v0, "CBPostInstallTracker"

    const-string v2, "You need call Chartboost.OnStart() before tracking in-app purchases"

    invoke-static {v0, v2}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 217
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 228
    :cond_1
    :try_start_2
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 233
    :cond_2
    const-string v0, "CBPostInstallTracker"

    const-string v2, "Null object is passed. Please pass a valid value object"

    invoke-static {v0, v2}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 240
    :cond_3
    :try_start_3
    const-string v0, "(\\d+\\.\\d+)|(\\d+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 241
    invoke-virtual {v0, p3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 242
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    .line 243
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    .line 244
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 245
    const-string v0, "CBPostInstallTracker"

    const-string v2, "Invalid price object"

    invoke-static {v0, v2}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 249
    :catch_0
    move-exception v0

    .line 250
    :try_start_4
    const-string v0, "CBPostInstallTracker"

    const-string v2, "Invalid price object"

    invoke-static {v0, v2}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 248
    :cond_4
    :try_start_5
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_5
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v2

    .line 255
    const/4 v0, 0x0

    .line 257
    :try_start_6
    sget-object v3, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPType;->GOOGLE_PLAY:Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPType;

    if-ne p9, v3, :cond_8

    .line 258
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 260
    :cond_5
    const-string v0, "CBPostInstallTracker"

    const-string v2, "Null object is passed for for purchase data or purchase signature"

    invoke-static {v0, v2}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 263
    :cond_6
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/chartboost/sdk/Libraries/e$b;

    const/4 v3, 0x0

    const-string v4, "purchaseData"

    invoke-static {v4, p5}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$b;

    move-result-object v4

    aput-object v4, v0, v3

    const/4 v3, 0x1

    const-string v4, "purchaseSignature"

    invoke-static {v4, p6}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$b;

    move-result-object v4

    aput-object v4, v0, v3

    const/4 v3, 0x2

    const-string v4, "type"

    sget-object v5, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPType;->GOOGLE_PLAY:Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPType;

    invoke-virtual {v5}, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPType;->ordinal()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$b;

    move-result-object v4

    aput-object v4, v0, v3

    invoke-static {v0}, Lcom/chartboost/sdk/Libraries/e;->a([Lcom/chartboost/sdk/Libraries/e$b;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v0

    .line 280
    :cond_7
    :goto_1
    if-nez v0, :cond_b

    .line 281
    const-string v0, "CBPostInstallTracker"

    const-string v2, "Error while parsing the receipt to a JSON Object, "

    invoke-static {v0, v2}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 267
    :cond_8
    sget-object v3, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPType;->AMAZON:Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPType;

    if-ne p9, v3, :cond_7

    .line 268
    invoke-static {p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    invoke-static {p8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 270
    :cond_9
    const-string v0, "CBPostInstallTracker"

    const-string v2, "Null object is passed for for amazon user id or amazon purchase token"

    invoke-static {v0, v2}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 273
    :cond_a
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/chartboost/sdk/Libraries/e$b;

    const/4 v3, 0x0

    const-string v4, "userID"

    invoke-static {v4, p7}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$b;

    move-result-object v4

    aput-object v4, v0, v3

    const/4 v3, 0x1

    const-string v4, "purchaseToken"

    invoke-static {v4, p8}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$b;

    move-result-object v4

    aput-object v4, v0, v3

    const/4 v3, 0x2

    const-string v4, "type"

    sget-object v5, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPType;->AMAZON:Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPType;

    invoke-virtual {v5}, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPType;->ordinal()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$b;

    move-result-object v4

    aput-object v4, v0, v3

    invoke-static {v0}, Lcom/chartboost/sdk/Libraries/e;->a([Lcom/chartboost/sdk/Libraries/e$b;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v0

    goto :goto_1

    .line 284
    :cond_b
    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/e$a;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v3, 0x2

    invoke-static {v0, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    .line 286
    const/4 v3, 0x6

    new-array v3, v3, [Lcom/chartboost/sdk/Libraries/e$b;

    const/4 v4, 0x0

    const-string v5, "localized-title"

    invoke-static {v5, p1}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$b;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "localized-description"

    invoke-static {v5, p2}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$b;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "price"

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$b;

    move-result-object v2

    aput-object v2, v3, v4

    const/4 v2, 0x3

    const-string v4, "currency"

    invoke-static {v4, p4}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$b;

    move-result-object v4

    aput-object v4, v3, v2

    const/4 v2, 0x4

    const-string v4, "productID"

    invoke-static {v4, p0}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$b;

    move-result-object v4

    aput-object v4, v3, v2

    const/4 v2, 0x5

    const-string v4, "receipt"

    invoke-static {v4, v0}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$b;

    move-result-object v0

    aput-object v0, v3, v2

    invoke-static {v3}, Lcom/chartboost/sdk/Libraries/e;->a([Lcom/chartboost/sdk/Libraries/e$b;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v0

    .line 292
    const-string v2, "iap"

    invoke-static {v0, v2, p9}, Lcom/chartboost/sdk/Tracking/CBAnalytics;->a(Lcom/chartboost/sdk/Libraries/e$a;Ljava/lang/String;Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPType;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0
.end method

.method public static declared-synchronized trackInAppAmazonStorePurchaseEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p0, "title"    # Ljava/lang/String;
    .param p1, "description"    # Ljava/lang/String;
    .param p2, "price"    # Ljava/lang/String;
    .param p3, "currency"    # Ljava/lang/String;
    .param p4, "productID"    # Ljava/lang/String;
    .param p5, "userID"    # Ljava/lang/String;
    .param p6, "purchaseToken"    # Ljava/lang/String;

    .prologue
    .line 339
    const-class v10, Lcom/chartboost/sdk/Tracking/CBAnalytics;

    monitor-enter v10

    const/4 v5, 0x0

    const/4 v6, 0x0

    :try_start_0
    sget-object v9, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPType;->AMAZON:Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPType;

    move-object v0, p4

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    invoke-static/range {v0 .. v9}, Lcom/chartboost/sdk/Tracking/CBAnalytics;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPType;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 341
    monitor-exit v10

    return-void

    .line 339
    :catchall_0
    move-exception v0

    monitor-exit v10

    throw v0
.end method

.method public static declared-synchronized trackInAppGooglePlayPurchaseEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p0, "title"    # Ljava/lang/String;
    .param p1, "description"    # Ljava/lang/String;
    .param p2, "price"    # Ljava/lang/String;
    .param p3, "currency"    # Ljava/lang/String;
    .param p4, "productID"    # Ljava/lang/String;
    .param p5, "purchaseData"    # Ljava/lang/String;
    .param p6, "purchaseSignature"    # Ljava/lang/String;

    .prologue
    .line 316
    const-class v10, Lcom/chartboost/sdk/Tracking/CBAnalytics;

    monitor-enter v10

    const/4 v7, 0x0

    const/4 v8, 0x0

    :try_start_0
    sget-object v9, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPType;->GOOGLE_PLAY:Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPType;

    move-object v0, p4

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    invoke-static/range {v0 .. v9}, Lcom/chartboost/sdk/Tracking/CBAnalytics;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPType;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 317
    monitor-exit v10

    return-void

    .line 316
    :catchall_0
    move-exception v0

    monitor-exit v10

    throw v0
.end method

.method public static declared-synchronized trackLevelInfo(Ljava/lang/String;Lcom/chartboost/sdk/Tracking/CBAnalytics$CBLevelType;IILjava/lang/String;)V
    .locals 6
    .param p0, "eventLabel"    # Ljava/lang/String;
    .param p1, "type"    # Lcom/chartboost/sdk/Tracking/CBAnalytics$CBLevelType;
    .param p2, "mainLevel"    # I
    .param p3, "subLevel"    # I
    .param p4, "description"    # Ljava/lang/String;

    .prologue
    .line 450
    const-class v1, Lcom/chartboost/sdk/Tracking/CBAnalytics;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 451
    const-string v0, "CBPostInstallTracker"

    const-string v2, "Invalid value: event label cannot be empty or null"

    invoke-static {v0, v2}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 478
    :goto_0
    monitor-exit v1

    return-void

    .line 454
    :cond_0
    if-eqz p1, :cond_1

    :try_start_1
    instance-of v0, p1, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBLevelType;

    if-nez v0, :cond_2

    .line 455
    :cond_1
    const-string v0, "CBPostInstallTracker"

    const-string v2, "Invalid value: level type cannot be empty or null, please choose from one of the CBLevelType enum values"

    invoke-static {v0, v2}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 450
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 459
    :cond_2
    if-ltz p2, :cond_3

    if-gez p3, :cond_4

    .line 460
    :cond_3
    :try_start_2
    const-string v0, "CBPostInstallTracker"

    const-string v2, "Invalid value: Level number should be > 0"

    invoke-static {v0, v2}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 464
    :cond_4
    invoke-virtual {p4}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 465
    const-string v0, "CBPostInstallTracker"

    const-string v2, "Invalid value: description cannot be empty or null"

    invoke-static {v0, v2}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 469
    :cond_5
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/chartboost/sdk/Libraries/e$b;

    const/4 v2, 0x0

    const-string v3, "event_label"

    invoke-static {v3, p0}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$b;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x1

    const-string v3, "event_field"

    invoke-virtual {p1}, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBLevelType;->getLevelType()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$b;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x2

    const-string v3, "main_level"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$b;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x3

    const-string v3, "sub_level"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$b;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x4

    const-string v3, "description"

    invoke-static {v3, p4}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$b;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x5

    const-string v3, "timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$b;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x6

    const-string v3, "data_type"

    const-string v4, "level_info"

    invoke-static {v3, v4}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$b;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-static {v0}, Lcom/chartboost/sdk/Libraries/e;->a([Lcom/chartboost/sdk/Libraries/e$b;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v0

    .line 477
    const-string v2, "tracking"

    invoke-static {v0, v2}, Lcom/chartboost/sdk/Tracking/CBAnalytics;->a(Lcom/chartboost/sdk/Libraries/e$a;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method public static declared-synchronized trackLevelInfo(Ljava/lang/String;Lcom/chartboost/sdk/Tracking/CBAnalytics$CBLevelType;ILjava/lang/String;)V
    .locals 2
    .param p0, "eventLabel"    # Ljava/lang/String;
    .param p1, "type"    # Lcom/chartboost/sdk/Tracking/CBAnalytics$CBLevelType;
    .param p2, "mainLevel"    # I
    .param p3, "description"    # Ljava/lang/String;

    .prologue
    .line 438
    const-class v0, Lcom/chartboost/sdk/Tracking/CBAnalytics;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, p1, p2, v1, p3}, Lcom/chartboost/sdk/Tracking/CBAnalytics;->trackLevelInfo(Ljava/lang/String;Lcom/chartboost/sdk/Tracking/CBAnalytics$CBLevelType;IILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 439
    monitor-exit v0

    return-void

    .line 438
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public declared-synchronized trackInAppPurchaseEvent(Ljava/util/EnumMap;Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPType;)V
    .locals 10
    .param p2, "iapType"    # Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumMap",
            "<",
            "Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPType;",
            ")V"
        }
    .end annotation

    .prologue
    .line 185
    .local p1, "map":Ljava/util/EnumMap;, "Ljava/util/EnumMap<Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;Ljava/lang/String;>;"
    monitor-enter p0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    :try_start_0
    sget-object v0, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;->PRODUCT_ID:Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;

    invoke-virtual {p1, v0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;->PRODUCT_TITLE:Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;

    invoke-virtual {p1, v0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;->PRODUCT_DESCRIPTION:Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;

    invoke-virtual {p1, v0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;->PRODUCT_PRICE:Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;

    invoke-virtual {p1, v0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;->PRODUCT_CURRENCY_CODE:Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;

    invoke-virtual {p1, v0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 191
    :cond_0
    const-string v0, "CBPostInstallTracker"

    const-string v1, "Null object is passed. Please pass a valid value object"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
    :goto_0
    monitor-exit p0

    return-void

    .line 196
    :cond_1
    :try_start_1
    sget-object v0, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;->GOOGLE_PURCHASE_DATA:Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;

    invoke-virtual {p1, v0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 197
    sget-object v0, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;->GOOGLE_PURCHASE_SIGNATURE:Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;

    invoke-virtual {p1, v0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 200
    sget-object v0, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;->AMAZON_USER_ID:Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;

    invoke-virtual {p1, v0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 201
    sget-object v0, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;->AMAZON_PURCHASE_TOKEN:Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;

    invoke-virtual {p1, v0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 203
    sget-object v0, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;->PRODUCT_ID:Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;

    invoke-virtual {p1, v0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;->PRODUCT_TITLE:Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;

    invoke-virtual {p1, v1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v2, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;->PRODUCT_DESCRIPTION:Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;

    invoke-virtual {p1, v2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v3, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;->PRODUCT_PRICE:Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;

    invoke-virtual {p1, v3}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    sget-object v4, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;->PRODUCT_CURRENCY_CODE:Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;

    invoke-virtual {p1, v4}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object v9, p2

    invoke-static/range {v0 .. v9}, Lcom/chartboost/sdk/Tracking/CBAnalytics;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPType;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 185
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
