.class public Lcom/chartboost/sdk/impl/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/chartboost/sdk/impl/f;


# static fields
.field protected static final a:Z

.field private static d:I

.field private static e:I


# instance fields
.field protected final b:Lcom/chartboost/sdk/impl/z;

.field protected final c:Lcom/chartboost/sdk/impl/v;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    sget-boolean v0, Lcom/chartboost/sdk/impl/t;->b:Z

    sput-boolean v0, Lcom/chartboost/sdk/impl/u;->a:Z

    .line 56
    const/16 v0, 0xbb8

    sput v0, Lcom/chartboost/sdk/impl/u;->d:I

    .line 58
    const/16 v0, 0x1000

    sput v0, Lcom/chartboost/sdk/impl/u;->e:I

    return-void
.end method

.method public constructor <init>(Lcom/chartboost/sdk/impl/z;)V
    .locals 2

    .prologue
    .line 70
    new-instance v0, Lcom/chartboost/sdk/impl/v;

    sget v1, Lcom/chartboost/sdk/impl/u;->e:I

    invoke-direct {v0, v1}, Lcom/chartboost/sdk/impl/v;-><init>(I)V

    invoke-direct {p0, p1, v0}, Lcom/chartboost/sdk/impl/u;-><init>(Lcom/chartboost/sdk/impl/z;Lcom/chartboost/sdk/impl/v;)V

    .line 71
    return-void
.end method

.method public constructor <init>(Lcom/chartboost/sdk/impl/z;Lcom/chartboost/sdk/impl/v;)V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lcom/chartboost/sdk/impl/u;->b:Lcom/chartboost/sdk/impl/z;

    .line 79
    iput-object p2, p0, Lcom/chartboost/sdk/impl/u;->c:Lcom/chartboost/sdk/impl/v;

    .line 80
    return-void
.end method

