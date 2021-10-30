.class public Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;
.super Lcom/flurry/org/codehaus/jackson/map/BeanPropertyDefinition;
.source "POJOPropertyBuilder.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/flurry/org/codehaus/jackson/map/BeanPropertyDefinition;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;",
        ">;"
    }
.end annotation


# instance fields
.field protected _ctorParameters:Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node",
            "<",
            "Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedParameter;",
            ">;"
        }
    .end annotation
.end field

.field protected _fields:Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node",
            "<",
            "Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedField;",
            ">;"
        }
    .end annotation
.end field

.field protected _getters:Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node",
            "<",
            "Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;",
            ">;"
        }
    .end annotation
.end field

.field protected final _internalName:Ljava/lang/String;

.field protected final _name:Ljava/lang/String;

.field protected _setters:Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node",
            "<",
            "Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;Ljava/lang/String;)V
    .locals 1
    .param p1, "src"    # Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;
    .param p2, "newName"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/flurry/org/codehaus/jackson/map/BeanPropertyDefinition;-><init>()V

    .line 44
    iget-object v0, p1, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_internalName:Ljava/lang/String;

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_internalName:Ljava/lang/String;

    .line 45
    iput-object p2, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_name:Ljava/lang/String;

    .line 46
    iget-object v0, p1, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_fields:Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_fields:Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    .line 47
    iget-object v0, p1, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_ctorParameters:Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_ctorParameters:Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    .line 48
    iget-object v0, p1, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_getters:Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_getters:Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    .line 49
    iget-object v0, p1, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_setters:Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_setters:Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    .line 50
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "internalName"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/flurry/org/codehaus/jackson/map/BeanPropertyDefinition;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_internalName:Ljava/lang/String;

    .line 39
    iput-object p1, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_name:Ljava/lang/String;

    .line 40
    return-void
.end method

