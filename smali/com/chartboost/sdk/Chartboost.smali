.class public final Lcom/chartboost/sdk/Chartboost;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chartboost/sdk/Chartboost$a;,
        Lcom/chartboost/sdk/Chartboost$CBFramework;
    }
.end annotation


# static fields
.field protected static a:Landroid/os/Handler;

.field protected static b:Lcom/chartboost/sdk/Libraries/k;

.field private static volatile c:Lcom/chartboost/sdk/Chartboost;

.field private static d:Lcom/chartboost/sdk/CBImpressionActivity;

.field private static e:Lcom/chartboost/sdk/Model/a;

.field private static f:Lcom/chartboost/sdk/impl/ay;

.field private static g:Lcom/chartboost/sdk/impl/ba;

.field private static h:Lcom/chartboost/sdk/impl/m;

.field private static i:Lcom/chartboost/sdk/Tracking/a;

.field private static j:Z

.field private static k:Landroid/util/SparseBooleanArray;

.field private static l:Lcom/chartboost/sdk/e;

.field private static m:Lcom/chartboost/sdk/c;

.field private static n:Z

.field private static o:Ljava/lang/Runnable;

.field private static p:Z

.field private static q:Z

.field private static r:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 45
    sput-object v1, Lcom/chartboost/sdk/Chartboost;->c:Lcom/chartboost/sdk/Chartboost;

    .line 46
    sput-object v1, Lcom/chartboost/sdk/Chartboost;->d:Lcom/chartboost/sdk/CBImpressionActivity;

    .line 47
    sput-object v1, Lcom/chartboost/sdk/Chartboost;->e:Lcom/chartboost/sdk/Model/a;

    .line 48
    sput-object v1, Lcom/chartboost/sdk/Chartboost;->f:Lcom/chartboost/sdk/impl/ay;

    .line 49
    sput-object v1, Lcom/chartboost/sdk/Chartboost;->g:Lcom/chartboost/sdk/impl/ba;

    .line 50
    sput-object v1, Lcom/chartboost/sdk/Chartboost;->h:Lcom/chartboost/sdk/impl/m;

    .line 51
    sput-object v1, Lcom/chartboost/sdk/Chartboost;->i:Lcom/chartboost/sdk/Tracking/a;

    .line 52
    sput-boolean v2, Lcom/chartboost/sdk/Chartboost;->j:Z

    .line 53
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    sput-object v0, Lcom/chartboost/sdk/Chartboost;->k:Landroid/util/SparseBooleanArray;

    .line 54
    sput-object v1, Lcom/chartboost/sdk/Chartboost;->l:Lcom/chartboost/sdk/e;

    .line 55
    sput-object v1, Lcom/chartboost/sdk/Chartboost;->m:Lcom/chartboost/sdk/c;

    .line 58
    sput-boolean v2, Lcom/chartboost/sdk/Chartboost;->n:Z

    .line 64
    sput-object v1, Lcom/chartboost/sdk/Chartboost;->b:Lcom/chartboost/sdk/Libraries/k;

    .line 269
    sput-boolean v2, Lcom/chartboost/sdk/Chartboost;->p:Z

    .line 270
    sput-boolean v2, Lcom/chartboost/sdk/Chartboost;->q:Z

    .line 307
    new-instance v0, Lcom/chartboost/sdk/Chartboost$7;

    invoke-direct {v0}, Lcom/chartboost/sdk/Chartboost$7;-><init>()V

    sput-object v0, Lcom/chartboost/sdk/Chartboost;->r:Ljava/lang/Runnable;

    return-void
.end method

.method private constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "app"    # Landroid/app/Activity;
    .param p2, "appId"    # Ljava/lang/String;
    .param p3, "appSignature"    # Ljava/lang/String;

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    sput-object p0, Lcom/chartboost/sdk/Chartboost;->c:Lcom/chartboost/sdk/Chartboost;

    .line 105
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/chartboost/sdk/Chartboost;->a:Landroid/os/Handler;

    .line 106
    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/chartboost/sdk/b;->a(Landroid/app/Application;)V

    .line 107
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/chartboost/sdk/b;->a(Landroid/content/Context;)V

    .line 108
    sget-object v0, Lcom/chartboost/sdk/Chartboost;->a:Landroid/os/Handler;

    invoke-static {v0}, Lcom/chartboost/sdk/Libraries/CBUtility;->a(Landroid/os/Handler;)V

    .line 109
    invoke-static {p2}, Lcom/chartboost/sdk/b;->a(Ljava/lang/String;)V

    .line 110
    invoke-static {p3}, Lcom/chartboost/sdk/b;->b(Ljava/lang/String;)V

    .line 111
    invoke-static {}, Lcom/chartboost/sdk/impl/ay;->a()Lcom/chartboost/sdk/impl/ay;

    move-result-object v0

    sput-object v0, Lcom/chartboost/sdk/Chartboost;->f:Lcom/chartboost/sdk/impl/ay;

    .line 112
    invoke-static {}, Lcom/chartboost/sdk/e;->a()Lcom/chartboost/sdk/e;

    move-result-object v0

    sput-object v0, Lcom/chartboost/sdk/Chartboost;->l:Lcom/chartboost/sdk/e;

    .line 113
    invoke-static {}, Lcom/chartboost/sdk/b;->v()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/chartboost/sdk/impl/ba;->a(Landroid/content/Context;)Lcom/chartboost/sdk/impl/ba;

    move-result-object v0

    sput-object v0, Lcom/chartboost/sdk/Chartboost;->g:Lcom/chartboost/sdk/impl/ba;

    .line 114
    sget-object v0, Lcom/chartboost/sdk/Chartboost;->g:Lcom/chartboost/sdk/impl/ba;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/ba;->a()Lcom/chartboost/sdk/impl/m;

    move-result-object v0

    sput-object v0, Lcom/chartboost/sdk/Chartboost;->h:Lcom/chartboost/sdk/impl/m;

    .line 115
    invoke-static {}, Lcom/chartboost/sdk/c;->a()Lcom/chartboost/sdk/c;

    move-result-object v0

    sput-object v0, Lcom/chartboost/sdk/Chartboost;->m:Lcom/chartboost/sdk/c;

    .line 116
    invoke-static {}, Lcom/chartboost/sdk/Tracking/a;->a()Lcom/chartboost/sdk/Tracking/a;

    move-result-object v0

    sput-object v0, Lcom/chartboost/sdk/Chartboost;->i:Lcom/chartboost/sdk/Tracking/a;

    .line 117
    sget-object v0, Lcom/chartboost/sdk/Chartboost;->f:Lcom/chartboost/sdk/impl/ay;

    invoke-static {}, Lcom/chartboost/sdk/b;->v()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/ay;->a(Landroid/content/Context;)V

    .line 118
    invoke-static {}, Lcom/chartboost/sdk/impl/bd;->a()Lcom/chartboost/sdk/impl/bd;

    .line 119
    new-instance v0, Lcom/chartboost/sdk/Chartboost$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/chartboost/sdk/Chartboost$a;-><init>(Lcom/chartboost/sdk/Chartboost$1;)V

    sput-object v0, Lcom/chartboost/sdk/Chartboost;->o:Ljava/lang/Runnable;

    .line 121
    invoke-static {}, Lcom/chartboost/sdk/Libraries/c;->a()V

    .line 122
    return-void
.end method

