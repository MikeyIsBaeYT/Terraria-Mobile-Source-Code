.class public Lcom/chartboost/sdk/impl/cl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/chartboost/sdk/impl/ci;


# instance fields
.field protected a:Lcom/chartboost/sdk/impl/cp;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    return-void
.end method

.method private a(Ljava/lang/String;I[B)V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 386
    const/4 v0, 0x5

    invoke-virtual {p0, v0, p1}, Lcom/chartboost/sdk/impl/cl;->a(BLjava/lang/String;)V

    .line 387
    array-length v0, p3

    .line 389
    if-ne p2, v2, :cond_0

    .line 390
    add-int/lit8 v0, v0, 0x4

    .line 392
    :cond_0
    iget-object v1, p0, Lcom/chartboost/sdk/impl/cl;->a:Lcom/chartboost/sdk/impl/cp;

    invoke-virtual {v1, v0}, Lcom/chartboost/sdk/impl/cp;->c(I)V

    .line 393
    iget-object v1, p0, Lcom/chartboost/sdk/impl/cl;->a:Lcom/chartboost/sdk/impl/cp;

    invoke-virtual {v1, p2}, Lcom/chartboost/sdk/impl/cp;->write(I)V

    .line 394
    if-ne p2, v2, :cond_1

    .line 395
    iget-object v1, p0, Lcom/chartboost/sdk/impl/cl;->a:Lcom/chartboost/sdk/impl/cp;

    add-int/lit8 v0, v0, -0x4

    invoke-virtual {v1, v0}, Lcom/chartboost/sdk/impl/cp;->c(I)V

    .line 396
    :cond_1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/cl;->a:Lcom/chartboost/sdk/impl/cp;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/cp;->a()I

    move-result v0

    .line 397
    iget-object v1, p0, Lcom/chartboost/sdk/impl/cl;->a:Lcom/chartboost/sdk/impl/cp;

    invoke-virtual {v1, p3}, Lcom/chartboost/sdk/impl/cp;->write([B)V

    .line 398
    iget-object v1, p0, Lcom/chartboost/sdk/impl/cl;->a:Lcom/chartboost/sdk/impl/cp;

    invoke-virtual {v1}, Lcom/chartboost/sdk/impl/cp;->a()I

    move-result v1

    .line 399
    sub-int v0, v1, v0

    array-length v1, p3

    invoke-static {v0, v1}, Lcom/chartboost/sdk/impl/ca;->a(II)V

    .line 400
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/Iterable;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 289
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1}, Lcom/chartboost/sdk/impl/cl;->a(BLjava/lang/String;)V

    .line 290
    iget-object v0, p0, Lcom/chartboost/sdk/impl/cl;->a:Lcom/chartboost/sdk/impl/cp;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/cp;->a()I

    move-result v2

    .line 291
    iget-object v0, p0, Lcom/chartboost/sdk/impl/cl;->a:Lcom/chartboost/sdk/impl/cp;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/cp;->c(I)V

    .line 294
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v0, v1

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 295
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5, v4}, Lcom/chartboost/sdk/impl/cl;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 296
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 300
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/cl;->a:Lcom/chartboost/sdk/impl/cp;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/cp;->write(I)V

    .line 301
    iget-object v0, p0, Lcom/chartboost/sdk/impl/cl;->a:Lcom/chartboost/sdk/impl/cp;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/cl;->a:Lcom/chartboost/sdk/impl/cp;

    invoke-virtual {v1}, Lcom/chartboost/sdk/impl/cp;->a()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v2, v1}, Lcom/chartboost/sdk/impl/cp;->a(II)V

    .line 302
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;B)V
    .locals 0

    .prologue
    .line 419
    invoke-virtual {p0, p3, p1}, Lcom/chartboost/sdk/impl/cl;->a(BLjava/lang/String;)V

    .line 420
    invoke-virtual {p0, p2}, Lcom/chartboost/sdk/impl/cl;->b(Ljava/lang/String;)V

    .line 421
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 305
    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1}, Lcom/chartboost/sdk/impl/cl;->a(BLjava/lang/String;)V

    .line 306
    iget-object v0, p0, Lcom/chartboost/sdk/impl/cl;->a:Lcom/chartboost/sdk/impl/cp;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/cp;->a()I

    move-result v1

    .line 307
    iget-object v0, p0, Lcom/chartboost/sdk/impl/cl;->a:Lcom/chartboost/sdk/impl/cp;

    invoke-virtual {v0, v4}, Lcom/chartboost/sdk/impl/cp;->c(I)V

    .line 309
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

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

    .line 310
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Lcom/chartboost/sdk/impl/cl;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 312
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/cl;->a:Lcom/chartboost/sdk/impl/cp;

    invoke-virtual {v0, v4}, Lcom/chartboost/sdk/impl/cp;->write(I)V

    .line 313
    iget-object v0, p0, Lcom/chartboost/sdk/impl/cl;->a:Lcom/chartboost/sdk/impl/cp;

    iget-object v2, p0, Lcom/chartboost/sdk/impl/cl;->a:Lcom/chartboost/sdk/impl/cp;

    invoke-virtual {v2}, Lcom/chartboost/sdk/impl/cp;->a()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {v0, v1, v2}, Lcom/chartboost/sdk/impl/cp;->a(II)V

    .line 314
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/util/regex/Pattern;)V
    .locals 1

    .prologue
    .line 432
    const/16 v0, 0xb

    invoke-virtual {p0, v0, p1}, Lcom/chartboost/sdk/impl/cl;->a(BLjava/lang/String;)V

    .line 433
    invoke-virtual {p2}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/cl;->c(Ljava/lang/String;)I

    .line 434
    invoke-virtual {p2}, Ljava/util/regex/Pattern;->flags()I

    move-result v0

    invoke-static {v0}, Lcom/chartboost/sdk/impl/cg;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/cl;->c(Ljava/lang/String;)I

    .line 435
    return-void
