.class public Lcom/chartboost/sdk/impl/co;
.super Lcom/chartboost/sdk/impl/cp;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I

.field private c:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/chartboost/sdk/impl/cp;-><init>()V

    .line 118
    const/16 v0, 0x200

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/chartboost/sdk/impl/co;->c:[B

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/chartboost/sdk/impl/co;->a:I

    return v0
.end method

.method public a(Ljava/io/OutputStream;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 76
    iget-object v0, p0, Lcom/chartboost/sdk/impl/co;->c:[B

    const/4 v1, 0x0

    iget v2, p0, Lcom/chartboost/sdk/impl/co;->b:I

    invoke-virtual {p1, v0, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 77
    iget v0, p0, Lcom/chartboost/sdk/impl/co;->b:I

    return v0
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 50
    iput p1, p0, Lcom/chartboost/sdk/impl/co;->a:I

    .line 51
    return-void
.end method

.method public b()I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/chartboost/sdk/impl/co;->b:I

    return v0
.end method

.method b(I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 91
    iget v0, p0, Lcom/chartboost/sdk/impl/co;->a:I

    add-int v1, v0, p1

    .line 92
    iget-object v0, p0, Lcom/chartboost/sdk/impl/co;->c:[B

    array-length v0, v0

    if-ge v1, v0, :cond_0

    .line 102
    :goto_0
    return-void

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/co;->c:[B

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    .line 96
    if-gt v0, v1, :cond_1

    .line 97
    add-int/lit16 v0, v1, 0x80

    .line 99
    :cond_1
    new-array v0, v0, [B

    .line 100
    iget-object v1, p0, Lcom/chartboost/sdk/impl/co;->c:[B

    iget v2, p0, Lcom/chartboost/sdk/impl/co;->b:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 101
    iput-object v0, p0, Lcom/chartboost/sdk/impl/co;->c:[B

    goto :goto_0
.end method

.method public write(I)V
    .locals 3
    .param p1, "b"    # I

    .prologue
    .line 39
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/co;->b(I)V

    .line 40
    iget-object v0, p0, Lcom/chartboost/sdk/impl/co;->c:[B

    iget v1, p0, Lcom/chartboost/sdk/impl/co;->a:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/chartboost/sdk/impl/co;->a:I

    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 41
    iget v0, p0, Lcom/chartboost/sdk/impl/co;->a:I

    iget v1, p0, Lcom/chartboost/sdk/impl/co;->b:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/chartboost/sdk/impl/co;->b:I

    .line 42
    return-void
.end method

.method public write([B)V
    .locals 2
    .param p1, "b"    # [B

    .prologue
    .line 27
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/chartboost/sdk/impl/co;->write([BII)V

    .line 28
    return-void
.end method

.method public write([BII)V
    .locals 2
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    .line 32
    invoke-virtual {p0, p3}, Lcom/chartboost/sdk/impl/co;->b(I)V

    .line 33
    iget-object v0, p0, Lcom/chartboost/sdk/impl/co;->c:[B

    iget v1, p0, Lcom/chartboost/sdk/impl/co;->a:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 34
    iget v0, p0, Lcom/chartboost/sdk/impl/co;->a:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/chartboost/sdk/impl/co;->a:I

    .line 35
    iget v0, p0, Lcom/chartboost/sdk/impl/co;->a:I

    iget v1, p0, Lcom/chartboost/sdk/impl/co;->b:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/chartboost/sdk/impl/co;->b:I

    .line 36
    return-void
.end method
