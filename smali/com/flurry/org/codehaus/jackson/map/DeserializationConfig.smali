.class public Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;
.super Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Impl;
.source "DeserializationConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Impl",
        "<",
        "Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;",
        "Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;",
        ">;"
    }
.end annotation


# instance fields
.field protected final _nodeFactory:Lcom/flurry/org/codehaus/jackson/node/JsonNodeFactory;

.field protected _problemHandlers:Lcom/flurry/org/codehaus/jackson/map/util/LinkedNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/org/codehaus/jackson/map/util/LinkedNode",
            "<",
            "Lcom/flurry/org/codehaus/jackson/map/DeserializationProblemHandler;",
            ">;"
        }
    .end annotation
.end field

.field protected _sortPropertiesAlphabetically:Z


# direct methods
.method public constructor <init>(Lcom/flurry/org/codehaus/jackson/map/ClassIntrospector;Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker;Lcom/flurry/org/codehaus/jackson/map/jsontype/SubtypeResolver;Lcom/flurry/org/codehaus/jackson/map/PropertyNamingStrategy;Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;Lcom/flurry/org/codehaus/jackson/map/HandlerInstantiator;)V
    .locals 9
    .param p2, "annIntr"    # Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;
    .param p4, "subtypeResolver"    # Lcom/flurry/org/codehaus/jackson/map/jsontype/SubtypeResolver;
    .param p5, "propertyNamingStrategy"    # Lcom/flurry/org/codehaus/jackson/map/PropertyNamingStrategy;
    .param p6, "typeFactory"    # Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;
    .param p7, "handlerInstantiator"    # Lcom/flurry/org/codehaus/jackson/map/HandlerInstantiator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/ClassIntrospector",
            "<+",
            "Lcom/flurry/org/codehaus/jackson/map/BeanDescription;",
            ">;",
            "Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;",
            "Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker",
            "<*>;",
            "Lcom/flurry/org/codehaus/jackson/map/jsontype/SubtypeResolver;",
            "Lcom/flurry/org/codehaus/jackson/map/PropertyNamingStrategy;",
            "Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;",
            "Lcom/flurry/org/codehaus/jackson/map/HandlerInstantiator;",
            ")V"
        }
    .end annotation

    .prologue
    .line 406
    .local p1, "intr":Lcom/flurry/org/codehaus/jackson/map/ClassIntrospector;, "Lcom/flurry/org/codehaus/jackson/map/ClassIntrospector<+Lcom/flurry/org/codehaus/jackson/map/BeanDescription;>;"
    .local p3, "vc":Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker;, "Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker<*>;"
    const-class v0, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;

    invoke-static {v0}, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;->collectFeatureDefaults(Ljava/lang/Class;)I

    move-result v8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Impl;-><init>(Lcom/flurry/org/codehaus/jackson/map/ClassIntrospector;Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker;Lcom/flurry/org/codehaus/jackson/map/jsontype/SubtypeResolver;Lcom/flurry/org/codehaus/jackson/map/PropertyNamingStrategy;Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;Lcom/flurry/org/codehaus/jackson/map/HandlerInstantiator;I)V

    .line 408
    sget-object v0, Lcom/flurry/org/codehaus/jackson/node/JsonNodeFactory;->instance:Lcom/flurry/org/codehaus/jackson/node/JsonNodeFactory;

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;->_nodeFactory:Lcom/flurry/org/codehaus/jackson/node/JsonNodeFactory;

    .line 409
    return-void
.end method

.method protected constructor <init>(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;)V
    .locals 1
    .param p1, "src"    # Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;

    .prologue
    .line 415
    iget-object v0, p1, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;->_base:Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;

    invoke-direct {p0, p1, v0}, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;-><init>(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;)V

    .line 416
    return-void
.end method

.method protected constructor <init>(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;I)V
    .locals 1
    .param p1, "src"    # Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;
    .param p2, "featureFlags"    # I

    .prologue
    .line 459
    invoke-direct {p0, p1, p2}, Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Impl;-><init>(Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Impl;I)V

    .line 460
    iget-object v0, p1, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;->_problemHandlers:Lcom/flurry/org/codehaus/jackson/map/util/LinkedNode;

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;->_problemHandlers:Lcom/flurry/org/codehaus/jackson/map/util/LinkedNode;

    .line 461
    iget-object v0, p1, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;->_nodeFactory:Lcom/flurry/org/codehaus/jackson/node/JsonNodeFactory;

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;->_nodeFactory:Lcom/flurry/org/codehaus/jackson/node/JsonNodeFactory;

    .line 462
    iget-boolean v0, p1, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;->_sortPropertiesAlphabetically:Z

    iput-boolean v0, p0, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;->_sortPropertiesAlphabetically:Z

    .line 463
    return-void
.end method

