.class public abstract Lcom/flurry/org/codehaus/jackson/type/JavaType;
.super Ljava/lang/Object;
.source "JavaType.java"


# instance fields
.field protected final _class:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field protected final _hashCode:I

.field protected _typeHandler:Ljava/lang/Object;

.field protected _valueHandler:Ljava/lang/Object;


# direct methods
.method protected constructor <init>(Ljava/lang/Class;I)V
    .locals 2
    .param p2, "additionalHash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;I)V"
        }
    .end annotation

    .prologue
    .local p1, "raw":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/flurry/org/codehaus/jackson/type/JavaType;->_class:Ljava/lang/Class;

    .line 66
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v0, p2

    iput v0, p0, Lcom/flurry/org/codehaus/jackson/type/JavaType;->_hashCode:I

    .line 67
    iput-object v1, p0, Lcom/flurry/org/codehaus/jackson/type/JavaType;->_valueHandler:Ljava/lang/Object;

    .line 68
    iput-object v1, p0, Lcom/flurry/org/codehaus/jackson/type/JavaType;->_typeHandler:Ljava/lang/Object;

    .line 69
    return-void
.end method


# virtual methods
.method protected _assertSubclass(Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 484
    .local p1, "subclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "superClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/type/JavaType;->_class:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 485
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not assignable to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/type/JavaType;->_class:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 487
    :cond_0
    return-void
.end method

.method protected abstract _narrow(Ljava/lang/Class;)Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/flurry/org/codehaus/jackson/type/JavaType;"
        }
    .end annotation
.end method

.method protected _widen(Ljava/lang/Class;)Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/flurry/org/codehaus/jackson/type/JavaType;"
        }
    .end annotation

    .prologue
    .line 227
    .local p1, "superclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0, p1}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->_narrow(Ljava/lang/Class;)Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v0

    return-object v0
.end method

.method public containedType(I)Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 363
    const/4 v0, 0x0

    return-object v0
.end method

.method public containedTypeCount()I
    .locals 1

    .prologue
    .line 350
    const/4 v0, 0x0

    return v0
.end method

