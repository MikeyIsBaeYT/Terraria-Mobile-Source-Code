.class Lcom/flurry/android/gr;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final p:Ljava/lang/String;


# instance fields
.field private iZ:Z

.field private ja:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/am;",
            ">;"
        }
    .end annotation
.end field

.field private jb:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-class v0, Lcom/flurry/android/gr;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/android/gr;->p:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/flurry/android/gr;->jb:J

    return-void
.end method

.method private static M(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 167
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-le v0, v1, :cond_1

    .line 168
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 169
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x4

    if-ge v0, v2, :cond_0

    .line 170
    const/16 v2, 0x2a

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 169
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 172
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x4

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 175
    :cond_1
    return-object p0
.end method

.method private a(Ljava/lang/String;Ljava/io/DataInputStream;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x2

    const/4 v1, 0x0

    .line 107
    .line 109
    invoke-virtual {p2}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    .line 111
    sget-object v2, Lcom/flurry/android/gr;->p:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "File version: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/flurry/android/cy;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    if-le v0, v5, :cond_0

    .line 114
    sget-object v1, Lcom/flurry/android/gr;->p:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown agent file version: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/flurry/android/cy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown agent file version: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 118
    :cond_0
    if-lt v0, v5, :cond_3

    .line 119
    invoke-virtual {p2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    .line 120
    sget-object v2, Lcom/flurry/android/gr;->p:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Loading API key: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Lcom/flurry/android/gr;->M(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/flurry/android/cy;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 123
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 125
    invoke-virtual {p2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    .line 126
    invoke-virtual {p2}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v3

    .line 127
    invoke-virtual {p2}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v4

    .line 129
    sget-object v0, Lcom/flurry/android/gr;->p:Ljava/lang/String;

    const-string v6, "Loading session reports"

    invoke-static {v0, v6}, Lcom/flurry/android/cy;->c(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 134
    :goto_0
    invoke-virtual {p2}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v6

    .line 135
    if-eqz v6, :cond_1

    .line 136
    new-array v6, v6, [B

    .line 139
    invoke-virtual {p2, v6}, Ljava/io/DataInputStream;->readFully([B)V

    .line 140
    new-instance v7, Lcom/flurry/android/am;

    invoke-direct {v7, v6}, Lcom/flurry/android/am;-><init>([B)V

    .line 141
    invoke-interface {v2, v1, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 143
    sget-object v6, Lcom/flurry/android/gr;->p:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Session report added: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/flurry/android/cy;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 146
    :cond_1
    sget-object v0, Lcom/flurry/android/gr;->p:Ljava/lang/String;

    const-string v1, "Persistent file loaded"

    invoke-static {v0, v1}, Lcom/flurry/android/cy;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    const/4 v1, 0x1

    .line 149
    iput-boolean v3, p0, Lcom/flurry/android/gr;->iZ:Z

    .line 150
    iput-wide v4, p0, Lcom/flurry/android/gr;->jb:J

    .line 151
    iput-object v2, p0, Lcom/flurry/android/gr;->ja:Ljava/util/List;

    .line 160
    :goto_1
    return v1

    .line 153
    :cond_2
    sget-object v2, Lcom/flurry/android/gr;->p:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Api keys do not match, old: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Lcom/flurry/android/gr;->M(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", new: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/flurry/android/gr;->M(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/flurry/android/cy;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 157
    :cond_3
    sget-object v2, Lcom/flurry/android/gr;->p:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Deleting old file version: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/flurry/android/cy;->g(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public final a(Ljava/io/DataOutputStream;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 50
    const v0, 0xb5fa

    :try_start_0
    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 51
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 53
    invoke-virtual {p1, p2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p1, p3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 56
    iget-boolean v0, p0, Lcom/flurry/android/gr;->iZ:Z

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 57
    iget-wide v0, p0, Lcom/flurry/android/gr;->jb:J

    invoke-virtual {p1, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 61
    iget-object v0, p0, Lcom/flurry/android/gr;->ja:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 62
    iget-object v0, p0, Lcom/flurry/android/gr;->ja:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/am;

    invoke-virtual {v0}, Lcom/flurry/android/am;->N()[B

    move-result-object v0

    .line 63
    array-length v2, v0

    .line 64
    add-int/lit8 v3, v2, 0x2

    invoke-virtual {p1}, Ljava/io/DataOutputStream;->size()I

    move-result v4

    add-int/2addr v3, v4

    const v4, 0xc350

    if-le v3, v4, :cond_1

    .line 68
    sget-object v0, Lcom/flurry/android/gr;->p:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "discarded sessions: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/flurry/android/cy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    invoke-static {p1}, Lcom/flurry/android/fl;->a(Ljava/io/Closeable;)V

    .line 80
    return-void

    .line 71
    :cond_1
    :try_start_1
    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 72
    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 75
    :catch_0
    move-exception v0

    .line 76
    :try_start_2
    sget-object v1, Lcom/flurry/android/gr;->p:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/flurry/android/cy;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 77
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 79
    :catchall_0
    move-exception v0

    invoke-static {p1}, Lcom/flurry/android/fl;->a(Ljava/io/Closeable;)V

    throw v0
.end method

.method public final a(Ljava/io/DataInputStream;Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 85
    const/4 v0, 0x0

    .line 87
    :try_start_0
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v1

    .line 88
    sget-object v2, Lcom/flurry/android/gr;->p:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Magic: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/flurry/android/cy;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const v2, 0xb5fa

    if-ne v1, v2, :cond_0

    .line 91
    invoke-direct {p0, p2, p1}, Lcom/flurry/android/gr;->a(Ljava/lang/String;Ljava/io/DataInputStream;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 100
    :goto_0
    invoke-static {p1}, Lcom/flurry/android/fl;->a(Ljava/io/Closeable;)V

    .line 103
    return v0

    .line 93
    :cond_0
    :try_start_1
    sget-object v1, Lcom/flurry/android/gr;->p:Ljava/lang/String;

    const-string v2, "Unexpected file type"

    invoke-static {v1, v2}, Lcom/flurry/android/cy;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 96
    :catch_0
    move-exception v0

    .line 97
    :try_start_2
    sget-object v1, Lcom/flurry/android/gr;->p:Ljava/lang/String;

    const-string v2, "Error when loading persistent file"

    invoke-static {v1, v2, v0}, Lcom/flurry/android/cy;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 98
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 100
    :catchall_0
    move-exception v0

    invoke-static {p1}, Lcom/flurry/android/fl;->a(Ljava/io/Closeable;)V

    throw v0
.end method

.method public final b(Z)V
    .locals 0

    .prologue
    .line 24
    iput-boolean p1, p0, Lcom/flurry/android/gr;->iZ:Z

    .line 25
    return-void
.end method

.method public final bP()Z
    .locals 1

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/flurry/android/gr;->iZ:Z

    return v0
.end method

.method public final bQ()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/am;",
            ">;"
        }
    .end annotation

    .prologue
    .line 36
    iget-object v0, p0, Lcom/flurry/android/gr;->ja:Ljava/util/List;

    return-object v0
.end method

.method public final bR()J
    .locals 2

    .prologue
    .line 44
    iget-wide v0, p0, Lcom/flurry/android/gr;->jb:J

    return-wide v0
.end method

.method public final i(J)V
    .locals 1

    .prologue
    .line 40
    iput-wide p1, p0, Lcom/flurry/android/gr;->jb:J

    .line 41
    return-void
.end method

.method public final k(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/am;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 32
    iput-object p1, p0, Lcom/flurry/android/gr;->ja:Ljava/util/List;

    .line 33
    return-void
.end method
