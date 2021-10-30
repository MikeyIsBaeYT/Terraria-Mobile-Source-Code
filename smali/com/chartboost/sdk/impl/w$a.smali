.class Lcom/chartboost/sdk/impl/w$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/impl/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field public a:J

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:J

.field public e:J

.field public f:J

.field public g:Ljava/util/Map;
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 360
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/chartboost/sdk/impl/b$a;)V
    .locals 2

    .prologue
    .line 367
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 368
    iput-object p1, p0, Lcom/chartboost/sdk/impl/w$a;->b:Ljava/lang/String;

    .line 369
    iget-object v0, p2, Lcom/chartboost/sdk/impl/b$a;->a:[B

    array-length v0, v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/chartboost/sdk/impl/w$a;->a:J

    .line 370
    iget-object v0, p2, Lcom/chartboost/sdk/impl/b$a;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/chartboost/sdk/impl/w$a;->c:Ljava/lang/String;

    .line 371
    iget-wide v0, p2, Lcom/chartboost/sdk/impl/b$a;->c:J

    iput-wide v0, p0, Lcom/chartboost/sdk/impl/w$a;->d:J

    .line 372
    iget-wide v0, p2, Lcom/chartboost/sdk/impl/b$a;->d:J

    iput-wide v0, p0, Lcom/chartboost/sdk/impl/w$a;->e:J

    .line 373
    iget-wide v0, p2, Lcom/chartboost/sdk/impl/b$a;->e:J

    iput-wide v0, p0, Lcom/chartboost/sdk/impl/w$a;->f:J

    .line 374
    iget-object v0, p2, Lcom/chartboost/sdk/impl/b$a;->f:Ljava/util/Map;

    iput-object v0, p0, Lcom/chartboost/sdk/impl/w$a;->g:Ljava/util/Map;

    .line 375
    return-void
.end method

.method public static a(Ljava/io/InputStream;)Lcom/chartboost/sdk/impl/w$a;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 383
    new-instance v0, Lcom/chartboost/sdk/impl/w$a;

    invoke-direct {v0}, Lcom/chartboost/sdk/impl/w$a;-><init>()V

    .line 384
    invoke-static {p0}, Lcom/chartboost/sdk/impl/w;->a(Ljava/io/InputStream;)I

    move-result v1

    .line 385
    const v2, 0x20140623

    if-eq v1, v2, :cond_0

    .line 387
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 389
    :cond_0
    invoke-static {p0}, Lcom/chartboost/sdk/impl/w;->c(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/chartboost/sdk/impl/w$a;->b:Ljava/lang/String;

    .line 390
    invoke-static {p0}, Lcom/chartboost/sdk/impl/w;->c(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/chartboost/sdk/impl/w$a;->c:Ljava/lang/String;

    .line 391
    iget-object v1, v0, Lcom/chartboost/sdk/impl/w$a;->c:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 392
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/chartboost/sdk/impl/w$a;->c:Ljava/lang/String;

    .line 394
    :cond_1
    invoke-static {p0}, Lcom/chartboost/sdk/impl/w;->b(Ljava/io/InputStream;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/chartboost/sdk/impl/w$a;->d:J

    .line 395
    invoke-static {p0}, Lcom/chartboost/sdk/impl/w;->b(Ljava/io/InputStream;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/chartboost/sdk/impl/w$a;->e:J

    .line 396
    invoke-static {p0}, Lcom/chartboost/sdk/impl/w;->b(Ljava/io/InputStream;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/chartboost/sdk/impl/w$a;->f:J

    .line 397
    invoke-static {p0}, Lcom/chartboost/sdk/impl/w;->d(Ljava/io/InputStream;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Lcom/chartboost/sdk/impl/w$a;->g:Ljava/util/Map;

    .line 398
    return-object v0
.end method


# virtual methods
.method public a([B)Lcom/chartboost/sdk/impl/b$a;
    .locals 4

    .prologue
    .line 405
    new-instance v0, Lcom/chartboost/sdk/impl/b$a;

    invoke-direct {v0}, Lcom/chartboost/sdk/impl/b$a;-><init>()V

    .line 406
    iput-object p1, v0, Lcom/chartboost/sdk/impl/b$a;->a:[B

    .line 407
    iget-object v1, p0, Lcom/chartboost/sdk/impl/w$a;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/chartboost/sdk/impl/b$a;->b:Ljava/lang/String;

    .line 408
    iget-wide v2, p0, Lcom/chartboost/sdk/impl/w$a;->d:J

    iput-wide v2, v0, Lcom/chartboost/sdk/impl/b$a;->c:J

    .line 409
    iget-wide v2, p0, Lcom/chartboost/sdk/impl/w$a;->e:J

    iput-wide v2, v0, Lcom/chartboost/sdk/impl/b$a;->d:J

    .line 410
    iget-wide v2, p0, Lcom/chartboost/sdk/impl/w$a;->f:J

    iput-wide v2, v0, Lcom/chartboost/sdk/impl/b$a;->e:J

    .line 411
    iget-object v1, p0, Lcom/chartboost/sdk/impl/w$a;->g:Ljava/util/Map;

    iput-object v1, v0, Lcom/chartboost/sdk/impl/b$a;->f:Ljava/util/Map;

    .line 412
    return-object v0
.end method

.method public a(Ljava/io/OutputStream;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 421
    const v2, 0x20140623

    :try_start_0
    invoke-static {p1, v2}, Lcom/chartboost/sdk/impl/w;->a(Ljava/io/OutputStream;I)V

    .line 422
    iget-object v2, p0, Lcom/chartboost/sdk/impl/w$a;->b:Ljava/lang/String;

    invoke-static {p1, v2}, Lcom/chartboost/sdk/impl/w;->a(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 423
    iget-object v2, p0, Lcom/chartboost/sdk/impl/w$a;->c:Ljava/lang/String;

    if-nez v2, :cond_0

    const-string v2, ""

    :goto_0
    invoke-static {p1, v2}, Lcom/chartboost/sdk/impl/w;->a(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 424
    iget-wide v2, p0, Lcom/chartboost/sdk/impl/w$a;->d:J

    invoke-static {p1, v2, v3}, Lcom/chartboost/sdk/impl/w;->a(Ljava/io/OutputStream;J)V

    .line 425
    iget-wide v2, p0, Lcom/chartboost/sdk/impl/w$a;->e:J

    invoke-static {p1, v2, v3}, Lcom/chartboost/sdk/impl/w;->a(Ljava/io/OutputStream;J)V

    .line 426
    iget-wide v2, p0, Lcom/chartboost/sdk/impl/w$a;->f:J

    invoke-static {p1, v2, v3}, Lcom/chartboost/sdk/impl/w;->a(Ljava/io/OutputStream;J)V

    .line 427
    iget-object v2, p0, Lcom/chartboost/sdk/impl/w$a;->g:Ljava/util/Map;

    invoke-static {v2, p1}, Lcom/chartboost/sdk/impl/w;->a(Ljava/util/Map;Ljava/io/OutputStream;)V

    .line 428
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 432
    :goto_1
    return v0

    .line 423
    :cond_0
    iget-object v2, p0, Lcom/chartboost/sdk/impl/w$a;->c:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 430
    :catch_0
    move-exception v2

    .line 431
    const-string v3, "%s"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v3, v0}, Lcom/chartboost/sdk/impl/t;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 432
    goto :goto_1
.end method
