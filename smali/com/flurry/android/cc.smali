.class final Lcom/flurry/android/cc;
.super Lcom/flurry/android/fp;
.source "SourceFile"


# instance fields
.field private synthetic ef:Ljava/lang/String;

.field private synthetic eg:Lcom/flurry/android/InstallReceiver;


# direct methods
.method constructor <init>(Lcom/flurry/android/InstallReceiver;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 186
    iput-object p1, p0, Lcom/flurry/android/cc;->eg:Lcom/flurry/android/InstallReceiver;

    iput-object p2, p0, Lcom/flurry/android/cc;->ef:Ljava/lang/String;

    invoke-direct {p0}, Lcom/flurry/android/fp;-><init>()V

    return-void
.end method


# virtual methods
.method public final c()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 190
    .line 191
    :try_start_0
    iget-object v1, p0, Lcom/flurry/android/cc;->eg:Lcom/flurry/android/InstallReceiver;

    invoke-static {v1}, Lcom/flurry/android/InstallReceiver;->a(Lcom/flurry/android/InstallReceiver;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    .line 196
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dir is..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 198
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v3

    .line 199
    if-nez v3, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 202
    const-string v3, "InstallReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to create persistent dir: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/flurry/android/cy;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 234
    invoke-static {v2}, Lcom/flurry/android/fl;->a(Ljava/io/Closeable;)V

    .line 235
    :goto_0
    return-void

    .line 207
    :cond_0
    :try_start_1
    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/flurry/android/cc;->eg:Lcom/flurry/android/InstallReceiver;

    invoke-static {v1}, Lcom/flurry/android/InstallReceiver;->a(Lcom/flurry/android/InstallReceiver;)Ljava/io/File;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 208
    :try_start_2
    iget-object v1, p0, Lcom/flurry/android/cc;->ef:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 215
    iget-object v1, p0, Lcom/flurry/android/cc;->eg:Lcom/flurry/android/InstallReceiver;

    invoke-static {v1}, Lcom/flurry/android/InstallReceiver;->a(Lcom/flurry/android/InstallReceiver;)Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Lcom/flurry/android/InstallReceiver;->c(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    .line 217
    invoke-static {v1}, Lcom/flurry/android/InstallReceiver;->h(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 220
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/util/Map$Entry;

    move-object v2, v0

    .line 224
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "entry: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    .line 228
    :catch_0
    move-exception v1

    move-object v2, v3

    .line 230
    :goto_2
    :try_start_3
    const-string v3, "InstallReceiver"

    const-string v4, ""

    invoke-static {v3, v4, v1}, Lcom/flurry/android/cy;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 234
    invoke-static {v2}, Lcom/flurry/android/fl;->a(Ljava/io/Closeable;)V

    goto :goto_0

    :cond_1
    invoke-static {v3}, Lcom/flurry/android/fl;->a(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    :goto_3
    invoke-static {v2}, Lcom/flurry/android/fl;->a(Ljava/io/Closeable;)V

    throw v1

    :catchall_1
    move-exception v1

    move-object v2, v3

    goto :goto_3

    .line 228
    :catch_1
    move-exception v1

    goto :goto_2
.end method
