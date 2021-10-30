.class Lcom/flurry/android/cn;
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
    .line 17
    const-class v0, Lcom/flurry/android/cn;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/android/cn;->p:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/util/List;Ljava/io/File;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JJ",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/am;",
            ">;",
            "Ljava/io/File;",
            "Ljava/util/Map",
            "<",
            "Lcom/flurry/android/ReportedIdType;",
            "Ljava/nio/ByteBuffer;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/flurry/android/cn;->cF:[B

    .line 34
    const/4 v4, 0x0

    .line 35
    const/4 v3, 0x0

    .line 37
    :try_start_0
    new-instance v6, Lcom/flurry/android/CrcMessageDigest;

    invoke-direct {v6}, Lcom/flurry/android/CrcMessageDigest;-><init>()V

    .line 38
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 39
    new-instance v8, Ljava/security/DigestOutputStream;

    invoke-direct {v8, v7, v6}, Ljava/security/DigestOutputStream;-><init>(Ljava/io/OutputStream;Ljava/security/MessageDigest;)V

    .line 40
    new-instance v5, Ljava/io/DataOutputStream;

    invoke-direct {v5, v8}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 42
    const/16 v2, 0x1a

    :try_start_1
    invoke-virtual {v5, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 45
    const/4 v2, 0x0

    invoke-virtual {v5, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 48
    const-wide/16 v2, 0x0

    invoke-virtual {v5, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 49
    const/4 v2, 0x0

    invoke-virtual {v5, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 51
    const/4 v2, 0x3

    invoke-virtual {v5, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 52
    invoke-static {}, Lcom/flurry/android/FlurryAgent;->getAgentVersion()I

    move-result v2

    invoke-virtual {v5, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 53
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v5, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 54
    invoke-virtual {v5, p1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 55
    invoke-virtual {v5, p2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 58
    invoke-interface/range {p10 .. p10}, Ljava/util/Map;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 59
    invoke-virtual {v5, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 60
    const/4 v2, 0x0

    invoke-virtual {v5, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 61
    invoke-virtual {v5, p3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 63
    invoke-interface/range {p10 .. p10}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 64
    invoke-interface/range {p10 .. p10}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 65
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/flurry/android/ReportedIdType;

    iget v3, v3, Lcom/flurry/android/ReportedIdType;->eS:I

    invoke-virtual {v5, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 66
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    .line 67
    array-length v3, v2

    invoke-virtual {v5, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 68
    invoke-virtual {v5, v2}, Ljava/io/DataOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 171
    :catch_0
    move-exception v2

    move-object v3, v5

    .line 172
    :goto_1
    :try_start_2
    sget-object v5, Lcom/flurry/android/cn;->p:Ljava/lang/String;

    const-string v6, "Error when generating report"

    invoke-static {v5, v6, v2}, Lcom/flurry/android/cy;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 174
    invoke-static {v3}, Lcom/flurry/android/fl;->a(Ljava/io/Closeable;)V

    move-object v2, v4

    .line 177
    :goto_2
    iput-object v2, p0, Lcom/flurry/android/cn;->cF:[B

    .line 178
    return-void

    .line 72
    :cond_0
    const/4 v2, 0x0

    :try_start_3
    invoke-virtual {v5, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 73
    move-wide/from16 v0, p4

    invoke-virtual {v5, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 74
    move-wide/from16 v0, p6

    invoke-virtual {v5, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 77
    const/4 v2, 0x6

    invoke-virtual {v5, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 78
    const-string v2, "device.model"

    invoke-virtual {v5, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 79
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 80
    const-string v2, "build.brand"

    invoke-virtual {v5, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 81
    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 82
    const-string v2, "build.id"

    invoke-virtual {v5, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 83
    sget-object v2, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 84
    const-string v2, "version.release"

    invoke-virtual {v5, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 85
    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 86
    const-string v2, "build.device"

    invoke-virtual {v5, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 87
    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 88
    const-string v2, "build.product"

    invoke-virtual {v5, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 89
    sget-object v2, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 96
    if-eqz p11, :cond_3

    invoke-interface/range {p11 .. p11}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    .line 98
    :goto_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "refMapSize is:  "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    if-nez v2, :cond_1

    .line 101
    new-instance v3, Lcom/flurry/android/ar;

    move-object/from16 v0, p9

    invoke-direct {v3, v0}, Lcom/flurry/android/ar;-><init>(Ljava/io/File;)V

    .line 102
    invoke-virtual {v3}, Lcom/flurry/android/ar;->W()Ljava/util/Map;

    move-result-object p11

    .line 103
    :cond_1
    invoke-virtual {v5, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 108
    if-eqz p11, :cond_4

    .line 109
    invoke-interface/range {p11 .. p11}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 112
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Referrer Entry:  "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v10, "="

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 115
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "referrer key is :"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v5, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 118
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 119
    invoke-virtual {v5, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 120
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "referrer value is :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    .line 174
    :catchall_0
    move-exception v2

    :goto_5
    invoke-static {v5}, Lcom/flurry/android/fl;->a(Ljava/io/Closeable;)V

    throw v2

    .line 96
    :cond_3
    const/4 v2, 0x0

    goto/16 :goto_3

    .line 125
    :cond_4
    :try_start_4
    invoke-static {}, Lcom/flurry/android/es;->aW()Lcom/flurry/android/es;

    move-result-object v2

    .line 126
    invoke-static {}, Lcom/flurry/android/FlurryAgent;->q()Z

    move-result v3

    if-eqz v3, :cond_6

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lcom/flurry/android/es;->getPushToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_6

    .line 128
    const/4 v3, 0x1

    invoke-virtual {v5, v3}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 129
    invoke-virtual {v2}, Lcom/flurry/android/es;->getPushToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 135
    :goto_6
    if-eqz p12, :cond_7

    invoke-interface/range {p12 .. p12}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    .line 137
    :goto_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "optionsMapSize is:  "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 139
    invoke-virtual {v5, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 141
    if-eqz p12, :cond_8

    .line 142
    invoke-interface/range {p12 .. p12}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 145
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Launch Options Key:  "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 146
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 148
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v5, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 150
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 151
    invoke-virtual {v5, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 152
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Launch Options value is :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_8

    .line 131
    :cond_6
    const/4 v2, 0x0

    invoke-virtual {v5, v2}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    goto/16 :goto_6

    .line 135
    :cond_7
    const/4 v2, 0x0

    goto/16 :goto_7

    .line 157
    :cond_8
    invoke-interface/range {p8 .. p8}, Ljava/util/List;->size()I

    move-result v9

    .line 159
    invoke-virtual {v5, v9}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 160
    const/4 v2, 0x0

    move v3, v2

    :goto_9
    if-ge v3, v9, :cond_9

    .line 161
    move-object/from16 v0, p8

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/flurry/android/am;

    .line 162
    invoke-virtual {v2}, Lcom/flurry/android/am;->N()[B

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/io/DataOutputStream;->write([B)V

    .line 160
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_9

    .line 166
    :cond_9
    const/4 v2, 0x0

    invoke-virtual {v8, v2}, Ljava/security/DigestOutputStream;->on(Z)V

    .line 167
    invoke-virtual {v6}, Lcom/flurry/android/CrcMessageDigest;->getDigest()[B

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/io/DataOutputStream;->write([B)V

    .line 169
    invoke-virtual {v5}, Ljava/io/DataOutputStream;->close()V

    .line 170
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v2

    .line 174
    invoke-static {v5}, Lcom/flurry/android/fl;->a(Ljava/io/Closeable;)V

    goto/16 :goto_2

    :catchall_1
    move-exception v2

    move-object v5, v3

    goto/16 :goto_5

    :catchall_2
    move-exception v2

    move-object v5, v3

    goto/16 :goto_5

    .line 171
    :catch_1
    move-exception v2

    goto/16 :goto_1
.end method


# virtual methods
.method public final N()[B
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/flurry/android/cn;->cF:[B

    return-object v0
.end method
