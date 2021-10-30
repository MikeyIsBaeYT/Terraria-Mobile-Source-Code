.class public Lcom/chartboost/sdk/impl/cu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field final a:Ljava/lang/String;


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/chartboost/sdk/impl/cu;->a:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 42
    instance-of v0, p1, Lcom/chartboost/sdk/impl/cu;

    if-nez v0, :cond_0

    .line 43
    const/4 v0, 0x0

    .line 46
    .end local p1    # "o":Ljava/lang/Object;
    :goto_0
    return v0

    .line 45
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_0
    check-cast p1, Lcom/chartboost/sdk/impl/cu;

    .line 46
    .end local p1    # "o":Ljava/lang/Object;
    iget-object v0, p0, Lcom/chartboost/sdk/impl/cu;->a:Ljava/lang/String;

    iget-object v1, p1, Lcom/chartboost/sdk/impl/cu;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/chartboost/sdk/impl/cu;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/cu;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