.method private _anyExplicitNames(Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node",
            "<TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 422
    .local p1, "n":Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;, "Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node<TT;>;"
    :goto_0
    if-eqz p1, :cond_1

    .line 423
    iget-object v0, p1, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->explicitName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->explicitName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 424
    const/4 v0, 0x1

    .line 427
    :goto_1
    return v0

    .line 422
    :cond_0
    iget-object p1, p1, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->next:Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    goto :goto_0

    .line 427
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private _anyIgnorals(Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node",
            "<TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 471
    .local p1, "n":Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;, "Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node<TT;>;"
    :goto_0
    if-eqz p1, :cond_1

    .line 472
    iget-boolean v0, p1, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->isMarkedIgnored:Z

    if-eqz v0, :cond_0

    .line 473
    const/4 v0, 0x1

    .line 476
    :goto_1
    return v0

    .line 471
    :cond_0
    iget-object p1, p1, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->next:Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    goto :goto_0

    .line 476
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private _anyVisible(Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node",
            "<TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 440
    .local p1, "n":Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;, "Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node<TT;>;"
    :goto_0
    if-eqz p1, :cond_1

    .line 441
    iget-boolean v0, p1, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->isVisible:Z

    if-eqz v0, :cond_0

    .line 442
    const/4 v0, 0x1

    .line 445
    :goto_1
    return v0

    .line 440
    :cond_0
    iget-object p1, p1, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->next:Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    goto :goto_0

    .line 445
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private varargs _mergeAnnotations(I[Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotationMap;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node",
            "<+",
            "Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;",
            ">;)",
            "Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotationMap;"
        }
    .end annotation

    .prologue
    .line 372
    .local p2, "nodes":[Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;, "[Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node<+Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;>;"
    aget-object v1, p2, p1

    iget-object v1, v1, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->value:Ljava/lang/Object;

    check-cast v1, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;

    invoke-virtual {v1}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;->getAllAnnotations()Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotationMap;

    move-result-object v0

    .line 373
    .local v0, "ann":Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotationMap;
    add-int/lit8 p1, p1, 0x1

    .line 374
    :goto_0
    array-length v1, p2

    if-ge p1, v1, :cond_0

    .line 375
    aget-object v1, p2, p1

    if-eqz v1, :cond_1

    .line 376
    invoke-direct {p0, p1, p2}, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_mergeAnnotations(I[Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotationMap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotationMap;->merge(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotationMap;Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotationMap;)Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotationMap;

    move-result-object v0

    .line 379
    .end local v0    # "ann":Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotationMap;
    :cond_0
    return-object v0

    .line 374
    .restart local v0    # "ann":Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotationMap;
    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0
.end method

.method private _removeIgnored(Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node",
            "<TT;>;)",
            "Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 384
    .local p1, "node":Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;, "Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node<TT;>;"
    if-nez p1, :cond_0

    .line 387
    .end local p1    # "node":Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;, "Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node<TT;>;"
    :goto_0
    return-object p1

    .restart local p1    # "node":Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;, "Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node<TT;>;"
    :cond_0
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->withoutIgnored()Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    move-result-object p1

    goto :goto_0
.end method

.method private _removeNonVisible(Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node",
            "<TT;>;)",
            "Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 392
    .local p1, "node":Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;, "Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node<TT;>;"
    if-nez p1, :cond_0

    .line 395
    .end local p1    # "node":Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;, "Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node<TT;>;"
    :goto_0
    return-object p1

    .restart local p1    # "node":Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;, "Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node<TT;>;"
    :cond_0
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->withoutNonVisible()Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    move-result-object p1

    goto :goto_0
.end method

.method private _trimByVisibility(Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node",
            "<TT;>;)",
            "Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 400
    .local p1, "node":Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;, "Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node<TT;>;"
    if-nez p1, :cond_0

    .line 403
    .end local p1    # "node":Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;, "Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node<TT;>;"
    :goto_0
    return-object p1

    .restart local p1    # "node":Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;, "Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node<TT;>;"
    :cond_0
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->trimByVisibility()Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    move-result-object p1

    goto :goto_0
.end method

.method private findRenamed(Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node",
            "<+",
            "Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;",
            ">;",
            "Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node",
            "<+",
            "Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;",
            ">;)",
            "Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node",
            "<+",
            "Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;",
            ">;"
        }
    .end annotation

    .prologue
    .line 497
    .local p1, "node":Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;, "Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node<+Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;>;"
    .local p2, "renamed":Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;, "Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node<+Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;>;"
    :goto_0
    if-eqz p1, :cond_3

    .line 498
    iget-object v0, p1, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->explicitName:Ljava/lang/String;

    .line 499
    .local v0, "explName":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 497
    :cond_0
    :goto_1
    iget-object p1, p1, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->next:Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    goto :goto_0

    .line 503
    :cond_1
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 506
    if-nez p2, :cond_2

    .line 507
    move-object p2, p1

    goto :goto_1

    .line 510
    :cond_2
    iget-object v1, p2, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->explicitName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 511
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Conflicting property name definitions: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p2, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->explicitName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' (for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p2, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->value:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") vs \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->explicitName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' (for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->value:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 517
    .end local v0    # "explName":Ljava/lang/String;
    :cond_3
    return-object p2
.end method

.method private static merge(Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node",
            "<TT;>;",
            "Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node",
            "<TT;>;)",
            "Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 288
    .local p0, "chain1":Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;, "Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node<TT;>;"
    .local p1, "chain2":Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;, "Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node<TT;>;"
    if-nez p0, :cond_0

    .line 294
    .end local p1    # "chain2":Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;, "Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node<TT;>;"
    :goto_0
    return-object p1

    .line 291
    .restart local p1    # "chain2":Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;, "Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node<TT;>;"
    :cond_0
    if-nez p1, :cond_1

    move-object p1, p0

    .line 292
    goto :goto_0

    .line 294
    :cond_1
    invoke-static {p0, p1}, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->access$000(Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    move-result-object p1

    goto :goto_0
.end method


# virtual methods
.method public addAll(Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;)V
    .locals 2
    .param p1, "src"    # Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;

    .prologue
    .line 280
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_fields:Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    iget-object v1, p1, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_fields:Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    invoke-static {v0, v1}, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->merge(Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_fields:Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    .line 281
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_ctorParameters:Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    iget-object v1, p1, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_ctorParameters:Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    invoke-static {v0, v1}, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->merge(Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_ctorParameters:Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    .line 282
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_getters:Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    iget-object v1, p1, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_getters:Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    invoke-static {v0, v1}, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->merge(Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_getters:Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    .line 283
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_setters:Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    iget-object v1, p1, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_setters:Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    invoke-static {v0, v1}, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->merge(Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_setters:Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    .line 284
    return-void
.end method

.method public addCtor(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedParameter;Ljava/lang/String;ZZ)V
    .locals 6
    .param p1, "a"    # Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedParameter;
    .param p2, "ename"    # Ljava/lang/String;
    .param p3, "visible"    # Z
    .param p4, "ignored"    # Z

    .prologue
    .line 263
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_ctorParameters:Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;-><init>(Ljava/lang/Object;Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;Ljava/lang/String;ZZ)V

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_ctorParameters:Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    .line 264
    return-void
.end method

.method public addField(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedField;Ljava/lang/String;ZZ)V
    .locals 6
    .param p1, "a"    # Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedField;
    .param p2, "ename"    # Ljava/lang/String;
    .param p3, "visible"    # Z
    .param p4, "ignored"    # Z

    .prologue
    .line 259
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_fields:Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;-><init>(Ljava/lang/Object;Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;Ljava/lang/String;ZZ)V

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_fields:Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    .line 260
    return-void
.end method

.method public addGetter(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;Ljava/lang/String;ZZ)V
    .locals 6
    .param p1, "a"    # Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;
    .param p2, "ename"    # Ljava/lang/String;
    .param p3, "visible"    # Z
    .param p4, "ignored"    # Z

    .prologue
    .line 267
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_getters:Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;-><init>(Ljava/lang/Object;Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;Ljava/lang/String;ZZ)V

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_getters:Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    .line 268
    return-void
.end method

.method public addSetter(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;Ljava/lang/String;ZZ)V
    .locals 6
    .param p1, "a"    # Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;
    .param p2, "ename"    # Ljava/lang/String;
    .param p3, "visible"    # Z
    .param p4, "ignored"    # Z

    .prologue
    .line 271
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_setters:Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;-><init>(Ljava/lang/Object;Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;Ljava/lang/String;ZZ)V

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_setters:Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    .line 272
    return-void
.end method

.method public anyDeserializeIgnorals()Z
    .locals 1

    .prologue
    .line 457
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_fields:Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    invoke-direct {p0, v0}, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_anyIgnorals(Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_setters:Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    invoke-direct {p0, v0}, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_anyIgnorals(Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_ctorParameters:Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    invoke-direct {p0, v0}, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_anyIgnorals(Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Z

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

.method public anyExplicitNames()Z
    .locals 1

    .prologue
    .line 413
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_fields:Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    invoke-direct {p0, v0}, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_anyExplicitNames(Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_getters:Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    invoke-direct {p0, v0}, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_anyExplicitNames(Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_setters:Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    invoke-direct {p0, v0}, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_anyExplicitNames(Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_ctorParameters:Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    invoke-direct {p0, v0}, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_anyExplicitNames(Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Z

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

.method public anyIgnorals()Z
    .locals 1

    .prologue
    .line 449
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_fields:Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    invoke-direct {p0, v0}, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_anyIgnorals(Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_getters:Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    invoke-direct {p0, v0}, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_anyIgnorals(Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_setters:Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    invoke-direct {p0, v0}, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_anyIgnorals(Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_ctorParameters:Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    invoke-direct {p0, v0}, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_anyIgnorals(Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Z

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

.method public anySerializeIgnorals()Z
    .locals 1

    .prologue
    .line 464
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_fields:Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    invoke-direct {p0, v0}, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_anyIgnorals(Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_getters:Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    invoke-direct {p0, v0}, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_anyIgnorals(Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Z

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

.method public anyVisible()Z
    .locals 1

    .prologue
    .line 431
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_fields:Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    invoke-direct {p0, v0}, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_anyVisible(Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_getters:Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    invoke-direct {p0, v0}, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_anyVisible(Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_setters:Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    invoke-direct {p0, v0}, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_anyVisible(Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_ctorParameters:Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    invoke-direct {p0, v0}, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_anyVisible(Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Z

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

.method public compareTo(Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;)I
    .locals 2
    .param p1, "other"    # Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_ctorParameters:Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p1, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_ctorParameters:Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    if-nez v0, :cond_1

    .line 73
    const/4 v0, -0x1

    .line 81
    :goto_0
    return v0

    .line 75
    :cond_0
    iget-object v0, p1, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_ctorParameters:Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    if-eqz v0, :cond_1

    .line 76
    const/4 v0, 0x1

    goto :goto_0

    .line 81
    :cond_1
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 11
    check-cast p1, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->compareTo(Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;)I

    move-result v0

    return v0
.end method

.method public couldSerialize()Z
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_getters:Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_fields:Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public findNewName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 486
    const/4 v0, 0x0

    .line 487
    .local v0, "renamed":Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;, "Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node<+Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;>;"
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_fields:Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    invoke-direct {p0, v1, v0}, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->findRenamed(Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    move-result-object v0

    .line 488
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_getters:Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    invoke-direct {p0, v1, v0}, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->findRenamed(Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    move-result-object v0

    .line 489
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_setters:Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    invoke-direct {p0, v1, v0}, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->findRenamed(Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    move-result-object v0

    .line 490
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_ctorParameters:Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    invoke-direct {p0, v1, v0}, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->findRenamed(Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    move-result-object v0

    .line 491
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, v0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->explicitName:Ljava/lang/String;

    goto :goto_0
.end method

.method public getAccessor()Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;
    .locals 1

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->getGetter()Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;

    move-result-object v0

    .line 112
    .local v0, "m":Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;
    if-nez v0, :cond_0

    .line 113
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->getField()Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedField;

    move-result-object v0

    .line 115
    :cond_0
    return-object v0
.end method

.method public getConstructorParameter()Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedParameter;
    .locals 2

    .prologue
    .line 231
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_ctorParameters:Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    if-nez v1, :cond_0

    .line 232
    const/4 v1, 0x0

    .line 249
    :goto_0
    return-object v1

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_ctorParameters:Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    .line 244
    .local v0, "curr":Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;, "Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node<Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedParameter;>;"
    :cond_1
    iget-object v1, v0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->value:Ljava/lang/Object;

    check-cast v1, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedParameter;

    invoke-virtual {v1}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedParameter;->getOwner()Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;

    move-result-object v1

    instance-of v1, v1, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedConstructor;

    if-eqz v1, :cond_2

    .line 245
    iget-object v1, v0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->value:Ljava/lang/Object;

    check-cast v1, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedParameter;

    goto :goto_0

    .line 247
    :cond_2
    iget-object v0, v0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->next:Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    .line 248
    if-nez v0, :cond_1

    .line 249
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_ctorParameters:Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    iget-object v1, v1, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->value:Ljava/lang/Object;

    check-cast v1, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedParameter;

    goto :goto_0
.end method

.method public getField()Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedField;
    .locals 8

    .prologue
    .line 203
    iget-object v5, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_fields:Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    if-nez v5, :cond_1

    .line 204
    const/4 v0, 0x0

    .line 225
    :cond_0
    return-object v0

    .line 207
    :cond_1
    iget-object v5, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_fields:Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    iget-object v0, v5, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->value:Ljava/lang/Object;

    check-cast v0, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedField;

    .line 208
    .local v0, "field":Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedField;
    iget-object v5, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_fields:Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    iget-object v2, v5, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->next:Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    .line 209
    .local v2, "next":Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;, "Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node<Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedField;>;"
    :goto_0
    if-eqz v2, :cond_0

    .line 210
    iget-object v4, v2, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->value:Ljava/lang/Object;

    check-cast v4, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedField;

    .line 211
    .local v4, "nextField":Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedField;
    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedField;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    .line 212
    .local v1, "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v4}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedField;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v3

    .line 213
    .local v3, "nextClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eq v1, v3, :cond_4

    .line 214
    invoke-virtual {v1, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 215
    move-object v0, v4

    .line 209
    :cond_2
    iget-object v2, v2, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->next:Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    goto :goto_0

    .line 218
    :cond_3
    invoke-virtual {v3, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 222
    :cond_4
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Multiple fields representing property \""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedField;->getFullName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " vs "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedField;->getFullName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public getGetter()Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;
    .locals 8

    .prologue
    .line 139
    iget-object v5, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_getters:Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    if-nez v5, :cond_1

    .line 140
    const/4 v0, 0x0

    .line 165
    :cond_0
    return-object v0

    .line 143
    :cond_1
    iget-object v5, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_getters:Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    iget-object v0, v5, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->value:Ljava/lang/Object;

    check-cast v0, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;

    .line 144
    .local v0, "getter":Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;
    iget-object v5, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_getters:Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    iget-object v2, v5, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->next:Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    .line 145
    .local v2, "next":Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;, "Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node<Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;>;"
    :goto_0
    if-eqz v2, :cond_0

    .line 150
    iget-object v4, v2, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->value:Ljava/lang/Object;

    check-cast v4, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;

    .line 151
    .local v4, "nextGetter":Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;
    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    .line 152
    .local v1, "getterClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v4}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v3

    .line 153
    .local v3, "nextClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eq v1, v3, :cond_4

    .line 154
    invoke-virtual {v1, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 155
    move-object v0, v4

    .line 145
    :cond_2
    iget-object v2, v2, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->next:Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    goto :goto_0

    .line 158
    :cond_3
    invoke-virtual {v3, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 162
    :cond_4
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Conflicting getter definitions for property \""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;->getFullName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " vs "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;->getFullName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public getInternalName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_internalName:Ljava/lang/String;

    return-object v0
.end method

.method public getMutator()Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;
    .locals 1

    .prologue
    .line 121
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->getConstructorParameter()Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedParameter;

    move-result-object v0

    .line 122
    .local v0, "m":Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;
    if-nez v0, :cond_0

    .line 123
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->getSetter()Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;

    move-result-object v0

    .line 124
    if-nez v0, :cond_0

    .line 125
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->getField()Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedField;

    move-result-object v0

    .line 128
    :cond_0
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_name:Ljava/lang/String;

    return-object v0
.end method

.method public getSetter()Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;
    .locals 8

    .prologue
    .line 171
    iget-object v5, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_setters:Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    if-nez v5, :cond_1

    .line 172
    const/4 v3, 0x0

    .line 197
    :cond_0
    return-object v3

    .line 175
    :cond_1
    iget-object v5, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_setters:Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    iget-object v3, v5, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->value:Ljava/lang/Object;

    check-cast v3, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;

    .line 176
    .local v3, "setter":Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;
    iget-object v5, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_setters:Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    iget-object v0, v5, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->next:Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    .line 177
    .local v0, "next":Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;, "Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node<Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;>;"
    :goto_0
    if-eqz v0, :cond_0

    .line 182
    iget-object v2, v0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->value:Ljava/lang/Object;

    check-cast v2, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;

    .line 183
    .local v2, "nextSetter":Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;
    invoke-virtual {v3}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v4

    .line 184
    .local v4, "setterClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v2}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    .line 185
    .local v1, "nextClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eq v4, v1, :cond_4

    .line 186
    invoke-virtual {v4, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 187
    move-object v3, v2

    .line 177
    :cond_2
    iget-object v0, v0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->next:Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    goto :goto_0

    .line 190
    :cond_3
    invoke-virtual {v1, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 194
    :cond_4
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Conflicting setter definitions for property \""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;->getFullName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " vs "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;->getFullName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public hasConstructorParameter()Z
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_ctorParameters:Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasField()Z
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_fields:Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasGetter()Z
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_getters:Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSetter()Z
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_setters:Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public mergeAnnotations(Z)V
    .locals 7
    .param p1, "forSerialization"    # Z

    .prologue
    const/4 v2, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 348
    if-eqz p1, :cond_2

    .line 349
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_getters:Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    if-eqz v1, :cond_1

    .line 350
    new-array v1, v2, [Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_getters:Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_fields:Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_ctorParameters:Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    aput-object v2, v1, v5

    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_setters:Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    aput-object v2, v1, v6

    invoke-direct {p0, v3, v1}, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_mergeAnnotations(I[Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotationMap;

    move-result-object v0

    .line 351
    .local v0, "ann":Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotationMap;
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_getters:Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_getters:Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    iget-object v1, v1, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->value:Ljava/lang/Object;

    check-cast v1, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;

    invoke-virtual {v1, v0}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;->withAnnotations(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotationMap;)Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->withValue(Ljava/lang/Object;)Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    move-result-object v1

    iput-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_getters:Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    .line 368
    .end local v0    # "ann":Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotationMap;
    :cond_0
    :goto_0
    return-void

    .line 352
    :cond_1
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_fields:Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    if-eqz v1, :cond_0

    .line 353
    new-array v1, v6, [Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_fields:Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_ctorParameters:Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_setters:Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    aput-object v2, v1, v5

    invoke-direct {p0, v3, v1}, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_mergeAnnotations(I[Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotationMap;

    move-result-object v0

    .line 354
    .restart local v0    # "ann":Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotationMap;
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_fields:Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_fields:Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    iget-object v1, v1, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->value:Ljava/lang/Object;

    check-cast v1, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedField;

    invoke-virtual {v1, v0}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedField;->withAnnotations(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotationMap;)Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedField;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->withValue(Ljava/lang/Object;)Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    move-result-object v1

    iput-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_fields:Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    goto :goto_0

    .line 357
    .end local v0    # "ann":Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotationMap;
    :cond_2
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_ctorParameters:Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    if-eqz v1, :cond_3

    .line 358
    new-array v1, v2, [Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_ctorParameters:Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_setters:Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_fields:Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    aput-object v2, v1, v5

    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_getters:Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    aput-object v2, v1, v6

    invoke-direct {p0, v3, v1}, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_mergeAnnotations(I[Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotationMap;

    move-result-object v0

    .line 359
    .restart local v0    # "ann":Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotationMap;
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_ctorParameters:Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_ctorParameters:Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    iget-object v1, v1, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->value:Ljava/lang/Object;

    check-cast v1, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedParameter;

    invoke-virtual {v1, v0}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedParameter;->withAnnotations(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotationMap;)Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedParameter;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->withValue(Ljava/lang/Object;)Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    move-result-object v1

    iput-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_ctorParameters:Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    goto :goto_0

    .line 360
    .end local v0    # "ann":Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotationMap;
    :cond_3
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_setters:Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    if-eqz v1, :cond_4

    .line 361
    new-array v1, v6, [Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_setters:Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_fields:Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_getters:Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    aput-object v2, v1, v5

    invoke-direct {p0, v3, v1}, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_mergeAnnotations(I[Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotationMap;

    move-result-object v0

    .line 362
    .restart local v0    # "ann":Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotationMap;
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_setters:Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_setters:Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    iget-object v1, v1, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->value:Ljava/lang/Object;

    check-cast v1, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;

    invoke-virtual {v1, v0}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;->withAnnotations(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotationMap;)Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->withValue(Ljava/lang/Object;)Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    move-result-object v1

    iput-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_setters:Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    goto :goto_0

    .line 363
    .end local v0    # "ann":Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotationMap;
    :cond_4
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_fields:Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    if-eqz v1, :cond_0

    .line 364
    new-array v1, v5, [Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_fields:Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_getters:Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    aput-object v2, v1, v4

    invoke-direct {p0, v3, v1}, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_mergeAnnotations(I[Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotationMap;

    move-result-object v0

    .line 365
    .restart local v0    # "ann":Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotationMap;
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_fields:Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_fields:Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    iget-object v1, v1, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->value:Ljava/lang/Object;

    check-cast v1, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedField;

    invoke-virtual {v1, v0}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedField;->withAnnotations(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotationMap;)Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedField;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->withValue(Ljava/lang/Object;)Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    move-result-object v1

    iput-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_fields:Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    goto/16 :goto_0
.end method

.method public removeIgnored()V
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_fields:Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    invoke-direct {p0, v0}, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_removeIgnored(Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_fields:Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    .line 310
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_getters:Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    invoke-direct {p0, v0}, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_removeIgnored(Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_getters:Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    .line 311
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_setters:Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    invoke-direct {p0, v0}, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_removeIgnored(Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_setters:Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    .line 312
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_ctorParameters:Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    invoke-direct {p0, v0}, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_removeIgnored(Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_ctorParameters:Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    .line 313
    return-void
.end method

.method public removeNonVisible()V
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_getters:Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    invoke-direct {p0, v0}, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_removeNonVisible(Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_getters:Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    .line 324
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_ctorParameters:Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    invoke-direct {p0, v0}, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_removeNonVisible(Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_ctorParameters:Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    .line 326
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_getters:Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    if-nez v0, :cond_0

    .line 327
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_fields:Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    invoke-direct {p0, v0}, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_removeNonVisible(Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_fields:Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    .line 328
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_setters:Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    invoke-direct {p0, v0}, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_removeNonVisible(Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_setters:Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    .line 330
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 524
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 525
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "[Property \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'; ctors: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_ctorParameters:Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", field(s): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_fields:Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", getter(s): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_getters:Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", setter(s): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_setters:Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 531
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 532
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public trimByVisibility()V
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_fields:Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    invoke-direct {p0, v0}, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_trimByVisibility(Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_fields:Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    .line 340
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_getters:Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    invoke-direct {p0, v0}, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_trimByVisibility(Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_getters:Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    .line 341
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_setters:Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    invoke-direct {p0, v0}, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_trimByVisibility(Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_setters:Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    .line 342
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_ctorParameters:Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    invoke-direct {p0, v0}, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_trimByVisibility(Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_ctorParameters:Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    .line 343
    return-void
.end method

.method public withName(Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;
    .locals 1
    .param p1, "newName"    # Ljava/lang/String;

    .prologue
    .line 56
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;

    invoke-direct {v0, p0, p1}, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;-><init>(Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;Ljava/lang/String;)V

    return-object v0
.end method
