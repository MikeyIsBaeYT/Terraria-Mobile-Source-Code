.class public Lcom/flurry/org/codehaus/jackson/map/type/CollectionLikeType;
.super Lcom/flurry/org/codehaus/jackson/map/type/TypeBase;
.source "CollectionLikeType.java"


# instance fields
.field protected final _elementType:Lcom/flurry/org/codehaus/jackson/type/JavaType;


# direct methods
.method protected constructor <init>(Ljava/lang/Class;Lcom/flurry/org/codehaus/jackson/type/JavaType;)V
    .locals 2
    .param p2, "elemT"    # Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/flurry/org/codehaus/jackson/type/JavaType;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .local p1, "collT":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .line 32
    invoke-virtual {p2}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->hashCode()I

    move-result v0

    invoke-direct {p0, p1, v0, v1, v1}, Lcom/flurry/org/codehaus/jackson/map/type/TypeBase;-><init>(Ljava/lang/Class;ILjava/lang/Object;Ljava/lang/Object;)V

    .line 33
    iput-object p2, p0, Lcom/flurry/org/codehaus/jackson/map/type/CollectionLikeType;->_elementType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    .line 34
    return-void
.end method

.method protected constructor <init>(Ljava/lang/Class;Lcom/flurry/org/codehaus/jackson/type/JavaType;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .param p2, "elemT"    # Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .param p3, "valueHandler"    # Ljava/lang/Object;
    .param p4, "typeHandler"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/flurry/org/codehaus/jackson/type/JavaType;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 39
    .local p1, "collT":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p2}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->hashCode()I

    move-result v0

    invoke-direct {p0, p1, v0, p3, p4}, Lcom/flurry/org/codehaus/jackson/map/type/TypeBase;-><init>(Ljava/lang/Class;ILjava/lang/Object;Ljava/lang/Object;)V

    .line 40
    iput-object p2, p0, Lcom/flurry/org/codehaus/jackson/map/type/CollectionLikeType;->_elementType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    .line 41
    return-void
.end method

