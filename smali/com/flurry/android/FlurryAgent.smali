.class public final Lcom/flurry/android/FlurryAgent;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/location/LocationListener;


# static fields
.field static an:Lcom/flurry/android/FlurryAgent;

.field private static ao:J

.field private static ap:Z

.field private static aq:Landroid/location/Criteria;

.field private static as:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static at:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private aA:Ljava/lang/String;

.field private aB:Ljava/lang/String;

.field private aC:Ljava/lang/String;

.field private aD:Z

.field private aE:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/am;",
            ">;"
        }
    .end annotation
.end field

.field private aF:Landroid/location/LocationManager;

.field private aG:Ljava/lang/String;

.field private aH:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/flurry/android/ReportedIdType;",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private aI:Z

.field private aJ:J

.field private aK:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/am;",
            ">;"
        }
    .end annotation
.end field

.field private aL:J

.field private aM:J

.field private aN:J

.field private aO:Ljava/lang/String;

.field private aP:Ljava/lang/String;

.field private aQ:B

.field private aR:Ljava/lang/String;

.field private aS:B

.field private aT:Ljava/lang/Long;

.field private aU:I

.field private aV:Landroid/location/Location;

.field private aW:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/flurry/android/k;",
            ">;"
        }
    .end annotation
.end field

.field private aX:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/fx;",
            ">;"
        }
    .end annotation
.end field

.field private aY:Z

.field private aZ:I

.field private final ar:Landroid/os/Handler;

.field private au:Ljava/io/File;

.field private av:Ljava/io/File;

.field private volatile aw:Z

.field private volatile ax:Z

.field private ay:J

.field private az:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/content/Context;",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private ba:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/cb;",
            ">;"
        }
    .end annotation
.end field

.field private bb:I

.field private bc:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private bd:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field be:Lcom/flurry/android/IFlurryAds;

.field private bf:Lcom/flurry/android/IAppCloudModule;

.field bg:Lcom/flurry/android/ce;

.field private bh:Lcom/flurry/android/fr;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 78
    new-instance v0, Lcom/flurry/android/FlurryAgent;

    invoke-direct {v0}, Lcom/flurry/android/FlurryAgent;-><init>()V

    sput-object v0, Lcom/flurry/android/FlurryAgent;->an:Lcom/flurry/android/FlurryAgent;

    .line 80
    const-wide/16 v0, 0x2710

    sput-wide v0, Lcom/flurry/android/FlurryAgent;->ao:J

    .line 81
    const/4 v0, 0x1

    sput-boolean v0, Lcom/flurry/android/FlurryAgent;->ap:Z

    .line 83
    const/4 v0, 0x0

    sput-object v0, Lcom/flurry/android/FlurryAgent;->aq:Landroid/location/Criteria;

    .line 87
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/flurry/android/FlurryAgent;->as:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 88
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/flurry/android/FlurryAgent;->at:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object v1, p0, Lcom/flurry/android/FlurryAgent;->au:Ljava/io/File;

    .line 92
    iput-object v1, p0, Lcom/flurry/android/FlurryAgent;->av:Ljava/io/File;

    .line 95
    iput-boolean v0, p0, Lcom/flurry/android/FlurryAgent;->aw:Z

    .line 96
    iput-boolean v0, p0, Lcom/flurry/android/FlurryAgent;->ax:Z

    .line 99
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/flurry/android/FlurryAgent;->az:Ljava/util/Map;

    .line 103
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/android/FlurryAgent;->aD:Z

    .line 109
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/flurry/android/FlurryAgent;->aH:Ljava/util/Map;

    .line 112
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/flurry/android/FlurryAgent;->aK:Ljava/util/List;

    .line 119
    const-string v0, ""

    iput-object v0, p0, Lcom/flurry/android/FlurryAgent;->aO:Ljava/lang/String;

    .line 120
    const-string v0, ""

    iput-object v0, p0, Lcom/flurry/android/FlurryAgent;->aP:Ljava/lang/String;

    .line 121
    iput-byte v2, p0, Lcom/flurry/android/FlurryAgent;->aQ:B

    .line 122
    const-string v0, ""

    iput-object v0, p0, Lcom/flurry/android/FlurryAgent;->aR:Ljava/lang/String;

    .line 123
    iput-byte v2, p0, Lcom/flurry/android/FlurryAgent;->aS:B

    .line 127
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/flurry/android/FlurryAgent;->aW:Ljava/util/Map;

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/flurry/android/FlurryAgent;->aX:Ljava/util/List;

    .line 131
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/flurry/android/FlurryAgent;->ba:Ljava/util/List;

    .line 139
    invoke-static {}, Lcom/flurry/android/FlurryAgent;->o()Lcom/flurry/android/IFlurryAds;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/FlurryAgent;->be:Lcom/flurry/android/IFlurryAds;

    .line 140
    invoke-static {}, Lcom/flurry/android/FlurryAgent;->n()Lcom/flurry/android/IAppCloudModule;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/FlurryAgent;->bf:Lcom/flurry/android/IAppCloudModule;

    .line 142
    iput-object v1, p0, Lcom/flurry/android/FlurryAgent;->bg:Lcom/flurry/android/ce;

    .line 143
    iput-object v1, p0, Lcom/flurry/android/FlurryAgent;->bh:Lcom/flurry/android/fr;

    .line 226
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "FlurryAgent"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 227
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 228
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/flurry/android/FlurryAgent;->ar:Landroid/os/Handler;

    .line 229
    return-void
.end method

.method static synthetic A()J
    .locals 2

    .prologue
    .line 54
    sget-wide v0, Lcom/flurry/android/FlurryAgent;->ao:J

    return-wide v0
.end method

