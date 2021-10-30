.class public Lcom/flurry/android/caching/ObjectData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field iW:Lcom/flurry/android/caching/ObjectData$ExecutorType;

.field private iX:I

.field protected mCollectionName:Ljava/lang/String;

.field protected mId:Ljava/lang/String;

.field protected mKeyValueList:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const-string v0, ""

    iput-object v0, p0, Lcom/flurry/android/caching/ObjectData;->mId:Ljava/lang/String;

    .line 10
    const-string v0, ""

    iput-object v0, p0, Lcom/flurry/android/caching/ObjectData;->mCollectionName:Ljava/lang/String;

    .line 11
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/flurry/android/caching/ObjectData;->mKeyValueList:Ljava/util/Vector;

    .line 12
    sget-object v0, Lcom/flurry/android/caching/ObjectData$ExecutorType;->NONE:Lcom/flurry/android/caching/ObjectData$ExecutorType;

    iput-object v0, p0, Lcom/flurry/android/caching/ObjectData;->iW:Lcom/flurry/android/caching/ObjectData$ExecutorType;

    .line 14
    const/16 v0, 0x1f

    iput v0, p0, Lcom/flurry/android/caching/ObjectData;->iX:I

    .line 23
    iput-object p1, p0, Lcom/flurry/android/caching/ObjectData;->mId:Ljava/lang/String;

    .line 24
    sget-object v0, Lcom/flurry/android/caching/ObjectData$ExecutorType;->USER:Lcom/flurry/android/caching/ObjectData$ExecutorType;

    iput-object v0, p0, Lcom/flurry/android/caching/ObjectData;->iW:Lcom/flurry/android/caching/ObjectData$ExecutorType;

    .line 25
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const-string v0, ""

    iput-object v0, p0, Lcom/flurry/android/caching/ObjectData;->mId:Ljava/lang/String;

    .line 10
    const-string v0, ""

    iput-object v0, p0, Lcom/flurry/android/caching/ObjectData;->mCollectionName:Ljava/lang/String;

    .line 11
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/flurry/android/caching/ObjectData;->mKeyValueList:Ljava/util/Vector;

    .line 12
    sget-object v0, Lcom/flurry/android/caching/ObjectData$ExecutorType;->NONE:Lcom/flurry/android/caching/ObjectData$ExecutorType;

    iput-object v0, p0, Lcom/flurry/android/caching/ObjectData;->iW:Lcom/flurry/android/caching/ObjectData$ExecutorType;

    .line 14
    const/16 v0, 0x1f

    iput v0, p0, Lcom/flurry/android/caching/ObjectData;->iX:I

    .line 28
    iput-object p1, p0, Lcom/flurry/android/caching/ObjectData;->mId:Ljava/lang/String;

    .line 29
    iput-object p2, p0, Lcom/flurry/android/caching/ObjectData;->mCollectionName:Ljava/lang/String;

    .line 30
    sget-object v0, Lcom/flurry/android/caching/ObjectData$ExecutorType;->OBJECT:Lcom/flurry/android/caching/ObjectData$ExecutorType;

    iput-object v0, p0, Lcom/flurry/android/caching/ObjectData;->iW:Lcom/flurry/android/caching/ObjectData$ExecutorType;

    .line 31
    return-void
.end method