.method private static a([Lorg/apache/http/Header;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/apache/http/Header;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 243
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 244
    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-lt v0, v2, :cond_0

    .line 247
    return-object v1

    .line 245
    :cond_0
    aget-object v2, p0, v0

    invoke-interface {v2}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v2

    aget-object v3, p0, v0

    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private a(JLcom/chartboost/sdk/impl/l;[BLorg/apache/http/StatusLine;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/chartboost/sdk/impl/l",
            "<*>;[B",
            "Lorg/apache/http/StatusLine;",
            ")V"
        }
    .end annotation

    .prologue
    .line 160
    sget-boolean v0, Lcom/chartboost/sdk/impl/u;->a:Z

    if-nez v0, :cond_0

    sget v0, Lcom/chartboost/sdk/impl/u;->d:I

    int-to-long v0, v0

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    .line 161
    :cond_0
    const-string v1, "HTTP response for request=<%s> [lifetime=%d], [size=%s], [rc=%d], [retryCount=%s]"

    const/4 v0, 0x5

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 162
    aput-object p3, v2, v0

    const/4 v0, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v3, 0x2

    .line 163
    if-eqz p4, :cond_2

    array-length v0, p4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    aput-object v0, v2, v3

    const/4 v0, 0x3

    .line 164
    invoke-interface {p5}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x4

    invoke-virtual {p3}, Lcom/chartboost/sdk/impl/l;->u()Lcom/chartboost/sdk/impl/p;

    move-result-object v3

    invoke-interface {v3}, Lcom/chartboost/sdk/impl/p;->b()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    .line 161
    invoke-static {v1, v2}, Lcom/chartboost/sdk/impl/t;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 166
    :cond_1
    return-void

    .line 163
    :cond_2
    const-string v0, "null"

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Lcom/chartboost/sdk/impl/l;Lcom/chartboost/sdk/impl/s;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/chartboost/sdk/impl/l",
            "<*>;",
            "Lcom/chartboost/sdk/impl/s;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/chartboost/sdk/impl/s;
        }
    .end annotation

    .prologue
    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 175
    invoke-virtual {p1}, Lcom/chartboost/sdk/impl/l;->u()Lcom/chartboost/sdk/impl/p;

    move-result-object v0

    .line 176
    invoke-virtual {p1}, Lcom/chartboost/sdk/impl/l;->t()I

    move-result v1

    .line 179
    :try_start_0
    invoke-interface {v0, p2}, Lcom/chartboost/sdk/impl/p;->a(Lcom/chartboost/sdk/impl/s;)V
    :try_end_0
    .catch Lcom/chartboost/sdk/impl/s; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    const-string v0, "%s-retry [timeout=%s]"

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p0, v2, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v5

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/chartboost/sdk/impl/l;->a(Ljava/lang/String;)V

    .line 186
    return-void

    .line 180
    :catch_0
    move-exception v0

    .line 182
    const-string v2, "%s-timeout-giveup [timeout=%s]"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 181
    invoke-virtual {p1, v1}, Lcom/chartboost/sdk/impl/l;->a(Ljava/lang/String;)V

    .line 183
    throw v0
.end method

.method private a(Ljava/util/Map;Lcom/chartboost/sdk/impl/b$a;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/chartboost/sdk/impl/b$a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 190
    if-nez p2, :cond_1

    .line 202
    :cond_0
    :goto_0
    return-void

    .line 194
    :cond_1
    iget-object v0, p2, Lcom/chartboost/sdk/impl/b$a;->b:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 195
    const-string v0, "If-None-Match"

    iget-object v1, p2, Lcom/chartboost/sdk/impl/b$a;->b:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    :cond_2
    iget-wide v0, p2, Lcom/chartboost/sdk/impl/b$a;->c:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 199
    new-instance v0, Ljava/util/Date;

    iget-wide v2, p2, Lcom/chartboost/sdk/impl/b$a;->c:J

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 200
    const-string v1, "If-Modified-Since"

    invoke-static {v0}, Lorg/apache/http/impl/cookie/DateUtils;->formatDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private a(Lorg/apache/http/HttpEntity;)[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/chartboost/sdk/impl/q;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 212
    new-instance v2, Lcom/chartboost/sdk/impl/ac;

    iget-object v0, p0, Lcom/chartboost/sdk/impl/u;->c:Lcom/chartboost/sdk/impl/v;

    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v4

    long-to-int v1, v4

    invoke-direct {v2, v0, v1}, Lcom/chartboost/sdk/impl/ac;-><init>(Lcom/chartboost/sdk/impl/v;I)V

    .line 213
    const/4 v1, 0x0

    .line 215
    :try_start_0
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    .line 216
    if-nez v0, :cond_0

    .line 217
    new-instance v0, Lcom/chartboost/sdk/impl/q;

    invoke-direct {v0}, Lcom/chartboost/sdk/impl/q;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 225
    :catchall_0
    move-exception v0

    .line 228
    :try_start_1
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 234
    :goto_0
    iget-object v3, p0, Lcom/chartboost/sdk/impl/u;->c:Lcom/chartboost/sdk/impl/v;

    invoke-virtual {v3, v1}, Lcom/chartboost/sdk/impl/v;->a([B)V

    .line 235
    invoke-virtual {v2}, Lcom/chartboost/sdk/impl/ac;->close()V

    .line 236
    throw v0

    .line 219
    :cond_0
    :try_start_2
    iget-object v3, p0, Lcom/chartboost/sdk/impl/u;->c:Lcom/chartboost/sdk/impl/v;

    const/16 v4, 0x400

    invoke-virtual {v3, v4}, Lcom/chartboost/sdk/impl/v;->a(I)[B

    move-result-object v1

    .line 221
    :goto_1
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    .line 224
    invoke-virtual {v2}, Lcom/chartboost/sdk/impl/ac;->toByteArray()[B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    .line 228
    :try_start_3
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 234
    :goto_2
    iget-object v3, p0, Lcom/chartboost/sdk/impl/u;->c:Lcom/chartboost/sdk/impl/v;

    invoke-virtual {v3, v1}, Lcom/chartboost/sdk/impl/v;->a([B)V

    .line 235
    invoke-virtual {v2}, Lcom/chartboost/sdk/impl/ac;->close()V

    .line 224
    return-object v0

    .line 222
    :cond_1
    const/4 v4, 0x0

    :try_start_4
    invoke-virtual {v2, v1, v4, v3}, Lcom/chartboost/sdk/impl/ac;->write([BII)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 229
    :catch_0
    move-exception v3

    .line 232
    const-string v3, "Error occured when calling consumingContent"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/chartboost/sdk/impl/t;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 229
    :catch_1
    move-exception v3

    .line 232
    const-string v3, "Error occured when calling consumingContent"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/chartboost/sdk/impl/t;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/chartboost/sdk/impl/l;)Lcom/chartboost/sdk/impl/i;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chartboost/sdk/impl/l",
            "<*>;)",
            "Lcom/chartboost/sdk/impl/i;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/chartboost/sdk/impl/s;
        }
    .end annotation

    .prologue
    .line 84
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    .line 86
    :goto_0
    const/4 v2, 0x0

    .line 87
    const/4 v5, 0x0

    .line 88
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 91
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 92
    invoke-virtual {p1}, Lcom/chartboost/sdk/impl/l;->f()Lcom/chartboost/sdk/impl/b$a;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lcom/chartboost/sdk/impl/u;->a(Ljava/util/Map;Lcom/chartboost/sdk/impl/b$a;)V

    .line 93
    iget-object v3, p0, Lcom/chartboost/sdk/impl/u;->b:Lcom/chartboost/sdk/impl/z;

    invoke-interface {v3, p1, v0}, Lcom/chartboost/sdk/impl/z;->a(Lcom/chartboost/sdk/impl/l;Ljava/util/Map;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v8

    .line 94
    :try_start_1
    invoke-interface {v8}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v6

    .line 95
    invoke-interface {v6}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v9

    .line 97
    invoke-interface {v8}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v0

    invoke-static {v0}, Lcom/chartboost/sdk/impl/u;->a([Lorg/apache/http/Header;)Ljava/util/Map;
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v7

    .line 99
    const/16 v0, 0x130

    if-ne v9, v0, :cond_1

    .line 100
    :try_start_2
    new-instance v0, Lcom/chartboost/sdk/impl/i;

    const/16 v2, 0x130

    .line 101
    invoke-virtual {p1}, Lcom/chartboost/sdk/impl/l;->f()Lcom/chartboost/sdk/impl/b$a;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 102
    :goto_1
    const/4 v3, 0x1

    .line 100
    invoke-direct {v0, v2, v1, v7, v3}, Lcom/chartboost/sdk/impl/i;-><init>(I[BLjava/util/Map;Z)V

    .line 121
    :goto_2
    return-object v0

    .line 101
    :cond_0
    invoke-virtual {p1}, Lcom/chartboost/sdk/impl/l;->f()Lcom/chartboost/sdk/impl/b$a;

    move-result-object v1

    iget-object v1, v1, Lcom/chartboost/sdk/impl/b$a;->a:[B

    goto :goto_1

    .line 106
    :cond_1
    invoke-interface {v8}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 107
    invoke-interface {v8}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/chartboost/sdk/impl/u;->a(Lorg/apache/http/HttpEntity;)[B

    move-result-object v5

    .line 115
    :goto_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long v2, v0, v10

    move-object v1, p0

    move-object v4, p1

    .line 116
    invoke-direct/range {v1 .. v6}, Lcom/chartboost/sdk/impl/u;->a(JLcom/chartboost/sdk/impl/l;[BLorg/apache/http/StatusLine;)V

    .line 118
    const/16 v0, 0xc8

    if-lt v9, v0, :cond_2

    const/16 v0, 0x12b

    if-le v9, v0, :cond_4

    .line 119
    :cond_2
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    .line 122
    :catch_0
    move-exception v0

    .line 123
    const-string v0, "socket"

    new-instance v1, Lcom/chartboost/sdk/impl/r;

    invoke-direct {v1}, Lcom/chartboost/sdk/impl/r;-><init>()V

    invoke-static {v0, p1, v1}, Lcom/chartboost/sdk/impl/u;->a(Ljava/lang/String;Lcom/chartboost/sdk/impl/l;Lcom/chartboost/sdk/impl/s;)V

    goto :goto_0

    .line 111
    :cond_3
    const/4 v0, 0x0

    :try_start_3
    new-array v5, v0, [B

    goto :goto_3

    .line 121
    :cond_4
    new-instance v0, Lcom/chartboost/sdk/impl/i;

    const/4 v1, 0x0

    invoke-direct {v0, v9, v5, v7, v1}, Lcom/chartboost/sdk/impl/i;-><init>(I[BLjava/util/Map;Z)V
    :try_end_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    goto :goto_2

    .line 124
    :catch_1
    move-exception v0

    .line 125
    const-string v0, "connection"

    new-instance v1, Lcom/chartboost/sdk/impl/r;

    invoke-direct {v1}, Lcom/chartboost/sdk/impl/r;-><init>()V

    invoke-static {v0, p1, v1}, Lcom/chartboost/sdk/impl/u;->a(Ljava/lang/String;Lcom/chartboost/sdk/impl/l;Lcom/chartboost/sdk/impl/s;)V

    goto/16 :goto_0

    .line 126
    :catch_2
    move-exception v0

    .line 127
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Bad URL "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/chartboost/sdk/impl/l;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 128
    :catch_3
    move-exception v0

    .line 131
    :goto_4
    if-eqz v2, :cond_6

    .line 132
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    .line 136
    const-string v2, "Unexpected response code %d for %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v4

    const/4 v4, 0x1

    invoke-virtual {p1}, Lcom/chartboost/sdk/impl/l;->d()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v4

    invoke-static {v2, v3}, Lcom/chartboost/sdk/impl/t;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 137
    new-instance v2, Lcom/chartboost/sdk/impl/i;

    .line 138
    const/4 v3, 0x0

    .line 137
    invoke-direct {v2, v0, v5, v1, v3}, Lcom/chartboost/sdk/impl/i;-><init>(I[BLjava/util/Map;Z)V

    .line 139
    if-eqz v5, :cond_8

    .line 140
    const/16 v1, 0x191

    if-eq v0, v1, :cond_5

    .line 141
    const/16 v1, 0x193

    if-ne v0, v1, :cond_7

    .line 142
    :cond_5
    const-string v0, "auth"

    .line 143
    new-instance v1, Lcom/chartboost/sdk/impl/a;

    invoke-direct {v1, v2}, Lcom/chartboost/sdk/impl/a;-><init>(Lcom/chartboost/sdk/impl/i;)V

    .line 142
    invoke-static {v0, p1, v1}, Lcom/chartboost/sdk/impl/u;->a(Ljava/lang/String;Lcom/chartboost/sdk/impl/l;Lcom/chartboost/sdk/impl/s;)V

    goto/16 :goto_0

    .line 134
    :cond_6
    new-instance v1, Lcom/chartboost/sdk/impl/j;

    invoke-direct {v1, v0}, Lcom/chartboost/sdk/impl/j;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 146
    :cond_7
    new-instance v0, Lcom/chartboost/sdk/impl/q;

    invoke-direct {v0, v2}, Lcom/chartboost/sdk/impl/q;-><init>(Lcom/chartboost/sdk/impl/i;)V

    throw v0

    .line 149
    :cond_8
    new-instance v0, Lcom/chartboost/sdk/impl/h;

    invoke-direct {v0, v2}, Lcom/chartboost/sdk/impl/h;-><init>(Lcom/chartboost/sdk/impl/i;)V

    throw v0

    .line 128
    :catch_4
    move-exception v0

    move-object v2, v8

    goto :goto_4

    :catch_5
    move-exception v0

    move-object v1, v7

    move-object v2, v8

    goto :goto_4
.end method