.end method

.method private c(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 276
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1}, Lcom/chartboost/sdk/impl/cl;->a(BLjava/lang/String;)V

    .line 277
    iget-object v0, p0, Lcom/chartboost/sdk/impl/cl;->a:Lcom/chartboost/sdk/impl/cp;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/cp;->a()I

    move-result v2

    .line 278
    iget-object v0, p0, Lcom/chartboost/sdk/impl/cl;->a:Lcom/chartboost/sdk/impl/cp;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/cp;->c(I)V

    .line 280
    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v3

    move v0, v1

    .line 281
    :goto_0
    if-ge v0, v3, :cond_0

    .line 282
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p2, v0}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/chartboost/sdk/impl/cl;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 281
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 284
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/cl;->a:Lcom/chartboost/sdk/impl/cp;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/cp;->write(I)V

    .line 285
    iget-object v0, p0, Lcom/chartboost/sdk/impl/cl;->a:Lcom/chartboost/sdk/impl/cp;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/cl;->a:Lcom/chartboost/sdk/impl/cp;

    invoke-virtual {v1}, Lcom/chartboost/sdk/impl/cp;->a()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v2, v1}, Lcom/chartboost/sdk/impl/cp;->a(II)V

    .line 286
    return-void
.end method

.method private d(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 438
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1}, Lcom/chartboost/sdk/impl/cl;->a(BLjava/lang/String;)V

    .line 439
    return-void
.end method

