.class public Lcom/flurry/android/FlurryDataSenderBlockInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private au:Ljava/io/File;

.field private gh:Ljava/lang/String;

.field private gi:J

.field private gj:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object v2, p0, Lcom/flurry/android/FlurryDataSenderBlockInfo;->gh:Ljava/lang/String;

    .line 18
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/flurry/android/FlurryDataSenderBlockInfo;->gi:J

    .line 19
    const/4 v0, -0x1

    iput v0, p0, Lcom/flurry/android/FlurryDataSenderBlockInfo;->gj:I

    .line 21
    iput-object v2, p0, Lcom/flurry/android/FlurryDataSenderBlockInfo;->au:Ljava/io/File;

    .line 24
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/FlurryDataSenderBlockInfo;->gh:Ljava/lang/String;

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ".flurrydatasenderblock."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/android/FlurryDataSenderBlockInfo;->gh:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/FlurryDataSenderBlockInfo;->au:Ljava/io/File;

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object v2, p0, Lcom/flurry/android/FlurryDataSenderBlockInfo;->gh:Ljava/lang/String;

    .line 18
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/flurry/android/FlurryDataSenderBlockInfo;->gi:J

    .line 19
    const/4 v0, -0x1

    iput v0, p0, Lcom/flurry/android/FlurryDataSenderBlockInfo;->gj:I

    .line 21
    iput-object v2, p0, Lcom/flurry/android/FlurryDataSenderBlockInfo;->au:Ljava/io/File;

    .line 29
    iput-object p2, p0, Lcom/flurry/android/FlurryDataSenderBlockInfo;->gh:Ljava/lang/String;

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ".flurrydatasenderblock."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/android/FlurryDataSenderBlockInfo;->gh:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/FlurryDataSenderBlockInfo;->au:Ljava/io/File;

    .line 31
    return-void
.end method


# virtual methods
.method public deletePersistentData()Z
    .locals 2

    .prologue
    .line 155
    iget-object v0, p0, Lcom/flurry/android/FlurryDataSenderBlockInfo;->au:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 157
    iget-object v0, p0, Lcom/flurry/android/FlurryDataSenderBlockInfo;->au:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    .line 158
    if-eqz v0, :cond_0

    .line 159
    const-string v0, "FlurryDataSenderBlockInfo"

    const-string v1, "Deleted persistence file"

    invoke-static {v0, v1}, Lcom/flurry/android/cy;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/flurry/android/FlurryDataSenderBlockInfo;->gi:J

    .line 161
    const/4 v0, -0x1

    iput v0, p0, Lcom/flurry/android/FlurryDataSenderBlockInfo;->gj:I

    .line 163
    const/4 v0, 0x1

    .line 169
    :goto_0
    return v0

    .line 166
    :cond_0
    const-string v0, "FlurryDataSenderBlockInfo"

    const-string v1, "Cannot delete persistence file"

    invoke-static {v0, v1}, Lcom/flurry/android/cy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public exists()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 143
    iget-object v1, p0, Lcom/flurry/android/FlurryDataSenderBlockInfo;->gh:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 151
    :cond_0
    :goto_0
    return v0

    .line 147
    :cond_1
    iget-object v1, p0, Lcom/flurry/android/FlurryDataSenderBlockInfo;->au:Ljava/io/File;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/flurry/android/FlurryDataSenderBlockInfo;->au:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 148
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getCreationDate()J
    .locals 2

    .prologue
    .line 38
    iget-wide v0, p0, Lcom/flurry/android/FlurryDataSenderBlockInfo;->gi:J

    return-wide v0
.end method

