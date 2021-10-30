.class public Lcom/chartboost/sdk/impl/ct;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field final a:B

.field final b:[B


# virtual methods
.method public a()B
    .locals 1

    .prologue
    .line 57
    iget-byte v0, p0, Lcom/chartboost/sdk/impl/ct;->a:B

    return v0
.end method

.method public b()[B
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ct;->b:[B

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 70
    if-ne p0, p1, :cond_1

    .line 86
    .end local p1    # "o":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .line 73
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_1
    instance-of v2, p1, Lcom/chartboost/sdk/impl/ct;

    if-nez v2, :cond_2

    move v0, v1

    .line 74
    goto :goto_0

    .line 77
    :cond_2
    check-cast p1, Lcom/chartboost/sdk/impl/ct;

    .line 79
    .end local p1    # "o":Ljava/lang/Object;
    iget-byte v2, p0, Lcom/chartboost/sdk/impl/ct;->a:B

    iget-byte v3, p1, Lcom/chartboost/sdk/impl/ct;->a:B

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 80
    goto :goto_0

    .line 82
    :cond_3
    iget-object v2, p0, Lcom/chartboost/sdk/impl/ct;->b:[B

    iget-object v3, p1, Lcom/chartboost/sdk/impl/ct;->b:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 83
    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 91
    iget-byte v0, p0, Lcom/chartboost/sdk/impl/ct;->a:B

    .line 92
    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/chartboost/sdk/impl/ct;->b:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chartboost/sdk/impl/ct;->b:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    :goto_0
    add-int/2addr v0, v1

    .line 93
    return v0

    .line 92
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
