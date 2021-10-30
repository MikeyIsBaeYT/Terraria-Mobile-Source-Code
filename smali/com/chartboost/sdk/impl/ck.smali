.class public Lcom/chartboost/sdk/impl/ck;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/chartboost/sdk/impl/ch;


# static fields
.field static final a:[Ljava/lang/String;


# instance fields
.field private b:[B

.field private c:[B

.field private d:Lcom/chartboost/sdk/impl/cq;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 512
    const/16 v0, 0x80

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/chartboost/sdk/impl/ck;->a:[Ljava/lang/String;

    .line 522
    const/16 v0, 0x30

    const/16 v1, 0x39

    invoke-static {v0, v1}, Lcom/chartboost/sdk/impl/ck;->a(BB)V

    .line 523
    const/16 v0, 0x61

    const/16 v1, 0x7a

    invoke-static {v0, v1}, Lcom/chartboost/sdk/impl/ck;->a(BB)V

    .line 524
    const/16 v0, 0x41

    const/16 v1, 0x5a

    invoke-static {v0, v1}, Lcom/chartboost/sdk/impl/ck;->a(BB)V

    .line 525
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x400

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 496
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/chartboost/sdk/impl/ck;->b:[B

    .line 497
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/chartboost/sdk/impl/ck;->c:[B

    .line 499
    new-instance v0, Lcom/chartboost/sdk/impl/cq;

    invoke-direct {v0}, Lcom/chartboost/sdk/impl/cq;-><init>()V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/ck;->d:Lcom/chartboost/sdk/impl/cq;

    return-void
.end method

.method static a(BB)V
    .locals 2

    .prologue
    .line 514
    :goto_0
    if-ge p0, p1, :cond_0

    .line 515
    const-string v0, ""

    .line 516
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    int-to-char v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 517
    sget-object v1, Lcom/chartboost/sdk/impl/ck;->a:[Ljava/lang/String;

    aput-object v0, v1, p0

    .line 518
    add-int/lit8 v0, p0, 0x1

    int-to-byte p0, v0

    .line 519
    goto :goto_0

    .line 520
    :cond_0
    return-void
.end method
