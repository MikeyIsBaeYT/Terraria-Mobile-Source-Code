.class public Lcom/chartboost/sdk/impl/cv;
.super Lcom/chartboost/sdk/impl/cu;
.source "SourceFile"


# instance fields
.field final b:Lcom/chartboost/sdk/impl/cj;


# virtual methods
.method public b()Lcom/chartboost/sdk/impl/cj;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/chartboost/sdk/impl/cv;->b:Lcom/chartboost/sdk/impl/cj;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 40
    instance-of v1, p1, Lcom/chartboost/sdk/impl/cv;

    if-nez v1, :cond_1

    .line 44
    .end local p1    # "o":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .line 43
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_1
    check-cast p1, Lcom/chartboost/sdk/impl/cv;

    .line 44
    .end local p1    # "o":Ljava/lang/Object;
    iget-object v1, p0, Lcom/chartboost/sdk/impl/cv;->a:Ljava/lang/String;

    iget-object v2, p1, Lcom/chartboost/sdk/impl/cv;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/chartboost/sdk/impl/cv;->b:Lcom/chartboost/sdk/impl/cj;

    iget-object v2, p1, Lcom/chartboost/sdk/impl/cv;->b:Lcom/chartboost/sdk/impl/cj;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/chartboost/sdk/impl/cv;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/chartboost/sdk/impl/cv;->b:Lcom/chartboost/sdk/impl/cj;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method