.method synthetic constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/chartboost/sdk/Chartboost$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/app/Activity;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # Lcom/chartboost/sdk/Chartboost$1;

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Lcom/chartboost/sdk/Chartboost;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/chartboost/sdk/Chartboost;)Lcom/chartboost/sdk/Chartboost;
    .locals 0

    .prologue
    .line 42
    sput-object p0, Lcom/chartboost/sdk/Chartboost;->c:Lcom/chartboost/sdk/Chartboost;

    return-object p0
.end method

.method protected static a()V
    .locals 2

    .prologue
    .line 273
    invoke-static {}, Lcom/chartboost/sdk/b;->v()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    .line 274
    const-string v0, "Chartboost"

    const-string v1, "The context must be set through the Chartboost method onCreate() before calling startSession()."

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 294
    :goto_0
    return-void

    .line 282
    :cond_0
    invoke-static {}, Lcom/chartboost/sdk/b;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/chartboost/sdk/b;->m()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 284
    sget-boolean v0, Lcom/chartboost/sdk/Chartboost;->p:Z

    if-nez v0, :cond_1

    .line 285
    const/4 v0, 0x0

    sput-boolean v0, Lcom/chartboost/sdk/Chartboost;->q:Z

    .line 286
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->p()V

    goto :goto_0

    .line 288
    :cond_1
    const/4 v0, 0x1

    sput-boolean v0, Lcom/chartboost/sdk/Chartboost;->q:Z

    goto :goto_0

    .line 293
    :cond_2
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->p()V

    goto :goto_0
.end method

.method private static a(IZ)V
    .locals 1

    .prologue
    .line 1069
    sget-object v0, Lcom/chartboost/sdk/Chartboost;->k:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p0, p1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1070
    return-void
.end method

