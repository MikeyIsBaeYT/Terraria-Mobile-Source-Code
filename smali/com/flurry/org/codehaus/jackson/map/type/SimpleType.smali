.class public final Lcom/flurry/org/codehaus/jackson/map/type/SimpleType;
.super Lcom/flurry/org/codehaus/jackson/map/type/TypeBase;
.source "SimpleType.java"


# instance fields
.field protected final _typeNames:[Ljava/lang/String;

.field protected final _typeParameters:[Lcom/flurry/org/codehaus/jackson/type/JavaType;


# direct methods
.method protected constructor <init>(Ljava/lang/Class;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v2, 0x0

    .line 34
    move-object v0, p0

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/flurry/org/codehaus/jackson/map/type/SimpleType;-><init>(Ljava/lang/Class;[Ljava/lang/String;[Lcom/flurry/org/codehaus/jackson/type/JavaType;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 35
    return-void
.end method

.method protected constructor <init>(Ljava/lang/Class;[Ljava/lang/String;[Lcom/flurry/org/codehaus/jackson/type/JavaType;)V
    .locals 6
    .param p2, "typeNames"    # [Ljava/lang/String;
    .param p3, "typeParams"    # [Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/String;",
            "[",
            "Lcom/flurry/org/codehaus/jackson/type/JavaType;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v4, 0x0

    .line 40
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/flurry/org/codehaus/jackson/map/type/SimpleType;-><init>(Ljava/lang/Class;[Ljava/lang/String;[Lcom/flurry/org/codehaus/jackson/type/JavaType;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 41
    return-void
.end method

.method protected constructor <init>(Ljava/lang/Class;[Ljava/lang/String;[Lcom/flurry/org/codehaus/jackson/type/JavaType;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p2, "typeNames"    # [Ljava/lang/String;
    .param p3, "typeParams"    # [Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .param p4, "valueHandler"    # Ljava/lang/Object;
    .param p5, "typeHandler"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/String;",
            "[",
            "Lcom/flurry/org/codehaus/jackson/type/JavaType;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p4, p5}, Lcom/flurry/org/codehaus/jackson/map/type/TypeBase;-><init>(Ljava/lang/Class;ILjava/lang/Object;Ljava/lang/Object;)V

    .line 47
    if-eqz p2, :cond_0

    array-length v0, p2

    if-nez v0, :cond_1

    .line 48
    :cond_0
    iput-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/type/SimpleType;->_typeNames:[Ljava/lang/String;

    .line 49
    iput-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/type/SimpleType;->_typeParameters:[Lcom/flurry/org/codehaus/jackson/type/JavaType;

    .line 54
    :goto_0
    return-void

    .line 51
    :cond_1
    iput-object p2, p0, Lcom/flurry/org/codehaus/jackson/map/type/SimpleType;->_typeNames:[Ljava/lang/String;

    .line 52
    iput-object p3, p0, Lcom/flurry/org/codehaus/jackson/map/type/SimpleType;->_typeParameters:[Lcom/flurry/org/codehaus/jackson/type/JavaType;

    goto :goto_0
.end method

.method public static construct(Ljava/lang/Class;)Lcom/flurry/org/codehaus/jackson/map/type/SimpleType;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/flurry/org/codehaus/jackson/map/type/SimpleType;"
        }
    .end annotation

    .prologue
    .line 92
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Ljava/util/Map;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not construct SimpleType for a Map (class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :cond_0
    const-class v0, Ljava/util/Collection;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 96
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not construct SimpleType for a Collection (class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 100
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not construct SimpleType for an array (class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 102
    :cond_2
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/type/SimpleType;

    invoke-direct {v0, p0}, Lcom/flurry/org/codehaus/jackson/map/type/SimpleType;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method public static constructUnsafe(Ljava/lang/Class;)Lcom/flurry/org/codehaus/jackson/map/type/SimpleType;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/flurry/org/codehaus/jackson/map/type/SimpleType;"
        }
    .end annotation

    .prologue
    .local p0, "raw":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v2, 0x0

    .line 63
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/type/SimpleType;

    move-object v1, p0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/flurry/org/codehaus/jackson/map/type/SimpleType;-><init>(Ljava/lang/Class;[Ljava/lang/String;[Lcom/flurry/org/codehaus/jackson/type/JavaType;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method protected _narrow(Ljava/lang/Class;)Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/flurry/org/codehaus/jackson/type/JavaType;"
        }
    .end annotation

    .prologue
    .line 70
    .local p1, "subclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/type/SimpleType;

    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/type/SimpleType;->_typeNames:[Ljava/lang/String;

    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/map/type/SimpleType;->_typeParameters:[Lcom/flurry/org/codehaus/jackson/type/JavaType;

    iget-object v4, p0, Lcom/flurry/org/codehaus/jackson/map/type/SimpleType;->_valueHandler:Ljava/lang/Object;

    iget-object v5, p0, Lcom/flurry/org/codehaus/jackson/map/type/SimpleType;->_typeHandler:Ljava/lang/Object;

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/flurry/org/codehaus/jackson/map/type/SimpleType;-><init>(Ljava/lang/Class;[Ljava/lang/String;[Lcom/flurry/org/codehaus/jackson/type/JavaType;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method protected buildCanonicalName()Ljava/lang/String;
    .locals 7

    .prologue
    .line 138
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 139
    .local v4, "sb":Ljava/lang/StringBuilder;
    iget-object v6, p0, Lcom/flurry/org/codehaus/jackson/map/type/SimpleType;->_class:Ljava/lang/Class;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    iget-object v6, p0, Lcom/flurry/org/codehaus/jackson/map/type/SimpleType;->_typeParameters:[Lcom/flurry/org/codehaus/jackson/type/JavaType;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/flurry/org/codehaus/jackson/map/type/SimpleType;->_typeParameters:[Lcom/flurry/org/codehaus/jackson/type/JavaType;

    array-length v6, v6

    if-lez v6, :cond_2

    .line 141
    const/16 v6, 0x3c

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 142
    const/4 v1, 0x1

    .line 143
    .local v1, "first":Z
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/type/SimpleType;->_typeParameters:[Lcom/flurry/org/codehaus/jackson/type/JavaType;

    .local v0, "arr$":[Lcom/flurry/org/codehaus/jackson/type/JavaType;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v5, v0, v2

    .line 144
    .local v5, "t":Lcom/flurry/org/codehaus/jackson/type/JavaType;
    if-eqz v1, :cond_0

    .line 145
    const/4 v1, 0x0

    .line 149
    :goto_1
    invoke-virtual {v5}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->toCanonical()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 147
    :cond_0
    const/16 v6, 0x2c

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 151
    .end local v5    # "t":Lcom/flurry/org/codehaus/jackson/type/JavaType;
    :cond_1
    const/16 v6, 0x3e

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 153
    .end local v0    # "arr$":[Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .end local v1    # "first":Z
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method public containedType(I)Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 173
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/type/SimpleType;->_typeParameters:[Lcom/flurry/org/codehaus/jackson/type/JavaType;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/type/SimpleType;->_typeParameters:[Lcom/flurry/org/codehaus/jackson/type/JavaType;

    array-length v0, v0

    if-lt p1, v0, :cond_1

    .line 174
    :cond_0
    const/4 v0, 0x0

    .line 176
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/type/SimpleType;->_typeParameters:[Lcom/flurry/org/codehaus/jackson/type/JavaType;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method public containedTypeCount()I
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/type/SimpleType;->_typeParameters:[Lcom/flurry/org/codehaus/jackson/type/JavaType;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/type/SimpleType;->_typeParameters:[Lcom/flurry/org/codehaus/jackson/type/JavaType;

    array-length v0, v0

    goto :goto_0
.end method

.method public containedTypeName(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 182
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/type/SimpleType;->_typeNames:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/type/SimpleType;->_typeNames:[Ljava/lang/String;

    array-length v0, v0

    if-lt p1, v0, :cond_1

    .line 183
    :cond_0
    const/4 v0, 0x0

    .line 185
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/type/SimpleType;->_typeNames:[Ljava/lang/String;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 9
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 225
    if-ne p1, p0, :cond_1

    move v5, v6

    .line 248
    :cond_0
    :goto_0
    return v5

    .line 226
    :cond_1
    if-eqz p1, :cond_0

    .line 227
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    if-ne v7, v8, :cond_0

    move-object v2, p1

    .line 229
    check-cast v2, Lcom/flurry/org/codehaus/jackson/map/type/SimpleType;

    .line 232
    .local v2, "other":Lcom/flurry/org/codehaus/jackson/map/type/SimpleType;
    iget-object v7, v2, Lcom/flurry/org/codehaus/jackson/map/type/SimpleType;->_class:Ljava/lang/Class;

    iget-object v8, p0, Lcom/flurry/org/codehaus/jackson/map/type/SimpleType;->_class:Ljava/lang/Class;

    if-ne v7, v8, :cond_0

    .line 235
    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/map/type/SimpleType;->_typeParameters:[Lcom/flurry/org/codehaus/jackson/type/JavaType;

    .line 236
    .local v3, "p1":[Lcom/flurry/org/codehaus/jackson/type/JavaType;
    iget-object v4, v2, Lcom/flurry/org/codehaus/jackson/map/type/SimpleType;->_typeParameters:[Lcom/flurry/org/codehaus/jackson/type/JavaType;

    .line 237
    .local v4, "p2":[Lcom/flurry/org/codehaus/jackson/type/JavaType;
    if-nez v3, :cond_3

    .line 238
    if-eqz v4, :cond_2

    array-length v7, v4

    if-nez v7, :cond_0

    :cond_2
    move v5, v6

    goto :goto_0

    .line 240
    :cond_3
    if-eqz v4, :cond_0

    .line 242
    array-length v7, v3

    array-length v8, v4

    if-ne v7, v8, :cond_0

    .line 243
    const/4 v0, 0x0

    .local v0, "i":I
    array-length v1, v3

    .local v1, "len":I
    :goto_1
    if-ge v0, v1, :cond_4

    .line 244
    aget-object v7, v3, v0

    aget-object v8, v4, v0

    invoke-virtual {v7, v8}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 243
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    move v5, v6

    .line 248
    goto :goto_0
.end method

.method public getErasedSignature(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 2
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    .line 190
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/type/SimpleType;->_class:Ljava/lang/Class;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/flurry/org/codehaus/jackson/map/type/SimpleType;->_classSignature(Ljava/lang/Class;Ljava/lang/StringBuilder;Z)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public getGenericSignature(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 6
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    .line 196
    iget-object v4, p0, Lcom/flurry/org/codehaus/jackson/map/type/SimpleType;->_class:Ljava/lang/Class;

    const/4 v5, 0x0

    invoke-static {v4, p1, v5}, Lcom/flurry/org/codehaus/jackson/map/type/SimpleType;->_classSignature(Ljava/lang/Class;Ljava/lang/StringBuilder;Z)Ljava/lang/StringBuilder;

    .line 197
    iget-object v4, p0, Lcom/flurry/org/codehaus/jackson/map/type/SimpleType;->_typeParameters:[Lcom/flurry/org/codehaus/jackson/type/JavaType;

    if-eqz v4, :cond_1

    .line 198
    const/16 v4, 0x3c

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 199
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/type/SimpleType;->_typeParameters:[Lcom/flurry/org/codehaus/jackson/type/JavaType;

    .local v0, "arr$":[Lcom/flurry/org/codehaus/jackson/type/JavaType;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 200
    .local v3, "param":Lcom/flurry/org/codehaus/jackson/type/JavaType;
    invoke-virtual {v3, p1}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->getGenericSignature(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 199
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 202
    .end local v3    # "param":Lcom/flurry/org/codehaus/jackson/type/JavaType;
    :cond_0
    const/16 v4, 0x3e

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 204
    .end local v0    # "arr$":[Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    :cond_1
    const/16 v4, 0x3b

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 205
    return-object p1
.end method

.method public isContainerType()Z
    .locals 1

    .prologue
    .line 163
    const/4 v0, 0x0

    return v0
.end method

.method public narrowContentsBy(Ljava/lang/Class;)Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/flurry/org/codehaus/jackson/type/JavaType;"
        }
    .end annotation

    .prologue
    .line 77
    .local p1, "subclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Internal error: SimpleType.narrowContentsBy() should never be called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 218
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "[simple type, class "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/map/type/SimpleType;->buildCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 219
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public widenContentsBy(Ljava/lang/Class;)Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/flurry/org/codehaus/jackson/type/JavaType;"
        }
    .end annotation

    .prologue
    .line 84
    .local p1, "subclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Internal error: SimpleType.widenContentsBy() should never be called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public withContentTypeHandler(Ljava/lang/Object;)Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .locals 2
    .param p1, "h"    # Ljava/lang/Object;

    .prologue
    .line 116
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Simple types have no content types; can not call withContenTypeHandler()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public withContentValueHandler(Ljava/lang/Object;)Lcom/flurry/org/codehaus/jackson/map/type/SimpleType;
    .locals 2
    .param p1, "h"    # Ljava/lang/Object;

    .prologue
    .line 132
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Simple types have no content types; can not call withContenValueHandler()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic withContentValueHandler(Ljava/lang/Object;)Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 13
    invoke-virtual {p0, p1}, Lcom/flurry/org/codehaus/jackson/map/type/SimpleType;->withContentValueHandler(Ljava/lang/Object;)Lcom/flurry/org/codehaus/jackson/map/type/SimpleType;

    move-result-object v0

    return-object v0
.end method

.method public withTypeHandler(Ljava/lang/Object;)Lcom/flurry/org/codehaus/jackson/map/type/SimpleType;
    .locals 6
    .param p1, "h"    # Ljava/lang/Object;

    .prologue
    .line 109
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/type/SimpleType;

    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/type/SimpleType;->_class:Ljava/lang/Class;

    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/type/SimpleType;->_typeNames:[Ljava/lang/String;

    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/map/type/SimpleType;->_typeParameters:[Lcom/flurry/org/codehaus/jackson/type/JavaType;

    iget-object v4, p0, Lcom/flurry/org/codehaus/jackson/map/type/SimpleType;->_valueHandler:Ljava/lang/Object;

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/flurry/org/codehaus/jackson/map/type/SimpleType;-><init>(Ljava/lang/Class;[Ljava/lang/String;[Lcom/flurry/org/codehaus/jackson/type/JavaType;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public bridge synthetic withTypeHandler(Ljava/lang/Object;)Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 13
    invoke-virtual {p0, p1}, Lcom/flurry/org/codehaus/jackson/map/type/SimpleType;->withTypeHandler(Ljava/lang/Object;)Lcom/flurry/org/codehaus/jackson/map/type/SimpleType;

    move-result-object v0

    return-object v0
.end method

.method public withValueHandler(Ljava/lang/Object;)Lcom/flurry/org/codehaus/jackson/map/type/SimpleType;
    .locals 6
    .param p1, "h"    # Ljava/lang/Object;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/type/SimpleType;->_valueHandler:Ljava/lang/Object;

    if-ne p1, v0, :cond_0

    .line 125
    .end local p0    # "this":Lcom/flurry/org/codehaus/jackson/map/type/SimpleType;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/flurry/org/codehaus/jackson/map/type/SimpleType;
    :cond_0
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/type/SimpleType;

    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/type/SimpleType;->_class:Ljava/lang/Class;

    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/type/SimpleType;->_typeNames:[Ljava/lang/String;

    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/map/type/SimpleType;->_typeParameters:[Lcom/flurry/org/codehaus/jackson/type/JavaType;

    iget-object v5, p0, Lcom/flurry/org/codehaus/jackson/map/type/SimpleType;->_typeHandler:Ljava/lang/Object;

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/flurry/org/codehaus/jackson/map/type/SimpleType;-><init>(Ljava/lang/Class;[Ljava/lang/String;[Lcom/flurry/org/codehaus/jackson/type/JavaType;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public bridge synthetic withValueHandler(Ljava/lang/Object;)Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 13
    invoke-virtual {p0, p1}, Lcom/flurry/org/codehaus/jackson/map/type/SimpleType;->withValueHandler(Ljava/lang/Object;)Lcom/flurry/org/codehaus/jackson/map/type/SimpleType;

    move-result-object v0

    return-object v0
.end method
