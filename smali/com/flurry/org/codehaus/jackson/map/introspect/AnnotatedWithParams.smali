.class public abstract Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;
.super Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;
.source "AnnotatedWithParams.java"


# instance fields
.field protected final _paramAnnotations:[Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotationMap;


# direct methods
.method protected constructor <init>(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotationMap;[Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotationMap;)V
    .locals 0
    .param p1, "annotations"    # Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotationMap;
    .param p2, "paramAnnotations"    # [Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotationMap;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;-><init>(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotationMap;)V

    .line 33
    iput-object p2, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;->_paramAnnotations:[Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotationMap;

    .line 34
    return-void
.end method


# virtual methods
.method public final addIfNotPresent(Ljava/lang/annotation/Annotation;)V
    .locals 1
    .param p1, "a"    # Ljava/lang/annotation/Annotation;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;->_annotations:Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotationMap;

    invoke-virtual {v0, p1}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotationMap;->addIfNotPresent(Ljava/lang/annotation/Annotation;)V

    .line 69
    return-void
.end method

.method public final addOrOverride(Ljava/lang/annotation/Annotation;)V
    .locals 1
    .param p1, "a"    # Ljava/lang/annotation/Annotation;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;->_annotations:Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotationMap;

    invoke-virtual {v0, p1}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotationMap;->add(Ljava/lang/annotation/Annotation;)V

    .line 43
    return-void
.end method

.method public final addOrOverrideParam(ILjava/lang/annotation/Annotation;)V
    .locals 2
    .param p1, "paramIndex"    # I
    .param p2, "a"    # Ljava/lang/annotation/Annotation;

    .prologue
    .line 53
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;->_paramAnnotations:[Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotationMap;

    aget-object v0, v1, p1

    .line 54
    .local v0, "old":Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotationMap;
    if-nez v0, :cond_0

    .line 55
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotationMap;

    .end local v0    # "old":Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotationMap;
    invoke-direct {v0}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotationMap;-><init>()V

    .line 56
    .restart local v0    # "old":Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotationMap;
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;->_paramAnnotations:[Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotationMap;

    aput-object v0, v1, p1

    .line 58
    :cond_0
    invoke-virtual {v0, p2}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotationMap;->add(Ljava/lang/annotation/Annotation;)V

    .line 59
    return-void
.end method

.method public abstract call()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract call([Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract call1(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public final getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class",
            "<TA;>;)TA;"
        }
    .end annotation

    .prologue
    .line 118
    .local p1, "acls":Ljava/lang/Class;, "Ljava/lang/Class<TA;>;"
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;->_annotations:Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotationMap;

    invoke-virtual {v0, p1}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotationMap;->get(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method public final getAnnotationCount()I
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;->_annotations:Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotationMap;

    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotationMap;->size()I

    move-result v0

    return v0
.end method

.method public final getParameter(I)Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedParameter;
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 138
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedParameter;

    invoke-virtual {p0, p1}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;->getParameterType(I)Ljava/lang/reflect/Type;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;->_paramAnnotations:[Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotationMap;

    aget-object v2, v2, p1

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedParameter;-><init>(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;Ljava/lang/reflect/Type;Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotationMap;I)V

    return-object v0
.end method

.method public final getParameterAnnotations(I)Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotationMap;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 129
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;->_paramAnnotations:[Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotationMap;

    if-eqz v0, :cond_0

    .line 130
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;->_paramAnnotations:[Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotationMap;

    array-length v0, v0

    if-gt p1, v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;->_paramAnnotations:[Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotationMap;

    aget-object v0, v0, p1

    .line 134
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract getParameterClass(I)Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end method

.method public abstract getParameterCount()I
.end method

.method public abstract getParameterType(I)Ljava/lang/reflect/Type;
.end method

.method protected getType(Lcom/flurry/org/codehaus/jackson/map/type/TypeBindings;[Ljava/lang/reflect/TypeVariable;)Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .locals 9
    .param p1, "bindings"    # Lcom/flurry/org/codehaus/jackson/map/type/TypeBindings;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/type/TypeBindings;",
            "[",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;)",
            "Lcom/flurry/org/codehaus/jackson/type/JavaType;"
        }
    .end annotation

    .prologue
    .line 93
    .local p2, "typeParams":[Ljava/lang/reflect/TypeVariable;, "[Ljava/lang/reflect/TypeVariable<*>;"
    if-eqz p2, :cond_1

    array-length v7, p2

    if-lez v7, :cond_1

    .line 94
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/map/type/TypeBindings;->childInstance()Lcom/flurry/org/codehaus/jackson/map/type/TypeBindings;

    move-result-object p1

    .line 95
    move-object v0, p2

    .local v0, "arr$":[Ljava/lang/reflect/TypeVariable;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v6, v0, v1

    .line 96
    .local v6, "var":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    invoke-interface {v6}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v4

    .line 98
    .local v4, "name":Ljava/lang/String;
    invoke-virtual {p1, v4}, Lcom/flurry/org/codehaus/jackson/map/type/TypeBindings;->_addPlaceholder(Ljava/lang/String;)V

    .line 100
    invoke-interface {v6}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    move-result-object v7

    const/4 v8, 0x0

    aget-object v3, v7, v8

    .line 101
    .local v3, "lowerBound":Ljava/lang/reflect/Type;
    if-nez v3, :cond_0

    invoke-static {}, Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;->unknownType()Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v5

    .line 103
    .local v5, "type":Lcom/flurry/org/codehaus/jackson/type/JavaType;
    :goto_1
    invoke-interface {v6}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7, v5}, Lcom/flurry/org/codehaus/jackson/map/type/TypeBindings;->addBinding(Ljava/lang/String;Lcom/flurry/org/codehaus/jackson/type/JavaType;)V

    .line 95
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 101
    .end local v5    # "type":Lcom/flurry/org/codehaus/jackson/type/JavaType;
    :cond_0
    invoke-virtual {p1, v3}, Lcom/flurry/org/codehaus/jackson/map/type/TypeBindings;->resolveType(Ljava/lang/reflect/Type;)Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v5

    goto :goto_1

    .line 106
    .end local v0    # "arr$":[Ljava/lang/reflect/TypeVariable;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "lowerBound":Ljava/lang/reflect/Type;
    .end local v4    # "name":Ljava/lang/String;
    .end local v6    # "var":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    :cond_1
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v7

    invoke-virtual {p1, v7}, Lcom/flurry/org/codehaus/jackson/map/type/TypeBindings;->resolveType(Ljava/lang/reflect/Type;)Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v7

    return-object v7
.end method

.method protected replaceParameterAnnotations(ILcom/flurry/org/codehaus/jackson/map/introspect/AnnotationMap;)Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedParameter;
    .locals 1
    .param p1, "index"    # I
    .param p2, "ann"    # Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotationMap;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;->_paramAnnotations:[Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotationMap;

    aput-object p2, v0, p1

    .line 81
    invoke-virtual {p0, p1}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;->getParameter(I)Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedParameter;

    move-result-object v0

    return-object v0
.end method

.method public final resolveParameterType(ILcom/flurry/org/codehaus/jackson/map/type/TypeBindings;)Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .locals 1
    .param p1, "index"    # I
    .param p2, "bindings"    # Lcom/flurry/org/codehaus/jackson/map/type/TypeBindings;

    .prologue
    .line 155
    invoke-virtual {p0, p1}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;->getParameterType(I)Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/flurry/org/codehaus/jackson/map/type/TypeBindings;->resolveType(Ljava/lang/reflect/Type;)Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v0

    return-object v0
.end method
