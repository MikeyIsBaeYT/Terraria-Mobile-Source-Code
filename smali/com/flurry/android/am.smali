.class Lcom/flurry/android/am;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final p:Ljava/lang/String;


# instance fields
.field private cF:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-class v0, Lcom/flurry/android/am;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/android/am;->p:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/flurry/android/eb;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v1, 0x0

    .line 27
    :try_start_0
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 28
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v6}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 30
    const/4 v0, 0x1

    :try_start_1
    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 31
    invoke-virtual {p1}, Lcom/flurry/android/eb;->getVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 32
    invoke-virtual {p1}, Lcom/flurry/android/eb;->aJ()J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 33
    invoke-virtual {p1}, Lcom/flurry/android/eb;->aK()J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 34
    invoke-virtual {p1}, Lcom/flurry/android/eb;->aL()J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 35
    invoke-virtual {p1}, Lcom/flurry/android/eb;->getLocale()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 36
    invoke-virtual {p1}, Lcom/flurry/android/eb;->getTimeZone()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 37
    invoke-virtual {p1}, Lcom/flurry/android/eb;->aM()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 38
    invoke-virtual {p1}, Lcom/flurry/android/eb;->aN()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 40
    invoke-virtual {p1}, Lcom/flurry/android/eb;->getLocation()Landroid/location/Location;

    move-result-object v0

    if-nez v0, :cond_0

    .line 41
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 49
    :goto_0
    invoke-virtual {p1}, Lcom/flurry/android/eb;->aO()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 50
    const/4 v0, -0x1

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 51
    const/4 v0, -0x1

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 52
    invoke-virtual {p1}, Lcom/flurry/android/eb;->aP()B

    move-result v0

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 53
    invoke-virtual {p1}, Lcom/flurry/android/eb;->aQ()Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_1

    .line 54
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 59
    :goto_1
    invoke-virtual {p1}, Lcom/flurry/android/eb;->aT()Ljava/util/Map;

    move-result-object v0

    .line 60
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 61
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 62
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 63
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/k;

    iget v0, v0, Lcom/flurry/android/k;->value:I

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    .line 100
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 101
    :goto_3
    :try_start_2
    sget-object v2, Lcom/flurry/android/am;->p:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v2, v3, v0}, Lcom/flurry/android/cy;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 102
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 104
    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_4
    invoke-static {v2}, Lcom/flurry/android/fl;->a(Ljava/io/Closeable;)V

    throw v0

    .line 43
    :cond_0
    const/4 v0, 0x1

    :try_start_3
    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 44
    invoke-virtual {p1}, Lcom/flurry/android/eb;->getLocation()Landroid/location/Location;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/flurry/android/am;->a(D)D

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Ljava/io/DataOutputStream;->writeDouble(D)V

    .line 45
    invoke-virtual {p1}, Lcom/flurry/android/eb;->getLocation()Landroid/location/Location;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/flurry/android/am;->a(D)D

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Ljava/io/DataOutputStream;->writeDouble(D)V

    .line 46
    invoke-virtual {p1}, Lcom/flurry/android/eb;->getLocation()Landroid/location/Location;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    goto/16 :goto_0

    .line 104
    :catchall_1
    move-exception v0

    goto :goto_4

    .line 56
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 57
    invoke-virtual {p1}, Lcom/flurry/android/eb;->aQ()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V

    goto/16 :goto_1

    .line 65
    :cond_2
    invoke-virtual {p1}, Lcom/flurry/android/eb;->aS()Ljava/util/List;

    move-result-object v0

    .line 67
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 68
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/fx;

    .line 69
    invoke-virtual {v0}, Lcom/flurry/android/fx;->getBytes()[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->write([B)V

    goto :goto_5

    .line 71
    :cond_3
    invoke-virtual {p1}, Lcom/flurry/android/eb;->aU()Z

    move-result v0

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 76
    invoke-virtual {p1}, Lcom/flurry/android/eb;->getErrors()Ljava/util/List;

    move-result-object v7

    move v1, v3

    move v4, v3

    move v5, v3

    .line 77
    :goto_6
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 78
    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/cb;

    invoke-virtual {v0}, Lcom/flurry/android/cb;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    add-int/2addr v5, v0

    .line 79
    const v0, 0x27100

    if-le v5, v0, :cond_5

    .line 80
    sget-object v0, Lcom/flurry/android/am;->p:Ljava/lang/String;

    const-string v1, "Error Log size exceeded. No more event details logged."

    invoke-static {v0, v1}, Lcom/flurry/android/cy;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    :cond_4
    invoke-virtual {p1}, Lcom/flurry/android/eb;->aR()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 88
    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    move v1, v3

    .line 89
    :goto_7
    if-ge v1, v4, :cond_6

    .line 90
    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/cb;

    invoke-virtual {v0}, Lcom/flurry/android/cb;->getBytes()[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 89
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7

    .line 83
    :cond_5
    add-int/lit8 v4, v4, 0x1

    .line 77
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6

    .line 94
    :cond_6
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 97
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 99
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/am;->cF:[B
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 104
    invoke-static {v2}, Lcom/flurry/android/fl;->a(Ljava/io/Closeable;)V

    .line 105
    return-void

    .line 104
    :catchall_2
    move-exception v0

    move-object v2, v1

    goto/16 :goto_4

    .line 100
    :catch_1
    move-exception v0

    goto/16 :goto_3
.end method

.method public constructor <init>([B)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/flurry/android/am;->cF:[B

    .line 22
    return-void
.end method

.method private static a(D)D
    .locals 4

    .prologue
    const-wide v2, 0x408f400000000000L    # 1000.0

    .line 116
    mul-double v0, p0, v2

    .line 117
    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-double v0, v0

    .line 118
    div-double/2addr v0, v2

    .line 119
    return-wide v0
.end method


# virtual methods
.method public final N()[B
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/flurry/android/am;->cF:[B

    return-object v0
.end method