.method private e(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 442
    const/16 v0, 0x7f

    invoke-virtual {p0, v0, p1}, Lcom/chartboost/sdk/impl/cl;->a(BLjava/lang/String;)V

    .line 443
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chartboost/sdk/impl/cl;->a:Lcom/chartboost/sdk/impl/cp;

    .line 101
    return-void
.end method

.method protected a(BLjava/lang/String;)V
    .locals 1

    .prologue
    .line 453
    iget-object v0, p0, Lcom/chartboost/sdk/impl/cl;->a:Lcom/chartboost/sdk/impl/cp;

    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/impl/cp;->write(I)V

    .line 454
    invoke-virtual {p0, p2}, Lcom/chartboost/sdk/impl/cl;->c(Ljava/lang/String;)I

    .line 455
    return-void
.end method

.method public a(Lcom/chartboost/sdk/impl/cp;)V
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/chartboost/sdk/impl/cl;->a:Lcom/chartboost/sdk/impl/cp;

    if-eqz v0, :cond_0

    .line 94
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "in the middle of something"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 96
    :cond_0
    iput-object p1, p0, Lcom/chartboost/sdk/impl/cl;->a:Lcom/chartboost/sdk/impl/cp;

    .line 97
    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 318
    const/16 v0, 0xa

    invoke-virtual {p0, v0, p1}, Lcom/chartboost/sdk/impl/cl;->a(BLjava/lang/String;)V

    .line 319
    return-void
.end method

.method protected a(Ljava/lang/String;Lcom/chartboost/sdk/impl/cs;)V
    .locals 2

    .prologue
    .line 326
    const/16 v0, 0x11

    invoke-virtual {p0, v0, p1}, Lcom/chartboost/sdk/impl/cl;->a(BLjava/lang/String;)V

    .line 327
    iget-object v0, p0, Lcom/chartboost/sdk/impl/cl;->a:Lcom/chartboost/sdk/impl/cp;

    invoke-virtual {p2}, Lcom/chartboost/sdk/impl/cs;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/cp;->c(I)V

    .line 328
    iget-object v0, p0, Lcom/chartboost/sdk/impl/cl;->a:Lcom/chartboost/sdk/impl/cp;

    invoke-virtual {p2}, Lcom/chartboost/sdk/impl/cs;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/cp;->c(I)V

    .line 329
    return-void
.end method

.method protected a(Ljava/lang/String;Lcom/chartboost/sdk/impl/ct;)V
    .locals 2

    .prologue
    .line 382
    invoke-virtual {p2}, Lcom/chartboost/sdk/impl/ct;->a()B

    move-result v0

    invoke-virtual {p2}, Lcom/chartboost/sdk/impl/ct;->b()[B

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/chartboost/sdk/impl/cl;->a(Ljava/lang/String;I[B)V

    .line 383
    return-void
.end method

.method protected a(Ljava/lang/String;Lcom/chartboost/sdk/impl/cu;)V
    .locals 1

    .prologue
    .line 341
    const/16 v0, 0xd

    invoke-virtual {p0, v0, p1}, Lcom/chartboost/sdk/impl/cl;->a(BLjava/lang/String;)V

    .line 342
    iget-object v0, p0, Lcom/chartboost/sdk/impl/cl;->a:Lcom/chartboost/sdk/impl/cp;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/cp;->a()I

    .line 343
    invoke-virtual {p2}, Lcom/chartboost/sdk/impl/cu;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/cl;->b(Ljava/lang/String;)V

    .line 344
    return-void
.end method

.method protected a(Ljava/lang/String;Lcom/chartboost/sdk/impl/cv;)V
    .locals 3

    .prologue
    .line 332
    const/16 v0, 0xf

    invoke-virtual {p0, v0, p1}, Lcom/chartboost/sdk/impl/cl;->a(BLjava/lang/String;)V

    .line 333
    iget-object v0, p0, Lcom/chartboost/sdk/impl/cl;->a:Lcom/chartboost/sdk/impl/cp;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/cp;->a()I

    move-result v0

    .line 334
    iget-object v1, p0, Lcom/chartboost/sdk/impl/cl;->a:Lcom/chartboost/sdk/impl/cp;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/chartboost/sdk/impl/cp;->c(I)V

    .line 335
    invoke-virtual {p2}, Lcom/chartboost/sdk/impl/cv;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/chartboost/sdk/impl/cl;->b(Ljava/lang/String;)V

    .line 336
    invoke-virtual {p2}, Lcom/chartboost/sdk/impl/cv;->b()Lcom/chartboost/sdk/impl/cj;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/chartboost/sdk/impl/cl;->b(Lcom/chartboost/sdk/impl/cj;)I

    .line 337
    iget-object v1, p0, Lcom/chartboost/sdk/impl/cl;->a:Lcom/chartboost/sdk/impl/cp;

    iget-object v2, p0, Lcom/chartboost/sdk/impl/cl;->a:Lcom/chartboost/sdk/impl/cp;

    invoke-virtual {v2}, Lcom/chartboost/sdk/impl/cp;->a()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-virtual {v1, v0, v2}, Lcom/chartboost/sdk/impl/cp;->a(II)V

    .line 338
    return-void
.end method

.method protected a(Ljava/lang/String;Lcom/chartboost/sdk/impl/cy;)V
    .locals 2

    .prologue
    .line 424
    const/4 v0, 0x7

    invoke-virtual {p0, v0, p1}, Lcom/chartboost/sdk/impl/cl;->a(BLjava/lang/String;)V

    .line 426
    iget-object v0, p0, Lcom/chartboost/sdk/impl/cl;->a:Lcom/chartboost/sdk/impl/cp;

    invoke-virtual {p2}, Lcom/chartboost/sdk/impl/cy;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/cp;->d(I)V

    .line 427
    iget-object v0, p0, Lcom/chartboost/sdk/impl/cl;->a:Lcom/chartboost/sdk/impl/cp;

    invoke-virtual {p2}, Lcom/chartboost/sdk/impl/cy;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/cp;->d(I)V

    .line 428
    iget-object v0, p0, Lcom/chartboost/sdk/impl/cl;->a:Lcom/chartboost/sdk/impl/cp;

    invoke-virtual {p2}, Lcom/chartboost/sdk/impl/cy;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/cp;->d(I)V

    .line 429
    return-void
.end method

.method protected a(Ljava/lang/String;Lcom/chartboost/sdk/impl/cz;)V
    .locals 2

    .prologue
    .line 411
    invoke-virtual {p2}, Lcom/chartboost/sdk/impl/cz;->a()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xe

    invoke-direct {p0, p1, v0, v1}, Lcom/chartboost/sdk/impl/cl;->a(Ljava/lang/String;Ljava/lang/String;B)V

    .line 412
    return-void
.end method

.method protected a(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 2

    .prologue
    .line 347
    const/16 v0, 0x8

    invoke-virtual {p0, v0, p1}, Lcom/chartboost/sdk/impl/cl;->a(BLjava/lang/String;)V

    .line 348
    iget-object v1, p0, Lcom/chartboost/sdk/impl/cl;->a:Lcom/chartboost/sdk/impl/cp;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/chartboost/sdk/impl/cp;->write(I)V

    .line 349
    return-void

    .line 348
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(Ljava/lang/String;Ljava/lang/Number;)V
    .locals 4

    .prologue
    .line 357
    instance-of v0, p2, Ljava/lang/Integer;

    if-nez v0, :cond_0

    instance-of v0, p2, Ljava/lang/Short;

    if-nez v0, :cond_0

    instance-of v0, p2, Ljava/lang/Byte;

    if-nez v0, :cond_0

    instance-of v0, p2, Ljava/util/concurrent/atomic/AtomicInteger;

    if-eqz v0, :cond_1

    .line 361
    :cond_0
    const/16 v0, 0x10

    invoke-virtual {p0, v0, p1}, Lcom/chartboost/sdk/impl/cl;->a(BLjava/lang/String;)V

    .line 362
    iget-object v0, p0, Lcom/chartboost/sdk/impl/cl;->a:Lcom/chartboost/sdk/impl/cp;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/cp;->c(I)V

    .line 375
    :goto_0
    return-void

    .line 364
    :cond_1
    instance-of v0, p2, Ljava/lang/Long;

    if-nez v0, :cond_2

    instance-of v0, p2, Ljava/util/concurrent/atomic/AtomicLong;

    if-eqz v0, :cond_3

    .line 365
    :cond_2
    const/16 v0, 0x12

    invoke-virtual {p0, v0, p1}, Lcom/chartboost/sdk/impl/cl;->a(BLjava/lang/String;)V

    .line 366
    iget-object v0, p0, Lcom/chartboost/sdk/impl/cl;->a:Lcom/chartboost/sdk/impl/cp;

    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/chartboost/sdk/impl/cp;->a(J)V

    goto :goto_0

    .line 368
    :cond_3
    instance-of v0, p2, Ljava/lang/Float;

    if-nez v0, :cond_4

    instance-of v0, p2, Ljava/lang/Double;

    if-eqz v0, :cond_5

    .line 369
    :cond_4
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/chartboost/sdk/impl/cl;->a(BLjava/lang/String;)V

    .line 370
    iget-object v0, p0, Lcom/chartboost/sdk/impl/cl;->a:Lcom/chartboost/sdk/impl/cp;

    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/chartboost/sdk/impl/cp;->a(D)V

    goto :goto_0

    .line 373
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can\'t serialize "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 415
    const/4 v0, 0x2

    invoke-direct {p0, p1, p2, v0}, Lcom/chartboost/sdk/impl/cl;->a(Ljava/lang/String;Ljava/lang/String;B)V

    .line 416
    return-void
.end method

.method protected a(Ljava/lang/String;Ljava/util/Date;)V
    .locals 4

    .prologue
    .line 352
    const/16 v0, 0x9

    invoke-virtual {p0, v0, p1}, Lcom/chartboost/sdk/impl/cl;->a(BLjava/lang/String;)V

    .line 353
    iget-object v0, p0, Lcom/chartboost/sdk/impl/cl;->a:Lcom/chartboost/sdk/impl/cp;

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/chartboost/sdk/impl/cp;->a(J)V

    .line 354
    return-void
.end method

.method protected a(Ljava/lang/String;Ljava/util/UUID;)V
    .locals 4

    .prologue
    .line 403
    const/4 v0, 0x5

    invoke-virtual {p0, v0, p1}, Lcom/chartboost/sdk/impl/cl;->a(BLjava/lang/String;)V

    .line 404
    iget-object v0, p0, Lcom/chartboost/sdk/impl/cl;->a:Lcom/chartboost/sdk/impl/cp;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/cp;->c(I)V

    .line 405
    iget-object v0, p0, Lcom/chartboost/sdk/impl/cl;->a:Lcom/chartboost/sdk/impl/cp;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/cp;->write(I)V

    .line 406
    iget-object v0, p0, Lcom/chartboost/sdk/impl/cl;->a:Lcom/chartboost/sdk/impl/cp;

    invoke-virtual {p2}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/chartboost/sdk/impl/cp;->a(J)V

    .line 407
    iget-object v0, p0, Lcom/chartboost/sdk/impl/cl;->a:Lcom/chartboost/sdk/impl/cp;

    invoke-virtual {p2}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/chartboost/sdk/impl/cp;->a(J)V

    .line 408
    return-void
.end method

.method protected a(Ljava/lang/String;[B)V
    .locals 1

    .prologue
    .line 378
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/chartboost/sdk/impl/cl;->a(Ljava/lang/String;I[B)V

    .line 379
    return-void
.end method

.method protected a(Ljava/lang/String;Lcom/chartboost/sdk/impl/cj;)Z
    .locals 1

    .prologue
    .line 107
    const/4 v0, 0x0

    return v0
.end method

.method protected a(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 111
    const/4 v0, 0x0

    return v0
.end method

.method public a(Lcom/chartboost/sdk/impl/cj;)[B
    .locals 1

    .prologue
    .line 85
    new-instance v0, Lcom/chartboost/sdk/impl/co;

    invoke-direct {v0}, Lcom/chartboost/sdk/impl/co;-><init>()V

    .line 86
    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/cl;->a(Lcom/chartboost/sdk/impl/cp;)V

    .line 87
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/impl/cl;->b(Lcom/chartboost/sdk/impl/cj;)I

    .line 88
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/cl;->a()V

    .line 89
    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/co;->c()[B

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/chartboost/sdk/impl/cj;)I
    .locals 1

    .prologue
    .line 120
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/chartboost/sdk/impl/cl;->b(Ljava/lang/String;Lcom/chartboost/sdk/impl/cj;)I

    move-result v0

    return v0
.end method

.method protected b(Ljava/lang/String;Lcom/chartboost/sdk/impl/cj;)I
    .locals 9

    .prologue
    const/4 v1, 0x3

    const/4 v4, 0x0

    .line 128
    if-nez p2, :cond_0

    .line 129
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "can\'t save a null object"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/cl;->a:Lcom/chartboost/sdk/impl/cp;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/cp;->a()I

    move-result v5

    .line 136
    instance-of v0, p2, Ljava/util/List;

    if-eqz v0, :cond_e

    .line 137
    const/4 v0, 0x4

    .line 139
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/chartboost/sdk/impl/cl;->a(Ljava/lang/String;Lcom/chartboost/sdk/impl/cj;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 140
    iget-object v0, p0, Lcom/chartboost/sdk/impl/cl;->a:Lcom/chartboost/sdk/impl/cp;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/cp;->a()I

    move-result v0

    sub-int/2addr v0, v5

    .line 195
    :goto_1
    return v0

    .line 142
    :cond_1
    if-eqz p1, :cond_2

    .line 143
    invoke-virtual {p0, v0, p1}, Lcom/chartboost/sdk/impl/cl;->a(BLjava/lang/String;)V

    .line 146
    :cond_2
    iget-object v2, p0, Lcom/chartboost/sdk/impl/cl;->a:Lcom/chartboost/sdk/impl/cp;

    invoke-virtual {v2}, Lcom/chartboost/sdk/impl/cp;->a()I

    move-result v6

    .line 147
    iget-object v2, p0, Lcom/chartboost/sdk/impl/cl;->a:Lcom/chartboost/sdk/impl/cp;

    invoke-virtual {v2, v4}, Lcom/chartboost/sdk/impl/cp;->c(I)V

    .line 149
    const/4 v2, 0x0

    .line 150
    if-ne v0, v1, :cond_8

    if-nez p1, :cond_8

    const/4 v3, 0x1

    .line 153
    :goto_2
    if-ne v0, v1, :cond_4

    .line 154
    if-eqz v3, :cond_3

    const-string v0, "_id"

    invoke-interface {p2, v0}, Lcom/chartboost/sdk/impl/cj;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 155
    const-string v0, "_id"

    const-string v1, "_id"

    invoke-interface {p2, v1}, Lcom/chartboost/sdk/impl/cj;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/chartboost/sdk/impl/cl;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 158
    :cond_3
    const-string v0, "_transientFields"

    invoke-interface {p2, v0}, Lcom/chartboost/sdk/impl/cj;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 159
    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_4

    .line 160
    check-cast v0, Ljava/util/List;

    move-object v2, v0

    .line 165
    :cond_4
    instance-of v0, p2, Ljava/util/Map;

    if-eqz v0, :cond_9

    .line 166
    check-cast p2, Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_5
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 168
    if-eqz v3, :cond_6

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v8, "_id"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 171
    :cond_6
    if-eqz v2, :cond_7

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 174
    :cond_7
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/chartboost/sdk/impl/cl;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_3

    :cond_8
    move v3, v4

    .line 150
    goto :goto_2

    .line 178
    :cond_9
    invoke-interface {p2}, Lcom/chartboost/sdk/impl/cj;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 180
    if-eqz v3, :cond_b

    const-string v7, "_id"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_a

    .line 183
    :cond_b
    if-eqz v2, :cond_c

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_a

    .line 186
    :cond_c
    invoke-interface {p2, v0}, Lcom/chartboost/sdk/impl/cj;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 188
    invoke-virtual {p0, v0, v7}, Lcom/chartboost/sdk/impl/cl;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_4

    .line 192
    :cond_d
    iget-object v0, p0, Lcom/chartboost/sdk/impl/cl;->a:Lcom/chartboost/sdk/impl/cp;

    invoke-virtual {v0, v4}, Lcom/chartboost/sdk/impl/cp;->write(I)V

    .line 194
    iget-object v0, p0, Lcom/chartboost/sdk/impl/cl;->a:Lcom/chartboost/sdk/impl/cp;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/cl;->a:Lcom/chartboost/sdk/impl/cp;

    invoke-virtual {v1}, Lcom/chartboost/sdk/impl/cp;->a()I

    move-result v1

    sub-int/2addr v1, v6

    invoke-virtual {v0, v6, v1}, Lcom/chartboost/sdk/impl/cp;->a(II)V

    .line 195
    iget-object v0, p0, Lcom/chartboost/sdk/impl/cl;->a:Lcom/chartboost/sdk/impl/cp;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/cp;->a()I

    move-result v0

    sub-int/2addr v0, v5

    goto/16 :goto_1

    :cond_e
    move v0, v1

    goto/16 :goto_0
.end method

.method protected b(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 458
    iget-object v0, p0, Lcom/chartboost/sdk/impl/cl;->a:Lcom/chartboost/sdk/impl/cp;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/cp;->a()I

    move-result v0

    .line 459
    iget-object v1, p0, Lcom/chartboost/sdk/impl/cl;->a:Lcom/chartboost/sdk/impl/cp;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/chartboost/sdk/impl/cp;->c(I)V

    .line 460
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/impl/cl;->c(Ljava/lang/String;)I

    move-result v1

    .line 461
    iget-object v2, p0, Lcom/chartboost/sdk/impl/cl;->a:Lcom/chartboost/sdk/impl/cp;

    invoke-virtual {v2, v0, v1}, Lcom/chartboost/sdk/impl/cp;->a(II)V

    .line 462
    return-void
.end method

.method protected b(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 200
    const-string v0, "_transientFields"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 273
    :cond_0
    :goto_0
    return-void

    .line 205
    :cond_1
    const-string v0, "$where"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 206
    const/16 v0, 0xd

    invoke-virtual {p0, v0, p1}, Lcom/chartboost/sdk/impl/cl;->a(BLjava/lang/String;)V

    .line 207
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/cl;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 211
    :cond_2
    invoke-static {p2}, Lcom/chartboost/sdk/impl/cg;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 213
    if-nez v0, :cond_3

    .line 214
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/impl/cl;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 215
    :cond_3
    instance-of v1, v0, Ljava/util/Date;

    if-eqz v1, :cond_4

    .line 216
    check-cast v0, Ljava/util/Date;

    invoke-virtual {p0, p1, v0}, Lcom/chartboost/sdk/impl/cl;->a(Ljava/lang/String;Ljava/util/Date;)V

    goto :goto_0

    .line 217
    :cond_4
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_5

    .line 218
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {p0, p1, v0}, Lcom/chartboost/sdk/impl/cl;->a(Ljava/lang/String;Ljava/lang/Number;)V

    goto :goto_0

    .line 219
    :cond_5
    instance-of v1, v0, Ljava/lang/Character;

    if-eqz v1, :cond_6

    .line 220
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/chartboost/sdk/impl/cl;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 221
    :cond_6
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 222
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/chartboost/sdk/impl/cl;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 223
    :cond_7
    instance-of v1, v0, Lcom/chartboost/sdk/impl/cy;

    if-eqz v1, :cond_8

    .line 224
    check-cast v0, Lcom/chartboost/sdk/impl/cy;

    invoke-virtual {p0, p1, v0}, Lcom/chartboost/sdk/impl/cl;->a(Ljava/lang/String;Lcom/chartboost/sdk/impl/cy;)V

    goto :goto_0

    .line 225
    :cond_8
    instance-of v1, v0, Lcom/chartboost/sdk/impl/cj;

    if-eqz v1, :cond_9

    .line 226
    check-cast v0, Lcom/chartboost/sdk/impl/cj;

    invoke-virtual {p0, p1, v0}, Lcom/chartboost/sdk/impl/cl;->b(Ljava/lang/String;Lcom/chartboost/sdk/impl/cj;)I

    goto :goto_0

    .line 227
    :cond_9
    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_a

    .line 228
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, v0}, Lcom/chartboost/sdk/impl/cl;->a(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_0

    .line 229
    :cond_a
    instance-of v1, v0, Ljava/util/regex/Pattern;

    if-eqz v1, :cond_b

    .line 230
    check-cast v0, Ljava/util/regex/Pattern;

    invoke-direct {p0, p1, v0}, Lcom/chartboost/sdk/impl/cl;->a(Ljava/lang/String;Ljava/util/regex/Pattern;)V

    goto :goto_0

    .line 231
    :cond_b
    instance-of v1, v0, Ljava/util/Map;

    if-eqz v1, :cond_c

    .line 232
    check-cast v0, Ljava/util/Map;

    invoke-direct {p0, p1, v0}, Lcom/chartboost/sdk/impl/cl;->a(Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_0

    .line 233
    :cond_c
    instance-of v1, v0, Ljava/lang/Iterable;

    if-eqz v1, :cond_d

    .line 234
    check-cast v0, Ljava/lang/Iterable;

    invoke-direct {p0, p1, v0}, Lcom/chartboost/sdk/impl/cl;->a(Ljava/lang/String;Ljava/lang/Iterable;)V

    goto/16 :goto_0

    .line 235
    :cond_d
    instance-of v1, v0, [B

    if-eqz v1, :cond_e

    .line 236
    check-cast v0, [B

    check-cast v0, [B

    invoke-virtual {p0, p1, v0}, Lcom/chartboost/sdk/impl/cl;->a(Ljava/lang/String;[B)V

    goto/16 :goto_0

    .line 237
    :cond_e
    instance-of v1, v0, Lcom/chartboost/sdk/impl/ct;

    if-eqz v1, :cond_f

    .line 238
    check-cast v0, Lcom/chartboost/sdk/impl/ct;

    invoke-virtual {p0, p1, v0}, Lcom/chartboost/sdk/impl/cl;->a(Ljava/lang/String;Lcom/chartboost/sdk/impl/ct;)V

    goto/16 :goto_0

    .line 239
    :cond_f
    instance-of v1, v0, Ljava/util/UUID;

    if-eqz v1, :cond_10

    .line 240
    check-cast v0, Ljava/util/UUID;

    invoke-virtual {p0, p1, v0}, Lcom/chartboost/sdk/impl/cl;->a(Ljava/lang/String;Ljava/util/UUID;)V

    goto/16 :goto_0

    .line 241
    :cond_10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 242
    invoke-direct {p0, p1, v0}, Lcom/chartboost/sdk/impl/cl;->c(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 244
    :cond_11
    instance-of v1, v0, Lcom/chartboost/sdk/impl/cz;

    if-eqz v1, :cond_12

    .line 245
    check-cast v0, Lcom/chartboost/sdk/impl/cz;

    invoke-virtual {p0, p1, v0}, Lcom/chartboost/sdk/impl/cl;->a(Ljava/lang/String;Lcom/chartboost/sdk/impl/cz;)V

    goto/16 :goto_0

    .line 247
    :cond_12
    instance-of v1, v0, Lcom/chartboost/sdk/impl/cs;

    if-eqz v1, :cond_13

    .line 248
    check-cast v0, Lcom/chartboost/sdk/impl/cs;

    invoke-virtual {p0, p1, v0}, Lcom/chartboost/sdk/impl/cl;->a(Ljava/lang/String;Lcom/chartboost/sdk/impl/cs;)V

    goto/16 :goto_0

    .line 250
    :cond_13
    instance-of v1, v0, Lcom/chartboost/sdk/impl/cv;

    if-eqz v1, :cond_14

    .line 251
    check-cast v0, Lcom/chartboost/sdk/impl/cv;

    invoke-virtual {p0, p1, v0}, Lcom/chartboost/sdk/impl/cl;->a(Ljava/lang/String;Lcom/chartboost/sdk/impl/cv;)V

    goto/16 :goto_0

    .line 253
    :cond_14
    instance-of v1, v0, Lcom/chartboost/sdk/impl/cu;

    if-eqz v1, :cond_15

    .line 254
    check-cast v0, Lcom/chartboost/sdk/impl/cu;

    invoke-virtual {p0, p1, v0}, Lcom/chartboost/sdk/impl/cl;->a(Ljava/lang/String;Lcom/chartboost/sdk/impl/cu;)V

    goto/16 :goto_0

    .line 256
    :cond_15
    instance-of v1, v0, Lcom/chartboost/sdk/impl/bv;

    if-eqz v1, :cond_16

    .line 257
    new-instance v2, Lcom/chartboost/sdk/impl/cm;

    invoke-direct {v2}, Lcom/chartboost/sdk/impl/cm;-><init>()V

    .line 258
    const-string v3, "$ref"

    move-object v1, v0

    check-cast v1, Lcom/chartboost/sdk/impl/bv;

    invoke-virtual {v1}, Lcom/chartboost/sdk/impl/bv;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Lcom/chartboost/sdk/impl/cj;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    const-string v1, "$id"

    check-cast v0, Lcom/chartboost/sdk/impl/bv;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/bv;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Lcom/chartboost/sdk/impl/cj;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    invoke-virtual {p0, p1, v2}, Lcom/chartboost/sdk/impl/cl;->b(Ljava/lang/String;Lcom/chartboost/sdk/impl/cj;)I

    goto/16 :goto_0

    .line 262
    :cond_16
    instance-of v1, v0, Lcom/chartboost/sdk/impl/cx;

    if-eqz v1, :cond_17

    .line 263
    invoke-direct {p0, p1}, Lcom/chartboost/sdk/impl/cl;->d(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 264
    :cond_17
    instance-of v1, v0, Lcom/chartboost/sdk/impl/cw;

    if-eqz v1, :cond_18

    .line 265
    invoke-direct {p0, p1}, Lcom/chartboost/sdk/impl/cl;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 266
    :cond_18
    invoke-virtual {p0, p1, v0}, Lcom/chartboost/sdk/impl/cl;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 270
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can\'t serialize "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected c(Ljava/lang/String;)I
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 474
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    move v1, v2

    move v0, v2

    .line 477
    :goto_0
    if-ge v1, v3, :cond_3

    .line 478
    invoke-static {p1, v1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v4

    .line 480
    const/16 v5, 0x80

    if-ge v4, v5, :cond_0

    .line 481
    iget-object v5, p0, Lcom/chartboost/sdk/impl/cl;->a:Lcom/chartboost/sdk/impl/cp;

    int-to-byte v6, v4

    invoke-virtual {v5, v6}, Lcom/chartboost/sdk/impl/cp;->write(I)V

    .line 482
    add-int/lit8 v0, v0, 0x1

    .line 503
    :goto_1
    invoke-static {v4}, Ljava/lang/Character;->charCount(I)I

    move-result v4

    add-int/2addr v1, v4

    .line 504
    goto :goto_0

    .line 484
    :cond_0
    const/16 v5, 0x800

    if-ge v4, v5, :cond_1

    .line 485
    iget-object v5, p0, Lcom/chartboost/sdk/impl/cl;->a:Lcom/chartboost/sdk/impl/cp;

    shr-int/lit8 v6, v4, 0x6

    add-int/lit16 v6, v6, 0xc0

    int-to-byte v6, v6

    invoke-virtual {v5, v6}, Lcom/chartboost/sdk/impl/cp;->write(I)V

    .line 486
    iget-object v5, p0, Lcom/chartboost/sdk/impl/cl;->a:Lcom/chartboost/sdk/impl/cp;

    and-int/lit8 v6, v4, 0x3f

    add-int/lit16 v6, v6, 0x80

    int-to-byte v6, v6

    invoke-virtual {v5, v6}, Lcom/chartboost/sdk/impl/cp;->write(I)V

    .line 487
    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 489
    :cond_1
    const/high16 v5, 0x10000

    if-ge v4, v5, :cond_2

    .line 490
    iget-object v5, p0, Lcom/chartboost/sdk/impl/cl;->a:Lcom/chartboost/sdk/impl/cp;

    shr-int/lit8 v6, v4, 0xc

    add-int/lit16 v6, v6, 0xe0

    int-to-byte v6, v6

    invoke-virtual {v5, v6}, Lcom/chartboost/sdk/impl/cp;->write(I)V

    .line 491
    iget-object v5, p0, Lcom/chartboost/sdk/impl/cl;->a:Lcom/chartboost/sdk/impl/cp;

    shr-int/lit8 v6, v4, 0x6

    and-int/lit8 v6, v6, 0x3f

    add-int/lit16 v6, v6, 0x80

    int-to-byte v6, v6

    invoke-virtual {v5, v6}, Lcom/chartboost/sdk/impl/cp;->write(I)V

    .line 492
    iget-object v5, p0, Lcom/chartboost/sdk/impl/cl;->a:Lcom/chartboost/sdk/impl/cp;

    and-int/lit8 v6, v4, 0x3f

    add-int/lit16 v6, v6, 0x80

    int-to-byte v6, v6

    invoke-virtual {v5, v6}, Lcom/chartboost/sdk/impl/cp;->write(I)V

    .line 493
    add-int/lit8 v0, v0, 0x3

    goto :goto_1

    .line 496
    :cond_2
    iget-object v5, p0, Lcom/chartboost/sdk/impl/cl;->a:Lcom/chartboost/sdk/impl/cp;

    shr-int/lit8 v6, v4, 0x12

    add-int/lit16 v6, v6, 0xf0

    int-to-byte v6, v6

    invoke-virtual {v5, v6}, Lcom/chartboost/sdk/impl/cp;->write(I)V

    .line 497
    iget-object v5, p0, Lcom/chartboost/sdk/impl/cl;->a:Lcom/chartboost/sdk/impl/cp;

    shr-int/lit8 v6, v4, 0xc

    and-int/lit8 v6, v6, 0x3f

    add-int/lit16 v6, v6, 0x80

    int-to-byte v6, v6

    invoke-virtual {v5, v6}, Lcom/chartboost/sdk/impl/cp;->write(I)V

    .line 498
    iget-object v5, p0, Lcom/chartboost/sdk/impl/cl;->a:Lcom/chartboost/sdk/impl/cp;

    shr-int/lit8 v6, v4, 0x6

    and-int/lit8 v6, v6, 0x3f

    add-int/lit16 v6, v6, 0x80

    int-to-byte v6, v6

    invoke-virtual {v5, v6}, Lcom/chartboost/sdk/impl/cp;->write(I)V

    .line 499
    iget-object v5, p0, Lcom/chartboost/sdk/impl/cl;->a:Lcom/chartboost/sdk/impl/cp;

    and-int/lit8 v6, v4, 0x3f

    add-int/lit16 v6, v6, 0x80

    int-to-byte v6, v6

    invoke-virtual {v5, v6}, Lcom/chartboost/sdk/impl/cp;->write(I)V

    .line 500
    add-int/lit8 v0, v0, 0x4

    goto :goto_1

    .line 506
    :cond_3
    iget-object v1, p0, Lcom/chartboost/sdk/impl/cl;->a:Lcom/chartboost/sdk/impl/cp;

    invoke-virtual {v1, v2}, Lcom/chartboost/sdk/impl/cp;->write(I)V

    .line 507
    add-int/lit8 v0, v0, 0x1

    .line 508
    return v0
.end method