.method protected constructor <init>(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;)V
    .locals 1
    .param p1, "src"    # Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;
    .param p2, "base"    # Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;

    .prologue
    .line 437
    iget-object v0, p1, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;->_subtypeResolver:Lcom/flurry/org/codehaus/jackson/map/jsontype/SubtypeResolver;

    invoke-direct {p0, p1, p2, v0}, Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Impl;-><init>(Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Impl;Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;Lcom/flurry/org/codehaus/jackson/map/jsontype/SubtypeResolver;)V

    .line 438
    iget-object v0, p1, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;->_problemHandlers:Lcom/flurry/org/codehaus/jackson/map/util/LinkedNode;

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;->_problemHandlers:Lcom/flurry/org/codehaus/jackson/map/util/LinkedNode;

    .line 439
    iget-object v0, p1, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;->_nodeFactory:Lcom/flurry/org/codehaus/jackson/node/JsonNodeFactory;

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;->_nodeFactory:Lcom/flurry/org/codehaus/jackson/node/JsonNodeFactory;

    .line 440
    iget-boolean v0, p1, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;->_sortPropertiesAlphabetically:Z

    iput-boolean v0, p0, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;->_sortPropertiesAlphabetically:Z

    .line 441
    return-void
.end method

.method protected constructor <init>(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/node/JsonNodeFactory;)V
    .locals 1
    .param p1, "src"    # Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;
    .param p2, "f"    # Lcom/flurry/org/codehaus/jackson/node/JsonNodeFactory;

    .prologue
    .line 448
    invoke-direct {p0, p1}, Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Impl;-><init>(Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Impl;)V

    .line 449
    iget-object v0, p1, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;->_problemHandlers:Lcom/flurry/org/codehaus/jackson/map/util/LinkedNode;

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;->_problemHandlers:Lcom/flurry/org/codehaus/jackson/map/util/LinkedNode;

    .line 450
    iput-object p2, p0, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;->_nodeFactory:Lcom/flurry/org/codehaus/jackson/node/JsonNodeFactory;

    .line 451
    iget-boolean v0, p1, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;->_sortPropertiesAlphabetically:Z

    iput-boolean v0, p0, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;->_sortPropertiesAlphabetically:Z

    .line 452
    return-void
.end method

.method private constructor <init>(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Ljava/util/HashMap;Lcom/flurry/org/codehaus/jackson/map/jsontype/SubtypeResolver;)V
    .locals 1
    .param p1, "src"    # Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;
    .param p3, "str"    # Lcom/flurry/org/codehaus/jackson/map/jsontype/SubtypeResolver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;",
            "Ljava/util/HashMap",
            "<",
            "Lcom/flurry/org/codehaus/jackson/map/type/ClassKey;",
            "Ljava/lang/Class",
            "<*>;>;",
            "Lcom/flurry/org/codehaus/jackson/map/jsontype/SubtypeResolver;",
            ")V"
        }
    .end annotation

    .prologue
    .line 427
    .local p2, "mixins":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/flurry/org/codehaus/jackson/map/type/ClassKey;Ljava/lang/Class<*>;>;"
    iget-object v0, p1, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;->_base:Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;

    invoke-direct {p0, p1, v0}, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;-><init>(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;)V

    .line 428
    iput-object p2, p0, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;->_mixInAnnotations:Ljava/util/HashMap;

    .line 429
    iput-object p3, p0, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;->_subtypeResolver:Lcom/flurry/org/codehaus/jackson/map/jsontype/SubtypeResolver;

    .line 430
    return-void
.end method