# virtual methods
.method public addKeyValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/flurry/android/caching/ObjectData;->mKeyValueList:Ljava/util/Vector;

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    invoke-direct {v1, p1, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 35
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 89
    if-ne p1, p0, :cond_1

    .line 107
    :cond_0
    :goto_0
    return v0

    .line 92
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 93
    goto :goto_0

    .line 95
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 96
    goto :goto_0

    .line 99
    :cond_3
    check-cast p1, Lcom/flurry/android/caching/ObjectOperationData;

    .line 100
    iget-object v2, p1, Lcom/flurry/android/caching/ObjectOperationData;->mId:Ljava/lang/String;

    iget-object v3, p0, Lcom/flurry/android/caching/ObjectData;->mId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p1, Lcom/flurry/android/caching/ObjectOperationData;->mCollectionName:Ljava/lang/String;

    iget-object v3, p0, Lcom/flurry/android/caching/ObjectData;->mCollectionName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p1, Lcom/flurry/android/caching/ObjectOperationData;->mKeyValueList:Ljava/util/Vector;

    iget-object v3, p0, Lcom/flurry/android/caching/ObjectData;->mKeyValueList:Ljava/util/Vector;

    invoke-virtual {v2, v3}, Ljava/util/Vector;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    .line 107
    goto :goto_0
.end method

.method public getCollectionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/flurry/android/caching/ObjectData;->mCollectionName:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/flurry/android/caching/ObjectData;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getKeyValues()Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation

    .prologue
    .line 42
    iget-object v0, p0, Lcom/flurry/android/caching/ObjectData;->mKeyValueList:Ljava/util/Vector;

    return-object v0
.end method

.method public getKeyValuesListSize()I
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/flurry/android/caching/ObjectData;->mKeyValueList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 114
    iget v0, p0, Lcom/flurry/android/caching/ObjectData;->iX:I

    .line 116
    iget v1, p0, Lcom/flurry/android/caching/ObjectData;->iX:I

    mul-int/2addr v0, v1

    iget-object v1, p0, Lcom/flurry/android/caching/ObjectData;->mId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 117
    iget v1, p0, Lcom/flurry/android/caching/ObjectData;->iX:I

    mul-int/2addr v0, v1

    iget-object v1, p0, Lcom/flurry/android/caching/ObjectData;->mCollectionName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 118
    iget v1, p0, Lcom/flurry/android/caching/ObjectData;->iX:I

    mul-int/2addr v0, v1

    iget-object v1, p0, Lcom/flurry/android/caching/ObjectData;->mKeyValueList:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 120
    return v0
.end method

.method public isObject()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 57
    iget-object v1, p0, Lcom/flurry/android/caching/ObjectData;->iW:Lcom/flurry/android/caching/ObjectData$ExecutorType;

    sget-object v2, Lcom/flurry/android/caching/ObjectData$ExecutorType;->OBJECT:Lcom/flurry/android/caching/ObjectData$ExecutorType;

    if-ne v1, v2, :cond_1

    .line 58
    const/4 v0, 0x1

    .line 64
    :cond_0
    :goto_0
    return v0

    .line 60
    :cond_1
    iget-object v1, p0, Lcom/flurry/android/caching/ObjectData;->iW:Lcom/flurry/android/caching/ObjectData$ExecutorType;

    sget-object v2, Lcom/flurry/android/caching/ObjectData$ExecutorType;->USER:Lcom/flurry/android/caching/ObjectData$ExecutorType;

    if-ne v1, v2, :cond_0

    goto :goto_0
.end method

.method public isUser()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 46
    iget-object v1, p0, Lcom/flurry/android/caching/ObjectData;->iW:Lcom/flurry/android/caching/ObjectData$ExecutorType;

    sget-object v2, Lcom/flurry/android/caching/ObjectData$ExecutorType;->OBJECT:Lcom/flurry/android/caching/ObjectData$ExecutorType;

    if-ne v1, v2, :cond_1

    .line 53
    :cond_0
    :goto_0
    return v0

    .line 49
    :cond_1
    iget-object v1, p0, Lcom/flurry/android/caching/ObjectData;->iW:Lcom/flurry/android/caching/ObjectData$ExecutorType;

    sget-object v2, Lcom/flurry/android/caching/ObjectData$ExecutorType;->USER:Lcom/flurry/android/caching/ObjectData$ExecutorType;

    if-ne v1, v2, :cond_0

    .line 50
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setCollectionName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/flurry/android/caching/ObjectData;->mCollectionName:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/flurry/android/caching/ObjectData;->mId:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public setKeyValues(Ljava/util/Vector;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 38
    iput-object p1, p0, Lcom/flurry/android/caching/ObjectData;->mKeyValueList:Ljava/util/Vector;

    .line 39
    return-void
.end method
