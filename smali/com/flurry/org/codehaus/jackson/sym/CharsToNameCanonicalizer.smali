.class public final Lcom/flurry/org/codehaus/jackson/sym/CharsToNameCanonicalizer;
.super Ljava/lang/Object;
.source "CharsToNameCanonicalizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/org/codehaus/jackson/sym/CharsToNameCanonicalizer$Bucket;
    }
.end annotation


# static fields
.field protected static final DEFAULT_TABLE_SIZE:I = 0x40

.field static final MAX_ENTRIES_FOR_REUSE:I = 0x2ee0

.field protected static final MAX_TABLE_SIZE:I = 0x10000

.field static final sBootstrapSymbolTable:Lcom/flurry/org/codehaus/jackson/sym/CharsToNameCanonicalizer;


# instance fields
.field protected _buckets:[Lcom/flurry/org/codehaus/jackson/sym/CharsToNameCanonicalizer$Bucket;

.field protected final _canonicalize:Z

.field protected _dirty:Z

.field protected _indexMask:I

.field protected final _intern:Z

.field protected _parent:Lcom/flurry/org/codehaus/jackson/sym/CharsToNameCanonicalizer;

.field protected _size:I

.field protected _sizeThreshold:I

.field protected _symbols:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 72
    new-instance v0, Lcom/flurry/org/codehaus/jackson/sym/CharsToNameCanonicalizer;

    invoke-direct {v0}, Lcom/flurry/org/codehaus/jackson/sym/CharsToNameCanonicalizer;-><init>()V

    sput-object v0, Lcom/flurry/org/codehaus/jackson/sym/CharsToNameCanonicalizer;->sBootstrapSymbolTable:Lcom/flurry/org/codehaus/jackson/sym/CharsToNameCanonicalizer;

    .line 73
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    iput-boolean v0, p0, Lcom/flurry/org/codehaus/jackson/sym/CharsToNameCanonicalizer;->_canonicalize:Z

    .line 182
    iput-boolean v0, p0, Lcom/flurry/org/codehaus/jackson/sym/CharsToNameCanonicalizer;->_intern:Z

    .line 184
    iput-boolean v0, p0, Lcom/flurry/org/codehaus/jackson/sym/CharsToNameCanonicalizer;->_dirty:Z

    .line 185
    const/16 v0, 0x40

    invoke-direct {p0, v0}, Lcom/flurry/org/codehaus/jackson/sym/CharsToNameCanonicalizer;->initTables(I)V

    .line 186
    return-void
.end method

.method private constructor <init>(Lcom/flurry/org/codehaus/jackson/sym/CharsToNameCanonicalizer;ZZ[Ljava/lang/String;[Lcom/flurry/org/codehaus/jackson/sym/CharsToNameCanonicalizer$Bucket;I)V
    .locals 2
    .param p1, "parent"    # Lcom/flurry/org/codehaus/jackson/sym/CharsToNameCanonicalizer;
    .param p2, "canonicalize"    # Z
    .param p3, "intern"    # Z
    .param p4, "symbols"    # [Ljava/lang/String;
    .param p5, "buckets"    # [Lcom/flurry/org/codehaus/jackson/sym/CharsToNameCanonicalizer$Bucket;
    .param p6, "size"    # I

    .prologue
    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 206
    iput-object p1, p0, Lcom/flurry/org/codehaus/jackson/sym/CharsToNameCanonicalizer;->_parent:Lcom/flurry/org/codehaus/jackson/sym/CharsToNameCanonicalizer;

    .line 207
    iput-boolean p2, p0, Lcom/flurry/org/codehaus/jackson/sym/CharsToNameCanonicalizer;->_canonicalize:Z

    .line 208
    iput-boolean p3, p0, Lcom/flurry/org/codehaus/jackson/sym/CharsToNameCanonicalizer;->_intern:Z

    .line 210
    iput-object p4, p0, Lcom/flurry/org/codehaus/jackson/sym/CharsToNameCanonicalizer;->_symbols:[Ljava/lang/String;

    .line 211
    iput-object p5, p0, Lcom/flurry/org/codehaus/jackson/sym/CharsToNameCanonicalizer;->_buckets:[Lcom/flurry/org/codehaus/jackson/sym/CharsToNameCanonicalizer$Bucket;

    .line 212
    iput p6, p0, Lcom/flurry/org/codehaus/jackson/sym/CharsToNameCanonicalizer;->_size:I

    .line 214
    array-length v0, p4

    .line 215
    .local v0, "arrayLen":I
    shr-int/lit8 v1, v0, 0x2

    sub-int v1, v0, v1

    iput v1, p0, Lcom/flurry/org/codehaus/jackson/sym/CharsToNameCanonicalizer;->_sizeThreshold:I

    .line 216
    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/flurry/org/codehaus/jackson/sym/CharsToNameCanonicalizer;->_indexMask:I

    .line 219
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/flurry/org/codehaus/jackson/sym/CharsToNameCanonicalizer;->_dirty:Z

    .line 220
    return-void
.end method

.method public static calcHash(Ljava/lang/String;)I
    .locals 5
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 403
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 404
    .local v0, "hash":I
    const/4 v1, 0x1

    .local v1, "i":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .local v2, "len":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 405
    mul-int/lit8 v3, v0, 0x1f

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    add-int v0, v3, v4

    .line 404
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 408
    :cond_0
    return v0
.end method

.method public static calcHash([CII)I
    .locals 4
    .param p0, "buffer"    # [C
    .param p1, "start"    # I
    .param p2, "len"    # I

    .prologue
    .line 395
    const/4 v2, 0x0

    aget-char v0, p0, v2

    .line 396
    .local v0, "hash":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_0

    .line 397
    mul-int/lit8 v2, v0, 0x1f

    aget-char v3, p0, v1

    add-int v0, v2, v3

    .line 396
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 399
    :cond_0
    return v0
.end method

.method private copyArrays()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 422
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/sym/CharsToNameCanonicalizer;->_symbols:[Ljava/lang/String;

    .line 423
    .local v1, "oldSyms":[Ljava/lang/String;
    array-length v2, v1

    .line 424
    .local v2, "size":I
    new-array v3, v2, [Ljava/lang/String;

    iput-object v3, p0, Lcom/flurry/org/codehaus/jackson/sym/CharsToNameCanonicalizer;->_symbols:[Ljava/lang/String;

    .line 425
    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/sym/CharsToNameCanonicalizer;->_symbols:[Ljava/lang/String;

    invoke-static {v1, v4, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 426
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/sym/CharsToNameCanonicalizer;->_buckets:[Lcom/flurry/org/codehaus/jackson/sym/CharsToNameCanonicalizer$Bucket;

    .line 427
    .local v0, "oldBuckets":[Lcom/flurry/org/codehaus/jackson/sym/CharsToNameCanonicalizer$Bucket;
    array-length v2, v0

    .line 428
    new-array v3, v2, [Lcom/flurry/org/codehaus/jackson/sym/CharsToNameCanonicalizer$Bucket;

    iput-object v3, p0, Lcom/flurry/org/codehaus/jackson/sym/CharsToNameCanonicalizer;->_buckets:[Lcom/flurry/org/codehaus/jackson/sym/CharsToNameCanonicalizer$Bucket;

    .line 429
    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/sym/CharsToNameCanonicalizer;->_buckets:[Lcom/flurry/org/codehaus/jackson/sym/CharsToNameCanonicalizer$Bucket;

    invoke-static {v0, v4, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 430
    return-void
.end method

.method public static createRoot()Lcom/flurry/org/codehaus/jackson/sym/CharsToNameCanonicalizer;
    .locals 1

    .prologue
    .line 169
    sget-object v0, Lcom/flurry/org/codehaus/jackson/sym/CharsToNameCanonicalizer;->sBootstrapSymbolTable:Lcom/flurry/org/codehaus/jackson/sym/CharsToNameCanonicalizer;

    invoke-direct {v0}, Lcom/flurry/org/codehaus/jackson/sym/CharsToNameCanonicalizer;->makeOrphan()Lcom/flurry/org/codehaus/jackson/sym/CharsToNameCanonicalizer;

    move-result-object v0

    return-object v0
.end method

.method private initTables(I)V
    .locals 1
    .param p1, "initialSize"    # I

    .prologue
    .line 190
    new-array v0, p1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/sym/CharsToNameCanonicalizer;->_symbols:[Ljava/lang/String;

    .line 191
    shr-int/lit8 v0, p1, 0x1

    new-array v0, v0, [Lcom/flurry/org/codehaus/jackson/sym/CharsToNameCanonicalizer$Bucket;

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/sym/CharsToNameCanonicalizer;->_buckets:[Lcom/flurry/org/codehaus/jackson/sym/CharsToNameCanonicalizer$Bucket;

    .line 193
    add-int/lit8 v0, p1, -0x1

    iput v0, p0, Lcom/flurry/org/codehaus/jackson/sym/CharsToNameCanonicalizer;->_indexMask:I

    .line 194
    const/4 v0, 0x0

    iput v0, p0, Lcom/flurry/org/codehaus/jackson/sym/CharsToNameCanonicalizer;->_size:I

    .line 196
    shr-int/lit8 v0, p1, 0x2

    sub-int v0, p1, v0

    iput v0, p0, Lcom/flurry/org/codehaus/jackson/sym/CharsToNameCanonicalizer;->_sizeThreshold:I

    .line 197
    return-void
.end method

.method private makeOrphan()Lcom/flurry/org/codehaus/jackson/sym/CharsToNameCanonicalizer;
    .locals 7

    .prologue
    const/4 v2, 0x1

    .line 241
    new-instance v0, Lcom/flurry/org/codehaus/jackson/sym/CharsToNameCanonicalizer;

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/flurry/org/codehaus/jackson/sym/CharsToNameCanonicalizer;->_symbols:[Ljava/lang/String;

    iget-object v5, p0, Lcom/flurry/org/codehaus/jackson/sym/CharsToNameCanonicalizer;->_buckets:[Lcom/flurry/org/codehaus/jackson/sym/CharsToNameCanonicalizer$Bucket;

    iget v6, p0, Lcom/flurry/org/codehaus/jackson/sym/CharsToNameCanonicalizer;->_size:I

    move v3, v2

    invoke-direct/range {v0 .. v6}, Lcom/flurry/org/codehaus/jackson/sym/CharsToNameCanonicalizer;-><init>(Lcom/flurry/org/codehaus/jackson/sym/CharsToNameCanonicalizer;ZZ[Ljava/lang/String;[Lcom/flurry/org/codehaus/jackson/sym/CharsToNameCanonicalizer$Bucket;I)V

    return-object v0
.end method

.method private declared-synchronized mergeChild(Lcom/flurry/org/codehaus/jackson/sym/CharsToNameCanonicalizer;)V
    .locals 2
    .param p1, "child"    # Lcom/flurry/org/codehaus/jackson/sym/CharsToNameCanonicalizer;

    .prologue
    .line 259
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/sym/CharsToNameCanonicalizer;->size()I

    move-result v0

    const/16 v1, 0x2ee0

    if-le v0, v1, :cond_1

    .line 265
    const/16 v0, 0x40

    invoke-direct {p0, v0}, Lcom/flurry/org/codehaus/jackson/sym/CharsToNameCanonicalizer;->initTables(I)V

    .line 285
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flurry/org/codehaus/jackson/sym/CharsToNameCanonicalizer;->_dirty:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 286
    :cond_0
    monitor-exit p0

    return-void

    .line 271
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/sym/CharsToNameCanonicalizer;->size()I

    move-result v0

    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/sym/CharsToNameCanonicalizer;->size()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 275
    iget-object v0, p1, Lcom/flurry/org/codehaus/jackson/sym/CharsToNameCanonicalizer;->_symbols:[Ljava/lang/String;

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/sym/CharsToNameCanonicalizer;->_symbols:[Ljava/lang/String;

    .line 276
    iget-object v0, p1, Lcom/flurry/org/codehaus/jackson/sym/CharsToNameCanonicalizer;->_buckets:[Lcom/flurry/org/codehaus/jackson/sym/CharsToNameCanonicalizer$Bucket;

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/sym/CharsToNameCanonicalizer;->_buckets:[Lcom/flurry/org/codehaus/jackson/sym/CharsToNameCanonicalizer$Bucket;

    .line 277
    iget v0, p1, Lcom/flurry/org/codehaus/jackson/sym/CharsToNameCanonicalizer;->_size:I

    iput v0, p0, Lcom/flurry/org/codehaus/jackson/sym/CharsToNameCanonicalizer;->_size:I

    .line 278
    iget v0, p1, Lcom/flurry/org/codehaus/jackson/sym/CharsToNameCanonicalizer;->_sizeThreshold:I

    iput v0, p0, Lcom/flurry/org/codehaus/jackson/sym/CharsToNameCanonicalizer;->_sizeThreshold:I

    .line 279
    iget v0, p1, Lcom/flurry/org/codehaus/jackson/sym/CharsToNameCanonicalizer;->_indexMask:I

    iput v0, p0, Lcom/flurry/org/codehaus/jackson/sym/CharsToNameCanonicalizer;->_indexMask:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 259
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private rehash()V
    .locals 13

    .prologue
    const/4 v11, 0x0

    .line 441
    iget-object v10, p0, Lcom/flurry/org/codehaus/jackson/sym/CharsToNameCanonicalizer;->_symbols:[Ljava/lang/String;

    array-length v8, v10

    .line 442
    .local v8, "size":I
    add-int v5, v8, v8

    .line 448
    .local v5, "newSize":I
    const/high16 v10, 0x10000

    if-le v5, v10, :cond_1

    .line 453
    const/4 v10, 0x0

    iput v10, p0, Lcom/flurry/org/codehaus/jackson/sym/CharsToNameCanonicalizer;->_size:I

    .line 454
    iget-object v10, p0, Lcom/flurry/org/codehaus/jackson/sym/CharsToNameCanonicalizer;->_symbols:[Ljava/lang/String;

    invoke-static {v10, v11}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 455
    iget-object v10, p0, Lcom/flurry/org/codehaus/jackson/sym/CharsToNameCanonicalizer;->_buckets:[Lcom/flurry/org/codehaus/jackson/sym/CharsToNameCanonicalizer$Bucket;

    invoke-static {v10, v11}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 456
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/flurry/org/codehaus/jackson/sym/CharsToNameCanonicalizer;->_dirty:Z

    .line 507
    :cond_0
    return-void

    .line 460
    :cond_1
    iget-object v7, p0, Lcom/flurry/org/codehaus/jackson/sym/CharsToNameCanonicalizer;->_symbols:[Ljava/lang/String;

    .line 461
    .local v7, "oldSyms":[Ljava/lang/String;
    iget-object v6, p0, Lcom/flurry/org/codehaus/jackson/sym/CharsToNameCanonicalizer;->_buckets:[Lcom/flurry/org/codehaus/jackson/sym/CharsToNameCanonicalizer$Bucket;

    .line 462
    .local v6, "oldBuckets":[Lcom/flurry/org/codehaus/jackson/sym/CharsToNameCanonicalizer$Bucket;
    new-array v10, v5, [Ljava/lang/String;

    iput-object v10, p0, Lcom/flurry/org/codehaus/jackson/sym/CharsToNameCanonicalizer;->_symbols:[Ljava/lang/String;

    .line 463
    shr-int/lit8 v10, v5, 0x1

    new-array v10, v10, [Lcom/flurry/org/codehaus/jackson/sym/CharsToNameCanonicalizer$Bucket;

    iput-object v10, p0, Lcom/flurry/org/codehaus/jackson/sym/CharsToNameCanonicalizer;->_buckets:[Lcom/flurry/org/codehaus/jackson/sym/CharsToNameCanonicalizer$Bucket;

    .line 465
    add-int/lit8 v10, v5, -0x1

    iput v10, p0, Lcom/flurry/org/codehaus/jackson/sym/CharsToNameCanonicalizer;->_indexMask:I

    .line 466
    iget v10, p0, Lcom/flurry/org/codehaus/jackson/sym/CharsToNameCanonicalizer;->_sizeThreshold:I

    iget v11, p0, Lcom/flurry/org/codehaus/jackson/sym/CharsToNameCanonicalizer;->_sizeThreshold:I

    add-int/2addr v10, v11

    iput v10, p0, Lcom/flurry/org/codehaus/jackson/sym/CharsToNameCanonicalizer;->_sizeThreshold:I

    .line 468
    const/4 v2, 0x0

    .line 473
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v8, :cond_4

    .line 474
    aget-object v9, v7, v3

    .line 475
    .local v9, "symbol":Ljava/lang/String;
    if-eqz v9, :cond_2

    .line 476
    add-int/lit8 v2, v2, 0x1

    .line 477
    invoke-static {v9}, Lcom/flurry/org/codehaus/jackson/sym/CharsToNameCanonicalizer;->calcHash(Ljava/lang/String;)I

    move-result v10

    iget v11, p0, Lcom/flurry/org/codehaus/jackson/sym/CharsToNameCanonicalizer;->_indexMask:I

    and-int v4, v10, v11

    .line 478
    .local v4, "index":I
    iget-object v10, p0, Lcom/flurry/org/codehaus/jackson/sym/CharsToNameCanonicalizer;->_symbols:[Ljava/lang/String;

    aget-object v10, v10, v4

    if-nez v10, :cond_3

    .line 479
    iget-object v10, p0, Lcom/flurry/org/codehaus/jackson/sym/CharsToNameCanonicalizer;->_symbols:[Ljava/lang/String;

    aput-object v9, v10, v4

    .line 473
    .end local v4    # "index":I
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 481
    .restart local v4    # "index":I
    :cond_3
    shr-int/lit8 v1, v4, 0x1

    .line 482
    .local v1, "bix":I
    iget-object v10, p0, Lcom/flurry/org/codehaus/jackson/sym/CharsToNameCanonicalizer;->_buckets:[Lcom/flurry/org/codehaus/jackson/sym/CharsToNameCanonicalizer$Bucket;

    new-instance v11, Lcom/flurry/org/codehaus/jackson/sym/CharsToNameCanonicalizer$Bucket;

    iget-object v12, p0, Lcom/flurry/org/codehaus/jackson/sym/CharsToNameCanonicalizer;->_buckets:[Lcom/flurry/org/codehaus/jackson/sym/CharsToNameCanonicalizer$Bucket;

    aget-object v12, v12, v1

    invoke-direct {v11, v9, v12}, Lcom/flurry/org/codehaus/jackson/sym/CharsToNameCanonicalizer$Bucket;-><init>(Ljava/lang/String;Lcom/flurry/org/codehaus/jackson/sym/CharsToNameCanonicalizer$Bucket;)V

    aput-object v11, v10, v1

    goto :goto_1

    .line 487
    .end local v1    # "bix":I
    .end local v4    # "index":I
    .end local v9    # "symbol":Ljava/lang/String;
    :cond_4
    shr-int/lit8 v8, v8, 0x1

    .line 488
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v8, :cond_7

    .line 489
    aget-object v0, v6, v3

    .line 490
    .local v0, "b":Lcom/flurry/org/codehaus/jackson/sym/CharsToNameCanonicalizer$Bucket;
    :goto_3
    if-eqz v0, :cond_6

    .line 491
    add-int/lit8 v2, v2, 0x1

    .line 492
    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/sym/CharsToNameCanonicalizer$Bucket;->getSymbol()Ljava/lang/String;

    move-result-object v9

    .line 493
    .restart local v9    # "symbol":Ljava/lang/String;
    invoke-static {v9}, Lcom/flurry/org/codehaus/jackson/sym/CharsToNameCanonicalizer;->calcHash(Ljava/lang/String;)I

    move-result v10

    iget v11, p0, Lcom/flurry/org/codehaus/jackson/sym/CharsToNameCanonicalizer;->_indexMask:I

    and-int v4, v10, v11

    .line 494
    .restart local v4    # "index":I
    iget-object v10, p0, Lcom/flurry/org/codehaus/jackson/sym/CharsToNameCanonicalizer;->_symbols:[Ljava/lang/String;

    aget-object v10, v10, v4

    if-nez v10, :cond_5

    .line 495
    iget-object v10, p0, Lcom/flurry/org/codehaus/jackson/sym/CharsToNameCanonicalizer;->_symbols:[Ljava/lang/String;

    aput-object v9, v10, v4

    .line 500
    :goto_4
    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/sym/CharsToNameCanonicalizer$Bucket;->getNext()Lcom/flurry/org/codehaus/jackson/sym/CharsToNameCanonicalizer$Bucket;

    move-result-object v0

    .line 501
    goto :goto_3

    .line 497
    :cond_5
    shr-int/lit8 v1, v4, 0x1

    .line 498
    .restart local v1    # "bix":I
    iget-object v10, p0, Lcom/flurry/org/codehaus/jackson/sym/CharsToNameCanonicalizer;->_buckets:[Lcom/flurry/org/codehaus/jackson/sym/CharsToNameCanonicalizer$Bucket;

    new-instance v11, Lcom/flurry/org/codehaus/jackson/sym/CharsToNameCanonicalizer$Bucket;

    iget-object v12, p0, Lcom/flurry/org/codehaus/jackson/sym/CharsToNameCanonicalizer;->_buckets:[Lcom/flurry/org/codehaus/jackson/sym/CharsToNameCanonicalizer$Bucket;

    aget-object v12, v12, v1

    invoke-direct {v11, v9, v12}, Lcom/flurry/org/codehaus/jackson/sym/CharsToNameCanonicalizer$Bucket;-><init>(Ljava/lang/String;Lcom/flurry/org/codehaus/jackson/sym/CharsToNameCanonicalizer$Bucket;)V

    aput-object v11, v10, v1

    goto :goto_4

    .line 488
    .end local v1    # "bix":I
    .end local v4    # "index":I
    .end local v9    # "symbol":Ljava/lang/String;
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 504
    .end local v0    # "b":Lcom/flurry/org/codehaus/jackson/sym/CharsToNameCanonicalizer$Bucket;
    :cond_7
    iget v10, p0, Lcom/flurry/org/codehaus/jackson/sym/CharsToNameCanonicalizer;->_size:I

    if-eq v2, v10, :cond_0

    .line 505
    new-instance v10, Ljava/lang/Error;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Internal error on SymbolTable.rehash(): had "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/flurry/org/codehaus/jackson/sym/CharsToNameCanonicalizer;->_size:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " entries; now have "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v10
.end method


# virtual methods
.method public findSymbol([CIII)Ljava/lang/String;
    .locals 8
    .param p1, "buffer"    # [C
    .param p2, "start"    # I
    .param p3, "len"    # I
    .param p4, "hash"    # I

    .prologue
    const/4 v7, 0x1

    .line 322
    if-ge p3, v7, :cond_1

    .line 323
    const-string v4, ""

    .line 382
    :cond_0
    :goto_0
    return-object v4

    .line 325
    :cond_1
    iget-boolean v5, p0, Lcom/flurry/org/codehaus/jackson/sym/CharsToNameCanonicalizer;->_canonicalize:Z

    if-nez v5, :cond_2

    .line 326
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    goto :goto_0

    .line 329
    :cond_2
    iget v5, p0, Lcom/flurry/org/codehaus/jackson/sym/CharsToNameCanonicalizer;->_indexMask:I

    and-int/2addr p4, v5

    .line 331
    iget-object v5, p0, Lcom/flurry/org/codehaus/jackson/sym/CharsToNameCanonicalizer;->_symbols:[Ljava/lang/String;

    aget-object v4, v5, p4

    .line 334
    .local v4, "sym":Ljava/lang/String;
    if-eqz v4, :cond_5

    .line 336
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v5, p3, :cond_4

    .line 337
    const/4 v2, 0x0

    .line 339
    .local v2, "i":I
    :cond_3
    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    add-int v6, p2, v2

    aget-char v6, p1, v6

    if-eq v5, v6, :cond_8

    .line 344
    :goto_1
    if-eq v2, p3, :cond_0

    .line 349
    .end local v2    # "i":I
    :cond_4
    iget-object v5, p0, Lcom/flurry/org/codehaus/jackson/sym/CharsToNameCanonicalizer;->_buckets:[Lcom/flurry/org/codehaus/jackson/sym/CharsToNameCanonicalizer$Bucket;

    shr-int/lit8 v6, p4, 0x1

    aget-object v0, v5, v6

    .line 350
    .local v0, "b":Lcom/flurry/org/codehaus/jackson/sym/CharsToNameCanonicalizer$Bucket;
    if-eqz v0, :cond_5

    .line 351
    invoke-virtual {v0, p1, p2, p3}, Lcom/flurry/org/codehaus/jackson/sym/CharsToNameCanonicalizer$Bucket;->find([CII)Ljava/lang/String;

    move-result-object v4

    .line 352
    if-nez v4, :cond_0

    .line 358
    .end local v0    # "b":Lcom/flurry/org/codehaus/jackson/sym/CharsToNameCanonicalizer$Bucket;
    :cond_5
    iget-boolean v5, p0, Lcom/flurry/org/codehaus/jackson/sym/CharsToNameCanonicalizer;->_dirty:Z

    if-nez v5, :cond_9

    .line 359
    invoke-direct {p0}, Lcom/flurry/org/codehaus/jackson/sym/CharsToNameCanonicalizer;->copyArrays()V

    .line 360
    iput-boolean v7, p0, Lcom/flurry/org/codehaus/jackson/sym/CharsToNameCanonicalizer;->_dirty:Z

    .line 368
    :cond_6
    :goto_2
    iget v5, p0, Lcom/flurry/org/codehaus/jackson/sym/CharsToNameCanonicalizer;->_size:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/flurry/org/codehaus/jackson/sym/CharsToNameCanonicalizer;->_size:I

    .line 370
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    .line 371
    .local v3, "newSymbol":Ljava/lang/String;
    iget-boolean v5, p0, Lcom/flurry/org/codehaus/jackson/sym/CharsToNameCanonicalizer;->_intern:Z

    if-eqz v5, :cond_7

    .line 372
    sget-object v5, Lcom/flurry/org/codehaus/jackson/util/InternCache;->instance:Lcom/flurry/org/codehaus/jackson/util/InternCache;

    invoke-virtual {v5, v3}, Lcom/flurry/org/codehaus/jackson/util/InternCache;->intern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 375
    :cond_7
    iget-object v5, p0, Lcom/flurry/org/codehaus/jackson/sym/CharsToNameCanonicalizer;->_symbols:[Ljava/lang/String;

    aget-object v5, v5, p4

    if-nez v5, :cond_a

    .line 376
    iget-object v5, p0, Lcom/flurry/org/codehaus/jackson/sym/CharsToNameCanonicalizer;->_symbols:[Ljava/lang/String;

    aput-object v3, v5, p4

    :goto_3
    move-object v4, v3

    .line 382
    goto :goto_0

    .line 342
    .end local v3    # "newSymbol":Ljava/lang/String;
    .restart local v2    # "i":I
    :cond_8
    add-int/lit8 v2, v2, 0x1

    if-lt v2, p3, :cond_3

    goto :goto_1

    .line 361
    .end local v2    # "i":I
    :cond_9
    iget v5, p0, Lcom/flurry/org/codehaus/jackson/sym/CharsToNameCanonicalizer;->_size:I

    iget v6, p0, Lcom/flurry/org/codehaus/jackson/sym/CharsToNameCanonicalizer;->_sizeThreshold:I

    if-lt v5, v6, :cond_6

    .line 362
    invoke-direct {p0}, Lcom/flurry/org/codehaus/jackson/sym/CharsToNameCanonicalizer;->rehash()V

    .line 366
    invoke-static {p1, p2, p3}, Lcom/flurry/org/codehaus/jackson/sym/CharsToNameCanonicalizer;->calcHash([CII)I

    move-result v5

    iget v6, p0, Lcom/flurry/org/codehaus/jackson/sym/CharsToNameCanonicalizer;->_indexMask:I

    and-int p4, v5, v6

    goto :goto_2

    .line 378
    .restart local v3    # "newSymbol":Ljava/lang/String;
    :cond_a
    shr-int/lit8 v1, p4, 0x1

    .line 379
    .local v1, "bix":I
    iget-object v5, p0, Lcom/flurry/org/codehaus/jackson/sym/CharsToNameCanonicalizer;->_buckets:[Lcom/flurry/org/codehaus/jackson/sym/CharsToNameCanonicalizer$Bucket;

    new-instance v6, Lcom/flurry/org/codehaus/jackson/sym/CharsToNameCanonicalizer$Bucket;

    iget-object v7, p0, Lcom/flurry/org/codehaus/jackson/sym/CharsToNameCanonicalizer;->_buckets:[Lcom/flurry/org/codehaus/jackson/sym/CharsToNameCanonicalizer$Bucket;

    aget-object v7, v7, v1

    invoke-direct {v6, v3, v7}, Lcom/flurry/org/codehaus/jackson/sym/CharsToNameCanonicalizer$Bucket;-><init>(Ljava/lang/String;Lcom/flurry/org/codehaus/jackson/sym/CharsToNameCanonicalizer$Bucket;)V

    aput-object v6, v5, v1

    goto :goto_3
.end method

.method public declared-synchronized makeChild(ZZ)Lcom/flurry/org/codehaus/jackson/sym/CharsToNameCanonicalizer;
    .locals 7
    .param p1, "canonicalize"    # Z
    .param p2, "intern"    # Z

    .prologue
    .line 236
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/flurry/org/codehaus/jackson/sym/CharsToNameCanonicalizer;

    iget-object v4, p0, Lcom/flurry/org/codehaus/jackson/sym/CharsToNameCanonicalizer;->_symbols:[Ljava/lang/String;

    iget-object v5, p0, Lcom/flurry/org/codehaus/jackson/sym/CharsToNameCanonicalizer;->_buckets:[Lcom/flurry/org/codehaus/jackson/sym/CharsToNameCanonicalizer$Bucket;

    iget v6, p0, Lcom/flurry/org/codehaus/jackson/sym/CharsToNameCanonicalizer;->_size:I

    move-object v1, p0

    move v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v6}, Lcom/flurry/org/codehaus/jackson/sym/CharsToNameCanonicalizer;-><init>(Lcom/flurry/org/codehaus/jackson/sym/CharsToNameCanonicalizer;ZZ[Ljava/lang/String;[Lcom/flurry/org/codehaus/jackson/sym/CharsToNameCanonicalizer$Bucket;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public maybeDirty()Z
    .locals 1

    .prologue
    .line 312
    iget-boolean v0, p0, Lcom/flurry/org/codehaus/jackson/sym/CharsToNameCanonicalizer;->_dirty:Z

    return v0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 291
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/sym/CharsToNameCanonicalizer;->maybeDirty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 302
    :cond_0
    :goto_0
    return-void

    .line 294
    :cond_1
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/sym/CharsToNameCanonicalizer;->_parent:Lcom/flurry/org/codehaus/jackson/sym/CharsToNameCanonicalizer;

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/sym/CharsToNameCanonicalizer;->_parent:Lcom/flurry/org/codehaus/jackson/sym/CharsToNameCanonicalizer;

    invoke-direct {v0, p0}, Lcom/flurry/org/codehaus/jackson/sym/CharsToNameCanonicalizer;->mergeChild(Lcom/flurry/org/codehaus/jackson/sym/CharsToNameCanonicalizer;)V

    .line 300
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flurry/org/codehaus/jackson/sym/CharsToNameCanonicalizer;->_dirty:Z

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 310
    iget v0, p0, Lcom/flurry/org/codehaus/jackson/sym/CharsToNameCanonicalizer;->_size:I

    return v0
.end method
