.class public Lcom/flurry/android/FlurryAds;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/android/IFlurryAds;
.implements Lcom/flurry/android/au;


# static fields
.field private static gR:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static gS:Lcom/flurry/org/apache/avro/io/DecoderFactory;

.field private static gT:Lcom/flurry/android/el;

.field private static hF:Lcom/flurry/android/FlurryAds;

.field static p:Ljava/lang/String;


# instance fields
.field private aC:Ljava/lang/String;

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

.field private aL:J

.field private aM:J

.field private gU:Lcom/flurry/android/ea;

.field private gV:Z

.field private gW:Z

.field private gX:Ljava/io/File;

.field private gY:Ljava/io/File;

.field private gZ:Ljava/lang/String;

.field private hA:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private hB:Lcom/flurry/android/AdUnit;

.field private hC:Lcom/flurry/android/fm;

.field private final hD:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final hE:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private hG:Z

.field private hH:Lcom/flurry/android/dz;

.field private ha:[B

.field private hb:Z

.field private hc:Z

.field private volatile hd:Ljava/lang/String;

.field private volatile he:Ljava/lang/String;

.field private volatile hf:Lcom/flurry/android/Location;

.field private volatile hg:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private hh:Lcom/flurry/android/cw;

.field private hi:Lcom/flurry/android/AdUnit;

.field private hj:J

.field hk:Lcom/flurry/android/aa;

.field private hl:Ljava/lang/String;

.field private hm:Landroid/os/Handler;

.field hn:Lcom/flurry/android/gv;

.field ho:Lcom/flurry/android/ca;

.field private hp:Lcom/flurry/android/ICustomAdNetworkHandler;

.field private final hq:Lcom/flurry/android/m;

.field private final hr:Lcom/flurry/android/ba;

.field private hs:Lcom/flurry/android/FlurryAdListener;

.field private ht:I

.field private final hu:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field volatile hv:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/cw;",
            ">;"
        }
    .end annotation
.end field

.field private volatile hw:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/flurry/android/cw;",
            ">;"
        }
    .end annotation
.end field

.field private volatile hx:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/cw;",
            ">;"
        }
    .end annotation
.end field

