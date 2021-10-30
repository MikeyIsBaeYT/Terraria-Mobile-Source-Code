.class public final Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedParameter;
.super Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;
.source "AnnotatedParameter.java"


# instance fields
.field protected final _index:I

.field protected final _owner:Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;

.field protected final _type:Ljava/lang/reflect/Type;


# direct methods
.method public constructor <init>(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;Ljava/lang/reflect/Type;Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotationMap;I)V
    .locals 0
    .param p1, "owner"    # Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;
    .param p2, "type"    # Ljava/lang/reflect/Type;
    .param p3, "annotations"    # Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotationMap;
    .param p4, "index"    # I

    .prologue
    .line 53
    invoke-direct {p0, p3}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;-><init>(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotationMap;)V

    .line 54
    iput-object p1, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedParameter;->_owner:Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;

    .line 55
    iput-object p2, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedParameter;->_type:Ljava/lang/reflect/Type;

    .line 56
    iput p4, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedParameter;->_index:I

    .line 57
    return-void
.end method


# virtual methods
.method public addOrOverride(Ljava/lang/annotation/Annotation;)V
    .locals 1
    .param p1, "a"    # Ljava/lang/annotation/Annotation;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedParameter;->_annotations:Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotationMap;

    invoke-virtual {v0, p1}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotationMap;->add(Ljava/lang/annotation/Annotation;)V

    .line 70
    return-void
.end method

.method public getAnnotated()Ljava/lang/reflect/AnnotatedElement;
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
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
    .line 106
    .local p1, "acls":Ljava/lang/Class;, "Ljava/lang/Class<TA;>;"
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedParameter;->_annotations:Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotationMap;

    invoke-virtual {v0, p1}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotationMap;->get(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

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
    .line 133
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedParameter;->_owner:Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;

    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public getGenericType()Ljava/lang/reflect/Type;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedParameter;->_type:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    .prologue
    .line 177
    iget v0, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedParameter;->_index:I

    return v0
.end method

.method public getMember()Ljava/lang/reflect/Member;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedParameter;->_owner:Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;

    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;->getMember()Ljava/lang/reflect/Member;

    move-result-object v0

    return-object v0
.end method

.method public getModifiers()I
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedParameter;->_owner:Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;

    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;->getModifiers()I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    const-string v0, ""

    return-object v0
.end method

.method public getOwner()Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedParameter;->_owner:Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;

    return-object v0
.end method

.method public getParameterType()Ljava/lang/reflect/Type;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedParameter;->_type:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public getRawType()Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 117
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedParameter;->_type:Ljava/lang/reflect/Type;

    instance-of v1, v1, Ljava/lang/Class;

    if-eqz v1, :cond_0

    .line 118
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedParameter;->_type:Ljava/lang/reflect/Type;

    check-cast v1, Ljava/lang/Class;

    .line 122
    :goto_0
    return-object v1

    .line 121
    :cond_0
    invoke-static {}, Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;->defaultInstance()Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedParameter;->_type:Ljava/lang/reflect/Type;

    invoke-virtual {v1, v2}, Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;->constructType(Ljava/lang/reflect/Type;)Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v0

    .line 122
    .local v0, "t":Lcom/flurry/org/codehaus/jackson/type/JavaType;
    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0
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
    .line 148
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot call setValue() on constructor parameter of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedParameter;->getDeclaringClass()Ljava/lang/Class;

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
    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[parameter #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedParameter;->getIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", annotations: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedParameter;->_annotations:Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotationMap;

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
    .line 22
    invoke-virtual {p0, p1}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedParameter;->withAnnotations(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotationMap;)Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedParameter;

    move-result-object v0

    return-object v0
.end method

.method public withAnnotations(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotationMap;)Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedParameter;
    .locals 2
    .param p1, "ann"    # Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotationMap;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedParameter;->_annotations:Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotationMap;

    if-ne p1, v0, :cond_0

    .line 64
    .end local p0    # "this":Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedParameter;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedParameter;
    :cond_0
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedParameter;->_owner:Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;

    iget v1, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedParameter;->_index:I

    invoke-virtual {v0, v1, p1}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;->replaceParameterAnnotations(ILcom/flurry/org/codehaus/jackson/map/introspect/AnnotationMap;)Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedParameter;

    move-result-object p0

    goto :goto_0
.end method
