.class public Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;
.super Ljava/lang/Object;
.source "POJOPropertiesCollector.java"


# instance fields
.field protected final _annotationIntrospector:Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

.field protected _anyGetters:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;",
            ">;"
        }
    .end annotation
.end field

.field protected _anySetters:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;",
            ">;"
        }
    .end annotation
.end field

.field protected final _classDef:Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;

.field protected final _config:Lcom/flurry/org/codehaus/jackson/map/MapperConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/org/codehaus/jackson/map/MapperConfig",
            "<*>;"
        }
    .end annotation
.end field

.field protected _creatorProperties:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;",
            ">;"
        }
    .end annotation
.end field

.field protected final _forSerialization:Z

.field protected _ignoredPropertyNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected _ignoredPropertyNamesForDeser:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected _injectables:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/Object;",
            "Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;",
            ">;"
        }
    .end annotation
.end field

.field protected _jsonValueGetters:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;",
            ">;"
        }
    .end annotation
.end field

.field protected final _properties:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;",
            ">;"
        }
    .end annotation
.end field

.field protected final _type:Lcom/flurry/org/codehaus/jackson/type/JavaType;

.field protected final _visibilityChecker:Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/flurry/org/codehaus/jackson/map/MapperConfig;ZLcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;)V
    .locals 2
    .param p2, "forSerialization"    # Z
    .param p3, "type"    # Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .param p4, "classDef"    # Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/MapperConfig",
            "<*>;Z",
            "Lcom/flurry/org/codehaus/jackson/type/JavaType;",
            "Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "config":Lcom/flurry/org/codehaus/jackson/map/MapperConfig;, "Lcom/flurry/org/codehaus/jackson/map/MapperConfig<*>;"
    const/4 v0, 0x0

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_properties:Ljava/util/LinkedHashMap;

    .line 60
    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_creatorProperties:Ljava/util/LinkedList;

    .line 62
    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_anyGetters:Ljava/util/LinkedList;

    .line 64
    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_anySetters:Ljava/util/LinkedList;

    .line 69
    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_jsonValueGetters:Ljava/util/LinkedList;

    .line 104
    iput-object p1, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_config:Lcom/flurry/org/codehaus/jackson/map/MapperConfig;

    .line 105
    iput-boolean p2, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_forSerialization:Z

    .line 106
    iput-object p3, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_type:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    .line 107
    iput-object p4, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_classDef:Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;

    .line 108
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/map/MapperConfig;->isAnnotationProcessingEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_config:Lcom/flurry/org/codehaus/jackson/map/MapperConfig;

    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/map/MapperConfig;->getAnnotationIntrospector()Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object v0

    :cond_0
    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_annotationIntrospector:Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    .line 110
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_annotationIntrospector:Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    if-nez v0, :cond_1

    .line 111
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_config:Lcom/flurry/org/codehaus/jackson/map/MapperConfig;

    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/map/MapperConfig;->getDefaultVisibilityChecker()Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_visibilityChecker:Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker;

    .line 116
    :goto_0
    return-void

    .line 113
    :cond_1
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_annotationIntrospector:Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_config:Lcom/flurry/org/codehaus/jackson/map/MapperConfig;

    invoke-virtual {v1}, Lcom/flurry/org/codehaus/jackson/map/MapperConfig;->getDefaultVisibilityChecker()Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker;

    move-result-object v1

    invoke-virtual {v0, p4, v1}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;->findAutoDetectVisibility(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker;)Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_visibilityChecker:Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker;

    goto :goto_0
.end method