.method public static construct(Ljava/lang/Class;Lcom/flurry/org/codehaus/jackson/type/JavaType;)Lcom/flurry/org/codehaus/jackson/map/type/CollectionLikeType;
    .locals 2
    .param p1, "elemT"    # Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/flurry/org/codehaus/jackson/type/JavaType;",
            ")",
            "Lcom/flurry/org/codehaus/jackson/map/type/CollectionLikeType;"
        }
    .end annotation

    .prologue
    .local p0, "rawType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .line 73
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/type/CollectionLikeType;

    invoke-direct {v0, p0, p1, v1, v1}, Lcom/flurry/org/codehaus/jackson/map/type/CollectionLikeType;-><init>(Ljava/lang/Class;Lcom/flurry/org/codehaus/jackson/type/JavaType;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method protected _narrow(Ljava/lang/Class;)Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/flurry/org/codehaus/jackson/type/JavaType;"
        }
    .end annotation

    .prologue
    .line 45
    .local p1, "subclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/type/CollectionLikeType;

    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/type/CollectionLikeType;->_elementType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/type/CollectionLikeType;->_valueHandler:Ljava/lang/Object;

    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/map/type/CollectionLikeType;->_typeHandler:Ljava/lang/Object;

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/flurry/org/codehaus/jackson/map/type/CollectionLikeType;-><init>(Ljava/lang/Class;Lcom/flurry/org/codehaus/jackson/type/JavaType;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method protected buildCanonicalName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 154
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/type/CollectionLikeType;->_class:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/type/CollectionLikeType;->_elementType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    if-eqz v1, :cond_0

    .line 156
    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 157
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/type/CollectionLikeType;->_elementType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    invoke-virtual {v1}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->toCanonical()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 160
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public containedType(I)Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 124
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/type/CollectionLikeType;->_elementType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public containedTypeCount()I
    .locals 1

    .prologue
    .line 120
    const/4 v0, 0x1

    return v0
.end method

.method public containedTypeName(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 133
    if-nez p1, :cond_0

    const-string v0, "E"

    .line 134
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 190
    if-ne p1, p0, :cond_1

    .line 195
    :cond_0
    :goto_0
    return v1

    .line 191
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    goto :goto_0

    .line 192
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

    .line 194
    check-cast v0, Lcom/flurry/org/codehaus/jackson/map/type/CollectionLikeType;

    .line 195
    .local v0, "other":Lcom/flurry/org/codehaus/jackson/map/type/CollectionLikeType;
    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/map/type/CollectionLikeType;->_class:Ljava/lang/Class;

    iget-object v4, v0, Lcom/flurry/org/codehaus/jackson/map/type/CollectionLikeType;->_class:Ljava/lang/Class;

    if-ne v3, v4, :cond_4

    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/map/type/CollectionLikeType;->_elementType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    iget-object v4, v0, Lcom/flurry/org/codehaus/jackson/map/type/CollectionLikeType;->_elementType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

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
    .line 117
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/type/CollectionLikeType;->_elementType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    return-object v0
.end method

.method public getErasedSignature(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 2
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/type/CollectionLikeType;->_class:Ljava/lang/Class;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/flurry/org/codehaus/jackson/map/type/CollectionLikeType;->_classSignature(Ljava/lang/Class;Ljava/lang/StringBuilder;Z)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public getGenericSignature(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 2
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    .line 144
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/type/CollectionLikeType;->_class:Ljava/lang/Class;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/flurry/org/codehaus/jackson/map/type/CollectionLikeType;->_classSignature(Ljava/lang/Class;Ljava/lang/StringBuilder;Z)Ljava/lang/StringBuilder;

    .line 145
    const/16 v0, 0x3c

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 146
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/type/CollectionLikeType;->_elementType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    invoke-virtual {v0, p1}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->getGenericSignature(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 147
    const-string v0, ">;"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    return-object p1
.end method

.method public isCollectionLikeType()Z
    .locals 1

    .prologue
    .line 114
    const/4 v0, 0x1

    return v0
.end method

.method public isContainerType()Z
    .locals 1

    .prologue
    .line 111
    const/4 v0, 0x1

    return v0
.end method

.method public isTrueCollectionType()Z
    .locals 2

    .prologue
    .line 178
    const-class v0, Ljava/util/Collection;

    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/type/CollectionLikeType;->_class:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public narrowContentsBy(Ljava/lang/Class;)Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/flurry/org/codehaus/jackson/type/JavaType;"
        }
    .end annotation

    .prologue
    .line 53
    .local p1, "contentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/type/CollectionLikeType;->_elementType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 56
    .end local p0    # "this":Lcom/flurry/org/codehaus/jackson/map/type/CollectionLikeType;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/flurry/org/codehaus/jackson/map/type/CollectionLikeType;
    :cond_0
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/type/CollectionLikeType;

    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/type/CollectionLikeType;->_class:Ljava/lang/Class;

    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/type/CollectionLikeType;->_elementType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    invoke-virtual {v2, p1}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->narrowBy(Ljava/lang/Class;)Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/map/type/CollectionLikeType;->_valueHandler:Ljava/lang/Object;

    iget-object v4, p0, Lcom/flurry/org/codehaus/jackson/map/type/CollectionLikeType;->_typeHandler:Ljava/lang/Object;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/flurry/org/codehaus/jackson/map/type/CollectionLikeType;-><init>(Ljava/lang/Class;Lcom/flurry/org/codehaus/jackson/type/JavaType;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[collection-like type; class "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/type/CollectionLikeType;->_class:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", contains "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/type/CollectionLikeType;->_elementType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

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
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/flurry/org/codehaus/jackson/type/JavaType;"
        }
    .end annotation

    .prologue
    .line 63
    .local p1, "contentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/type/CollectionLikeType;->_elementType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 66
    .end local p0    # "this":Lcom/flurry/org/codehaus/jackson/map/type/CollectionLikeType;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/flurry/org/codehaus/jackson/map/type/CollectionLikeType;
    :cond_0
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/type/CollectionLikeType;

    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/type/CollectionLikeType;->_class:Ljava/lang/Class;

    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/type/CollectionLikeType;->_elementType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    invoke-virtual {v2, p1}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->widenBy(Ljava/lang/Class;)Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/map/type/CollectionLikeType;->_valueHandler:Ljava/lang/Object;

    iget-object v4, p0, Lcom/flurry/org/codehaus/jackson/map/type/CollectionLikeType;->_typeHandler:Ljava/lang/Object;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/flurry/org/codehaus/jackson/map/type/CollectionLikeType;-><init>(Ljava/lang/Class;Lcom/flurry/org/codehaus/jackson/type/JavaType;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public withContentTypeHandler(Ljava/lang/Object;)Lcom/flurry/org/codehaus/jackson/map/type/CollectionLikeType;
    .locals 5
    .param p1, "h"    # Ljava/lang/Object;

    .prologue
    .line 87
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/type/CollectionLikeType;

    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/type/CollectionLikeType;->_class:Ljava/lang/Class;

    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/type/CollectionLikeType;->_elementType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    invoke-virtual {v2, p1}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->withTypeHandler(Ljava/lang/Object;)Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/map/type/CollectionLikeType;->_valueHandler:Ljava/lang/Object;

    iget-object v4, p0, Lcom/flurry/org/codehaus/jackson/map/type/CollectionLikeType;->_typeHandler:Ljava/lang/Object;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/flurry/org/codehaus/jackson/map/type/CollectionLikeType;-><init>(Ljava/lang/Class;Lcom/flurry/org/codehaus/jackson/type/JavaType;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public bridge synthetic withContentTypeHandler(Ljava/lang/Object;)Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 16
    invoke-virtual {p0, p1}, Lcom/flurry/org/codehaus/jackson/map/type/CollectionLikeType;->withContentTypeHandler(Ljava/lang/Object;)Lcom/flurry/org/codehaus/jackson/map/type/CollectionLikeType;

    move-result-object v0

    return-object v0
.end method

.method public withContentValueHandler(Ljava/lang/Object;)Lcom/flurry/org/codehaus/jackson/map/type/CollectionLikeType;
    .locals 5
    .param p1, "h"    # Ljava/lang/Object;

    .prologue
    .line 100
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/type/CollectionLikeType;

    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/type/CollectionLikeType;->_class:Ljava/lang/Class;

    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/type/CollectionLikeType;->_elementType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    invoke-virtual {v2, p1}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->withValueHandler(Ljava/lang/Object;)Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/map/type/CollectionLikeType;->_valueHandler:Ljava/lang/Object;

    iget-object v4, p0, Lcom/flurry/org/codehaus/jackson/map/type/CollectionLikeType;->_typeHandler:Ljava/lang/Object;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/flurry/org/codehaus/jackson/map/type/CollectionLikeType;-><init>(Ljava/lang/Class;Lcom/flurry/org/codehaus/jackson/type/JavaType;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public bridge synthetic withContentValueHandler(Ljava/lang/Object;)Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 16
    invoke-virtual {p0, p1}, Lcom/flurry/org/codehaus/jackson/map/type/CollectionLikeType;->withContentValueHandler(Ljava/lang/Object;)Lcom/flurry/org/codehaus/jackson/map/type/CollectionLikeType;

    move-result-object v0

    return-object v0
.end method

.method public withTypeHandler(Ljava/lang/Object;)Lcom/flurry/org/codehaus/jackson/map/type/CollectionLikeType;
    .locals 4
    .param p1, "h"    # Ljava/lang/Object;

    .prologue
    .line 80
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/type/CollectionLikeType;

    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/type/CollectionLikeType;->_class:Ljava/lang/Class;

    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/type/CollectionLikeType;->_elementType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/map/type/CollectionLikeType;->_valueHandler:Ljava/lang/Object;

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/flurry/org/codehaus/jackson/map/type/CollectionLikeType;-><init>(Ljava/lang/Class;Lcom/flurry/org/codehaus/jackson/type/JavaType;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public bridge synthetic withTypeHandler(Ljava/lang/Object;)Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 16
    invoke-virtual {p0, p1}, Lcom/flurry/org/codehaus/jackson/map/type/CollectionLikeType;->withTypeHandler(Ljava/lang/Object;)Lcom/flurry/org/codehaus/jackson/map/type/CollectionLikeType;

    move-result-object v0

    return-object v0
.end method

.method public withValueHandler(Ljava/lang/Object;)Lcom/flurry/org/codehaus/jackson/map/type/CollectionLikeType;
    .locals 4
    .param p1, "h"    # Ljava/lang/Object;

    .prologue
    .line 94
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/type/CollectionLikeType;

    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/type/CollectionLikeType;->_class:Ljava/lang/Class;

    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/type/CollectionLikeType;->_elementType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/map/type/CollectionLikeType;->_typeHandler:Ljava/lang/Object;

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/flurry/org/codehaus/jackson/map/type/CollectionLikeType;-><init>(Ljava/lang/Class;Lcom/flurry/org/codehaus/jackson/type/JavaType;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public bridge synthetic withValueHandler(Ljava/lang/Object;)Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 16
    invoke-virtual {p0, p1}, Lcom/flurry/org/codehaus/jackson/map/type/CollectionLikeType;->withValueHandler(Ljava/lang/Object;)Lcom/flurry/org/codehaus/jackson/map/type/CollectionLikeType;

    move-result-object v0

    return-object v0
.end method