.field private volatile hy:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private volatile hz:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 102
    const-string v0, "FlurryAgent"

    sput-object v0, Lcom/flurry/android/FlurryAds;->p:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput-boolean v4, p0, Lcom/flurry/android/FlurryAds;->gV:Z

    .line 106
    iput-boolean v4, p0, Lcom/flurry/android/FlurryAds;->gW:Z

    .line 107
    iput-object v0, p0, Lcom/flurry/android/FlurryAds;->gX:Ljava/io/File;

    .line 108
    iput-object v0, p0, Lcom/flurry/android/FlurryAds;->gY:Ljava/io/File;

    .line 111
    iput-object v0, p0, Lcom/flurry/android/FlurryAds;->ha:[B

    .line 112
    iput-boolean v5, p0, Lcom/flurry/android/FlurryAds;->hb:Z

    .line 113
    iput-boolean v4, p0, Lcom/flurry/android/FlurryAds;->hc:Z

    .line 116
    iput-object v0, p0, Lcom/flurry/android/FlurryAds;->hd:Ljava/lang/String;

    .line 117
    iput-object v0, p0, Lcom/flurry/android/FlurryAds;->he:Ljava/lang/String;

    .line 200
    invoke-static {}, Lcom/flurry/android/ca;->aq()Lcom/flurry/android/ca;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/FlurryAds;->ho:Lcom/flurry/android/ca;

    .line 202
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/flurry/android/FlurryAds;->hv:Ljava/util/List;

    .line 203
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/flurry/android/FlurryAds;->hw:Ljava/util/Map;

    .line 204
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/flurry/android/FlurryAds;->hx:Ljava/util/List;

    .line 205
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/flurry/android/FlurryAds;->hy:Ljava/util/List;

    .line 206
    iput-boolean v4, p0, Lcom/flurry/android/FlurryAds;->hz:Z

    .line 209
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 210
    const-string v1, "open"

    const-string v2, "directOpen"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    const-string v1, "expand"

    const-string v2, "doExpand"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    const-string v1, "collapse"

    const-string v2, "doCollapse"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/FlurryAds;->hD:Ljava/util/Map;

    .line 216
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 217
    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "notifyUser"

    aput-object v2, v1, v4

    const-string v2, "nextFrame"

    aput-object v2, v1, v5

    const-string v2, "closeAd"

    aput-object v2, v1, v6

    const-string v2, "expandAd"

    aput-object v2, v1, v7

    const/4 v2, 0x4

    const-string v3, "collapseAd"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "verifyURL"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 218
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/FlurryAds;->hE:Ljava/util/Set;

    .line 221
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "FlurryAdThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 222
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 223
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/flurry/android/FlurryAds;->hm:Landroid/os/Handler;

    .line 225
    new-instance v0, Lcom/flurry/android/aa;

    invoke-direct {v0}, Lcom/flurry/android/aa;-><init>()V

    iput-object v0, p0, Lcom/flurry/android/FlurryAds;->hk:Lcom/flurry/android/aa;

    .line 226
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Integer;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/flurry/android/FlurryAds;->gR:Ljava/util/List;

    .line 228
    new-instance v0, Lcom/flurry/org/apache/avro/io/DecoderFactory;

    invoke-direct {v0}, Lcom/flurry/org/apache/avro/io/DecoderFactory;-><init>()V

    sput-object v0, Lcom/flurry/android/FlurryAds;->gS:Lcom/flurry/org/apache/avro/io/DecoderFactory;

    .line 229
    new-instance v0, Lcom/flurry/android/el;

    invoke-direct {v0, p0}, Lcom/flurry/android/el;-><init>(Lcom/flurry/android/FlurryAds;)V

    sput-object v0, Lcom/flurry/android/FlurryAds;->gT:Lcom/flurry/android/el;

    .line 230
    new-instance v0, Lcom/flurry/android/ea;

    invoke-direct {v0, p0}, Lcom/flurry/android/ea;-><init>(Lcom/flurry/android/FlurryAds;)V

    iput-object v0, p0, Lcom/flurry/android/FlurryAds;->gU:Lcom/flurry/android/ea;

    .line 232
    new-instance v0, Lcom/flurry/android/gv;

    invoke-direct {v0}, Lcom/flurry/android/gv;-><init>()V

    iput-object v0, p0, Lcom/flurry/android/FlurryAds;->hn:Lcom/flurry/android/gv;

    .line 235
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object v0, p0, Lcom/flurry/android/FlurryAds;->aC:Ljava/lang/String;

    .line 236
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    iput-object v0, p0, Lcom/flurry/android/FlurryAds;->gZ:Ljava/lang/String;

    .line 238
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/flurry/android/FlurryAds;->hg:Ljava/util/Map;

    .line 240
    new-instance v0, Lcom/flurry/android/l;

    invoke-direct {v0}, Lcom/flurry/android/l;-><init>()V

    iput-object v0, p0, Lcom/flurry/android/FlurryAds;->hq:Lcom/flurry/android/m;

    .line 241
    new-instance v0, Lcom/flurry/android/i;

    invoke-direct {v0}, Lcom/flurry/android/i;-><init>()V

    iput-object v0, p0, Lcom/flurry/android/FlurryAds;->hr:Lcom/flurry/android/ba;

    .line 243
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/flurry/android/FlurryAds;->hu:Ljava/util/List;

    .line 244
    return-void
.end method

.method private C(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 3142
    iget-object v0, p0, Lcom/flurry/android/FlurryAds;->hn:Lcom/flurry/android/gv;

    invoke-virtual {v0, p1}, Lcom/flurry/android/gv;->C(Ljava/lang/String;)V

    .line 3143
    return-void
.end method

.method private declared-synchronized a(Lcom/flurry/android/cw;Ljava/lang/String;ZLjava/util/Map;)Lcom/flurry/android/cw;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/android/cw;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/flurry/android/cw;"
        }
    .end annotation

    .prologue
    .line 2542
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "changeAdState("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2543
    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2545
    :try_start_1
    iget-object v0, p0, Lcom/flurry/android/FlurryAds;->hv:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2547
    iget-object v0, p0, Lcom/flurry/android/FlurryAds;->hv:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2548
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "changeAdState added adLog = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2550
    :cond_0
    invoke-direct {p0, p2, p3, p4}, Lcom/flurry/android/FlurryAds;->a(Ljava/lang/String;ZLjava/util/Map;)Lcom/flurry/android/gc;

    move-result-object v0

    .line 2551
    invoke-virtual {p1, v0}, Lcom/flurry/android/cw;->a(Lcom/flurry/android/gc;)V

    .line 2552
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2553
    monitor-exit p0

    return-object p1

    .line 2552
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2542
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private a(Landroid/content/Context;Lcom/flurry/android/AdUnit;)Lcom/flurry/android/fm;
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v8, 0x0

    const/4 v6, 0x0

    .line 2966
    iput-object p2, p0, Lcom/flurry/android/FlurryAds;->hB:Lcom/flurry/android/AdUnit;

    .line 2968
    if-nez p2, :cond_0

    move-object v0, v8

    .line 2991
    :goto_0
    return-object v0

    .line 2973
    :cond_0
    invoke-virtual {p2}, Lcom/flurry/android/AdUnit;->getAdFrames()Ljava/util/List;

    move-result-object v0

    .line 2974
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    move-object v0, v8

    .line 2975
    goto :goto_0

    .line 2978
    :cond_2
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/flurry/android/AdFrame;

    .line 2979
    invoke-virtual {v7}, Lcom/flurry/android/AdFrame;->getBinding()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 2980
    invoke-virtual {v7}, Lcom/flurry/android/AdFrame;->getContent()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    .line 2981
    invoke-virtual {v7}, Lcom/flurry/android/AdFrame;->getAdSpaceLayout()Lcom/flurry/android/AdSpaceLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/AdSpaceLayout;->getFormat()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    .line 2982
    invoke-virtual {v7}, Lcom/flurry/android/AdFrame;->getAdGuid()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2983
    iget-object v0, p0, Lcom/flurry/android/FlurryAds;->hw:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/cw;

    .line 2984
    if-nez v0, :cond_8

    .line 2985
    invoke-static {p0, v1}, Lcom/flurry/android/ct;->a(Lcom/flurry/android/FlurryAds;Ljava/lang/String;)Lcom/flurry/android/cw;

    move-result-object v5

    .line 2988
    :goto_1
    new-instance v0, Lcom/flurry/android/gt;

    const-string v1, "filled"

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/flurry/android/gt;-><init>(Ljava/lang/String;Ljava/util/Map;Landroid/content/Context;Lcom/flurry/android/AdUnit;Lcom/flurry/android/cw;I)V

    invoke-virtual {p0, v0, p0, v12}, Lcom/flurry/android/FlurryAds;->onEvent(Lcom/flurry/android/gt;Lcom/flurry/android/au;I)V

    .line 2990
    invoke-virtual {v7}, Lcom/flurry/android/AdFrame;->getAdSpaceLayout()Lcom/flurry/android/AdSpaceLayout;

    move-result-object v0

    invoke-static {v0}, Lcom/flurry/android/ct;->b(Lcom/flurry/android/AdSpaceLayout;)Lcom/flurry/android/AdCreative;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/android/FlurryAds;->hB:Lcom/flurry/android/AdUnit;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/flurry/android/FlurryAds;->hB:Lcom/flurry/android/AdUnit;

    if-eq v1, p2, :cond_4

    .line 2991
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/flurry/android/FlurryAds;->hC:Lcom/flurry/android/fm;

    goto :goto_0

    .line 2990
    :cond_4
    iput-object v8, p0, Lcom/flurry/android/FlurryAds;->hC:Lcom/flurry/android/fm;

    iget-object v1, p0, Lcom/flurry/android/FlurryAds;->hp:Lcom/flurry/android/ICustomAdNetworkHandler;

    const/4 v2, 0x4

    if-ne v9, v2, :cond_5

    if-eqz v1, :cond_5

    invoke-interface {v1, p1, v0, v10}, Lcom/flurry/android/ICustomAdNetworkHandler;->getAdFromNetwork(Landroid/content/Context;Lcom/flurry/android/AdCreative;Ljava/lang/String;)Lcom/flurry/android/AdNetworkView;

    move-result-object v0

    if-eqz v0, :cond_5

    iput-object p0, v0, Lcom/flurry/android/p;->R:Lcom/flurry/android/FlurryAds;

    iput-object v5, v0, Lcom/flurry/android/p;->S:Lcom/flurry/android/cw;

    iput v6, v0, Lcom/flurry/android/p;->U:I

    iput-object p2, v0, Lcom/flurry/android/p;->T:Lcom/flurry/android/AdUnit;

    new-instance v1, Lcom/flurry/android/ex;

    invoke-direct {v1, v0, p2}, Lcom/flurry/android/ex;-><init>(Lcom/flurry/android/p;Lcom/flurry/android/AdUnit;)V

    iput-object v1, p0, Lcom/flurry/android/FlurryAds;->hC:Lcom/flurry/android/fm;

    goto :goto_2

    :cond_5
    const-string v0, "takeover"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iput-object v5, p0, Lcom/flurry/android/FlurryAds;->hh:Lcom/flurry/android/cw;

    iput-object p2, p0, Lcom/flurry/android/FlurryAds;->hi:Lcom/flurry/android/AdUnit;

    iget-object v0, p0, Lcom/flurry/android/FlurryAds;->hr:Lcom/flurry/android/ba;

    invoke-interface {v0, p1, p0, v5, p2}, Lcom/flurry/android/ba;->a(Landroid/content/Context;Lcom/flurry/android/FlurryAds;Lcom/flurry/android/cw;Lcom/flurry/android/AdUnit;)Lcom/flurry/android/ae;

    move-result-object v0

    if-eqz v0, :cond_3

    new-instance v1, Lcom/flurry/android/bs;

    invoke-direct {v1, v0, p2}, Lcom/flurry/android/bs;-><init>(Lcom/flurry/android/ae;Lcom/flurry/android/AdUnit;)V

    iput-object v1, p0, Lcom/flurry/android/FlurryAds;->hC:Lcom/flurry/android/fm;

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/flurry/android/FlurryAds;->hq:Lcom/flurry/android/m;

    invoke-interface {v0, p1, p0, v5, p2}, Lcom/flurry/android/m;->b(Landroid/content/Context;Lcom/flurry/android/FlurryAds;Lcom/flurry/android/cw;Lcom/flurry/android/AdUnit;)Lcom/flurry/android/p;

    move-result-object v0

    if-eqz v0, :cond_7

    new-instance v1, Lcom/flurry/android/ex;

    invoke-direct {v1, v0, p2}, Lcom/flurry/android/ex;-><init>(Lcom/flurry/android/p;Lcom/flurry/android/AdUnit;)V

    iput-object v1, p0, Lcom/flurry/android/FlurryAds;->hC:Lcom/flurry/android/fm;

    goto :goto_2

    :cond_7
    sget-object v0, Lcom/flurry/android/FlurryAds;->p:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to create view for ad network: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", network is unsupported on Android, or no ICustomAdNetworkHandler was registered or it failed to return a view."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/flurry/android/cy;->g(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/flurry/android/gt;

    const-string v1, "renderFailed"

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/flurry/android/gt;-><init>(Ljava/lang/String;Ljava/util/Map;Landroid/content/Context;Lcom/flurry/android/AdUnit;Lcom/flurry/android/cw;I)V

    invoke-virtual {p0, v0, p0, v12}, Lcom/flurry/android/FlurryAds;->onEvent(Lcom/flurry/android/gt;Lcom/flurry/android/au;I)V

    goto :goto_2

    :cond_8
    move-object v5, v0

    goto/16 :goto_1
.end method

.method private declared-synchronized a(Ljava/lang/String;ZLjava/util/Map;)Lcom/flurry/android/gc;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/flurry/android/gc;"
        }
    .end annotation

    .prologue
    .line 2564
    monitor-enter p0

    :try_start_0
    new-instance v1, Lcom/flurry/android/gc;

    invoke-virtual {p0}, Lcom/flurry/android/FlurryAds;->bh()J

    move-result-wide v4

    move-object v2, p1

    move v3, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/flurry/android/gc;-><init>(Ljava/lang/String;ZJLjava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static a([BLjava/lang/Class;)Lcom/flurry/org/apache/avro/specific/SpecificRecordBase;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Lcom/flurry/org/apache/avro/specific/SpecificRecordBase;",
            ">([B",
            "Ljava/lang/Class",
            "<TA;>;)TA;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2255
    sget-object v0, Lcom/flurry/android/FlurryAds;->gS:Lcom/flurry/org/apache/avro/io/DecoderFactory;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v2, v1}, Lcom/flurry/org/apache/avro/io/DecoderFactory;->binaryDecoder(Ljava/io/InputStream;Lcom/flurry/org/apache/avro/io/BinaryDecoder;)Lcom/flurry/org/apache/avro/io/BinaryDecoder;

    move-result-object v0

    .line 2258
    :try_start_0
    new-instance v2, Lcom/flurry/org/apache/avro/specific/SpecificDatumReader;

    invoke-direct {v2, p1}, Lcom/flurry/org/apache/avro/specific/SpecificDatumReader;-><init>(Ljava/lang/Class;)V

    .line 2259
    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Lcom/flurry/org/apache/avro/specific/SpecificDatumReader;->read(Ljava/lang/Object;Lcom/flurry/org/apache/avro/io/Decoder;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/org/apache/avro/specific/SpecificRecordBase;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2271
    :goto_0
    return-object v0

    .line 2261
    :catch_0
    move-exception v0

    .line 2263
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ClassCastException in parseAvroBinary:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/ClassCastException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ClassCastException in parseAvroBinary: bytes = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " type = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-object v0, v1

    .line 2265
    goto :goto_0

    .line 2267
    :catch_1
    move-exception v0

    .line 2269
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IOException in parseAvroBinary:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2270
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IOException in parseAvroBinary: bytes = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " type = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-object v0, v1

    .line 2271
    goto :goto_0
.end method

.method static synthetic a(Lcom/flurry/android/FlurryAds;)Ljava/io/File;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/flurry/android/FlurryAds;->gX:Ljava/io/File;

    return-object v0
.end method

.method private static a(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1465
    if-nez p0, :cond_0

    .line 1466
    const/4 v0, 0x0

    .line 1469
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "adSpaceName"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Lcom/flurry/android/cw;Lcom/flurry/android/AdUnit;Lcom/flurry/android/y;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 1850
    const-string v0, ".*?(%\\{\\w+\\}).*?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 1851
    invoke-virtual {v1, p4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 1852
    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1853
    iget-object v2, p0, Lcom/flurry/android/FlurryAds;->gU:Lcom/flurry/android/ea;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, p1, p2, p4, v0}, Lcom/flurry/android/ea;->a(Lcom/flurry/android/cw;Lcom/flurry/android/AdUnit;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 1854
    invoke-virtual {v1, p4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    goto :goto_0

    .line 1857
    :cond_0
    return-object p4
.end method

.method private static a(Lcom/flurry/android/AdFrame;Lcom/flurry/android/gt;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/android/AdFrame;",
            "Lcom/flurry/android/gt;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/y;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2589
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2590
    invoke-virtual {p0}, Lcom/flurry/android/AdFrame;->getCallbacks()Ljava/util/List;

    move-result-object v0

    .line 2591
    iget-object v3, p1, Lcom/flurry/android/gt;->jf:Ljava/lang/String;

    .line 2594
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/Callback;

    .line 2596
    invoke-virtual {v0}, Lcom/flurry/android/Callback;->getEvent()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2597
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2600
    invoke-virtual {v0}, Lcom/flurry/android/Callback;->getActions()Ljava/util/List;

    move-result-object v0

    .line 2601
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 2603
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 2604
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2605
    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    .line 2607
    const/4 v1, -0x1

    if-eq v7, v1, :cond_2

    .line 2609
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 2610
    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 2612
    const-string v7, "%{eventParams}"

    invoke-virtual {v0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2614
    const-string v7, "%{eventParams}"

    const-string v8, ""

    invoke-virtual {v0, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 2615
    iget-object v7, p1, Lcom/flurry/android/gt;->bj:Ljava/util/Map;

    invoke-interface {v6, v7}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 2618
    :cond_1
    invoke-static {v0}, Lcom/flurry/android/fl;->H(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    move-object v0, v1

    .line 2624
    :cond_2
    new-instance v1, Lcom/flurry/android/y;

    invoke-direct {v1, v0, v6, p1}, Lcom/flurry/android/y;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/flurry/android/gt;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2629
    :cond_3
    return-object v2
.end method

.method private declared-synchronized a(Lcom/flurry/android/SdkLogResponse;)V
    .locals 2

    .prologue
    .line 1869
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/flurry/android/SdkLogResponse;->getResult()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "success"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1871
    iget-object v0, p0, Lcom/flurry/android/FlurryAds;->hv:Ljava/util/List;

    iget-object v1, p0, Lcom/flurry/android/FlurryAds;->hx:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1872
    :cond_0
    monitor-exit p0

    return-void

    .line 1869
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized a(Lcom/flurry/android/ca;Ljava/io/DataOutputStream;)V
    .locals 5

    .prologue
    .line 2528
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/flurry/android/ca;->ar()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/bl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2532
    const/4 v2, 0x1

    :try_start_1
    invoke-virtual {p2, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 2533
    invoke-virtual {v0, p2}, Lcom/flurry/android/bl;->a(Ljava/io/DataOutput;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2535
    :catch_0
    move-exception v2

    :try_start_2
    sget-object v2, Lcom/flurry/android/FlurryAds;->p:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unable to convert freqCap to byte[]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/flurry/android/bl;->ab()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/flurry/android/cy;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 2528
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 2538
    :cond_0
    monitor-exit p0

    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Lcom/flurry/android/FlurryAdSize;J)Z
    .locals 10

    .prologue
    const/4 v8, 0x1

    const/4 v6, 0x0

    .line 1905
    invoke-direct {p0, p1, p2}, Lcom/flurry/android/FlurryAds;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v6, v8

    .line 1935
    :cond_0
    :goto_0
    return v6

    .line 1909
    :cond_1
    new-instance v0, Lcom/flurry/android/bi;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v7, v6

    invoke-direct/range {v0 .. v7}, Lcom/flurry/android/bi;-><init>(Lcom/flurry/android/FlurryAds;Landroid/content/Context;Ljava/lang/String;Lcom/flurry/android/FlurryAdSize;Landroid/view/ViewGroup;ZZ)V

    .line 1911
    new-array v1, v6, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/flurry/android/bi;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1914
    :try_start_0
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p4, p5, v1}, Lcom/flurry/android/bi;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 1915
    invoke-direct {p0, p1, p2}, Lcom/flurry/android/FlurryAds;->c(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v0

    if-eqz v0, :cond_0

    move v6, v8

    .line 1917
    goto :goto_0

    .line 1921
    :catch_0
    move-exception v0

    .line 1922
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 1926
    :catch_1
    move-exception v0

    .line 1927
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->printStackTrace()V

    goto :goto_0

    .line 1932
    :catch_2
    move-exception v0

    goto :goto_0
.end method

.method private a([BLjava/lang/String;)Z
    .locals 4

    .prologue
    .line 2140
    if-nez p2, :cond_0

    .line 2142
    const/4 v0, 0x0

    .line 2172
    :goto_0
    return v0

    .line 2146
    :cond_0
    const-string v0, "/v6/getAds.do"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2148
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/flurry/android/FlurryAds;->hd:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/flurry/android/FlurryAds;->hd:Ljava/lang/String;

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2155
    :goto_2
    invoke-direct {p0, p1, v0}, Lcom/flurry/android/FlurryAds;->b([BLjava/lang/String;)[B

    move-result-object v0

    .line 2159
    if-eqz v0, :cond_1

    .line 2161
    :try_start_0
    const-string v1, "/postAdLog.do"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2163
    invoke-direct {p0, v0}, Lcom/flurry/android/FlurryAds;->c([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2172
    :cond_1
    :goto_3
    const/4 v0, 0x1

    goto :goto_0

    .line 2148
    :cond_2
    invoke-static {}, Lcom/flurry/android/FlurryAgent;->getUseHttps()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "https://ads.flurry.com"

    goto :goto_1

    :cond_3
    const-string v0, "http://ads.flurry.com"

    goto :goto_1

    .line 2152
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/flurry/android/FlurryAds;->he:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/flurry/android/FlurryAds;->he:Ljava/lang/String;

    :goto_4
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_5
    invoke-static {}, Lcom/flurry/android/FlurryAgent;->getUseHttps()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "https://adlog.flurry.com"

    goto :goto_4

    :cond_6
    const-string v0, "http://adlog.flurry.com"

    goto :goto_4

    .line 2167
    :catch_0
    move-exception v0

    .line 2169
    sget-object v1, Lcom/flurry/android/FlurryAds;->p:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IOException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/flurry/android/cy;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method private static a(Ljava/io/InputStream;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2233
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2234
    const/16 v1, 0x80

    new-array v1, v1, [B

    .line 2236
    :goto_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 2238
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 2240
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;IIIIZLcom/flurry/android/FlurryAdSize;Landroid/content/Context;)[B
    .locals 10

    .prologue
    .line 2068
    invoke-direct {p0}, Lcom/flurry/android/FlurryAds;->bn()Ljava/util/List;

    move-result-object v3

    .line 2069
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/flurry/android/FlurryAds;->ho:Lcom/flurry/android/ca;

    invoke-virtual {v2}, Lcom/flurry/android/ca;->ar()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/flurry/android/bl;

    invoke-static {}, Lcom/flurry/android/FrequencyCapInfo;->bK()Lcom/flurry/android/FrequencyCapInfo$Builder;

    move-result-object v6

    invoke-virtual {v2}, Lcom/flurry/android/bl;->ab()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/flurry/android/FrequencyCapInfo$Builder;->setIdHash(Ljava/lang/CharSequence;)Lcom/flurry/android/FrequencyCapInfo$Builder;

    move-result-object v6

    invoke-virtual {v2}, Lcom/flurry/android/bl;->ah()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Lcom/flurry/android/FrequencyCapInfo$Builder;->setExpirationTime(J)Lcom/flurry/android/FrequencyCapInfo$Builder;

    move-result-object v6

    invoke-virtual {v2}, Lcom/flurry/android/bl;->ae()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/flurry/android/FrequencyCapInfo$Builder;->setNewCap(I)Lcom/flurry/android/FrequencyCapInfo$Builder;

    move-result-object v6

    invoke-virtual {v2}, Lcom/flurry/android/bl;->af()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/flurry/android/FrequencyCapInfo$Builder;->setPreviousCap(I)Lcom/flurry/android/FrequencyCapInfo$Builder;

    move-result-object v6

    invoke-virtual {v2}, Lcom/flurry/android/bl;->ag()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/flurry/android/FrequencyCapInfo$Builder;->setPreviousCapType(I)Lcom/flurry/android/FrequencyCapInfo$Builder;

    move-result-object v6

    invoke-virtual {v2}, Lcom/flurry/android/bl;->ai()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Lcom/flurry/android/FrequencyCapInfo$Builder;->setServeTime(J)Lcom/flurry/android/FrequencyCapInfo$Builder;

    move-result-object v6

    invoke-virtual {v2}, Lcom/flurry/android/bl;->ac()I

    move-result v2

    invoke-virtual {v6, v2}, Lcom/flurry/android/FrequencyCapInfo$Builder;->setViews(I)Lcom/flurry/android/FrequencyCapInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/flurry/android/FrequencyCapInfo$Builder;->build()Lcom/flurry/android/FrequencyCapInfo;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2072
    :cond_0
    invoke-static {}, Lcom/flurry/android/AdRequest;->bt()Lcom/flurry/android/AdRequest$Builder;

    move-result-object v2

    invoke-static {}, Lcom/flurry/android/FlurryAgent;->y()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/flurry/android/AdRequest$Builder;->setApiKey(Ljava/lang/CharSequence;)Lcom/flurry/android/AdRequest$Builder;

    move-result-object v2

    const-string v5, ""

    invoke-virtual {v2, v5}, Lcom/flurry/android/AdRequest$Builder;->setAdSpaceName(Ljava/lang/CharSequence;)Lcom/flurry/android/AdRequest$Builder;

    move-result-object v2

    sget-object v5, Lcom/flurry/android/FlurryAds;->gR:Ljava/util/List;

    invoke-virtual {v2, v5}, Lcom/flurry/android/AdRequest$Builder;->setBindings(Ljava/util/List;)Lcom/flurry/android/AdRequest$Builder;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/flurry/android/AdRequest$Builder;->setAdReportedIds(Ljava/util/List;)Lcom/flurry/android/AdRequest$Builder;

    move-result-object v5

    iget-object v2, p0, Lcom/flurry/android/FlurryAds;->hf:Lcom/flurry/android/Location;

    if-eqz v2, :cond_3

    :goto_1
    invoke-virtual {v5, v2}, Lcom/flurry/android/AdRequest$Builder;->setLocation(Lcom/flurry/android/Location;)Lcom/flurry/android/AdRequest$Builder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/flurry/android/FlurryAds;->hz:Z

    invoke-virtual {v2, v3}, Lcom/flurry/android/AdRequest$Builder;->setTestDevice(Z)Lcom/flurry/android/AdRequest$Builder;

    move-result-object v2

    invoke-static {}, Lcom/flurry/android/FlurryAgent;->getAgentVersion()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/flurry/android/AdRequest$Builder;->setAgentVersion(Ljava/lang/CharSequence;)Lcom/flurry/android/AdRequest$Builder;

    move-result-object v2

    iget-wide v6, p0, Lcom/flurry/android/FlurryAds;->aL:J

    invoke-virtual {v2, v6, v7}, Lcom/flurry/android/AdRequest$Builder;->setSessionId(J)Lcom/flurry/android/AdRequest$Builder;

    move-result-object v2

    invoke-static {}, Lcom/flurry/android/AdViewContainer;->B()Lcom/flurry/android/AdViewContainer$Builder;

    move-result-object v3

    invoke-virtual {v3, p5}, Lcom/flurry/android/AdViewContainer$Builder;->setScreenHeight(I)Lcom/flurry/android/AdViewContainer$Builder;

    move-result-object v3

    invoke-virtual {v3, p4}, Lcom/flurry/android/AdViewContainer$Builder;->setScreenWidth(I)Lcom/flurry/android/AdViewContainer$Builder;

    move-result-object v3

    invoke-virtual {v3, p3}, Lcom/flurry/android/AdViewContainer$Builder;->setViewHeight(I)Lcom/flurry/android/AdViewContainer$Builder;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/flurry/android/AdViewContainer$Builder;->setViewWidth(I)Lcom/flurry/android/AdViewContainer$Builder;

    move-result-object v3

    invoke-virtual/range {p8 .. p8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {v3, v5}, Lcom/flurry/android/AdViewContainer$Builder;->setDensity(F)Lcom/flurry/android/AdViewContainer$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/flurry/android/AdViewContainer$Builder;->build()Lcom/flurry/android/AdViewContainer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/flurry/android/AdRequest$Builder;->setAdViewContainer(Lcom/flurry/android/AdViewContainer;)Lcom/flurry/android/AdRequest$Builder;

    move-result-object v2

    invoke-static {}, Lcom/flurry/android/FlurryAgent;->getLocale()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/flurry/android/AdRequest$Builder;->setLocale(Ljava/lang/CharSequence;)Lcom/flurry/android/AdRequest$Builder;

    move-result-object v2

    invoke-static {}, Lcom/flurry/android/FlurryAgent;->z()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/flurry/android/AdRequest$Builder;->setTimezone(Ljava/lang/CharSequence;)Lcom/flurry/android/AdRequest$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/android/FlurryAds;->aC:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/flurry/android/AdRequest$Builder;->setOsVersion(Ljava/lang/CharSequence;)Lcom/flurry/android/AdRequest$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/android/FlurryAds;->gZ:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/flurry/android/AdRequest$Builder;->setDevicePlatform(Ljava/lang/CharSequence;)Lcom/flurry/android/AdRequest$Builder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/flurry/android/AdRequest$Builder;->setCanDoSKAppStore(Z)Lcom/flurry/android/AdRequest$Builder;

    move-result-object v3

    const-string v2, "android.permission.ACCESS_NETWORK_STATE"

    move-object/from16 v0, p8

    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "connectivity"

    move-object/from16 v0, p8

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_5

    sget-object v2, Lcom/flurry/android/gp;->iP:Lcom/flurry/android/gp;

    :goto_2
    invoke-virtual {v2}, Lcom/flurry/android/gp;->getValue()I

    move-result v2

    invoke-virtual {v3, v2}, Lcom/flurry/android/AdRequest$Builder;->setNetworkStatus(I)Lcom/flurry/android/AdRequest$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/flurry/android/AdRequest$Builder;->setFrequencyCapInfos(Ljava/util/List;)Lcom/flurry/android/AdRequest$Builder;

    move-result-object v2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/flurry/android/AdRequest$Builder;->setPreferredLanguage(Ljava/lang/CharSequence;)Lcom/flurry/android/AdRequest$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/flurry/android/AdRequest$Builder;->build()Lcom/flurry/android/AdRequest;

    move-result-object v2

    .line 2099
    if-eqz p6, :cond_7

    .line 2101
    invoke-static/range {p6 .. p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/flurry/android/AdRequest;->a(Ljava/lang/Boolean;)V

    .line 2108
    :goto_3
    if-eqz p7, :cond_1

    .line 2110
    invoke-static {}, Lcom/flurry/android/TestAds;->bN()Lcom/flurry/android/TestAds$Builder;

    move-result-object v3

    invoke-virtual/range {p7 .. p7}, Lcom/flurry/android/FlurryAdSize;->getValue()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/flurry/android/TestAds$Builder;->setAdspacePlacement(I)Lcom/flurry/android/TestAds$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/flurry/android/TestAds$Builder;->build()Lcom/flurry/android/TestAds;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/flurry/android/AdRequest;->a(Lcom/flurry/android/TestAds;)V

    .line 2113
    :cond_1
    iget-object v3, p0, Lcom/flurry/android/FlurryAds;->hA:Ljava/util/Map;

    if-eqz v3, :cond_2

    .line 2115
    invoke-direct {p0}, Lcom/flurry/android/FlurryAds;->bj()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/flurry/android/AdRequest;->c(Ljava/util/Map;)V

    .line 2118
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Got ad request: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2121
    new-instance v3, Lcom/flurry/org/apache/avro/specific/SpecificDatumWriter;

    const-class v4, Lcom/flurry/android/AdRequest;

    invoke-direct {v3, v4}, Lcom/flurry/org/apache/avro/specific/SpecificDatumWriter;-><init>(Ljava/lang/Class;)V

    .line 2122
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2123
    invoke-static {}, Lcom/flurry/org/apache/avro/io/EncoderFactory;->get()Lcom/flurry/org/apache/avro/io/EncoderFactory;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v4, v6}, Lcom/flurry/org/apache/avro/io/EncoderFactory;->directBinaryEncoder(Ljava/io/OutputStream;Lcom/flurry/org/apache/avro/io/BinaryEncoder;)Lcom/flurry/org/apache/avro/io/BinaryEncoder;

    move-result-object v5

    .line 2126
    :try_start_0
    invoke-virtual {v3, v2, v5}, Lcom/flurry/org/apache/avro/specific/SpecificDatumWriter;->write(Ljava/lang/Object;Lcom/flurry/org/apache/avro/io/Encoder;)V

    .line 2127
    invoke-virtual {v5}, Lcom/flurry/org/apache/avro/io/BinaryEncoder;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2133
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 2134
    :goto_4
    return-object v2

    .line 2072
    :cond_3
    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-static {}, Lcom/flurry/android/FlurryAgent;->getLocation()Landroid/location/Location;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-virtual {v6}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    double-to-float v3, v2

    invoke-virtual {v6}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    double-to-float v2, v6

    :cond_4
    invoke-static {}, Lcom/flurry/android/Location;->bS()Lcom/flurry/android/Location$Builder;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/flurry/android/Location$Builder;->setLat(F)Lcom/flurry/android/Location$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/flurry/android/Location$Builder;->setLon(F)Lcom/flurry/android/Location$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/flurry/android/Location$Builder;->build()Lcom/flurry/android/Location;

    move-result-object v2

    goto/16 :goto_1

    :cond_5
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_6

    sget-object v2, Lcom/flurry/android/gp;->iQ:Lcom/flurry/android/gp;

    goto/16 :goto_2

    :cond_6
    sget-object v2, Lcom/flurry/android/gp;->iO:Lcom/flurry/android/gp;

    goto/16 :goto_2

    .line 2105
    :cond_7
    invoke-virtual {v2, p1}, Lcom/flurry/android/AdRequest;->c(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 2128
    :catch_0
    move-exception v2

    .line 2129
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    .line 2130
    const/4 v2, 0x0

    new-array v2, v2, [B

    goto :goto_4
.end method

.method private static b([B)I
    .locals 1

    .prologue
    .line 2277
    new-instance v0, Lcom/flurry/android/CrcMessageDigest;

    invoke-direct {v0}, Lcom/flurry/android/CrcMessageDigest;-><init>()V

    .line 2278
    invoke-virtual {v0, p0}, Lcom/flurry/android/CrcMessageDigest;->update([B)V

    .line 2279
    invoke-virtual {v0}, Lcom/flurry/android/CrcMessageDigest;->getChecksum()I

    move-result v0

    return v0
.end method

.method private b(Landroid/content/Context;Ljava/lang/String;Landroid/view/ViewGroup;)V
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 1303
    invoke-static {p1}, Lcom/flurry/android/FlurryAds;->o(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1305
    iget-object v0, p0, Lcom/flurry/android/FlurryAds;->hs:Lcom/flurry/android/FlurryAdListener;

    if-eqz v0, :cond_0

    .line 1308
    iget-object v0, p0, Lcom/flurry/android/FlurryAds;->hs:Lcom/flurry/android/FlurryAdListener;

    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/flurry/android/FlurryAdListener;->spaceDidFailToReceiveAd(Ljava/lang/String;)V

    .line 1335
    :cond_0
    :goto_0
    return-void

    .line 1313
    :cond_1
    iget-object v0, p0, Lcom/flurry/android/FlurryAds;->hn:Lcom/flurry/android/gv;

    invoke-virtual {v0, p2}, Lcom/flurry/android/gv;->P(Ljava/lang/String;)Lcom/flurry/android/fm;

    move-result-object v7

    .line 1314
    if-eqz v7, :cond_0

    .line 1315
    invoke-virtual {v7}, Lcom/flurry/android/fm;->L()Lcom/flurry/android/AdUnit;

    move-result-object v0

    .line 1316
    iget-object v1, p0, Lcom/flurry/android/FlurryAds;->hw:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/flurry/android/AdUnit;->getAdFrames()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/AdFrame;

    invoke-virtual {v0}, Lcom/flurry/android/AdFrame;->getAdGuid()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/flurry/android/cw;

    .line 1317
    new-instance v0, Lcom/flurry/android/gt;

    const-string v1, "requested"

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v7}, Lcom/flurry/android/fm;->L()Lcom/flurry/android/AdUnit;

    move-result-object v4

    move-object v3, p1

    invoke-direct/range {v0 .. v6}, Lcom/flurry/android/gt;-><init>(Ljava/lang/String;Ljava/util/Map;Landroid/content/Context;Lcom/flurry/android/AdUnit;Lcom/flurry/android/cw;I)V

    invoke-virtual {p0, v0, p0, v6}, Lcom/flurry/android/FlurryAds;->onEvent(Lcom/flurry/android/gt;Lcom/flurry/android/au;I)V

    .line 1319
    iget-object v0, p0, Lcom/flurry/android/FlurryAds;->hs:Lcom/flurry/android/FlurryAdListener;

    if-eqz v0, :cond_2

    .line 1321
    instance-of v0, v7, Lcom/flurry/android/ex;

    if-eqz v0, :cond_3

    .line 1323
    iget-object v0, p0, Lcom/flurry/android/FlurryAds;->hs:Lcom/flurry/android/FlurryAdListener;

    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/flurry/android/FlurryAdType;->WEB_BANNER:Lcom/flurry/android/FlurryAdType;

    invoke-interface {v0, v1, v2}, Lcom/flurry/android/FlurryAdListener;->shouldDisplayAd(Ljava/lang/String;Lcom/flurry/android/FlurryAdType;)Z

    .line 1331
    :cond_2
    :goto_1
    invoke-virtual {v7, p1, p3}, Lcom/flurry/android/fm;->a(Landroid/content/Context;Landroid/view/ViewGroup;)V

    goto :goto_0

    .line 1327
    :cond_3
    iget-object v0, p0, Lcom/flurry/android/FlurryAds;->hs:Lcom/flurry/android/FlurryAdListener;

    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/flurry/android/FlurryAdType;->WEB_TAKEOVER:Lcom/flurry/android/FlurryAdType;

    invoke-interface {v0, v1, v2}, Lcom/flurry/android/FlurryAdListener;->shouldDisplayAd(Ljava/lang/String;Lcom/flurry/android/FlurryAdType;)Z

    goto :goto_1
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 1390
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1391
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1392
    invoke-static {p0, v0}, Lcom/flurry/android/fl;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/flurry/android/FlurryAds;)Z
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/android/FlurryAds;->gV:Z

    return v0
.end method

.method private b([BLjava/lang/String;)[B
    .locals 8

    .prologue
    .line 2183
    new-instance v1, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v1, p1}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    .line 2184
    const-string v0, "avro/binary"

    invoke-virtual {v1, v0}, Lorg/apache/http/entity/ByteArrayEntity;->setContentType(Ljava/lang/String;)V

    .line 2185
    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v0, p2}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 2186
    invoke-virtual {v0, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 2187
    const-string v2, "accept"

    const-string v3, "avro/binary"

    invoke-virtual {v0, v2, v3}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 2188
    const-string v2, "FM-Checksum"

    invoke-static {p1}, Lcom/flurry/android/FlurryAds;->b([B)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 2189
    iget-object v2, p0, Lcom/flurry/android/FlurryAds;->hl:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2190
    const-string v2, "Device-UA"

    iget-object v3, p0, Lcom/flurry/android/FlurryAds;->hl:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 2192
    :cond_0
    new-instance v2, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v2}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 2193
    const/16 v3, 0x2710

    invoke-static {v2, v3}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 2194
    const/16 v3, 0x3a98

    invoke-static {v2, v3}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 2195
    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpPost;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v3

    const-string v4, "http.protocol.expect-continue"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Lorg/apache/http/params/HttpParams;->setBooleanParameter(Ljava/lang/String;Z)Lorg/apache/http/params/HttpParams;

    .line 2197
    invoke-static {v2}, Lcom/flurry/android/ch;->a(Lorg/apache/http/params/HttpParams;)Lorg/apache/http/client/HttpClient;

    move-result-object v2

    .line 2201
    :try_start_0
    invoke-interface {v2, v0}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 2202
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    .line 2203
    const/16 v3, 0xc8

    if-ne v0, v3, :cond_2

    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_2

    .line 2205
    sget-object v0, Lcom/flurry/android/FlurryAds;->p:Ljava/lang/String;

    const-string v3, "Request successful"

    invoke-static {v0, v3}, Lcom/flurry/android/cy;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2206
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/flurry/android/FlurryAds;->a(Ljava/io/InputStream;)[B

    move-result-object v0

    .line 2208
    invoke-virtual {v1}, Lorg/apache/http/entity/ByteArrayEntity;->consumeContent()V

    .line 2209
    invoke-static {v0}, Lcom/flurry/android/FlurryAds;->b([B)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 2210
    const-string v3, "FM-Checksum"

    invoke-interface {v2, v3}, Lorg/apache/http/HttpResponse;->containsHeader(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "FM-Checksum"

    invoke-interface {v2, v3}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2228
    :cond_1
    :goto_0
    return-object v0

    .line 2221
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Request to url = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " failed with HTTP = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2228
    :cond_3
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 2224
    :catch_0
    move-exception v0

    .line 2226
    const/4 v1, 0x6

    sget-object v2, Lcom/flurry/android/FlurryAds;->p:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Request to url = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " failed with IOException = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3, v0}, Lcom/flurry/android/cy;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private bj()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1084
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1085
    iget-object v0, p0, Lcom/flurry/android/FlurryAds;->hA:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1087
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1088
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1089
    if-nez v1, :cond_0

    .line 1090
    const-string v1, ""

    .line 1091
    :cond_0
    if-nez v0, :cond_1

    .line 1092
    const-string v0, ""

    .line 1093
    :cond_1
    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1095
    :cond_2
    return-object v2
.end method

.method private declared-synchronized bl()V
    .locals 2

    .prologue
    .line 1948
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/flurry/android/ci;

    invoke-direct {v0, p0}, Lcom/flurry/android/ci;-><init>(Lcom/flurry/android/FlurryAds;)V

    .line 1957
    iget-object v1, p0, Lcom/flurry/android/FlurryAds;->hm:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1958
    monitor-exit p0

    return-void

    .line 1948
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private bm()[B
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 1974
    invoke-direct {p0}, Lcom/flurry/android/FlurryAds;->bn()Ljava/util/List;

    move-result-object v1

    .line 1977
    iget-object v2, p0, Lcom/flurry/android/FlurryAds;->hv:Ljava/util/List;

    monitor-enter v2

    .line 1979
    :try_start_0
    sget-object v3, Lcom/flurry/android/FlurryAds;->gT:Lcom/flurry/android/el;

    iget-object v4, p0, Lcom/flurry/android/FlurryAds;->hv:Ljava/util/List;

    invoke-virtual {v3, v4}, Lcom/flurry/android/el;->h(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 1980
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_0

    .line 1982
    monitor-exit v2

    .line 2012
    :goto_0
    return-object v0

    .line 1985
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1988
    invoke-static {}, Lcom/flurry/android/SdkLogRequest;->X()Lcom/flurry/android/SdkLogRequest$Builder;

    move-result-object v2

    invoke-static {}, Lcom/flurry/android/FlurryAgent;->y()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/flurry/android/SdkLogRequest$Builder;->setApiKey(Ljava/lang/CharSequence;)Lcom/flurry/android/SdkLogRequest$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/flurry/android/SdkLogRequest$Builder;->setAdReportedIds(Ljava/util/List;)Lcom/flurry/android/SdkLogRequest$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/flurry/android/SdkLogRequest$Builder;->setSdkAdLogs(Ljava/util/List;)Lcom/flurry/android/SdkLogRequest$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/flurry/android/SdkLogRequest$Builder;->setTestDevice(Z)Lcom/flurry/android/SdkLogRequest$Builder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/flurry/android/SdkLogRequest$Builder;->setAgentTimestamp(J)Lcom/flurry/android/SdkLogRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/android/SdkLogRequest$Builder;->build()Lcom/flurry/android/SdkLogRequest;

    move-result-object v1

    .line 1996
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got ad log request:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/flurry/android/SdkLogRequest;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1999
    new-instance v2, Lcom/flurry/org/apache/avro/specific/SpecificDatumWriter;

    const-class v3, Lcom/flurry/android/SdkLogRequest;

    invoke-direct {v2, v3}, Lcom/flurry/org/apache/avro/specific/SpecificDatumWriter;-><init>(Ljava/lang/Class;)V

    .line 2000
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2001
    invoke-static {}, Lcom/flurry/org/apache/avro/io/EncoderFactory;->get()Lcom/flurry/org/apache/avro/io/EncoderFactory;

    move-result-object v4

    invoke-virtual {v4, v3, v0}, Lcom/flurry/org/apache/avro/io/EncoderFactory;->directBinaryEncoder(Ljava/io/OutputStream;Lcom/flurry/org/apache/avro/io/BinaryEncoder;)Lcom/flurry/org/apache/avro/io/BinaryEncoder;

    move-result-object v4

    .line 2004
    :try_start_1
    invoke-virtual {v2, v1, v4}, Lcom/flurry/org/apache/avro/specific/SpecificDatumWriter;->write(Ljava/lang/Object;Lcom/flurry/org/apache/avro/io/Encoder;)V

    .line 2005
    invoke-virtual {v4}, Lcom/flurry/org/apache/avro/io/BinaryEncoder;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2011
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    goto :goto_0

    .line 1985
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 2006
    :catch_0
    move-exception v1

    .line 2007
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error generating adlog request"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0
.end method

.method private bn()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/AdReportedId;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2018
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2019
    invoke-static {}, Lcom/flurry/android/FlurryAgent;->getPhoneId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 2020
    invoke-static {}, Lcom/flurry/android/AdReportedId;->bO()Lcom/flurry/android/AdReportedId$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/flurry/android/AdReportedId$Builder;->setId(Ljava/nio/ByteBuffer;)Lcom/flurry/android/AdReportedId$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/flurry/android/AdReportedId$Builder;->setType(I)Lcom/flurry/android/AdReportedId$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/AdReportedId$Builder;->build()Lcom/flurry/android/AdReportedId;

    move-result-object v0

    .line 2021
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2024
    iget-object v0, p0, Lcom/flurry/android/FlurryAds;->ha:[B

    .line 2025
    if-eqz v0, :cond_0

    .line 2027
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 2029
    invoke-static {}, Lcom/flurry/android/AdReportedId;->bO()Lcom/flurry/android/AdReportedId$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/flurry/android/AdReportedId$Builder;->setId(Ljava/nio/ByteBuffer;)Lcom/flurry/android/AdReportedId$Builder;

    move-result-object v0

    sget-object v1, Lcom/flurry/android/ReportedIdType;->Sha1Imei:Lcom/flurry/android/ReportedIdType;

    iget v1, v1, Lcom/flurry/android/ReportedIdType;->eS:I

    invoke-virtual {v0, v1}, Lcom/flurry/android/AdReportedId$Builder;->setType(I)Lcom/flurry/android/AdReportedId$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/AdReportedId$Builder;->build()Lcom/flurry/android/AdReportedId;

    move-result-object v0

    .line 2030
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2034
    :cond_0
    iget-object v0, p0, Lcom/flurry/android/FlurryAds;->aH:Ljava/util/Map;

    .line 2035
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Map$Entry;

    .line 2037
    invoke-static {}, Lcom/flurry/android/AdReportedId;->bO()Lcom/flurry/android/AdReportedId$Builder;

    move-result-object v4

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v0}, Lcom/flurry/android/AdReportedId$Builder;->setId(Ljava/nio/ByteBuffer;)Lcom/flurry/android/AdReportedId$Builder;

    move-result-object v4

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/ReportedIdType;

    iget v0, v0, Lcom/flurry/android/ReportedIdType;->eS:I

    invoke-virtual {v4, v0}, Lcom/flurry/android/AdReportedId$Builder;->setType(I)Lcom/flurry/android/AdReportedId$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/AdReportedId$Builder;->build()Lcom/flurry/android/AdReportedId;

    move-result-object v0

    .line 2038
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2040
    :cond_1
    return-object v2
.end method

.method private declared-synchronized bo()V
    .locals 2

    .prologue
    .line 2334
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/flurry/android/cj;

    invoke-direct {v0, p0}, Lcom/flurry/android/cj;-><init>(Lcom/flurry/android/FlurryAds;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/flurry/android/cj;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2401
    monitor-exit p0

    return-void

    .line 2334
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized bp()V
    .locals 2

    .prologue
    .line 2438
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/flurry/android/ck;

    invoke-direct {v0, p0}, Lcom/flurry/android/ck;-><init>(Lcom/flurry/android/FlurryAds;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/flurry/android/ck;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2506
    monitor-exit p0

    return-void

    .line 2438
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private c([B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2285
    const-class v0, Lcom/flurry/android/SdkLogResponse;

    invoke-static {p1, v0}, Lcom/flurry/android/FlurryAds;->a([BLjava/lang/Class;)Lcom/flurry/org/apache/avro/specific/SpecificRecordBase;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/SdkLogResponse;

    .line 2286
    if-eqz v0, :cond_0

    .line 2288
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got ad log response: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2289
    invoke-virtual {v0}, Lcom/flurry/android/SdkLogResponse;->getResult()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "success"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2292
    invoke-direct {p0, v0}, Lcom/flurry/android/FlurryAds;->a(Lcom/flurry/android/SdkLogResponse;)V

    .line 2302
    :cond_0
    return-void

    .line 2296
    :cond_1
    invoke-virtual {v0}, Lcom/flurry/android/SdkLogResponse;->getErrors()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 2298
    sget-object v2, Lcom/flurry/android/FlurryAds;->p:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/flurry/android/cy;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private c(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 3127
    iget-object v0, p0, Lcom/flurry/android/FlurryAds;->hk:Lcom/flurry/android/aa;

    invoke-virtual {v0, p1, p2}, Lcom/flurry/android/aa;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic c(Lcom/flurry/android/FlurryAds;)Z
    .locals 1

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/flurry/android/FlurryAds;->gV:Z

    return v0
.end method

.method public static clearLocation()V
    .locals 2

    .prologue
    .line 686
    invoke-static {}, Lcom/flurry/android/FlurryAds;->getInstance()Lcom/flurry/android/FlurryAds;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/flurry/android/FlurryAds;->hf:Lcom/flurry/android/Location;

    .line 687
    return-void
.end method

.method public static clearTargetingKeywords()V
    .locals 2

    .prologue
    .line 803
    invoke-static {}, Lcom/flurry/android/FlurryAds;->getInstance()Lcom/flurry/android/FlurryAds;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/flurry/android/FlurryAds;->hA:Ljava/util/Map;

    .line 804
    return-void
.end method

.method public static clearUserCookies()V
    .locals 1

    .prologue
    .line 750
    invoke-static {}, Lcom/flurry/android/FlurryAds;->getInstance()Lcom/flurry/android/FlurryAds;

    move-result-object v0

    iget-object v0, v0, Lcom/flurry/android/FlurryAds;->hg:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 751
    return-void
.end method

.method static synthetic d(Lcom/flurry/android/FlurryAds;)Ljava/io/File;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/flurry/android/FlurryAds;->gY:Ljava/io/File;

    return-object v0
.end method

.method public static displayAd(Landroid/content/Context;Ljava/lang/String;Landroid/view/ViewGroup;)V
    .locals 3

    .prologue
    .line 562
    if-nez p0, :cond_0

    .line 564
    sget-object v0, Lcom/flurry/android/FlurryAds;->p:Ljava/lang/String;

    const-string v1, "Context passed to displayAd was null."

    invoke-static {v0, v1}, Lcom/flurry/android/cy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    :goto_0
    return-void

    .line 567
    :cond_0
    if-nez p1, :cond_1

    .line 569
    sget-object v0, Lcom/flurry/android/FlurryAds;->p:Ljava/lang/String;

    const-string v1, "Ad space name passed to displayAd was null."

    invoke-static {v0, v1}, Lcom/flurry/android/cy;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 572
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 574
    sget-object v0, Lcom/flurry/android/FlurryAds;->p:Ljava/lang/String;

    const-string v1, "Ad space name passed to displayAd was empty."

    invoke-static {v0, v1}, Lcom/flurry/android/cy;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 577
    :cond_2
    if-nez p2, :cond_3

    .line 579
    sget-object v0, Lcom/flurry/android/FlurryAds;->p:Ljava/lang/String;

    const-string v1, "ViewGroup  passed to displayAd was null."

    invoke-static {v0, v1}, Lcom/flurry/android/cy;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 583
    :cond_3
    invoke-static {}, Lcom/flurry/android/FlurryAds;->getInstance()Lcom/flurry/android/FlurryAds;

    move-result-object v0

    invoke-direct {v0, p0}, Lcom/flurry/android/FlurryAds;->m(Landroid/content/Context;)V

    .line 587
    :try_start_0
    sget-object v0, Lcom/flurry/android/FlurryAds;->hF:Lcom/flurry/android/FlurryAds;

    invoke-direct {v0, p0, p1, p2}, Lcom/flurry/android/FlurryAds;->b(Landroid/content/Context;Ljava/lang/String;Landroid/view/ViewGroup;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 589
    :catch_0
    move-exception v0

    .line 591
    sget-object v1, Lcom/flurry/android/FlurryAds;->p:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/flurry/android/cy;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static synthetic e(Lcom/flurry/android/FlurryAds;)Z
    .locals 1

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/flurry/android/FlurryAds;->gW:Z

    return v0
.end method

.method public static enableTestAds(Z)V
    .locals 1

    .prologue
    .line 1106
    invoke-static {}, Lcom/flurry/android/FlurryAds;->getInstance()Lcom/flurry/android/FlurryAds;

    move-result-object v0

    iput-boolean p0, v0, Lcom/flurry/android/FlurryAds;->hz:Z

    .line 1107
    return-void
.end method

.method public static fetchAd(Landroid/content/Context;Ljava/lang/String;Landroid/view/ViewGroup;Lcom/flurry/android/FlurryAdSize;)V
    .locals 8

    .prologue
    .line 507
    if-nez p0, :cond_1

    .line 509
    sget-object v0, Lcom/flurry/android/FlurryAds;->p:Ljava/lang/String;

    const-string v1, "Context passed to fetchAd was null."

    invoke-static {v0, v1}, Lcom/flurry/android/cy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    :cond_0
    :goto_0
    return-void

    .line 512
    :cond_1
    if-nez p1, :cond_2

    .line 514
    sget-object v0, Lcom/flurry/android/FlurryAds;->p:Ljava/lang/String;

    const-string v1, "Ad space name passed to fetchAd was null."

    invoke-static {v0, v1}, Lcom/flurry/android/cy;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 517
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    .line 519
    sget-object v0, Lcom/flurry/android/FlurryAds;->p:Ljava/lang/String;

    const-string v1, "Ad space name passed to fetchAd was empty."

    invoke-static {v0, v1}, Lcom/flurry/android/cy;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 522
    :cond_3
    if-nez p2, :cond_4

    .line 524
    sget-object v0, Lcom/flurry/android/FlurryAds;->p:Ljava/lang/String;

    const-string v1, "ViewGroup passed to fetchAd was null."

    invoke-static {v0, v1}, Lcom/flurry/android/cy;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 527
    :cond_4
    if-nez p3, :cond_5

    .line 529
    sget-object v0, Lcom/flurry/android/FlurryAds;->p:Ljava/lang/String;

    const-string v1, "FlurryAdSize passed to fetchAd was null."

    invoke-static {v0, v1}, Lcom/flurry/android/cy;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 533
    :cond_5
    invoke-static {}, Lcom/flurry/android/FlurryAds;->getInstance()Lcom/flurry/android/FlurryAds;

    move-result-object v0

    invoke-direct {v0, p0}, Lcom/flurry/android/FlurryAds;->m(Landroid/content/Context;)V

    .line 537
    :try_start_0
    sget-object v1, Lcom/flurry/android/FlurryAds;->hF:Lcom/flurry/android/FlurryAds;

    invoke-static {p0}, Lcom/flurry/android/FlurryAds;->o(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, v1, Lcom/flurry/android/FlurryAds;->hs:Lcom/flurry/android/FlurryAdListener;

    if-eqz v0, :cond_0

    iget-object v0, v1, Lcom/flurry/android/FlurryAds;->hs:Lcom/flurry/android/FlurryAdListener;

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/flurry/android/FlurryAdListener;->spaceDidFailToReceiveAd(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 539
    :catch_0
    move-exception v0

    .line 541
    sget-object v1, Lcom/flurry/android/FlurryAds;->p:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/flurry/android/cy;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 537
    :cond_6
    :try_start_1
    invoke-direct {v1, p0, p1}, Lcom/flurry/android/FlurryAds;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {p0}, Lcom/flurry/android/FlurryAds;->n(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {v1, p0, p1}, Lcom/flurry/android/FlurryAds;->g(Landroid/content/Context;Ljava/lang/String;)Z

    goto :goto_0

    :cond_7
    invoke-static {p0}, Lcom/flurry/android/FlurryAds;->n(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/flurry/android/bi;

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p3

    move-object v5, p2

    invoke-direct/range {v0 .. v7}, Lcom/flurry/android/bi;-><init>(Lcom/flurry/android/FlurryAds;Landroid/content/Context;Ljava/lang/String;Lcom/flurry/android/FlurryAdSize;Landroid/view/ViewGroup;ZZ)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/flurry/android/bi;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static getAd(Landroid/content/Context;Ljava/lang/String;Landroid/view/ViewGroup;Lcom/flurry/android/FlurryAdSize;J)Z
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 319
    if-nez p0, :cond_0

    .line 321
    sget-object v1, Lcom/flurry/android/FlurryAds;->p:Ljava/lang/String;

    const-string v2, "Context passed to getAd was null."

    invoke-static {v1, v2}, Lcom/flurry/android/cy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    :goto_0
    return v0

    .line 324
    :cond_0
    if-nez p1, :cond_1

    .line 326
    sget-object v1, Lcom/flurry/android/FlurryAds;->p:Ljava/lang/String;

    const-string v2, "Ad space name passed to getAd was null."

    invoke-static {v1, v2}, Lcom/flurry/android/cy;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 329
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 331
    sget-object v1, Lcom/flurry/android/FlurryAds;->p:Ljava/lang/String;

    const-string v2, "Ad space name passed to getAd was empty."

    invoke-static {v1, v2}, Lcom/flurry/android/cy;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 334
    :cond_2
    if-nez p2, :cond_3

    .line 336
    sget-object v1, Lcom/flurry/android/FlurryAds;->p:Ljava/lang/String;

    const-string v2, "ViewGroup passed to getAd was null."

    invoke-static {v1, v2}, Lcom/flurry/android/cy;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 339
    :cond_3
    if-nez p3, :cond_4

    .line 341
    sget-object v1, Lcom/flurry/android/FlurryAds;->p:Ljava/lang/String;

    const-string v2, "FlurryAdSize passed to getAd was null."

    invoke-static {v1, v2}, Lcom/flurry/android/cy;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 344
    :cond_4
    invoke-static {}, Lcom/flurry/android/FlurryAds;->getInstance()Lcom/flurry/android/FlurryAds;

    move-result-object v1

    invoke-direct {v1, p0}, Lcom/flurry/android/FlurryAds;->m(Landroid/content/Context;)V

    .line 348
    :try_start_0
    sget-object v1, Lcom/flurry/android/FlurryAds;->hF:Lcom/flurry/android/FlurryAds;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p3

    move-object v5, p2

    move-wide v6, p4

    invoke-virtual/range {v1 .. v7}, Lcom/flurry/android/FlurryAds;->a(Landroid/content/Context;Ljava/lang/String;Lcom/flurry/android/FlurryAdSize;Landroid/view/ViewGroup;J)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 350
    :catch_0
    move-exception v1

    .line 352
    sget-object v2, Lcom/flurry/android/FlurryAds;->p:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v2, v3, v1}, Lcom/flurry/android/cy;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static getInstance()Lcom/flurry/android/FlurryAds;
    .locals 1

    .prologue
    .line 257
    sget-object v0, Lcom/flurry/android/FlurryAds;->hF:Lcom/flurry/android/FlurryAds;

    if-nez v0, :cond_0

    .line 259
    new-instance v0, Lcom/flurry/android/FlurryAds;

    invoke-direct {v0}, Lcom/flurry/android/FlurryAds;-><init>()V

    sput-object v0, Lcom/flurry/android/FlurryAds;->hF:Lcom/flurry/android/FlurryAds;

    .line 261
    :cond_0
    sget-object v0, Lcom/flurry/android/FlurryAds;->hF:Lcom/flurry/android/FlurryAds;

    return-object v0
.end method

.method static getPhoneId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1063
    invoke-static {}, Lcom/flurry/android/FlurryAgent;->getPhoneId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static i(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1815
    move v2, v1

    .line 1817
    :goto_0
    const/4 v3, 0x5

    if-ge v2, v3, :cond_2

    .line 1820
    invoke-static {p0}, Lcom/flurry/android/FlurryAds;->o(Landroid/content/Context;)Z

    move-result v3

    if-ne v3, v0, :cond_0

    invoke-static {p0}, Lcom/flurry/android/FlurryAds;->n(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1822
    const/16 v3, 0x2710

    const/16 v4, 0x3a98

    invoke-static {p1, v3, v4, v0}, Lcom/flurry/android/fl;->a(Ljava/lang/String;IIZ)Lorg/apache/http/HttpResponse;

    move-result-object v3

    .line 1823
    if-eqz v3, :cond_1

    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v3

    const/16 v4, 0xc8

    if-ne v3, v4, :cond_1

    .line 1825
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "URL hit succeeded for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1844
    :goto_1
    return v0

    .line 1834
    :cond_0
    const-wide/16 v4, 0x64

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1842
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1836
    :catch_0
    move-exception v3

    .line 1838
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    goto :goto_2

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public static initializeAds(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 376
    if-nez p0, :cond_0

    .line 378
    sget-object v0, Lcom/flurry/android/FlurryAds;->p:Ljava/lang/String;

    const-string v1, "Context passed to initializeAds was null."

    invoke-static {v0, v1}, Lcom/flurry/android/cy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    :goto_0
    return-void

    .line 381
    :cond_0
    invoke-static {}, Lcom/flurry/android/FlurryAds;->getInstance()Lcom/flurry/android/FlurryAds;

    move-result-object v0

    invoke-direct {v0, p0}, Lcom/flurry/android/FlurryAds;->m(Landroid/content/Context;)V

    .line 385
    :try_start_0
    sget-object v0, Lcom/flurry/android/FlurryAds;->hF:Lcom/flurry/android/FlurryAds;

    invoke-direct {v0, p0}, Lcom/flurry/android/FlurryAds;->p(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 387
    :catch_0
    move-exception v0

    .line 389
    sget-object v1, Lcom/flurry/android/FlurryAds;->p:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/flurry/android/cy;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static isAdAvailable(Landroid/content/Context;Ljava/lang/String;Lcom/flurry/android/FlurryAdSize;J)Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 412
    if-nez p0, :cond_0

    .line 414
    sget-object v0, Lcom/flurry/android/FlurryAds;->p:Ljava/lang/String;

    const-string v1, "Context passed to isAdAvailable was null."

    invoke-static {v0, v1}, Lcom/flurry/android/cy;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v6

    .line 442
    :goto_0
    return v0

    .line 417
    :cond_0
    if-nez p1, :cond_1

    .line 419
    sget-object v0, Lcom/flurry/android/FlurryAds;->p:Ljava/lang/String;

    const-string v1, "Ad space name passed to isAdAvailable was null."

    invoke-static {v0, v1}, Lcom/flurry/android/cy;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v6

    .line 420
    goto :goto_0

    .line 422
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 424
    sget-object v0, Lcom/flurry/android/FlurryAds;->p:Ljava/lang/String;

    const-string v1, "Ad space name passed to isAdAvailable was empty."

    invoke-static {v0, v1}, Lcom/flurry/android/cy;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v6

    .line 425
    goto :goto_0

    .line 427
    :cond_2
    if-nez p2, :cond_3

    .line 429
    sget-object v0, Lcom/flurry/android/FlurryAds;->p:Ljava/lang/String;

    const-string v1, "FlurryAdSize passed to isAdAvailable was null."

    invoke-static {v0, v1}, Lcom/flurry/android/cy;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v6

    .line 430
    goto :goto_0

    .line 433
    :cond_3
    invoke-static {}, Lcom/flurry/android/FlurryAds;->getInstance()Lcom/flurry/android/FlurryAds;

    move-result-object v0

    invoke-direct {v0, p0}, Lcom/flurry/android/FlurryAds;->m(Landroid/content/Context;)V

    .line 437
    :try_start_0
    sget-object v0, Lcom/flurry/android/FlurryAds;->hF:Lcom/flurry/android/FlurryAds;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/flurry/android/FlurryAds;->a(Landroid/content/Context;Ljava/lang/String;Lcom/flurry/android/FlurryAdSize;J)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 439
    :catch_0
    move-exception v0

    .line 441
    sget-object v1, Lcom/flurry/android/FlurryAds;->p:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/flurry/android/cy;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v6

    .line 442
    goto :goto_0
.end method

.method public static isAdReady(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 456
    if-nez p0, :cond_0

    .line 458
    sget-object v1, Lcom/flurry/android/FlurryAds;->p:Ljava/lang/String;

    const-string v2, "Ad space name passed to isAdReady was null."

    invoke-static {v1, v2}, Lcom/flurry/android/cy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    :goto_0
    return v0

    .line 461
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 463
    sget-object v1, Lcom/flurry/android/FlurryAds;->p:Ljava/lang/String;

    const-string v2, "Ad space name passed to isAdReady was empty."

    invoke-static {v1, v2}, Lcom/flurry/android/cy;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 466
    :cond_1
    invoke-static {}, Lcom/flurry/android/FlurryAds;->getInstance()Lcom/flurry/android/FlurryAds;

    move-result-object v0

    iget-object v0, v0, Lcom/flurry/android/FlurryAds;->hn:Lcom/flurry/android/gv;

    invoke-virtual {v0, p0}, Lcom/flurry/android/gv;->Q(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method private j(Landroid/content/Context;Ljava/lang/String;)Lcom/flurry/android/AdUnit;
    .locals 1

    .prologue
    .line 1941
    iget-object v0, p0, Lcom/flurry/android/FlurryAds;->hk:Lcom/flurry/android/aa;

    invoke-virtual {v0, p1, p2}, Lcom/flurry/android/aa;->b(Landroid/content/Context;Ljava/lang/String;)Lcom/flurry/android/AdUnit;

    move-result-object v0

    .line 1942
    return-object v0
.end method

.method private declared-synchronized m(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 267
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/flurry/android/FlurryAds;->hG:Z

    if-nez v0, :cond_0

    .line 271
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ".flurryadlog."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/flurry/android/FlurryAgent;->y()Ljava/lang/String;

    move-result-object v1

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

    iput-object v0, p0, Lcom/flurry/android/FlurryAds;->gX:Ljava/io/File;

    .line 274
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ".flurryfreqcap."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/flurry/android/FlurryAgent;->y()Ljava/lang/String;

    move-result-object v1

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

    iput-object v0, p0, Lcom/flurry/android/FlurryAds;->gY:Ljava/io/File;

    .line 277
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "market://details?id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1, v0, v1}, Lcom/flurry/android/FlurryAds;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/flurry/android/FlurryAds;->hb:Z

    .line 282
    const-string v0, ""

    iput-object v0, p0, Lcom/flurry/android/FlurryAds;->hl:Ljava/lang/String;

    .line 285
    sget-object v0, Lcom/flurry/android/FlurryAgent;->an:Lcom/flurry/android/FlurryAgent;

    invoke-virtual {v0, p1}, Lcom/flurry/android/FlurryAgent;->fetchHashedImei(Landroid/content/Context;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/FlurryAds;->ha:[B

    .line 288
    invoke-direct {p0}, Lcom/flurry/android/FlurryAds;->bo()V

    .line 289
    sget-object v0, Lcom/flurry/android/FlurryAds;->p:Ljava/lang/String;

    const-string v1, "Attempting to load FreqCap data"

    invoke-static {v0, v1}, Lcom/flurry/android/cy;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    invoke-direct {p0}, Lcom/flurry/android/FlurryAds;->bp()V

    .line 291
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/android/FlurryAds;->hG:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 293
    :cond_0
    monitor-exit p0

    return-void

    .line 267
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static n(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 937
    const-string v0, "keyguard"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 938
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    .line 939
    return v0
.end method

.method private static o(Landroid/content/Context;)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 943
    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 958
    :cond_0
    :goto_0
    return v0

    .line 950
    :cond_1
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 951
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 952
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isRoaming()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    move v0, v1

    .line 954
    :goto_1
    if-nez v0, :cond_0

    .line 955
    sget-object v1, Lcom/flurry/android/FlurryAds;->p:Ljava/lang/String;

    const-string v2, "No connectivity found."

    invoke-static {v1, v2}, Lcom/flurry/android/cy;->g(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 952
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private declared-synchronized p(Landroid/content/Context;)V
    .locals 6

    .prologue
    .line 1878
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/flurry/android/FlurryAds;->hc:Z

    if-nez v0, :cond_1

    .line 1880
    sget-object v0, Lcom/flurry/android/FlurryAds;->p:Ljava/lang/String;

    const-string v1, "Initializing ads -- requesting ads with precaching enabled on the server"

    invoke-static {v0, v1}, Lcom/flurry/android/cy;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1881
    const/4 v0, 0x0

    .line 1883
    invoke-static {}, Lcom/flurry/android/FlurryAgent;->p()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1885
    const/16 v0, 0x1f4

    .line 1887
    :cond_0
    iget-object v1, p0, Lcom/flurry/android/FlurryAds;->hm:Landroid/os/Handler;

    new-instance v2, Lcom/flurry/android/cm;

    invoke-direct {v2, p0, p1}, Lcom/flurry/android/cm;-><init>(Lcom/flurry/android/FlurryAds;Landroid/content/Context;)V

    int-to-long v4, v0

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1895
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/android/FlurryAds;->hc:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1901
    :goto_0
    monitor-exit p0

    return-void

    .line 1899
    :cond_1
    :try_start_1
    sget-object v0, Lcom/flurry/android/FlurryAds;->p:Ljava/lang/String;

    const-string v1, "Initializing ads -- not making a new ad request (for ads with precaching enabled on the server) since one was made already this session"

    invoke-static {v0, v1}, Lcom/flurry/android/cy;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1878
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static removeAd(Landroid/content/Context;Ljava/lang/String;Landroid/view/ViewGroup;)V
    .locals 3

    .prologue
    .line 613
    if-nez p0, :cond_0

    .line 615
    sget-object v0, Lcom/flurry/android/FlurryAds;->p:Ljava/lang/String;

    const-string v1, "Context passed to removeAd was null."

    invoke-static {v0, v1}, Lcom/flurry/android/cy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 642
    :goto_0
    return-void

    .line 618
    :cond_0
    if-nez p1, :cond_1

    .line 620
    sget-object v0, Lcom/flurry/android/FlurryAds;->p:Ljava/lang/String;

    const-string v1, "Ad space name passed to removeAd was null."

    invoke-static {v0, v1}, Lcom/flurry/android/cy;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 623
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 625
    sget-object v0, Lcom/flurry/android/FlurryAds;->p:Ljava/lang/String;

    const-string v1, "Ad space name passed to removeAd was empty."

    invoke-static {v0, v1}, Lcom/flurry/android/cy;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 628
    :cond_2
    if-nez p2, :cond_3

    .line 630
    sget-object v0, Lcom/flurry/android/FlurryAds;->p:Ljava/lang/String;

    const-string v1, "ViewGroup passed to removeAd was null."

    invoke-static {v0, v1}, Lcom/flurry/android/cy;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 633
    :cond_3
    invoke-static {}, Lcom/flurry/android/FlurryAds;->getInstance()Lcom/flurry/android/FlurryAds;

    move-result-object v0

    invoke-direct {v0, p0}, Lcom/flurry/android/FlurryAds;->m(Landroid/content/Context;)V

    .line 636
    :try_start_0
    sget-object v0, Lcom/flurry/android/FlurryAds;->hF:Lcom/flurry/android/FlurryAds;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_removeAd(context = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", adSpaceName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v1, v0, Lcom/flurry/android/FlurryAds;->hn:Lcom/flurry/android/gv;

    invoke-virtual {v1, p1}, Lcom/flurry/android/gv;->O(Ljava/lang/String;)Lcom/flurry/android/v;

    move-result-object v1

    if-nez v1, :cond_4

    invoke-direct {v0, p1}, Lcom/flurry/android/FlurryAds;->C(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 638
    :catch_0
    move-exception v0

    .line 640
    sget-object v1, Lcom/flurry/android/FlurryAds;->p:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/flurry/android/cy;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 636
    :cond_4
    :try_start_1
    invoke-virtual {v1}, Lcom/flurry/android/v;->stop()V

    invoke-virtual {v1}, Lcom/flurry/android/v;->h()Landroid/view/ViewGroup;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v1}, Lcom/flurry/android/v;->removeAllViews()V

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_5
    invoke-direct {v0, p1}, Lcom/flurry/android/FlurryAds;->C(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/flurry/android/FlurryAds;->hn:Lcom/flurry/android/gv;

    invoke-virtual {v0, v1}, Lcom/flurry/android/gv;->d(Lcom/flurry/android/v;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static setAdListener(Lcom/flurry/android/FlurryAdListener;)V
    .locals 1

    .prologue
    .line 658
    invoke-static {}, Lcom/flurry/android/FlurryAds;->getInstance()Lcom/flurry/android/FlurryAds;

    move-result-object v0

    iput-object p0, v0, Lcom/flurry/android/FlurryAds;->hs:Lcom/flurry/android/FlurryAdListener;

    .line 659
    return-void
.end method

.method public static setAdLogUrl(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 814
    invoke-static {}, Lcom/flurry/android/FlurryAds;->getInstance()Lcom/flurry/android/FlurryAds;

    move-result-object v0

    iput-object p0, v0, Lcom/flurry/android/FlurryAds;->he:Ljava/lang/String;

    .line 815
    return-void
.end method

.method public static setAdServerUrl(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 809
    invoke-static {}, Lcom/flurry/android/FlurryAds;->getInstance()Lcom/flurry/android/FlurryAds;

    move-result-object v0

    iput-object p0, v0, Lcom/flurry/android/FlurryAds;->hd:Ljava/lang/String;

    .line 810
    return-void
.end method

.method public static setCustomAdNetworkHandler(Lcom/flurry/android/ICustomAdNetworkHandler;)V
    .locals 2

    .prologue
    .line 698
    if-nez p0, :cond_0

    .line 700
    sget-object v0, Lcom/flurry/android/FlurryAds;->p:Ljava/lang/String;

    const-string v1, "ICustomAdNetworkHandler passed to setCustomAdNetworkHandler was null."

    invoke-static {v0, v1}, Lcom/flurry/android/cy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 704
    :goto_0
    return-void

    .line 703
    :cond_0
    invoke-static {}, Lcom/flurry/android/FlurryAds;->getInstance()Lcom/flurry/android/FlurryAds;

    move-result-object v0

    iput-object p0, v0, Lcom/flurry/android/FlurryAds;->hp:Lcom/flurry/android/ICustomAdNetworkHandler;

    goto :goto_0
.end method

.method public static setLocation(FF)V
    .locals 2

    .prologue
    .line 672
    invoke-static {}, Lcom/flurry/android/FlurryAds;->getInstance()Lcom/flurry/android/FlurryAds;

    move-result-object v0

    invoke-static {}, Lcom/flurry/android/Location;->bS()Lcom/flurry/android/Location$Builder;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/flurry/android/Location$Builder;->setLat(F)Lcom/flurry/android/Location$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/flurry/android/Location$Builder;->setLon(F)Lcom/flurry/android/Location$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/android/Location$Builder;->build()Lcom/flurry/android/Location;

    move-result-object v1

    iput-object v1, v0, Lcom/flurry/android/FlurryAds;->hf:Lcom/flurry/android/Location;

    .line 673
    return-void
.end method

.method public static setTargetingKeywords(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 781
    if-nez p0, :cond_1

    .line 783
    sget-object v0, Lcom/flurry/android/FlurryAds;->p:Ljava/lang/String;

    const-string v1, "targetingKeywords Map passed to setTargetingKeywords was null."

    invoke-static {v0, v1}, Lcom/flurry/android/cy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 790
    :cond_0
    :goto_0
    return-void

    .line 786
    :cond_1
    if-eqz p0, :cond_0

    .line 788
    invoke-static {}, Lcom/flurry/android/FlurryAds;->getInstance()Lcom/flurry/android/FlurryAds;

    move-result-object v0

    iput-object p0, v0, Lcom/flurry/android/FlurryAds;->hA:Ljava/util/Map;

    goto :goto_0
.end method

.method public static setUserCookies(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 731
    if-nez p0, :cond_1

    .line 733
    sget-object v0, Lcom/flurry/android/FlurryAds;->p:Ljava/lang/String;

    const-string v1, "userCookies Map passed to setUserCookies was null."

    invoke-static {v0, v1}, Lcom/flurry/android/cy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 737
    :cond_0
    return-void

    .line 736
    :cond_1
    invoke-static {}, Lcom/flurry/android/FlurryAds;->getInstance()Lcom/flurry/android/FlurryAds;

    move-result-object v1

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, v1, Lcom/flurry/android/FlurryAds;->hg:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/flurry/android/FlurryAds;->p:Ljava/lang/String;

    const-string v3, "User cookie keys and values may not be null."

    invoke-static {v0, v3}, Lcom/flurry/android/cy;->g(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static y()Ljava/lang/String;
    .locals 1

    .prologue
    .line 986
    invoke-static {}, Lcom/flurry/android/FlurryAgent;->y()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method final B(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1963
    invoke-direct {p0}, Lcom/flurry/android/FlurryAds;->bm()[B

    move-result-object v0

    .line 1965
    if-eqz v0, :cond_0

    .line 1967
    invoke-direct {p0, v0, p1}, Lcom/flurry/android/FlurryAds;->a([BLjava/lang/String;)Z

    .line 1969
    :cond_0
    return-void
.end method

.method final a(Landroid/content/Context;Ljava/lang/String;Landroid/view/ViewGroup;ZLcom/flurry/android/FlurryAdSize;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Landroid/view/ViewGroup;",
            "Z",
            "Lcom/flurry/android/FlurryAdSize;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/AdUnit;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    .line 3052
    iget-object v0, p0, Lcom/flurry/android/FlurryAds;->ho:Lcom/flurry/android/ca;

    invoke-virtual {v0}, Lcom/flurry/android/ca;->as()V

    .line 3058
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_e

    .line 3060
    invoke-static {p1}, Lcom/flurry/android/fl;->s(Landroid/content/Context;)I

    move-result v0

    invoke-static {p1}, Lcom/flurry/android/fl;->t(Landroid/content/Context;)I

    move-result v1

    invoke-static {p1}, Lcom/flurry/android/fl;->u(Landroid/content/Context;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    move-object v1, v0

    .line 3061
    :goto_0
    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 3062
    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 3064
    invoke-static {p1}, Lcom/flurry/android/fl;->s(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1}, Lcom/flurry/android/fl;->t(Landroid/content/Context;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    .line 3066
    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 3067
    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 3069
    sget-object v0, Lcom/flurry/android/FlurryAdSize;->BANNER_BOTTOM:Lcom/flurry/android/FlurryAdSize;

    invoke-virtual {p5, v0}, Lcom/flurry/android/FlurryAdSize;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/flurry/android/FlurryAdSize;->BANNER_TOP:Lcom/flurry/android/FlurryAdSize;

    invoke-virtual {p5, v0}, Lcom/flurry/android/FlurryAdSize;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3071
    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    if-lez v0, :cond_1

    .line 3073
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    invoke-static {p1, v0}, Lcom/flurry/android/fl;->a(Landroid/content/Context;I)I

    move-result v3

    .line 3075
    :cond_1
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    if-lez v0, :cond_2

    .line 3077
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    invoke-static {p1, v0}, Lcom/flurry/android/fl;->a(Landroid/content/Context;I)I

    move-result v2

    :cond_2
    move-object v0, p0

    move-object v1, p2

    move v6, p4

    move-object v7, p5

    move-object v8, p1

    .line 3080
    invoke-direct/range {v0 .. v8}, Lcom/flurry/android/FlurryAds;->a(Ljava/lang/String;IIIIZLcom/flurry/android/FlurryAdSize;Landroid/content/Context;)[B

    move-result-object v1

    .line 3081
    if-eqz v1, :cond_3

    array-length v0, v1

    if-ge v0, v9, :cond_4

    .line 3083
    :cond_3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 3116
    :goto_1
    return-object v0

    .line 3060
    :pswitch_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_0

    .line 3085
    :cond_4
    iget-object v0, p0, Lcom/flurry/android/FlurryAds;->hd:Ljava/lang/String;

    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/flurry/android/FlurryAds;->hd:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/v6/getAds.do"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-direct {p0, v1, v0}, Lcom/flurry/android/FlurryAds;->b([BLjava/lang/String;)[B

    move-result-object v0

    .line 3086
    if-eqz v0, :cond_5

    array-length v1, v0

    if-ge v1, v9, :cond_8

    .line 3088
    :cond_5
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_1

    .line 3085
    :cond_6
    invoke-static {}, Lcom/flurry/android/FlurryAgent;->getUseHttps()Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "https://ads.flurry.com/v6/getAds.do"

    goto :goto_2

    :cond_7
    const-string v0, "http://ads.flurry.com/v6/getAds.do"

    goto :goto_2

    .line 3090
    :cond_8
    const-class v1, Lcom/flurry/android/AdResponse;

    invoke-static {v0, v1}, Lcom/flurry/android/FlurryAds;->a([BLjava/lang/Class;)Lcom/flurry/org/apache/avro/specific/SpecificRecordBase;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/AdResponse;

    .line 3091
    if-nez v0, :cond_9

    .line 3093
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_1

    .line 3096
    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got ad response: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 3098
    invoke-virtual {v0}, Lcom/flurry/android/AdResponse;->getErrors()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_b

    .line 3100
    sget-object v1, Lcom/flurry/android/FlurryAds;->p:Ljava/lang/String;

    const-string v2, "Ad server responded with the following error(s):"

    invoke-static {v1, v2}, Lcom/flurry/android/cy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3101
    invoke-virtual {v0}, Lcom/flurry/android/AdResponse;->getErrors()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 3103
    sget-object v2, Lcom/flurry/android/FlurryAds;->p:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/flurry/android/cy;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 3105
    :cond_a
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto/16 :goto_1

    .line 3107
    :cond_b
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d

    invoke-virtual {v0}, Lcom/flurry/android/AdResponse;->getAdUnits()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_c

    invoke-virtual {v0}, Lcom/flurry/android/AdResponse;->getAdUnits()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_d

    .line 3109
    :cond_c
    sget-object v0, Lcom/flurry/android/FlurryAds;->p:Ljava/lang/String;

    const-string v1, "Ad server responded but sent no ad units."

    invoke-static {v0, v1}, Lcom/flurry/android/cy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3110
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto/16 :goto_1

    .line 3112
    :cond_d
    invoke-virtual {v0}, Lcom/flurry/android/AdResponse;->getAdUnits()Ljava/util/List;

    move-result-object v0

    goto/16 :goto_1

    .line 3116
    :cond_e
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 3060
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method final a(Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 897
    if-nez p1, :cond_1

    .line 913
    :cond_0
    :goto_0
    return-void

    .line 901
    :cond_1
    iget-object v0, p0, Lcom/flurry/android/FlurryAds;->hu:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 903
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 904
    invoke-static {v0}, Lcom/flurry/android/FlurryAds;->a(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    .line 905
    invoke-virtual {p0, p1, v1}, Lcom/flurry/android/FlurryAds;->onOpenFullScreen(Landroid/content/Context;Ljava/lang/String;)V

    .line 907
    if-nez v0, :cond_2

    const/4 v0, 0x0

    .line 908
    :goto_1
    if-eqz v0, :cond_0

    .line 909
    iget-object v0, p0, Lcom/flurry/android/FlurryAds;->hs:Lcom/flurry/android/FlurryAdListener;

    if-eqz v0, :cond_0

    .line 910
    iget-object v0, p0, Lcom/flurry/android/FlurryAds;->hs:Lcom/flurry/android/FlurryAdListener;

    invoke-interface {v0, v1}, Lcom/flurry/android/FlurryAdListener;->onApplicationExit(Ljava/lang/String;)V

    goto :goto_0

    .line 907
    :cond_2
    const-string v2, "targetIntent"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    goto :goto_1
.end method

.method final a(Landroid/content/Context;Ljava/lang/String;ZLcom/flurry/android/AdUnit;)V
    .locals 7

    .prologue
    .line 1654
    iget-object v6, p0, Lcom/flurry/android/FlurryAds;->hm:Landroid/os/Handler;

    new-instance v0, Lcom/flurry/android/cr;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p4

    move-object v4, p1

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/flurry/android/cr;-><init>(Lcom/flurry/android/FlurryAds;Ljava/lang/String;Lcom/flurry/android/AdUnit;Landroid/content/Context;Z)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1700
    return-void
.end method

.method final a(Lcom/flurry/android/AdUnit;)V
    .locals 0

    .prologue
    .line 2579
    iput-object p1, p0, Lcom/flurry/android/FlurryAds;->hi:Lcom/flurry/android/AdUnit;

    .line 2580
    return-void
.end method

.method final declared-synchronized a(Lcom/flurry/android/cw;)V
    .locals 2

    .prologue
    .line 1111
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/flurry/android/FlurryAds;->hv:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x7fff

    if-ge v0, v1, :cond_0

    .line 1113
    iget-object v0, p0, Lcom/flurry/android/FlurryAds;->hv:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1114
    iget-object v0, p0, Lcom/flurry/android/FlurryAds;->hw:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/flurry/android/cw;->aA()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1116
    :cond_0
    monitor-exit p0

    return-void

    .line 1111
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized a(Ljava/io/DataInputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2512
    monitor-enter p0

    :goto_0
    :try_start_0
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    .line 2513
    if-eqz v0, :cond_0

    .line 2515
    iget-object v1, p0, Lcom/flurry/android/FlurryAds;->ho:Lcom/flurry/android/ca;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2519
    :try_start_1
    iget-object v0, p0, Lcom/flurry/android/FlurryAds;->ho:Lcom/flurry/android/ca;

    new-instance v2, Lcom/flurry/android/bl;

    invoke-direct {v2, p1}, Lcom/flurry/android/bl;-><init>(Ljava/io/DataInput;)V

    invoke-virtual {v0, v2}, Lcom/flurry/android/ca;->a(Lcom/flurry/android/bl;)V

    .line 2520
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2512
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 2521
    :cond_0
    const/4 v0, 0x1

    :try_start_3
    iput-boolean v0, p0, Lcom/flurry/android/FlurryAds;->gW:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2524
    monitor-exit p0

    return-void
.end method

.method final a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1414
    .line 1416
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    invoke-static {p1, p2}, Lcom/flurry/android/fl;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1419
    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    :goto_0
    if-eqz v1, :cond_2

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    :goto_1
    if-eqz v1, :cond_0

    const-string v2, "adSpaceName"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1421
    :cond_0
    :try_start_0
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1422
    const/4 v0, 0x1

    .line 1428
    :cond_1
    :goto_2
    return v0

    .line 1419
    :cond_2
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "targetIntent"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_1

    .line 1423
    :catch_0
    move-exception v1

    .line 1424
    sget-object v2, Lcom/flurry/android/FlurryAds;->p:Ljava/lang/String;

    const-string v3, "Cannot launch Activity"

    invoke-static {v2, v3, v1}, Lcom/flurry/android/cy;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_3
    move v1, v0

    goto :goto_0
.end method

.method final a(Landroid/content/Context;Ljava/lang/String;Landroid/view/ViewGroup;)Z
    .locals 1

    .prologue
    .line 1267
    invoke-virtual {p0, p1, p2}, Lcom/flurry/android/FlurryAds;->g(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1269
    const/4 v0, 0x0

    .line 1272
    :goto_0
    return v0

    .line 1271
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/flurry/android/FlurryAds;->b(Landroid/content/Context;Ljava/lang/String;Landroid/view/ViewGroup;)V

    .line 1272
    const/4 v0, 0x1

    goto :goto_0
.end method

.method final a(Landroid/content/Context;Ljava/lang/String;Lcom/flurry/android/FlurryAdSize;Landroid/view/ViewGroup;J)Z
    .locals 9

    .prologue
    .line 1187
    invoke-direct {p0, p1, p2}, Lcom/flurry/android/FlurryAds;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1189
    invoke-static {p1}, Lcom/flurry/android/FlurryAds;->o(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Lcom/flurry/android/FlurryAds;->n(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1191
    new-instance v0, Lcom/flurry/android/bi;

    const-wide/16 v2, 0x0

    cmp-long v1, p5, v2

    if-nez v1, :cond_0

    const/4 v6, 0x1

    :goto_0
    const-wide/16 v2, 0x0

    cmp-long v1, p5, v2

    if-nez v1, :cond_1

    const/4 v7, 0x1

    :goto_1
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v7}, Lcom/flurry/android/bi;-><init>(Lcom/flurry/android/FlurryAds;Landroid/content/Context;Ljava/lang/String;Lcom/flurry/android/FlurryAdSize;Landroid/view/ViewGroup;ZZ)V

    .line 1193
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/flurry/android/bi;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1194
    const-wide/16 v2, 0x0

    cmp-long v1, p5, v2

    if-lez v1, :cond_3

    .line 1198
    :try_start_0
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p5, p6, v1}, Lcom/flurry/android/bi;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 1199
    invoke-direct {p0, p1, p2}, Lcom/flurry/android/FlurryAds;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1201
    invoke-virtual {p0, p1, p2, p4}, Lcom/flurry/android/FlurryAds;->a(Landroid/content/Context;Ljava/lang/String;Landroid/view/ViewGroup;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v0

    .line 1234
    :goto_2
    return v0

    .line 1191
    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    :cond_1
    const/4 v7, 0x0

    goto :goto_1

    .line 1204
    :catch_0
    move-exception v0

    .line 1205
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 1207
    const/4 v0, 0x0

    goto :goto_2

    .line 1208
    :catch_1
    move-exception v0

    .line 1209
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->printStackTrace()V

    .line 1211
    const/4 v0, 0x0

    goto :goto_2

    .line 1213
    :catch_2
    move-exception v0

    const/4 v0, 0x0

    goto :goto_2

    .line 1218
    :cond_2
    invoke-static {p1}, Lcom/flurry/android/FlurryAds;->o(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1220
    iget-object v0, p0, Lcom/flurry/android/FlurryAds;->hs:Lcom/flurry/android/FlurryAdListener;

    if-eqz v0, :cond_3

    .line 1222
    iget-object v0, p0, Lcom/flurry/android/FlurryAds;->hs:Lcom/flurry/android/FlurryAdListener;

    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/flurry/android/FlurryAdListener;->spaceDidFailToReceiveAd(Ljava/lang/String;)V

    .line 1225
    :cond_3
    const/4 v0, 0x0

    goto :goto_2

    .line 1229
    :cond_4
    invoke-static {p1}, Lcom/flurry/android/FlurryAds;->n(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1231
    invoke-virtual {p0, p1, p2, p4}, Lcom/flurry/android/FlurryAds;->a(Landroid/content/Context;Ljava/lang/String;Landroid/view/ViewGroup;)Z

    move-result v0

    goto :goto_2

    .line 1234
    :cond_5
    const/4 v0, 0x0

    goto :goto_2
.end method

.method final aJ()J
    .locals 2

    .prologue
    .line 932
    iget-wide v0, p0, Lcom/flurry/android/FlurryAds;->aL:J

    return-wide v0
.end method

.method final b(Landroid/app/Activity;)V
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 916
    if-nez p1, :cond_1

    .line 928
    :cond_0
    :goto_0
    return-void

    .line 920
    :cond_1
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 921
    invoke-static {v0}, Lcom/flurry/android/FlurryAds;->a(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 922
    invoke-virtual {p0, p1, v0}, Lcom/flurry/android/FlurryAds;->onCloseFullScreen(Landroid/content/Context;Ljava/lang/String;)V

    .line 924
    iget-object v0, p0, Lcom/flurry/android/FlurryAds;->hu:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 927
    iget-object v0, p0, Lcom/flurry/android/FlurryAds;->hu:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v4, v0, :cond_0

    iget-object v0, p0, Lcom/flurry/android/FlurryAds;->hu:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const/4 v1, 0x0

    instance-of v3, v0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;

    if-eqz v3, :cond_4

    move-object v1, v0

    check-cast v1, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;

    invoke-virtual {v1}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->L()Lcom/flurry/android/AdUnit;

    move-result-object v3

    invoke-virtual {v1}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->aH()Lcom/flurry/android/ft;

    move-result-object v1

    if-eqz v1, :cond_3

    iget v1, v1, Lcom/flurry/android/ft;->U:I

    move-object v2, v3

    :goto_1
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/flurry/android/AdUnit;->getCombinable()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v4, :cond_2

    if-lez v1, :cond_0

    :cond_2
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_3
    move v1, v2

    move-object v2, v3

    goto :goto_1

    :cond_4
    move v5, v2

    move-object v2, v1

    move v1, v5

    goto :goto_1
.end method

.method final b(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/AdUnit;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3122
    iget-object v0, p0, Lcom/flurry/android/FlurryAds;->hk:Lcom/flurry/android/aa;

    invoke-virtual {v0, p1, p2}, Lcom/flurry/android/aa;->a(Landroid/content/Context;Ljava/util/List;)V

    .line 3123
    return-void
.end method

.method final b(Lcom/flurry/android/cw;)V
    .locals 0

    .prologue
    .line 2569
    iput-object p1, p0, Lcom/flurry/android/FlurryAds;->hh:Lcom/flurry/android/cw;

    .line 2570
    return-void
.end method

.method final bg()Z
    .locals 1

    .prologue
    .line 865
    iget v0, p0, Lcom/flurry/android/FlurryAds;->ht:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final declared-synchronized bh()J
    .locals 4

    .prologue
    .line 1024
    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/flurry/android/FlurryAds;->aM:J

    sub-long/2addr v0, v2

    .line 1025
    iget-wide v2, p0, Lcom/flurry/android/FlurryAds;->hj:J

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    :goto_0
    iput-wide v0, p0, Lcom/flurry/android/FlurryAds;->hj:J

    .line 1027
    iget-wide v0, p0, Lcom/flurry/android/FlurryAds;->hj:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 1025
    :cond_0
    :try_start_1
    iget-wide v0, p0, Lcom/flurry/android/FlurryAds;->hj:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/flurry/android/FlurryAds;->hj:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1024
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final bi()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/flurry/android/ReportedIdType;",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1068
    iget-object v0, p0, Lcom/flurry/android/FlurryAds;->aH:Ljava/util/Map;

    return-object v0
.end method

.method final bk()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1621
    iget-object v1, p0, Lcom/flurry/android/FlurryAds;->hg:Ljava/util/Map;

    .line 1622
    iget-object v0, p0, Lcom/flurry/android/FlurryAds;->hH:Lcom/flurry/android/dz;

    if-eqz v0, :cond_0

    .line 1624
    iget-object v0, p0, Lcom/flurry/android/FlurryAds;->hH:Lcom/flurry/android/dz;

    iget-object v2, v0, Lcom/flurry/android/dz;->mContext:Landroid/content/Context;

    if-nez v2, :cond_1

    const-string v0, ""

    .line 1625
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1627
    const-string v2, "appCloudUserId"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1630
    :cond_0
    return-object v1

    .line 1624
    :cond_1
    iget-object v0, v0, Lcom/flurry/android/dz;->mContext:Landroid/content/Context;

    const-string v2, "FLURRY_SHARED_PREFERENCES"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "flurry_last_user_id"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method final bq()Lcom/flurry/android/cw;
    .locals 1

    .prologue
    .line 2574
    iget-object v0, p0, Lcom/flurry/android/FlurryAds;->hh:Lcom/flurry/android/cw;

    return-object v0
.end method

.method final br()Lcom/flurry/android/AdUnit;
    .locals 1

    .prologue
    .line 2584
    iget-object v0, p0, Lcom/flurry/android/FlurryAds;->hi:Lcom/flurry/android/AdUnit;

    return-object v0
.end method

.method final c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 1473
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    .line 1474
    invoke-virtual {p0, p1, v0, p3}, Lcom/flurry/android/FlurryAds;->a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public cleanUpSession(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 841
    iget-object v0, p0, Lcom/flurry/android/FlurryAds;->hn:Lcom/flurry/android/gv;

    invoke-virtual {v0, p1}, Lcom/flurry/android/gv;->w(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/v;

    invoke-virtual {v0}, Lcom/flurry/android/v;->stop()V

    invoke-virtual {v0}, Lcom/flurry/android/v;->removeAllViews()V

    invoke-virtual {v0}, Lcom/flurry/android/v;->h()Landroid/view/ViewGroup;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    iget-object v2, p0, Lcom/flurry/android/FlurryAds;->hn:Lcom/flurry/android/gv;

    invoke-virtual {v2, v0}, Lcom/flurry/android/gv;->d(Lcom/flurry/android/v;)V

    goto :goto_0

    .line 842
    :cond_1
    return-void
.end method

.method final d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1636
    const-string v0, "market://details?id="

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1637
    iget-boolean v0, p0, Lcom/flurry/android/FlurryAds;->hb:Z

    if-eqz v0, :cond_1

    .line 1638
    invoke-virtual {p0, p1, p2, p3}, Lcom/flurry/android/FlurryAds;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1639
    sget-object v0, Lcom/flurry/android/FlurryAds;->p:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot launch Google Play url "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/flurry/android/cy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1649
    :cond_0
    :goto_0
    return-void

    .line 1642
    :cond_1
    const-string v0, "market://details?id="

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1643
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://market.android.com/details?id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1644
    invoke-virtual {p0, p1, v0, p3}, Lcom/flurry/android/FlurryAds;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 1647
    :cond_2
    sget-object v0, Lcom/flurry/android/FlurryAds;->p:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected Google Play url scheme: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/flurry/android/cy;->g(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method final g(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 1239
    invoke-direct {p0, p1, p2}, Lcom/flurry/android/FlurryAds;->j(Landroid/content/Context;Ljava/lang/String;)Lcom/flurry/android/AdUnit;

    move-result-object v1

    .line 1241
    if-nez v1, :cond_2

    .line 1243
    invoke-static {p0, v3}, Lcom/flurry/android/ct;->a(Lcom/flurry/android/FlurryAds;Ljava/lang/String;)Lcom/flurry/android/cw;

    move-result-object v1

    const-string v2, "unfilled"

    invoke-direct {p0, v1, v2, v0, v3}, Lcom/flurry/android/FlurryAds;->a(Lcom/flurry/android/cw;Ljava/lang/String;ZLjava/util/Map;)Lcom/flurry/android/cw;

    .line 1245
    iget-object v0, p0, Lcom/flurry/android/FlurryAds;->hs:Lcom/flurry/android/FlurryAdListener;

    if-eqz v0, :cond_0

    .line 1247
    iget-object v0, p0, Lcom/flurry/android/FlurryAds;->hs:Lcom/flurry/android/FlurryAdListener;

    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/flurry/android/FlurryAdListener;->spaceDidFailToReceiveAd(Ljava/lang/String;)V

    .line 1250
    :cond_0
    const/4 v0, 0x0

    .line 1262
    :cond_1
    :goto_0
    return v0

    .line 1253
    :cond_2
    iput-object v3, p0, Lcom/flurry/android/FlurryAds;->hC:Lcom/flurry/android/fm;

    .line 1255
    invoke-direct {p0, p1, v1}, Lcom/flurry/android/FlurryAds;->a(Landroid/content/Context;Lcom/flurry/android/AdUnit;)Lcom/flurry/android/fm;

    move-result-object v1

    .line 1256
    iget-object v2, p0, Lcom/flurry/android/FlurryAds;->hn:Lcom/flurry/android/gv;

    invoke-virtual {v2, p2, v1}, Lcom/flurry/android/gv;->a(Ljava/lang/String;Lcom/flurry/android/fm;)V

    .line 1258
    iget-object v1, p0, Lcom/flurry/android/FlurryAds;->hs:Lcom/flurry/android/FlurryAdListener;

    if-eqz v1, :cond_1

    .line 1260
    iget-object v1, p0, Lcom/flurry/android/FlurryAds;->hs:Lcom/flurry/android/FlurryAdListener;

    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/flurry/android/FlurryAdListener;->spaceDidReceiveAd(Ljava/lang/String;)V

    goto :goto_0
.end method

.method final h(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 1726
    const/4 v1, 0x0

    move v2, v3

    move-object v0, p2

    .line 1728
    :goto_0
    const/4 v4, 0x5

    if-ge v2, v4, :cond_6

    .line 1730
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    const-string v5, "http"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1732
    invoke-static {p1}, Lcom/flurry/android/FlurryAds;->o(Landroid/content/Context;)Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_4

    invoke-static {p1}, Lcom/flurry/android/FlurryAds;->n(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 1734
    const/16 v4, 0x2710

    const/16 v5, 0x3a98

    invoke-static {v0, v4, v5, v3}, Lcom/flurry/android/fl;->a(Ljava/lang/String;IIZ)Lorg/apache/http/HttpResponse;

    move-result-object v4

    .line 1735
    if-eqz v4, :cond_2

    .line 1737
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v5

    .line 1738
    const/16 v6, 0xc8

    if-ne v5, v6, :cond_1

    .line 1740
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Redirect URL found for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1789
    :cond_0
    :goto_1
    return-object v0

    .line 1744
    :cond_1
    const/16 v6, 0x12c

    if-lt v5, v6, :cond_3

    const/16 v6, 0x190

    if-ge v5, v6, :cond_3

    .line 1746
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "NumRedirects: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1747
    const-string v5, "Location"

    invoke-interface {v4, v5}, Lorg/apache/http/HttpResponse;->containsHeader(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1749
    const-string v0, "Location"

    invoke-interface {v4, v0}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 1787
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1754
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad Response status code: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-object v0, v1

    .line 1755
    goto :goto_1

    .line 1763
    :cond_4
    const-wide/16 v4, 0x64

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1765
    :catch_0
    move-exception v4

    .line 1767
    invoke-virtual {v4}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    goto :goto_2

    .line 1772
    :cond_5
    const-string v2, "android.intent.action.VIEW"

    invoke-static {p1, v0, v2}, Lcom/flurry/android/FlurryAds;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1777
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "market://"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_6
    move-object v0, v1

    goto :goto_1
.end method

.method final i(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/cw;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1048
    iput-object p1, p0, Lcom/flurry/android/FlurryAds;->hx:Ljava/util/List;

    .line 1049
    return-void
.end method

.method public onCloseFullScreen(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 856
    iget v0, p0, Lcom/flurry/android/FlurryAds;->ht:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/flurry/android/FlurryAds;->ht:I

    .line 857
    iget v0, p0, Lcom/flurry/android/FlurryAds;->ht:I

    if-nez v0, :cond_0

    .line 858
    iget-object v0, p0, Lcom/flurry/android/FlurryAds;->hs:Lcom/flurry/android/FlurryAdListener;

    if-eqz v0, :cond_0

    .line 859
    iget-object v0, p0, Lcom/flurry/android/FlurryAds;->hs:Lcom/flurry/android/FlurryAdListener;

    invoke-interface {v0, p2}, Lcom/flurry/android/FlurryAdListener;->onAdClosed(Ljava/lang/String;)V

    .line 862
    :cond_0
    return-void
.end method

.method public onContinueSession(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 830
    iget-object v0, p0, Lcom/flurry/android/FlurryAds;->ho:Lcom/flurry/android/ca;

    invoke-virtual {v0}, Lcom/flurry/android/ca;->as()V

    .line 831
    return-void
.end method

.method public onEndSession(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 836
    invoke-direct {p0}, Lcom/flurry/android/FlurryAds;->bl()V

    .line 837
    return-void
.end method

.method public onEvent(Lcom/flurry/android/gt;Lcom/flurry/android/au;I)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 2635
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onEvent:event="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/flurry/android/gt;->jf:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",params="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/flurry/android/gt;->bj:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2637
    iget-object v0, p1, Lcom/flurry/android/gt;->T:Lcom/flurry/android/AdUnit;

    invoke-virtual {v0}, Lcom/flurry/android/AdUnit;->getAdFrames()Ljava/util/List;

    move-result-object v0

    iget v1, p1, Lcom/flurry/android/gt;->jg:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/AdFrame;

    invoke-static {v0, p1}, Lcom/flurry/android/FlurryAds;->a(Lcom/flurry/android/AdFrame;Lcom/flurry/android/gt;)Ljava/util/List;

    move-result-object v3

    .line 2640
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2641
    iget-object v0, p0, Lcom/flurry/android/FlurryAds;->hD:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2643
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v5, p1, Lcom/flurry/android/gt;->jf:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2645
    new-instance v1, Lcom/flurry/android/y;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v5, p1, Lcom/flurry/android/gt;->bj:Ljava/util/Map;

    invoke-direct {v1, v0, v5, p1}, Lcom/flurry/android/y;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/flurry/android/gt;)V

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2652
    :cond_1
    iget-object v0, p1, Lcom/flurry/android/gt;->jf:Ljava/lang/String;

    const-string v1, "adWillClose"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2655
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/y;

    .line 2657
    iget-object v4, p0, Lcom/flurry/android/FlurryAds;->hE:Ljava/util/Set;

    iget-object v0, v0, Lcom/flurry/android/y;->bi:Ljava/lang/String;

    invoke-interface {v4, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2659
    const/4 v0, 0x1

    .line 2663
    :goto_1
    if-nez v0, :cond_3

    .line 2665
    new-instance v0, Lcom/flurry/android/y;

    const-string v1, "closeAd"

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v4

    invoke-direct {v0, v1, v4, p1}, Lcom/flurry/android/y;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/flurry/android/gt;)V

    invoke-interface {v3, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2669
    :cond_3
    iget-object v0, p1, Lcom/flurry/android/gt;->jf:Ljava/lang/String;

    const-string v1, "renderFailed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2671
    iget-object v0, p0, Lcom/flurry/android/FlurryAds;->hs:Lcom/flurry/android/FlurryAdListener;

    if-eqz v0, :cond_4

    .line 2673
    iget-object v0, p0, Lcom/flurry/android/FlurryAds;->hs:Lcom/flurry/android/FlurryAdListener;

    iget-object v1, p1, Lcom/flurry/android/gt;->T:Lcom/flurry/android/AdUnit;

    invoke-virtual {v1}, Lcom/flurry/android/AdUnit;->getAdSpace()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/flurry/android/FlurryAdListener;->onRenderFailed(Ljava/lang/String;)V

    .line 2677
    :cond_4
    iget-object v0, p1, Lcom/flurry/android/gt;->jf:Ljava/lang/String;

    const-string v1, "clicked"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2679
    iget-object v0, p0, Lcom/flurry/android/FlurryAds;->hs:Lcom/flurry/android/FlurryAdListener;

    if-eqz v0, :cond_5

    .line 2681
    iget-object v0, p0, Lcom/flurry/android/FlurryAds;->hs:Lcom/flurry/android/FlurryAdListener;

    iget-object v1, p1, Lcom/flurry/android/gt;->T:Lcom/flurry/android/AdUnit;

    invoke-virtual {v1}, Lcom/flurry/android/AdUnit;->getAdSpace()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/flurry/android/FlurryAdListener;->onAdClicked(Ljava/lang/String;)V

    .line 2684
    :cond_5
    iget-object v0, p1, Lcom/flurry/android/gt;->jf:Ljava/lang/String;

    const-string v1, "videoCompleted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2686
    iget-object v0, p0, Lcom/flurry/android/FlurryAds;->hs:Lcom/flurry/android/FlurryAdListener;

    if-eqz v0, :cond_6

    .line 2688
    iget-object v0, p0, Lcom/flurry/android/FlurryAds;->hs:Lcom/flurry/android/FlurryAdListener;

    iget-object v1, p1, Lcom/flurry/android/gt;->T:Lcom/flurry/android/AdUnit;

    invoke-virtual {v1}, Lcom/flurry/android/AdUnit;->getAdSpace()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/flurry/android/FlurryAdListener;->onVideoCompleted(Ljava/lang/String;)V

    .line 2693
    :cond_6
    const/4 v0, 0x0

    .line 2695
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v1, v0

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/flurry/android/y;

    .line 2697
    iget-object v0, v2, Lcom/flurry/android/y;->bi:Ljava/lang/String;

    const-string v3, "logEvent"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2700
    iget-object v0, v2, Lcom/flurry/android/y;->bj:Ljava/util/Map;

    const-string v1, "__sendToServer"

    const-string v3, "true"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v3, v2

    .line 2703
    :goto_3
    iget-object v0, v2, Lcom/flurry/android/y;->bi:Ljava/lang/String;

    const-string v1, "loadAdComponents"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2705
    iget-object v0, v2, Lcom/flurry/android/y;->bk:Lcom/flurry/android/gt;

    iget-object v0, v0, Lcom/flurry/android/gt;->bj:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 2706
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2707
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2708
    iget-object v6, v2, Lcom/flurry/android/y;->bj:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 2711
    :cond_7
    sget-object v0, Lcom/flurry/android/FlurryAds;->p:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/flurry/android/y;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/flurry/android/cy;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 2712
    add-int/lit8 v0, p3, 0x1

    invoke-interface {p2, v2, p0, v0}, Lcom/flurry/android/au;->performAction$3deb3ec3(Lcom/flurry/android/y;Lcom/flurry/android/FlurryAds;I)V

    move-object v1, v3

    goto :goto_2

    .line 2715
    :cond_8
    if-nez v1, :cond_9

    .line 2717
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2718
    const-string v1, "__sendToServer"

    const-string v2, "false"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2719
    new-instance v1, Lcom/flurry/android/y;

    const-string v2, "logEvent"

    invoke-direct {v1, v2, v0, p1}, Lcom/flurry/android/y;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/flurry/android/gt;)V

    .line 2720
    add-int/lit8 v0, p3, 0x1

    invoke-interface {p2, v1, p0, v0}, Lcom/flurry/android/au;->performAction$3deb3ec3(Lcom/flurry/android/y;Lcom/flurry/android/FlurryAds;I)V

    .line 2721
    sget-object v0, Lcom/flurry/android/FlurryAds;->p:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/flurry/android/y;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/flurry/android/cy;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 2723
    :cond_9
    return-void

    :cond_a
    move-object v3, v1

    goto :goto_3

    :cond_b
    move v0, v2

    goto/16 :goto_1
.end method

.method public onOpenFullScreen(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 846
    iget v0, p0, Lcom/flurry/android/FlurryAds;->ht:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/flurry/android/FlurryAds;->ht:I

    .line 847
    const/4 v0, 0x1

    iget v1, p0, Lcom/flurry/android/FlurryAds;->ht:I

    if-ne v0, v1, :cond_0

    .line 848
    iget-object v0, p0, Lcom/flurry/android/FlurryAds;->hs:Lcom/flurry/android/FlurryAdListener;

    if-eqz v0, :cond_0

    .line 849
    iget-object v0, p0, Lcom/flurry/android/FlurryAds;->hs:Lcom/flurry/android/FlurryAdListener;

    invoke-interface {v0, p2}, Lcom/flurry/android/FlurryAdListener;->onAdOpened(Ljava/lang/String;)V

    .line 852
    :cond_0
    return-void
.end method

.method public onStartNewSession(Landroid/content/Context;JJ)V
    .locals 2

    .prologue
    .line 820
    new-instance v0, Lcom/flurry/android/dz;

    invoke-direct {v0, p1}, Lcom/flurry/android/dz;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/flurry/android/FlurryAds;->hH:Lcom/flurry/android/dz;

    .line 821
    iput-wide p2, p0, Lcom/flurry/android/FlurryAds;->aL:J

    .line 822
    iput-wide p4, p0, Lcom/flurry/android/FlurryAds;->aM:J

    .line 823
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/flurry/android/FlurryAds;->hj:J

    .line 824
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flurry/android/FlurryAds;->hc:Z

    .line 825
    return-void
.end method

.method public performAction$3deb3ec3(Lcom/flurry/android/y;Lcom/flurry/android/FlurryAds;I)V
    .locals 15

    .prologue
    .line 2728
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "performAction:action="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/flurry/android/y;->bi:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",params="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/flurry/android/y;->bj:Ljava/util/Map;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",triggering event="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/flurry/android/y;->bk:Lcom/flurry/android/gt;

    iget-object v3, v3, Lcom/flurry/android/gt;->jf:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2730
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/flurry/android/y;->bi:Ljava/lang/String;

    .line 2731
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/flurry/android/y;->bk:Lcom/flurry/android/gt;

    iget-object v4, v3, Lcom/flurry/android/gt;->Q:Landroid/content/Context;

    .line 2732
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/flurry/android/y;->bk:Lcom/flurry/android/gt;

    iget-object v13, v3, Lcom/flurry/android/gt;->S:Lcom/flurry/android/cw;

    .line 2733
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/flurry/android/y;->bk:Lcom/flurry/android/gt;

    iget-object v7, v3, Lcom/flurry/android/gt;->T:Lcom/flurry/android/AdUnit;

    .line 2734
    invoke-virtual {v7}, Lcom/flurry/android/AdUnit;->getAdSpace()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2736
    const/16 v3, 0xa

    move/from16 v0, p3

    if-le v0, v3, :cond_1

    .line 2738
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Maximum depth for event/action loop exceeded when performing action:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/flurry/android/y;->bj:Ljava/util/Map;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",triggered by:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/flurry/android/y;->bk:Lcom/flurry/android/gt;

    iget-object v3, v3, Lcom/flurry/android/gt;->jf:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2956
    :cond_0
    :goto_0
    return-void

    .line 2742
    :cond_1
    const-string v3, "directOpen"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 2744
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/flurry/android/y;->bj:Ljava/util/Map;

    const-string v3, "url"

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2746
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/flurry/android/y;->bj:Ljava/util/Map;

    const-string v3, "url"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2747
    const-string v3, "market://"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2749
    invoke-virtual {p0, v4, v2, v5}, Lcom/flurry/android/FlurryAds;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2753
    :cond_2
    const-string v3, "true"

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/flurry/android/y;->bj:Ljava/util/Map;

    const-string v8, "native"

    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 2754
    if-eqz v3, :cond_3

    .line 2756
    move-object/from16 v0, p1

    invoke-direct {p0, v13, v7, v0, v2}, Lcom/flurry/android/FlurryAds;->a(Lcom/flurry/android/cw;Lcom/flurry/android/AdUnit;Lcom/flurry/android/y;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2759
    invoke-virtual {p0, v4, v2, v5}, Lcom/flurry/android/FlurryAds;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 2763
    :cond_3
    new-instance v3, Landroid/content/Intent;

    const-class v6, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;

    invoke-direct {v3, v4, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2764
    const-string v6, "url"

    invoke-virtual {v3, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2765
    invoke-static {v4, v3}, Lcom/flurry/android/fl;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 2767
    invoke-virtual {p0, v4, v3, v5}, Lcom/flurry/android/FlurryAds;->a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Z

    goto :goto_0

    .line 2771
    :cond_4
    sget-object v3, Lcom/flurry/android/FlurryAds;->p:Ljava/lang/String;

    const-string v6, "Can\'t start FlurryFullscreenTakeoverActivity, was it declared in the manifest? Falling back to default browser"

    invoke-static {v3, v6}, Lcom/flurry/android/cy;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 2772
    invoke-virtual {p0, v4, v2, v5}, Lcom/flurry/android/FlurryAds;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 2779
    :cond_5
    sget-object v2, Lcom/flurry/android/FlurryAds;->p:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to perform directOpen action: no url in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/flurry/android/y;->bk:Lcom/flurry/android/gt;

    iget-object v4, v4, Lcom/flurry/android/gt;->jf:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/flurry/android/cy;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2782
    :cond_6
    const-string v3, "delete"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 2784
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/flurry/android/y;->bj:Ljava/util/Map;

    const-string v3, "count"

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2786
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/flurry/android/y;->bj:Ljava/util/Map;

    const-string v3, "count"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2787
    const/4 v3, -0x1

    .line 2790
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 2796
    :goto_1
    iget-object v3, p0, Lcom/flurry/android/FlurryAds;->hk:Lcom/flurry/android/aa;

    invoke-virtual {v3, v4, v5, v2}, Lcom/flurry/android/aa;->a(Landroid/content/Context;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 2792
    :catch_0
    move-exception v6

    .line 2794
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "caught NumberFormatException with count parameter in deleteAds:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move v2, v3

    goto :goto_1

    .line 2798
    :cond_7
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/flurry/android/y;->bj:Ljava/util/Map;

    const-string v3, "groupId"

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2800
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/flurry/android/y;->bj:Ljava/util/Map;

    const-string v3, "groupId"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2801
    iget-object v3, p0, Lcom/flurry/android/FlurryAds;->hk:Lcom/flurry/android/aa;

    invoke-virtual {v3, v4, v5, v2}, Lcom/flurry/android/aa;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2804
    :cond_8
    const-string v3, "processRedirect"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 2806
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/flurry/android/y;->bj:Ljava/util/Map;

    const-string v3, "url"

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2808
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/flurry/android/y;->bj:Ljava/util/Map;

    const-string v3, "url"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2809
    const-string v3, "true"

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/flurry/android/y;->bj:Ljava/util/Map;

    const-string v8, "native"

    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 2810
    if-eqz v3, :cond_9

    .line 2812
    move-object/from16 v0, p1

    invoke-direct {p0, v13, v7, v0, v2}, Lcom/flurry/android/FlurryAds;->a(Lcom/flurry/android/cw;Lcom/flurry/android/AdUnit;Lcom/flurry/android/y;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2814
    invoke-virtual {p0, v4, v2, v5}, Lcom/flurry/android/FlurryAds;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 2816
    :cond_9
    const-string v3, "http"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 2818
    move-object/from16 v0, p1

    invoke-direct {p0, v13, v7, v0, v2}, Lcom/flurry/android/FlurryAds;->a(Lcom/flurry/android/cw;Lcom/flurry/android/AdUnit;Lcom/flurry/android/y;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v8, p0, Lcom/flurry/android/FlurryAds;->hm:Landroid/os/Handler;

    new-instance v2, Lcom/flurry/android/cq;

    const/4 v6, 0x1

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/flurry/android/cq;-><init>(Lcom/flurry/android/FlurryAds;Landroid/content/Context;Ljava/lang/String;ZLcom/flurry/android/AdUnit;)V

    invoke-virtual {v8, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 2822
    :cond_a
    const/4 v3, 0x0

    invoke-virtual {p0, v4, v2, v3, v7}, Lcom/flurry/android/FlurryAds;->a(Landroid/content/Context;Ljava/lang/String;ZLcom/flurry/android/AdUnit;)V

    goto/16 :goto_0

    .line 2826
    :cond_b
    const-string v3, "verifyUrl"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 2828
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/flurry/android/y;->bj:Ljava/util/Map;

    const-string v3, "url"

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2830
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/flurry/android/y;->bj:Ljava/util/Map;

    const-string v3, "url"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2831
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_c

    invoke-static {v4, v2}, Lcom/flurry/android/fl;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_c

    const/4 v2, 0x1

    :goto_2
    if-eqz v2, :cond_d

    const-string v9, "urlVerified"

    .line 2832
    :goto_3
    new-instance v8, Lcom/flurry/android/gt;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v10

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/flurry/android/y;->bk:Lcom/flurry/android/gt;

    iget v14, v2, Lcom/flurry/android/gt;->jg:I

    move-object v11, v4

    move-object v12, v7

    invoke-direct/range {v8 .. v14}, Lcom/flurry/android/gt;-><init>(Ljava/lang/String;Ljava/util/Map;Landroid/content/Context;Lcom/flurry/android/AdUnit;Lcom/flurry/android/cw;I)V

    add-int/lit8 v2, p3, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v8, p0, v2}, Lcom/flurry/android/FlurryAds;->onEvent(Lcom/flurry/android/gt;Lcom/flurry/android/au;I)V

    goto/16 :goto_0

    .line 2831
    :cond_c
    const/4 v2, 0x0

    goto :goto_2

    :cond_d
    const-string v9, "urlNotVerified"

    goto :goto_3

    .line 2836
    :cond_e
    const-string v3, "launchPackage"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 2838
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/flurry/android/y;->bj:Ljava/util/Map;

    const-string v3, "package"

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2840
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/flurry/android/y;->bj:Ljava/util/Map;

    const-string v3, "package"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2841
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_f

    invoke-static {v4, v3}, Lcom/flurry/android/fl;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-virtual {v7}, Lcom/flurry/android/AdUnit;->getAdSpace()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v4, v3, v2}, Lcom/flurry/android/FlurryAds;->a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Z

    goto/16 :goto_0

    :cond_f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "https://play.google.com/store/apps/details?id="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v4, v2, v3, v7}, Lcom/flurry/android/FlurryAds;->a(Landroid/content/Context;Ljava/lang/String;ZLcom/flurry/android/AdUnit;)V

    goto/16 :goto_0

    .line 2844
    :cond_10
    const-string v3, "sendUrlAsync"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 2846
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/flurry/android/y;->bj:Ljava/util/Map;

    const-string v3, "url"

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2848
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/flurry/android/y;->bj:Ljava/util/Map;

    const-string v3, "url"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-direct {p0, v13, v7, v0, v2}, Lcom/flurry/android/FlurryAds;->a(Lcom/flurry/android/cw;Lcom/flurry/android/AdUnit;Lcom/flurry/android/y;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "url after is: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    new-instance v3, Lcom/flurry/android/cp;

    invoke-direct {v3, p0, v4, v2}, Lcom/flurry/android/cp;-><init>(Lcom/flurry/android/FlurryAds;Landroid/content/Context;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/flurry/android/FlurryAds;->hm:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 2851
    :cond_11
    const-string v3, "sendAdLogs"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 2853
    invoke-direct {p0}, Lcom/flurry/android/FlurryAds;->bl()V

    goto/16 :goto_0

    .line 2855
    :cond_12
    const-string v3, "logEvent"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 2857
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/flurry/android/y;->bj:Ljava/util/Map;

    const-string v3, "__sendToServer"

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/flurry/android/y;->bj:Ljava/util/Map;

    const-string v3, "__sendToServer"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    const/4 v2, 0x1

    .line 2858
    :goto_4
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/flurry/android/y;->bj:Ljava/util/Map;

    const-string v4, "__sendToServer"

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2860
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/flurry/android/y;->bk:Lcom/flurry/android/gt;

    iget-object v3, v3, Lcom/flurry/android/gt;->S:Lcom/flurry/android/cw;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/flurry/android/y;->bk:Lcom/flurry/android/gt;

    iget-object v4, v4, Lcom/flurry/android/gt;->jf:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/flurry/android/y;->bj:Ljava/util/Map;

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/flurry/android/FlurryAds;->a(Lcom/flurry/android/cw;Ljava/lang/String;ZLjava/util/Map;)Lcom/flurry/android/cw;

    goto/16 :goto_0

    .line 2857
    :cond_13
    const/4 v2, 0x0

    goto :goto_4

    .line 2862
    :cond_14
    const-string v3, "nextFrame"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2866
    const-string v3, "nextAdUnit"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 2868
    iget-object v2, p0, Lcom/flurry/android/FlurryAds;->hn:Lcom/flurry/android/gv;

    invoke-virtual {v2, v5}, Lcom/flurry/android/gv;->O(Ljava/lang/String;)Lcom/flurry/android/v;

    move-result-object v6

    .line 2869
    if-eqz v6, :cond_16

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/flurry/android/y;->bj:Ljava/util/Map;

    const-string v3, "delay"

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/flurry/android/y;->bk:Lcom/flurry/android/gt;

    iget v2, v2, Lcom/flurry/android/gt;->jg:I

    if-eqz v7, :cond_15

    invoke-virtual {v7}, Lcom/flurry/android/AdUnit;->getAdFrames()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_15

    invoke-virtual {v7}, Lcom/flurry/android/AdUnit;->getAdFrames()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/flurry/android/AdFrame;

    invoke-virtual {v2}, Lcom/flurry/android/AdFrame;->getAdSpaceLayout()Lcom/flurry/android/AdSpaceLayout;

    move-result-object v2

    invoke-virtual {v2}, Lcom/flurry/android/AdSpaceLayout;->getFormat()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "banner"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    :goto_5
    if-eqz v2, :cond_16

    .line 2871
    const-wide/16 v4, 0x1e

    .line 2874
    :try_start_1
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/flurry/android/y;->bj:Ljava/util/Map;

    const-string v3, "delay"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v2

    .line 2880
    :goto_6
    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-virtual {v6, v2, v3}, Lcom/flurry/android/v;->a(J)V

    goto/16 :goto_0

    .line 2869
    :cond_15
    const/4 v2, 0x0

    goto :goto_5

    .line 2878
    :catch_1
    move-exception v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "caught NumberFormatException with delay parameter in nextAdUnit:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/flurry/android/y;->bj:Ljava/util/Map;

    const-string v7, "delay"

    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-wide v2, v4

    goto :goto_6

    .line 2882
    :cond_16
    if-eqz v6, :cond_17

    .line 2884
    new-instance v2, Lcom/flurry/android/cl;

    invoke-direct {v2, p0, v4, v5, v6}, Lcom/flurry/android/cl;-><init>(Lcom/flurry/android/FlurryAds;Landroid/content/Context;Ljava/lang/String;Lcom/flurry/android/v;)V

    invoke-virtual {v6, v2}, Lcom/flurry/android/v;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 2893
    :cond_17
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/flurry/android/y;->bk:Lcom/flurry/android/gt;

    iget-object v2, v2, Lcom/flurry/android/gt;->jf:Ljava/lang/String;

    const-string v3, "renderFailed"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 2895
    invoke-virtual {p0, v4, v5}, Lcom/flurry/android/FlurryAds;->g(Landroid/content/Context;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 2899
    :cond_18
    invoke-direct {p0, v4, v5}, Lcom/flurry/android/FlurryAds;->j(Landroid/content/Context;Ljava/lang/String;)Lcom/flurry/android/AdUnit;

    move-result-object v2

    iput-object v2, p0, Lcom/flurry/android/FlurryAds;->hB:Lcom/flurry/android/AdUnit;

    .line 2900
    iget-object v2, p0, Lcom/flurry/android/FlurryAds;->hB:Lcom/flurry/android/AdUnit;

    invoke-direct {p0, v4, v2}, Lcom/flurry/android/FlurryAds;->a(Landroid/content/Context;Lcom/flurry/android/AdUnit;)Lcom/flurry/android/fm;

    goto/16 :goto_0

    .line 2903
    :cond_19
    const-string v3, "checkCap"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 2905
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/flurry/android/y;->bj:Ljava/util/Map;

    const-string v3, "idHash"

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2908
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/flurry/android/y;->bj:Ljava/util/Map;

    const-string v3, "idHash"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2911
    iget-object v3, p0, Lcom/flurry/android/FlurryAds;->ho:Lcom/flurry/android/ca;

    invoke-virtual {v3, v2}, Lcom/flurry/android/ca;->l(Ljava/lang/String;)Lcom/flurry/android/bl;

    move-result-object v3

    .line 2912
    const-string v9, "capNotExhausted"

    .line 2915
    if-eqz v3, :cond_1a

    invoke-virtual {v3}, Lcom/flurry/android/bl;->ah()J

    move-result-wide v10

    invoke-static {v10, v11}, Lcom/flurry/android/ca;->c(J)Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 2916
    sget-object v3, Lcom/flurry/android/FlurryAds;->p:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Discarding expired frequency cap info for idHash="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/flurry/android/cy;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 2917
    iget-object v3, p0, Lcom/flurry/android/FlurryAds;->ho:Lcom/flurry/android/ca;

    invoke-virtual {v3, v2}, Lcom/flurry/android/ca;->m(Ljava/lang/String;)V

    .line 2918
    const/4 v3, 0x0

    .line 2921
    :cond_1a
    if-eqz v3, :cond_1b

    invoke-virtual {v3}, Lcom/flurry/android/bl;->ac()I

    move-result v5

    invoke-virtual {v3}, Lcom/flurry/android/bl;->ae()I

    move-result v3

    if-lt v5, v3, :cond_1b

    .line 2922
    sget-object v3, Lcom/flurry/android/FlurryAds;->p:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Frequency cap exhausted for idHash="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/flurry/android/cy;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 2923
    const-string v9, "capExhausted"

    .line 2926
    :cond_1b
    new-instance v8, Lcom/flurry/android/gt;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v10

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/flurry/android/y;->bk:Lcom/flurry/android/gt;

    iget v14, v2, Lcom/flurry/android/gt;->jg:I

    move-object v11, v4

    move-object v12, v7

    invoke-direct/range {v8 .. v14}, Lcom/flurry/android/gt;-><init>(Ljava/lang/String;Ljava/util/Map;Landroid/content/Context;Lcom/flurry/android/AdUnit;Lcom/flurry/android/cw;I)V

    add-int/lit8 v2, p3, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v8, p0, v2}, Lcom/flurry/android/FlurryAds;->onEvent(Lcom/flurry/android/gt;Lcom/flurry/android/au;I)V

    goto/16 :goto_0

    .line 2932
    :cond_1c
    const-string v3, "updateViewCount"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 2934
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/flurry/android/y;->bj:Ljava/util/Map;

    const-string v3, "idHash"

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2937
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/flurry/android/y;->bj:Ljava/util/Map;

    const-string v3, "idHash"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2939
    iget-object v3, p0, Lcom/flurry/android/FlurryAds;->ho:Lcom/flurry/android/ca;

    invoke-virtual {v3, v2}, Lcom/flurry/android/ca;->l(Ljava/lang/String;)Lcom/flurry/android/bl;

    move-result-object v2

    .line 2941
    if-eqz v2, :cond_0

    .line 2943
    invoke-virtual {v2}, Lcom/flurry/android/bl;->ad()V

    .line 2944
    sget-object v3, Lcom/flurry/android/FlurryAds;->p:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateViewCount:idHash="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/flurry/android/bl;->ab()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",newCap="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/flurry/android/bl;->ae()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",prevCap="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/flurry/android/bl;->af()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",views="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/flurry/android/bl;->ac()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/flurry/android/cy;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 2945
    invoke-virtual {v2}, Lcom/flurry/android/bl;->ac()I

    move-result v3

    invoke-virtual {v2}, Lcom/flurry/android/bl;->ae()I

    move-result v4

    if-le v3, v4, :cond_0

    .line 2946
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FlurryAdAction: !! rendering a capped object: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/flurry/android/bl;->ab()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto/16 :goto_0

    .line 2954
    :cond_1d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown action:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",triggered by:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/flurry/android/y;->bk:Lcom/flurry/android/gt;

    iget-object v3, v3, Lcom/flurry/android/gt;->jf:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public declared-synchronized savePersistentAdLogData()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 2306
    monitor-enter p0

    .line 2309
    :try_start_0
    iget-object v0, p0, Lcom/flurry/android/FlurryAds;->gX:Ljava/io/File;

    invoke-static {v0}, Lcom/flurry/android/an;->a(Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-result v0

    .line 2310
    if-nez v0, :cond_0

    .line 2327
    const/4 v0, 0x0

    :try_start_1
    invoke-static {v0}, Lcom/flurry/android/fl;->a(Ljava/io/Closeable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2328
    :goto_0
    monitor-exit p0

    return-void

    .line 2315
    :cond_0
    :try_start_2
    new-instance v1, Ljava/io/DataOutputStream;

    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/flurry/android/FlurryAds;->gX:Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 2316
    :try_start_3
    iget-object v2, p0, Lcom/flurry/android/FlurryAds;->hv:Ljava/util/List;

    monitor-enter v2
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 2318
    :try_start_4
    iget-object v0, p0, Lcom/flurry/android/FlurryAds;->hv:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/flurry/android/cg;->a(Ljava/util/List;Ljava/io/DataOutput;)V

    .line 2319
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2327
    :try_start_5
    invoke-static {v1}, Lcom/flurry/android/fl;->a(Ljava/io/Closeable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 2306
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 2319
    :catchall_1
    move-exception v0

    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v0
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 2321
    :catch_0
    move-exception v0

    .line 2323
    :goto_1
    :try_start_8
    sget-object v2, Lcom/flurry/android/FlurryAds;->p:Ljava/lang/String;

    const-string v3, "Error when saving ad log data: "

    invoke-static {v2, v3, v0}, Lcom/flurry/android/cy;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 2327
    :try_start_9
    invoke-static {v1}, Lcom/flurry/android/fl;->a(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_2
    move-exception v0

    :goto_2
    invoke-static {v2}, Lcom/flurry/android/fl;->a(Ljava/io/Closeable;)V

    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :catchall_3
    move-exception v0

    move-object v2, v1

    goto :goto_2

    .line 2321
    :catch_1
    move-exception v0

    move-object v1, v2

    goto :goto_1
.end method

.method public declared-synchronized savePersistentFreqCapData()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 2405
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/flurry/android/FlurryAds;->ho:Lcom/flurry/android/ca;

    invoke-virtual {v0}, Lcom/flurry/android/ca;->as()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2411
    :try_start_1
    iget-object v0, p0, Lcom/flurry/android/FlurryAds;->gY:Ljava/io/File;

    invoke-static {v0}, Lcom/flurry/android/an;->a(Ljava/io/File;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result v0

    .line 2412
    if-nez v0, :cond_0

    .line 2432
    const/4 v0, 0x0

    :try_start_2
    invoke-static {v0}, Lcom/flurry/android/fl;->a(Ljava/io/Closeable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2433
    :goto_0
    monitor-exit p0

    return-void

    .line 2417
    :cond_0
    :try_start_3
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/flurry/android/FlurryAds;->gY:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 2418
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 2420
    :try_start_4
    iget-object v2, p0, Lcom/flurry/android/FlurryAds;->ho:Lcom/flurry/android/ca;

    monitor-enter v2
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 2422
    :try_start_5
    iget-object v0, p0, Lcom/flurry/android/FlurryAds;->ho:Lcom/flurry/android/ca;

    invoke-direct {p0, v0, v1}, Lcom/flurry/android/FlurryAds;->a(Lcom/flurry/android/ca;Ljava/io/DataOutputStream;)V

    .line 2423
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 2424
    const/4 v0, 0x0

    :try_start_6
    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 2432
    :try_start_7
    invoke-static {v1}, Lcom/flurry/android/fl;->a(Ljava/io/Closeable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_0

    .line 2405
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 2423
    :catchall_1
    move-exception v0

    :try_start_8
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    throw v0
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 2426
    :catch_0
    move-exception v0

    .line 2428
    :goto_1
    :try_start_a
    sget-object v2, Lcom/flurry/android/FlurryAds;->p:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v2, v3, v0}, Lcom/flurry/android/cy;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 2432
    :try_start_b
    invoke-static {v1}, Lcom/flurry/android/fl;->a(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_2
    move-exception v0

    move-object v1, v2

    :goto_2
    invoke-static {v1}, Lcom/flurry/android/fl;->a(Ljava/io/Closeable;)V

    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :catchall_3
    move-exception v0

    goto :goto_2

    .line 2426
    :catch_1
    move-exception v0

    move-object v1, v2

    goto :goto_1
.end method

.method public setReportedIds(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/flurry/android/ReportedIdType;",
            "Ljava/nio/ByteBuffer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1043
    iput-object p1, p0, Lcom/flurry/android/FlurryAds;->aH:Ljava/util/Map;

    .line 1044
    return-void
.end method