.method private _addIgnored(Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;)V
    .locals 2
    .param p1, "prop"    # Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;

    .prologue
    .line 590
    iget-boolean v1, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_forSerialization:Z

    if-eqz v1, :cond_1

    .line 603
    :cond_0
    :goto_0
    return-void

    .line 598
    :cond_1
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->getName()Ljava/lang/String;

    move-result-object v0

    .line 599
    .local v0, "name":Ljava/lang/String;
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_ignoredPropertyNames:Ljava/util/Set;

    invoke-direct {p0, v1, v0}, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->addToSet(Ljava/util/Set;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_ignoredPropertyNames:Ljava/util/Set;

    .line 600
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->anyDeserializeIgnorals()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 601
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_ignoredPropertyNamesForDeser:Ljava/util/Set;

    invoke-direct {p0, v1, v0}, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->addToSet(Ljava/util/Set;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_ignoredPropertyNamesForDeser:Ljava/util/Set;

    goto :goto_0
.end method

.method private addToSet(Ljava/util/Set;Ljava/lang/String;)Ljava/util/Set;
    .locals 0
    .param p2, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 707
    .local p1, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 708
    new-instance p1, Ljava/util/HashSet;

    .end local p1    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 710
    .restart local p1    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_0
    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 711
    return-object p1
.end method


# virtual methods
.method protected _addCreators()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 372
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_annotationIntrospector:Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    .line 374
    .local v0, "ai":Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;
    if-nez v0, :cond_1

    .line 409
    :cond_0
    return-void

    .line 377
    :cond_1
    iget-object v9, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_classDef:Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;

    invoke-virtual {v9}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;->getConstructors()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedConstructor;

    .line 378
    .local v1, "ctor":Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedConstructor;
    iget-object v9, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_creatorProperties:Ljava/util/LinkedList;

    if-nez v9, :cond_3

    .line 379
    new-instance v9, Ljava/util/LinkedList;

    invoke-direct {v9}, Ljava/util/LinkedList;-><init>()V

    iput-object v9, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_creatorProperties:Ljava/util/LinkedList;

    .line 381
    :cond_3
    const/4 v3, 0x0

    .local v3, "i":I
    invoke-virtual {v1}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedConstructor;->getParameterCount()I

    move-result v5

    .local v5, "len":I
    :goto_0
    if-ge v3, v5, :cond_2

    .line 382
    invoke-virtual {v1, v3}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedConstructor;->getParameter(I)Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedParameter;

    move-result-object v7

    .line 383
    .local v7, "param":Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedParameter;
    invoke-virtual {v0, v7}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;->findPropertyNameForParam(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedParameter;)Ljava/lang/String;

    move-result-object v6

    .line 385
    .local v6, "name":Ljava/lang/String;
    if-eqz v6, :cond_4

    .line 387
    invoke-virtual {p0, v6}, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_property(Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;

    move-result-object v8

    .line 388
    .local v8, "prop":Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;
    invoke-virtual {v8, v7, v6, v11, v10}, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->addCtor(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedParameter;Ljava/lang/String;ZZ)V

    .line 389
    iget-object v9, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_creatorProperties:Ljava/util/LinkedList;

    invoke-virtual {v9, v8}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 381
    .end local v8    # "prop":Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 393
    .end local v1    # "ctor":Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedConstructor;
    .end local v3    # "i":I
    .end local v5    # "len":I
    .end local v6    # "name":Ljava/lang/String;
    .end local v7    # "param":Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedParameter;
    :cond_5
    iget-object v9, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_classDef:Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;

    invoke-virtual {v9}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;->getStaticMethods()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;

    .line 394
    .local v2, "factory":Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;
    iget-object v9, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_creatorProperties:Ljava/util/LinkedList;

    if-nez v9, :cond_7

    .line 395
    new-instance v9, Ljava/util/LinkedList;

    invoke-direct {v9}, Ljava/util/LinkedList;-><init>()V

    iput-object v9, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_creatorProperties:Ljava/util/LinkedList;

    .line 397
    :cond_7
    const/4 v3, 0x0

    .restart local v3    # "i":I
    invoke-virtual {v2}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;->getParameterCount()I

    move-result v5

    .restart local v5    # "len":I
    :goto_1
    if-ge v3, v5, :cond_6

    .line 398
    invoke-virtual {v2, v3}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;->getParameter(I)Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedParameter;

    move-result-object v7

    .line 399
    .restart local v7    # "param":Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedParameter;
    invoke-virtual {v0, v7}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;->findPropertyNameForParam(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedParameter;)Ljava/lang/String;

    move-result-object v6

    .line 401
    .restart local v6    # "name":Ljava/lang/String;
    if-eqz v6, :cond_8

    .line 403
    invoke-virtual {p0, v6}, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_property(Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;

    move-result-object v8

    .line 404
    .restart local v8    # "prop":Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;
    invoke-virtual {v8, v7, v6, v11, v10}, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->addCtor(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedParameter;Ljava/lang/String;ZZ)V

    .line 405
    iget-object v9, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_creatorProperties:Ljava/util/LinkedList;

    invoke-virtual {v9, v8}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 397
    .end local v8    # "prop":Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;
    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method protected _addFields()V
    .locals 10

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 335
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_annotationIntrospector:Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    .line 337
    .local v0, "ai":Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;
    iget-object v9, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_classDef:Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;

    invoke-virtual {v9}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;->fields()Ljava/lang/Iterable;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedField;

    .line 338
    .local v2, "f":Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedField;
    invoke-virtual {v2}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedField;->getName()Ljava/lang/String;

    move-result-object v5

    .line 341
    .local v5, "implName":Ljava/lang/String;
    if-nez v0, :cond_2

    .line 342
    const/4 v1, 0x0

    .line 353
    .local v1, "explName":Ljava/lang/String;
    :goto_1
    const-string v9, ""

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 354
    move-object v1, v5

    .line 357
    :cond_0
    if-eqz v1, :cond_4

    move v6, v7

    .line 358
    .local v6, "visible":Z
    :goto_2
    if-nez v6, :cond_1

    .line 359
    iget-object v9, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_visibilityChecker:Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker;

    invoke-interface {v9, v2}, Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker;->isFieldVisible(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedField;)Z

    move-result v6

    .line 362
    :cond_1
    if-eqz v0, :cond_5

    invoke-virtual {v0, v2}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;->hasIgnoreMarker(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;)Z

    move-result v9

    if-eqz v9, :cond_5

    move v4, v7

    .line 363
    .local v4, "ignored":Z
    :goto_3
    invoke-virtual {p0, v5}, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_property(Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;

    move-result-object v9

    invoke-virtual {v9, v2, v1, v6, v4}, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->addField(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedField;Ljava/lang/String;ZZ)V

    goto :goto_0

    .line 343
    .end local v1    # "explName":Ljava/lang/String;
    .end local v4    # "ignored":Z
    .end local v6    # "visible":Z
    :cond_2
    iget-boolean v9, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_forSerialization:Z

    if-eqz v9, :cond_3

    .line 349
    invoke-virtual {v0, v2}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;->findSerializablePropertyName(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedField;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "explName":Ljava/lang/String;
    goto :goto_1

    .line 351
    .end local v1    # "explName":Ljava/lang/String;
    :cond_3
    invoke-virtual {v0, v2}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;->findDeserializablePropertyName(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedField;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "explName":Ljava/lang/String;
    goto :goto_1

    :cond_4
    move v6, v8

    .line 357
    goto :goto_2

    .restart local v6    # "visible":Z
    :cond_5
    move v4, v8

    .line 362
    goto :goto_3

    .line 365
    .end local v1    # "explName":Ljava/lang/String;
    .end local v2    # "f":Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedField;
    .end local v5    # "implName":Ljava/lang/String;
    .end local v6    # "visible":Z
    :cond_6
    return-void
.end method

.method protected _addInjectables()V
    .locals 6

    .prologue
    .line 512
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_annotationIntrospector:Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    .line 513
    .local v0, "ai":Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;
    if-nez v0, :cond_1

    .line 531
    :cond_0
    return-void

    .line 518
    :cond_1
    iget-object v4, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_classDef:Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;

    invoke-virtual {v4}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;->fields()Ljava/lang/Iterable;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedField;

    .line 519
    .local v1, "f":Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedField;
    invoke-virtual {v0, v1}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;->findInjectableValueId(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v4, v1}, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_doAddInjectable(Ljava/lang/Object;Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;)V

    goto :goto_0

    .line 522
    .end local v1    # "f":Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedField;
    :cond_2
    iget-object v4, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_classDef:Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;

    invoke-virtual {v4}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;->memberMethods()Ljava/lang/Iterable;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;

    .line 526
    .local v3, "m":Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;
    invoke-virtual {v3}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;->getParameterCount()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    .line 529
    invoke-virtual {v0, v3}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;->findInjectableValueId(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v4, v3}, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_doAddInjectable(Ljava/lang/Object;Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;)V

    goto :goto_1
.end method

.method protected _addMethods()V
    .locals 11

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 416
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_annotationIntrospector:Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    .line 418
    .local v0, "ai":Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;
    iget-object v10, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_classDef:Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;

    invoke-virtual {v10}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;->memberMethods()Ljava/lang/Iterable;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_13

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;

    .line 427
    .local v6, "m":Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;
    invoke-virtual {v6}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;->getParameterCount()I

    move-result v1

    .line 430
    .local v1, "argCount":I
    if-nez v1, :cond_b

    .line 432
    if-eqz v0, :cond_4

    .line 433
    invoke-virtual {v0, v6}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;->hasAnyGetterAnnotation(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 434
    iget-object v10, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_anyGetters:Ljava/util/LinkedList;

    if-nez v10, :cond_1

    .line 435
    new-instance v10, Ljava/util/LinkedList;

    invoke-direct {v10}, Ljava/util/LinkedList;-><init>()V

    iput-object v10, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_anyGetters:Ljava/util/LinkedList;

    .line 437
    :cond_1
    iget-object v10, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_anyGetters:Ljava/util/LinkedList;

    invoke-virtual {v10, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 441
    :cond_2
    invoke-virtual {v0, v6}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;->hasAsValueAnnotation(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 442
    iget-object v10, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_jsonValueGetters:Ljava/util/LinkedList;

    if-nez v10, :cond_3

    .line 443
    new-instance v10, Ljava/util/LinkedList;

    invoke-direct {v10}, Ljava/util/LinkedList;-><init>()V

    iput-object v10, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_jsonValueGetters:Ljava/util/LinkedList;

    .line 445
    :cond_3
    iget-object v10, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_jsonValueGetters:Ljava/util/LinkedList;

    invoke-virtual {v10, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 450
    :cond_4
    if-nez v0, :cond_5

    move-object v2, v9

    .line 451
    .local v2, "explName":Ljava/lang/String;
    :goto_1
    if-nez v2, :cond_7

    .line 452
    invoke-virtual {v6}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Lcom/flurry/org/codehaus/jackson/map/util/BeanUtil;->okNameForRegularGetter(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 453
    .local v5, "implName":Ljava/lang/String;
    if-nez v5, :cond_6

    .line 454
    invoke-virtual {v6}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Lcom/flurry/org/codehaus/jackson/map/util/BeanUtil;->okNameForIsGetter(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 455
    if-eqz v5, :cond_0

    .line 458
    iget-object v10, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_visibilityChecker:Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker;

    invoke-interface {v10, v6}, Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker;->isIsGetterVisible(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;)Z

    move-result v7

    .line 474
    .local v7, "visible":Z
    :goto_2
    if-nez v0, :cond_a

    move v4, v8

    .line 475
    .local v4, "ignore":Z
    :goto_3
    invoke-virtual {p0, v5}, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_property(Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;

    move-result-object v10

    invoke-virtual {v10, v6, v2, v7, v4}, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->addGetter(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;Ljava/lang/String;ZZ)V

    goto :goto_0

    .line 450
    .end local v2    # "explName":Ljava/lang/String;
    .end local v4    # "ignore":Z
    .end local v5    # "implName":Ljava/lang/String;
    .end local v7    # "visible":Z
    :cond_5
    invoke-virtual {v0, v6}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;->findGettablePropertyName(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 460
    .restart local v2    # "explName":Ljava/lang/String;
    .restart local v5    # "implName":Ljava/lang/String;
    :cond_6
    iget-object v10, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_visibilityChecker:Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker;

    invoke-interface {v10, v6}, Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker;->isGetterVisible(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;)Z

    move-result v7

    .restart local v7    # "visible":Z
    goto :goto_2

    .line 464
    .end local v5    # "implName":Ljava/lang/String;
    .end local v7    # "visible":Z
    :cond_7
    invoke-static {v6}, Lcom/flurry/org/codehaus/jackson/map/util/BeanUtil;->okNameForGetter(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;)Ljava/lang/String;

    move-result-object v5

    .line 466
    .restart local v5    # "implName":Ljava/lang/String;
    if-nez v5, :cond_8

    .line 467
    invoke-virtual {v6}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;->getName()Ljava/lang/String;

    move-result-object v5

    .line 469
    :cond_8
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_9

    .line 470
    move-object v2, v5

    .line 472
    :cond_9
    const/4 v7, 0x1

    .restart local v7    # "visible":Z
    goto :goto_2

    .line 474
    :cond_a
    invoke-virtual {v0, v6}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;->hasIgnoreMarker(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;)Z

    move-result v4

    goto :goto_3

    .line 476
    .end local v2    # "explName":Ljava/lang/String;
    .end local v5    # "implName":Ljava/lang/String;
    .end local v7    # "visible":Z
    :cond_b
    const/4 v10, 0x1

    if-ne v1, v10, :cond_11

    .line 477
    if-nez v0, :cond_c

    move-object v2, v9

    .line 478
    .restart local v2    # "explName":Ljava/lang/String;
    :goto_4
    if-nez v2, :cond_d

    .line 479
    invoke-static {v6}, Lcom/flurry/org/codehaus/jackson/map/util/BeanUtil;->okNameForSetter(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;)Ljava/lang/String;

    move-result-object v5

    .line 480
    .restart local v5    # "implName":Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 483
    iget-object v10, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_visibilityChecker:Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker;

    invoke-interface {v10, v6}, Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker;->isSetterVisible(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;)Z

    move-result v7

    .line 496
    .restart local v7    # "visible":Z
    :goto_5
    if-nez v0, :cond_10

    move v4, v8

    .line 497
    .restart local v4    # "ignore":Z
    :goto_6
    invoke-virtual {p0, v5}, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_property(Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;

    move-result-object v10

    invoke-virtual {v10, v6, v2, v7, v4}, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->addSetter(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;Ljava/lang/String;ZZ)V

    goto/16 :goto_0

    .line 477
    .end local v2    # "explName":Ljava/lang/String;
    .end local v4    # "ignore":Z
    .end local v5    # "implName":Ljava/lang/String;
    .end local v7    # "visible":Z
    :cond_c
    invoke-virtual {v0, v6}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;->findSettablePropertyName(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;)Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    .line 486
    .restart local v2    # "explName":Ljava/lang/String;
    :cond_d
    invoke-static {v6}, Lcom/flurry/org/codehaus/jackson/map/util/BeanUtil;->okNameForSetter(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;)Ljava/lang/String;

    move-result-object v5

    .line 488
    .restart local v5    # "implName":Ljava/lang/String;
    if-nez v5, :cond_e

    .line 489
    invoke-virtual {v6}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;->getName()Ljava/lang/String;

    move-result-object v5

    .line 491
    :cond_e
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_f

    .line 492
    move-object v2, v5

    .line 494
    :cond_f
    const/4 v7, 0x1

    .restart local v7    # "visible":Z
    goto :goto_5

    .line 496
    :cond_10
    invoke-virtual {v0, v6}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;->hasIgnoreMarker(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;)Z

    move-result v4

    goto :goto_6

    .line 499
    .end local v2    # "explName":Ljava/lang/String;
    .end local v5    # "implName":Ljava/lang/String;
    .end local v7    # "visible":Z
    :cond_11
    const/4 v10, 0x2

    if-ne v1, v10, :cond_0

    .line 500
    if-eqz v0, :cond_0

    invoke-virtual {v0, v6}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;->hasAnySetterAnnotation(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 501
    iget-object v10, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_anySetters:Ljava/util/LinkedList;

    if-nez v10, :cond_12

    .line 502
    new-instance v10, Ljava/util/LinkedList;

    invoke-direct {v10}, Ljava/util/LinkedList;-><init>()V

    iput-object v10, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_anySetters:Ljava/util/LinkedList;

    .line 504
    :cond_12
    iget-object v10, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_anySetters:Ljava/util/LinkedList;

    invoke-virtual {v10, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 508
    .end local v1    # "argCount":I
    .end local v6    # "m":Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;
    :cond_13
    return-void
.end method

.method protected _doAddInjectable(Ljava/lang/Object;Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;)V
    .locals 5
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "m"    # Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;

    .prologue
    .line 535
    if-nez p1, :cond_1

    .line 547
    :cond_0
    return-void

    .line 538
    :cond_1
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_injectables:Ljava/util/LinkedHashMap;

    if-nez v2, :cond_2

    .line 539
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_injectables:Ljava/util/LinkedHashMap;

    .line 541
    :cond_2
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_injectables:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;

    .line 542
    .local v0, "prev":Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;
    if-eqz v0, :cond_0

    .line 543
    if-nez p1, :cond_3

    const-string v1, "[null]"

    .line 544
    .local v1, "type":Ljava/lang/String;
    :goto_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Duplicate injectable value with id \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' (of type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 543
    .end local v1    # "type":Ljava/lang/String;
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method protected _property(Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;
    .locals 2
    .param p1, "implName"    # Ljava/lang/String;

    .prologue
    .line 697
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_properties:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;

    .line 698
    .local v0, "prop":Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;
    if-nez v0, :cond_0

    .line 699
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;

    .end local v0    # "prop":Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;
    invoke-direct {v0, p1}, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;-><init>(Ljava/lang/String;)V

    .line 700
    .restart local v0    # "prop":Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_properties:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 702
    :cond_0
    return-object v0
.end method

.method protected _removeUnwantedProperties()V
    .locals 4

    .prologue
    .line 561
    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_properties:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 562
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;>;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 563
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 564
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;

    .line 567
    .local v2, "prop":Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;
    invoke-virtual {v2}, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->anyVisible()Z

    move-result v3

    if-nez v3, :cond_0

    .line 568
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 572
    :cond_0
    invoke-virtual {v2}, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->anyIgnorals()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 573
    invoke-direct {p0, v2}, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_addIgnored(Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;)V

    .line 575
    invoke-virtual {v2}, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->anyExplicitNames()Z

    move-result v3

    if-nez v3, :cond_1

    .line 576
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 580
    :cond_1
    invoke-virtual {v2}, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->removeIgnored()V

    .line 583
    :cond_2
    invoke-virtual {v2}, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->removeNonVisible()V

    goto :goto_0

    .line 585
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;>;"
    .end local v2    # "prop":Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;
    :cond_3
    return-void
.end method

.method protected _renameProperties()V
    .locals 9

    .prologue
    .line 614
    iget-object v8, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_properties:Ljava/util/LinkedHashMap;

    invoke-virtual {v8}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 615
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;>;>;"
    const/4 v7, 0x0

    .line 616
    .local v7, "renamed":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 617
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 618
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;

    .line 619
    .local v6, "prop":Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;
    invoke-virtual {v6}, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->findNewName()Ljava/lang/String;

    move-result-object v4

    .line 620
    .local v4, "newName":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 621
    if-nez v7, :cond_1

    .line 622
    new-instance v7, Ljava/util/LinkedList;

    .end local v7    # "renamed":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;>;"
    invoke-direct {v7}, Ljava/util/LinkedList;-><init>()V

    .line 624
    .restart local v7    # "renamed":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;>;"
    :cond_1
    invoke-virtual {v6, v4}, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->withName(Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;

    move-result-object v6

    .line 625
    invoke-virtual {v7, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 626
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 631
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;>;"
    .end local v4    # "newName":Ljava/lang/String;
    .end local v6    # "prop":Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;
    :cond_2
    if-eqz v7, :cond_4

    .line 632
    invoke-virtual {v7}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;

    .line 633
    .restart local v6    # "prop":Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;
    invoke-virtual {v6}, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->getName()Ljava/lang/String;

    move-result-object v3

    .line 634
    .local v3, "name":Ljava/lang/String;
    iget-object v8, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_properties:Ljava/util/LinkedHashMap;

    invoke-virtual {v8, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;

    .line 635
    .local v5, "old":Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;
    if-nez v5, :cond_3

    .line 636
    iget-object v8, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_properties:Ljava/util/LinkedHashMap;

    invoke-virtual {v8, v3, v6}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 638
    :cond_3
    invoke-virtual {v5, v6}, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->addAll(Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;)V

    goto :goto_1

    .line 642
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "name":Ljava/lang/String;
    .end local v5    # "old":Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;
    .end local v6    # "prop":Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;
    :cond_4
    return-void
.end method

.method protected _renameUsing(Lcom/flurry/org/codehaus/jackson/map/PropertyNamingStrategy;)V
    .locals 9
    .param p1, "naming"    # Lcom/flurry/org/codehaus/jackson/map/PropertyNamingStrategy;

    .prologue
    .line 646
    iget-object v7, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_properties:Ljava/util/LinkedHashMap;

    invoke-virtual {v7}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v7

    iget-object v8, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_properties:Ljava/util/LinkedHashMap;

    invoke-virtual {v8}, Ljava/util/LinkedHashMap;->size()I

    move-result v8

    new-array v8, v8, [Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;

    invoke-interface {v7, v8}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;

    .line 647
    .local v6, "props":[Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;
    iget-object v7, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_properties:Ljava/util/LinkedHashMap;

    invoke-virtual {v7}, Ljava/util/LinkedHashMap;->clear()V

    .line 648
    move-object v0, v6

    .local v0, "arr$":[Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_8

    aget-object v5, v0, v1

    .line 649
    .local v5, "prop":Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;
    invoke-virtual {v5}, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->getName()Ljava/lang/String;

    move-result-object v3

    .line 650
    .local v3, "name":Ljava/lang/String;
    iget-boolean v7, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_forSerialization:Z

    if-eqz v7, :cond_3

    .line 651
    invoke-virtual {v5}, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->hasGetter()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 652
    iget-object v7, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_config:Lcom/flurry/org/codehaus/jackson/map/MapperConfig;

    invoke-virtual {v5}, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->getGetter()Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;

    move-result-object v8

    invoke-virtual {p1, v7, v8, v3}, Lcom/flurry/org/codehaus/jackson/map/PropertyNamingStrategy;->nameForGetterMethod(Lcom/flurry/org/codehaus/jackson/map/MapperConfig;Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 670
    :cond_0
    :goto_1
    invoke-virtual {v5}, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 671
    invoke-virtual {v5, v3}, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->withName(Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;

    move-result-object v5

    .line 676
    :cond_1
    iget-object v7, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_properties:Ljava/util/LinkedHashMap;

    invoke-virtual {v7, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;

    .line 677
    .local v4, "old":Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;
    if-nez v4, :cond_7

    .line 678
    iget-object v7, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_properties:Ljava/util/LinkedHashMap;

    invoke-virtual {v7, v3, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 648
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 653
    .end local v4    # "old":Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;
    :cond_2
    invoke-virtual {v5}, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->hasField()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 654
    iget-object v7, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_config:Lcom/flurry/org/codehaus/jackson/map/MapperConfig;

    invoke-virtual {v5}, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->getField()Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedField;

    move-result-object v8

    invoke-virtual {p1, v7, v8, v3}, Lcom/flurry/org/codehaus/jackson/map/PropertyNamingStrategy;->nameForField(Lcom/flurry/org/codehaus/jackson/map/MapperConfig;Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedField;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 657
    :cond_3
    invoke-virtual {v5}, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->hasSetter()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 658
    iget-object v7, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_config:Lcom/flurry/org/codehaus/jackson/map/MapperConfig;

    invoke-virtual {v5}, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->getSetter()Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;

    move-result-object v8

    invoke-virtual {p1, v7, v8, v3}, Lcom/flurry/org/codehaus/jackson/map/PropertyNamingStrategy;->nameForSetterMethod(Lcom/flurry/org/codehaus/jackson/map/MapperConfig;Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 659
    :cond_4
    invoke-virtual {v5}, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->hasConstructorParameter()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 660
    iget-object v7, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_config:Lcom/flurry/org/codehaus/jackson/map/MapperConfig;

    invoke-virtual {v5}, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->getConstructorParameter()Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedParameter;

    move-result-object v8

    invoke-virtual {p1, v7, v8, v3}, Lcom/flurry/org/codehaus/jackson/map/PropertyNamingStrategy;->nameForConstructorParameter(Lcom/flurry/org/codehaus/jackson/map/MapperConfig;Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedParameter;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 661
    :cond_5
    invoke-virtual {v5}, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->hasField()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 662
    iget-object v7, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_config:Lcom/flurry/org/codehaus/jackson/map/MapperConfig;

    invoke-virtual {v5}, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->getField()Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedField;

    move-result-object v8

    invoke-virtual {p1, v7, v8, v3}, Lcom/flurry/org/codehaus/jackson/map/PropertyNamingStrategy;->nameForField(Lcom/flurry/org/codehaus/jackson/map/MapperConfig;Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedField;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 663
    :cond_6
    invoke-virtual {v5}, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->hasGetter()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 667
    iget-object v7, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_config:Lcom/flurry/org/codehaus/jackson/map/MapperConfig;

    invoke-virtual {v5}, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->getGetter()Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;

    move-result-object v8

    invoke-virtual {p1, v7, v8, v3}, Lcom/flurry/org/codehaus/jackson/map/PropertyNamingStrategy;->nameForGetterMethod(Lcom/flurry/org/codehaus/jackson/map/MapperConfig;Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 680
    .restart local v4    # "old":Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;
    :cond_7
    invoke-virtual {v4, v5}, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->addAll(Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;)V

    goto :goto_2

    .line 683
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "old":Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;
    .end local v5    # "prop":Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;
    :cond_8
    return-void
.end method

.method protected _sortProperties()V
    .locals 15

    .prologue
    .line 264
    iget-object v14, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_config:Lcom/flurry/org/codehaus/jackson/map/MapperConfig;

    invoke-virtual {v14}, Lcom/flurry/org/codehaus/jackson/map/MapperConfig;->getAnnotationIntrospector()Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object v5

    .line 266
    .local v5, "intr":Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;
    iget-object v14, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_classDef:Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;

    invoke-virtual {v5, v14}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;->findSerializationSortAlphabetically(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/Boolean;

    move-result-object v1

    .line 268
    .local v1, "alpha":Ljava/lang/Boolean;
    if-nez v1, :cond_0

    .line 269
    iget-object v14, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_config:Lcom/flurry/org/codehaus/jackson/map/MapperConfig;

    invoke-virtual {v14}, Lcom/flurry/org/codehaus/jackson/map/MapperConfig;->shouldSortPropertiesAlphabetically()Z

    move-result v12

    .line 273
    .local v12, "sort":Z
    :goto_0
    iget-object v14, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_classDef:Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;

    invoke-virtual {v5, v14}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;->findSerializationPropertyOrder(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;)[Ljava/lang/String;

    move-result-object v10

    .line 276
    .local v10, "propertyOrder":[Ljava/lang/String;
    if-nez v12, :cond_1

    iget-object v14, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_creatorProperties:Ljava/util/LinkedList;

    if-nez v14, :cond_1

    if-nez v10, :cond_1

    .line 322
    :goto_1
    return-void

    .line 271
    .end local v10    # "propertyOrder":[Ljava/lang/String;
    .end local v12    # "sort":Z
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    .restart local v12    # "sort":Z
    goto :goto_0

    .line 279
    .restart local v10    # "propertyOrder":[Ljava/lang/String;
    :cond_1
    iget-object v14, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_properties:Ljava/util/LinkedHashMap;

    invoke-virtual {v14}, Ljava/util/LinkedHashMap;->size()I

    move-result v11

    .line 282
    .local v11, "size":I
    if-eqz v12, :cond_2

    .line 283
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 288
    .local v0, "all":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;>;"
    :goto_2
    iget-object v14, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_properties:Ljava/util/LinkedHashMap;

    invoke-virtual {v14}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;

    .line 289
    .local v9, "prop":Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;
    invoke-virtual {v9}, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v0, v14, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 285
    .end local v0    # "all":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v9    # "prop":Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;
    :cond_2
    new-instance v0, Ljava/util/LinkedHashMap;

    add-int v14, v11, v11

    invoke-direct {v0, v14}, Ljava/util/LinkedHashMap;-><init>(I)V

    .restart local v0    # "all":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;>;"
    goto :goto_2

    .line 291
    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_3
    new-instance v8, Ljava/util/LinkedHashMap;

    add-int v14, v11, v11

    invoke-direct {v8, v14}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 293
    .local v8, "ordered":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;>;"
    if-eqz v10, :cond_7

    .line 294
    move-object v2, v10

    .local v2, "arr$":[Ljava/lang/String;
    array-length v6, v2

    .local v6, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    move v4, v3

    .end local v3    # "i$":I
    .local v4, "i$":I
    :goto_4
    if-ge v4, v6, :cond_7

    aget-object v7, v2, v4

    .line 295
    .local v7, "name":Ljava/lang/String;
    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;

    .line 296
    .local v13, "w":Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;
    if-nez v13, :cond_5

    .line 297
    iget-object v14, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_properties:Ljava/util/LinkedHashMap;

    invoke-virtual {v14}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .end local v4    # "i$":I
    .local v3, "i$":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;

    .line 298
    .restart local v9    # "prop":Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;
    invoke-virtual {v9}, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->getInternalName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 299
    move-object v13, v9

    .line 301
    invoke-virtual {v9}, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->getName()Ljava/lang/String;

    move-result-object v7

    .line 306
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v9    # "prop":Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;
    :cond_5
    if-eqz v13, :cond_6

    .line 307
    invoke-interface {v8, v7, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    :cond_6
    add-int/lit8 v3, v4, 0x1

    .local v3, "i$":I
    move v4, v3

    .end local v3    # "i$":I
    .restart local v4    # "i$":I
    goto :goto_4

    .line 312
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v4    # "i$":I
    .end local v6    # "len$":I
    .end local v7    # "name":Ljava/lang/String;
    .end local v13    # "w":Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;
    :cond_7
    iget-object v14, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_creatorProperties:Ljava/util/LinkedList;

    if-eqz v14, :cond_8

    .line 313
    iget-object v14, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_creatorProperties:Ljava/util/LinkedList;

    invoke-virtual {v14}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;

    .line 314
    .restart local v9    # "prop":Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;
    invoke-virtual {v9}, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v8, v14, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 318
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v9    # "prop":Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;
    :cond_8
    invoke-interface {v8, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 320
    iget-object v14, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_properties:Ljava/util/LinkedHashMap;

    invoke-virtual {v14}, Ljava/util/LinkedHashMap;->clear()V

    .line 321
    iget-object v14, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_properties:Ljava/util/LinkedHashMap;

    invoke-virtual {v14, v8}, Ljava/util/LinkedHashMap;->putAll(Ljava/util/Map;)V

    goto/16 :goto_1
.end method

.method public collect()Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;
    .locals 4

    .prologue
    .line 215
    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_properties:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->clear()V

    .line 218
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_addFields()V

    .line 219
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_addMethods()V

    .line 220
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_addCreators()V

    .line 221
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_addInjectables()V

    .line 224
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_removeUnwantedProperties()V

    .line 227
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_renameProperties()V

    .line 229
    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_config:Lcom/flurry/org/codehaus/jackson/map/MapperConfig;

    invoke-virtual {v3}, Lcom/flurry/org/codehaus/jackson/map/MapperConfig;->getPropertyNamingStrategy()Lcom/flurry/org/codehaus/jackson/map/PropertyNamingStrategy;

    move-result-object v1

    .line 230
    .local v1, "naming":Lcom/flurry/org/codehaus/jackson/map/PropertyNamingStrategy;
    if-eqz v1, :cond_0

    .line 231
    invoke-virtual {p0, v1}, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_renameUsing(Lcom/flurry/org/codehaus/jackson/map/PropertyNamingStrategy;)V

    .line 238
    :cond_0
    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_properties:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;

    .line 239
    .local v2, "property":Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;
    invoke-virtual {v2}, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->trimByVisibility()V

    goto :goto_0

    .line 243
    .end local v2    # "property":Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;
    :cond_1
    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_properties:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;

    .line 244
    .restart local v2    # "property":Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;
    iget-boolean v3, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_forSerialization:Z

    invoke-virtual {v2, v3}, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->mergeAnnotations(Z)V

    goto :goto_1

    .line 248
    .end local v2    # "property":Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;
    :cond_2
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_sortProperties()V

    .line 249
    return-object p0
.end method

.method public getAnnotationIntrospector()Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_annotationIntrospector:Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    return-object v0
.end method

.method public getAnyGetterMethod()Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 165
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_anyGetters:Ljava/util/LinkedList;

    if-eqz v0, :cond_1

    .line 166
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_anyGetters:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-le v0, v3, :cond_0

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Multiple \'any-getters\' defined ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_anyGetters:Ljava/util/LinkedList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " vs "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_anyGetters:Ljava/util/LinkedList;

    invoke-virtual {v1, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->reportProblem(Ljava/lang/String;)V

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_anyGetters:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;

    .line 172
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAnySetterMethod()Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 177
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_anySetters:Ljava/util/LinkedList;

    if-eqz v0, :cond_1

    .line 178
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_anySetters:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-le v0, v3, :cond_0

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Multiple \'any-setters\' defined ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_anySetters:Ljava/util/LinkedList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " vs "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_anySetters:Ljava/util/LinkedList;

    invoke-virtual {v1, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->reportProblem(Ljava/lang/String;)V

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_anySetters:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;

    .line 184
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getClassDef()Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_classDef:Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;

    return-object v0
.end method

.method public getConfig()Lcom/flurry/org/codehaus/jackson/map/MapperConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/flurry/org/codehaus/jackson/map/MapperConfig",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 125
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_config:Lcom/flurry/org/codehaus/jackson/map/MapperConfig;

    return-object v0
.end method

.method public getIgnoredPropertyNames()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 188
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_ignoredPropertyNames:Ljava/util/Set;

    return-object v0
.end method

.method public getIgnoredPropertyNamesForDeser()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 195
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_ignoredPropertyNamesForDeser:Ljava/util/Set;

    return-object v0
.end method

.method public getInjectables()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;",
            ">;"
        }
    .end annotation

    .prologue
    .line 146
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_injectables:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method public getJsonValueMethod()Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 152
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_jsonValueGetters:Ljava/util/LinkedList;

    if-eqz v0, :cond_1

    .line 153
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_jsonValueGetters:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-le v0, v3, :cond_0

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Multiple value properties defined ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_jsonValueGetters:Ljava/util/LinkedList;

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " vs "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_jsonValueGetters:Ljava/util/LinkedList;

    invoke-virtual {v1, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->reportProblem(Ljava/lang/String;)V

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_jsonValueGetters:Ljava/util/LinkedList;

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;

    .line 160
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getProperties()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/org/codehaus/jackson/map/BeanPropertyDefinition;",
            ">;"
        }
    .end annotation

    .prologue
    .line 142
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_properties:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method protected getPropertyMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 200
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_properties:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method public getType()Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_type:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    return-object v0
.end method

.method protected reportProblem(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 692
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Problem with definition of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_classDef:Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
