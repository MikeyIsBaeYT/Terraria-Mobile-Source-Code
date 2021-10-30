.class public final Lcom/flurry/org/codehaus/jackson/map/type/ArrayType;
.super Lcom/flurry/org/codehaus/jackson/map/type/TypeBase;
.source "ArrayType.java"


# instance fields
.field protected final _componentType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

.field protected final _emptyArray:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Lcom/flurry/org/codehaus/jackson/type/JavaType;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p1, "componentType"    # Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .param p2, "emptyInstance"    # Ljava/lang/Object;
    .param p3, "valueHandler"    # Ljava/lang/Object;
    .param p4, "typeHandler"    # Ljava/lang/Object;

    .prologue
    .line 30
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->hashCode()I

    move-result v1

    invoke-direct {p0, v0, v1, p3, p4}, Lcom/flurry/org/codehaus/jackson/map/type/TypeBase;-><init>(Ljava/lang/Class;ILjava/lang/Object;Ljava/lang/Object;)V

    .line 32
    iput-object p1, p0, Lcom/flurry/org/codehaus/jackson/map/type/ArrayType;->_componentType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    .line 33
    iput-object p2, p0, Lcom/flurry/org/codehaus/jackson/map/type/ArrayType;->_emptyArray:Ljava/lang/Object;

    .line 34
    return-void
.end method

.method public static construct(Lcom/flurry/org/codehaus/jackson/type/JavaType;)Lcom/flurry/org/codehaus/jackson/map/type/ArrayType;
    .locals 1
    .param p0, "componentType"    # Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 43
    invoke-static {p0, v0, v0}, Lcom/flurry/org/codehaus/jackson/map/type/ArrayType;->construct(Lcom/flurry/org/codehaus/jackson/type/JavaType;Ljava/lang/Object;Ljava/lang/Object;)Lcom/flurry/org/codehaus/jackson/map/type/ArrayType;

    move-result-object v0

    return-object v0
.end method