.method private declared-synchronized a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 1002
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->bh:Lcom/flurry/android/fr;

    if-nez v0, :cond_0

    .line 1003
    new-instance v0, Lcom/flurry/android/fr;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/flurry/android/fr;-><init>(Landroid/content/Context;Lcom/flurry/android/FlurryAgent;)V

    iput-object v0, p0, Lcom/flurry/android/FlurryAgent;->bh:Lcom/flurry/android/fr;

    .line 1004
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->bh:Lcom/flurry/android/fr;

    invoke-virtual {v0}, Lcom/flurry/android/fr;->bv()V

    .line 1007
    :cond_0
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->aA:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->aA:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1009
    const-string v0, "FlurryAgent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStartSession called with different api keys: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/android/FlurryAgent;->aA:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/flurry/android/cy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1012
    :cond_1
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->az:Ljava/util/Map;

    invoke-interface {v0, p1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 1013
    if-eqz v0, :cond_2

    .line 1015
    const-string v0, "FlurryAgent"

    const-string v1, "onStartSession called with duplicate context, use a specific Activity or Service as context instead of using a global context"

    invoke-static {v0, v1}, Lcom/flurry/android/cy;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 1018
    :cond_2
    invoke-static {}, Lcom/flurry/android/FlurryAppCloud;->G()V

    .line 1020
    new-instance v0, Lcom/flurry/android/d;

    invoke-direct {v0, p0, p1, p2}, Lcom/flurry/android/d;-><init>(Lcom/flurry/android/FlurryAgent;Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/flurry/android/FlurryAgent;->a(Lcom/flurry/android/fp;)V

    .line 1029
    iget-boolean v0, p0, Lcom/flurry/android/FlurryAgent;->aw:Z

    if-nez v0, :cond_b

    .line 1031
    const-string v0, "FlurryAgent"

    const-string v1, "Initializing Flurry session"

    invoke-static {v0, v1}, Lcom/flurry/android/cy;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1033
    iput-object p2, p0, Lcom/flurry/android/FlurryAgent;->aA:Ljava/lang/String;

    .line 1034
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ".flurryagent."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/android/FlurryAgent;->aA:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/FlurryAgent;->au:Ljava/io/File;

    .line 1035
    const-string v0, ".flurryinstallreceiver."

    invoke-virtual {p1, v0}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/FlurryAgent;->av:Ljava/io/File;

    .line 1037
    invoke-static {}, Lcom/flurry/android/ay;->Y()Lcom/flurry/android/ay;

    .line 1039
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    .line 1041
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->aC:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 1043
    invoke-static {v6}, Lcom/flurry/android/FlurryAgent;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/FlurryAgent;->aC:Ljava/lang/String;

    .line 1045
    :cond_3
    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1046
    iget-object v1, p0, Lcom/flurry/android/FlurryAgent;->aB:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/flurry/android/FlurryAgent;->aB:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1048
    const-string v1, "FlurryAgent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onStartSession called from different application packages: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/android/FlurryAgent;->aB:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " and "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/flurry/android/cy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1050
    :cond_4
    iput-object v0, p0, Lcom/flurry/android/FlurryAgent;->aB:Ljava/lang/String;

    .line 1052
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 1053
    iget-wide v2, p0, Lcom/flurry/android/FlurryAgent;->ay:J

    sub-long v2, v0, v2

    sget-wide v4, Lcom/flurry/android/FlurryAgent;->ao:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_8

    .line 1055
    const-string v2, "FlurryAgent"

    const-string v3, "New session"

    invoke-static {v2, v3}, Lcom/flurry/android/cy;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1058
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/flurry/android/FlurryAgent;->aL:J

    .line 1059
    iput-wide v0, p0, Lcom/flurry/android/FlurryAgent;->aM:J

    .line 1060
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/flurry/android/FlurryAgent;->aN:J

    .line 1061
    const-string v0, ""

    iput-object v0, p0, Lcom/flurry/android/FlurryAgent;->aR:Ljava/lang/String;

    .line 1062
    const/4 v0, 0x0

    iput v0, p0, Lcom/flurry/android/FlurryAgent;->aU:I

    .line 1063
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/android/FlurryAgent;->aV:Landroid/location/Location;

    .line 1064
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/FlurryAgent;->aP:Ljava/lang/String;

    .line 1065
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/FlurryAgent;->aO:Ljava/lang/String;

    .line 1066
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/flurry/android/FlurryAgent;->aW:Ljava/util/Map;

    .line 1067
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/flurry/android/FlurryAgent;->aX:Ljava/util/List;

    .line 1068
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/android/FlurryAgent;->aY:Z

    .line 1069
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/flurry/android/FlurryAgent;->ba:Ljava/util/List;

    .line 1070
    const/4 v0, 0x0

    iput v0, p0, Lcom/flurry/android/FlurryAgent;->aZ:I

    .line 1071
    const/4 v0, 0x0

    iput v0, p0, Lcom/flurry/android/FlurryAgent;->bb:I

    .line 1072
    sget-object v0, Lcom/flurry/android/FlurryAgent;->as:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1073
    sget-object v0, Lcom/flurry/android/FlurryAgent;->at:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1078
    invoke-static {}, Lcom/flurry/android/FlurryAgent;->r()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1080
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->be:Lcom/flurry/android/IFlurryAds;

    iget-wide v2, p0, Lcom/flurry/android/FlurryAgent;->aL:J

    iget-wide v4, p0, Lcom/flurry/android/FlurryAgent;->aM:J

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Lcom/flurry/android/IFlurryAds;->onStartNewSession(Landroid/content/Context;JJ)V

    .line 1083
    :cond_5
    iget-boolean v0, p0, Lcom/flurry/android/FlurryAgent;->aD:Z

    .line 1085
    new-instance v1, Lcom/flurry/android/b;

    invoke-direct {v1, p0, v6, v0}, Lcom/flurry/android/b;-><init>(Lcom/flurry/android/FlurryAgent;Landroid/content/Context;Z)V

    invoke-direct {p0, v1}, Lcom/flurry/android/FlurryAgent;->a(Lcom/flurry/android/fp;)V

    .line 1099
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_a

    .line 1100
    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 1102
    if-eqz v2, :cond_a

    .line 1103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Launch Options Bundle is present "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1104
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/flurry/android/FlurryAgent;->bd:Ljava/util/Map;

    .line 1106
    invoke-virtual {v2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1107
    :cond_6
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1109
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1112
    if-eqz v0, :cond_6

    .line 1114
    invoke-virtual {v2, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 1118
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1120
    :goto_1
    iget-object v4, p0, Lcom/flurry/android/FlurryAgent;->bd:Ljava/util/Map;

    new-instance v5, Ljava/util/ArrayList;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v4, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1121
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Launch options Key: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ". Its value: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1002
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1118
    :cond_7
    :try_start_1
    const-string v1, "null"

    goto :goto_1

    .line 1128
    :cond_8
    const-string v0, "FlurryAgent"

    const-string v1, "Continuing previous session"

    invoke-static {v0, v1}, Lcom/flurry/android/cy;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1130
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->aK:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 1132
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->aK:Ljava/util/List;

    iget-object v1, p0, Lcom/flurry/android/FlurryAgent;->aK:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1135
    :cond_9
    invoke-static {}, Lcom/flurry/android/FlurryAgent;->r()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1137
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->be:Lcom/flurry/android/IFlurryAds;

    invoke-interface {v0, p1}, Lcom/flurry/android/IFlurryAds;->onContinueSession(Landroid/content/Context;)V

    .line 1140
    :cond_a
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/android/FlurryAgent;->aw:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1142
    :cond_b
    monitor-exit p0

    return-void
.end method

.method private declared-synchronized a(Landroid/content/Context;Z)V
    .locals 6

    .prologue
    .line 1146
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/flurry/android/FlurryAppCloud;->H()V

    .line 1148
    if-eqz p1, :cond_0

    .line 1150
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->az:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 1151
    if-nez v0, :cond_0

    .line 1153
    const-string v0, "FlurryAgent"

    const-string v1, "onEndSession called without context from corresponding onStartSession"

    invoke-static {v0, v1}, Lcom/flurry/android/cy;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 1157
    :cond_0
    iget-boolean v0, p0, Lcom/flurry/android/FlurryAgent;->aw:Z

    if-eqz v0, :cond_1

    .line 1158
    invoke-static {}, Lcom/flurry/android/FlurryAgent;->r()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1159
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->be:Lcom/flurry/android/IFlurryAds;

    invoke-interface {v0, p1}, Lcom/flurry/android/IFlurryAds;->cleanUpSession(Landroid/content/Context;)V

    .line 1163
    :cond_1
    iget-boolean v0, p0, Lcom/flurry/android/FlurryAgent;->aw:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->az:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1165
    const-string v0, "FlurryAgent"

    const-string v1, "Ending session"

    invoke-static {v0, v1}, Lcom/flurry/android/cy;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1167
    invoke-direct {p0}, Lcom/flurry/android/FlurryAgent;->x()V

    .line 1169
    if-nez p1, :cond_6

    const/4 v0, 0x0

    .line 1171
    :goto_0
    if-eqz p1, :cond_2

    .line 1173
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1174
    iget-object v2, p0, Lcom/flurry/android/FlurryAgent;->aB:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1176
    const-string v2, "FlurryAgent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onEndSession called from different application package, expected: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/flurry/android/FlurryAgent;->aB:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " actual: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/flurry/android/cy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1180
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 1181
    iput-wide v2, p0, Lcom/flurry/android/FlurryAgent;->ay:J

    .line 1182
    iget-wide v4, p0, Lcom/flurry/android/FlurryAgent;->aM:J

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/flurry/android/FlurryAgent;->aN:J

    .line 1184
    iget-wide v2, p0, Lcom/flurry/android/FlurryAgent;->aN:J

    invoke-direct {p0, v2, v3}, Lcom/flurry/android/FlurryAgent;->b(J)V

    .line 1185
    invoke-direct {p0}, Lcom/flurry/android/FlurryAgent;->id()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    const-string v1, "FlurryAgent"

    const-string v2, "Not creating report because of bad Android ID or generated ID is null"

    invoke-static {v1, v2}, Lcom/flurry/android/cy;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    new-instance v1, Lcom/flurry/android/c;

    invoke-direct {v1, p0, p2, v0}, Lcom/flurry/android/c;-><init>(Lcom/flurry/android/FlurryAgent;ZLandroid/content/Context;)V

    invoke-direct {p0, v1}, Lcom/flurry/android/FlurryAgent;->a(Lcom/flurry/android/fp;)V

    .line 1187
    invoke-static {}, Lcom/flurry/android/FlurryAgent;->r()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1189
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->be:Lcom/flurry/android/IFlurryAds;

    invoke-interface {v0, p1}, Lcom/flurry/android/IFlurryAds;->onEndSession(Landroid/content/Context;)V

    .line 1192
    :cond_4
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flurry/android/FlurryAgent;->aw:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1194
    :cond_5
    monitor-exit p0

    return-void

    .line 1169
    :cond_6
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 1146
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic a(Lcom/flurry/android/FlurryAgent;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/flurry/android/FlurryAgent;->d(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/flurry/android/FlurryAgent;Landroid/content/Context;Z)V
    .locals 3

    .prologue
    .line 54
    const/4 v0, 0x0

    if-eqz p2, :cond_0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/flurry/android/FlurryAgent;->f(Landroid/content/Context;)Landroid/location/Location;

    move-result-object v0

    :cond_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iput-object v0, p0, Lcom/flurry/android/FlurryAgent;->aV:Landroid/location/Location;

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p0, p1}, Lcom/flurry/android/FlurryAgent;->fetchHashedImei(Landroid/content/Context;)[B

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/flurry/android/FlurryAgent;->aH:Ljava/util/Map;

    sget-object v2, Lcom/flurry/android/ReportedIdType;->Sha1Imei:Lcom/flurry/android/ReportedIdType;

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-direct {p0}, Lcom/flurry/android/FlurryAgent;->v()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    const-string v1, "FlurryAgent"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/flurry/android/cy;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private a(Lcom/flurry/android/fp;)V
    .locals 1

    .prologue
    .line 1321
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->ar:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1322
    return-void
.end method

.method private declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 9

    .prologue
    const/4 v0, 0x0

    .line 1452
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/flurry/android/FlurryAgent;->ba:Ljava/util/List;

    if-nez v1, :cond_1

    .line 1454
    const-string v0, "FlurryAgent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onError called before onStartSession.  Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/flurry/android/cy;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1488
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 1458
    :cond_1
    if-eqz p1, :cond_2

    :try_start_1
    const-string v1, "uncaught"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    .line 1460
    :goto_1
    iget v2, p0, Lcom/flurry/android/FlurryAgent;->aU:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/flurry/android/FlurryAgent;->aU:I

    .line 1461
    iget-object v2, p0, Lcom/flurry/android/FlurryAgent;->ba:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/16 v3, 0x32

    if-ge v2, v3, :cond_3

    .line 1463
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 1464
    new-instance v0, Lcom/flurry/android/cb;

    sget-object v1, Lcom/flurry/android/FlurryAgent;->at:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/flurry/android/cb;-><init>(IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1465
    iget-object v1, p0, Lcom/flurry/android/FlurryAgent;->ba:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1467
    const-string v1, "FlurryAgent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error logged: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/flurry/android/cb;->at()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/flurry/android/cy;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1452
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    move v1, v0

    .line 1458
    goto :goto_1

    .line 1469
    :cond_3
    if-eqz v1, :cond_5

    move v8, v0

    .line 1472
    :goto_2
    :try_start_2
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->ba:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v8, v0, :cond_0

    .line 1474
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->ba:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/cb;

    .line 1475
    invoke-virtual {v0}, Lcom/flurry/android/cb;->at()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    const-string v1, "uncaught"

    invoke-virtual {v0}, Lcom/flurry/android/cb;->at()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1477
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 1478
    new-instance v0, Lcom/flurry/android/cb;

    sget-object v1, Lcom/flurry/android/FlurryAgent;->at:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/flurry/android/cb;-><init>(IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1479
    iget-object v1, p0, Lcom/flurry/android/FlurryAgent;->ba:Ljava/util/List;

    invoke-interface {v1, v8, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 1472
    :cond_4
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_2

    .line 1486
    :cond_5
    const-string v0, "FlurryAgent"

    const-string v1, "Max errors logged. No more errors logged."

    invoke-static {v0, v1}, Lcom/flurry/android/cy;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method private declared-synchronized a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const v6, 0x27100

    .line 1407
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->aX:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/fx;

    .line 1409
    invoke-virtual {v0, p1}, Lcom/flurry/android/fx;->K(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1411
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/flurry/android/FlurryAgent;->aM:J

    sub-long/2addr v2, v4

    .line 1413
    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_1

    iget v1, p0, Lcom/flurry/android/FlurryAgent;->aZ:I

    if-ge v1, v6, :cond_1

    .line 1415
    iget v1, p0, Lcom/flurry/android/FlurryAgent;->aZ:I

    invoke-virtual {v0}, Lcom/flurry/android/fx;->getBytes()[B

    move-result-object v4

    array-length v4, v4

    sub-int/2addr v1, v4

    .line 1417
    new-instance v4, Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/flurry/android/fx;->getParameters()Ljava/util/Map;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 1418
    invoke-virtual {v0, p2}, Lcom/flurry/android/fx;->d(Ljava/util/Map;)V

    .line 1420
    invoke-virtual {v0}, Lcom/flurry/android/fx;->getBytes()[B

    move-result-object v5

    array-length v5, v5

    add-int/2addr v5, v1

    if-gt v5, v6, :cond_4

    .line 1422
    invoke-virtual {v0}, Lcom/flurry/android/fx;->getParameters()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    const/16 v6, 0xa

    if-le v5, v6, :cond_3

    .line 1424
    const-string v1, "FlurryAgent"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MaxEventParams exceeded on endEvent: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/flurry/android/fx;->getParameters()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/flurry/android/cy;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 1425
    invoke-virtual {v0, v4}, Lcom/flurry/android/fx;->e(Ljava/util/Map;)V

    .line 1443
    :cond_1
    :goto_0
    invoke-virtual {v0, v2, v3}, Lcom/flurry/android/fx;->h(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1448
    :cond_2
    monitor-exit p0

    return-void

    .line 1429
    :cond_3
    :try_start_1
    invoke-virtual {v0}, Lcom/flurry/android/fx;->getBytes()[B

    move-result-object v4

    array-length v4, v4

    add-int/2addr v1, v4

    iput v1, p0, Lcom/flurry/android/FlurryAgent;->aZ:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1407
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1435
    :cond_4
    :try_start_2
    invoke-virtual {v0, v4}, Lcom/flurry/android/fx;->e(Ljava/util/Map;)V

    .line 1436
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/flurry/android/FlurryAgent;->aY:Z

    .line 1437
    const v1, 0x27100

    iput v1, p0, Lcom/flurry/android/FlurryAgent;->aZ:I

    .line 1439
    const-string v1, "FlurryAgent"

    const-string v4, "Event Log size exceeded. No more event details logged."

    invoke-static {v1, v4}, Lcom/flurry/android/cy;->g(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private declared-synchronized a(Ljava/lang/String;Ljava/util/Map;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    const v7, 0x27100

    .line 1331
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->aX:Ljava/util/List;

    if-nez v0, :cond_1

    .line 1333
    const-string v0, "FlurryAgent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEvent called before onStartSession.  Event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/flurry/android/cy;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1402
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 1337
    :cond_1
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/flurry/android/FlurryAgent;->aM:J

    sub-long v4, v0, v2

    .line 1339
    invoke-static {p1}, Lcom/flurry/android/fl;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1340
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1344
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->aW:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/k;

    .line 1345
    if-nez v0, :cond_3

    .line 1347
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->aW:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const/16 v1, 0x64

    if-ge v0, v1, :cond_2

    .line 1349
    new-instance v0, Lcom/flurry/android/k;

    invoke-direct {v0}, Lcom/flurry/android/k;-><init>()V

    .line 1350
    const/4 v1, 0x1

    iput v1, v0, Lcom/flurry/android/k;->value:I

    .line 1351
    iget-object v1, p0, Lcom/flurry/android/FlurryAgent;->aW:Ljava/util/Map;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1353
    const-string v0, "FlurryAgent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Event count incremented: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/flurry/android/cy;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1366
    :goto_1
    sget-boolean v0, Lcom/flurry/android/FlurryAgent;->ap:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->aX:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x3e8

    if-ge v0, v1, :cond_6

    iget v0, p0, Lcom/flurry/android/FlurryAgent;->aZ:I

    if-ge v0, v7, :cond_6

    .line 1370
    if-nez p2, :cond_7

    .line 1372
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v3

    .line 1374
    :goto_2
    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v0

    const/16 v1, 0xa

    if-le v0, v1, :cond_4

    .line 1376
    const-string v0, "FlurryAgent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MaxEventParams exceeded: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/flurry/android/cy;->g(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 1331
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1357
    :cond_2
    :try_start_2
    const-string v0, "FlurryAgent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Too many different events. Event not counted: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/flurry/android/cy;->g(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1362
    :cond_3
    iget v1, v0, Lcom/flurry/android/k;->value:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/flurry/android/k;->value:I

    goto :goto_1

    .line 1380
    :cond_4
    new-instance v0, Lcom/flurry/android/fx;

    sget-object v1, Lcom/flurry/android/FlurryAgent;->as:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/flurry/android/fx;-><init>(ILjava/lang/String;Ljava/util/Map;JZ)V

    .line 1382
    invoke-virtual {v0}, Lcom/flurry/android/fx;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    iget v2, p0, Lcom/flurry/android/FlurryAgent;->aZ:I

    add-int/2addr v1, v2

    if-gt v1, v7, :cond_5

    .line 1384
    iget-object v1, p0, Lcom/flurry/android/FlurryAgent;->aX:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1385
    iget v1, p0, Lcom/flurry/android/FlurryAgent;->aZ:I

    invoke-virtual {v0}, Lcom/flurry/android/fx;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    add-int/2addr v0, v1

    iput v0, p0, Lcom/flurry/android/FlurryAgent;->aZ:I

    goto/16 :goto_0

    .line 1391
    :cond_5
    const v0, 0x27100

    iput v0, p0, Lcom/flurry/android/FlurryAgent;->aZ:I

    .line 1392
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flurry/android/FlurryAgent;->aY:Z

    .line 1394
    const-string v0, "FlurryAgent"

    const-string v1, "Event Log size exceeded. No more event details logged."

    invoke-static {v0, v1}, Lcom/flurry/android/cy;->g(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1400
    :cond_6
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flurry/android/FlurryAgent;->aY:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    :cond_7
    move-object v3, p2

    goto/16 :goto_2
.end method

.method static synthetic a(Lcom/flurry/android/FlurryAgent;)Z
    .locals 1

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/flurry/android/FlurryAgent;->ax:Z

    return v0
.end method

.method static synthetic b(Lcom/flurry/android/FlurryAgent;)Lcom/flurry/android/am;
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/flurry/android/FlurryAgent;->t()Lcom/flurry/android/am;

    move-result-object v0

    return-object v0
.end method

.method private b(J)V
    .locals 3

    .prologue
    .line 1197
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->aX:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/fx;

    .line 1198
    invoke-virtual {v0}, Lcom/flurry/android/fx;->bC()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/flurry/android/fx;->isFinished()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1199
    invoke-virtual {v0, p1, p2}, Lcom/flurry/android/fx;->h(J)V

    goto :goto_0

    .line 1202
    :cond_1
    return-void
.end method

.method static synthetic b(Lcom/flurry/android/FlurryAgent;Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 54
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/flurry/android/FlurryAgent;->ay:J

    sub-long/2addr v0, v2

    iget-boolean v2, p0, Lcom/flurry/android/FlurryAgent;->aw:Z

    if-nez v2, :cond_1

    sget-wide v2, Lcom/flurry/android/FlurryAgent;->ao:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->aK:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_0

    :try_start_2
    invoke-direct {p0}, Lcom/flurry/android/FlurryAgent;->v()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    const-string v1, "FlurryAgent"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/flurry/android/cy;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method static synthetic c(Lcom/flurry/android/FlurryAgent;)Ljava/util/List;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->aK:Ljava/util/List;

    return-object v0
.end method

.method private declared-synchronized d(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 1598
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/flurry/android/o;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/FlurryAgent;->aG:Ljava/lang/String;

    .line 1600
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->au:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1602
    const-string v0, "FlurryAgent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loading persistent data: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/android/FlurryAgent;->au:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/flurry/android/cy;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1604
    const/4 v2, 0x0

    .line 1608
    :try_start_1
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/flurry/android/FlurryAgent;->au:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 1609
    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1612
    :try_start_2
    new-instance v0, Lcom/flurry/android/gr;

    invoke-direct {v0}, Lcom/flurry/android/gr;-><init>()V

    .line 1613
    iget-object v2, p0, Lcom/flurry/android/FlurryAgent;->aA:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/flurry/android/gr;->a(Ljava/io/DataInputStream;Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/flurry/android/FlurryAgent;->ax:Z

    .line 1615
    iget-boolean v2, p0, Lcom/flurry/android/FlurryAgent;->ax:Z

    if-eqz v2, :cond_0

    .line 1616
    invoke-virtual {v0}, Lcom/flurry/android/gr;->bR()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/flurry/android/FlurryAgent;->aJ:J

    .line 1617
    invoke-virtual {v0}, Lcom/flurry/android/gr;->bP()Z

    move-result v2

    iput-boolean v2, p0, Lcom/flurry/android/FlurryAgent;->aI:Z

    .line 1618
    invoke-virtual {v0}, Lcom/flurry/android/gr;->bQ()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/FlurryAgent;->aK:Ljava/util/List;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1632
    :cond_0
    :goto_0
    :try_start_3
    invoke-static {v1}, Lcom/flurry/android/fl;->a(Ljava/io/Closeable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1637
    :goto_1
    :try_start_4
    iget-boolean v0, p0, Lcom/flurry/android/FlurryAgent;->ax:Z

    if-nez v0, :cond_1

    .line 1639
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->au:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    .line 1640
    if-eqz v0, :cond_4

    .line 1642
    const-string v0, "FlurryAgent"

    const-string v1, "Deleted persistence file"

    invoke-static {v0, v1}, Lcom/flurry/android/cy;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1660
    :cond_1
    :goto_2
    :try_start_5
    iget-boolean v0, p0, Lcom/flurry/android/FlurryAgent;->ax:Z

    if-nez v0, :cond_2

    .line 1662
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flurry/android/FlurryAgent;->aI:Z

    .line 1663
    iget-wide v0, p0, Lcom/flurry/android/FlurryAgent;->aL:J

    iput-wide v0, p0, Lcom/flurry/android/FlurryAgent;->aJ:J

    .line 1664
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/android/FlurryAgent;->ax:Z

    .line 1667
    :cond_2
    invoke-static {}, Lcom/flurry/android/FlurryAgent;->r()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1669
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->be:Lcom/flurry/android/IFlurryAds;

    iget-object v1, p0, Lcom/flurry/android/FlurryAgent;->aH:Ljava/util/Map;

    invoke-interface {v0, v1}, Lcom/flurry/android/IFlurryAds;->setReportedIds(Ljava/util/Map;)V

    .line 1673
    :cond_3
    new-instance v0, Lcom/flurry/android/ar;

    iget-object v1, p0, Lcom/flurry/android/FlurryAgent;->av:Ljava/io/File;

    invoke-direct {v0, v1}, Lcom/flurry/android/ar;-><init>(Ljava/io/File;)V

    .line 1674
    invoke-virtual {v0}, Lcom/flurry/android/ar;->W()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/FlurryAgent;->bc:Ljava/util/Map;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1675
    monitor-exit p0

    return-void

    .line 1621
    :catch_0
    move-exception v0

    :try_start_6
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_0

    .line 1626
    :catch_1
    move-exception v0

    .line 1628
    :goto_3
    :try_start_7
    const-string v2, "FlurryAgent"

    const-string v3, "Error when loading persistent file"

    invoke-static {v2, v3, v0}, Lcom/flurry/android/cy;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 1632
    :try_start_8
    invoke-static {v1}, Lcom/flurry/android/fl;->a(Ljava/io/Closeable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_1

    .line 1598
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1632
    :catchall_1
    move-exception v0

    move-object v1, v2

    :goto_4
    :try_start_9
    invoke-static {v1}, Lcom/flurry/android/fl;->a(Ljava/io/Closeable;)V

    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 1646
    :cond_4
    :try_start_a
    const-string v0, "FlurryAgent"

    const-string v1, "Cannot delete persistence file"

    invoke-static {v0, v1}, Lcom/flurry/android/cy;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_2

    .line 1650
    :catch_2
    move-exception v0

    .line 1652
    :try_start_b
    const-string v1, "FlurryAgent"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/flurry/android/cy;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 1657
    :cond_5
    const-string v0, "FlurryAgent"

    const-string v1, "Agent cache file doesn\'t exist."

    invoke-static {v0, v1}, Lcom/flurry/android/cy;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_2

    .line 1632
    :catchall_2
    move-exception v0

    goto :goto_4

    .line 1626
    :catch_3
    move-exception v0

    move-object v1, v2

    goto :goto_3
.end method

.method static synthetic d(Lcom/flurry/android/FlurryAgent;)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/flurry/android/FlurryAgent;->w()V

    return-void
.end method

.method static synthetic e(Lcom/flurry/android/FlurryAgent;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->ar:Landroid/os/Handler;

    return-object v0
.end method

.method private static e(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 1691
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1692
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 1693
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1695
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 1706
    :goto_0
    return-object v0

    .line 1697
    :cond_0
    iget v1, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    if-eqz v1, :cond_1

    .line 1699
    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 1702
    :catch_0
    move-exception v0

    .line 1704
    const-string v1, "FlurryAgent"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/flurry/android/cy;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1706
    :cond_1
    const-string v0, "Unknown"

    goto :goto_0
.end method

.method public static endTimedEvent(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 669
    if-nez p0, :cond_0

    .line 671
    const-string v0, "FlurryAgent"

    const-string v1, "String eventId passed to endTimedEvent was null."

    invoke-static {v0, v1}, Lcom/flurry/android/cy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 682
    :goto_0
    return-void

    .line 676
    :cond_0
    :try_start_0
    sget-object v0, Lcom/flurry/android/FlurryAgent;->an:Lcom/flurry/android/FlurryAgent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/flurry/android/FlurryAgent;->a(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 678
    :catch_0
    move-exception v0

    .line 680
    const-string v1, "FlurryAgent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to signify the end of event: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/flurry/android/cy;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static endTimedEvent(Ljava/lang/String;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 697
    if-nez p0, :cond_0

    .line 699
    const-string v0, "FlurryAgent"

    const-string v1, "String eventId passed to endTimedEvent was null."

    invoke-static {v0, v1}, Lcom/flurry/android/cy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 715
    :goto_0
    return-void

    .line 702
    :cond_0
    if-nez p1, :cond_1

    .line 704
    const-string v0, "FlurryAgent"

    const-string v1, "String eventId passed to endTimedEvent was null."

    invoke-static {v0, v1}, Lcom/flurry/android/cy;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 709
    :cond_1
    :try_start_0
    sget-object v0, Lcom/flurry/android/FlurryAgent;->an:Lcom/flurry/android/FlurryAgent;

    invoke-direct {v0, p0, p1}, Lcom/flurry/android/FlurryAgent;->a(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 711
    :catch_0
    move-exception v0

    .line 713
    const-string v1, "FlurryAgent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to signify the end of event: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/flurry/android/cy;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private f(Landroid/content/Context;)Landroid/location/Location;
    .locals 7

    .prologue
    .line 1711
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {p1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {p1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3

    .line 1714
    :cond_0
    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 1715
    monitor-enter p0

    .line 1717
    :try_start_0
    iget-object v1, p0, Lcom/flurry/android/FlurryAgent;->aF:Landroid/location/LocationManager;

    if-nez v1, :cond_2

    .line 1719
    iput-object v0, p0, Lcom/flurry/android/FlurryAgent;->aF:Landroid/location/LocationManager;

    .line 1725
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1726
    sget-object v1, Lcom/flurry/android/FlurryAgent;->aq:Landroid/location/Criteria;

    .line 1727
    if-nez v1, :cond_1

    .line 1729
    new-instance v1, Landroid/location/Criteria;

    invoke-direct {v1}, Landroid/location/Criteria;-><init>()V

    .line 1731
    :cond_1
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v1

    .line 1732
    if-eqz v1, :cond_3

    .line 1734
    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    .line 1735
    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    .line 1738
    :goto_1
    return-object v0

    .line 1723
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->aF:Landroid/location/LocationManager;

    goto :goto_0

    .line 1725
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1738
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static getAgentVersion()I
    .locals 1

    .prologue
    .line 267
    const/16 v0, 0x96

    return v0
.end method

.method static getLocale()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1789
    sget-object v0, Lcom/flurry/android/FlurryAgent;->an:Lcom/flurry/android/FlurryAgent;

    iget-object v0, v0, Lcom/flurry/android/FlurryAgent;->aO:Ljava/lang/String;

    return-object v0
.end method

.method static getLocation()Landroid/location/Location;
    .locals 1

    .prologue
    .line 1824
    sget-object v0, Lcom/flurry/android/FlurryAgent;->an:Lcom/flurry/android/FlurryAgent;

    iget-object v0, v0, Lcom/flurry/android/FlurryAgent;->aV:Landroid/location/Location;

    return-object v0
.end method

.method public static getPhoneId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1819
    sget-object v0, Lcom/flurry/android/FlurryAgent;->an:Lcom/flurry/android/FlurryAgent;

    invoke-direct {v0}, Lcom/flurry/android/FlurryAgent;->id()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUseHttps()Z
    .locals 1

    .prologue
    .line 375
    invoke-static {}, Lcom/flurry/android/ce;->getUseHttps()Z

    move-result v0

    return v0
.end method

.method private declared-synchronized id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1804
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->aG:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static logEvent(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 534
    if-nez p0, :cond_0

    .line 536
    const-string v0, "FlurryAgent"

    const-string v1, "String eventId passed to logEvent was null."

    invoke-static {v0, v1}, Lcom/flurry/android/cy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    :goto_0
    return-void

    .line 541
    :cond_0
    :try_start_0
    sget-object v0, Lcom/flurry/android/FlurryAgent;->an:Lcom/flurry/android/FlurryAgent;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/flurry/android/FlurryAgent;->a(Ljava/lang/String;Ljava/util/Map;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 543
    :catch_0
    move-exception v0

    .line 545
    const-string v1, "FlurryAgent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to log event: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/flurry/android/cy;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static logEvent(Ljava/lang/String;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 575
    if-nez p0, :cond_0

    .line 577
    const-string v0, "FlurryAgent"

    const-string v1, "String eventId passed to logEvent was null."

    invoke-static {v0, v1}, Lcom/flurry/android/cy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    :goto_0
    return-void

    .line 580
    :cond_0
    if-nez p1, :cond_1

    .line 582
    const-string v0, "FlurryAgent"

    const-string v1, "String parameters passed to logEvent was null."

    invoke-static {v0, v1}, Lcom/flurry/android/cy;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 587
    :cond_1
    :try_start_0
    sget-object v0, Lcom/flurry/android/FlurryAgent;->an:Lcom/flurry/android/FlurryAgent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/flurry/android/FlurryAgent;->a(Ljava/lang/String;Ljava/util/Map;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 589
    :catch_0
    move-exception v0

    .line 591
    const-string v1, "FlurryAgent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to log event: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/flurry/android/cy;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static logEvent(Ljava/lang/String;Ljava/util/Map;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 640
    if-nez p0, :cond_0

    .line 642
    const-string v0, "FlurryAgent"

    const-string v1, "String eventId passed to logEvent was null."

    invoke-static {v0, v1}, Lcom/flurry/android/cy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 658
    :goto_0
    return-void

    .line 645
    :cond_0
    if-nez p1, :cond_1

    .line 647
    const-string v0, "FlurryAgent"

    const-string v1, "String parameters passed to logEvent was null."

    invoke-static {v0, v1}, Lcom/flurry/android/cy;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 652
    :cond_1
    :try_start_0
    sget-object v0, Lcom/flurry/android/FlurryAgent;->an:Lcom/flurry/android/FlurryAgent;

    invoke-direct {v0, p0, p1, p2}, Lcom/flurry/android/FlurryAgent;->a(Ljava/lang/String;Ljava/util/Map;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 654
    :catch_0
    move-exception v0

    .line 656
    const-string v1, "FlurryAgent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to log event: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/flurry/android/cy;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static logEvent(Ljava/lang/String;Z)V
    .locals 4

    .prologue
    .line 609
    if-nez p0, :cond_0

    .line 611
    const-string v0, "FlurryAgent"

    const-string v1, "String eventId passed to logEvent was null."

    invoke-static {v0, v1}, Lcom/flurry/android/cy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    :goto_0
    return-void

    .line 616
    :cond_0
    :try_start_0
    sget-object v0, Lcom/flurry/android/FlurryAgent;->an:Lcom/flurry/android/FlurryAgent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1}, Lcom/flurry/android/FlurryAgent;->a(Ljava/lang/String;Ljava/util/Map;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 618
    :catch_0
    move-exception v0

    .line 620
    const-string v1, "FlurryAgent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to log event: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/flurry/android/cy;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static n()Lcom/flurry/android/IAppCloudModule;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 147
    invoke-static {}, Lcom/flurry/android/FlurryAgent;->q()Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, v1

    .line 161
    :goto_0
    return-object v0

    .line 153
    :cond_0
    :try_start_0
    const-string v0, "com.flurry.android.es"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 154
    const-string v2, "getInstance"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 155
    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/IAppCloudModule;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 158
    :catch_0
    move-exception v0

    .line 160
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-object v0, v1

    .line 161
    goto :goto_0
.end method

.method private static o()Lcom/flurry/android/IFlurryAds;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 168
    invoke-static {}, Lcom/flurry/android/FlurryAgent;->r()Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, v1

    .line 182
    :goto_0
    return-object v0

    .line 174
    :cond_0
    :try_start_0
    const-string v0, "com.flurry.android.FlurryAds"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 175
    const-string v2, "getInstance"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 176
    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/IFlurryAds;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 179
    :catch_0
    move-exception v0

    .line 181
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-object v0, v1

    .line 182
    goto :goto_0
.end method

.method public static onEndSession(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 477
    if-nez p0, :cond_0

    .line 479
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null context"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 483
    :cond_0
    :try_start_0
    sget-object v0, Lcom/flurry/android/FlurryAgent;->an:Lcom/flurry/android/FlurryAgent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/flurry/android/FlurryAgent;->a(Landroid/content/Context;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 489
    :goto_0
    return-void

    .line 485
    :catch_0
    move-exception v0

    .line 487
    const-string v1, "FlurryAgent"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/flurry/android/cy;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static onError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v2, 0x2

    .line 734
    if-nez p0, :cond_0

    .line 736
    const-string v0, "FlurryAgent"

    const-string v1, "String errorId passed to onError was null."

    invoke-static {v0, v1}, Lcom/flurry/android/cy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 767
    :goto_0
    return-void

    .line 739
    :cond_0
    if-nez p1, :cond_1

    .line 741
    const-string v0, "FlurryAgent"

    const-string v1, "String message passed to onError was null."

    invoke-static {v0, v1}, Lcom/flurry/android/cy;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 744
    :cond_1
    if-nez p2, :cond_2

    .line 746
    const-string v0, "FlurryAgent"

    const-string v1, "String errorClass passed to onError was null."

    invoke-static {v0, v1}, Lcom/flurry/android/cy;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 751
    :cond_2
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 752
    if-eqz v1, :cond_3

    array-length v0, v1

    if-le v0, v2, :cond_3

    .line 755
    array-length v0, v1

    add-int/lit8 v0, v0, -0x2

    new-array v0, v0, [Ljava/lang/StackTraceElement;

    .line 756
    const/4 v2, 0x2

    const/4 v3, 0x0

    array-length v4, v0

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 759
    :goto_1
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 760
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 761
    sget-object v0, Lcom/flurry/android/FlurryAgent;->an:Lcom/flurry/android/FlurryAgent;

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/flurry/android/FlurryAgent;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 763
    :catch_0
    move-exception v0

    .line 765
    const-string v1, "FlurryAgent"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/flurry/android/cy;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method

.method public static onError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 771
    if-nez p0, :cond_0

    .line 773
    const-string v0, "FlurryAgent"

    const-string v1, "String errorId passed to onError was null."

    invoke-static {v0, v1}, Lcom/flurry/android/cy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 794
    :goto_0
    return-void

    .line 776
    :cond_0
    if-nez p1, :cond_1

    .line 778
    const-string v0, "FlurryAgent"

    const-string v1, "String message passed to onError was null."

    invoke-static {v0, v1}, Lcom/flurry/android/cy;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 781
    :cond_1
    if-nez p2, :cond_2

    .line 783
    const-string v0, "FlurryAgent"

    const-string v1, "Throwable passed to onError was null."

    invoke-static {v0, v1}, Lcom/flurry/android/cy;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 788
    :cond_2
    :try_start_0
    sget-object v0, Lcom/flurry/android/FlurryAgent;->an:Lcom/flurry/android/FlurryAgent;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1, p2}, Lcom/flurry/android/FlurryAgent;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 790
    :catch_0
    move-exception v0

    .line 792
    const-string v1, "FlurryAgent"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/flurry/android/cy;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static onEvent(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 803
    if-nez p0, :cond_0

    .line 805
    const-string v0, "FlurryAgent"

    const-string v1, "String eventId passed to onEvent was null."

    invoke-static {v0, v1}, Lcom/flurry/android/cy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 816
    :goto_0
    return-void

    .line 810
    :cond_0
    :try_start_0
    sget-object v0, Lcom/flurry/android/FlurryAgent;->an:Lcom/flurry/android/FlurryAgent;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/flurry/android/FlurryAgent;->a(Ljava/lang/String;Ljava/util/Map;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 812
    :catch_0
    move-exception v0

    .line 814
    const-string v1, "FlurryAgent"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/flurry/android/cy;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static onEvent(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 826
    if-nez p0, :cond_0

    .line 828
    const-string v0, "FlurryAgent"

    const-string v1, "String eventId passed to onEvent was null."

    invoke-static {v0, v1}, Lcom/flurry/android/cy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 844
    :goto_0
    return-void

    .line 831
    :cond_0
    if-nez p1, :cond_1

    .line 833
    const-string v0, "FlurryAgent"

    const-string v1, "Parameters Map passed to onEvent was null."

    invoke-static {v0, v1}, Lcom/flurry/android/cy;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 838
    :cond_1
    :try_start_0
    sget-object v0, Lcom/flurry/android/FlurryAgent;->an:Lcom/flurry/android/FlurryAgent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/flurry/android/FlurryAgent;->a(Ljava/lang/String;Ljava/util/Map;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 840
    :catch_0
    move-exception v0

    .line 842
    const-string v1, "FlurryAgent"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/flurry/android/cy;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static onPageView()V
    .locals 3

    .prologue
    .line 858
    :try_start_0
    sget-object v0, Lcom/flurry/android/FlurryAgent;->an:Lcom/flurry/android/FlurryAgent;

    invoke-direct {v0}, Lcom/flurry/android/FlurryAgent;->u()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 864
    :goto_0
    return-void

    .line 860
    :catch_0
    move-exception v0

    .line 862
    const-string v1, "FlurryAgent"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/flurry/android/cy;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static onStartSession(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 428
    if-nez p0, :cond_0

    .line 430
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null context"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 432
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 434
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Api key not specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 439
    :cond_2
    :try_start_0
    sget-object v0, Lcom/flurry/android/FlurryAgent;->an:Lcom/flurry/android/FlurryAgent;

    invoke-direct {v0, p0, p1}, Lcom/flurry/android/FlurryAgent;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 445
    :goto_0
    return-void

    .line 441
    :catch_0
    move-exception v0

    .line 443
    const-string v1, "FlurryAgent"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/flurry/android/cy;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static p()Z
    .locals 1

    .prologue
    .line 189
    sget-object v0, Lcom/flurry/android/FlurryAgent;->an:Lcom/flurry/android/FlurryAgent;

    iget-boolean v0, v0, Lcom/flurry/android/FlurryAgent;->ax:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/flurry/android/FlurryAgent;->an:Lcom/flurry/android/FlurryAgent;

    iget-boolean v0, v0, Lcom/flurry/android/FlurryAgent;->aw:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static q()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 958
    sget v2, Lcom/flurry/android/n;->SDK_INT:I

    const/16 v3, 0x8

    if-gt v2, v3, :cond_1

    .line 974
    :cond_0
    :goto_0
    return v0

    .line 962
    :cond_1
    sget-object v2, Lcom/flurry/android/FlurryAgent;->an:Lcom/flurry/android/FlurryAgent;

    if-eqz v2, :cond_2

    sget-object v2, Lcom/flurry/android/FlurryAgent;->an:Lcom/flurry/android/FlurryAgent;

    iget-object v2, v2, Lcom/flurry/android/FlurryAgent;->bf:Lcom/flurry/android/IAppCloudModule;

    if-eqz v2, :cond_2

    move v0, v1

    .line 964
    goto :goto_0

    .line 968
    :cond_2
    :try_start_0
    const-string v2, "com.flurry.android.es"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 969
    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 971
    :catch_0
    move-exception v1

    .line 973
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isAppCloudEnabled caught:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0
.end method

.method static r()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 980
    sget v2, Lcom/flurry/android/n;->SDK_INT:I

    const/16 v3, 0x8

    if-gt v2, v3, :cond_1

    .line 996
    :cond_0
    :goto_0
    return v0

    .line 984
    :cond_1
    sget-object v2, Lcom/flurry/android/FlurryAgent;->an:Lcom/flurry/android/FlurryAgent;

    if-eqz v2, :cond_2

    sget-object v2, Lcom/flurry/android/FlurryAgent;->an:Lcom/flurry/android/FlurryAgent;

    iget-object v2, v2, Lcom/flurry/android/FlurryAgent;->be:Lcom/flurry/android/IFlurryAds;

    if-eqz v2, :cond_2

    move v0, v1

    .line 986
    goto :goto_0

    .line 990
    :cond_2
    :try_start_0
    const-string v2, "com.flurry.android.FlurryAds"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 991
    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 993
    :catch_0
    move-exception v1

    .line 995
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isAppSpotEnabled caught:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0
.end method

.method public static setAge(I)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 903
    if-lez p0, :cond_0

    const/16 v0, 0x6e

    if-ge p0, v0, :cond_0

    .line 905
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    int-to-long v2, p0

    const-wide v4, 0x7528ad000L

    mul-long/2addr v2, v4

    sub-long/2addr v0, v2

    .line 906
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2}, Ljava/util/Date;->getYear()I

    move-result v0

    .line 907
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, v0, v6, v6}, Ljava/util/Date;-><init>(III)V

    .line 908
    sget-object v0, Lcom/flurry/android/FlurryAgent;->an:Lcom/flurry/android/FlurryAgent;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/flurry/android/FlurryAgent;->aT:Ljava/lang/Long;

    .line 910
    :cond_0
    return-void
.end method

.method public static setCaptureUncaughtExceptions(Z)V
    .locals 1

    .prologue
    .line 386
    invoke-static {}, Lcom/flurry/android/ay;->Y()Lcom/flurry/android/ay;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/flurry/android/ay;->setEnabled(Z)V

    .line 387
    return-void
.end method

.method public static setContinueSessionMillis(J)V
    .locals 4

    .prologue
    .line 337
    const-wide/16 v0, 0x1388

    cmp-long v0, p0, v0

    if-gez v0, :cond_0

    .line 339
    const-string v0, "FlurryAgent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid time set for session resumption: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/flurry/android/cy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    :goto_0
    return-void

    .line 343
    :cond_0
    sget-object v1, Lcom/flurry/android/FlurryAgent;->an:Lcom/flurry/android/FlurryAgent;

    monitor-enter v1

    .line 345
    :try_start_0
    sput-wide p0, Lcom/flurry/android/FlurryAgent;->ao:J

    .line 346
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static setGender(B)V
    .locals 2

    .prologue
    .line 919
    packed-switch p0, :pswitch_data_0

    .line 927
    sget-object v0, Lcom/flurry/android/FlurryAgent;->an:Lcom/flurry/android/FlurryAgent;

    const/4 v1, -0x1

    iput-byte v1, v0, Lcom/flurry/android/FlurryAgent;->aS:B

    .line 929
    :goto_0
    return-void

    .line 923
    :pswitch_0
    sget-object v0, Lcom/flurry/android/FlurryAgent;->an:Lcom/flurry/android/FlurryAgent;

    iput-byte p0, v0, Lcom/flurry/android/FlurryAgent;->aS:B

    goto :goto_0

    .line 919
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static setLocationCriteria(Landroid/location/Criteria;)V
    .locals 2

    .prologue
    .line 884
    sget-object v1, Lcom/flurry/android/FlurryAgent;->an:Lcom/flurry/android/FlurryAgent;

    monitor-enter v1

    .line 886
    :try_start_0
    sput-object p0, Lcom/flurry/android/FlurryAgent;->aq:Landroid/location/Criteria;

    .line 887
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static setLogEnabled(Z)V
    .locals 2

    .prologue
    .line 291
    sget-object v1, Lcom/flurry/android/FlurryAgent;->an:Lcom/flurry/android/FlurryAgent;

    monitor-enter v1

    .line 293
    if-eqz p0, :cond_0

    .line 295
    :try_start_0
    invoke-static {}, Lcom/flurry/android/cy;->aE()V

    .line 301
    :goto_0
    monitor-exit v1

    return-void

    .line 299
    :cond_0
    invoke-static {}, Lcom/flurry/android/cy;->aD()V

    goto :goto_0

    .line 301
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static setLogEvents(Z)V
    .locals 2

    .prologue
    .line 355
    sget-object v1, Lcom/flurry/android/FlurryAgent;->an:Lcom/flurry/android/FlurryAgent;

    monitor-enter v1

    .line 357
    :try_start_0
    sput-boolean p0, Lcom/flurry/android/FlurryAgent;->ap:Z

    .line 358
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static setLogLevel(I)V
    .locals 2

    .prologue
    .line 310
    sget-object v1, Lcom/flurry/android/FlurryAgent;->an:Lcom/flurry/android/FlurryAgent;

    monitor-enter v1

    .line 312
    :try_start_0
    invoke-static {p0}, Lcom/flurry/android/cy;->setLogLevel(I)V

    .line 313
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static setReportLocation(Z)V
    .locals 2

    .prologue
    .line 279
    sget-object v1, Lcom/flurry/android/FlurryAgent;->an:Lcom/flurry/android/FlurryAgent;

    monitor-enter v1

    .line 281
    :try_start_0
    sget-object v0, Lcom/flurry/android/FlurryAgent;->an:Lcom/flurry/android/FlurryAgent;

    iput-boolean p0, v0, Lcom/flurry/android/FlurryAgent;->aD:Z

    .line 282
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static setReportUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 869
    invoke-static {p0}, Lcom/flurry/android/ce;->setReportUrl(Ljava/lang/String;)V

    .line 870
    return-void
.end method

.method public static setUseHttps(Z)V
    .locals 0

    .prologue
    .line 369
    invoke-static {p0}, Lcom/flurry/android/ce;->setUseHttps(Z)V

    .line 370
    return-void
.end method

.method public static setUserId(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 940
    if-nez p0, :cond_0

    .line 942
    const-string v0, "FlurryAgent"

    const-string v1, "String userId passed to setUserId was null."

    invoke-static {v0, v1}, Lcom/flurry/android/cy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 948
    :goto_0
    return-void

    .line 945
    :cond_0
    sget-object v1, Lcom/flurry/android/FlurryAgent;->an:Lcom/flurry/android/FlurryAgent;

    monitor-enter v1

    .line 947
    :try_start_0
    sget-object v0, Lcom/flurry/android/FlurryAgent;->an:Lcom/flurry/android/FlurryAgent;

    invoke-static {p0}, Lcom/flurry/android/fl;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/flurry/android/FlurryAgent;->aR:Ljava/lang/String;

    .line 948
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static setVersionName(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 250
    if-nez p0, :cond_0

    .line 252
    const-string v0, "FlurryAgent"

    const-string v1, "String versionName passed to setVersionName was null."

    invoke-static {v0, v1}, Lcom/flurry/android/cy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    :goto_0
    return-void

    .line 255
    :cond_0
    sget-object v1, Lcom/flurry/android/FlurryAgent;->an:Lcom/flurry/android/FlurryAgent;

    monitor-enter v1

    .line 257
    :try_start_0
    sget-object v0, Lcom/flurry/android/FlurryAgent;->an:Lcom/flurry/android/FlurryAgent;

    iput-object p0, v0, Lcom/flurry/android/FlurryAgent;->aC:Ljava/lang/String;

    .line 258
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private declared-synchronized t()Lcom/flurry/android/am;
    .locals 3

    .prologue
    .line 1282
    monitor-enter p0

    :try_start_0
    new-instance v2, Lcom/flurry/android/eb;

    invoke-direct {v2}, Lcom/flurry/android/eb;-><init>()V

    .line 1284
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->aC:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/flurry/android/eb;->setVersion(Ljava/lang/String;)V

    .line 1285
    iget-wide v0, p0, Lcom/flurry/android/FlurryAgent;->aL:J

    invoke-virtual {v2, v0, v1}, Lcom/flurry/android/eb;->d(J)V

    .line 1286
    iget-wide v0, p0, Lcom/flurry/android/FlurryAgent;->aN:J

    invoke-virtual {v2, v0, v1}, Lcom/flurry/android/eb;->e(J)V

    .line 1287
    const-wide/16 v0, 0x0

    invoke-virtual {v2, v0, v1}, Lcom/flurry/android/eb;->f(J)V

    .line 1288
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->aO:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/flurry/android/eb;->y(Ljava/lang/String;)V

    .line 1289
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->aP:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/flurry/android/eb;->setTimeZone(Ljava/lang/String;)V

    .line 1290
    iget-byte v0, p0, Lcom/flurry/android/FlurryAgent;->aQ:B

    invoke-virtual {v2, v0}, Lcom/flurry/android/eb;->b(I)V

    .line 1291
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->aR:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    invoke-virtual {v2, v0}, Lcom/flurry/android/eb;->setUserId(Ljava/lang/String;)V

    .line 1292
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->aV:Landroid/location/Location;

    invoke-virtual {v2, v0}, Lcom/flurry/android/eb;->a(Landroid/location/Location;)V

    .line 1294
    iget v0, p0, Lcom/flurry/android/FlurryAgent;->bb:I

    invoke-virtual {v2, v0}, Lcom/flurry/android/eb;->c(I)V

    .line 1295
    iget-byte v0, p0, Lcom/flurry/android/FlurryAgent;->aS:B

    invoke-virtual {v2, v0}, Lcom/flurry/android/eb;->setGender(B)V

    .line 1296
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->aT:Ljava/lang/Long;

    invoke-virtual {v2, v0}, Lcom/flurry/android/eb;->c(Ljava/lang/Long;)V

    .line 1298
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->aX:Ljava/util/List;

    invoke-virtual {v2, v0}, Lcom/flurry/android/eb;->e(Ljava/util/List;)V

    .line 1299
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->aW:Ljava/util/Map;

    invoke-virtual {v2, v0}, Lcom/flurry/android/eb;->b(Ljava/util/Map;)V

    .line 1301
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->ba:Ljava/util/List;

    invoke-virtual {v2, v0}, Lcom/flurry/android/eb;->f(Ljava/util/List;)V

    .line 1302
    iget v0, p0, Lcom/flurry/android/FlurryAgent;->aU:I

    invoke-virtual {v2, v0}, Lcom/flurry/android/eb;->d(I)V

    .line 1303
    iget-boolean v0, p0, Lcom/flurry/android/FlurryAgent;->aY:Z

    invoke-virtual {v2, v0}, Lcom/flurry/android/eb;->a(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1305
    const/4 v1, 0x0

    .line 1307
    :try_start_1
    new-instance v0, Lcom/flurry/android/am;

    invoke-direct {v0, v2}, Lcom/flurry/android/am;-><init>(Lcom/flurry/android/eb;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1312
    :goto_1
    monitor-exit p0

    return-object v0

    .line 1291
    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->aR:Ljava/lang/String;

    goto :goto_0

    .line 1308
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v0, v1

    goto :goto_1

    .line 1282
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized u()V
    .locals 1

    .prologue
    .line 1326
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/flurry/android/FlurryAgent;->bb:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/flurry/android/FlurryAgent;->bb:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1327
    monitor-exit p0

    return-void

    .line 1326
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private v()V
    .locals 13

    .prologue
    .line 1495
    :try_start_0
    const-string v0, "FlurryAgent"

    const-string v1, "generating agent report"

    invoke-static {v0, v1}, Lcom/flurry/android/cy;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1497
    new-instance v0, Lcom/flurry/android/cn;

    iget-object v1, p0, Lcom/flurry/android/FlurryAgent;->aA:Ljava/lang/String;

    iget-object v2, p0, Lcom/flurry/android/FlurryAgent;->aC:Ljava/lang/String;

    invoke-direct {p0}, Lcom/flurry/android/FlurryAgent;->id()Ljava/lang/String;

    move-result-object v3

    iget-wide v4, p0, Lcom/flurry/android/FlurryAgent;->aJ:J

    iget-wide v6, p0, Lcom/flurry/android/FlurryAgent;->aL:J

    iget-object v8, p0, Lcom/flurry/android/FlurryAgent;->aK:Ljava/util/List;

    iget-object v9, p0, Lcom/flurry/android/FlurryAgent;->av:Ljava/io/File;

    iget-object v10, p0, Lcom/flurry/android/FlurryAgent;->aH:Ljava/util/Map;

    iget-object v11, p0, Lcom/flurry/android/FlurryAgent;->bc:Ljava/util/Map;

    iget-object v12, p0, Lcom/flurry/android/FlurryAgent;->bd:Ljava/util/Map;

    invoke-direct/range {v0 .. v12}, Lcom/flurry/android/cn;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/util/List;Ljava/io/File;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    .line 1510
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/flurry/android/FlurryAgent;->aK:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/flurry/android/FlurryAgent;->aE:Ljava/util/List;

    .line 1512
    invoke-virtual {v0}, Lcom/flurry/android/cn;->N()[B

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1513
    const-string v1, "FlurryAgent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "generated report of size "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/flurry/android/cn;->N()[B

    move-result-object v3

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/android/FlurryAgent;->aK:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " reports."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/flurry/android/cy;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1515
    iget-object v1, p0, Lcom/flurry/android/FlurryAgent;->bg:Lcom/flurry/android/ce;

    invoke-virtual {v0}, Lcom/flurry/android/cn;->N()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/flurry/android/ce;->a([B)V

    .line 1517
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/android/FlurryAgent;->aI:Z

    .line 1518
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->aK:Ljava/util/List;

    iget-object v1, p0, Lcom/flurry/android/FlurryAgent;->aE:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 1519
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/android/FlurryAgent;->aE:Ljava/util/List;

    .line 1521
    const-string v1, "FlurryAgent"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Done sending "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v0, p0, Lcom/flurry/android/FlurryAgent;->aw:Z

    if-eqz v0, :cond_0

    const-string v0, "initial "

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "agent report"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/flurry/android/cy;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1524
    invoke-direct {p0}, Lcom/flurry/android/FlurryAgent;->w()V

    .line 1535
    :goto_1
    return-void

    .line 1521
    :cond_0
    const-string v0, ""

    goto :goto_0

    .line 1528
    :cond_1
    const-string v0, "FlurryAgent"

    const-string v1, "Error generating report"

    invoke-static {v0, v1}, Lcom/flurry/android/cy;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1531
    :catch_0
    move-exception v0

    .line 1533
    const-string v1, "FlurryAgent"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/flurry/android/cy;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private declared-synchronized w()V
    .locals 4

    .prologue
    .line 1567
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->au:Ljava/io/File;

    invoke-static {v0}, Lcom/flurry/android/an;->a(Ljava/io/File;)Z

    move-result v0

    .line 1569
    if-nez v0, :cond_0

    .line 1570
    const-string v0, "FlurryAgent"

    const-string v1, "ERROR! CREATE PARENT DIR DIDN\'T PROCCEED"

    invoke-static {v0, v1}, Lcom/flurry/android/cy;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1591
    :goto_0
    monitor-exit p0

    return-void

    .line 1575
    :cond_0
    :try_start_1
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/flurry/android/FlurryAgent;->au:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1576
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1578
    new-instance v0, Lcom/flurry/android/gr;

    invoke-direct {v0}, Lcom/flurry/android/gr;-><init>()V

    .line 1580
    iget-wide v2, p0, Lcom/flurry/android/FlurryAgent;->aJ:J

    invoke-virtual {v0, v2, v3}, Lcom/flurry/android/gr;->i(J)V

    .line 1581
    iget-boolean v2, p0, Lcom/flurry/android/FlurryAgent;->aI:Z

    invoke-virtual {v0, v2}, Lcom/flurry/android/gr;->b(Z)V

    .line 1582
    iget-object v2, p0, Lcom/flurry/android/FlurryAgent;->aK:Ljava/util/List;

    invoke-virtual {v0, v2}, Lcom/flurry/android/gr;->k(Ljava/util/List;)V

    .line 1584
    iget-object v2, p0, Lcom/flurry/android/FlurryAgent;->aA:Ljava/lang/String;

    invoke-direct {p0}, Lcom/flurry/android/FlurryAgent;->id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/flurry/android/gr;->a(Ljava/io/DataOutputStream;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1586
    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1567
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1588
    :catch_1
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method private declared-synchronized x()V
    .locals 1

    .prologue
    .line 1776
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->aF:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    .line 1778
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->aF:Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1780
    :cond_0
    monitor-exit p0

    return-void

    .line 1776
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static y()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1784
    sget-object v0, Lcom/flurry/android/FlurryAgent;->an:Lcom/flurry/android/FlurryAgent;

    iget-object v0, v0, Lcom/flurry/android/FlurryAgent;->aA:Ljava/lang/String;

    return-object v0
.end method

.method static z()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1794
    sget-object v0, Lcom/flurry/android/FlurryAgent;->an:Lcom/flurry/android/FlurryAgent;

    iget-object v0, v0, Lcom/flurry/android/FlurryAgent;->aP:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method final a(Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 199
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 201
    const-string v0, ""

    .line 202
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 203
    if-eqz v1, :cond_2

    array-length v1, v1

    if-lez v1, :cond_2

    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 206
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 208
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 219
    :cond_1
    :goto_0
    const-string v1, "uncaught"

    invoke-static {v1, v0, p1}, Lcom/flurry/android/FlurryAgent;->onError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 220
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->az:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 221
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/flurry/android/FlurryAgent;->a(Landroid/content/Context;Z)V

    .line 222
    return-void

    .line 214
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 216
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected final fetchHashedImei(Landroid/content/Context;)[B
    .locals 4

    .prologue
    .line 1743
    const-string v0, "android.permission.READ_PHONE_STATE"

    invoke-virtual {p1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 1745
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 1746
    if-eqz v0, :cond_1

    .line 1748
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 1749
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 1753
    :try_start_0
    invoke-static {v0}, Lcom/flurry/android/fl;->F(Ljava/lang/String;)[B

    move-result-object v0

    .line 1754
    if-eqz v0, :cond_0

    array-length v1, v0

    const/16 v2, 0x14

    if-ne v1, v2, :cond_0

    .line 1771
    :goto_0
    return-object v0

    .line 1760
    :cond_0
    const-string v1, "FlurryAgent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sha1 is not 20 bytes long: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/flurry/android/cy;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1771
    :cond_1
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public final getNetworkStatus()Z
    .locals 1

    .prologue
    .line 1880
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->bh:Lcom/flurry/android/fr;

    if-eqz v0, :cond_0

    .line 1881
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->bh:Lcom/flurry/android/fr;

    invoke-virtual {v0}, Lcom/flurry/android/fr;->bu()Z

    move-result v0

    .line 1885
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final declared-synchronized onLocationChanged(Landroid/location/Location;)V
    .locals 3

    .prologue
    .line 1832
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/flurry/android/FlurryAgent;->aV:Landroid/location/Location;

    .line 1833
    invoke-direct {p0}, Lcom/flurry/android/FlurryAgent;->x()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1839
    :goto_0
    monitor-exit p0

    return-void

    .line 1835
    :catch_0
    move-exception v0

    .line 1837
    :try_start_1
    const-string v1, "FlurryAgent"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/flurry/android/cy;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1832
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final onNetworkStateChanged(Z)V
    .locals 3

    .prologue
    .line 1861
    const-string v0, "myNetworkListener"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNetworkStateChanged = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1863
    sget-object v0, Lcom/flurry/android/FlurryAgent;->an:Lcom/flurry/android/FlurryAgent;

    if-nez v0, :cond_1

    .line 1876
    :cond_0
    :goto_0
    return-void

    .line 1866
    :cond_1
    sget-object v0, Lcom/flurry/android/FlurryAgent;->an:Lcom/flurry/android/FlurryAgent;

    iget-object v0, v0, Lcom/flurry/android/FlurryAgent;->bg:Lcom/flurry/android/ce;

    if-eqz v0, :cond_0

    .line 1868
    sget-object v0, Lcom/flurry/android/FlurryAgent;->an:Lcom/flurry/android/FlurryAgent;

    new-instance v1, Lcom/flurry/android/f;

    invoke-direct {v1, p1}, Lcom/flurry/android/f;-><init>(Z)V

    invoke-direct {v0, v1}, Lcom/flurry/android/FlurryAgent;->a(Lcom/flurry/android/fp;)V

    goto :goto_0
.end method

.method public final onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1845
    return-void
.end method

.method public final onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1851
    return-void
.end method

.method public final onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 1857
    return-void
.end method

.method final s()Lcom/flurry/android/ce;
    .locals 1

    .prologue
    .line 1205
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->bg:Lcom/flurry/android/ce;

    return-object v0
.end method