# virtual methods
.method public addHandler(Lcom/flurry/org/codehaus/jackson/map/DeserializationProblemHandler;)V
    .locals 2
    .param p1, "h"    # Lcom/flurry/org/codehaus/jackson/map/DeserializationProblemHandler;

    .prologue
    .line 815
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;->_problemHandlers:Lcom/flurry/org/codehaus/jackson/map/util/LinkedNode;

    invoke-static {v0, p1}, Lcom/flurry/org/codehaus/jackson/map/util/LinkedNode;->contains(Lcom/flurry/org/codehaus/jackson/map/util/LinkedNode;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 816
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/util/LinkedNode;

    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;->_problemHandlers:Lcom/flurry/org/codehaus/jackson/map/util/LinkedNode;

    invoke-direct {v0, p1, v1}, Lcom/flurry/org/codehaus/jackson/map/util/LinkedNode;-><init>(Ljava/lang/Object;Lcom/flurry/org/codehaus/jackson/map/util/LinkedNode;)V

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;->_problemHandlers:Lcom/flurry/org/codehaus/jackson/map/util/LinkedNode;

    .line 818
    :cond_0
    return-void
.end method

.method public canOverrideAccessModifiers()Z
    .locals 1

    .prologue
    .line 709
    sget-object v0, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;->CAN_OVERRIDE_ACCESS_MODIFIERS:Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;

    invoke-virtual {p0, v0}, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;->isEnabled(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;)Z

    move-result v0

    return v0
.end method

.method public clearHandlers()V
    .locals 1

    .prologue
    .line 828
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;->_problemHandlers:Lcom/flurry/org/codehaus/jackson/map/util/LinkedNode;

    .line 829
    return-void
.end method

.method public createUnshared(Lcom/flurry/org/codehaus/jackson/map/jsontype/SubtypeResolver;)Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;
    .locals 2
    .param p1, "subtypeResolver"    # Lcom/flurry/org/codehaus/jackson/map/jsontype/SubtypeResolver;

    .prologue
    .line 655
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;->_mixInAnnotations:Ljava/util/HashMap;

    .line 657
    .local v0, "mixins":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/flurry/org/codehaus/jackson/map/type/ClassKey;Ljava/lang/Class<*>;>;"
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;->_mixInAnnotationsShared:Z

    .line 658
    new-instance v1, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;

    invoke-direct {v1, p0, v0, p1}, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;-><init>(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Ljava/util/HashMap;Lcom/flurry/org/codehaus/jackson/map/jsontype/SubtypeResolver;)V

    return-object v1
.end method

.method public bridge synthetic createUnshared(Lcom/flurry/org/codehaus/jackson/map/jsontype/SubtypeResolver;)Lcom/flurry/org/codehaus/jackson/map/MapperConfig;
    .locals 1
    .param p1, "x0"    # Lcom/flurry/org/codehaus/jackson/map/jsontype/SubtypeResolver;

    .prologue
    .line 41
    invoke-virtual {p0, p1}, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;->createUnshared(Lcom/flurry/org/codehaus/jackson/map/jsontype/SubtypeResolver;)Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;

    move-result-object v0

    return-object v0
.end method

.method public deserializerInstance(Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;Ljava/lang/Class;)Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;
    .locals 3
    .param p1, "annotated"    # Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer",
            "<*>;>;)",
            "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 890
    .local p2, "deserClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer<*>;>;"
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;->getHandlerInstantiator()Lcom/flurry/org/codehaus/jackson/map/HandlerInstantiator;

    move-result-object v1

    .line 891
    .local v1, "hi":Lcom/flurry/org/codehaus/jackson/map/HandlerInstantiator;
    if-eqz v1, :cond_0

    .line 892
    invoke-virtual {v1, p0, p1, p2}, Lcom/flurry/org/codehaus/jackson/map/HandlerInstantiator;->deserializerInstance(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;Ljava/lang/Class;)Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;

    move-result-object v0

    .line 893
    .local v0, "deser":Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer<*>;"
    if-eqz v0, :cond_0

    .line 897
    .end local v0    # "deser":Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer<*>;"
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;->canOverrideAccessModifiers()Z

    move-result v2

    invoke-static {p2, v2}, Lcom/flurry/org/codehaus/jackson/map/util/ClassUtil;->createInstance(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;

    move-object v0, v2

    goto :goto_0
.end method

.method public disable(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;)V
    .locals 0
    .param p1, "f"    # Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 777
    invoke-super {p0, p1}, Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Impl;->disable(Lcom/flurry/org/codehaus/jackson/map/MapperConfig$ConfigFeature;)V

    .line 778
    return-void
.end method

.method public bridge synthetic disable(Lcom/flurry/org/codehaus/jackson/map/MapperConfig$ConfigFeature;)V
    .locals 0
    .param p1, "x0"    # Lcom/flurry/org/codehaus/jackson/map/MapperConfig$ConfigFeature;

    .prologue
    .line 41
    check-cast p1, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;

    .end local p1    # "x0":Lcom/flurry/org/codehaus/jackson/map/MapperConfig$ConfigFeature;
    invoke-virtual {p0, p1}, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;->disable(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;)V

    return-void
.end method

.method public enable(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;)V
    .locals 0
    .param p1, "f"    # Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 766
    invoke-super {p0, p1}, Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Impl;->enable(Lcom/flurry/org/codehaus/jackson/map/MapperConfig$ConfigFeature;)V

    .line 767
    return-void
.end method

.method public bridge synthetic enable(Lcom/flurry/org/codehaus/jackson/map/MapperConfig$ConfigFeature;)V
    .locals 0
    .param p1, "x0"    # Lcom/flurry/org/codehaus/jackson/map/MapperConfig$ConfigFeature;

    .prologue
    .line 41
    check-cast p1, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;

    .end local p1    # "x0":Lcom/flurry/org/codehaus/jackson/map/MapperConfig$ConfigFeature;
    invoke-virtual {p0, p1}, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;->enable(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;)V

    return-void
.end method

.method public fromAnnotations(Ljava/lang/Class;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 637
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;->getAnnotationIntrospector()Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object v1

    .line 638
    .local v1, "ai":Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;
    const/4 v3, 0x0

    invoke-static {p1, v1, v3}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;->construct(Ljava/lang/Class;Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;Lcom/flurry/org/codehaus/jackson/map/ClassIntrospector$MixInResolver;)Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;

    move-result-object v0

    .line 640
    .local v0, "ac":Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;->getDefaultVisibilityChecker()Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker;

    move-result-object v2

    .line 641
    .local v2, "prevVc":Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker;, "Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker<*>;"
    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;->_base:Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;

    invoke-virtual {v1, v0, v2}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;->findAutoDetectVisibility(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker;)Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;->withVisibilityChecker(Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker;)Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;

    move-result-object v3

    iput-object v3, p0, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;->_base:Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;

    .line 642
    return-void
.end method

.method public getAnnotationIntrospector()Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;
    .locals 1

    .prologue
    .line 671
    sget-object v0, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;->USE_ANNOTATIONS:Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;

    invoke-virtual {p0, v0}, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;->isEnabled(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 672
    invoke-super {p0}, Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Impl;->getAnnotationIntrospector()Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object v0

    .line 674
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/flurry/org/codehaus/jackson/map/introspect/NopAnnotationIntrospector;->instance:Lcom/flurry/org/codehaus/jackson/map/introspect/NopAnnotationIntrospector;

    goto :goto_0
.end method

.method public getBase64Variant()Lcom/flurry/org/codehaus/jackson/Base64Variant;
    .locals 1

    .prologue
    .line 844
    invoke-static {}, Lcom/flurry/org/codehaus/jackson/Base64Variants;->getDefaultVariant()Lcom/flurry/org/codehaus/jackson/Base64Variant;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultVisibilityChecker()Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 720
    invoke-super {p0}, Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Impl;->getDefaultVisibilityChecker()Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker;

    move-result-object v0

    .line 721
    .local v0, "vchecker":Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker;, "Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker<*>;"
    sget-object v1, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;->AUTO_DETECT_SETTERS:Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;

    invoke-virtual {p0, v1}, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;->isEnabled(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 722
    sget-object v1, Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->NONE:Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    invoke-interface {v0, v1}, Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker;->withSetterVisibility(Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker;

    move-result-object v0

    .line 724
    :cond_0
    sget-object v1, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;->AUTO_DETECT_CREATORS:Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;

    invoke-virtual {p0, v1}, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;->isEnabled(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 725
    sget-object v1, Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->NONE:Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    invoke-interface {v0, v1}, Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker;->withCreatorVisibility(Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker;

    move-result-object v0

    .line 727
    :cond_1
    sget-object v1, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;->AUTO_DETECT_FIELDS:Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;

    invoke-virtual {p0, v1}, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;->isEnabled(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 728
    sget-object v1, Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->NONE:Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    invoke-interface {v0, v1}, Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker;->withFieldVisibility(Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker;

    move-result-object v0

    .line 730
    :cond_2
    return-object v0
.end method

.method public final getNodeFactory()Lcom/flurry/org/codehaus/jackson/node/JsonNodeFactory;
    .locals 1

    .prologue
    .line 851
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;->_nodeFactory:Lcom/flurry/org/codehaus/jackson/node/JsonNodeFactory;

    return-object v0
.end method

.method public getProblemHandlers()Lcom/flurry/org/codehaus/jackson/map/util/LinkedNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/flurry/org/codehaus/jackson/map/util/LinkedNode",
            "<",
            "Lcom/flurry/org/codehaus/jackson/map/DeserializationProblemHandler;",
            ">;"
        }
    .end annotation

    .prologue
    .line 803
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;->_problemHandlers:Lcom/flurry/org/codehaus/jackson/map/util/LinkedNode;

    return-object v0
.end method

.method public introspect(Lcom/flurry/org/codehaus/jackson/type/JavaType;)Lcom/flurry/org/codehaus/jackson/map/BeanDescription;
    .locals 1
    .param p1, "type"    # Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/flurry/org/codehaus/jackson/map/BeanDescription;",
            ">(",
            "Lcom/flurry/org/codehaus/jackson/type/JavaType;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 868
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;->getClassIntrospector()Lcom/flurry/org/codehaus/jackson/map/ClassIntrospector;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p0}, Lcom/flurry/org/codehaus/jackson/map/ClassIntrospector;->forDeserialization(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/ClassIntrospector$MixInResolver;)Lcom/flurry/org/codehaus/jackson/map/BeanDescription;

    move-result-object v0

    return-object v0
.end method

.method public introspectClassAnnotations(Lcom/flurry/org/codehaus/jackson/type/JavaType;)Lcom/flurry/org/codehaus/jackson/map/BeanDescription;
    .locals 1
    .param p1, "type"    # Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/flurry/org/codehaus/jackson/map/BeanDescription;",
            ">(",
            "Lcom/flurry/org/codehaus/jackson/type/JavaType;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 686
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;->getClassIntrospector()Lcom/flurry/org/codehaus/jackson/map/ClassIntrospector;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p0}, Lcom/flurry/org/codehaus/jackson/map/ClassIntrospector;->forClassAnnotations(Lcom/flurry/org/codehaus/jackson/map/MapperConfig;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/ClassIntrospector$MixInResolver;)Lcom/flurry/org/codehaus/jackson/map/BeanDescription;

    move-result-object v0

    return-object v0
.end method

.method public introspectDirectClassAnnotations(Lcom/flurry/org/codehaus/jackson/type/JavaType;)Lcom/flurry/org/codehaus/jackson/map/BeanDescription;
    .locals 1
    .param p1, "type"    # Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/flurry/org/codehaus/jackson/map/BeanDescription;",
            ">(",
            "Lcom/flurry/org/codehaus/jackson/type/JavaType;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 699
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;->getClassIntrospector()Lcom/flurry/org/codehaus/jackson/map/ClassIntrospector;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p0}, Lcom/flurry/org/codehaus/jackson/map/ClassIntrospector;->forDirectClassAnnotations(Lcom/flurry/org/codehaus/jackson/map/MapperConfig;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/ClassIntrospector$MixInResolver;)Lcom/flurry/org/codehaus/jackson/map/BeanDescription;

    move-result-object v0

    return-object v0
.end method

.method public introspectForCreation(Lcom/flurry/org/codehaus/jackson/type/JavaType;)Lcom/flurry/org/codehaus/jackson/map/BeanDescription;
    .locals 1
    .param p1, "type"    # Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/flurry/org/codehaus/jackson/map/BeanDescription;",
            ">(",
            "Lcom/flurry/org/codehaus/jackson/type/JavaType;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 877
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;->getClassIntrospector()Lcom/flurry/org/codehaus/jackson/map/ClassIntrospector;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p0}, Lcom/flurry/org/codehaus/jackson/map/ClassIntrospector;->forCreation(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/ClassIntrospector$MixInResolver;)Lcom/flurry/org/codehaus/jackson/map/BeanDescription;

    move-result-object v0

    return-object v0
.end method

.method public isAnnotationProcessingEnabled()Z
    .locals 1

    .prologue
    .line 704
    sget-object v0, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;->USE_ANNOTATIONS:Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;

    invoke-virtual {p0, v0}, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;->isEnabled(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;)Z

    move-result v0

    return v0
.end method

.method public isEnabled(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;)Z
    .locals 2
    .param p1, "f"    # Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;

    .prologue
    .line 755
    iget v0, p0, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;->_featureFlags:I

    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;->getMask()I

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic isEnabled(Lcom/flurry/org/codehaus/jackson/map/MapperConfig$ConfigFeature;)Z
    .locals 1
    .param p1, "x0"    # Lcom/flurry/org/codehaus/jackson/map/MapperConfig$ConfigFeature;

    .prologue
    .line 41
    invoke-super {p0, p1}, Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Impl;->isEnabled(Lcom/flurry/org/codehaus/jackson/map/MapperConfig$ConfigFeature;)Z

    move-result v0

    return v0
.end method

.method public keyDeserializerInstance(Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;Ljava/lang/Class;)Lcom/flurry/org/codehaus/jackson/map/KeyDeserializer;
    .locals 3
    .param p1, "annotated"    # Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/flurry/org/codehaus/jackson/map/KeyDeserializer;",
            ">;)",
            "Lcom/flurry/org/codehaus/jackson/map/KeyDeserializer;"
        }
    .end annotation

    .prologue
    .line 903
    .local p2, "keyDeserClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/flurry/org/codehaus/jackson/map/KeyDeserializer;>;"
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;->getHandlerInstantiator()Lcom/flurry/org/codehaus/jackson/map/HandlerInstantiator;

    move-result-object v0

    .line 904
    .local v0, "hi":Lcom/flurry/org/codehaus/jackson/map/HandlerInstantiator;
    if-eqz v0, :cond_0

    .line 905
    invoke-virtual {v0, p0, p1, p2}, Lcom/flurry/org/codehaus/jackson/map/HandlerInstantiator;->keyDeserializerInstance(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;Ljava/lang/Class;)Lcom/flurry/org/codehaus/jackson/map/KeyDeserializer;

    move-result-object v1

    .line 906
    .local v1, "keyDeser":Lcom/flurry/org/codehaus/jackson/map/KeyDeserializer;
    if-eqz v1, :cond_0

    .line 910
    .end local v1    # "keyDeser":Lcom/flurry/org/codehaus/jackson/map/KeyDeserializer;
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;->canOverrideAccessModifiers()Z

    move-result v2

    invoke-static {p2, v2}, Lcom/flurry/org/codehaus/jackson/map/util/ClassUtil;->createInstance(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/flurry/org/codehaus/jackson/map/KeyDeserializer;

    move-object v1, v2

    goto :goto_0
.end method

.method protected passSerializationFeatures(I)Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;
    .locals 1
    .param p1, "serializationFeatureFlags"    # I

    .prologue
    .line 474
    sget-object v0, Lcom/flurry/org/codehaus/jackson/map/SerializationConfig$Feature;->SORT_PROPERTIES_ALPHABETICALLY:Lcom/flurry/org/codehaus/jackson/map/SerializationConfig$Feature;

    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/map/SerializationConfig$Feature;->getMask()I

    move-result v0

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;->_sortPropertiesAlphabetically:Z

    .line 476
    return-object p0

    .line 474
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public set(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;Z)V
    .locals 0
    .param p1, "f"    # Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;
    .param p2, "state"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 788
    invoke-super {p0, p1, p2}, Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Impl;->set(Lcom/flurry/org/codehaus/jackson/map/MapperConfig$ConfigFeature;Z)V

    .line 789
    return-void
.end method

.method public bridge synthetic set(Lcom/flurry/org/codehaus/jackson/map/MapperConfig$ConfigFeature;Z)V
    .locals 0
    .param p1, "x0"    # Lcom/flurry/org/codehaus/jackson/map/MapperConfig$ConfigFeature;
    .param p2, "x1"    # Z

    .prologue
    .line 41
    check-cast p1, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;

    .end local p1    # "x0":Lcom/flurry/org/codehaus/jackson/map/MapperConfig$ConfigFeature;
    invoke-virtual {p0, p1, p2}, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;->set(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;Z)V

    return-void
.end method

.method public shouldSortPropertiesAlphabetically()Z
    .locals 1

    .prologue
    .line 714
    iget-boolean v0, p0, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;->_sortPropertiesAlphabetically:Z

    return v0
.end method

.method public valueInstantiatorInstance(Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;Ljava/lang/Class;)Lcom/flurry/org/codehaus/jackson/map/deser/ValueInstantiator;
    .locals 3
    .param p1, "annotated"    # Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/flurry/org/codehaus/jackson/map/deser/ValueInstantiator;",
            ">;)",
            "Lcom/flurry/org/codehaus/jackson/map/deser/ValueInstantiator;"
        }
    .end annotation

    .prologue
    .line 916
    .local p2, "instClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/flurry/org/codehaus/jackson/map/deser/ValueInstantiator;>;"
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;->getHandlerInstantiator()Lcom/flurry/org/codehaus/jackson/map/HandlerInstantiator;

    move-result-object v0

    .line 917
    .local v0, "hi":Lcom/flurry/org/codehaus/jackson/map/HandlerInstantiator;
    if-eqz v0, :cond_0

    .line 918
    invoke-virtual {v0, p0, p1, p2}, Lcom/flurry/org/codehaus/jackson/map/HandlerInstantiator;->valueInstantiatorInstance(Lcom/flurry/org/codehaus/jackson/map/MapperConfig;Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;Ljava/lang/Class;)Lcom/flurry/org/codehaus/jackson/map/deser/ValueInstantiator;

    move-result-object v1

    .line 919
    .local v1, "inst":Lcom/flurry/org/codehaus/jackson/map/deser/ValueInstantiator;
    if-eqz v1, :cond_0

    .line 923
    .end local v1    # "inst":Lcom/flurry/org/codehaus/jackson/map/deser/ValueInstantiator;
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;->canOverrideAccessModifiers()Z

    move-result v2

    invoke-static {p2, v2}, Lcom/flurry/org/codehaus/jackson/map/util/ClassUtil;->createInstance(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/flurry/org/codehaus/jackson/map/deser/ValueInstantiator;

    move-object v1, v2

    goto :goto_0
.end method

.method public varargs with([Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;)Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;
    .locals 6
    .param p1, "features"    # [Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;

    .prologue
    .line 573
    iget v2, p0, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;->_featureFlags:I

    .line 574
    .local v2, "flags":I
    move-object v0, p1

    .local v0, "arr$":[Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 575
    .local v1, "f":Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;
    invoke-virtual {v1}, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;->getMask()I

    move-result v5

    or-int/2addr v2, v5

    .line 574
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 577
    .end local v1    # "f":Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;
    :cond_0
    new-instance v5, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;

    invoke-direct {v5, p0, v2}, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;-><init>(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;I)V

    return-object v5
.end method

.method public bridge synthetic with([Lcom/flurry/org/codehaus/jackson/map/MapperConfig$ConfigFeature;)Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Impl;
    .locals 1
    .param p1, "x0"    # [Lcom/flurry/org/codehaus/jackson/map/MapperConfig$ConfigFeature;

    .prologue
    .line 41
    check-cast p1, [Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;

    .end local p1    # "x0":[Lcom/flurry/org/codehaus/jackson/map/MapperConfig$ConfigFeature;
    invoke-virtual {p0, p1}, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;->with([Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;)Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;

    move-result-object v0

    return-object v0
.end method

.method public withAnnotationIntrospector(Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;)Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;
    .locals 2
    .param p1, "ai"    # Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    .prologue
    .line 492
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;

    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;->_base:Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;

    invoke-virtual {v1, p1}, Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;->withAnnotationIntrospector(Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;)Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;-><init>(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;)V

    return-object v0
.end method

.method public bridge synthetic withAnnotationIntrospector(Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;)Lcom/flurry/org/codehaus/jackson/map/MapperConfig;
    .locals 1
    .param p1, "x0"    # Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    .prologue
    .line 41
    invoke-virtual {p0, p1}, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;->withAnnotationIntrospector(Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;)Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;

    move-result-object v0

    return-object v0
.end method

.method public withAppendedAnnotationIntrospector(Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;)Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;
    .locals 2
    .param p1, "ai"    # Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    .prologue
    .line 545
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;

    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;->_base:Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;

    invoke-virtual {v1, p1}, Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;->withAppendedAnnotationIntrospector(Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;)Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;-><init>(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;)V

    return-object v0
.end method

.method public bridge synthetic withAppendedAnnotationIntrospector(Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;)Lcom/flurry/org/codehaus/jackson/map/MapperConfig;
    .locals 1
    .param p1, "x0"    # Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    .prologue
    .line 41
    invoke-virtual {p0, p1}, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;->withAppendedAnnotationIntrospector(Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;)Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;

    move-result-object v0

    return-object v0
.end method

.method public withClassIntrospector(Lcom/flurry/org/codehaus/jackson/map/ClassIntrospector;)Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/ClassIntrospector",
            "<+",
            "Lcom/flurry/org/codehaus/jackson/map/BeanDescription;",
            ">;)",
            "Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;"
        }
    .end annotation

    .prologue
    .line 487
    .local p1, "ci":Lcom/flurry/org/codehaus/jackson/map/ClassIntrospector;, "Lcom/flurry/org/codehaus/jackson/map/ClassIntrospector<+Lcom/flurry/org/codehaus/jackson/map/BeanDescription;>;"
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;

    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;->_base:Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;

    invoke-virtual {v1, p1}, Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;->withClassIntrospector(Lcom/flurry/org/codehaus/jackson/map/ClassIntrospector;)Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;-><init>(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;)V

    return-object v0
.end method

.method public bridge synthetic withClassIntrospector(Lcom/flurry/org/codehaus/jackson/map/ClassIntrospector;)Lcom/flurry/org/codehaus/jackson/map/MapperConfig;
    .locals 1
    .param p1, "x0"    # Lcom/flurry/org/codehaus/jackson/map/ClassIntrospector;

    .prologue
    .line 41
    invoke-virtual {p0, p1}, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;->withClassIntrospector(Lcom/flurry/org/codehaus/jackson/map/ClassIntrospector;)Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;

    move-result-object v0

    return-object v0
.end method

.method public withDateFormat(Ljava/text/DateFormat;)Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;
    .locals 2
    .param p1, "df"    # Ljava/text/DateFormat;

    .prologue
    .line 530
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;->_base:Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;

    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;->getDateFormat()Ljava/text/DateFormat;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .end local p0    # "this":Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;
    :cond_0
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;

    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;->_base:Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;

    invoke-virtual {v1, p1}, Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;->withDateFormat(Ljava/text/DateFormat;)Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;-><init>(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public bridge synthetic withDateFormat(Ljava/text/DateFormat;)Lcom/flurry/org/codehaus/jackson/map/MapperConfig;
    .locals 1
    .param p1, "x0"    # Ljava/text/DateFormat;

    .prologue
    .line 41
    invoke-virtual {p0, p1}, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;->withDateFormat(Ljava/text/DateFormat;)Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;

    move-result-object v0

    return-object v0
.end method

.method public withHandlerInstantiator(Lcom/flurry/org/codehaus/jackson/map/HandlerInstantiator;)Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;
    .locals 2
    .param p1, "hi"    # Lcom/flurry/org/codehaus/jackson/map/HandlerInstantiator;

    .prologue
    .line 535
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;->_base:Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;

    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;->getHandlerInstantiator()Lcom/flurry/org/codehaus/jackson/map/HandlerInstantiator;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .end local p0    # "this":Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;
    :cond_0
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;

    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;->_base:Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;

    invoke-virtual {v1, p1}, Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;->withHandlerInstantiator(Lcom/flurry/org/codehaus/jackson/map/HandlerInstantiator;)Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;-><init>(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public bridge synthetic withHandlerInstantiator(Lcom/flurry/org/codehaus/jackson/map/HandlerInstantiator;)Lcom/flurry/org/codehaus/jackson/map/MapperConfig;
    .locals 1
    .param p1, "x0"    # Lcom/flurry/org/codehaus/jackson/map/HandlerInstantiator;

    .prologue
    .line 41
    invoke-virtual {p0, p1}, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;->withHandlerInstantiator(Lcom/flurry/org/codehaus/jackson/map/HandlerInstantiator;)Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;

    move-result-object v0

    return-object v0
.end method

.method public withInsertedAnnotationIntrospector(Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;)Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;
    .locals 2
    .param p1, "ai"    # Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    .prologue
    .line 540
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;

    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;->_base:Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;

    invoke-virtual {v1, p1}, Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;->withInsertedAnnotationIntrospector(Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;)Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;-><init>(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;)V

    return-object v0
.end method

.method public bridge synthetic withInsertedAnnotationIntrospector(Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;)Lcom/flurry/org/codehaus/jackson/map/MapperConfig;
    .locals 1
    .param p1, "x0"    # Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    .prologue
    .line 41
    invoke-virtual {p0, p1}, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;->withInsertedAnnotationIntrospector(Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;)Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;

    move-result-object v0

    return-object v0
.end method

.method public withNodeFactory(Lcom/flurry/org/codehaus/jackson/node/JsonNodeFactory;)Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;
    .locals 1
    .param p1, "f"    # Lcom/flurry/org/codehaus/jackson/node/JsonNodeFactory;

    .prologue
    .line 561
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;

    invoke-direct {v0, p0, p1}, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;-><init>(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/node/JsonNodeFactory;)V

    return-object v0
.end method

.method public withPropertyNamingStrategy(Lcom/flurry/org/codehaus/jackson/map/PropertyNamingStrategy;)Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;
    .locals 2
    .param p1, "pns"    # Lcom/flurry/org/codehaus/jackson/map/PropertyNamingStrategy;

    .prologue
    .line 520
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;

    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;->_base:Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;

    invoke-virtual {v1, p1}, Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;->withPropertyNamingStrategy(Lcom/flurry/org/codehaus/jackson/map/PropertyNamingStrategy;)Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;-><init>(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;)V

    return-object v0
.end method

.method public bridge synthetic withPropertyNamingStrategy(Lcom/flurry/org/codehaus/jackson/map/PropertyNamingStrategy;)Lcom/flurry/org/codehaus/jackson/map/MapperConfig;
    .locals 1
    .param p1, "x0"    # Lcom/flurry/org/codehaus/jackson/map/PropertyNamingStrategy;

    .prologue
    .line 41
    invoke-virtual {p0, p1}, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;->withPropertyNamingStrategy(Lcom/flurry/org/codehaus/jackson/map/PropertyNamingStrategy;)Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;

    move-result-object v0

    return-object v0
.end method

.method public withSubtypeResolver(Lcom/flurry/org/codehaus/jackson/map/jsontype/SubtypeResolver;)Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;
    .locals 1
    .param p1, "str"    # Lcom/flurry/org/codehaus/jackson/map/jsontype/SubtypeResolver;

    .prologue
    .line 513
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;

    invoke-direct {v0, p0}, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;-><init>(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;)V

    .line 514
    .local v0, "cfg":Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;
    iput-object p1, v0, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;->_subtypeResolver:Lcom/flurry/org/codehaus/jackson/map/jsontype/SubtypeResolver;

    .line 515
    return-object v0
.end method

.method public bridge synthetic withSubtypeResolver(Lcom/flurry/org/codehaus/jackson/map/jsontype/SubtypeResolver;)Lcom/flurry/org/codehaus/jackson/map/MapperConfig;
    .locals 1
    .param p1, "x0"    # Lcom/flurry/org/codehaus/jackson/map/jsontype/SubtypeResolver;

    .prologue
    .line 41
    invoke-virtual {p0, p1}, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;->withSubtypeResolver(Lcom/flurry/org/codehaus/jackson/map/jsontype/SubtypeResolver;)Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;

    move-result-object v0

    return-object v0
.end method

.method public withTypeFactory(Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;)Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;
    .locals 2
    .param p1, "tf"    # Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;

    .prologue
    .line 525
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;->_base:Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;

    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;->getTypeFactory()Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .end local p0    # "this":Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;
    :cond_0
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;

    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;->_base:Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;

    invoke-virtual {v1, p1}, Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;->withTypeFactory(Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;)Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;-><init>(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public bridge synthetic withTypeFactory(Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;)Lcom/flurry/org/codehaus/jackson/map/MapperConfig;
    .locals 1
    .param p1, "x0"    # Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;

    .prologue
    .line 41
    invoke-virtual {p0, p1}, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;->withTypeFactory(Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;)Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;

    move-result-object v0

    return-object v0
.end method

.method public withTypeResolverBuilder(Lcom/flurry/org/codehaus/jackson/map/jsontype/TypeResolverBuilder;)Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/jsontype/TypeResolverBuilder",
            "<*>;)",
            "Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;"
        }
    .end annotation

    .prologue
    .line 507
    .local p1, "trb":Lcom/flurry/org/codehaus/jackson/map/jsontype/TypeResolverBuilder;, "Lcom/flurry/org/codehaus/jackson/map/jsontype/TypeResolverBuilder<*>;"
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;

    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;->_base:Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;

    invoke-virtual {v1, p1}, Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;->withTypeResolverBuilder(Lcom/flurry/org/codehaus/jackson/map/jsontype/TypeResolverBuilder;)Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;-><init>(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;)V

    return-object v0
.end method

.method public bridge synthetic withTypeResolverBuilder(Lcom/flurry/org/codehaus/jackson/map/jsontype/TypeResolverBuilder;)Lcom/flurry/org/codehaus/jackson/map/MapperConfig;
    .locals 1
    .param p1, "x0"    # Lcom/flurry/org/codehaus/jackson/map/jsontype/TypeResolverBuilder;

    .prologue
    .line 41
    invoke-virtual {p0, p1}, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;->withTypeResolverBuilder(Lcom/flurry/org/codehaus/jackson/map/jsontype/TypeResolverBuilder;)Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;

    move-result-object v0

    return-object v0
.end method

.method public withVisibility(Lcom/flurry/org/codehaus/jackson/annotate/JsonMethod;Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;
    .locals 2
    .param p1, "forMethod"    # Lcom/flurry/org/codehaus/jackson/annotate/JsonMethod;
    .param p2, "visibility"    # Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    .prologue
    .line 502
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;

    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;->_base:Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;

    invoke-virtual {v1, p1, p2}, Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;->withVisibility(Lcom/flurry/org/codehaus/jackson/annotate/JsonMethod;Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;-><init>(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;)V

    return-object v0
.end method

.method public bridge synthetic withVisibility(Lcom/flurry/org/codehaus/jackson/annotate/JsonMethod;Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)Lcom/flurry/org/codehaus/jackson/map/MapperConfig;
    .locals 1
    .param p1, "x0"    # Lcom/flurry/org/codehaus/jackson/annotate/JsonMethod;
    .param p2, "x1"    # Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    .prologue
    .line 41
    invoke-virtual {p0, p1, p2}, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;->withVisibility(Lcom/flurry/org/codehaus/jackson/annotate/JsonMethod;Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;

    move-result-object v0

    return-object v0
.end method

.method public withVisibilityChecker(Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker;)Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker",
            "<*>;)",
            "Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;"
        }
    .end annotation

    .prologue
    .line 497
    .local p1, "vc":Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker;, "Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker<*>;"
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;

    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;->_base:Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;

    invoke-virtual {v1, p1}, Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;->withVisibilityChecker(Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker;)Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;-><init>(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;)V

    return-object v0
.end method

.method public bridge synthetic withVisibilityChecker(Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker;)Lcom/flurry/org/codehaus/jackson/map/MapperConfig;
    .locals 1
    .param p1, "x0"    # Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker;

    .prologue
    .line 41
    invoke-virtual {p0, p1}, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;->withVisibilityChecker(Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker;)Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;

    move-result-object v0

    return-object v0
.end method

.method public varargs without([Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;)Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;
    .locals 6
    .param p1, "features"    # [Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;

    .prologue
    .line 589
    iget v2, p0, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;->_featureFlags:I

    .line 590
    .local v2, "flags":I
    move-object v0, p1

    .local v0, "arr$":[Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 591
    .local v1, "f":Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;
    invoke-virtual {v1}, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;->getMask()I

    move-result v5

    xor-int/lit8 v5, v5, -0x1

    and-int/2addr v2, v5

    .line 590
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 593
    .end local v1    # "f":Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;
    :cond_0
    new-instance v5, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;

    invoke-direct {v5, p0, v2}, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;-><init>(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;I)V

    return-object v5
.end method

.method public bridge synthetic without([Lcom/flurry/org/codehaus/jackson/map/MapperConfig$ConfigFeature;)Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Impl;
    .locals 1
    .param p1, "x0"    # [Lcom/flurry/org/codehaus/jackson/map/MapperConfig$ConfigFeature;

    .prologue
    .line 41
    check-cast p1, [Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;

    .end local p1    # "x0":[Lcom/flurry/org/codehaus/jackson/map/MapperConfig$ConfigFeature;
    invoke-virtual {p0, p1}, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;->without([Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;)Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;

    move-result-object v0

    return-object v0
.end method
