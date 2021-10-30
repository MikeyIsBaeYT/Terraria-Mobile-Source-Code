.class final Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;
.super Ljava/lang/Object;
.source "BytesToNameCanonicalizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Bucket"
.end annotation


# instance fields
.field protected final _name:Lcom/flurry/org/codehaus/jackson/sym/Name;

.field protected final _next:Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;


# direct methods
.method constructor <init>(Lcom/flurry/org/codehaus/jackson/sym/Name;Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;)V
    .locals 0
    .param p1, "name"    # Lcom/flurry/org/codehaus/jackson/sym/Name;
    .param p2, "next"    # Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;

    .prologue
    .line 919
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 920
    iput-object p1, p0, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;->_name:Lcom/flurry/org/codehaus/jackson/sym/Name;

    .line 921
    iput-object p2, p0, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;->_next:Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;

    .line 922
    return-void
.end method


# virtual methods
.method public find(III)Lcom/flurry/org/codehaus/jackson/sym/Name;
    .locals 3
    .param p1, "hash"    # I
    .param p2, "firstQuad"    # I
    .param p3, "secondQuad"    # I

    .prologue
    .line 935
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;->_name:Lcom/flurry/org/codehaus/jackson/sym/Name;

    invoke-virtual {v2}, Lcom/flurry/org/codehaus/jackson/sym/Name;->hashCode()I

    move-result v2

    if-ne v2, p1, :cond_1

    .line 936
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;->_name:Lcom/flurry/org/codehaus/jackson/sym/Name;

    invoke-virtual {v2, p2, p3}, Lcom/flurry/org/codehaus/jackson/sym/Name;->equals(II)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 937
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;->_name:Lcom/flurry/org/codehaus/jackson/sym/Name;

    .line 948
    :cond_0
    :goto_0
    return-object v1

    .line 940
    :cond_1
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;->_next:Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;

    .local v0, "curr":Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;
    :goto_1
    if-eqz v0, :cond_3

    .line 941
    iget-object v1, v0, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;->_name:Lcom/flurry/org/codehaus/jackson/sym/Name;

    .line 942
    .local v1, "currName":Lcom/flurry/org/codehaus/jackson/sym/Name;
    invoke-virtual {v1}, Lcom/flurry/org/codehaus/jackson/sym/Name;->hashCode()I

    move-result v2

    if-ne v2, p1, :cond_2

    .line 943
    invoke-virtual {v1, p2, p3}, Lcom/flurry/org/codehaus/jackson/sym/Name;->equals(II)Z

    move-result v2

    if-nez v2, :cond_0

    .line 940
    :cond_2
    iget-object v0, v0, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;->_next:Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;

    goto :goto_1

    .line 948
    .end local v1    # "currName":Lcom/flurry/org/codehaus/jackson/sym/Name;
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public find(I[II)Lcom/flurry/org/codehaus/jackson/sym/Name;
    .locals 3
    .param p1, "hash"    # I
    .param p2, "quads"    # [I
    .param p3, "qlen"    # I

    .prologue
    .line 953
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;->_name:Lcom/flurry/org/codehaus/jackson/sym/Name;

    invoke-virtual {v2}, Lcom/flurry/org/codehaus/jackson/sym/Name;->hashCode()I

    move-result v2

    if-ne v2, p1, :cond_1

    .line 954
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;->_name:Lcom/flurry/org/codehaus/jackson/sym/Name;

    invoke-virtual {v2, p2, p3}, Lcom/flurry/org/codehaus/jackson/sym/Name;->equals([II)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 955
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;->_name:Lcom/flurry/org/codehaus/jackson/sym/Name;

    .line 966
    :cond_0
    :goto_0
    return-object v1

    .line 958
    :cond_1
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;->_next:Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;

    .local v0, "curr":Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;
    :goto_1
    if-eqz v0, :cond_3

    .line 959
    iget-object v1, v0, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;->_name:Lcom/flurry/org/codehaus/jackson/sym/Name;

    .line 960
    .local v1, "currName":Lcom/flurry/org/codehaus/jackson/sym/Name;
    invoke-virtual {v1}, Lcom/flurry/org/codehaus/jackson/sym/Name;->hashCode()I

    move-result v2

    if-ne v2, p1, :cond_2

    .line 961
    invoke-virtual {v1, p2, p3}, Lcom/flurry/org/codehaus/jackson/sym/Name;->equals([II)Z

    move-result v2

    if-nez v2, :cond_0

    .line 958
    :cond_2
    iget-object v0, v0, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;->_next:Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;

    goto :goto_1

    .line 966
    .end local v1    # "currName":Lcom/flurry/org/codehaus/jackson/sym/Name;
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public length()I
    .locals 2

    .prologue
    .line 926
    const/4 v1, 0x1

    .line 927
    .local v1, "len":I
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;->_next:Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;

    .local v0, "curr":Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;
    :goto_0
    if-eqz v0, :cond_0

    .line 928
    add-int/lit8 v1, v1, 0x1

    .line 927
    iget-object v0, v0, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;->_next:Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;

    goto :goto_0

    .line 930
    :cond_0
    return v1
.end method
