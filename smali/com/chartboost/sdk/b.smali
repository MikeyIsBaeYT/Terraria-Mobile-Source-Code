.class public final Lcom/chartboost/sdk/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chartboost/sdk/b$a;
    }
.end annotation


# static fields
.field public static a:Lcom/chartboost/sdk/c$a;

.field private static final b:Ljava/lang/String;

.field private static c:Ljava/lang/String;

.field private static d:Ljava/lang/String;

.field private static e:Lcom/chartboost/sdk/a;

.field private static f:Z

.field private static g:Z

.field private static h:Z

.field private static i:Lcom/chartboost/sdk/Chartboost$CBFramework;

.field private static j:Ljava/lang/String;

.field private static k:Landroid/content/SharedPreferences;

.field private static l:Z

.field private static volatile m:Z

.field private static n:Landroid/content/Context;

.field private static o:Landroid/app/Application;

.field private static p:Z

.field private static q:Z

.field private static r:Z

.field private static s:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 31
    const-class v0, Lcom/chartboost/sdk/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/chartboost/sdk/b;->b:Ljava/lang/String;

    .line 37
    sput-boolean v1, Lcom/chartboost/sdk/b;->f:Z

    .line 38
    sput-boolean v1, Lcom/chartboost/sdk/b;->g:Z

    .line 39
    sput-boolean v1, Lcom/chartboost/sdk/b;->h:Z

    .line 40
    sput-object v2, Lcom/chartboost/sdk/b;->i:Lcom/chartboost/sdk/Chartboost$CBFramework;

    .line 41
    sput-object v2, Lcom/chartboost/sdk/b;->j:Ljava/lang/String;

    .line 42
    sput-object v2, Lcom/chartboost/sdk/b;->k:Landroid/content/SharedPreferences;

    .line 43
    sput-boolean v3, Lcom/chartboost/sdk/b;->l:Z

    .line 44
    sput-boolean v1, Lcom/chartboost/sdk/b;->m:Z

    .line 45
    sput-object v2, Lcom/chartboost/sdk/b;->n:Landroid/content/Context;

    .line 47
    sput-object v2, Lcom/chartboost/sdk/b;->o:Landroid/app/Application;

    .line 48
    sput-boolean v1, Lcom/chartboost/sdk/b;->p:Z

    .line 50
    sput-boolean v3, Lcom/chartboost/sdk/b;->q:Z

    .line 51
    sput-boolean v1, Lcom/chartboost/sdk/b;->r:Z

    .line 52
    sput-boolean v3, Lcom/chartboost/sdk/b;->s:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    return-void
.end method

.method public static a()Lcom/chartboost/sdk/Chartboost$CBFramework;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Lcom/chartboost/sdk/b;->q()Z

    .line 94
    sget-object v0, Lcom/chartboost/sdk/b;->i:Lcom/chartboost/sdk/Chartboost$CBFramework;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/chartboost/sdk/b;->i:Lcom/chartboost/sdk/Chartboost$CBFramework;

    goto :goto_0
.end method

.method public static a(Landroid/app/Application;)V
    .locals 0

    .prologue
    .line 493
    sput-object p0, Lcom/chartboost/sdk/b;->o:Landroid/app/Application;

    .line 494
    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 481
    sput-object p0, Lcom/chartboost/sdk/b;->n:Landroid/content/Context;

    .line 482
    return-void
.end method

.method public static a(Lcom/chartboost/sdk/Chartboost$CBFramework;)V
    .locals 2

    .prologue
    .line 81
    invoke-static {}, Lcom/chartboost/sdk/b;->q()Z

    move-result v0

    if-nez v0, :cond_0

    .line 88
    :goto_0
    return-void

    .line 83
    :cond_0
    if-nez p0, :cond_1

    .line 84
    sget-object v0, Lcom/chartboost/sdk/b;->b:Ljava/lang/String;

    const-string v1, "Pass a valid CBFramework enum value"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 87
    :cond_1
    sput-object p0, Lcom/chartboost/sdk/b;->i:Lcom/chartboost/sdk/Chartboost$CBFramework;

    goto :goto_0