.method protected static a(Landroid/app/Activity;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 235
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/chartboost/sdk/b;->a(Landroid/content/Context;)V

    .line 236
    instance-of v0, p0, Lcom/chartboost/sdk/CBImpressionActivity;

    if-nez v0, :cond_1

    .line 237
    invoke-static {p0}, Lcom/chartboost/sdk/Libraries/k;->a(Landroid/app/Activity;)Lcom/chartboost/sdk/Libraries/k;

    move-result-object v0

    sput-object v0, Lcom/chartboost/sdk/Chartboost;->b:Lcom/chartboost/sdk/Libraries/k;

    .line 238
    sget-object v0, Lcom/chartboost/sdk/Chartboost;->b:Lcom/chartboost/sdk/Libraries/k;

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Chartboost;->c(Lcom/chartboost/sdk/Libraries/k;Z)V

    .line 244
    :goto_0
    sget-object v0, Lcom/chartboost/sdk/Chartboost;->a:Landroid/os/Handler;

    sget-object v3, Lcom/chartboost/sdk/Chartboost;->o:Ljava/lang/Runnable;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 249
    invoke-static {}, Lcom/chartboost/sdk/b;->a()Lcom/chartboost/sdk/Chartboost$CBFramework;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/chartboost/sdk/b;->a()Lcom/chartboost/sdk/Chartboost$CBFramework;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/Chartboost$CBFramework;->doesWrapperUseCustomBackgroundingBehavior()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 250
    :goto_1
    if-eqz p0, :cond_0

    if-nez v0, :cond_3

    invoke-static {p0}, Lcom/chartboost/sdk/Chartboost;->e(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 266
    :cond_0
    :goto_2
    return-void

    :cond_1
    move-object v0, p0

    .line 241
    check-cast v0, Lcom/chartboost/sdk/CBImpressionActivity;

    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->a(Lcom/chartboost/sdk/CBImpressionActivity;)V

    goto :goto_0

    :cond_2
    move v0, v2

    .line 249
    goto :goto_1

    .line 253
    :cond_3
    invoke-static {p0}, Lcom/chartboost/sdk/Libraries/k;->a(Landroid/app/Activity;)Lcom/chartboost/sdk/Libraries/k;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Chartboost;->b(Lcom/chartboost/sdk/Libraries/k;Z)V

    .line 255
    instance-of v0, p0, Lcom/chartboost/sdk/CBImpressionActivity;

    if-eqz v0, :cond_4

    .line 256
    sput-boolean v2, Lcom/chartboost/sdk/Chartboost;->n:Z

    .line 259
    :cond_4
    sget-object v0, Lcom/chartboost/sdk/Chartboost;->m:Lcom/chartboost/sdk/c;

    sget-object v1, Lcom/chartboost/sdk/Chartboost;->e:Lcom/chartboost/sdk/Model/a;

    invoke-virtual {v0, p0, v1}, Lcom/chartboost/sdk/c;->a(Landroid/app/Activity;Lcom/chartboost/sdk/Model/a;)Z

    move-result v0

    .line 260
    if-eqz v0, :cond_5

    .line 261
    const/4 v0, 0x0

    sput-object v0, Lcom/chartboost/sdk/Chartboost;->e:Lcom/chartboost/sdk/Model/a;

    .line 263
    :cond_5
    sget-object v0, Lcom/chartboost/sdk/Chartboost;->m:Lcom/chartboost/sdk/c;

    invoke-virtual {v0}, Lcom/chartboost/sdk/c;->c()Lcom/chartboost/sdk/Model/a;

    move-result-object v0

    .line 264
    if-eqz v0, :cond_0

    .line 265
    invoke-virtual {v0}, Lcom/chartboost/sdk/Model/a;->u()V

    goto :goto_2
.end method

.method static synthetic a(Landroid/app/Activity;Z)V
    .locals 0

    .prologue
    .line 42
    invoke-static {p0, p1}, Lcom/chartboost/sdk/Chartboost;->b(Landroid/app/Activity;Z)V

    return-void
.end method

.method protected static a(Lcom/chartboost/sdk/CBImpressionActivity;)V
    .locals 2

    .prologue
    .line 895
    sget-boolean v0, Lcom/chartboost/sdk/Chartboost;->j:Z

    if-nez v0, :cond_0

    .line 896
    invoke-virtual {p0}, Lcom/chartboost/sdk/CBImpressionActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/chartboost/sdk/b;->a(Landroid/content/Context;)V

    .line 897
    sput-object p0, Lcom/chartboost/sdk/Chartboost;->d:Lcom/chartboost/sdk/CBImpressionActivity;

    .line 898
    const/4 v0, 0x1

    sput-boolean v0, Lcom/chartboost/sdk/Chartboost;->j:Z

    .line 901
    :cond_0
    sget-object v0, Lcom/chartboost/sdk/Chartboost;->a:Landroid/os/Handler;

    sget-object v1, Lcom/chartboost/sdk/Chartboost;->o:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 902
    return-void
.end method

.method protected static a(Lcom/chartboost/sdk/Libraries/k;)V
    .locals 3

    .prologue
    .line 391
    invoke-static {}, Lcom/chartboost/sdk/c;->a()Lcom/chartboost/sdk/c;

    move-result-object v0

    .line 392
    invoke-virtual {v0}, Lcom/chartboost/sdk/c;->c()Lcom/chartboost/sdk/Model/a;

    move-result-object v0

    .line 395
    invoke-static {}, Lcom/chartboost/sdk/b;->a()Lcom/chartboost/sdk/Chartboost$CBFramework;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/chartboost/sdk/b;->a()Lcom/chartboost/sdk/Chartboost$CBFramework;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chartboost/sdk/Chartboost$CBFramework;->ordinal()I

    move-result v1

    sget-object v2, Lcom/chartboost/sdk/Chartboost$CBFramework;->CBFrameworkUnity:Lcom/chartboost/sdk/Chartboost$CBFramework;

    invoke-virtual {v2}, Lcom/chartboost/sdk/Chartboost$CBFramework;->ordinal()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 396
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->a()V

    .line 398
    :cond_0
    if-eqz v0, :cond_1

    .line 399
    invoke-virtual {v0}, Lcom/chartboost/sdk/Model/a;->t()V

    .line 401
    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/chartboost/sdk/Libraries/k;Z)V
    .locals 0

    .prologue
    .line 42
    invoke-static {p0, p1}, Lcom/chartboost/sdk/Chartboost;->c(Lcom/chartboost/sdk/Libraries/k;Z)V

    return-void
.end method

.method protected static a(Lcom/chartboost/sdk/Model/a;)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 919
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->h()Lcom/chartboost/sdk/e;

    move-result-object v0

    .line 920
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/chartboost/sdk/e;->c()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/chartboost/sdk/e;->d()Lcom/chartboost/sdk/impl/bp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/chartboost/sdk/impl/bp;->h()Lcom/chartboost/sdk/Model/a;

    move-result-object v3

    if-eq v3, p0, :cond_0

    .line 922
    sget-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->IMPRESSION_ALREADY_VISIBLE:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/Model/a;->a(Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    .line 986
    :goto_0
    return-void

    .line 926
    :cond_0
    invoke-static {}, Lcom/chartboost/sdk/b;->e()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 927
    sget-boolean v3, Lcom/chartboost/sdk/Chartboost;->j:Z

    if-eqz v3, :cond_3

    .line 928
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->f()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 929
    invoke-virtual {v0, p0}, Lcom/chartboost/sdk/e;->a(Lcom/chartboost/sdk/Model/a;)V

    goto :goto_0

    .line 931
    :cond_1
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->f()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_2

    .line 932
    const-string v0, "Chartboost"

    const-string v1, "Activity not found to display the view"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 933
    sget-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->NO_HOST_ACTIVITY:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/Model/a;->a(Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    .line 936
    :goto_1
    sget-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->ERROR_DISPLAYING_VIEW:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/Model/a;->a(Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    goto :goto_0

    .line 935
    :cond_2
    const-string v0, "Chartboost"

    const-string v1, "Missing view controller to manage the open impression activity"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 941
    :cond_3
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->q()Z

    move-result v0

    if-nez v0, :cond_4

    .line 942
    sget-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->NO_HOST_ACTIVITY:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/Model/a;->a(Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    goto :goto_0

    .line 946
    :cond_4
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->getHostActivity()Landroid/app/Activity;

    move-result-object v4

    .line 947
    if-nez v4, :cond_5

    .line 948
    const-string v0, "Chartboost"

    const-string v1, "Failed to display impression as the host activity reference has been lost!"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 949
    sget-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->NO_HOST_ACTIVITY:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/Model/a;->a(Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    goto :goto_0

    .line 952
    :cond_5
    sget-object v0, Lcom/chartboost/sdk/Chartboost;->e:Lcom/chartboost/sdk/Model/a;

    if-eqz v0, :cond_6

    sget-object v0, Lcom/chartboost/sdk/Chartboost;->e:Lcom/chartboost/sdk/Model/a;

    if-eq v0, p0, :cond_6

    .line 954
    sget-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->IMPRESSION_ALREADY_VISIBLE:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/Model/a;->a(Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    goto :goto_0

    .line 957
    :cond_6
    sput-object p0, Lcom/chartboost/sdk/Chartboost;->e:Lcom/chartboost/sdk/Model/a;

    .line 958
    new-instance v5, Landroid/content/Intent;

    const-class v0, Lcom/chartboost/sdk/CBImpressionActivity;

    invoke-direct {v5, v4, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 960
    invoke-virtual {v4}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_7

    move v0, v1

    .line 962
    :goto_2
    invoke-virtual {v4}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v3, v3, 0x800

    if-eqz v3, :cond_8

    move v3, v1

    .line 964
    :goto_3
    const-string v6, "paramFullscreen"

    if-eqz v0, :cond_9

    if-nez v3, :cond_9

    :goto_4
    invoke-virtual {v5, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 967
    :try_start_0
    invoke-virtual {v4, v5}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 968
    const/4 v0, 0x1

    sput-boolean v0, Lcom/chartboost/sdk/Chartboost;->n:Z
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 969
    :catch_0
    move-exception v0

    .line 970
    const-string v0, "Chartboost"

    const-string v1, "Chartboost impression activity not declared in manifest. Please add the following inside your manifest\'s <application> tag: \n<activity android:name=\"com.chartboost.sdk.CBImpressionActivity\" android:theme=\"@android:style/Theme.Translucent.NoTitleBar\" android:excludeFromRecents=\"true\" />"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    move v0, v2

    .line 960
    goto :goto_2

    :cond_8
    move v3, v2

    .line 962
    goto :goto_3

    :cond_9
    move v1, v2

    .line 964
    goto :goto_4

    .line 979
    :cond_a
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->h()Lcom/chartboost/sdk/e;

    move-result-object v0

    .line 980
    if-eqz v0, :cond_b

    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->q()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 981
    invoke-virtual {v0, p0}, Lcom/chartboost/sdk/e;->a(Lcom/chartboost/sdk/Model/a;)V

    goto/16 :goto_0

    .line 983
    :cond_b
    sget-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->NO_HOST_ACTIVITY:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/Model/a;->a(Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    goto/16 :goto_0
.end method

.method protected static a(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 994
    invoke-static {}, Lcom/chartboost/sdk/Libraries/CBUtility;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 995
    sget-object v0, Lcom/chartboost/sdk/Chartboost;->a:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 998
    :goto_0
    return-void

    .line 997
    :cond_0
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method static synthetic a(Z)Z
    .locals 0

    .prologue
    .line 42
    sput-boolean p0, Lcom/chartboost/sdk/Chartboost;->q:Z

    return p0
.end method

.method static synthetic b(Lcom/chartboost/sdk/CBImpressionActivity;)Lcom/chartboost/sdk/CBImpressionActivity;
    .locals 0

    .prologue
    .line 42
    sput-object p0, Lcom/chartboost/sdk/Chartboost;->d:Lcom/chartboost/sdk/CBImpressionActivity;

    return-object p0
.end method

.method static synthetic b(Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .prologue
    .line 42
    sput-object p0, Lcom/chartboost/sdk/Chartboost;->o:Ljava/lang/Runnable;

    return-object p0
.end method

.method protected static b()V
    .locals 4

    .prologue
    .line 298
    invoke-static {}, Lcom/chartboost/sdk/b;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 299
    sget-object v0, Lcom/chartboost/sdk/Chartboost;->a:Landroid/os/Handler;

    sget-object v1, Lcom/chartboost/sdk/Chartboost;->r:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 305
    :goto_0
    return-void

    .line 304
    :cond_0
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->c()V

    goto :goto_0
.end method

.method protected static b(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 558
    invoke-static {p0}, Lcom/chartboost/sdk/Libraries/k;->a(Landroid/app/Activity;)Lcom/chartboost/sdk/Libraries/k;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Chartboost;->b(Lcom/chartboost/sdk/Libraries/k;Z)V

    .line 559
    const/4 v0, 0x0

    sput-object v0, Lcom/chartboost/sdk/Chartboost;->e:Lcom/chartboost/sdk/Model/a;

    .line 560
    return-void
.end method

.method private static b(Landroid/app/Activity;Z)V
    .locals 1

    .prologue
    .line 1055
    if-nez p0, :cond_0

    .line 1058
    :goto_0
    return-void

    .line 1057
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0, p1}, Lcom/chartboost/sdk/Chartboost;->a(IZ)V

    goto :goto_0
.end method

.method protected static b(Lcom/chartboost/sdk/Libraries/k;)V
    .locals 1

    .prologue
    .line 421
    invoke-static {}, Lcom/chartboost/sdk/c;->a()Lcom/chartboost/sdk/c;

    move-result-object v0

    .line 422
    invoke-virtual {v0}, Lcom/chartboost/sdk/c;->c()Lcom/chartboost/sdk/Model/a;

    move-result-object v0

    .line 423
    if-eqz v0, :cond_0

    .line 424
    invoke-virtual {v0}, Lcom/chartboost/sdk/Model/a;->v()V

    .line 425
    :cond_0
    return-void
.end method

.method private static b(Lcom/chartboost/sdk/Libraries/k;Z)V
    .locals 0

    .prologue
    .line 1009
    return-void
.end method

.method protected static c()V
    .locals 1

    .prologue
    .line 358
    const/4 v0, 0x0

    sput-boolean v0, Lcom/chartboost/sdk/Chartboost;->p:Z

    .line 361
    sget-object v0, Lcom/chartboost/sdk/Chartboost;->i:Lcom/chartboost/sdk/Tracking/a;

    if-nez v0, :cond_0

    .line 362
    invoke-static {}, Lcom/chartboost/sdk/Tracking/a;->a()Lcom/chartboost/sdk/Tracking/a;

    move-result-object v0

    sput-object v0, Lcom/chartboost/sdk/Chartboost;->i:Lcom/chartboost/sdk/Tracking/a;

    .line 363
    :cond_0
    sget-object v0, Lcom/chartboost/sdk/Chartboost;->i:Lcom/chartboost/sdk/Tracking/a;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Tracking/a;->c()V

    .line 364
    return-void
.end method

.method static synthetic c(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 42
    invoke-static {p0}, Lcom/chartboost/sdk/Chartboost;->d(Landroid/app/Activity;)V

    return-void
.end method

.method protected static c(Lcom/chartboost/sdk/Libraries/k;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 465
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->h()Lcom/chartboost/sdk/e;

    move-result-object v0

    .line 466
    invoke-static {p0}, Lcom/chartboost/sdk/Chartboost;->g(Lcom/chartboost/sdk/Libraries/k;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 467
    invoke-static {}, Lcom/chartboost/sdk/c;->a()Lcom/chartboost/sdk/c;

    move-result-object v1

    .line 468
    invoke-virtual {v1}, Lcom/chartboost/sdk/c;->c()Lcom/chartboost/sdk/Model/a;

    move-result-object v1

    .line 469
    if-eqz v1, :cond_0

    .line 470
    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/e;->c(Lcom/chartboost/sdk/Model/a;)V

    .line 471
    sput-object v1, Lcom/chartboost/sdk/Chartboost;->e:Lcom/chartboost/sdk/Model/a;

    .line 473
    :cond_0
    invoke-static {p0, v2}, Lcom/chartboost/sdk/Chartboost;->b(Lcom/chartboost/sdk/Libraries/k;Z)V

    .line 474
    invoke-virtual {p0}, Lcom/chartboost/sdk/Libraries/k;->get()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/chartboost/sdk/CBImpressionActivity;

    if-eqz v0, :cond_1

    .line 475
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->g()V

    .line 478
    :cond_1
    invoke-virtual {p0}, Lcom/chartboost/sdk/Libraries/k;->get()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/chartboost/sdk/CBImpressionActivity;

    if-nez v0, :cond_2

    .line 479
    invoke-static {p0, v2}, Lcom/chartboost/sdk/Chartboost;->c(Lcom/chartboost/sdk/Libraries/k;Z)V

    .line 482
    :cond_2
    return-void
.end method

.method private static c(Lcom/chartboost/sdk/Libraries/k;Z)V
    .locals 1

    .prologue
    .line 1062
    if-nez p0, :cond_0

    .line 1065
    :goto_0
    return-void

    .line 1064
    :cond_0
    invoke-virtual {p0}, Lcom/chartboost/sdk/Libraries/k;->a()I

    move-result v0

    invoke-static {v0, p1}, Lcom/chartboost/sdk/Chartboost;->a(IZ)V

    goto :goto_0
.end method

.method public static cacheInterstitial(Ljava/lang/String;)V
    .locals 2
    .param p0, "location"    # Ljava/lang/String;

    .prologue
    .line 650
    invoke-static {}, Lcom/chartboost/sdk/b;->n()Z

    move-result v0

    if-nez v0, :cond_1

    .line 659
    :cond_0
    :goto_0
    return-void

    .line 652
    :cond_1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 653
    const-string v0, "Chartboost"

    const-string v1, "cacheInterstitial location cannot be empty"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 654
    invoke-static {}, Lcom/chartboost/sdk/b;->d()Lcom/chartboost/sdk/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 655
    invoke-static {}, Lcom/chartboost/sdk/b;->d()Lcom/chartboost/sdk/a;

    move-result-object v0

    sget-object v1, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->INVALID_LOCATION:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-interface {v0, p0, v1}, Lcom/chartboost/sdk/a;->didFailToLoadInterstitial(Ljava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    goto :goto_0

    .line 658
    :cond_2
    invoke-static {}, Lcom/chartboost/sdk/impl/ae;->f()Lcom/chartboost/sdk/impl/ae;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/chartboost/sdk/impl/ae;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static cacheMoreApps(Ljava/lang/String;)V
    .locals 2
    .param p0, "location"    # Ljava/lang/String;

    .prologue
    .line 702
    invoke-static {}, Lcom/chartboost/sdk/b;->n()Z

    move-result v0

    if-nez v0, :cond_1

    .line 711
    :cond_0
    :goto_0
    return-void

    .line 704
    :cond_1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 705
    const-string v0, "Chartboost"

    const-string v1, "cacheMoreApps location cannot be empty"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 706
    invoke-static {}, Lcom/chartboost/sdk/b;->d()Lcom/chartboost/sdk/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 707
    invoke-static {}, Lcom/chartboost/sdk/b;->d()Lcom/chartboost/sdk/a;

    move-result-object v0

    sget-object v1, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->INVALID_LOCATION:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-interface {v0, p0, v1}, Lcom/chartboost/sdk/a;->didFailToLoadMoreApps(Ljava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    goto :goto_0

    .line 710
    :cond_2
    invoke-static {}, Lcom/chartboost/sdk/impl/av;->f()Lcom/chartboost/sdk/impl/av;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/chartboost/sdk/impl/av;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static cacheRewardedVideo(Ljava/lang/String;)V
    .locals 2
    .param p0, "location"    # Ljava/lang/String;

    .prologue
    .line 609
    invoke-static {}, Lcom/chartboost/sdk/b;->n()Z

    move-result v0

    if-nez v0, :cond_1

    .line 618
    :cond_0
    :goto_0
    return-void

    .line 611
    :cond_1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 612
    const-string v0, "Chartboost"

    const-string v1, "cacheRewardedVideo location cannot be empty"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 613
    invoke-static {}, Lcom/chartboost/sdk/b;->d()Lcom/chartboost/sdk/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 614
    invoke-static {}, Lcom/chartboost/sdk/b;->d()Lcom/chartboost/sdk/a;

    move-result-object v0

    sget-object v1, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->INVALID_LOCATION:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-interface {v0, p0, v1}, Lcom/chartboost/sdk/a;->didFailToLoadRewardedVideo(Ljava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    goto :goto_0

    .line 617
    :cond_2
    invoke-static {}, Lcom/chartboost/sdk/impl/af;->h()Lcom/chartboost/sdk/impl/af;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/chartboost/sdk/impl/af;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static clearCache()V
    .locals 1

    .prologue
    .line 587
    invoke-static {}, Lcom/chartboost/sdk/b;->n()Z

    move-result v0

    if-nez v0, :cond_0

    .line 594
    :goto_0
    return-void

    .line 589
    :cond_0
    invoke-static {}, Lcom/chartboost/sdk/impl/bc;->a()Lcom/chartboost/sdk/impl/bc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/bc;->b()V

    .line 590
    invoke-static {}, Lcom/chartboost/sdk/impl/af;->h()Lcom/chartboost/sdk/impl/af;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/af;->a()V

    .line 591
    invoke-static {}, Lcom/chartboost/sdk/impl/ae;->f()Lcom/chartboost/sdk/impl/ae;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/ae;->a()V

    .line 592
    invoke-static {}, Lcom/chartboost/sdk/impl/av;->f()Lcom/chartboost/sdk/impl/av;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/av;->a()V

    .line 593
    invoke-static {}, Lcom/chartboost/sdk/InPlay/a;->b()V

    goto :goto_0
.end method

.method public static closeImpression()V
    .locals 1

    .prologue
    .line 683
    invoke-static {}, Lcom/chartboost/sdk/b;->n()Z

    move-result v0

    if-nez v0, :cond_0

    .line 686
    :goto_0
    return-void

    .line 685
    :cond_0
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->e()Z

    goto :goto_0
.end method

.method public static createSurfaceView(Landroid/app/Activity;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1109
    invoke-static {p0}, Lcom/chartboost/sdk/impl/bg;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1120
    :goto_0
    return-void

    .line 1111
    :cond_0
    sget-object v0, Lcom/chartboost/sdk/Chartboost;->a:Landroid/os/Handler;

    new-instance v1, Lcom/chartboost/sdk/Chartboost$4;

    invoke-direct {v1, p0}, Lcom/chartboost/sdk/Chartboost$4;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private static d(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 180
    sget-object v0, Lcom/chartboost/sdk/Chartboost;->b:Lcom/chartboost/sdk/Libraries/k;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/chartboost/sdk/Chartboost;->b:Lcom/chartboost/sdk/Libraries/k;

    invoke-virtual {v0, p0}, Lcom/chartboost/sdk/Libraries/k;->b(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    sget-object v0, Lcom/chartboost/sdk/Chartboost;->b:Lcom/chartboost/sdk/Libraries/k;

    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->f(Lcom/chartboost/sdk/Libraries/k;)V

    .line 182
    sget-object v0, Lcom/chartboost/sdk/Chartboost;->b:Lcom/chartboost/sdk/Libraries/k;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Chartboost;->c(Lcom/chartboost/sdk/Libraries/k;Z)V

    .line 185
    :cond_0
    sget-object v0, Lcom/chartboost/sdk/Chartboost;->a:Landroid/os/Handler;

    sget-object v1, Lcom/chartboost/sdk/Chartboost;->o:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 188
    invoke-static {p0}, Lcom/chartboost/sdk/Libraries/k;->a(Landroid/app/Activity;)Lcom/chartboost/sdk/Libraries/k;

    move-result-object v0

    sput-object v0, Lcom/chartboost/sdk/Chartboost;->b:Lcom/chartboost/sdk/Libraries/k;

    .line 190
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->getImpressionsUseActivities()Z

    move-result v0

    if-nez v0, :cond_1

    .line 191
    invoke-static {p0}, Lcom/chartboost/sdk/Chartboost;->createSurfaceView(Landroid/app/Activity;)V

    .line 193
    :cond_1
    invoke-static {}, Lcom/chartboost/sdk/impl/ba;->d()V

    .line 194
    return-void
.end method

.method protected static d()Z
    .locals 1

    .prologue
    .line 507
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->e()Z

    move-result v0

    return v0
.end method

.method protected static d(Lcom/chartboost/sdk/Libraries/k;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1047
    if-nez p0, :cond_1

    .line 1050
    :cond_0
    :goto_0
    return v0

    .line 1049
    :cond_1
    sget-object v1, Lcom/chartboost/sdk/Chartboost;->k:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0}, Lcom/chartboost/sdk/Libraries/k;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 1050
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public static didPassAgeGate(Z)V
    .locals 0
    .param p0, "pass"    # Z

    .prologue
    .line 571
    invoke-static {p0}, Lcom/chartboost/sdk/b;->d(Z)V

    .line 572
    return-void
.end method

.method static synthetic e(Lcom/chartboost/sdk/Libraries/k;)V
    .locals 0

    .prologue
    .line 42
    invoke-static {p0}, Lcom/chartboost/sdk/Chartboost;->f(Lcom/chartboost/sdk/Libraries/k;)V

    return-void
.end method

.method protected static e()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 511
    invoke-static {}, Lcom/chartboost/sdk/c;->a()Lcom/chartboost/sdk/c;

    move-result-object v1

    .line 512
    invoke-virtual {v1}, Lcom/chartboost/sdk/c;->c()Lcom/chartboost/sdk/Model/a;

    move-result-object v2

    .line 513
    if-eqz v2, :cond_1

    iget-object v3, v2, Lcom/chartboost/sdk/Model/a;->b:Lcom/chartboost/sdk/Model/a$b;

    sget-object v4, Lcom/chartboost/sdk/Model/a$b;->c:Lcom/chartboost/sdk/Model/a$b;

    if-ne v3, v4, :cond_1

    .line 514
    invoke-virtual {v2}, Lcom/chartboost/sdk/Model/a;->s()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 532
    :goto_0
    return v0

    .line 516
    :cond_0
    new-instance v2, Lcom/chartboost/sdk/Chartboost$12;

    invoke-direct {v2, v1}, Lcom/chartboost/sdk/Chartboost$12;-><init>(Lcom/chartboost/sdk/c;)V

    invoke-static {v2}, Lcom/chartboost/sdk/Chartboost;->a(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 523
    :cond_1
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->h()Lcom/chartboost/sdk/e;

    move-result-object v2

    .line 524
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/chartboost/sdk/e;->b()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 525
    new-instance v3, Lcom/chartboost/sdk/Chartboost$2;

    invoke-direct {v3, v2, v1}, Lcom/chartboost/sdk/Chartboost$2;-><init>(Lcom/chartboost/sdk/e;Lcom/chartboost/sdk/c;)V

    invoke-static {v3}, Lcom/chartboost/sdk/Chartboost;->a(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 532
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static e(Landroid/app/Activity;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 869
    invoke-static {}, Lcom/chartboost/sdk/b;->e()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 870
    sget-object v2, Lcom/chartboost/sdk/Chartboost;->d:Lcom/chartboost/sdk/CBImpressionActivity;

    if-ne v2, p0, :cond_1

    .line 874
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 870
    goto :goto_0

    .line 872
    :cond_2
    sget-object v2, Lcom/chartboost/sdk/Chartboost;->b:Lcom/chartboost/sdk/Libraries/k;

    if-nez v2, :cond_3

    .line 873
    if-eqz p0, :cond_0

    move v0, v1

    goto :goto_0

    .line 874
    :cond_3
    sget-object v0, Lcom/chartboost/sdk/Chartboost;->b:Lcom/chartboost/sdk/Libraries/k;

    invoke-virtual {v0, p0}, Lcom/chartboost/sdk/Libraries/k;->b(Landroid/app/Activity;)Z

    move-result v0

    goto :goto_0
.end method

.method protected static f()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 859
    invoke-static {}, Lcom/chartboost/sdk/b;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 860
    sget-object v0, Lcom/chartboost/sdk/Chartboost;->d:Lcom/chartboost/sdk/CBImpressionActivity;

    .line 862
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->getHostActivity()Landroid/app/Activity;

    move-result-object v0

    goto :goto_0
.end method

.method private static f(Lcom/chartboost/sdk/Libraries/k;)V
    .locals 2

    .prologue
    .line 444
    invoke-static {}, Lcom/chartboost/sdk/b;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 445
    invoke-static {p0}, Lcom/chartboost/sdk/Chartboost;->c(Lcom/chartboost/sdk/Libraries/k;)V

    .line 447
    :cond_0
    invoke-virtual {p0}, Lcom/chartboost/sdk/Libraries/k;->get()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/chartboost/sdk/CBImpressionActivity;

    if-nez v0, :cond_1

    .line 448
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/chartboost/sdk/Chartboost;->c(Lcom/chartboost/sdk/Libraries/k;Z)V

    .line 451
    :cond_1
    sget-object v0, Lcom/chartboost/sdk/Chartboost;->f:Lcom/chartboost/sdk/impl/ay;

    invoke-static {}, Lcom/chartboost/sdk/b;->v()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/ay;->c(Landroid/content/Context;)V

    .line 454
    invoke-static {}, Lcom/chartboost/sdk/b;->e()Z

    move-result v0

    if-nez v0, :cond_2

    .line 455
    sget-object v0, Lcom/chartboost/sdk/Chartboost;->h:Lcom/chartboost/sdk/impl/m;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/m;->b()V

    .line 456
    :cond_2
    sget-object v0, Lcom/chartboost/sdk/Chartboost;->g:Lcom/chartboost/sdk/impl/ba;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/ba;->g()V

    .line 458
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->b()V

    .line 459
    return-void
.end method

.method protected static g()V
    .locals 1

    .prologue
    .line 907
    sget-boolean v0, Lcom/chartboost/sdk/Chartboost;->j:Z

    if-eqz v0, :cond_0

    .line 908
    const/4 v0, 0x0

    sput-object v0, Lcom/chartboost/sdk/Chartboost;->d:Lcom/chartboost/sdk/CBImpressionActivity;

    .line 909
    const/4 v0, 0x0

    sput-boolean v0, Lcom/chartboost/sdk/Chartboost;->j:Z

    .line 911
    :cond_0
    return-void
.end method

.method private static g(Lcom/chartboost/sdk/Libraries/k;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 881
    invoke-static {}, Lcom/chartboost/sdk/b;->e()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 882
    if-nez p0, :cond_2

    .line 883
    sget-object v2, Lcom/chartboost/sdk/Chartboost;->d:Lcom/chartboost/sdk/CBImpressionActivity;

    if-nez v2, :cond_1

    .line 888
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 883
    goto :goto_0

    .line 884
    :cond_2
    sget-object v0, Lcom/chartboost/sdk/Chartboost;->d:Lcom/chartboost/sdk/CBImpressionActivity;

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/Libraries/k;->b(Landroid/app/Activity;)Z

    move-result v0

    goto :goto_0

    .line 886
    :cond_3
    sget-object v2, Lcom/chartboost/sdk/Chartboost;->b:Lcom/chartboost/sdk/Libraries/k;

    if-nez v2, :cond_4

    .line 887
    if-eqz p0, :cond_0

    move v0, v1

    goto :goto_0

    .line 888
    :cond_4
    sget-object v0, Lcom/chartboost/sdk/Chartboost;->b:Lcom/chartboost/sdk/Libraries/k;

    invoke-virtual {v0, p0}, Lcom/chartboost/sdk/Libraries/k;->a(Lcom/chartboost/sdk/Libraries/k;)Z

    move-result v0

    goto :goto_0
.end method

.method public static getAutoCacheAds()Z
    .locals 1

    .prologue
    .line 805
    invoke-static {}, Lcom/chartboost/sdk/b;->g()Z

    move-result v0

    return v0
.end method

.method public static getCustomId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 763
    invoke-static {}, Lcom/chartboost/sdk/b;->l()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDelegate()Lcom/chartboost/sdk/a;
    .locals 1

    .prologue
    .line 791
    invoke-static {}, Lcom/chartboost/sdk/b;->d()Lcom/chartboost/sdk/a;

    move-result-object v0

    return-object v0
.end method

.method protected static getHostActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 990
    sget-object v0, Lcom/chartboost/sdk/Chartboost;->b:Lcom/chartboost/sdk/Libraries/k;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/chartboost/sdk/Chartboost;->b:Lcom/chartboost/sdk/Libraries/k;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/k;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getImpressionsUseActivities()Z
    .locals 1

    .prologue
    .line 1086
    invoke-static {}, Lcom/chartboost/sdk/b;->e()Z

    move-result v0

    return v0
.end method

.method public static getLoggingLevel()Lcom/chartboost/sdk/Libraries/CBLogging$Level;
    .locals 1

    .prologue
    .line 786
    invoke-static {}, Lcom/chartboost/sdk/b;->k()Lcom/chartboost/sdk/Libraries/CBLogging$Level;

    move-result-object v0

    return-object v0
.end method

.method protected static getValidContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 1003
    sget-object v0, Lcom/chartboost/sdk/Chartboost;->b:Lcom/chartboost/sdk/Libraries/k;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/chartboost/sdk/Chartboost;->b:Lcom/chartboost/sdk/Libraries/k;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/k;->b()Landroid/content/Context;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/chartboost/sdk/b;->v()Landroid/content/Context;

    move-result-object v0

    goto :goto_0
.end method

.method protected static h()Lcom/chartboost/sdk/e;
    .locals 1

    .prologue
    .line 1075
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->f()Landroid/app/Activity;

    move-result-object v0

    .line 1076
    if-nez v0, :cond_0

    .line 1077
    const/4 v0, 0x0

    .line 1078
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/chartboost/sdk/Chartboost;->l:Lcom/chartboost/sdk/e;

    goto :goto_0
.end method

.method public static hasInterstitial(Ljava/lang/String;)Z
    .locals 1
    .param p0, "location"    # Ljava/lang/String;

    .prologue
    .line 640
    invoke-static {}, Lcom/chartboost/sdk/b;->n()Z

    move-result v0

    if-nez v0, :cond_0

    .line 641
    const/4 v0, 0x0

    .line 642
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/chartboost/sdk/impl/ae;->f()Lcom/chartboost/sdk/impl/ae;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/chartboost/sdk/impl/ae;->c(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static hasMoreApps(Ljava/lang/String;)Z
    .locals 1
    .param p0, "location"    # Ljava/lang/String;

    .prologue
    .line 692
    invoke-static {}, Lcom/chartboost/sdk/b;->n()Z

    move-result v0

    if-nez v0, :cond_0

    .line 693
    const/4 v0, 0x0

    .line 694
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/chartboost/sdk/impl/av;->f()Lcom/chartboost/sdk/impl/av;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/chartboost/sdk/impl/av;->c(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static hasRewardedVideo(Ljava/lang/String;)Z
    .locals 1
    .param p0, "location"    # Ljava/lang/String;

    .prologue
    .line 600
    invoke-static {}, Lcom/chartboost/sdk/b;->n()Z

    move-result v0

    if-nez v0, :cond_0

    .line 601
    const/4 v0, 0x0

    .line 602
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/chartboost/sdk/impl/af;->h()Lcom/chartboost/sdk/impl/af;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/chartboost/sdk/impl/af;->c(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method static synthetic i()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/chartboost/sdk/Chartboost;->o:Ljava/lang/Runnable;

    return-object v0
.end method

.method public static isAnyViewVisible()Z
    .locals 1

    .prologue
    .line 737
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->h()Lcom/chartboost/sdk/e;

    move-result-object v0

    .line 738
    if-nez v0, :cond_0

    .line 739
    const/4 v0, 0x0

    .line 741
    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/chartboost/sdk/e;->c()Z

    move-result v0

    goto :goto_0
.end method

.method static synthetic j()Z
    .locals 1

    .prologue
    .line 42
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->q()Z

    move-result v0

    return v0
.end method

.method static synthetic k()Lcom/chartboost/sdk/impl/ay;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/chartboost/sdk/Chartboost;->f:Lcom/chartboost/sdk/impl/ay;

    return-object v0
.end method

.method static synthetic l()Lcom/chartboost/sdk/impl/m;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/chartboost/sdk/Chartboost;->h:Lcom/chartboost/sdk/impl/m;

    return-object v0
.end method

.method static synthetic m()Lcom/chartboost/sdk/impl/ba;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/chartboost/sdk/Chartboost;->g:Lcom/chartboost/sdk/impl/ba;

    return-object v0
.end method

.method static synthetic n()Z
    .locals 1

    .prologue
    .line 42
    sget-boolean v0, Lcom/chartboost/sdk/Chartboost;->q:Z

    return v0
.end method

.method static synthetic o()Lcom/chartboost/sdk/CBImpressionActivity;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/chartboost/sdk/Chartboost;->d:Lcom/chartboost/sdk/CBImpressionActivity;

    return-object v0
.end method

.method public static onBackPressed()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 487
    invoke-static {}, Lcom/chartboost/sdk/b;->q()Z

    move-result v1

    if-nez v1, :cond_1

    .line 503
    :cond_0
    :goto_0
    return v0

    .line 489
    :cond_1
    sget-object v1, Lcom/chartboost/sdk/Chartboost;->b:Lcom/chartboost/sdk/Libraries/k;

    if-nez v1, :cond_2

    .line 490
    const-string v1, "Chartboost"

    const-string v2, "The Chartboost methods onCreate(), onStart(), onStop(), and onDestroy() must be called in the corresponding methods of your activity in order for Chartboost to function properly."

    invoke-static {v1, v2}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 495
    :cond_2
    invoke-static {}, Lcom/chartboost/sdk/b;->e()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 496
    sget-boolean v1, Lcom/chartboost/sdk/Chartboost;->n:Z

    if-eqz v1, :cond_0

    .line 497
    sput-boolean v0, Lcom/chartboost/sdk/Chartboost;->n:Z

    .line 498
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->d()Z

    .line 499
    const/4 v0, 0x1

    goto :goto_0

    .line 503
    :cond_3
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->d()Z

    move-result v0

    goto :goto_0
.end method

.method public static onCreate(Landroid/app/Activity;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 164
    invoke-static {}, Lcom/chartboost/sdk/b;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/chartboost/sdk/b;->a(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 173
    :cond_0
    :goto_0
    return-void

    .line 167
    :cond_1
    new-instance v0, Lcom/chartboost/sdk/Chartboost$5;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/Chartboost$5;-><init>(Landroid/app/Activity;)V

    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static onDestroy(Landroid/app/Activity;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 538
    invoke-static {}, Lcom/chartboost/sdk/b;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/chartboost/sdk/b;->a(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 554
    :cond_0
    :goto_0
    return-void

    .line 540
    :cond_1
    new-instance v0, Lcom/chartboost/sdk/Chartboost$3;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/Chartboost$3;-><init>(Landroid/app/Activity;)V

    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static onPause(Landroid/app/Activity;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 406
    invoke-static {}, Lcom/chartboost/sdk/b;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/chartboost/sdk/b;->a(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 418
    :cond_0
    :goto_0
    return-void

    .line 408
    :cond_1
    new-instance v0, Lcom/chartboost/sdk/Chartboost$10;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/Chartboost$10;-><init>(Landroid/app/Activity;)V

    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static onResume(Landroid/app/Activity;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 371
    invoke-static {}, Lcom/chartboost/sdk/b;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/chartboost/sdk/b;->a(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 388
    :cond_0
    :goto_0
    return-void

    .line 373
    :cond_1
    new-instance v0, Lcom/chartboost/sdk/Chartboost$9;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/Chartboost$9;-><init>(Landroid/app/Activity;)V

    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static onStart(Landroid/app/Activity;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 200
    invoke-static {}, Lcom/chartboost/sdk/b;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/chartboost/sdk/b;->a(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 229
    :cond_0
    :goto_0
    return-void

    .line 202
    :cond_1
    new-instance v0, Lcom/chartboost/sdk/Chartboost$6;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/Chartboost$6;-><init>(Landroid/app/Activity;)V

    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static onStop(Landroid/app/Activity;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 430
    invoke-static {}, Lcom/chartboost/sdk/b;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/chartboost/sdk/b;->a(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 441
    :cond_0
    :goto_0
    return-void

    .line 432
    :cond_1
    new-instance v0, Lcom/chartboost/sdk/Chartboost$11;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/Chartboost$11;-><init>(Landroid/app/Activity;)V

    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private static p()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 318
    sput-boolean v0, Lcom/chartboost/sdk/Chartboost;->p:Z

    .line 320
    invoke-static {v0}, Lcom/chartboost/sdk/b;->c(Z)V

    .line 323
    sget-object v0, Lcom/chartboost/sdk/Chartboost;->i:Lcom/chartboost/sdk/Tracking/a;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Tracking/a;->h()V

    .line 324
    invoke-static {}, Lcom/chartboost/sdk/Tracking/a;->b()V

    .line 327
    new-instance v0, Lcom/chartboost/sdk/Chartboost$8;

    invoke-direct {v0}, Lcom/chartboost/sdk/Chartboost$8;-><init>()V

    invoke-static {v0}, Lcom/chartboost/sdk/b;->a(Lcom/chartboost/sdk/b$a;)V

    .line 355
    return-void
.end method

.method private static q()Z
    .locals 1

    .prologue
    .line 1042
    sget-object v0, Lcom/chartboost/sdk/Chartboost;->b:Lcom/chartboost/sdk/Libraries/k;

    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->d(Lcom/chartboost/sdk/Libraries/k;)Z

    move-result v0

    return v0
.end method

.method public static setAutoCacheAds(Z)V
    .locals 0
    .param p0, "autoCacheAds"    # Z

    .prologue
    .line 813
    invoke-static {p0}, Lcom/chartboost/sdk/b;->b(Z)V

    .line 814
    return-void
.end method

.method public static setCustomId(Ljava/lang/String;)V
    .locals 0
    .param p0, "customID"    # Ljava/lang/String;

    .prologue
    .line 772
    invoke-static {p0}, Lcom/chartboost/sdk/b;->c(Ljava/lang/String;)V

    .line 773
    return-void
.end method

.method public static setDelegate(Lcom/chartboost/sdk/ChartboostDelegate;)V
    .locals 0
    .param p0, "delegate"    # Lcom/chartboost/sdk/ChartboostDelegate;

    .prologue
    .line 797
    invoke-static {p0}, Lcom/chartboost/sdk/b;->a(Lcom/chartboost/sdk/a;)V

    .line 798
    return-void
.end method

.method public static setFramework(Lcom/chartboost/sdk/Chartboost$CBFramework;)V
    .locals 0
    .param p0, "framework"    # Lcom/chartboost/sdk/Chartboost$CBFramework;

    .prologue
    .line 752
    invoke-static {p0}, Lcom/chartboost/sdk/b;->a(Lcom/chartboost/sdk/Chartboost$CBFramework;)V

    .line 753
    return-void
.end method

.method public static setImpressionsUseActivities(Z)V
    .locals 0
    .param p0, "impressionsUseActivities"    # Z

    .prologue
    .line 1102
    invoke-static {p0}, Lcom/chartboost/sdk/b;->a(Z)V

    .line 1103
    return-void
.end method

.method public static setLoggingLevel(Lcom/chartboost/sdk/Libraries/CBLogging$Level;)V
    .locals 0
    .param p0, "lvl"    # Lcom/chartboost/sdk/Libraries/CBLogging$Level;

    .prologue
    .line 779
    invoke-static {p0}, Lcom/chartboost/sdk/b;->a(Lcom/chartboost/sdk/Libraries/CBLogging$Level;)V

    .line 780
    return-void
.end method

.method public static setShouldDisplayLoadingViewForMoreApps(Z)V
    .locals 0
    .param p0, "shouldDisplay"    # Z

    .prologue
    .line 835
    invoke-static {p0}, Lcom/chartboost/sdk/b;->g(Z)V

    .line 836
    return-void
.end method

.method public static setShouldPauseClickForConfirmation(Z)V
    .locals 0
    .param p0, "shouldPause"    # Z

    .prologue
    .line 579
    invoke-static {p0}, Lcom/chartboost/sdk/b;->e(Z)V

    .line 580
    return-void
.end method

.method public static setShouldPrefetchVideoContent(Z)V
    .locals 0
    .param p0, "shouldPrefetch"    # Z

    .prologue
    .line 844
    invoke-static {p0}, Lcom/chartboost/sdk/b;->h(Z)V

    .line 845
    if-eqz p0, :cond_0

    .line 846
    invoke-static {}, Lcom/chartboost/sdk/impl/bd;->b()V

    .line 849
    :goto_0
    return-void

    .line 848
    :cond_0
    invoke-static {}, Lcom/chartboost/sdk/impl/bd;->d()V

    goto :goto_0
.end method

.method public static setShouldRequestInterstitialsInFirstSession(Z)V
    .locals 0
    .param p0, "shouldRequest"    # Z

    .prologue
    .line 824
    invoke-static {p0}, Lcom/chartboost/sdk/b;->f(Z)V

    .line 825
    return-void
.end method

.method public static showInterstitial(Ljava/lang/String;)V
    .locals 2
    .param p0, "location"    # Ljava/lang/String;

    .prologue
    .line 667
    invoke-static {}, Lcom/chartboost/sdk/b;->n()Z

    move-result v0

    if-nez v0, :cond_1

    .line 676
    :cond_0
    :goto_0
    return-void

    .line 669
    :cond_1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 670
    const-string v0, "Chartboost"

    const-string v1, "showInterstitial location cannot be empty"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 671
    invoke-static {}, Lcom/chartboost/sdk/b;->d()Lcom/chartboost/sdk/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 672
    invoke-static {}, Lcom/chartboost/sdk/b;->d()Lcom/chartboost/sdk/a;

    move-result-object v0

    sget-object v1, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->INVALID_LOCATION:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-interface {v0, p0, v1}, Lcom/chartboost/sdk/a;->didFailToLoadInterstitial(Ljava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    goto :goto_0

    .line 675
    :cond_2
    invoke-static {}, Lcom/chartboost/sdk/impl/ae;->f()Lcom/chartboost/sdk/impl/ae;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/chartboost/sdk/impl/ae;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static showMoreApps(Ljava/lang/String;)V
    .locals 2
    .param p0, "location"    # Ljava/lang/String;

    .prologue
    .line 718
    invoke-static {}, Lcom/chartboost/sdk/b;->n()Z

    move-result v0

    if-nez v0, :cond_1

    .line 728
    :cond_0
    :goto_0
    return-void

    .line 720
    :cond_1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 721
    const-string v0, "Chartboost"

    const-string v1, "showMoreApps location cannot be empty"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 722
    invoke-static {}, Lcom/chartboost/sdk/b;->d()Lcom/chartboost/sdk/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 723
    invoke-static {}, Lcom/chartboost/sdk/b;->d()Lcom/chartboost/sdk/a;

    move-result-object v0

    sget-object v1, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->INVALID_LOCATION:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-interface {v0, p0, v1}, Lcom/chartboost/sdk/a;->didFailToLoadMoreApps(Ljava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    goto :goto_0

    .line 727
    :cond_2
    invoke-static {}, Lcom/chartboost/sdk/impl/av;->f()Lcom/chartboost/sdk/impl/av;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/chartboost/sdk/impl/av;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static showRewardedVideo(Ljava/lang/String;)V
    .locals 2
    .param p0, "location"    # Ljava/lang/String;

    .prologue
    .line 625
    invoke-static {}, Lcom/chartboost/sdk/b;->n()Z

    move-result v0

    if-nez v0, :cond_1

    .line 634
    :cond_0
    :goto_0
    return-void

    .line 627
    :cond_1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 628
    const-string v0, "Chartboost"

    const-string v1, "showRewardedVideo location cannot be empty"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 629
    invoke-static {}, Lcom/chartboost/sdk/b;->d()Lcom/chartboost/sdk/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 630
    invoke-static {}, Lcom/chartboost/sdk/b;->d()Lcom/chartboost/sdk/a;

    move-result-object v0

    sget-object v1, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->INVALID_LOCATION:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-interface {v0, p0, v1}, Lcom/chartboost/sdk/a;->didFailToLoadRewardedVideo(Ljava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    goto :goto_0

    .line 633
    :cond_2
    invoke-static {}, Lcom/chartboost/sdk/impl/af;->h()Lcom/chartboost/sdk/impl/af;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/chartboost/sdk/impl/af;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static startWithAppId(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "appSignature"    # Ljava/lang/String;

    .prologue
    .line 134
    sget-object v0, Lcom/chartboost/sdk/Chartboost;->c:Lcom/chartboost/sdk/Chartboost;

    if-nez v0, :cond_0

    .line 135
    const-class v1, Lcom/chartboost/sdk/Chartboost;

    monitor-enter v1

    .line 136
    :try_start_0
    sget-object v0, Lcom/chartboost/sdk/Chartboost;->c:Lcom/chartboost/sdk/Chartboost;

    if-nez v0, :cond_4

    .line 137
    if-nez p0, :cond_1

    instance-of v0, p0, Landroid/app/Activity;

    if-nez v0, :cond_1

    .line 138
    const-string v0, "Chartboost"

    const-string v2, "Activity object is null. Please pass a valid activity object"

    invoke-static {v0, v2}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    monitor-exit v1

    .line 155
    :cond_0
    :goto_0
    return-void

    .line 141
    :cond_1
    if-eqz p1, :cond_2

    if-nez p2, :cond_3

    .line 142
    :cond_2
    const-string v0, "Chartboost"

    const-string v2, "AppId or AppSignature is null. Please pass a valid id\'s"

    invoke-static {v0, v2}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    monitor-exit v1

    goto :goto_0

    .line 153
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 145
    :cond_3
    :try_start_1
    new-instance v0, Lcom/chartboost/sdk/Chartboost$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/chartboost/sdk/Chartboost$1;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->a(Ljava/lang/Runnable;)V

    .line 153
    :cond_4
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