.method public containedTypeName(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 378
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract equals(Ljava/lang/Object;)Z
.end method

.method public forcedNarrowBy(Ljava/lang/Class;)Lcom/flurry/org/codehaus/jackson/type/JavaType;
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
    .line 185
    .local p1, "subclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/type/JavaType;->_class:Ljava/lang/Class;

    if-ne p1, v1, :cond_0

    .line 196
    .end local p0    # "this":Lcom/flurry/org/codehaus/jackson/type/JavaType;
    :goto_0
    return-object p0

    .line 188
    .restart local p0    # "this":Lcom/flurry/org/codehaus/jackson/type/JavaType;
    :cond_0
    invoke-virtual {p0, p1}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->_narrow(Ljava/lang/Class;)Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v0

    .line 190
    .local v0, "result":Lcom/flurry/org/codehaus/jackson/type/JavaType;
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/type/JavaType;->_valueHandler:Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->getValueHandler()Ljava/lang/Object;

    move-result-object v2

    if-eq v1, v2, :cond_1

    .line 191
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/type/JavaType;->_valueHandler:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->withValueHandler(Ljava/lang/Object;)Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v0

    .line 193
    :cond_1
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/type/JavaType;->_typeHandler:Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->getTypeHandler()Ljava/lang/Object;

    move-result-object v2

    if-eq v1, v2, :cond_2

    .line 194
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/type/JavaType;->_typeHandler:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->withTypeHandler(Ljava/lang/Object;)Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v0

    :cond_2
    move-object p0, v0

    .line 196
    goto :goto_0
.end method

.method public getContentType()Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .locals 1

    .prologue
    .line 341
    const/4 v0, 0x0

    return-object v0
.end method

.method public getErasedSignature()Ljava/lang/String;
    .locals 2

    .prologue
    .line 456
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 457
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0, v0}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->getErasedSignature(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 458
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public abstract getErasedSignature(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
.end method

.method public getGenericSignature()Ljava/lang/String;
    .locals 2

    .prologue
    .line 431
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 432
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0, v0}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->getGenericSignature(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 433
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public abstract getGenericSignature(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
.end method

.method public getKeyType()Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .locals 1

    .prologue
    .line 334
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getRawClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 243
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/type/JavaType;->_class:Ljava/lang/Class;

    return-object v0
.end method

.method public getTypeHandler()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()TT;"
        }
    .end annotation

    .prologue
    .line 400
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/type/JavaType;->_typeHandler:Ljava/lang/Object;

    return-object v0
.end method

.method public getValueHandler()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()TT;"
        }
    .end annotation

    .prologue
    .line 392
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/type/JavaType;->_valueHandler:Ljava/lang/Object;

    return-object v0
.end method

.method public hasGenericTypes()Z
    .locals 1

    .prologue
    .line 327
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->containedTypeCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasRawClass(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 251
    .local p1, "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/type/JavaType;->_class:Ljava/lang/Class;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 502
    iget v0, p0, Lcom/flurry/org/codehaus/jackson/type/JavaType;->_hashCode:I

    return v0
.end method

.method public isAbstract()Z
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/type/JavaType;->_class:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v0

    return v0
.end method

.method public isArrayType()Z
    .locals 1

    .prologue
    .line 279
    const/4 v0, 0x0

    return v0
.end method

.method public isCollectionLikeType()Z
    .locals 1

    .prologue
    .line 302
    const/4 v0, 0x0

    return v0
.end method

.method public isConcrete()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 262
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/type/JavaType;->_class:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    .line 263
    .local v0, "mod":I
    and-int/lit16 v2, v0, 0x600

    if-nez v2, :cond_1

    .line 272
    :cond_0
    :goto_0
    return v1

    .line 269
    :cond_1
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/type/JavaType;->_class:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    if-nez v2, :cond_0

    .line 272
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public abstract isContainerType()Z
.end method

.method public final isEnumType()Z
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/type/JavaType;->_class:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isEnum()Z

    move-result v0

    return v0
.end method

.method public final isFinal()Z
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/type/JavaType;->_class:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v0

    return v0
.end method

.method public final isInterface()Z
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/type/JavaType;->_class:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    return v0
.end method

.method public isMapLikeType()Z
    .locals 1

    .prologue
    .line 311
    const/4 v0, 0x0

    return v0
.end method

.method public final isPrimitive()Z
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/type/JavaType;->_class:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    return v0
.end method

.method public isThrowable()Z
    .locals 2

    .prologue
    .line 276
    const-class v0, Ljava/lang/Throwable;

    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/type/JavaType;->_class:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public narrowBy(Ljava/lang/Class;)Lcom/flurry/org/codehaus/jackson/type/JavaType;
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
    .line 159
    .local p1, "subclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/type/JavaType;->_class:Ljava/lang/Class;

    if-ne p1, v1, :cond_0

    .line 173
    .end local p0    # "this":Lcom/flurry/org/codehaus/jackson/type/JavaType;
    :goto_0
    return-object p0

    .line 163
    .restart local p0    # "this":Lcom/flurry/org/codehaus/jackson/type/JavaType;
    :cond_0
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/type/JavaType;->_class:Ljava/lang/Class;

    invoke-virtual {p0, p1, v1}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->_assertSubclass(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 164
    invoke-virtual {p0, p1}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->_narrow(Ljava/lang/Class;)Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v0

    .line 167
    .local v0, "result":Lcom/flurry/org/codehaus/jackson/type/JavaType;
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/type/JavaType;->_valueHandler:Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->getValueHandler()Ljava/lang/Object;

    move-result-object v2

    if-eq v1, v2, :cond_1

    .line 168
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/type/JavaType;->_valueHandler:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->withValueHandler(Ljava/lang/Object;)Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v0

    .line 170
    :cond_1
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/type/JavaType;->_typeHandler:Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->getTypeHandler()Ljava/lang/Object;

    move-result-object v2

    if-eq v1, v2, :cond_2

    .line 171
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/type/JavaType;->_typeHandler:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->withTypeHandler(Ljava/lang/Object;)Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v0

    :cond_2
    move-object p0, v0

    .line 173
    goto :goto_0
.end method

.method public abstract narrowContentsBy(Ljava/lang/Class;)Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/flurry/org/codehaus/jackson/type/JavaType;"
        }
    .end annotation
.end method

.method public setValueHandler(Ljava/lang/Object;)V
    .locals 3
    .param p1, "h"    # Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 135
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/type/JavaType;->_valueHandler:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 136
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to reset value handler for type ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]; old handler of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/type/JavaType;->_valueHandler:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", new handler of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 139
    :cond_0
    iput-object p1, p0, Lcom/flurry/org/codehaus/jackson/type/JavaType;->_valueHandler:Ljava/lang/Object;

    .line 140
    return-void
.end method

.method public abstract toCanonical()Ljava/lang/String;
.end method

.method public abstract toString()Ljava/lang/String;
.end method

.method public widenBy(Ljava/lang/Class;)Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/flurry/org/codehaus/jackson/type/JavaType;"
        }
    .end annotation

    .prologue
    .line 211
    .local p1, "superclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/type/JavaType;->_class:Ljava/lang/Class;

    if-ne p1, v0, :cond_0

    .line 216
    .end local p0    # "this":Lcom/flurry/org/codehaus/jackson/type/JavaType;
    :goto_0
    return-object p0

    .line 215
    .restart local p0    # "this":Lcom/flurry/org/codehaus/jackson/type/JavaType;
    :cond_0
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/type/JavaType;->_class:Ljava/lang/Class;

    invoke-virtual {p0, v0, p1}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->_assertSubclass(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 216
    invoke-virtual {p0, p1}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->_widen(Ljava/lang/Class;)Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object p0

    goto :goto_0
.end method

.method public abstract widenContentsBy(Ljava/lang/Class;)Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/flurry/org/codehaus/jackson/type/JavaType;"
        }
    .end annotation
.end method

.method public abstract withContentTypeHandler(Ljava/lang/Object;)Lcom/flurry/org/codehaus/jackson/type/JavaType;
.end method

.method public withContentValueHandler(Ljava/lang/Object;)Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .locals 1
    .param p1, "h"    # Ljava/lang/Object;

    .prologue
    .line 118
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->getContentType()Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->setValueHandler(Ljava/lang/Object;)V

    .line 119
    return-object p0
.end method

.method public abstract withTypeHandler(Ljava/lang/Object;)Lcom/flurry/org/codehaus/jackson/type/JavaType;
.end method

.method public withValueHandler(Ljava/lang/Object;)Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .locals 0
    .param p1, "h"    # Ljava/lang/Object;

    .prologue
    .line 103
    invoke-virtual {p0, p1}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->setValueHandler(Ljava/lang/Object;)V

    .line 104
    return-object p0
.end method
