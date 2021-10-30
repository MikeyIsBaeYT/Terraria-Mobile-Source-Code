.class public final Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;
.super Ljava/lang/Object;
.source "BytesToNameCanonicalizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;
    }
.end annotation


# static fields
.field protected static final DEFAULT_TABLE_SIZE:I = 0x40

.field static final INITIAL_COLLISION_LEN:I = 0x20

.field static final LAST_VALID_BUCKET:I = 0xfe

.field static final MAX_ENTRIES_FOR_REUSE:I = 0x1770

.field protected static final MAX_TABLE_SIZE:I = 0x10000

.field static final MIN_HASH_SIZE:I = 0x10


# instance fields
.field private _collCount:I

.field private _collEnd:I

.field private _collList:[Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;

.field private _collListShared:Z

.field private _count:I

.field final _intern:Z

.field private _mainHash:[I

.field private _mainHashMask:I

.field private _mainHashShared:Z

.field private _mainNames:[Lcom/flurry/org/codehaus/jackson/sym/Name;

.field private _mainNamesShared:Z

.field private transient _needRehash:Z

.field final _parent:Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;


# direct methods
.method private constructor <init>(IZ)V
    .locals 2
    .param p1, "hashSize"    # I
    .param p2, "intern"    # Z

    .prologue
    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 201
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_parent:Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;

    .line 202
    iput-boolean p2, p0, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_intern:Z

    .line 206
    const/16 v1, 0x10

    if-ge p1, v1, :cond_1

    .line 207
    const/16 p1, 0x10

    .line 220
    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->initTables(I)V

    .line 221
    return-void

    .line 212
    :cond_1
    add-int/lit8 v1, p1, -0x1

    and-int/2addr v1, p1

    if-eqz v1, :cond_0

    .line 213
    const/16 v0, 0x10

    .line 214
    .local v0, "curr":I
    :goto_1
    if-ge v0, p1, :cond_2

    .line 215
    add-int/2addr v0, v0

    goto :goto_1

    .line 217
    :cond_2
    move p1, v0

    goto :goto_0
.end method

.method private constructor <init>(Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;Z)V
    .locals 2
    .param p1, "parent"    # Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;
    .param p2, "intern"    # Z

    .prologue
    const/4 v1, 0x1

    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 228
    iput-object p1, p0, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_parent:Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;

    .line 229
    iput-boolean p2, p0, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_intern:Z

    .line 232
    iget v0, p1, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_count:I

    iput v0, p0, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_count:I

    .line 233
    iget v0, p1, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainHashMask:I

    iput v0, p0, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainHashMask:I

    .line 234
    iget-object v0, p1, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainHash:[I

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainHash:[I

    .line 235
    iget-object v0, p1, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainNames:[Lcom/flurry/org/codehaus/jackson/sym/Name;

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainNames:[Lcom/flurry/org/codehaus/jackson/sym/Name;

    .line 236
    iget-object v0, p1, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collList:[Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collList:[Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;

    .line 237
    iget v0, p1, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collCount:I

    iput v0, p0, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collCount:I

    .line 238
    iget v0, p1, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collEnd:I

    iput v0, p0, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collEnd:I

    .line 239
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_needRehash:Z

    .line 241
    iput-boolean v1, p0, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainHashShared:Z

    .line 242
    iput-boolean v1, p0, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainNamesShared:Z

    .line 243
    iput-boolean v1, p0, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collListShared:Z

    .line 244
    return-void
.end method

.method private _addSymbol(ILcom/flurry/org/codehaus/jackson/sym/Name;)V
    .locals 9
    .param p1, "hash"    # I
    .param p2, "symbol"    # Lcom/flurry/org/codehaus/jackson/sym/Name;

    .prologue
    const/4 v8, 0x1

    .line 623
    iget-boolean v5, p0, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainHashShared:Z

    if-eqz v5, :cond_0

    .line 624
    invoke-direct {p0}, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->unshareMain()V

    .line 627
    :cond_0
    iget-boolean v5, p0, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_needRehash:Z

    if-eqz v5, :cond_1

    .line 628
    invoke-direct {p0}, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->rehash()V

    .line 631
    :cond_1
    iget v5, p0, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_count:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_count:I

    .line 636
    iget v5, p0, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainHashMask:I

    and-int v4, p1, v5

    .line 637
    .local v4, "ix":I
    iget-object v5, p0, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainNames:[Lcom/flurry/org/codehaus/jackson/sym/Name;

    aget-object v5, v5, v4

    if-nez v5, :cond_4

    .line 638
    iget-object v5, p0, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainHash:[I

    shl-int/lit8 v6, p1, 0x8

    aput v6, v5, v4

    .line 639
    iget-boolean v5, p0, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainNamesShared:Z

    if-eqz v5, :cond_2

    .line 640
    invoke-direct {p0}, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->unshareNames()V

    .line 642
    :cond_2
    iget-object v5, p0, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainNames:[Lcom/flurry/org/codehaus/jackson/sym/Name;

    aput-object p2, v5, v4

    .line 679
    :goto_0
    iget-object v5, p0, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainHash:[I

    array-length v3, v5

    .line 680
    .local v3, "hashSize":I
    iget v5, p0, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_count:I

    shr-int/lit8 v6, v3, 0x1

    if-le v5, v6, :cond_3

    .line 681
    shr-int/lit8 v2, v3, 0x2

    .line 685
    .local v2, "hashQuarter":I
    iget v5, p0, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_count:I

    sub-int v6, v3, v2

    if-le v5, v6, :cond_9

    .line 686
    iput-boolean v8, p0, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_needRehash:Z

    .line 692
    .end local v2    # "hashQuarter":I
    :cond_3
    :goto_1
    return-void

    .line 647
    .end local v3    # "hashSize":I
    :cond_4
    iget-boolean v5, p0, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collListShared:Z

    if-eqz v5, :cond_5

    .line 648
    invoke-direct {p0}, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->unshareCollision()V

    .line 651
    :cond_5
    iget v5, p0, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collCount:I

    .line 652
    iget-object v5, p0, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainHash:[I

    aget v1, v5, v4

    .line 653
    .local v1, "entryValue":I
    and-int/lit16 v0, v1, 0xff

    .line 654
    .local v0, "bucket":I
    if-nez v0, :cond_8

    .line 655
    iget v5, p0, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collEnd:I

    const/16 v6, 0xfe

    if-gt v5, v6, :cond_7

    .line 656
    iget v0, p0, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collEnd:I

    .line 657
    iget v5, p0, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collEnd:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collEnd:I

    .line 659
    iget-object v5, p0, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collList:[Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;

    array-length v5, v5

    if-lt v0, v5, :cond_6

    .line 660
    invoke-direct {p0}, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->expandCollision()V

    .line 666
    :cond_6
    :goto_2
    iget-object v5, p0, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainHash:[I

    and-int/lit16 v6, v1, -0x100

    add-int/lit8 v7, v0, 0x1

    or-int/2addr v6, v7

    aput v6, v5, v4

    .line 672
    :goto_3
    iget-object v5, p0, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collList:[Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;

    new-instance v6, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;

    iget-object v7, p0, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collList:[Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;

    aget-object v7, v7, v0

    invoke-direct {v6, p2, v7}, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;-><init>(Lcom/flurry/org/codehaus/jackson/sym/Name;Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;)V

    aput-object v6, v5, v0

    goto :goto_0

    .line 663
    :cond_7
    invoke-direct {p0}, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->findBestBucket()I

    move-result v0

    goto :goto_2

    .line 668
    :cond_8
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 687
    .end local v0    # "bucket":I
    .end local v1    # "entryValue":I
    .restart local v2    # "hashQuarter":I
    .restart local v3    # "hashSize":I
    :cond_9
    iget v5, p0, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collCount:I

    if-lt v5, v2, :cond_3

    .line 688
    iput-boolean v8, p0, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_needRehash:Z

    goto :goto_1
.end method

.method public static final calcHash(I)I
    .locals 2
    .param p0, "firstQuad"    # I

    .prologue
    .line 512
    move v0, p0

    .line 513
    .local v0, "hash":I
    ushr-int/lit8 v1, v0, 0x10

    xor-int/2addr v0, v1

    .line 514
    ushr-int/lit8 v1, v0, 0x8

    xor-int/2addr v0, v1

    .line 515
    return v0
.end method

.method public static final calcHash(II)I
    .locals 2
    .param p0, "firstQuad"    # I
    .param p1, "secondQuad"    # I

    .prologue
    .line 520
    mul-int/lit8 v1, p0, 0x1f

    add-int v0, v1, p1

    .line 525
    .local v0, "hash":I
    ushr-int/lit8 v1, v0, 0x10

    xor-int/2addr v0, v1

    .line 526
    ushr-int/lit8 v1, v0, 0x8

    xor-int/2addr v0, v1

    .line 527
    return v0
.end method

.method public static final calcHash([II)I
    .locals 4
    .param p0, "quads"    # [I
    .param p1, "qlen"    # I

    .prologue
    .line 533
    const/4 v2, 0x0

    aget v0, p0, v2

    .line 534
    .local v0, "hash":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_0

    .line 535
    mul-int/lit8 v2, v0, 0x1f

    aget v3, p0, v1

    add-int v0, v2, v3

    .line 534
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 538
    :cond_0
    ushr-int/lit8 v2, v0, 0x10

    xor-int/2addr v0, v2

    .line 539
    ushr-int/lit8 v2, v0, 0x8

    xor-int/2addr v0, v2

    .line 541
    return v0
.end method

.method private static constructName(ILjava/lang/String;II)Lcom/flurry/org/codehaus/jackson/sym/Name;
    .locals 1
    .param p0, "hash"    # I
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "q1"    # I
    .param p3, "q2"    # I

    .prologue
    .line 880
    if-nez p3, :cond_0

    .line 881
    new-instance v0, Lcom/flurry/org/codehaus/jackson/sym/Name1;

    invoke-direct {v0, p1, p0, p2}, Lcom/flurry/org/codehaus/jackson/sym/Name1;-><init>(Ljava/lang/String;II)V

    .line 883
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/flurry/org/codehaus/jackson/sym/Name2;

    invoke-direct {v0, p1, p0, p2, p3}, Lcom/flurry/org/codehaus/jackson/sym/Name2;-><init>(Ljava/lang/String;III)V

    goto :goto_0
.end method

.method private static constructName(ILjava/lang/String;[II)Lcom/flurry/org/codehaus/jackson/sym/Name;
    .locals 8
    .param p0, "hash"    # I
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "quads"    # [I
    .param p3, "qlen"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 888
    const/4 v0, 0x4

    if-ge p3, v0, :cond_0

    .line 889
    packed-switch p3, :pswitch_data_0

    .line 900
    :cond_0
    new-array v6, p3, [I

    .line 901
    .local v6, "buf":[I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, p3, :cond_1

    .line 902
    aget v0, p2, v7

    aput v0, v6, v7

    .line 901
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 891
    .end local v6    # "buf":[I
    .end local v7    # "i":I
    :pswitch_0
    new-instance v0, Lcom/flurry/org/codehaus/jackson/sym/Name1;

    aget v1, p2, v1

    invoke-direct {v0, p1, p0, v1}, Lcom/flurry/org/codehaus/jackson/sym/Name1;-><init>(Ljava/lang/String;II)V

    .line 904
    :goto_1
    return-object v0

    .line 893
    :pswitch_1
    new-instance v0, Lcom/flurry/org/codehaus/jackson/sym/Name2;

    aget v1, p2, v1

    aget v2, p2, v2

    invoke-direct {v0, p1, p0, v1, v2}, Lcom/flurry/org/codehaus/jackson/sym/Name2;-><init>(Ljava/lang/String;III)V

    goto :goto_1

    .line 895
    :pswitch_2
    new-instance v0, Lcom/flurry/org/codehaus/jackson/sym/Name3;

    aget v3, p2, v1

    aget v4, p2, v2

    const/4 v1, 0x2

    aget v5, p2, v1

    move-object v1, p1

    move v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/flurry/org/codehaus/jackson/sym/Name3;-><init>(Ljava/lang/String;IIII)V

    goto :goto_1

    .line 904
    .restart local v6    # "buf":[I
    .restart local v7    # "i":I
    :cond_1
    new-instance v0, Lcom/flurry/org/codehaus/jackson/sym/NameN;

    invoke-direct {v0, p1, p0, v6, p3}, Lcom/flurry/org/codehaus/jackson/sym/NameN;-><init>(Ljava/lang/String;I[II)V

    goto :goto_1

    .line 889
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static createRoot()Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;
    .locals 3

    .prologue
    .line 167
    new-instance v0, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;

    const/16 v1, 0x40

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;-><init>(IZ)V

    return-object v0
.end method

.method private expandCollision()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 865
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collList:[Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;

    .line 866
    .local v1, "old":[Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;
    array-length v0, v1

    .line 867
    .local v0, "len":I
    add-int v2, v0, v0

    new-array v2, v2, [Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;

    iput-object v2, p0, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collList:[Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;

    .line 868
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collList:[Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 869
    return-void
.end method

.method private findBestBucket()I
    .locals 7

    .prologue
    .line 808
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collList:[Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;

    .line 809
    .local v2, "buckets":[Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;
    const v0, 0x7fffffff

    .line 810
    .local v0, "bestCount":I
    const/4 v1, -0x1

    .line 812
    .local v1, "bestIx":I
    const/4 v4, 0x0

    .local v4, "i":I
    iget v5, p0, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collEnd:I

    .local v5, "len":I
    :goto_0
    if-ge v4, v5, :cond_2

    .line 813
    aget-object v6, v2, v4

    invoke-virtual {v6}, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;->length()I

    move-result v3

    .line 814
    .local v3, "count":I
    if-ge v3, v0, :cond_1

    .line 815
    const/4 v6, 0x1

    if-ne v3, v6, :cond_0

    .line 822
    .end local v3    # "count":I
    .end local v4    # "i":I
    :goto_1
    return v4

    .line 818
    .restart local v3    # "count":I
    .restart local v4    # "i":I
    :cond_0
    move v0, v3

    .line 819
    move v1, v4

    .line 812
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .end local v3    # "count":I
    :cond_2
    move v4, v1

    .line 822
    goto :goto_1
.end method

.method public static getEmptyName()Lcom/flurry/org/codehaus/jackson/sym/Name;
    .locals 1

    .prologue
    .line 323
    invoke-static {}, Lcom/flurry/org/codehaus/jackson/sym/Name1;->getEmptyName()Lcom/flurry/org/codehaus/jackson/sym/Name1;

    move-result-object v0

    return-object v0
.end method

.method private initTables(I)V
    .locals 2
    .param p1, "hashSize"    # I

    .prologue
    const/4 v1, 0x0

    .line 248
    iput v1, p0, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_count:I

    .line 249
    new-array v0, p1, [I

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainHash:[I

    .line 250
    new-array v0, p1, [Lcom/flurry/org/codehaus/jackson/sym/Name;

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainNames:[Lcom/flurry/org/codehaus/jackson/sym/Name;

    .line 251
    iput-boolean v1, p0, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainHashShared:Z

    .line 252
    iput-boolean v1, p0, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainNamesShared:Z

    .line 253
    add-int/lit8 v0, p1, -0x1

    iput v0, p0, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainHashMask:I

    .line 255
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collListShared:Z

    .line 256
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collList:[Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;

    .line 257
    iput v1, p0, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collEnd:I

    .line 259
    iput-boolean v1, p0, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_needRehash:Z

    .line 260
    return-void
.end method

.method private markAsShared()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 298
    iput-boolean v0, p0, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainHashShared:Z

    .line 299
    iput-boolean v0, p0, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainNamesShared:Z

    .line 300
    iput-boolean v0, p0, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collListShared:Z

    .line 301
    return-void
.end method

.method private declared-synchronized mergeChild(Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;)V
    .locals 3
    .param p1, "child"    # Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;

    .prologue
    .line 265
    monitor-enter p0

    :try_start_0
    iget v0, p1, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_count:I

    .line 266
    .local v0, "childCount":I
    iget v1, p0, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gt v0, v1, :cond_0

    .line 294
    :goto_0
    monitor-exit p0

    return-void

    .line 276
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->size()I

    move-result v1

    const/16 v2, 0x1770

    if-le v1, v2, :cond_1

    .line 282
    const/16 v1, 0x40

    invoke-direct {p0, v1}, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->initTables(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 265
    .end local v0    # "childCount":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 284
    .restart local v0    # "childCount":I
    :cond_1
    :try_start_2
    iget v1, p1, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_count:I

    iput v1, p0, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_count:I

    .line 285
    iget-object v1, p1, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainHash:[I

    iput-object v1, p0, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainHash:[I

    .line 286
    iget-object v1, p1, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainNames:[Lcom/flurry/org/codehaus/jackson/sym/Name;

    iput-object v1, p0, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainNames:[Lcom/flurry/org/codehaus/jackson/sym/Name;

    .line 287
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainHashShared:Z

    .line 288
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainNamesShared:Z

    .line 289
    iget v1, p1, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainHashMask:I

    iput v1, p0, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainHashMask:I

    .line 290
    iget-object v1, p1, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collList:[Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;

    iput-object v1, p0, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collList:[Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;

    .line 291
    iget v1, p1, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collCount:I

    iput v1, p0, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collCount:I

    .line 292
    iget v1, p1, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collEnd:I

    iput v1, p0, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collEnd:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private nukeSymbols()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 793
    iput v1, p0, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_count:I

    .line 794
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainHash:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 795
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainNames:[Lcom/flurry/org/codehaus/jackson/sym/Name;

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 796
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collList:[Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 797
    iput v1, p0, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collCount:I

    .line 798
    iput v1, p0, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collEnd:I

    .line 799
    return-void
.end method

.method private rehash()V
    .locals 19

    .prologue
    .line 696
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_needRehash:Z

    .line 698
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainNamesShared:Z

    .line 704
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainHash:[I

    .line 705
    .local v11, "oldMainHash":[I
    array-length v7, v11

    .line 706
    .local v7, "len":I
    add-int v8, v7, v7

    .line 711
    .local v8, "newLen":I
    const/high16 v16, 0x10000

    move/from16 v0, v16

    if-le v8, v0, :cond_1

    .line 712
    invoke-direct/range {p0 .. p0}, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->nukeSymbols()V

    .line 785
    :cond_0
    return-void

    .line 716
    :cond_1
    new-array v0, v8, [I

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainHash:[I

    .line 717
    add-int/lit8 v16, v8, -0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainHashMask:I

    .line 718
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainNames:[Lcom/flurry/org/codehaus/jackson/sym/Name;

    .line 719
    .local v12, "oldNames":[Lcom/flurry/org/codehaus/jackson/sym/Name;
    new-array v0, v8, [Lcom/flurry/org/codehaus/jackson/sym/Name;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainNames:[Lcom/flurry/org/codehaus/jackson/sym/Name;

    .line 720
    const/4 v14, 0x0

    .line 721
    .local v14, "symbolsSeen":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v7, :cond_3

    .line 722
    aget-object v13, v12, v5

    .line 723
    .local v13, "symbol":Lcom/flurry/org/codehaus/jackson/sym/Name;
    if-eqz v13, :cond_2

    .line 724
    add-int/lit8 v14, v14, 0x1

    .line 725
    invoke-virtual {v13}, Lcom/flurry/org/codehaus/jackson/sym/Name;->hashCode()I

    move-result v4

    .line 726
    .local v4, "hash":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainHashMask:I

    move/from16 v16, v0

    and-int v6, v4, v16

    .line 727
    .local v6, "ix":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainNames:[Lcom/flurry/org/codehaus/jackson/sym/Name;

    move-object/from16 v16, v0

    aput-object v13, v16, v6

    .line 728
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainHash:[I

    move-object/from16 v16, v0

    shl-int/lit8 v17, v4, 0x8

    aput v17, v16, v6

    .line 721
    .end local v4    # "hash":I
    .end local v6    # "ix":I
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 736
    .end local v13    # "symbol":Lcom/flurry/org/codehaus/jackson/sym/Name;
    :cond_3
    move-object/from16 v0, p0

    iget v10, v0, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collEnd:I

    .line 737
    .local v10, "oldEnd":I
    if-eqz v10, :cond_0

    .line 741
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collCount:I

    .line 742
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collEnd:I

    .line 743
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collListShared:Z

    .line 745
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collList:[Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;

    .line 746
    .local v9, "oldBuckets":[Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;
    array-length v0, v9

    move/from16 v16, v0

    move/from16 v0, v16

    new-array v0, v0, [Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collList:[Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;

    .line 747
    const/4 v5, 0x0

    :goto_1
    if-ge v5, v10, :cond_9

    .line 748
    aget-object v3, v9, v5

    .local v3, "curr":Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;
    :goto_2
    if-eqz v3, :cond_8

    .line 749
    add-int/lit8 v14, v14, 0x1

    .line 750
    iget-object v13, v3, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;->_name:Lcom/flurry/org/codehaus/jackson/sym/Name;

    .line 751
    .restart local v13    # "symbol":Lcom/flurry/org/codehaus/jackson/sym/Name;
    invoke-virtual {v13}, Lcom/flurry/org/codehaus/jackson/sym/Name;->hashCode()I

    move-result v4

    .line 752
    .restart local v4    # "hash":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainHashMask:I

    move/from16 v16, v0

    and-int v6, v4, v16

    .line 753
    .restart local v6    # "ix":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainHash:[I

    move-object/from16 v16, v0

    aget v15, v16, v6

    .line 754
    .local v15, "val":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainNames:[Lcom/flurry/org/codehaus/jackson/sym/Name;

    move-object/from16 v16, v0

    aget-object v16, v16, v6

    if-nez v16, :cond_4

    .line 755
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainHash:[I

    move-object/from16 v16, v0

    shl-int/lit8 v17, v4, 0x8

    aput v17, v16, v6

    .line 756
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainNames:[Lcom/flurry/org/codehaus/jackson/sym/Name;

    move-object/from16 v16, v0

    aput-object v13, v16, v6

    .line 748
    :goto_3
    iget-object v3, v3, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;->_next:Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;

    goto :goto_2

    .line 758
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collCount:I

    move/from16 v16, v0

    add-int/lit8 v16, v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collCount:I

    .line 759
    and-int/lit16 v2, v15, 0xff

    .line 760
    .local v2, "bucket":I
    if-nez v2, :cond_7

    .line 761
    move-object/from16 v0, p0

    iget v0, v0, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collEnd:I

    move/from16 v16, v0

    const/16 v17, 0xfe

    move/from16 v0, v16

    move/from16 v1, v17

    if-gt v0, v1, :cond_6

    .line 762
    move-object/from16 v0, p0

    iget v2, v0, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collEnd:I

    .line 763
    move-object/from16 v0, p0

    iget v0, v0, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collEnd:I

    move/from16 v16, v0

    add-int/lit8 v16, v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collEnd:I

    .line 765
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collList:[Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    if-lt v2, v0, :cond_5

    .line 766
    invoke-direct/range {p0 .. p0}, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->expandCollision()V

    .line 772
    :cond_5
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainHash:[I

    move-object/from16 v16, v0

    and-int/lit16 v0, v15, -0x100

    move/from16 v17, v0

    add-int/lit8 v18, v2, 0x1

    or-int v17, v17, v18

    aput v17, v16, v6

    .line 777
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collList:[Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;

    move-object/from16 v16, v0

    new-instance v17, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collList:[Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;

    move-object/from16 v18, v0

    aget-object v18, v18, v2

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v0, v13, v1}, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;-><init>(Lcom/flurry/org/codehaus/jackson/sym/Name;Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;)V

    aput-object v17, v16, v2

    goto :goto_3

    .line 769
    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->findBestBucket()I

    move-result v2

    goto :goto_4

    .line 774
    :cond_7
    add-int/lit8 v2, v2, -0x1

    goto :goto_5

    .line 747
    .end local v2    # "bucket":I
    .end local v4    # "hash":I
    .end local v6    # "ix":I
    .end local v13    # "symbol":Lcom/flurry/org/codehaus/jackson/sym/Name;
    .end local v15    # "val":I
    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 782
    .end local v3    # "curr":Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_count:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-eq v14, v0, :cond_0

    .line 783
    new-instance v16, Ljava/lang/RuntimeException;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Internal error: count after rehash "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "; should be "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_count:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v16
.end method

.method private unshareCollision()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 843
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collList:[Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;

    .line 844
    .local v1, "old":[Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;
    if-nez v1, :cond_0

    .line 845
    const/16 v2, 0x20

    new-array v2, v2, [Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;

    iput-object v2, p0, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collList:[Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;

    .line 851
    :goto_0
    iput-boolean v3, p0, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collListShared:Z

    .line 852
    return-void

    .line 847
    :cond_0
    array-length v0, v1

    .line 848
    .local v0, "len":I
    new-array v2, v0, [Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;

    iput-object v2, p0, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collList:[Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;

    .line 849
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collList:[Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method private unshareMain()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 833
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainHash:[I

    .line 834
    .local v1, "old":[I
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainHash:[I

    array-length v0, v2

    .line 836
    .local v0, "len":I
    new-array v2, v0, [I

    iput-object v2, p0, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainHash:[I

    .line 837
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainHash:[I

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 838
    iput-boolean v3, p0, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainHashShared:Z

    .line 839
    return-void
.end method

.method private unshareNames()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 856
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainNames:[Lcom/flurry/org/codehaus/jackson/sym/Name;

    .line 857
    .local v1, "old":[Lcom/flurry/org/codehaus/jackson/sym/Name;
    array-length v0, v1

    .line 858
    .local v0, "len":I
    new-array v2, v0, [Lcom/flurry/org/codehaus/jackson/sym/Name;

    iput-object v2, p0, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainNames:[Lcom/flurry/org/codehaus/jackson/sym/Name;

    .line 859
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainNames:[Lcom/flurry/org/codehaus/jackson/sym/Name;

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 860
    iput-boolean v3, p0, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainNamesShared:Z

    .line 861
    return-void
.end method


# virtual methods
.method public addName(Ljava/lang/String;II)Lcom/flurry/org/codehaus/jackson/sym/Name;
    .locals 3
    .param p1, "symbolStr"    # Ljava/lang/String;
    .param p2, "q1"    # I
    .param p3, "q2"    # I

    .prologue
    .line 484
    iget-boolean v2, p0, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_intern:Z

    if-eqz v2, :cond_0

    .line 485
    sget-object v2, Lcom/flurry/org/codehaus/jackson/util/InternCache;->instance:Lcom/flurry/org/codehaus/jackson/util/InternCache;

    invoke-virtual {v2, p1}, Lcom/flurry/org/codehaus/jackson/util/InternCache;->intern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 487
    :cond_0
    if-nez p3, :cond_1

    invoke-static {p2}, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->calcHash(I)I

    move-result v0

    .line 488
    .local v0, "hash":I
    :goto_0
    invoke-static {v0, p1, p2, p3}, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->constructName(ILjava/lang/String;II)Lcom/flurry/org/codehaus/jackson/sym/Name;

    move-result-object v1

    .line 489
    .local v1, "symbol":Lcom/flurry/org/codehaus/jackson/sym/Name;
    invoke-direct {p0, v0, v1}, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_addSymbol(ILcom/flurry/org/codehaus/jackson/sym/Name;)V

    .line 490
    return-object v1

    .line 487
    .end local v0    # "hash":I
    .end local v1    # "symbol":Lcom/flurry/org/codehaus/jackson/sym/Name;
    :cond_1
    invoke-static {p2, p3}, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->calcHash(II)I

    move-result v0

    goto :goto_0
.end method

.method public addName(Ljava/lang/String;[II)Lcom/flurry/org/codehaus/jackson/sym/Name;
    .locals 3
    .param p1, "symbolStr"    # Ljava/lang/String;
    .param p2, "quads"    # [I
    .param p3, "qlen"    # I

    .prologue
    .line 495
    iget-boolean v2, p0, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_intern:Z

    if-eqz v2, :cond_0

    .line 496
    sget-object v2, Lcom/flurry/org/codehaus/jackson/util/InternCache;->instance:Lcom/flurry/org/codehaus/jackson/util/InternCache;

    invoke-virtual {v2, p1}, Lcom/flurry/org/codehaus/jackson/util/InternCache;->intern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 498
    :cond_0
    invoke-static {p2, p3}, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->calcHash([II)I

    move-result v0

    .line 499
    .local v0, "hash":I
    invoke-static {v0, p1, p2, p3}, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->constructName(ILjava/lang/String;[II)Lcom/flurry/org/codehaus/jackson/sym/Name;

    move-result-object v1

    .line 500
    .local v1, "symbol":Lcom/flurry/org/codehaus/jackson/sym/Name;
    invoke-direct {p0, v0, v1}, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_addSymbol(ILcom/flurry/org/codehaus/jackson/sym/Name;)V

    .line 501
    return-object v1
.end method

.method public findName(I)Lcom/flurry/org/codehaus/jackson/sym/Name;
    .locals 7
    .param p1, "firstQuad"    # I

    .prologue
    const/4 v5, 0x0

    .line 343
    invoke-static {p1}, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->calcHash(I)I

    move-result v1

    .line 344
    .local v1, "hash":I
    iget v6, p0, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainHashMask:I

    and-int v2, v1, v6

    .line 345
    .local v2, "ix":I
    iget-object v6, p0, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainHash:[I

    aget v4, v6, v2

    .line 350
    .local v4, "val":I
    shr-int/lit8 v6, v4, 0x8

    xor-int/2addr v6, v1

    shl-int/lit8 v6, v6, 0x8

    if-nez v6, :cond_3

    .line 352
    iget-object v6, p0, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainNames:[Lcom/flurry/org/codehaus/jackson/sym/Name;

    aget-object v3, v6, v2

    .line 353
    .local v3, "name":Lcom/flurry/org/codehaus/jackson/sym/Name;
    if-nez v3, :cond_1

    move-object v3, v5

    .line 372
    .end local v3    # "name":Lcom/flurry/org/codehaus/jackson/sym/Name;
    :cond_0
    :goto_0
    return-object v3

    .line 356
    .restart local v3    # "name":Lcom/flurry/org/codehaus/jackson/sym/Name;
    :cond_1
    invoke-virtual {v3, p1}, Lcom/flurry/org/codehaus/jackson/sym/Name;->equals(I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 363
    .end local v3    # "name":Lcom/flurry/org/codehaus/jackson/sym/Name;
    :cond_2
    and-int/lit16 v4, v4, 0xff

    .line 364
    if-lez v4, :cond_4

    .line 365
    add-int/lit8 v4, v4, -0x1

    .line 366
    iget-object v6, p0, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collList:[Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;

    aget-object v0, v6, v4

    .line 367
    .local v0, "bucket":Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;
    if-eqz v0, :cond_4

    .line 368
    const/4 v5, 0x0

    invoke-virtual {v0, v1, p1, v5}, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;->find(III)Lcom/flurry/org/codehaus/jackson/sym/Name;

    move-result-object v3

    goto :goto_0

    .line 359
    .end local v0    # "bucket":Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;
    :cond_3
    if-nez v4, :cond_2

    move-object v3, v5

    .line 360
    goto :goto_0

    :cond_4
    move-object v3, v5

    .line 372
    goto :goto_0
.end method

.method public findName(II)Lcom/flurry/org/codehaus/jackson/sym/Name;
    .locals 7
    .param p1, "firstQuad"    # I
    .param p2, "secondQuad"    # I

    .prologue
    const/4 v5, 0x0

    .line 393
    invoke-static {p1, p2}, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->calcHash(II)I

    move-result v1

    .line 394
    .local v1, "hash":I
    iget v6, p0, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainHashMask:I

    and-int v2, v1, v6

    .line 395
    .local v2, "ix":I
    iget-object v6, p0, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainHash:[I

    aget v4, v6, v2

    .line 400
    .local v4, "val":I
    shr-int/lit8 v6, v4, 0x8

    xor-int/2addr v6, v1

    shl-int/lit8 v6, v6, 0x8

    if-nez v6, :cond_3

    .line 402
    iget-object v6, p0, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainNames:[Lcom/flurry/org/codehaus/jackson/sym/Name;

    aget-object v3, v6, v2

    .line 403
    .local v3, "name":Lcom/flurry/org/codehaus/jackson/sym/Name;
    if-nez v3, :cond_1

    move-object v3, v5

    .line 422
    .end local v3    # "name":Lcom/flurry/org/codehaus/jackson/sym/Name;
    :cond_0
    :goto_0
    return-object v3

    .line 406
    .restart local v3    # "name":Lcom/flurry/org/codehaus/jackson/sym/Name;
    :cond_1
    invoke-virtual {v3, p1, p2}, Lcom/flurry/org/codehaus/jackson/sym/Name;->equals(II)Z

    move-result v6

    if-nez v6, :cond_0

    .line 413
    .end local v3    # "name":Lcom/flurry/org/codehaus/jackson/sym/Name;
    :cond_2
    and-int/lit16 v4, v4, 0xff

    .line 414
    if-lez v4, :cond_4

    .line 415
    add-int/lit8 v4, v4, -0x1

    .line 416
    iget-object v6, p0, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collList:[Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;

    aget-object v0, v6, v4

    .line 417
    .local v0, "bucket":Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;
    if-eqz v0, :cond_4

    .line 418
    invoke-virtual {v0, v1, p1, p2}, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;->find(III)Lcom/flurry/org/codehaus/jackson/sym/Name;

    move-result-object v3

    goto :goto_0

    .line 409
    .end local v0    # "bucket":Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;
    :cond_3
    if-nez v4, :cond_2

    move-object v3, v5

    .line 410
    goto :goto_0

    :cond_4
    move-object v3, v5

    .line 422
    goto :goto_0
.end method

.method public findName([II)Lcom/flurry/org/codehaus/jackson/sym/Name;
    .locals 7
    .param p1, "quads"    # [I
    .param p2, "qlen"    # I

    .prologue
    const/4 v5, 0x0

    .line 449
    invoke-static {p1, p2}, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->calcHash([II)I

    move-result v1

    .line 451
    .local v1, "hash":I
    iget v6, p0, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainHashMask:I

    and-int v2, v1, v6

    .line 452
    .local v2, "ix":I
    iget-object v6, p0, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainHash:[I

    aget v4, v6, v2

    .line 453
    .local v4, "val":I
    shr-int/lit8 v6, v4, 0x8

    xor-int/2addr v6, v1

    shl-int/lit8 v6, v6, 0x8

    if-nez v6, :cond_1

    .line 454
    iget-object v6, p0, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainNames:[Lcom/flurry/org/codehaus/jackson/sym/Name;

    aget-object v3, v6, v2

    .line 455
    .local v3, "name":Lcom/flurry/org/codehaus/jackson/sym/Name;
    if-eqz v3, :cond_0

    invoke-virtual {v3, p1, p2}, Lcom/flurry/org/codehaus/jackson/sym/Name;->equals([II)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 470
    .end local v3    # "name":Lcom/flurry/org/codehaus/jackson/sym/Name;
    :cond_0
    :goto_0
    return-object v3

    .line 459
    :cond_1
    if-nez v4, :cond_2

    move-object v3, v5

    .line 460
    goto :goto_0

    .line 462
    :cond_2
    and-int/lit16 v4, v4, 0xff

    .line 463
    if-lez v4, :cond_3

    .line 464
    add-int/lit8 v4, v4, -0x1

    .line 465
    iget-object v6, p0, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collList:[Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;

    aget-object v0, v6, v4

    .line 466
    .local v0, "bucket":Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;
    if-eqz v0, :cond_3

    .line 467
    invoke-virtual {v0, v1, p1, p2}, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;->find(I[II)Lcom/flurry/org/codehaus/jackson/sym/Name;

    move-result-object v3

    goto :goto_0

    .end local v0    # "bucket":Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;
    :cond_3
    move-object v3, v5

    .line 470
    goto :goto_0
.end method

.method public declared-synchronized makeChild(ZZ)Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;
    .locals 1
    .param p1, "canonicalize"    # Z
    .param p2, "intern"    # Z

    .prologue
    .line 177
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;

    invoke-direct {v0, p0, p2}, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;-><init>(Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;Z)V
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
    .line 318
    iget-boolean v0, p0, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainHashShared:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->maybeDirty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_parent:Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_parent:Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;

    invoke-direct {v0, p0}, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->mergeChild(Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;)V

    .line 195
    invoke-direct {p0}, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->markAsShared()V

    .line 197
    :cond_0
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 309
    iget v0, p0, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_count:I

    return v0
.end method
