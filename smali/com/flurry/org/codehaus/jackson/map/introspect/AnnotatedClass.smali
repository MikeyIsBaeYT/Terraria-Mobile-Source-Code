.class public final Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;
.super Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;
.source "AnnotatedClass.java"


# static fields
.field private static final NO_ANNOTATION_MAPS:[Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotationMap;


# instance fields
.field protected final _annotationIntrospector:Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

.field protected final _class:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field protected _classAnnotations:Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotationMap;

.field protected _constructors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedConstructor;",
            ">;"
        }
    .end annotation
.end field

.field protected _creatorMethods:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;",
            ">;"
        }
    .end annotation
.end field

.field protected _defaultConstructor:Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedConstructor;

.field protected _fields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedField;",
            ">;"
        }
    .end annotation
.end field

.field protected _memberMethods:Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethodMap;

.field protected final _mixInResolver:Lcom/flurry/org/codehaus/jackson/map/ClassIntrospector$MixInResolver;

.field protected final _primaryMixIn:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field protected final _superTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotationMap;

    sput-object v0, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;->NO_ANNOTATION_MAPS:[Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotationMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Class;Ljava/util/List;Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;Lcom/flurry/org/codehaus/jackson/map/ClassIntrospector$MixInResolver;Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotationMap;)V
    .locals 2
    .param p3, "aintr"    # Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;
    .param p4, "mir"    # Lcom/flurry/org/codehaus/jackson/map/ClassIntrospector$MixInResolver;
    .param p5, "classAnnotations"    # Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotationMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class",
            "<*>;>;",
            "Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;",
            "Lcom/flurry/org/codehaus/jackson/map/ClassIntrospector$MixInResolver;",
            "Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotationMap;",
            ")V"
        }
    .end annotation

    .prologue
    .line 108
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "superTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    invoke-direct {p0}, Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;-><init>()V

    .line 109
    iput-object p1, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;->_class:Ljava/lang/Class;

    .line 110
    iput-object p2, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;->_superTypes:Ljava/util/List;

    .line 111
    iput-object p3, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;->_annotationIntrospector:Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    .line 112
    iput-object p4, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;->_mixInResolver:Lcom/flurry/org/codehaus/jackson/map/ClassIntrospector$MixInResolver;

    .line 113
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;->_mixInResolver:Lcom/flurry/org/codehaus/jackson/map/ClassIntrospector$MixInResolver;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;->_primaryMixIn:Ljava/lang/Class;

    .line 115
    iput-object p5, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;->_classAnnotations:Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotationMap;

    .line 116
    return-void

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;->_mixInResolver:Lcom/flurry/org/codehaus/jackson/map/ClassIntrospector$MixInResolver;

    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;->_class:Ljava/lang/Class;

    invoke-interface {v0, v1}, Lcom/flurry/org/codehaus/jackson/map/ClassIntrospector$MixInResolver;->findMixInClassFor(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_0
.end method

.method private _emptyAnnotationMap()Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotationMap;
    .locals 1

    .prologue
    .line 854
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotationMap;

    invoke-direct {v0}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotationMap;-><init>()V

    return-object v0
.end method

.method private _emptyAnnotationMaps(I)[Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotationMap;
    .locals 3
    .param p1, "count"    # I

    .prologue
    .line 858
    if-nez p1, :cond_1

    .line 859
    sget-object v1, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;->NO_ANNOTATION_MAPS:[Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotationMap;

    .line 865
    :cond_0
    return-object v1

    .line 861
    :cond_1
    new-array v1, p1, [Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotationMap;

    .line 862
    .local v1, "maps":[Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotationMap;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 863
    invoke-direct {p0}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;->_emptyAnnotationMap()Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotationMap;

    move-result-object v2

    aput-object v2, v1, v0

    .line 862
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private _isIncludableField(Ljava/lang/reflect/Field;)Z
    .locals 3
    .param p1, "f"    # Ljava/lang/reflect/Field;

    .prologue
    const/4 v1, 0x0

    .line 894
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->isSynthetic()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 902
    :cond_0
    :goto_0
    return v1

    .line 898
    :cond_1
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    .line 899
    .local v0, "mods":I
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 902
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static construct(Ljava/lang/Class;Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;Lcom/flurry/org/codehaus/jackson/map/ClassIntrospector$MixInResolver;)Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;
    .locals 6
    .param p1, "aintr"    # Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;
    .param p2, "mir"    # Lcom/flurry/org/codehaus/jackson/map/ClassIntrospector$MixInResolver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;",
            "Lcom/flurry/org/codehaus/jackson/map/ClassIntrospector$MixInResolver;",
            ")",
            "Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;"
        }
    .end annotation

    .prologue
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v5, 0x0

    .line 132
    invoke-static {p0, v5}, Lcom/flurry/org/codehaus/jackson/map/util/ClassUtil;->findSuperTypes(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v2

    .line 133
    .local v2, "st":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;-><init>(Ljava/lang/Class;Ljava/util/List;Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;Lcom/flurry/org/codehaus/jackson/map/ClassIntrospector$MixInResolver;Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotationMap;)V

    .line 134
    .local v0, "ac":Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;
    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;->resolveClassAnnotations()V

    .line 135
    return-object v0
.end method

.method public static constructWithoutSuperTypes(Ljava/lang/Class;Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;Lcom/flurry/org/codehaus/jackson/map/ClassIntrospector$MixInResolver;)Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;
    .locals 6
    .param p1, "aintr"    # Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;
    .param p2, "mir"    # Lcom/flurry/org/codehaus/jackson/map/ClassIntrospector$MixInResolver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;",
            "Lcom/flurry/org/codehaus/jackson/map/ClassIntrospector$MixInResolver;",
            ")",
            "Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;"
        }
    .end annotation

    .prologue
    .line 146
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    .line 147
    .local v2, "empty":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;-><init>(Ljava/lang/Class;Ljava/util/List;Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;Lcom/flurry/org/codehaus/jackson/map/ClassIntrospector$MixInResolver;Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotationMap;)V

    .line 148
    .local v0, "ac":Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;
    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;->resolveClassAnnotations()V

    .line 149
    return-object v0
.end method


# virtual methods
.method protected _addClassMixIns(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotationMap;Ljava/lang/Class;)V
    .locals 1
    .param p1, "annotations"    # Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotationMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotationMap;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 504
    .local p2, "toMask":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;->_mixInResolver:Lcom/flurry/org/codehaus/jackson/map/ClassIntrospector$MixInResolver;

    if-eqz v0, :cond_0

    .line 505
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;->_mixInResolver:Lcom/flurry/org/codehaus/jackson/map/ClassIntrospector$MixInResolver;

    invoke-interface {v0, p2}, Lcom/flurry/org/codehaus/jackson/map/ClassIntrospector$MixInResolver;->findMixInClassFor(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;->_addClassMixIns(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotationMap;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 507
    :cond_0
    return-void
.end method

.method protected _addClassMixIns(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotationMap;Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 7
    .param p1, "annotations"    # Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotationMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotationMap;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 512
    .local p2, "toMask":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p3, "mixin":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez p3, :cond_1

    .line 535
    :cond_0
    return-void

    .line 516
    :cond_1
    invoke-virtual {p3}, Ljava/lang/Class;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v1

    .local v1, "arr$":[Ljava/lang/annotation/Annotation;
    array-length v4, v1

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_3

    aget-object v0, v1, v2

    .line 517
    .local v0, "a":Ljava/lang/annotation/Annotation;
    iget-object v6, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;->_annotationIntrospector:Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v6, v0}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;->isHandled(Ljava/lang/annotation/Annotation;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 518
    invoke-virtual {p1, v0}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotationMap;->addIfNotPresent(Ljava/lang/annotation/Annotation;)V

    .line 516
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 528
    .end local v0    # "a":Ljava/lang/annotation/Annotation;
    :cond_3
    invoke-static {p3, p2}, Lcom/flurry/org/codehaus/jackson/map/util/ClassUtil;->findSuperTypes(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .end local v2    # "i$":I
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Class;

    .line 529
    .local v5, "parent":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v5}, Ljava/lang/Class;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v1

    array-length v4, v1

    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v4, :cond_4

    aget-object v0, v1, v3

    .line 530
    .restart local v0    # "a":Ljava/lang/annotation/Annotation;
    iget-object v6, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;->_annotationIntrospector:Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v6, v0}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;->isHandled(Ljava/lang/annotation/Annotation;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 531
    invoke-virtual {p1, v0}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotationMap;->addIfNotPresent(Ljava/lang/annotation/Annotation;)V

    .line 529
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method protected _addConstructorMixIns(Ljava/lang/Class;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .local p1, "mixin":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v9, 0x0

    .line 545
    const/4 v3, 0x0

    .line 546
    .local v3, "ctorKeys":[Lcom/flurry/org/codehaus/jackson/map/introspect/MemberKey;
    iget-object v8, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;->_constructors:Ljava/util/List;

    if-nez v8, :cond_1

    move v2, v9

    .line 547
    .local v2, "ctorCount":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/reflect/Constructor;
    array-length v7, v0

    .local v7, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_1
    if-ge v5, v7, :cond_5

    aget-object v1, v0, v5

    .line 548
    .local v1, "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    invoke-virtual {v1}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v8

    array-length v8, v8

    if-nez v8, :cond_2

    .line 549
    iget-object v8, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;->_defaultConstructor:Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedConstructor;

    if-eqz v8, :cond_0

    .line 550
    iget-object v8, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;->_defaultConstructor:Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedConstructor;

    invoke-virtual {p0, v1, v8, v9}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;->_addMixOvers(Ljava/lang/reflect/Constructor;Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedConstructor;Z)V

    .line 547
    :cond_0
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 546
    .end local v0    # "arr$":[Ljava/lang/reflect/Constructor;
    .end local v1    # "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v2    # "ctorCount":I
    .end local v5    # "i$":I
    .end local v7    # "len$":I
    :cond_1
    iget-object v8, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;->_constructors:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_0

    .line 553
    .restart local v0    # "arr$":[Ljava/lang/reflect/Constructor;
    .restart local v1    # "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .restart local v2    # "ctorCount":I
    .restart local v5    # "i$":I
    .restart local v7    # "len$":I
    :cond_2
    if-nez v3, :cond_3

    .line 554
    new-array v3, v2, [Lcom/flurry/org/codehaus/jackson/map/introspect/MemberKey;

    .line 555
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3
    if-ge v4, v2, :cond_3

    .line 556
    new-instance v10, Lcom/flurry/org/codehaus/jackson/map/introspect/MemberKey;

    iget-object v8, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;->_constructors:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedConstructor;

    invoke-virtual {v8}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedConstructor;->getAnnotated()Ljava/lang/reflect/Constructor;

    move-result-object v8

    invoke-direct {v10, v8}, Lcom/flurry/org/codehaus/jackson/map/introspect/MemberKey;-><init>(Ljava/lang/reflect/Constructor;)V

    aput-object v10, v3, v4

    .line 555
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 559
    .end local v4    # "i":I
    :cond_3
    new-instance v6, Lcom/flurry/org/codehaus/jackson/map/introspect/MemberKey;

    invoke-direct {v6, v1}, Lcom/flurry/org/codehaus/jackson/map/introspect/MemberKey;-><init>(Ljava/lang/reflect/Constructor;)V

    .line 561
    .local v6, "key":Lcom/flurry/org/codehaus/jackson/map/introspect/MemberKey;
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_4
    if-ge v4, v2, :cond_0

    .line 562
    aget-object v8, v3, v4

    invoke-virtual {v6, v8}, Lcom/flurry/org/codehaus/jackson/map/introspect/MemberKey;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 561
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 565
    :cond_4
    iget-object v8, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;->_constructors:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedConstructor;

    const/4 v10, 0x1

    invoke-virtual {p0, v1, v8, v10}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;->_addMixOvers(Ljava/lang/reflect/Constructor;Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedConstructor;Z)V

    goto :goto_2

    .line 570
    .end local v1    # "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v4    # "i":I
    .end local v6    # "key":Lcom/flurry/org/codehaus/jackson/map/introspect/MemberKey;
    :cond_5
    return-void
.end method

.method protected _addFactoryMixIns(Ljava/lang/Class;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 574
    .local p1, "mixin":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v7, 0x0

    .line 575
    .local v7, "methodKeys":[Lcom/flurry/org/codehaus/jackson/map/introspect/MemberKey;
    iget-object v8, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;->_creatorMethods:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v6

    .line 577
    .local v6, "methodCount":I
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/reflect/Method;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_4

    aget-object v5, v0, v2

    .line 578
    .local v5, "m":Ljava/lang/reflect/Method;
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v8

    invoke-static {v8}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v8

    if-nez v8, :cond_1

    .line 577
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 581
    :cond_1
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v8

    array-length v8, v8

    if-eqz v8, :cond_0

    .line 584
    if-nez v7, :cond_2

    .line 585
    new-array v7, v6, [Lcom/flurry/org/codehaus/jackson/map/introspect/MemberKey;

    .line 586
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, v6, :cond_2

    .line 587
    new-instance v9, Lcom/flurry/org/codehaus/jackson/map/introspect/MemberKey;

    iget-object v8, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;->_creatorMethods:Ljava/util/List;

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;

    invoke-virtual {v8}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;->getAnnotated()Ljava/lang/reflect/Method;

    move-result-object v8

    invoke-direct {v9, v8}, Lcom/flurry/org/codehaus/jackson/map/introspect/MemberKey;-><init>(Ljava/lang/reflect/Method;)V

    aput-object v9, v7, v1

    .line 586
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 590
    .end local v1    # "i":I
    :cond_2
    new-instance v3, Lcom/flurry/org/codehaus/jackson/map/introspect/MemberKey;

    invoke-direct {v3, v5}, Lcom/flurry/org/codehaus/jackson/map/introspect/MemberKey;-><init>(Ljava/lang/reflect/Method;)V

    .line 591
    .local v3, "key":Lcom/flurry/org/codehaus/jackson/map/introspect/MemberKey;
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_3
    if-ge v1, v6, :cond_0

    .line 592
    aget-object v8, v7, v1

    invoke-virtual {v3, v8}, Lcom/flurry/org/codehaus/jackson/map/introspect/MemberKey;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 591
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 595
    :cond_3
    iget-object v8, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;->_creatorMethods:Ljava/util/List;

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;

    const/4 v9, 0x1

    invoke-virtual {p0, v5, v8, v9}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;->_addMixOvers(Ljava/lang/reflect/Method;Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;Z)V

    goto :goto_1

    .line 599
    .end local v1    # "i":I
    .end local v3    # "key":Lcom/flurry/org/codehaus/jackson/map/introspect/MemberKey;
    .end local v5    # "m":Ljava/lang/reflect/Method;
    :cond_4
    return-void
.end method

.method protected _addFieldMixIns(Ljava/lang/Class;Ljava/util/Map;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedField;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 726
    .local p1, "mixin":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "fields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedField;>;"
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    .local v1, "arr$":[Ljava/lang/reflect/Field;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    move v4, v3

    .end local v1    # "arr$":[Ljava/lang/reflect/Field;
    .end local v3    # "i$":I
    .end local v5    # "len$":I
    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_3

    aget-object v8, v1, v4

    .line 730
    .local v8, "mixinField":Ljava/lang/reflect/Field;
    invoke-direct {p0, v8}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;->_isIncludableField(Ljava/lang/reflect/Field;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 726
    .end local v4    # "i$":I
    :cond_0
    add-int/lit8 v3, v4, 0x1

    .restart local v3    # "i$":I
    move v4, v3

    .end local v3    # "i$":I
    .restart local v4    # "i$":I
    goto :goto_0

    .line 733
    :cond_1
    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v9

    .line 735
    .local v9, "name":Ljava/lang/String;
    invoke-interface {p2, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedField;

    .line 736
    .local v7, "maskedField":Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedField;
    if-eqz v7, :cond_0

    .line 737
    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v2

    .local v2, "arr$":[Ljava/lang/annotation/Annotation;
    array-length v6, v2

    .local v6, "len$":I
    const/4 v3, 0x0

    .end local v4    # "i$":I
    .restart local v3    # "i$":I
    :goto_1
    if-ge v3, v6, :cond_0

    aget-object v0, v2, v3

    .line 738
    .local v0, "a":Ljava/lang/annotation/Annotation;
    iget-object v10, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;->_annotationIntrospector:Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v10, v0}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;->isHandled(Ljava/lang/annotation/Annotation;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 739
    invoke-virtual {v7, v0}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedField;->addOrOverride(Ljava/lang/annotation/Annotation;)V

    .line 737
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 744
    .end local v0    # "a":Ljava/lang/annotation/Annotation;
    .end local v2    # "arr$":[Ljava/lang/annotation/Annotation;
    .end local v3    # "i$":I
    .end local v6    # "len$":I
    .end local v7    # "maskedField":Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedField;
    .end local v8    # "mixinField":Ljava/lang/reflect/Field;
    .end local v9    # "name":Ljava/lang/String;
    .restart local v4    # "i$":I
    :cond_3
    return-void
.end method

.method protected _addFields(Ljava/util/Map;Ljava/lang/Class;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedField;",
            ">;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 690
    .local p1, "fields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedField;>;"
    .local p2, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v5

    .line 691
    .local v5, "parent":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v5, :cond_2

    .line 696
    invoke-virtual {p0, p1, v5}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;->_addFields(Ljava/util/Map;Ljava/lang/Class;)V

    .line 697
    invoke-virtual {p2}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/reflect/Field;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 699
    .local v1, "f":Ljava/lang/reflect/Field;
    invoke-direct {p0, v1}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;->_isIncludableField(Ljava/lang/reflect/Field;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 697
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 707
    :cond_0
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v1}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;->_constructField(Ljava/lang/reflect/Field;)Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedField;

    move-result-object v7

    invoke-interface {p1, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 710
    .end local v1    # "f":Ljava/lang/reflect/Field;
    :cond_1
    iget-object v6, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;->_mixInResolver:Lcom/flurry/org/codehaus/jackson/map/ClassIntrospector$MixInResolver;

    if-eqz v6, :cond_2

    .line 711
    iget-object v6, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;->_mixInResolver:Lcom/flurry/org/codehaus/jackson/map/ClassIntrospector$MixInResolver;

    invoke-interface {v6, p2}, Lcom/flurry/org/codehaus/jackson/map/ClassIntrospector$MixInResolver;->findMixInClassFor(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v4

    .line 712
    .local v4, "mixin":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v4, :cond_2

    .line 713
    invoke-virtual {p0, v4, p1}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;->_addFieldMixIns(Ljava/lang/Class;Ljava/util/Map;)V

    .line 717
    .end local v0    # "arr$":[Ljava/lang/reflect/Field;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "mixin":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    return-void
.end method

.method protected _addMemberMethods(Ljava/lang/Class;Lcom/flurry/org/codehaus/jackson/map/introspect/MethodFilter;Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethodMap;Ljava/lang/Class;Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethodMap;)V
    .locals 8
    .param p2, "methodFilter"    # Lcom/flurry/org/codehaus/jackson/map/introspect/MethodFilter;
    .param p3, "methods"    # Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethodMap;
    .param p5, "mixIns"    # Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethodMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/flurry/org/codehaus/jackson/map/introspect/MethodFilter;",
            "Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethodMap;",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethodMap;",
            ")V"
        }
    .end annotation

    .prologue
    .line 612
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p4, "mixInCls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz p4, :cond_0

    .line 613
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;->_addMethodMixIns(Lcom/flurry/org/codehaus/jackson/map/introspect/MethodFilter;Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethodMap;Ljava/lang/Class;Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethodMap;)V

    .line 616
    :cond_0
    if-nez p1, :cond_2

    .line 651
    :cond_1
    return-void

    .line 620
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/reflect/Method;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 621
    .local v3, "m":Ljava/lang/reflect/Method;
    invoke-virtual {p0, v3, p2}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;->_isIncludableMethod(Ljava/lang/reflect/Method;Lcom/flurry/org/codehaus/jackson/map/introspect/MethodFilter;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 620
    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 624
    :cond_4
    invoke-virtual {p3, v3}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethodMap;->find(Ljava/lang/reflect/Method;)Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;

    move-result-object v5

    .line 625
    .local v5, "old":Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;
    if-nez v5, :cond_5

    .line 626
    invoke-virtual {p0, v3}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;->_constructMethod(Ljava/lang/reflect/Method;)Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;

    move-result-object v4

    .line 627
    .local v4, "newM":Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;
    invoke-virtual {p3, v4}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethodMap;->add(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;)V

    .line 629
    invoke-virtual {p5, v3}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethodMap;->remove(Ljava/lang/reflect/Method;)Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;

    move-result-object v5

    .line 630
    if-eqz v5, :cond_3

    .line 631
    invoke-virtual {v5}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;->getAnnotated()Ljava/lang/reflect/Method;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {p0, v6, v4, v7}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;->_addMixOvers(Ljava/lang/reflect/Method;Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;Z)V

    goto :goto_1

    .line 637
    .end local v4    # "newM":Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;
    :cond_5
    invoke-virtual {p0, v3, v5}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;->_addMixUnders(Ljava/lang/reflect/Method;Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;)V

    .line 646
    invoke-virtual {v5}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->isInterface()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->isInterface()Z

    move-result v6

    if-nez v6, :cond_3

    .line 647
    invoke-virtual {v5, v3}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;->withMethod(Ljava/lang/reflect/Method;)Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;

    move-result-object v6

    invoke-virtual {p3, v6}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethodMap;->add(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;)V

    goto :goto_1
.end method

.method protected _addMethodMixIns(Lcom/flurry/org/codehaus/jackson/map/introspect/MethodFilter;Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethodMap;Ljava/lang/Class;Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethodMap;)V
    .locals 6
    .param p1, "methodFilter"    # Lcom/flurry/org/codehaus/jackson/map/introspect/MethodFilter;
    .param p2, "methods"    # Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethodMap;
    .param p4, "mixIns"    # Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethodMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/introspect/MethodFilter;",
            "Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethodMap;",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethodMap;",
            ")V"
        }
    .end annotation

    .prologue
    .line 656
    .local p3, "mixInCls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p3}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    .local v1, "arr$":[Ljava/lang/reflect/Method;
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v4, v1, v2

    .line 657
    .local v4, "m":Ljava/lang/reflect/Method;
    invoke-virtual {p0, v4, p1}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;->_isIncludableMethod(Ljava/lang/reflect/Method;Lcom/flurry/org/codehaus/jackson/map/introspect/MethodFilter;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 656
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 660
    :cond_0
    invoke-virtual {p2, v4}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethodMap;->find(Ljava/lang/reflect/Method;)Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;

    move-result-object v0

    .line 665
    .local v0, "am":Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;
    if-eqz v0, :cond_1

    .line 666
    invoke-virtual {p0, v4, v0}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;->_addMixUnders(Ljava/lang/reflect/Method;Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;)V

    goto :goto_1

    .line 672
    :cond_1
    invoke-virtual {p0, v4}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;->_constructMethod(Ljava/lang/reflect/Method;)Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;

    move-result-object v5

    invoke-virtual {p4, v5}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethodMap;->add(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;)V

    goto :goto_1

    .line 675
    .end local v0    # "am":Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;
    .end local v4    # "m":Ljava/lang/reflect/Method;
    :cond_2
    return-void
.end method

.method protected _addMixOvers(Ljava/lang/reflect/Constructor;Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedConstructor;Z)V
    .locals 8
    .param p2, "target"    # Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedConstructor;
    .param p3, "addParamAnnotations"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor",
            "<*>;",
            "Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedConstructor;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 918
    .local p1, "mixin":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v1

    .local v1, "arr$":[Ljava/lang/annotation/Annotation;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v0, v1, v3

    .line 919
    .local v0, "a":Ljava/lang/annotation/Annotation;
    iget-object v7, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;->_annotationIntrospector:Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v7, v0}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;->isHandled(Ljava/lang/annotation/Annotation;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 920
    invoke-virtual {p2, v0}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedConstructor;->addOrOverride(Ljava/lang/annotation/Annotation;)V

    .line 918
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 923
    .end local v0    # "a":Ljava/lang/annotation/Annotation;
    :cond_1
    if-eqz p3, :cond_3

    .line 924
    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v6

    .line 925
    .local v6, "pa":[[Ljava/lang/annotation/Annotation;
    const/4 v2, 0x0

    .local v2, "i":I
    array-length v4, v6

    .local v4, "len":I
    :goto_1
    if-ge v2, v4, :cond_3

    .line 926
    aget-object v1, v6, v2

    array-length v5, v1

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v5, :cond_2

    aget-object v0, v1, v3

    .line 927
    .restart local v0    # "a":Ljava/lang/annotation/Annotation;
    invoke-virtual {p2, v2, v0}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedConstructor;->addOrOverrideParam(ILjava/lang/annotation/Annotation;)V

    .line 926
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 925
    .end local v0    # "a":Ljava/lang/annotation/Annotation;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 931
    .end local v2    # "i":I
    .end local v4    # "len":I
    .end local v6    # "pa":[[Ljava/lang/annotation/Annotation;
    :cond_3
    return-void
.end method

.method protected _addMixOvers(Ljava/lang/reflect/Method;Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;Z)V
    .locals 8
    .param p1, "mixin"    # Ljava/lang/reflect/Method;
    .param p2, "target"    # Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;
    .param p3, "addParamAnnotations"    # Z

    .prologue
    .line 940
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v1

    .local v1, "arr$":[Ljava/lang/annotation/Annotation;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v0, v1, v3

    .line 941
    .local v0, "a":Ljava/lang/annotation/Annotation;
    iget-object v7, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;->_annotationIntrospector:Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v7, v0}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;->isHandled(Ljava/lang/annotation/Annotation;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 942
    invoke-virtual {p2, v0}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;->addOrOverride(Ljava/lang/annotation/Annotation;)V

    .line 940
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 945
    .end local v0    # "a":Ljava/lang/annotation/Annotation;
    :cond_1
    if-eqz p3, :cond_3

    .line 946
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v6

    .line 947
    .local v6, "pa":[[Ljava/lang/annotation/Annotation;
    const/4 v2, 0x0

    .local v2, "i":I
    array-length v4, v6

    .local v4, "len":I
    :goto_1
    if-ge v2, v4, :cond_3

    .line 948
    aget-object v1, v6, v2

    array-length v5, v1

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v5, :cond_2

    aget-object v0, v1, v3

    .line 949
    .restart local v0    # "a":Ljava/lang/annotation/Annotation;
    invoke-virtual {p2, v2, v0}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;->addOrOverrideParam(ILjava/lang/annotation/Annotation;)V

    .line 948
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 947
    .end local v0    # "a":Ljava/lang/annotation/Annotation;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 953
    .end local v2    # "i":I
    .end local v4    # "len":I
    .end local v6    # "pa":[[Ljava/lang/annotation/Annotation;
    :cond_3
    return-void
.end method

.method protected _addMixUnders(Ljava/lang/reflect/Method;Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;)V
    .locals 5
    .param p1, "src"    # Ljava/lang/reflect/Method;
    .param p2, "target"    # Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;

    .prologue
    .line 961
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v1

    .local v1, "arr$":[Ljava/lang/annotation/Annotation;
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v0, v1, v2

    .line 962
    .local v0, "a":Ljava/lang/annotation/Annotation;
    iget-object v4, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;->_annotationIntrospector:Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v4, v0}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;->isHandled(Ljava/lang/annotation/Annotation;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 963
    invoke-virtual {p2, v0}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;->addIfNotPresent(Ljava/lang/annotation/Annotation;)V

    .line 961
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 966
    .end local v0    # "a":Ljava/lang/annotation/Annotation;
    :cond_1
    return-void
.end method

.method protected _collectRelevantAnnotations([Ljava/lang/annotation/Annotation;)Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotationMap;
    .locals 6
    .param p1, "anns"    # [Ljava/lang/annotation/Annotation;

    .prologue
    .line 842
    new-instance v1, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotationMap;

    invoke-direct {v1}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotationMap;-><init>()V

    .line 843
    .local v1, "annMap":Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotationMap;
    if-eqz p1, :cond_1

    .line 844
    move-object v2, p1

    .local v2, "arr$":[Ljava/lang/annotation/Annotation;
    array-length v4, v2

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v0, v2, v3

    .line 845
    .local v0, "a":Ljava/lang/annotation/Annotation;
    iget-object v5, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;->_annotationIntrospector:Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v5, v0}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;->isHandled(Ljava/lang/annotation/Annotation;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 846
    invoke-virtual {v1, v0}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotationMap;->add(Ljava/lang/annotation/Annotation;)V

    .line 844
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 850
    .end local v0    # "a":Ljava/lang/annotation/Annotation;
    .end local v2    # "arr$":[Ljava/lang/annotation/Annotation;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_1
    return-object v1
.end method

.method protected _collectRelevantAnnotations([[Ljava/lang/annotation/Annotation;)[Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotationMap;
    .locals 4
    .param p1, "anns"    # [[Ljava/lang/annotation/Annotation;

    .prologue
    .line 832
    array-length v1, p1

    .line 833
    .local v1, "len":I
    new-array v2, v1, [Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotationMap;

    .line 834
    .local v2, "result":[Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotationMap;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 835
    aget-object v3, p1, v0

    invoke-virtual {p0, v3}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;->_collectRelevantAnnotations([Ljava/lang/annotation/Annotation;)Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotationMap;

    move-result-object v3

    aput-object v3, v2, v0

    .line 834
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 837
    :cond_0
    return-object v2
.end method

.method protected _constructConstructor(Ljava/lang/reflect/Constructor;Z)Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedConstructor;
    .locals 8
    .param p2, "defaultCtor"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor",
            "<*>;Z)",
            "Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedConstructor;"
        }
    .end annotation

    .prologue
    .local p1, "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v7, 0x0

    .line 766
    iget-object v5, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;->_annotationIntrospector:Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    if-nez v5, :cond_0

    .line 767
    new-instance v5, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedConstructor;

    invoke-direct {p0}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;->_emptyAnnotationMap()Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotationMap;

    move-result-object v6

    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v7

    array-length v7, v7

    invoke-direct {p0, v7}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;->_emptyAnnotationMaps(I)[Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotationMap;

    move-result-object v7

    invoke-direct {v5, p1, v6, v7}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedConstructor;-><init>(Ljava/lang/reflect/Constructor;Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotationMap;[Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotationMap;)V

    .line 809
    :goto_0
    return-object v5

    .line 769
    :cond_0
    if-eqz p2, :cond_1

    .line 770
    new-instance v5, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedConstructor;

    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;->_collectRelevantAnnotations([Ljava/lang/annotation/Annotation;)Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotationMap;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {v5, p1, v6, v7}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedConstructor;-><init>(Ljava/lang/reflect/Constructor;Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotationMap;[Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotationMap;)V

    goto :goto_0

    .line 772
    :cond_1
    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v2

    .line 773
    .local v2, "paramAnns":[[Ljava/lang/annotation/Annotation;
    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    array-length v3, v5

    .line 780
    .local v3, "paramCount":I
    const/4 v4, 0x0

    .line 781
    .local v4, "resolvedAnnotations":[Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotationMap;
    array-length v5, v2

    if-eq v3, v5, :cond_4

    .line 785
    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    .line 787
    .local v0, "dc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->isEnum()Z

    move-result v5

    if-eqz v5, :cond_3

    array-length v5, v2

    add-int/lit8 v5, v5, 0x2

    if-ne v3, v5, :cond_3

    .line 788
    move-object v1, v2

    .line 789
    .local v1, "old":[[Ljava/lang/annotation/Annotation;
    array-length v5, v1

    add-int/lit8 v5, v5, 0x2

    new-array v2, v5, [[Ljava/lang/annotation/Annotation;

    .line 790
    const/4 v5, 0x2

    array-length v6, v1

    invoke-static {v1, v7, v2, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 791
    invoke-virtual {p0, v2}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;->_collectRelevantAnnotations([[Ljava/lang/annotation/Annotation;)[Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotationMap;

    move-result-object v4

    .line 802
    .end local v1    # "old":[[Ljava/lang/annotation/Annotation;
    :cond_2
    :goto_1
    if-nez v4, :cond_5

    .line 803
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Internal error: constructor for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " has mismatch: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " parameters; "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " sets of annotations"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 792
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Class;->isMemberClass()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 794
    array-length v5, v2

    add-int/lit8 v5, v5, 0x1

    if-ne v3, v5, :cond_2

    .line 796
    move-object v1, v2

    .line 797
    .restart local v1    # "old":[[Ljava/lang/annotation/Annotation;
    array-length v5, v1

    add-int/lit8 v5, v5, 0x1

    new-array v2, v5, [[Ljava/lang/annotation/Annotation;

    .line 798
    const/4 v5, 0x1

    array-length v6, v1

    invoke-static {v1, v7, v2, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 799
    invoke-virtual {p0, v2}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;->_collectRelevantAnnotations([[Ljava/lang/annotation/Annotation;)[Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotationMap;

    move-result-object v4

    goto :goto_1

    .line 807
    .end local v0    # "dc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "old":[[Ljava/lang/annotation/Annotation;
    :cond_4
    invoke-virtual {p0, v2}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;->_collectRelevantAnnotations([[Ljava/lang/annotation/Annotation;)[Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotationMap;

    move-result-object v4

    .line 809
    :cond_5
    new-instance v5, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedConstructor;

    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;->_collectRelevantAnnotations([Ljava/lang/annotation/Annotation;)Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotationMap;

    move-result-object v6

    invoke-direct {v5, p1, v6, v4}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedConstructor;-><init>(Ljava/lang/reflect/Constructor;Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotationMap;[Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotationMap;)V

    goto/16 :goto_0
.end method

.method protected _constructCreatorMethod(Ljava/lang/reflect/Method;)Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;
    .locals 3
    .param p1, "m"    # Ljava/lang/reflect/Method;

    .prologue
    .line 815
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;->_annotationIntrospector:Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    if-nez v0, :cond_0

    .line 816
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;

    invoke-direct {p0}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;->_emptyAnnotationMap()Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotationMap;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v2

    array-length v2, v2

    invoke-direct {p0, v2}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;->_emptyAnnotationMaps(I)[Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotationMap;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;-><init>(Ljava/lang/reflect/Method;Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotationMap;[Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotationMap;)V

    .line 818
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;->_collectRelevantAnnotations([Ljava/lang/annotation/Annotation;)Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotationMap;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;->_collectRelevantAnnotations([[Ljava/lang/annotation/Annotation;)[Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotationMap;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;-><init>(Ljava/lang/reflect/Method;Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotationMap;[Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotationMap;)V

    goto :goto_0
.end method

.method protected _constructField(Ljava/lang/reflect/Field;)Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedField;
    .locals 2
    .param p1, "f"    # Ljava/lang/reflect/Field;

    .prologue
    .line 824
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;->_annotationIntrospector:Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    if-nez v0, :cond_0

    .line 825
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedField;

    invoke-direct {p0}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;->_emptyAnnotationMap()Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotationMap;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedField;-><init>(Ljava/lang/reflect/Field;Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotationMap;)V

    .line 827
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedField;

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;->_collectRelevantAnnotations([Ljava/lang/annotation/Annotation;)Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotationMap;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedField;-><init>(Ljava/lang/reflect/Field;Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotationMap;)V

    goto :goto_0
.end method

.method protected _constructMethod(Ljava/lang/reflect/Method;)Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;
    .locals 3
    .param p1, "m"    # Ljava/lang/reflect/Method;

    .prologue
    const/4 v2, 0x0

    .line 758
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;->_annotationIntrospector:Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    if-nez v0, :cond_0

    .line 759
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;

    invoke-direct {p0}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;->_emptyAnnotationMap()Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotationMap;

    move-result-object v1

    invoke-direct {v0, p1, v1, v2}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;-><init>(Ljava/lang/reflect/Method;Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotationMap;[Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotationMap;)V

    .line 761
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;->_collectRelevantAnnotations([Ljava/lang/annotation/Annotation;)Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotationMap;

    move-result-object v1

    invoke-direct {v0, p1, v1, v2}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;-><init>(Ljava/lang/reflect/Method;Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotationMap;[Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotationMap;)V

    goto :goto_0
.end method

.method protected _isIncludableMethod(Ljava/lang/reflect/Method;Lcom/flurry/org/codehaus/jackson/map/introspect/MethodFilter;)Z
    .locals 2
    .param p1, "m"    # Ljava/lang/reflect/Method;
    .param p2, "filter"    # Lcom/flurry/org/codehaus/jackson/map/introspect/MethodFilter;

    .prologue
    const/4 v0, 0x0

    .line 876
    if-eqz p2, :cond_1

    invoke-interface {p2, p1}, Lcom/flurry/org/codehaus/jackson/map/introspect/MethodFilter;->includeMethod(Ljava/lang/reflect/Method;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 886
    :cond_0
    :goto_0
    return v0

    .line 883
    :cond_1
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->isSynthetic()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->isBridge()Z

    move-result v1

    if-nez v1, :cond_0

    .line 886
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public fields()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedField;",
            ">;"
        }
    .end annotation

    .prologue
    .line 243
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;->_fields:Ljava/util/List;

    if-nez v0, :cond_0

    .line 244
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 246
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;->_fields:Ljava/util/List;

    goto :goto_0
.end method

.method public findMethod(Ljava/lang/String;[Ljava/lang/Class;)Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;"
        }
    .end annotation

    .prologue
    .line 234
    .local p2, "paramTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;->_memberMethods:Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethodMap;

    invoke-virtual {v0, p1, p2}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethodMap;->find(Ljava/lang/String;[Ljava/lang/Class;)Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;

    move-result-object v0

    return-object v0
.end method

.method protected getAllAnnotations()Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotationMap;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;->_classAnnotations:Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotationMap;

    return-object v0
.end method

.method public getAnnotated()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 159
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;->_class:Ljava/lang/Class;

    return-object v0
.end method

.method public bridge synthetic getAnnotated()Ljava/lang/reflect/AnnotatedElement;
    .locals 1

    .prologue
    .line 12
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;->getAnnotated()Ljava/lang/Class;

    move-result-object v0

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
    .line 170
    .local p1, "acls":Ljava/lang/Class;, "Ljava/lang/Class<TA;>;"
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;->_classAnnotations:Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotationMap;

    if-nez v0, :cond_0

    .line 171
    const/4 v0, 0x0

    .line 173
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;->_classAnnotations:Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotationMap;

    invoke-virtual {v0, p1}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotationMap;->get(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    goto :goto_0
.end method

.method public getAnnotations()Lcom/flurry/org/codehaus/jackson/map/util/Annotations;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;->_classAnnotations:Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotationMap;

    return-object v0
.end method

.method public getConstructors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedConstructor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 208
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;->_constructors:Ljava/util/List;

    if-nez v0, :cond_0

    .line 209
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 211
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;->_constructors:Ljava/util/List;

    goto :goto_0
.end method

.method public getDefaultConstructor()Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedConstructor;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;->_defaultConstructor:Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedConstructor;

    return-object v0
.end method

.method public getFieldCount()I
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;->_fields:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;->_fields:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getGenericType()Ljava/lang/reflect/Type;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;->_class:Ljava/lang/Class;

    return-object v0
.end method

.method public getMemberMethodCount()I
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;->_memberMethods:Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethodMap;

    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethodMap;->size()I

    move-result v0

    return v0
.end method

.method public getModifiers()I
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;->_class:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;->_class:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
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
    .line 183
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;->_class:Ljava/lang/Class;

    return-object v0
.end method

.method public getStaticMethods()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;",
            ">;"
        }
    .end annotation

    .prologue
    .line 216
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;->_creatorMethods:Ljava/util/List;

    if-nez v0, :cond_0

    .line 217
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 219
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;->_creatorMethods:Ljava/util/List;

    goto :goto_0
.end method

.method public hasAnnotations()Z
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;->_classAnnotations:Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotationMap;

    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotationMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public memberMethods()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;",
            ">;"
        }
    .end annotation

    .prologue
    .line 224
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;->_memberMethods:Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethodMap;

    return-object v0
.end method

.method public resolveClassAnnotations()V
    .locals 9

    .prologue
    .line 265
    new-instance v6, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotationMap;

    invoke-direct {v6}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotationMap;-><init>()V

    iput-object v6, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;->_classAnnotations:Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotationMap;

    .line 267
    iget-object v6, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;->_annotationIntrospector:Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    if-nez v6, :cond_0

    .line 302
    :goto_0
    return-void

    .line 272
    :cond_0
    iget-object v6, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;->_primaryMixIn:Ljava/lang/Class;

    if-eqz v6, :cond_1

    .line 273
    iget-object v6, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;->_classAnnotations:Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotationMap;

    iget-object v7, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;->_class:Ljava/lang/Class;

    iget-object v8, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;->_primaryMixIn:Ljava/lang/Class;

    invoke-virtual {p0, v6, v7, v8}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;->_addClassMixIns(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotationMap;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 276
    :cond_1
    iget-object v6, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;->_class:Ljava/lang/Class;

    invoke-virtual {v6}, Ljava/lang/Class;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v1

    .local v1, "arr$":[Ljava/lang/annotation/Annotation;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v5, :cond_3

    aget-object v0, v1, v3

    .line 277
    .local v0, "a":Ljava/lang/annotation/Annotation;
    iget-object v6, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;->_annotationIntrospector:Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v6, v0}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;->isHandled(Ljava/lang/annotation/Annotation;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 278
    iget-object v6, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;->_classAnnotations:Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotationMap;

    invoke-virtual {v6, v0}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotationMap;->addIfNotPresent(Ljava/lang/annotation/Annotation;)V

    .line 276
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 283
    .end local v0    # "a":Ljava/lang/annotation/Annotation;
    :cond_3
    iget-object v6, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;->_superTypes:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .end local v3    # "i$":I
    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    .line 285
    .local v2, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v6, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;->_classAnnotations:Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotationMap;

    invoke-virtual {p0, v6, v2}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;->_addClassMixIns(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotationMap;Ljava/lang/Class;)V

    .line 286
    invoke-virtual {v2}, Ljava/lang/Class;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v1

    array-length v5, v1

    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_2
    if-ge v4, v5, :cond_4

    aget-object v0, v1, v4

    .line 287
    .restart local v0    # "a":Ljava/lang/annotation/Annotation;
    iget-object v6, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;->_annotationIntrospector:Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v6, v0}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;->isHandled(Ljava/lang/annotation/Annotation;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 288
    iget-object v6, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;->_classAnnotations:Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotationMap;

    invoke-virtual {v6, v0}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotationMap;->addIfNotPresent(Ljava/lang/annotation/Annotation;)V

    .line 286
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 301
    .end local v0    # "a":Ljava/lang/annotation/Annotation;
    .end local v2    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "i$":I
    :cond_6
    iget-object v6, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;->_classAnnotations:Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotationMap;

    const-class v7, Ljava/lang/Object;

    invoke-virtual {p0, v6, v7}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;->_addClassMixIns(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotationMap;Ljava/lang/Class;)V

    goto :goto_0
.end method

.method public resolveCreators(Z)V
    .locals 13
    .param p1, "includeAll"    # Z

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 317
    iput-object v11, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;->_constructors:Ljava/util/List;

    .line 318
    iget-object v8, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;->_class:Ljava/lang/Class;

    invoke-virtual {v8}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v3

    .line 319
    .local v3, "declaredCtors":[Ljava/lang/reflect/Constructor;, "[Ljava/lang/reflect/Constructor<*>;"
    move-object v1, v3

    .local v1, "arr$":[Ljava/lang/reflect/Constructor;
    array-length v6, v1

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v6, :cond_3

    aget-object v2, v1, v5

    .line 320
    .local v2, "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    invoke-virtual {v2}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v8

    array-length v8, v8

    if-nez v8, :cond_1

    .line 321
    invoke-virtual {p0, v2, v12}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;->_constructConstructor(Ljava/lang/reflect/Constructor;Z)Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedConstructor;

    move-result-object v8

    iput-object v8, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;->_defaultConstructor:Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedConstructor;

    .line 319
    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 323
    :cond_1
    if-eqz p1, :cond_0

    .line 324
    iget-object v8, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;->_constructors:Ljava/util/List;

    if-nez v8, :cond_2

    .line 325
    new-instance v8, Ljava/util/ArrayList;

    const/16 v9, 0xa

    array-length v10, v3

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v8, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;->_constructors:Ljava/util/List;

    .line 327
    :cond_2
    iget-object v8, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;->_constructors:Ljava/util/List;

    const/4 v9, 0x0

    invoke-virtual {p0, v2, v9}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;->_constructConstructor(Ljava/lang/reflect/Constructor;Z)Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedConstructor;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 332
    .end local v2    # "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :cond_3
    iget-object v8, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;->_primaryMixIn:Ljava/lang/Class;

    if-eqz v8, :cond_5

    .line 333
    iget-object v8, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;->_defaultConstructor:Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedConstructor;

    if-nez v8, :cond_4

    iget-object v8, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;->_constructors:Ljava/util/List;

    if-eqz v8, :cond_5

    .line 334
    :cond_4
    iget-object v8, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;->_primaryMixIn:Ljava/lang/Class;

    invoke-virtual {p0, v8}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;->_addConstructorMixIns(Ljava/lang/Class;)V

    .line 343
    :cond_5
    iget-object v8, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;->_annotationIntrospector:Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    if-eqz v8, :cond_8

    .line 344
    iget-object v8, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;->_defaultConstructor:Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedConstructor;

    if-eqz v8, :cond_6

    .line 345
    iget-object v8, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;->_annotationIntrospector:Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    iget-object v9, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;->_defaultConstructor:Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedConstructor;

    invoke-virtual {v8, v9}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;->isIgnorableConstructor(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedConstructor;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 346
    iput-object v11, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;->_defaultConstructor:Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedConstructor;

    .line 349
    :cond_6
    iget-object v8, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;->_constructors:Ljava/util/List;

    if-eqz v8, :cond_8

    .line 351
    iget-object v8, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;->_constructors:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v4

    .local v4, "i":I
    :cond_7
    :goto_2
    add-int/lit8 v4, v4, -0x1

    if-ltz v4, :cond_8

    .line 352
    iget-object v9, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;->_annotationIntrospector:Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    iget-object v8, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;->_constructors:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedConstructor;

    invoke-virtual {v9, v8}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;->isIgnorableConstructor(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedConstructor;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 353
    iget-object v8, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;->_constructors:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_2

    .line 359
    .end local v4    # "i":I
    :cond_8
    iput-object v11, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;->_creatorMethods:Ljava/util/List;

    .line 361
    if-eqz p1, :cond_f

    .line 363
    iget-object v8, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;->_class:Ljava/lang/Class;

    invoke-virtual {v8}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    .local v1, "arr$":[Ljava/lang/reflect/Method;
    array-length v6, v1

    const/4 v5, 0x0

    :goto_3
    if-ge v5, v6, :cond_c

    aget-object v7, v1, v5

    .line 364
    .local v7, "m":Ljava/lang/reflect/Method;
    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v8

    invoke-static {v8}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v8

    if-nez v8, :cond_a

    .line 363
    :cond_9
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 367
    :cond_a
    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v8

    array-length v0, v8

    .line 369
    .local v0, "argCount":I
    if-lt v0, v12, :cond_9

    .line 372
    iget-object v8, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;->_creatorMethods:Ljava/util/List;

    if-nez v8, :cond_b

    .line 373
    new-instance v8, Ljava/util/ArrayList;

    const/16 v9, 0x8

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v8, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;->_creatorMethods:Ljava/util/List;

    .line 375
    :cond_b
    iget-object v8, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;->_creatorMethods:Ljava/util/List;

    invoke-virtual {p0, v7}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;->_constructCreatorMethod(Ljava/lang/reflect/Method;)Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 378
    .end local v0    # "argCount":I
    .end local v7    # "m":Ljava/lang/reflect/Method;
    :cond_c
    iget-object v8, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;->_primaryMixIn:Ljava/lang/Class;

    if-eqz v8, :cond_d

    iget-object v8, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;->_creatorMethods:Ljava/util/List;

    if-eqz v8, :cond_d

    .line 379
    iget-object v8, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;->_primaryMixIn:Ljava/lang/Class;

    invoke-virtual {p0, v8}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;->_addFactoryMixIns(Ljava/lang/Class;)V

    .line 382
    :cond_d
    iget-object v8, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;->_annotationIntrospector:Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    if-eqz v8, :cond_f

    .line 383
    iget-object v8, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;->_creatorMethods:Ljava/util/List;

    if-eqz v8, :cond_f

    .line 385
    iget-object v8, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;->_creatorMethods:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v4

    .restart local v4    # "i":I
    :cond_e
    :goto_5
    add-int/lit8 v4, v4, -0x1

    if-ltz v4, :cond_f

    .line 386
    iget-object v9, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;->_annotationIntrospector:Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    iget-object v8, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;->_creatorMethods:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;

    invoke-virtual {v9, v8}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;->isIgnorableMethod(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 387
    iget-object v8, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;->_creatorMethods:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_5

    .line 393
    .end local v1    # "arr$":[Ljava/lang/reflect/Method;
    .end local v4    # "i":I
    :cond_f
    return-void
.end method

.method public resolveFields()V
    .locals 3

    .prologue
    .line 456
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 457
    .local v0, "foundFields":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedField;>;"
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;->_class:Ljava/lang/Class;

    invoke-virtual {p0, v0, v1}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;->_addFields(Ljava/util/Map;Ljava/lang/Class;)V

    .line 458
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 459
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;->_fields:Ljava/util/List;

    .line 464
    :goto_0
    return-void

    .line 461
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;->_fields:Ljava/util/List;

    .line 462
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;->_fields:Ljava/util/List;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public resolveFields(Z)V
    .locals 0
    .param p1, "collectIgnored"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 487
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;->resolveFields()V

    .line 488
    return-void
.end method

.method public resolveMemberMethods(Lcom/flurry/org/codehaus/jackson/map/introspect/MethodFilter;)V
    .locals 11
    .param p1, "methodFilter"    # Lcom/flurry/org/codehaus/jackson/map/introspect/MethodFilter;

    .prologue
    .line 405
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethodMap;

    invoke-direct {v0}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethodMap;-><init>()V

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;->_memberMethods:Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethodMap;

    .line 406
    new-instance v5, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethodMap;

    invoke-direct {v5}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethodMap;-><init>()V

    .line 408
    .local v5, "mixins":Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethodMap;
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;->_class:Ljava/lang/Class;

    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;->_memberMethods:Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethodMap;

    iget-object v4, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;->_primaryMixIn:Ljava/lang/Class;

    move-object v0, p0

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;->_addMemberMethods(Ljava/lang/Class;Lcom/flurry/org/codehaus/jackson/map/introspect/MethodFilter;Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethodMap;Ljava/lang/Class;Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethodMap;)V

    .line 411
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;->_superTypes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 412
    .local v1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;->_mixInResolver:Lcom/flurry/org/codehaus/jackson/map/ClassIntrospector$MixInResolver;

    if-nez v0, :cond_0

    const/4 v4, 0x0

    .line 413
    .local v4, "mixin":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_1
    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;->_memberMethods:Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethodMap;

    move-object v0, p0

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;->_addMemberMethods(Ljava/lang/Class;Lcom/flurry/org/codehaus/jackson/map/introspect/MethodFilter;Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethodMap;Ljava/lang/Class;Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethodMap;)V

    goto :goto_0

    .line 412
    .end local v4    # "mixin":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;->_mixInResolver:Lcom/flurry/org/codehaus/jackson/map/ClassIntrospector$MixInResolver;

    invoke-interface {v0, v1}, Lcom/flurry/org/codehaus/jackson/map/ClassIntrospector$MixInResolver;->findMixInClassFor(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v4

    goto :goto_1

    .line 416
    .end local v1    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;->_mixInResolver:Lcom/flurry/org/codehaus/jackson/map/ClassIntrospector$MixInResolver;

    if-eqz v0, :cond_2

    .line 417
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;->_mixInResolver:Lcom/flurry/org/codehaus/jackson/map/ClassIntrospector$MixInResolver;

    const-class v2, Ljava/lang/Object;

    invoke-interface {v0, v2}, Lcom/flurry/org/codehaus/jackson/map/ClassIntrospector$MixInResolver;->findMixInClassFor(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v4

    .line 418
    .restart local v4    # "mixin":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v4, :cond_2

    .line 419
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;->_memberMethods:Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethodMap;

    invoke-virtual {p0, p1, v0, v4, v5}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;->_addMethodMixIns(Lcom/flurry/org/codehaus/jackson/map/introspect/MethodFilter;Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethodMap;Ljava/lang/Class;Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethodMap;)V

    .line 429
    .end local v4    # "mixin":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;->_annotationIntrospector:Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    if-eqz v0, :cond_4

    .line 430
    invoke-virtual {v5}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethodMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 431
    invoke-virtual {v5}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethodMap;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 432
    .local v8, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;>;"
    :cond_3
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 433
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;

    .line 435
    .local v10, "mixIn":Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;
    :try_start_0
    const-class v0, Ljava/lang/Object;

    invoke-virtual {v10}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;->getParameterClasses()[Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    .line 436
    .local v9, "m":Ljava/lang/reflect/Method;
    if-eqz v9, :cond_3

    .line 437
    invoke-virtual {p0, v9}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;->_constructMethod(Ljava/lang/reflect/Method;)Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;

    move-result-object v6

    .line 438
    .local v6, "am":Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;
    invoke-virtual {v10}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;->getAnnotated()Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v6, v2}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;->_addMixOvers(Ljava/lang/reflect/Method;Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;Z)V

    .line 439
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;->_memberMethods:Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethodMap;

    invoke-virtual {v0, v6}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethodMap;->add(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 441
    .end local v6    # "am":Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;
    .end local v9    # "m":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    goto :goto_2

    .line 445
    .end local v8    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;>;"
    .end local v10    # "mixIn":Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;
    :cond_4
    return-void
.end method

.method public resolveMemberMethods(Lcom/flurry/org/codehaus/jackson/map/introspect/MethodFilter;Z)V
    .locals 0
    .param p1, "methodFilter"    # Lcom/flurry/org/codehaus/jackson/map/introspect/MethodFilter;
    .param p2, "collectIgnored"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 478
    invoke-virtual {p0, p1}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;->resolveMemberMethods(Lcom/flurry/org/codehaus/jackson/map/introspect/MethodFilter;)V

    .line 479
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 977
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[AnnotedClass "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;->_class:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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
    .line 12
    invoke-virtual {p0, p1}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;->withAnnotations(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotationMap;)Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;

    move-result-object v0

    return-object v0
.end method

.method public withAnnotations(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotationMap;)Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;
    .locals 6
    .param p1, "ann"    # Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotationMap;

    .prologue
    .line 120
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;

    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;->_class:Ljava/lang/Class;

    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;->_superTypes:Ljava/util/List;

    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;->_annotationIntrospector:Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    iget-object v4, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;->_mixInResolver:Lcom/flurry/org/codehaus/jackson/map/ClassIntrospector$MixInResolver;

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;-><init>(Ljava/lang/Class;Ljava/util/List;Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;Lcom/flurry/org/codehaus/jackson/map/ClassIntrospector$MixInResolver;Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotationMap;)V

    return-object v0
.end method
