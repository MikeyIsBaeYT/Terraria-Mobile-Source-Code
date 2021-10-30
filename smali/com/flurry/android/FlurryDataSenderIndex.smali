.class public Lcom/flurry/android/FlurryDataSenderIndex;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static eB:Ljava/lang/Integer;


# instance fields
.field private eC:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private eD:Ljava/util/concurrent/ExecutorService;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const/16 v0, 0x32

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/flurry/android/FlurryDataSenderIndex;->eB:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/android/FlurryDataSenderIndex;->mContext:Landroid/content/Context;

    .line 36
    iput-object p1, p0, Lcom/flurry/android/FlurryDataSenderIndex;->mContext:Landroid/content/Context;

    .line 37
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/FlurryDataSenderIndex;->eD:Ljava/util/concurrent/ExecutorService;

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/flurry/android/FlurryDataSenderIndex;->eC:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/flurry/android/FlurryDataSenderIndex;->mContext:Landroid/content/Context;

    const-string v1, "flurry_data_sender_preferences"

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "flurry_data_sender_preferences"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p2}, Lcom/flurry/android/FlurryDataSenderIndex;->discardOutdatedBlocksForDataKey(Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/flurry/android/FlurryDataSenderIndex;->mContext:Landroid/content/Context;

    const-string v1, "flurry_data_sender_preferences"

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "flurry_data_sender_preferences"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :goto_0
    iget-object v0, p0, Lcom/flurry/android/FlurryDataSenderIndex;->eC:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iget-object v1, p0, Lcom/flurry/android/FlurryDataSenderIndex;->eC:Ljava/util/HashMap;

    invoke-virtual {v1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    :cond_0
    return-void

    .line 38
    :cond_1
    invoke-direct {p0, p2}, Lcom/flurry/android/FlurryDataSenderIndex;->o(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/android/FlurryDataSenderIndex;->eC:Ljava/util/HashMap;

    invoke-virtual {v1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 104
    iget-object v0, p0, Lcom/flurry/android/FlurryDataSenderIndex;->eD:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/flurry/android/q;

    invoke-direct {v1, p0, p1, p2}, Lcom/flurry/android/q;-><init>(Lcom/flurry/android/FlurryDataSenderIndex;Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 110
    return-void
.end method

.method static synthetic a(Lcom/flurry/android/FlurryDataSenderIndex;Ljava/lang/String;Ljava/util/List;)Z
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lcom/flurry/android/FlurryDataSenderIndex;->b(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method private declared-synchronized b(Ljava/lang/String;Ljava/util/List;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 258
    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v0, v2, :cond_0

    .line 259
    const-string v0, "FlurryDataSenderIndex"

    const-string v2, "saveToFile(byte[], ID) running on the MAIN thread!"

    invoke-static {v0, v2}, Lcom/flurry/android/cy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/flurry/android/FlurryDataSenderIndex;->mContext:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ".FlurrySenderIndex.info."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v0

    .line 272
    :try_start_1
    invoke-static {v0}, Lcom/flurry/android/an;->a(Ljava/io/File;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    .line 273
    if-nez v2, :cond_1

    .line 303
    const/4 v0, 0x0

    :try_start_2
    invoke-static {v0}, Lcom/flurry/android/fl;->a(Ljava/io/Closeable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 305
    :goto_0
    monitor-exit p0

    return v1

    .line 277
    :cond_1
    :try_start_3
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 278
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 281
    :try_start_4
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    move v3, v1

    .line 283
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_2

    .line 285
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 286
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 287
    array-length v4, v0

    .line 288
    const-string v5, "FlurryDataSenderIndex"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "write iter "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " dataLength = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/flurry/android/cy;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 290
    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 283
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    .line 293
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeShort(I)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 295
    const/4 v0, 0x1

    .line 303
    :try_start_5
    invoke-static {v2}, Lcom/flurry/android/fl;->a(Ljava/io/Closeable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :goto_2
    move v1, v0

    .line 305
    goto :goto_0

    .line 297
    :catch_0
    move-exception v0

    move-object v2, v3

    .line 299
    :goto_3
    :try_start_6
    const-string v3, "FlurryDataSenderIndex"

    const-string v4, ""

    invoke-static {v3, v4, v0}, Lcom/flurry/android/cy;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 303
    :try_start_7
    invoke-static {v2}, Lcom/flurry/android/fl;->a(Ljava/io/Closeable;)V

    move v0, v1

    .line 304
    goto :goto_2

    .line 303
    :catchall_0
    move-exception v0

    move-object v2, v3

    :goto_4
    invoke-static {v2}, Lcom/flurry/android/fl;->a(Ljava/io/Closeable;)V

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 258
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 303
    :catchall_2
    move-exception v0

    goto :goto_4

    .line 297
    :catch_1
    move-exception v0

    goto :goto_3
.end method

.method private n(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 97
    new-instance v0, Lcom/flurry/android/FlurryDataSenderBlockInfo;

    iget-object v1, p0, Lcom/flurry/android/FlurryDataSenderIndex;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/flurry/android/FlurryDataSenderBlockInfo;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 98
    invoke-virtual {v0}, Lcom/flurry/android/FlurryDataSenderBlockInfo;->deletePersistentData()Z

    move-result v0

    .line 100
    return v0
.end method

.method private declared-synchronized o(Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 198
    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v0, v2, :cond_0

    .line 199
    const-string v0, "FlurryDataSenderIndex"

    const-string v2, "readFromFile(byte[], ID) running on the MAIN thread!"

    invoke-static {v0, v2}, Lcom/flurry/android/cy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/flurry/android/FlurryDataSenderIndex;->mContext:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ".FlurrySenderIndex.info."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 204
    invoke-virtual {v0}, Ljava/io/File;->exists()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_3

    .line 212
    :try_start_1
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 213
    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 215
    :try_start_2
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUnsignedShort()I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result v3

    .line 216
    if-nez v3, :cond_1

    .line 217
    :try_start_3
    invoke-static {v2}, Lcom/flurry/android/fl;->a(Ljava/io/Closeable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 253
    :goto_0
    monitor-exit p0

    return-object v1

    .line 220
    :cond_1
    :try_start_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 223
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_2

    .line 225
    :try_start_5
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v4

    .line 226
    const-string v5, "FlurryDataSenderIndex"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "read iter "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " dataLength = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/flurry/android/cy;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    new-array v4, v4, [B

    .line 228
    invoke-virtual {v2, v4}, Ljava/io/DataInputStream;->readFully([B)V

    .line 230
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v4}, Ljava/lang/String;-><init>([B)V

    .line 231
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 223
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 234
    :cond_2
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUnsignedShort()I
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 235
    :try_start_6
    invoke-static {v2}, Lcom/flurry/android/fl;->a(Ljava/io/Closeable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_2
    move-object v1, v0

    .line 253
    goto :goto_0

    .line 239
    :catch_0
    move-exception v0

    move-object v2, v1

    move-object v8, v0

    move-object v0, v1

    move-object v1, v8

    .line 241
    :goto_3
    :try_start_7
    const-string v3, "FlurryDataSenderIndex"

    const-string v4, "Error when loading persistent file"

    invoke-static {v3, v4, v1}, Lcom/flurry/android/cy;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 245
    :try_start_8
    invoke-static {v2}, Lcom/flurry/android/fl;->a(Ljava/io/Closeable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_2

    .line 198
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 245
    :catchall_1
    move-exception v0

    move-object v2, v1

    :goto_4
    :try_start_9
    invoke-static {v2}, Lcom/flurry/android/fl;->a(Ljava/io/Closeable;)V

    throw v0

    .line 247
    :cond_3
    const-string v0, "FlurryDataSenderIndex"

    const-string v2, "Agent cache file doesn\'t exist."

    invoke-static {v0, v2}, Lcom/flurry/android/cy;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-object v0, v1

    goto :goto_2

    .line 245
    :catchall_2
    move-exception v0

    goto :goto_4

    .line 239
    :catch_1
    move-exception v0

    move-object v8, v0

    move-object v0, v1

    move-object v1, v8

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_3
.end method


# virtual methods
.method public addBlockInfo(Lcom/flurry/android/FlurryDataSenderBlockInfo;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 67
    invoke-virtual {p1}, Lcom/flurry/android/FlurryDataSenderBlockInfo;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    .line 69
    iget-object v0, p0, Lcom/flurry/android/FlurryDataSenderIndex;->eC:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 71
    if-nez v0, :cond_1

    .line 72
    const-string v0, "FlurryDataSenderIndex"

    const-string v1, "New Data Key"

    invoke-static {v0, v1}, Lcom/flurry/android/cy;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    move-object v1, v0

    .line 76
    :goto_0
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    sget-object v2, Lcom/flurry/android/FlurryDataSenderIndex;->eB:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-le v0, v2, :cond_0

    .line 82
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 83
    invoke-direct {p0, v0}, Lcom/flurry/android/FlurryDataSenderIndex;->n(Ljava/lang/String;)Z

    .line 86
    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/flurry/android/FlurryDataSenderIndex;->eC:Ljava/util/HashMap;

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    invoke-direct {p0, p2, v1}, Lcom/flurry/android/FlurryDataSenderIndex;->a(Ljava/lang/String;Ljava/util/List;)V

    .line 94
    return-void

    :cond_1
    move-object v1, v0

    goto :goto_0
.end method

.method public discardOutdatedBlocksForDataKey(Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 143
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 144
    const-string v0, "FlurryDataSenderIndex"

    const-string v1, "discardOutdatedBlocksForDataKey(ID) running on the MAIN thread!"

    invoke-static {v0, v1}, Lcom/flurry/android/cy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/flurry/android/FlurryDataSenderIndex;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ".FlurrySenderIndex.info."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    .line 149
    iget-object v0, p0, Lcom/flurry/android/FlurryDataSenderIndex;->eC:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 150
    if-nez v0, :cond_2

    .line 177
    :cond_1
    :goto_0
    return v3

    .line 155
    :cond_2
    invoke-virtual {p0, p1}, Lcom/flurry/android/FlurryDataSenderIndex;->getNotSentBlocksForDataKey(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    move v2, v3

    .line 156
    :goto_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_3

    .line 157
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 159
    invoke-direct {p0, v1}, Lcom/flurry/android/FlurryDataSenderIndex;->n(Ljava/lang/String;)Z

    .line 156
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    .line 162
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 163
    iget-object v1, p0, Lcom/flurry/android/FlurryDataSenderIndex;->eC:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 168
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v0

    .line 169
    if-eqz v0, :cond_4

    .line 170
    const-string v0, "FlurryDataSenderIndex"

    const-string v1, "Deleted persistence file"

    invoke-static {v0, v1}, Lcom/flurry/android/cy;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    const/4 v3, 0x1

    goto :goto_0

    .line 174
    :cond_4
    const-string v0, "FlurryDataSenderIndex"

    const-string v1, "Cannot delete persistence file"

    invoke-static {v0, v1}, Lcom/flurry/android/cy;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getNotSentBlocksForDataKey(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 136
    iget-object v0, p0, Lcom/flurry/android/FlurryDataSenderIndex;->eC:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 138
    return-object v0
.end method

.method public removeBlockInfoWithIdentifier(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 114
    iget-object v0, p0, Lcom/flurry/android/FlurryDataSenderIndex;->eC:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 116
    if-nez v0, :cond_0

    move v0, v1

    .line 131
    :goto_0
    return v0

    .line 120
    :cond_0
    invoke-direct {p0, p1}, Lcom/flurry/android/FlurryDataSenderIndex;->n(Ljava/lang/String;)Z

    .line 122
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v2

    .line 124
    iget-object v3, p0, Lcom/flurry/android/FlurryDataSenderIndex;->eC:Ljava/util/HashMap;

    invoke-virtual {v3, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    if-nez v2, :cond_1

    move v0, v1

    .line 127
    goto :goto_0

    .line 130
    :cond_1
    invoke-direct {p0, p2, v0}, Lcom/flurry/android/FlurryDataSenderIndex;->a(Ljava/lang/String;Ljava/util/List;)V

    .line 131
    const/4 v0, 0x1

    goto :goto_0
.end method