.method public static construct(Lcom/flurry/org/codehaus/jackson/type/JavaType;Ljava/lang/Object;Ljava/lang/Object;)Lcom/flurry/org/codehaus/jackson/map/type/ArrayType;
    .locals 4
    .param p0, "componentType"    # Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .param p1, "valueHandler"    # Ljava/lang/Object;
    .param p2, "typeHandler"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 55
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    .line 56
    .local v0, "emptyInstance":Ljava/lang/Object;
    new-instance v1, Lcom/flurry/org/codehaus/jackson/map/type/ArrayType;

    invoke-direct {v1, p0, v0, v3, v3}, Lcom/flurry/org/codehaus/jackson/map/type/ArrayType;-><init>(Lcom/flurry/org/codehaus/jackson/type/JavaType;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method


# virtual methods
.method protected _narrow(Ljava/lang/Class;)Lcom/flurry/org/codehaus/jackson/type/JavaType;
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
    .line 120
    .local p1, "subclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-nez v2, :cond_0

    .line 121
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Incompatible narrowing operation: trying to narrow "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/map/type/ArrayType;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to class "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 126
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    .line 134
    .local v0, "newCompClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {}, Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;->defaultInstance()Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;->constructType(Ljava/lang/reflect/Type;)Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v1

    .line 135
    .local v1, "newCompType":Lcom/flurry/org/codehaus/jackson/type/JavaType;
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/type/ArrayType;->_valueHandler:Ljava/lang/Object;

    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/map/type/ArrayType;->_typeHandler:Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/flurry/org/codehaus/jackson/map/type/ArrayType;->construct(Lcom/flurry/org/codehaus/jackson/type/JavaType;Ljava/lang/Object;Ljava/lang/Object;)Lcom/flurry/org/codehaus/jackson/map/type/ArrayType;

    move-result-object v2

    return-object v2
.end method

.method protected buildCanonicalName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/type/ArrayType;->_class:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public containedType(I)Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 223
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/type/ArrayType;->_componentType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public containedTypeCount()I
    .locals 1

    .prologue
    .line 220
    const/4 v0, 0x1

    return v0
.end method

.method public containedTypeName(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 203
    if-nez p1, :cond_0

    const-string v0, "E"

    .line 204
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 253
    if-ne p1, p0, :cond_1

    const/4 v1, 0x1

    .line 258
    :cond_0
    :goto_0
    return v1

    .line 254
    :cond_1
    if-eqz p1, :cond_0

    .line 255
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_0

    move-object v0, p1

    .line 257
    check-cast v0, Lcom/flurry/org/codehaus/jackson/map/type/ArrayType;

    .line 258
    .local v0, "other":Lcom/flurry/org/codehaus/jackson/map/type/ArrayType;
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/type/ArrayType;->_componentType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    iget-object v2, v0, Lcom/flurry/org/codehaus/jackson/map/type/ArrayType;->_componentType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    invoke-virtual {v1, v2}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getContentType()Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/type/ArrayType;->_componentType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    return-object v0
.end method

.method public getErasedSignature(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 1
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    .line 234
    const/16 v0, 0x5b

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 235
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/type/ArrayType;->_componentType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    invoke-virtual {v0, p1}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->getErasedSignature(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public getGenericSignature(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 1
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    .line 228
    const/16 v0, 0x5b

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 229
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/type/ArrayType;->_componentType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    invoke-virtual {v0, p1}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->getGenericSignature(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public hasGenericTypes()Z
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/type/ArrayType;->_componentType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->hasGenericTypes()Z

    move-result v0

    return v0
.end method

.method public isAbstract()Z
    .locals 1

    .prologue
    .line 179
    const/4 v0, 0x0

    return v0
.end method

.method public isArrayType()Z
    .locals 1

    .prologue
    .line 171
    const/4 v0, 0x1

    return v0
.end method

.method public isConcrete()Z
    .locals 1

    .prologue
    .line 187
    const/4 v0, 0x1

    return v0
.end method

.method public isContainerType()Z
    .locals 1

    .prologue
    .line 214
    const/4 v0, 0x1

    return v0
.end method

.method public narrowContentsBy(Ljava/lang/Class;)Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/flurry/org/codehaus/jackson/type/JavaType;"
        }
    .end annotation

    .prologue
    .line 146
    .local p1, "contentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/type/ArrayType;->_componentType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 149
    .end local p0    # "this":Lcom/flurry/org/codehaus/jackson/map/type/ArrayType;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/flurry/org/codehaus/jackson/map/type/ArrayType;
    :cond_0
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/type/ArrayType;->_componentType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    invoke-virtual {v0, p1}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->narrowBy(Ljava/lang/Class;)Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/type/ArrayType;->_valueHandler:Ljava/lang/Object;

    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/type/ArrayType;->_typeHandler:Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/flurry/org/codehaus/jackson/map/type/ArrayType;->construct(Lcom/flurry/org/codehaus/jackson/type/JavaType;Ljava/lang/Object;Ljava/lang/Object;)Lcom/flurry/org/codehaus/jackson/map/type/ArrayType;

    move-result-object p0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[array type, component type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/type/ArrayType;->_componentType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

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
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/flurry/org/codehaus/jackson/type/JavaType;"
        }
    .end annotation

    .prologue
    .line 157
    .local p1, "contentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/type/ArrayType;->_componentType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 160
    .end local p0    # "this":Lcom/flurry/org/codehaus/jackson/map/type/ArrayType;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/flurry/org/codehaus/jackson/map/type/ArrayType;
    :cond_0
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/type/ArrayType;->_componentType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    invoke-virtual {v0, p1}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->widenBy(Ljava/lang/Class;)Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/type/ArrayType;->_valueHandler:Ljava/lang/Object;

    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/type/ArrayType;->_typeHandler:Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/flurry/org/codehaus/jackson/map/type/ArrayType;->construct(Lcom/flurry/org/codehaus/jackson/type/JavaType;Ljava/lang/Object;Ljava/lang/Object;)Lcom/flurry/org/codehaus/jackson/map/type/ArrayType;

    move-result-object p0

    goto :goto_0
.end method

.method public withContentTypeHandler(Ljava/lang/Object;)Lcom/flurry/org/codehaus/jackson/map/type/ArrayType;
    .locals 5
    .param p1, "h"    # Ljava/lang/Object;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/type/ArrayType;->_componentType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->getTypeHandler()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 76
    .end local p0    # "this":Lcom/flurry/org/codehaus/jackson/map/type/ArrayType;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/flurry/org/codehaus/jackson/map/type/ArrayType;
    :cond_0
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/type/ArrayType;

    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/type/ArrayType;->_componentType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    invoke-virtual {v1, p1}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->withTypeHandler(Ljava/lang/Object;)Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/type/ArrayType;->_emptyArray:Ljava/lang/Object;

    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/map/type/ArrayType;->_valueHandler:Ljava/lang/Object;

    iget-object v4, p0, Lcom/flurry/org/codehaus/jackson/map/type/ArrayType;->_typeHandler:Ljava/lang/Object;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/flurry/org/codehaus/jackson/map/type/ArrayType;-><init>(Lcom/flurry/org/codehaus/jackson/type/JavaType;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public bridge synthetic withContentTypeHandler(Ljava/lang/Object;)Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 12
    invoke-virtual {p0, p1}, Lcom/flurry/org/codehaus/jackson/map/type/ArrayType;->withContentTypeHandler(Ljava/lang/Object;)Lcom/flurry/org/codehaus/jackson/map/type/ArrayType;

    move-result-object v0

    return-object v0
.end method

.method public withContentValueHandler(Ljava/lang/Object;)Lcom/flurry/org/codehaus/jackson/map/type/ArrayType;
    .locals 5
    .param p1, "h"    # Ljava/lang/Object;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/type/ArrayType;->_componentType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->getValueHandler()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 95
    .end local p0    # "this":Lcom/flurry/org/codehaus/jackson/map/type/ArrayType;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/flurry/org/codehaus/jackson/map/type/ArrayType;
    :cond_0
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/type/ArrayType;

    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/type/ArrayType;->_componentType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    invoke-virtual {v1, p1}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->withValueHandler(Ljava/lang/Object;)Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/type/ArrayType;->_emptyArray:Ljava/lang/Object;

    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/map/type/ArrayType;->_valueHandler:Ljava/lang/Object;

    iget-object v4, p0, Lcom/flurry/org/codehaus/jackson/map/type/ArrayType;->_typeHandler:Ljava/lang/Object;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/flurry/org/codehaus/jackson/map/type/ArrayType;-><init>(Lcom/flurry/org/codehaus/jackson/type/JavaType;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public bridge synthetic withContentValueHandler(Ljava/lang/Object;)Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 12
    invoke-virtual {p0, p1}, Lcom/flurry/org/codehaus/jackson/map/type/ArrayType;->withContentValueHandler(Ljava/lang/Object;)Lcom/flurry/org/codehaus/jackson/map/type/ArrayType;

    move-result-object v0

    return-object v0
.end method

.method public withTypeHandler(Ljava/lang/Object;)Lcom/flurry/org/codehaus/jackson/map/type/ArrayType;
    .locals 4
    .param p1, "h"    # Ljava/lang/Object;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/type/ArrayType;->_typeHandler:Ljava/lang/Object;

    if-ne p1, v0, :cond_0

    .line 66
    .end local p0    # "this":Lcom/flurry/org/codehaus/jackson/map/type/ArrayType;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/flurry/org/codehaus/jackson/map/type/ArrayType;
    :cond_0
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/type/ArrayType;

    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/type/ArrayType;->_componentType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/type/ArrayType;->_emptyArray:Ljava/lang/Object;

    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/map/type/ArrayType;->_valueHandler:Ljava/lang/Object;

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/flurry/org/codehaus/jackson/map/type/ArrayType;-><init>(Lcom/flurry/org/codehaus/jackson/type/JavaType;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public bridge synthetic withTypeHandler(Ljava/lang/Object;)Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 12
    invoke-virtual {p0, p1}, Lcom/flurry/org/codehaus/jackson/map/type/ArrayType;->withTypeHandler(Ljava/lang/Object;)Lcom/flurry/org/codehaus/jackson/map/type/ArrayType;

    move-result-object v0

    return-object v0
.end method

.method public withValueHandler(Ljava/lang/Object;)Lcom/flurry/org/codehaus/jackson/map/type/ArrayType;
    .locals 4
    .param p1, "h"    # Ljava/lang/Object;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/type/ArrayType;->_valueHandler:Ljava/lang/Object;

    if-ne p1, v0, :cond_0

    .line 86
    .end local p0    # "this":Lcom/flurry/org/codehaus/jackson/map/type/ArrayType;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/flurry/org/codehaus/jackson/map/type/ArrayType;
    :cond_0
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/type/ArrayType;

    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/type/ArrayType;->_componentType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/type/ArrayType;->_emptyArray:Ljava/lang/Object;

    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/map/type/ArrayType;->_typeHandler:Ljava/lang/Object;

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/flurry/org/codehaus/jackson/map/type/ArrayType;-><init>(Lcom/flurry/org/codehaus/jackson/type/JavaType;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public bridge synthetic withValueHandler(Ljava/lang/Object;)Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 12
    invoke-virtual {p0, p1}, Lcom/flurry/org/codehaus/jackson/map/type/ArrayType;->withValueHandler(Ljava/lang/Object;)Lcom/flurry/org/codehaus/jackson/map/type/ArrayType;

    move-result-object v0

    return-object v0
.end method
