.class public Lcom/flurry/org/codehaus/jackson/map/type/MapLikeType;
.super Lcom/flurry/org/codehaus/jackson/map/type/TypeBase;
.source "MapLikeType.java"


# instance fields
.field protected final _keyType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

.field protected final _valueType:Lcom/flurry/org/codehaus/jackson/type/JavaType;


# direct methods
.method protected constructor <init>(Ljava/lang/Class;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/type/JavaType;)V
    .locals 3
    .param p2, "keyT"    # Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .param p3, "valueT"    # Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/flurry/org/codehaus/jackson/type/JavaType;",
            "Lcom/flurry/org/codehaus/jackson/type/JavaType;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .local p1, "mapType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v2, 0x0

    .line 38
    invoke-virtual {p2}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->hashCode()I

    move-result v0

    invoke-virtual {p3}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    invoke-direct {p0, p1, v0, v2, v2}, Lcom/flurry/org/codehaus/jackson/map/type/TypeBase;-><init>(Ljava/lang/Class;ILjava/lang/Object;Ljava/lang/Object;)V

    .line 39
    iput-object p2, p0, Lcom/flurry/org/codehaus/jackson/map/type/MapLikeType;->_keyType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    .line 40
    iput-object p3, p0, Lcom/flurry/org/codehaus/jackson/map/type/MapLikeType;->_valueType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    .line 41
    return-void
.end method