.end method

.method public static a(Lcom/chartboost/sdk/Libraries/CBLogging$Level;)V
    .locals 0

    .prologue
    .line 274
    invoke-static {}, Lcom/chartboost/sdk/b;->q()Z

    .line 275
    sput-object p0, Lcom/chartboost/sdk/Libraries/CBLogging;->a:Lcom/chartboost/sdk/Libraries/CBLogging$Level;

    .line 276
    return-void
.end method

.method public static a(Lcom/chartboost/sdk/Libraries/e$a;)V
    .locals 8

    .prologue
    .line 303
    if-eqz p0, :cond_7

    .line 304
    invoke-virtual {p0}, Lcom/chartboost/sdk/Libraries/e$a;->f()Ljava/util/Map;

    move-result-object v2

    .line 305
    if-eqz v2, :cond_7

    .line 306
    invoke-static {}, Lcom/chartboost/sdk/b;->x()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 307
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 308
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 309
    instance-of v5, v1, Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 310
    check-cast v1, Ljava/lang/String;

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 311
    :cond_1
    instance-of v5, v1, Ljava/lang/Integer;

    if-eqz v5, :cond_2

    .line 312
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 313
    :cond_2
    instance-of v5, v1, Ljava/lang/Float;

    if-eqz v5, :cond_3

    .line 314
    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 315
    :cond_3
    instance-of v5, v1, Ljava/lang/Long;

    if-eqz v5, :cond_4

    .line 316
    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-interface {v3, v0, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 317
    :cond_4
    instance-of v5, v1, Ljava/lang/Boolean;

    if-eqz v5, :cond_5

    .line 318
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 319
    :cond_5
    if-eqz v1, :cond_0

    .line 320
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 323
    :cond_6
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 326
    :cond_7
    return-void
.end method

.method public static a(Lcom/chartboost/sdk/a;)V
    .locals 1

    .prologue
    .line 138
    invoke-static {}, Lcom/chartboost/sdk/b;->q()Z

    move-result v0

    if-nez v0, :cond_0

    .line 141
    :goto_0
    return-void

    .line 140
    :cond_0
    sput-object p0, Lcom/chartboost/sdk/b;->e:Lcom/chartboost/sdk/a;

    goto :goto_0
.end method

.method public static a(Lcom/chartboost/sdk/b$a;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 329
    new-instance v0, Lcom/chartboost/sdk/impl/az;

    const-string v1, "/api/config"

    invoke-direct {v0, v1}, Lcom/chartboost/sdk/impl/az;-><init>(Ljava/lang/String;)V

    .line 330
    invoke-virtual {v0, v4}, Lcom/chartboost/sdk/impl/az;->a(Z)V

    .line 331
    invoke-virtual {v0, v4}, Lcom/chartboost/sdk/impl/az;->b(Z)V

    .line 332
    sget-object v1, Lcom/chartboost/sdk/impl/l$a;->c:Lcom/chartboost/sdk/impl/l$a;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/az;->a(Lcom/chartboost/sdk/impl/l$a;)V

    .line 333
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/chartboost/sdk/Libraries/g$k;

    const-string v2, "status"

    sget-object v3, Lcom/chartboost/sdk/Libraries/a;->a:Lcom/chartboost/sdk/Libraries/g$a;

    invoke-static {v2, v3}, Lcom/chartboost/sdk/Libraries/g;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$k;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v1}, Lcom/chartboost/sdk/Libraries/g;->a([Lcom/chartboost/sdk/Libraries/g$k;)Lcom/chartboost/sdk/Libraries/g$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/az;->a(Lcom/chartboost/sdk/Libraries/g$a;)V

    .line 335
    new-instance v1, Lcom/chartboost/sdk/b$1;

    invoke-direct {v1, p0}, Lcom/chartboost/sdk/b$1;-><init>(Lcom/chartboost/sdk/b$a;)V

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/az;->a(Lcom/chartboost/sdk/impl/az$c;)V

    .line 352
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 109
    sput-object p0, Lcom/chartboost/sdk/b;->c:Ljava/lang/String;

    .line 110
    invoke-static {}, Lcom/chartboost/sdk/b;->x()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "appId"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 111
    return-void
.end method

.method public static a(Z)V
    .locals 1

    .prologue
    .line 165
    invoke-static {}, Lcom/chartboost/sdk/b;->q()Z

    move-result v0

    if-nez v0, :cond_0

    .line 168
    :goto_0
    return-void

    .line 167
    :cond_0
    sput-boolean p0, Lcom/chartboost/sdk/b;->f:Z

    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;)Z
    .locals 2

    .prologue
    .line 417
    if-nez p0, :cond_0

    .line 419
    :try_start_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Invalid activity context: Host Activity object is null, Please send a valid activity object"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 420
    :catch_0
    move-exception v0

    .line 421
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 423
    const/4 v0, 0x0

    .line 425
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static b()Ljava/lang/String;
    .locals 3

    .prologue
    .line 100
    invoke-static {}, Lcom/chartboost/sdk/b;->q()Z

    move-result v0

    if-nez v0, :cond_0

    .line 101
    const-string v0, ""

    .line 103
    :goto_0
    return-object v0

    .line 102
    :cond_0
    invoke-static {}, Lcom/chartboost/sdk/b;->x()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "appId"

    sget-object v2, Lcom/chartboost/sdk/b;->c:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/chartboost/sdk/b;->c:Ljava/lang/String;

    .line 103
    sget-object v0, Lcom/chartboost/sdk/b;->c:Ljava/lang/String;

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 124
    sput-object p0, Lcom/chartboost/sdk/b;->d:Ljava/lang/String;

    .line 125
    invoke-static {}, Lcom/chartboost/sdk/b;->x()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "appSignature"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 126
    return-void
.end method

.method public static b(Z)V
    .locals 0

    .prologue
    .line 229
    sput-boolean p0, Lcom/chartboost/sdk/b;->l:Z

    .line 230
    return-void
.end method

.method public static c()Ljava/lang/String;
    .locals 3

    .prologue
    .line 115
    invoke-static {}, Lcom/chartboost/sdk/b;->q()Z

    move-result v0

    if-nez v0, :cond_0

    .line 116
    const-string v0, ""

    .line 118
    :goto_0
    return-object v0

    .line 117
    :cond_0
    invoke-static {}, Lcom/chartboost/sdk/b;->x()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "appSignature"

    sget-object v2, Lcom/chartboost/sdk/b;->d:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/chartboost/sdk/b;->d:Ljava/lang/String;

    .line 118
    sget-object v0, Lcom/chartboost/sdk/b;->d:Ljava/lang/String;

    goto :goto_0
.end method

.method public static c(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 293
    invoke-static {}, Lcom/chartboost/sdk/b;->q()Z

    move-result v0

    if-nez v0, :cond_0

    .line 296
    :goto_0
    return-void

    .line 295
    :cond_0
    sput-object p0, Lcom/chartboost/sdk/b;->j:Ljava/lang/String;

    goto :goto_0
.end method

.method protected static c(Z)V
    .locals 0

    .prologue
    .line 373
    sput-boolean p0, Lcom/chartboost/sdk/b;->m:Z

    .line 374
    return-void
.end method

.method public static d()Lcom/chartboost/sdk/a;
    .locals 1

    .prologue
    .line 130
    invoke-static {}, Lcom/chartboost/sdk/b;->q()Z

    move-result v0

    if-nez v0, :cond_0

    .line 131
    const/4 v0, 0x0

    .line 132
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/chartboost/sdk/b;->e:Lcom/chartboost/sdk/a;

    goto :goto_0
.end method

.method public static d(Z)V
    .locals 1

    .prologue
    .line 444
    sget-object v0, Lcom/chartboost/sdk/b;->a:Lcom/chartboost/sdk/c$a;

    if-eqz v0, :cond_0

    .line 445
    sget-object v0, Lcom/chartboost/sdk/b;->a:Lcom/chartboost/sdk/c$a;

    invoke-interface {v0, p0}, Lcom/chartboost/sdk/c$a;->a(Z)V

    .line 446
    :cond_0
    return-void
.end method

.method protected static e(Z)V
    .locals 0

    .prologue
    .line 449
    sput-boolean p0, Lcom/chartboost/sdk/b;->p:Z

    .line 450
    return-void
.end method

.method public static e()Z
    .locals 1

    .prologue
    .line 149
    invoke-static {}, Lcom/chartboost/sdk/b;->q()Z

    move-result v0

    if-nez v0, :cond_0

    .line 150
    const/4 v0, 0x0

    .line 151
    :goto_0
    return v0

    :cond_0
    sget-boolean v0, Lcom/chartboost/sdk/b;->f:Z

    goto :goto_0
.end method

.method public static f(Z)V
    .locals 0

    .prologue
    .line 457
    sput-boolean p0, Lcom/chartboost/sdk/b;->q:Z

    .line 458
    return-void
.end method

.method public static f()Z
    .locals 1

    .prologue
    .line 201
    invoke-static {}, Lcom/chartboost/sdk/b;->q()Z

    move-result v0

    if-nez v0, :cond_0

    .line 202
    const/4 v0, 0x0

    .line 203
    :goto_0
    return v0

    :cond_0
    sget-boolean v0, Lcom/chartboost/sdk/b;->h:Z

    goto :goto_0
.end method

.method public static g(Z)V
    .locals 0

    .prologue
    .line 465
    sput-boolean p0, Lcom/chartboost/sdk/b;->r:Z

    .line 466
    return-void
.end method

.method public static g()Z
    .locals 1

    .prologue
    .line 221
    sget-boolean v0, Lcom/chartboost/sdk/b;->l:Z

    return v0
.end method

.method public static h()Lorg/json/JSONObject;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 234
    invoke-static {}, Lcom/chartboost/sdk/b;->q()Z

    move-result v1

    if-nez v1, :cond_1

    .line 244
    :cond_0
    :goto_0
    return-object v0

    .line 236
    :cond_1
    invoke-static {}, Lcom/chartboost/sdk/b;->x()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "trackingLevels"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 238
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 239
    invoke-static {v1}, Lcom/chartboost/sdk/Libraries/e$a;->j(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v1

    .line 240
    invoke-virtual {v1}, Lcom/chartboost/sdk/Libraries/e$a;->c()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 241
    invoke-virtual {v1}, Lcom/chartboost/sdk/Libraries/e$a;->e()Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_0
.end method

.method public static h(Z)V
    .locals 0

    .prologue
    .line 473
    sput-boolean p0, Lcom/chartboost/sdk/b;->s:Z

    .line 474
    return-void
.end method

.method public static i()Z
    .locals 3

    .prologue
    .line 248
    invoke-static {}, Lcom/chartboost/sdk/b;->q()Z

    .line 249
    invoke-static {}, Lcom/chartboost/sdk/b;->x()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "retriesEnabled"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static j()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 253
    invoke-static {}, Lcom/chartboost/sdk/b;->q()Z

    move-result v1

    if-nez v1, :cond_1

    .line 262
    :cond_0
    :goto_0
    return v0

    .line 255
    :cond_1
    invoke-static {}, Lcom/chartboost/sdk/b;->h()Lorg/json/JSONObject;

    move-result-object v1

    .line 256
    if-eqz v1, :cond_0

    const-string v2, "debug"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "session"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "system"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "user"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 260
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static k()Lcom/chartboost/sdk/Libraries/CBLogging$Level;
    .locals 1

    .prologue
    .line 282
    invoke-static {}, Lcom/chartboost/sdk/b;->q()Z

    .line 283
    sget-object v0, Lcom/chartboost/sdk/Libraries/CBLogging;->a:Lcom/chartboost/sdk/Libraries/CBLogging$Level;

    return-object v0
.end method

.method public static l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 287
    invoke-static {}, Lcom/chartboost/sdk/b;->q()Z

    move-result v0

    if-nez v0, :cond_0

    .line 288
    const-string v0, ""

    .line 289
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/chartboost/sdk/b;->j:Ljava/lang/String;

    goto :goto_0
.end method

.method public static m()Z
    .locals 1

    .prologue
    .line 368
    sget-boolean v0, Lcom/chartboost/sdk/b;->m:Z

    return v0
.end method

.method public static n()Z
    .locals 1

    .prologue
    .line 377
    invoke-static {}, Lcom/chartboost/sdk/b;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/chartboost/sdk/b;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/chartboost/sdk/b;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 378
    const/4 v0, 0x1

    .line 380
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static o()Z
    .locals 2

    .prologue
    .line 387
    invoke-static {}, Lcom/chartboost/sdk/b;->m()Z

    move-result v0

    if-nez v0, :cond_0

    .line 389
    :try_start_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Session not started: Check if Chartboost.onStart() is called, if not the session won\'t be invoked"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 390
    :catch_0
    move-exception v0

    .line 391
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 393
    const/4 v0, 0x0

    .line 395
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static p()Z
    .locals 2

    .prologue
    .line 402
    sget-object v0, Lcom/chartboost/sdk/Chartboost;->b:Lcom/chartboost/sdk/Libraries/k;

    if-nez v0, :cond_0

    .line 404
    :try_start_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Chartboost Weak Activity reference is null"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 405
    :catch_0
    move-exception v0

    .line 406
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 408
    const/4 v0, 0x0

    .line 410
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static q()Z
    .locals 2

    .prologue
    .line 432
    invoke-static {}, Lcom/chartboost/sdk/b;->w()Landroid/app/Application;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/chartboost/sdk/b;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/chartboost/sdk/b;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 434
    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Chartboost Initialization error. Activity or appId or appSignature is invalid"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 435
    :catch_0
    move-exception v0

    .line 436
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 438
    const/4 v0, 0x0

    .line 440
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static r()Z
    .locals 1

    .prologue
    .line 453
    sget-boolean v0, Lcom/chartboost/sdk/b;->p:Z

    return v0
.end method

.method public static s()Z
    .locals 1

    .prologue
    .line 461
    sget-boolean v0, Lcom/chartboost/sdk/b;->q:Z

    return v0
.end method

.method public static t()Z
    .locals 1

    .prologue
    .line 469
    sget-boolean v0, Lcom/chartboost/sdk/b;->r:Z

    return v0
.end method

.method public static u()Z
    .locals 1

    .prologue
    .line 477
    sget-boolean v0, Lcom/chartboost/sdk/b;->s:Z

    return v0
.end method

.method public static v()Landroid/content/Context;
    .locals 1

    .prologue
    .line 485
    sget-object v0, Lcom/chartboost/sdk/b;->n:Landroid/content/Context;

    return-object v0
.end method

.method public static w()Landroid/app/Application;
    .locals 1

    .prologue
    .line 489
    sget-object v0, Lcom/chartboost/sdk/b;->o:Landroid/app/Application;

    return-object v0
.end method

.method private static x()Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/chartboost/sdk/b;->k:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 60
    invoke-static {}, Lcom/chartboost/sdk/Libraries/CBUtility;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/chartboost/sdk/b;->k:Landroid/content/SharedPreferences;

    .line 61
    :cond_0
    sget-object v0, Lcom/chartboost/sdk/b;->k:Landroid/content/SharedPreferences;

    return-object v0
.end method
