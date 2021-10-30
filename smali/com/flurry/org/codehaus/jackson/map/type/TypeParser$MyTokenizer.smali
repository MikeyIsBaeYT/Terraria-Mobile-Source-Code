.class final Lcom/flurry/org/codehaus/jackson/map/type/TypeParser$MyTokenizer;
.super Ljava/util/StringTokenizer;
.source "TypeParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/org/codehaus/jackson/map/type/TypeParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MyTokenizer"
.end annotation


# instance fields
.field protected _index:I

.field protected final _input:Ljava/lang/String;

.field protected _pushbackToken:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 103
    const-string v0, "<,>"

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 104
    iput-object p1, p0, Lcom/flurry/org/codehaus/jackson/map/type/TypeParser$MyTokenizer;->_input:Ljava/lang/String;

    .line 105
    return-void
.end method


# virtual methods
.method public getAllInput()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/type/TypeParser$MyTokenizer;->_input:Ljava/lang/String;

    return-object v0
.end method

.method public getRemainingInput()Ljava/lang/String;
    .locals 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/type/TypeParser$MyTokenizer;->_input:Ljava/lang/String;

    iget v1, p0, Lcom/flurry/org/codehaus/jackson/map/type/TypeParser$MyTokenizer;->_index:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUsedInput()Ljava/lang/String;
    .locals 3

    .prologue
    .line 131
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/type/TypeParser$MyTokenizer;->_input:Ljava/lang/String;

    const/4 v1, 0x0

    iget v2, p0, Lcom/flurry/org/codehaus/jackson/map/type/TypeParser$MyTokenizer;->_index:I

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasMoreTokens()Z
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/type/TypeParser$MyTokenizer;->_pushbackToken:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-super {p0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public nextToken()Ljava/lang/String;
    .locals 3

    .prologue
    .line 115
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/type/TypeParser$MyTokenizer;->_pushbackToken:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 116
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/type/TypeParser$MyTokenizer;->_pushbackToken:Ljava/lang/String;

    .line 117
    .local v0, "token":Ljava/lang/String;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/type/TypeParser$MyTokenizer;->_pushbackToken:Ljava/lang/String;

    .line 121
    :goto_0
    iget v1, p0, Lcom/flurry/org/codehaus/jackson/map/type/TypeParser$MyTokenizer;->_index:I

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/flurry/org/codehaus/jackson/map/type/TypeParser$MyTokenizer;->_index:I

    .line 122
    return-object v0

    .line 119
    .end local v0    # "token":Ljava/lang/String;
    :cond_0
    invoke-super {p0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "token":Ljava/lang/String;
    goto :goto_0
.end method

.method public pushBack(Ljava/lang/String;)V
    .locals 2
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/flurry/org/codehaus/jackson/map/type/TypeParser$MyTokenizer;->_pushbackToken:Ljava/lang/String;

    .line 127
    iget v0, p0, Lcom/flurry/org/codehaus/jackson/map/type/TypeParser$MyTokenizer;->_index:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/flurry/org/codehaus/jackson/map/type/TypeParser$MyTokenizer;->_index:I

    .line 128
    return-void
.end method
