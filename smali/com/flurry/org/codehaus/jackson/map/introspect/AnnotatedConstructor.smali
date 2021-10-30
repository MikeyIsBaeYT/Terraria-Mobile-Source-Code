.class public final Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedConstructor;
.super Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;
.source "AnnotatedConstructor.java"


# instance fields
.field protected final _constructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Constructor;Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotationMap;[Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotationMap;)V
    .locals 2
    .param p2, "classAnn"    # Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotationMap;
    .param p3, "paramAnn"    # [Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotationMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor",
            "<*>;",
            "Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotationMap;",
            "[",
            "Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotationMap;",
            ")V"
        }
    .end annotation

    .prologue
    .line 24
    .local p1, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    invoke-direct {p0, p2, p3}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;-><init>(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotationMap;[Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotationMap;)V

    .line 25
    if-nez p1, :cond_0

    .line 26
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Null constructor not allowed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 28
    :cond_0
    iput-object p1, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedConstructor;->_constructor:Ljava/lang/reflect/Constructor;

    .line 29
    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 99
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedConstructor;->_constructor:Ljava/lang/reflect/Constructor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final call([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 104
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedConstructor;->_constructor:Ljava/lang/reflect/Constructor;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final call1(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "arg"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 109
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedConstructor;->_constructor:Ljava/lang/reflect/Constructor;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getAnnotated()Ljava/lang/reflect/AnnotatedElement;
    .locals 1

    .prologue
    .line 10
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedConstructor;->getAnnotated()Ljava/lang/reflect/Constructor;

    move-result-object v0

    return-object v0
.end method

.method public getAnnotated()Ljava/lang/reflect/Constructor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 43
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedConstructor;->_constructor:Ljava/lang/reflect/Constructor;

    return-object v0
.end method

.method public getDeclaringClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 119
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedConstructor;->_constructor:Ljava/lang/reflect/Constructor;

    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public getGenericType()Ljava/lang/reflect/Type;
    .locals 1

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedConstructor;->getRawType()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public getMember()Ljava/lang/reflect/Member;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedConstructor;->_constructor:Ljava/lang/reflect/Constructor;

    return-object v0
.end method

.method public getModifiers()I
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedConstructor;->_constructor:Ljava/lang/reflect/Constructor;

    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getModifiers()I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedConstructor;->_constructor:Ljava/lang/reflect/Constructor;

    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParameterClass(I)Ljava/lang/Class;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 86
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedConstructor;->_constructor:Ljava/lang/reflect/Constructor;

    invoke-virtual {v1}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    .line 87
    .local v0, "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v1, v0

    if-lt p1, v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    aget-object v1, v0, p1

    goto :goto_0
.end method

.method public getParameterCount()I
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedConstructor;->_constructor:Ljava/lang/reflect/Constructor;

    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public getParameterType(I)Ljava/lang/reflect/Type;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 93
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedConstructor;->_constructor:Ljava/lang/reflect/Constructor;

    invoke-virtual {v1}, Ljava/lang/reflect/Constructor;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v0

    .line 94
    .local v0, "types":[Ljava/lang/reflect/Type;
    array-length v1, v0

    if-lt p1, v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    aget-object v1, v0, p1

    goto :goto_0
.end method

.method public getRawType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 58
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedConstructor;->_constructor:Ljava/lang/reflect/Constructor;

    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public getType(Lcom/flurry/org/codehaus/jackson/map/type/TypeBindings;)Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .locals 1
    .param p1, "bindings"    # Lcom/flurry/org/codehaus/jackson/map/type/TypeBindings;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedConstructor;->_constructor:Ljava/lang/reflect/Constructor;

    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedConstructor;->getType(Lcom/flurry/org/codehaus/jackson/map/type/TypeBindings;[Ljava/lang/reflect/TypeVariable;)Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v0

    return-object v0
.end method

.method public setValue(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .param p1, "pojo"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 128
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot call setValue() on constructor of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedConstructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[constructor for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedConstructor;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", annotations: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedConstructor;->_annotations:Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotationMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic withAnnotations(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotationMap;)Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;
    .locals 1
    .param p1, "x0"    # Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotationMap;

    .prologue
    .line 10
    invoke-virtual {p0, p1}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedConstructor;->withAnnotations(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotationMap;)Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedConstructor;

    move-result-object v0

    return-object v0
.end method

.method public withAnnotations(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotationMap;)Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedConstructor;
    .locals 3
    .param p1, "ann"    # Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotationMap;

    .prologue
    .line 33
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedConstructor;

    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedConstructor;->_constructor:Ljava/lang/reflect/Constructor;

    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedConstructor;->_paramAnnotations:[Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotationMap;

    invoke-direct {v0, v1, p1, v2}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedConstructor;-><init>(Ljava/lang/reflect/Constructor;Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotationMap;[Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotationMap;)V

    return-object v0
.end method