.method public getData()[B
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 94
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 95
    const-string v1, "FlurryDataSenderBlockInfo"

    const-string v2, "getData() running on the MAIN thread!"

    invoke-static {v1, v2}, Lcom/flurry/android/cy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    :cond_0
    iget-object v1, p0, Lcom/flurry/android/FlurryDataSenderBlockInfo;->au:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 102
    const-string v1, "FlurryDataSenderBlockInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Reading FlurryDataSenderBlockInfo: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/android/FlurryDataSenderBlockInfo;->au:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/flurry/android/cy;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v2, p0, Lcom/flurry/android/FlurryDataSenderBlockInfo;->au:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 109
    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    :try_start_1
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUnsignedShort()I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v1

    .line 112
    if-nez v1, :cond_1

    .line 115
    invoke-static {v2}, Lcom/flurry/android/fl;->a(Ljava/io/Closeable;)V

    .line 139
    :goto_0
    return-object v0

    .line 117
    :cond_1
    :try_start_2
    new-array v0, v1, [B

    .line 118
    invoke-virtual {v2, v0}, Ljava/io/DataInputStream;->readFully([B)V

    .line 120
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUnsignedShort()I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 121
    invoke-static {v2}, Lcom/flurry/android/fl;->a(Ljava/io/Closeable;)V

    goto :goto_0

    .line 125
    :catch_0
    move-exception v1

    move-object v2, v0

    .line 127
    :goto_1
    :try_start_3
    const-string v3, "FlurryDataSenderBlockInfo"

    const-string v4, "Error when loading persistent file"

    invoke-static {v3, v4, v1}, Lcom/flurry/android/cy;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 131
    invoke-static {v2}, Lcom/flurry/android/fl;->a(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_2
    invoke-static {v2}, Lcom/flurry/android/fl;->a(Ljava/io/Closeable;)V

    throw v0

    .line 133
    :cond_2
    const-string v1, "FlurryDataSenderBlockInfo"

    const-string v2, "Agent cache file doesn\'t exist."

    invoke-static {v1, v2}, Lcom/flurry/android/cy;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 131
    :catchall_1
    move-exception v0

    goto :goto_2

    .line 125
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public getDataSize()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/flurry/android/FlurryDataSenderBlockInfo;->gj:I

    return v0
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/flurry/android/FlurryDataSenderBlockInfo;->gh:Ljava/lang/String;

    return-object v0
.end method

.method public setData([B)Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x0

    .line 47
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 48
    const-string v1, "FlurryDataSenderBlockInfo"

    const-string v2, "setData(byte[]) running on the MAIN thread!"

    invoke-static {v1, v2}, Lcom/flurry/android/cy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    :cond_0
    const-string v1, "FlurryDataSenderBlockInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Writing FlurryDataSenderBlockInfo: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/flurry/android/FlurryDataSenderBlockInfo;->au:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/flurry/android/cy;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    :try_start_0
    iget-object v1, p0, Lcom/flurry/android/FlurryDataSenderBlockInfo;->au:Ljava/io/File;

    invoke-static {v1}, Lcom/flurry/android/an;->a(Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 60
    if-nez v1, :cond_1

    .line 61
    invoke-static {v3}, Lcom/flurry/android/fl;->a(Ljava/io/Closeable;)V

    .line 89
    :goto_0
    return v0

    .line 64
    :cond_1
    :try_start_1
    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v2, p0, Lcom/flurry/android/FlurryDataSenderBlockInfo;->au:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 65
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 70
    :try_start_2
    array-length v1, p1

    .line 72
    invoke-virtual {v2, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 73
    invoke-virtual {v2, p1}, Ljava/io/DataOutputStream;->write([B)V

    .line 75
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 76
    const/4 v0, 0x1

    .line 77
    iput v1, p0, Lcom/flurry/android/FlurryDataSenderBlockInfo;->gj:I

    .line 78
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/flurry/android/FlurryDataSenderBlockInfo;->gi:J
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 87
    invoke-static {v2}, Lcom/flurry/android/fl;->a(Ljava/io/Closeable;)V

    goto :goto_0

    .line 81
    :catch_0
    move-exception v1

    move-object v2, v3

    .line 83
    :goto_1
    :try_start_3
    const-string v3, "FlurryDataSenderBlockInfo"

    const-string v4, ""

    invoke-static {v3, v4, v1}, Lcom/flurry/android/cy;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 87
    invoke-static {v2}, Lcom/flurry/android/fl;->a(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v2, v3

    :goto_2
    invoke-static {v2}, Lcom/flurry/android/fl;->a(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_2

    .line 81
    :catch_1
    move-exception v1

    goto :goto_1
.end method