.method protected constructor <init>(Ljava/lang/Class;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/type/JavaType;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p2, "keyT"    # Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .param p3, "valueT"    # Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .param p4, "valueHandler"    # Ljava/lang/Object;
    .param p5, "typeHandler"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/flurry/org/codehaus/jackson/type/JavaType;",
            "Lcom/flurry/org/codehaus/jackson/type/JavaType;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 46
    .local p1, "mapType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p2}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->hashCode()I

    move-result v0

    invoke-virtual {p3}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    invoke-direct {p0, p1, v0, p4, p5}, Lcom/flurry/org/codehaus/jackson/map/type/TypeBase;-><init>(Ljava/lang/Class;ILjava/lang/Object;Ljava/lang/Object;)V

    .line 47
    iput-object p2, p0, Lcom/flurry/org/codehaus/jackson/map/type/MapLikeType;->_keyType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    .line 48
    iput-object p3, p0, Lcom/flurry/org/codehaus/jackson/map/type/MapLikeType;->_valueType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    .line 49
    return-void
.end method

.method public static construct(Ljava/lang/Class;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/type/JavaType;)Lcom/flurry/org/codehaus/jackson/map/type/MapLikeType;
    .locals 6
    .param p1, "keyT"    # Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .param p2, "valueT"    # Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/flurry/org/codehaus/jackson/type/JavaType;",
            "Lcom/flurry/org/codehaus/jackson/type/JavaType;",
            ")",
            "Lcom/flurry/org/codehaus/jackson/map/type/MapLikeType;"
        }
    .end annotation

    .prologue
    .local p0, "rawType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v4, 0x0

    .line 54
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/type/MapLikeType;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/flurry/org/codehaus/jackson/map/type/MapLikeType;-><init>(Ljava/lang/Class;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/type/JavaType;Ljava/lang/Object;Ljava/lang/Object;)V

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
    .line 60
    .local p1, "subclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/type/MapLikeType;

    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/type/MapLikeType;->_keyType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/map/type/MapLikeType;->_valueType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    iget-object v4, p0, Lcom/flurry/org/codehaus/jackson/map/type/MapLikeType;->_valueHandler:Ljava/lang/Object;

    iget-object v5, p0, Lcom/flurry/org/codehaus/jackson/map/type/MapLikeType;->_typeHandler:Ljava/lang/Object;

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/flurry/org/codehaus/jackson/map/type/MapLikeType;-><init>(Ljava/lang/Class;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/type/JavaType;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method protected buildCanonicalName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 138
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/type/MapLikeType;->_class:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/type/MapLikeType;->_keyType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    if-eqz v1, :cond_0

    .line 140
    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 141
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/type/MapLikeType;->_keyType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    invoke-virtual {v1}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->toCanonical()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 143
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/type/MapLikeType;->_valueType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    invoke-virtual {v1}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->toCanonical()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 146
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public containedType(I)Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 172
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/type/MapLikeType;->_keyType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    .line 174
    :goto_0
    return-object v0

    .line 173
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/type/MapLikeType;->_valueType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    goto :goto_0

    .line 174
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public containedTypeCount()I
    .locals 1

    .prologue
    .line 168
    const/4 v0, 0x2

    return v0
.end method

.method public containedTypeName(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 184
    if-nez p1, :cond_0

    const-string v0, "K"

    .line 186
    :goto_0
    return-object v0

    .line 185
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const-string v0, "V"

    goto :goto_0

    .line 186
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 255
    if-ne p1, p0, :cond_1

    .line 260
    :cond_0
    :goto_0
    return v1

    .line 256
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    goto :goto_0

    .line 257
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 259
    check-cast v0, Lcom/flurry/org/codehaus/jackson/map/type/MapLikeType;

    .line 260
    .local v0, "other":Lcom/flurry/org/codehaus/jackson/map/type/MapLikeType;
    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/map/type/MapLikeType;->_class:Ljava/lang/Class;

    iget-object v4, v0, Lcom/flurry/org/codehaus/jackson/map/type/MapLikeType;->_class:Ljava/lang/Class;

    if-ne v3, v4, :cond_4

    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/map/type/MapLikeType;->_keyType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    iget-object v4, v0, Lcom/flurry/org/codehaus/jackson/map/type/MapLikeType;->_keyType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    invoke-virtual {v3, v4}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/map/type/MapLikeType;->_valueType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    iget-object v4, v0, Lcom/flurry/org/codehaus/jackson/map/type/MapLikeType;->_valueType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    invoke-virtual {v3, v4}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method public getContentType()Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/type/MapLikeType;->_valueType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    return-object v0
.end method

.method public getErasedSignature(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 2
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    .line 191
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/type/MapLikeType;->_class:Ljava/lang/Class;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/flurry/org/codehaus/jackson/map/type/MapLikeType;->_classSignature(Ljava/lang/Class;Ljava/lang/StringBuilder;Z)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public getGenericSignature(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 2
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    .line 197
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/type/MapLikeType;->_class:Ljava/lang/Class;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/flurry/org/codehaus/jackson/map/type/MapLikeType;->_classSignature(Ljava/lang/Class;Ljava/lang/StringBuilder;Z)Ljava/lang/StringBuilder;

    .line 198
    const/16 v0, 0x3c

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 199
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/type/MapLikeType;->_keyType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    invoke-virtual {v0, p1}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->getGenericSignature(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 200
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/type/MapLikeType;->_valueType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    invoke-virtual {v0, p1}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->getGenericSignature(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 201
    const-string v0, ">;"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    return-object p1
.end method

.method public getKeyType()Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/type/MapLikeType;->_keyType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    return-object v0
.end method

.method public isContainerType()Z
    .locals 1

    .prologue
    .line 156
    const/4 v0, 0x1

    return v0
.end method

.method public isMapLikeType()Z
    .locals 1

    .prologue
    .line 159
    const/4 v0, 0x1

    return v0
.end method

.method public isTrueMapType()Z
    .locals 2

    .prologue
    .line 237
    const-class v0, Ljava/util/Map;

    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/type/MapLikeType;->_class:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public narrowContentsBy(Ljava/lang/Class;)Lcom/flurry/org/codehaus/jackson/type/JavaType;
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
    .line 67
    .local p1, "contentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/type/MapLikeType;->_valueType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 70
    .end local p0    # "this":Lcom/flurry/org/codehaus/jackson/map/type/MapLikeType;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/flurry/org/codehaus/jackson/map/type/MapLikeType;
    :cond_0
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/type/MapLikeType;

    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/type/MapLikeType;->_class:Ljava/lang/Class;

    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/type/MapLikeType;->_keyType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/map/type/MapLikeType;->_valueType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    invoke-virtual {v3, p1}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->narrowBy(Ljava/lang/Class;)Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v3

    iget-object v4, p0, Lcom/flurry/org/codehaus/jackson/map/type/MapLikeType;->_valueHandler:Ljava/lang/Object;

    iget-object v5, p0, Lcom/flurry/org/codehaus/jackson/map/type/MapLikeType;->_typeHandler:Ljava/lang/Object;

    invoke-direct/range {v0 .. v5}, Lcom/flurry/org/codehaus/jackson/map/type/MapLikeType;-><init>(Ljava/lang/Class;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/type/JavaType;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public narrowKey(Ljava/lang/Class;)Lcom/flurry/org/codehaus/jackson/type/JavaType;
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
    .line 87
    .local p1, "keySubclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/type/MapLikeType;->_keyType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 90
    .end local p0    # "this":Lcom/flurry/org/codehaus/jackson/map/type/MapLikeType;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/flurry/org/codehaus/jackson/map/type/MapLikeType;
    :cond_0
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/type/MapLikeType;

    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/type/MapLikeType;->_class:Ljava/lang/Class;

    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/type/MapLikeType;->_keyType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    invoke-virtual {v2, p1}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->narrowBy(Ljava/lang/Class;)Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/map/type/MapLikeType;->_valueType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    iget-object v4, p0, Lcom/flurry/org/codehaus/jackson/map/type/MapLikeType;->_valueHandler:Ljava/lang/Object;

    iget-object v5, p0, Lcom/flurry/org/codehaus/jackson/map/type/MapLikeType;->_typeHandler:Ljava/lang/Object;

    invoke-direct/range {v0 .. v5}, Lcom/flurry/org/codehaus/jackson/map/type/MapLikeType;-><init>(Ljava/lang/Class;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/type/JavaType;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[map-like type; class "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/type/MapLikeType;->_class:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/type/MapLikeType;->_keyType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/type/MapLikeType;->_valueType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public widenContentsBy(Ljava/lang/Class;)Lcom/flurry/org/codehaus/jackson/type/JavaType;
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
    .line 77
    .local p1, "contentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/type/MapLikeType;->_valueType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 80
    .end local p0    # "this":Lcom/flurry/org/codehaus/jackson/map/type/MapLikeType;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/flurry/org/codehaus/jackson/map/type/MapLikeType;
    :cond_0
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/type/MapLikeType;

    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/type/MapLikeType;->_class:Ljava/lang/Class;

    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/type/MapLikeType;->_keyType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/map/type/MapLikeType;->_valueType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    invoke-virtual {v3, p1}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->widenBy(Ljava/lang/Class;)Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v3

    iget-object v4, p0, Lcom/flurry/org/codehaus/jackson/map/type/MapLikeType;->_valueHandler:Ljava/lang/Object;

    iget-object v5, p0, Lcom/flurry/org/codehaus/jackson/map/type/MapLikeType;->_typeHandler:Ljava/lang/Object;

    invoke-direct/range {v0 .. v5}, Lcom/flurry/org/codehaus/jackson/map/type/MapLikeType;-><init>(Ljava/lang/Class;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/type/JavaType;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public widenKey(Ljava/lang/Class;)Lcom/flurry/org/codehaus/jackson/type/JavaType;
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
    .line 100
    .local p1, "keySubclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/type/MapLikeType;->_keyType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 103
    .end local p0    # "this":Lcom/flurry/org/codehaus/jackson/map/type/MapLikeType;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/flurry/org/codehaus/jackson/map/type/MapLikeType;
    :cond_0
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/type/MapLikeType;

    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/type/MapLikeType;->_class:Ljava/lang/Class;

    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/type/MapLikeType;->_keyType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    invoke-virtual {v2, p1}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->widenBy(Ljava/lang/Class;)Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/map/type/MapLikeType;->_valueType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    iget-object v4, p0, Lcom/flurry/org/codehaus/jackson/map/type/MapLikeType;->_valueHandler:Ljava/lang/Object;

    iget-object v5, p0, Lcom/flurry/org/codehaus/jackson/map/type/MapLikeType;->_typeHandler:Ljava/lang/Object;

    invoke-direct/range {v0 .. v5}, Lcom/flurry/org/codehaus/jackson/map/type/MapLikeType;-><init>(Ljava/lang/Class;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/type/JavaType;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public withContentTypeHandler(Ljava/lang/Object;)Lcom/flurry/org/codehaus/jackson/map/type/MapLikeType;
    .locals 6
    .param p1, "h"    # Ljava/lang/Object;

    .prologue
    .line 118
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/type/MapLikeType;

    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/type/MapLikeType;->_class:Ljava/lang/Class;

    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/type/MapLikeType;->_keyType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/map/type/MapLikeType;->_valueType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    invoke-virtual {v3, p1}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->withTypeHandler(Ljava/lang/Object;)Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v3

    iget-object v4, p0, Lcom/flurry/org/codehaus/jackson/map/type/MapLikeType;->_valueHandler:Ljava/lang/Object;

    iget-object v5, p0, Lcom/flurry/org/codehaus/jackson/map/type/MapLikeType;->_typeHandler:Ljava/lang/Object;

    invoke-direct/range {v0 .. v5}, Lcom/flurry/org/codehaus/jackson/map/type/MapLikeType;-><init>(Ljava/lang/Class;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/type/JavaType;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public bridge synthetic withContentTypeHandler(Ljava/lang/Object;)Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 17
    invoke-virtual {p0, p1}, Lcom/flurry/org/codehaus/jackson/map/type/MapLikeType;->withContentTypeHandler(Ljava/lang/Object;)Lcom/flurry/org/codehaus/jackson/map/type/MapLikeType;

    move-result-object v0

    return-object v0
.end method

.method public withContentValueHandler(Ljava/lang/Object;)Lcom/flurry/org/codehaus/jackson/map/type/MapLikeType;
    .locals 6
    .param p1, "h"    # Ljava/lang/Object;

    .prologue
    .line 131
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/type/MapLikeType;

    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/type/MapLikeType;->_class:Ljava/lang/Class;

    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/type/MapLikeType;->_keyType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/map/type/MapLikeType;->_valueType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    invoke-virtual {v3, p1}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->withValueHandler(Ljava/lang/Object;)Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v3

    iget-object v4, p0, Lcom/flurry/org/codehaus/jackson/map/type/MapLikeType;->_valueHandler:Ljava/lang/Object;

    iget-object v5, p0, Lcom/flurry/org/codehaus/jackson/map/type/MapLikeType;->_typeHandler:Ljava/lang/Object;

    invoke-direct/range {v0 .. v5}, Lcom/flurry/org/codehaus/jackson/map/type/MapLikeType;-><init>(Ljava/lang/Class;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/type/JavaType;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public bridge synthetic withContentValueHandler(Ljava/lang/Object;)Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 17
    invoke-virtual {p0, p1}, Lcom/flurry/org/codehaus/jackson/map/type/MapLikeType;->withContentValueHandler(Ljava/lang/Object;)Lcom/flurry/org/codehaus/jackson/map/type/MapLikeType;

    move-result-object v0

    return-object v0
.end method

.method public withKeyTypeHandler(Ljava/lang/Object;)Lcom/flurry/org/codehaus/jackson/map/type/MapLikeType;
    .locals 6
    .param p1, "h"    # Ljava/lang/Object;

    .prologue
    .line 216
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/type/MapLikeType;

    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/type/MapLikeType;->_class:Ljava/lang/Class;

    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/type/MapLikeType;->_keyType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    invoke-virtual {v2, p1}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->withTypeHandler(Ljava/lang/Object;)Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/map/type/MapLikeType;->_valueType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    iget-object v4, p0, Lcom/flurry/org/codehaus/jackson/map/type/MapLikeType;->_valueHandler:Ljava/lang/Object;

    iget-object v5, p0, Lcom/flurry/org/codehaus/jackson/map/type/MapLikeType;->_typeHandler:Ljava/lang/Object;

    invoke-direct/range {v0 .. v5}, Lcom/flurry/org/codehaus/jackson/map/type/MapLikeType;-><init>(Ljava/lang/Class;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/type/JavaType;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public withKeyValueHandler(Ljava/lang/Object;)Lcom/flurry/org/codehaus/jackson/map/type/MapLikeType;
    .locals 6
    .param p1, "h"    # Ljava/lang/Object;

    .prologue
    .line 224
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/type/MapLikeType;

    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/type/MapLikeType;->_class:Ljava/lang/Class;

    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/type/MapLikeType;->_keyType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    invoke-virtual {v2, p1}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->withValueHandler(Ljava/lang/Object;)Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/map/type/MapLikeType;->_valueType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    iget-object v4, p0, Lcom/flurry/org/codehaus/jackson/map/type/MapLikeType;->_valueHandler:Ljava/lang/Object;

    iget-object v5, p0, Lcom/flurry/org/codehaus/jackson/map/type/MapLikeType;->_typeHandler:Ljava/lang/Object;

    invoke-direct/range {v0 .. v5}, Lcom/flurry/org/codehaus/jackson/map/type/MapLikeType;-><init>(Ljava/lang/Class;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/type/JavaType;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public withTypeHandler(Ljava/lang/Object;)Lcom/flurry/org/codehaus/jackson/map/type/MapLikeType;
    .locals 6
    .param p1, "h"    # Ljava/lang/Object;

    .prologue
    .line 111
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/type/MapLikeType;

    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/type/MapLikeType;->_class:Ljava/lang/Class;

    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/type/MapLikeType;->_keyType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/map/type/MapLikeType;->_valueType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    iget-object v4, p0, Lcom/flurry/org/codehaus/jackson/map/type/MapLikeType;->_valueHandler:Ljava/lang/Object;

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/flurry/org/codehaus/jackson/map/type/MapLikeType;-><init>(Ljava/lang/Class;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/type/JavaType;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public bridge synthetic withTypeHandler(Ljava/lang/Object;)Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 17
    invoke-virtual {p0, p1}, Lcom/flurry/org/codehaus/jackson/map/type/MapLikeType;->withTypeHandler(Ljava/lang/Object;)Lcom/flurry/org/codehaus/jackson/map/type/MapLikeType;

    move-result-object v0

    return-object v0
.end method

.method public withValueHandler(Ljava/lang/Object;)Lcom/flurry/org/codehaus/jackson/map/type/MapLikeType;
    .locals 6
    .param p1, "h"    # Ljava/lang/Object;

    .prologue
    .line 125
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/type/MapLikeType;

    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/type/MapLikeType;->_class:Ljava/lang/Class;

    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/type/MapLikeType;->_keyType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/map/type/MapLikeType;->_valueType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    iget-object v5, p0, Lcom/flurry/org/codehaus/jackson/map/type/MapLikeType;->_typeHandler:Ljava/lang/Object;

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/flurry/org/codehaus/jackson/map/type/MapLikeType;-><init>(Ljava/lang/Class;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/type/JavaType;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public bridge synthetic withValueHandler(Ljava/lang/Object;)Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 17
    invoke-virtual {p0, p1}, Lcom/flurry/org/codehaus/jackson/map/type/MapLikeType;->withValueHandler(Ljava/lang/Object;)Lcom/flurry/org/codehaus/jackson/map/type/MapLikeType;

    move-result-object v0

    return-object v0
.end method
