.class public abstract Lcom/flurry/org/codehaus/jackson/map/MapperConfig;
.super Ljava/lang/Object;
.source "MapperConfig.java"

# interfaces
.implements Lcom/flurry/org/codehaus/jackson/map/ClassIntrospector$MixInResolver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Impl;,
        Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;,
        Lcom/flurry/org/codehaus/jackson/map/MapperConfig$ConfigFeature;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/flurry/org/codehaus/jackson/map/MapperConfig",
        "<TT;>;>",
        "Ljava/lang/Object;",
        "Lcom/flurry/org/codehaus/jackson/map/ClassIntrospector$MixInResolver;"
    }
.end annotation


# static fields
.field protected static final DEFAULT_DATE_FORMAT:Ljava/text/DateFormat;


# instance fields
.field protected _base:Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;

.field protected _mixInAnnotations:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/flurry/org/codehaus/jackson/map/type/ClassKey;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field

.field protected _mixInAnnotationsShared:Z

.field protected _subtypeResolver:Lcom/flurry/org/codehaus/jackson/map/jsontype/SubtypeResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/flurry/org/codehaus/jackson/map/util/StdDateFormat;->instance:Lcom/flurry/org/codehaus/jackson/map/util/StdDateFormat;

    sput-object v0, Lcom/flurry/org/codehaus/jackson/map/MapperConfig;->DEFAULT_DATE_FORMAT:Ljava/text/DateFormat;

    return-void
.end method

.method protected constructor <init>(Lcom/flurry/org/codehaus/jackson/map/ClassIntrospector;Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker;Lcom/flurry/org/codehaus/jackson/map/jsontype/SubtypeResolver;Lcom/flurry/org/codehaus/jackson/map/PropertyNamingStrategy;Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;Lcom/flurry/org/codehaus/jackson/map/HandlerInstantiator;)V
    .locals 9
    .param p2, "ai"    # Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;
    .param p4, "str"    # Lcom/flurry/org/codehaus/jackson/map/jsontype/SubtypeResolver;
    .param p5, "pns"    # Lcom/flurry/org/codehaus/jackson/map/PropertyNamingStrategy;
    .param p6, "tf"    # Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;
    .param p7, "hi"    # Lcom/flurry/org/codehaus/jackson/map/HandlerInstantiator;
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
    .line 129
    .local p0, "this":Lcom/flurry/org/codehaus/jackson/map/MapperConfig;, "Lcom/flurry/org/codehaus/jackson/map/MapperConfig<TT;>;"
    .local p1, "ci":Lcom/flurry/org/codehaus/jackson/map/ClassIntrospector;, "Lcom/flurry/org/codehaus/jackson/map/ClassIntrospector<+Lcom/flurry/org/codehaus/jackson/map/BeanDescription;>;"
    .local p3, "vc":Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker;, "Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;

    const/4 v6, 0x0

    sget-object v7, Lcom/flurry/org/codehaus/jackson/map/MapperConfig;->DEFAULT_DATE_FORMAT:Ljava/text/DateFormat;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p5

    move-object v5, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;-><init>(Lcom/flurry/org/codehaus/jackson/map/ClassIntrospector;Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker;Lcom/flurry/org/codehaus/jackson/map/PropertyNamingStrategy;Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;Lcom/flurry/org/codehaus/jackson/map/jsontype/TypeResolverBuilder;Ljava/text/DateFormat;Lcom/flurry/org/codehaus/jackson/map/HandlerInstantiator;)V

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/MapperConfig;->_base:Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;

    .line 131
    iput-object p4, p0, Lcom/flurry/org/codehaus/jackson/map/MapperConfig;->_subtypeResolver:Lcom/flurry/org/codehaus/jackson/map/jsontype/SubtypeResolver;

    .line 133
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/org/codehaus/jackson/map/MapperConfig;->_mixInAnnotationsShared:Z

    .line 134
    return-void
.end method

.method protected constructor <init>(Lcom/flurry/org/codehaus/jackson/map/MapperConfig;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/MapperConfig",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 142
    .local p0, "this":Lcom/flurry/org/codehaus/jackson/map/MapperConfig;, "Lcom/flurry/org/codehaus/jackson/map/MapperConfig<TT;>;"
    .local p1, "src":Lcom/flurry/org/codehaus/jackson/map/MapperConfig;, "Lcom/flurry/org/codehaus/jackson/map/MapperConfig<TT;>;"
    iget-object v0, p1, Lcom/flurry/org/codehaus/jackson/map/MapperConfig;->_base:Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;

    iget-object v1, p1, Lcom/flurry/org/codehaus/jackson/map/MapperConfig;->_subtypeResolver:Lcom/flurry/org/codehaus/jackson/map/jsontype/SubtypeResolver;

    invoke-direct {p0, p1, v0, v1}, Lcom/flurry/org/codehaus/jackson/map/MapperConfig;-><init>(Lcom/flurry/org/codehaus/jackson/map/MapperConfig;Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;Lcom/flurry/org/codehaus/jackson/map/jsontype/SubtypeResolver;)V

    .line 143
    return-void
.end method

.method protected constructor <init>(Lcom/flurry/org/codehaus/jackson/map/MapperConfig;Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;Lcom/flurry/org/codehaus/jackson/map/jsontype/SubtypeResolver;)V
    .locals 1
    .param p2, "base"    # Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;
    .param p3, "str"    # Lcom/flurry/org/codehaus/jackson/map/jsontype/SubtypeResolver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/MapperConfig",
            "<TT;>;",
            "Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;",
            "Lcom/flurry/org/codehaus/jackson/map/jsontype/SubtypeResolver;",
            ")V"
        }
    .end annotation

    .prologue
    .line 149
    .local p0, "this":Lcom/flurry/org/codehaus/jackson/map/MapperConfig;, "Lcom/flurry/org/codehaus/jackson/map/MapperConfig<TT;>;"
    .local p1, "src":Lcom/flurry/org/codehaus/jackson/map/MapperConfig;, "Lcom/flurry/org/codehaus/jackson/map/MapperConfig<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    iput-object p2, p0, Lcom/flurry/org/codehaus/jackson/map/MapperConfig;->_base:Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;

    .line 151
    iput-object p3, p0, Lcom/flurry/org/codehaus/jackson/map/MapperConfig;->_subtypeResolver:Lcom/flurry/org/codehaus/jackson/map/jsontype/SubtypeResolver;

    .line 153
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/org/codehaus/jackson/map/MapperConfig;->_mixInAnnotationsShared:Z

    .line 154
    iget-object v0, p1, Lcom/flurry/org/codehaus/jackson/map/MapperConfig;->_mixInAnnotations:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/MapperConfig;->_mixInAnnotations:Ljava/util/HashMap;

    .line 155
    return-void
.end method


# virtual methods
.method public final addMixInAnnotations(Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 2
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
    .local p0, "this":Lcom/flurry/org/codehaus/jackson/map/MapperConfig;, "Lcom/flurry/org/codehaus/jackson/map/MapperConfig<TT;>;"
    .local p1, "target":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "mixinSource":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .line 498
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/MapperConfig;->_mixInAnnotations:Ljava/util/HashMap;

    if-nez v0, :cond_1

    .line 499
    iput-boolean v1, p0, Lcom/flurry/org/codehaus/jackson/map/MapperConfig;->_mixInAnnotationsShared:Z

    .line 500
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/MapperConfig;->_mixInAnnotations:Ljava/util/HashMap;

    .line 505
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/MapperConfig;->_mixInAnnotations:Ljava/util/HashMap;

    new-instance v1, Lcom/flurry/org/codehaus/jackson/map/type/ClassKey;

    invoke-direct {v1, p1}, Lcom/flurry/org/codehaus/jackson/map/type/ClassKey;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 506
    return-void

    .line 501
    :cond_1
    iget-boolean v0, p0, Lcom/flurry/org/codehaus/jackson/map/MapperConfig;->_mixInAnnotationsShared:Z

    if-eqz v0, :cond_0

    .line 502
    iput-boolean v1, p0, Lcom/flurry/org/codehaus/jackson/map/MapperConfig;->_mixInAnnotationsShared:Z

    .line 503
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/MapperConfig;->_mixInAnnotations:Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/MapperConfig;->_mixInAnnotations:Ljava/util/HashMap;

    goto :goto_0
.end method

.method public final appendAnnotationIntrospector(Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;)V
    .locals 2
    .param p1, "introspector"    # Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 418
    .local p0, "this":Lcom/flurry/org/codehaus/jackson/map/MapperConfig;, "Lcom/flurry/org/codehaus/jackson/map/MapperConfig<TT;>;"
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/MapperConfig;->_base:Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;

    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/map/MapperConfig;->getAnnotationIntrospector()Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector$Pair;->create(Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;)Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;->withAnnotationIntrospector(Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;)Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/MapperConfig;->_base:Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;

    .line 420
    return-void
.end method

.method public abstract canOverrideAccessModifiers()Z
.end method

.method public constructSpecializedType(Lcom/flurry/org/codehaus/jackson/type/JavaType;Ljava/lang/Class;)Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .locals 1
    .param p1, "baseType"    # Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/type/JavaType;",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/flurry/org/codehaus/jackson/type/JavaType;"
        }
    .end annotation

    .prologue
    .line 599
    .local p0, "this":Lcom/flurry/org/codehaus/jackson/map/MapperConfig;, "Lcom/flurry/org/codehaus/jackson/map/MapperConfig<TT;>;"
    .local p2, "subclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/map/MapperConfig;->getTypeFactory()Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;->constructSpecializedType(Lcom/flurry/org/codehaus/jackson/type/JavaType;Ljava/lang/Class;)Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v0

    return-object v0
.end method

.method public final constructType(Lcom/flurry/org/codehaus/jackson/type/TypeReference;)Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/type/TypeReference",
            "<*>;)",
            "Lcom/flurry/org/codehaus/jackson/type/JavaType;"
        }
    .end annotation

    .prologue
    .line 592
    .local p0, "this":Lcom/flurry/org/codehaus/jackson/map/MapperConfig;, "Lcom/flurry/org/codehaus/jackson/map/MapperConfig<TT;>;"
    .local p1, "valueTypeRef":Lcom/flurry/org/codehaus/jackson/type/TypeReference;, "Lcom/flurry/org/codehaus/jackson/type/TypeReference<*>;"
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/map/MapperConfig;->getTypeFactory()Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;

    move-result-object v1

    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/type/TypeReference;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    const/4 v0, 0x0

    check-cast v0, Lcom/flurry/org/codehaus/jackson/map/type/TypeBindings;

    invoke-virtual {v1, v2, v0}, Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;->constructType(Ljava/lang/reflect/Type;Lcom/flurry/org/codehaus/jackson/map/type/TypeBindings;)Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v0

    return-object v0
.end method

.method public final constructType(Ljava/lang/Class;)Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/flurry/org/codehaus/jackson/type/JavaType;"
        }
    .end annotation

    .prologue
    .line 578
    .local p0, "this":Lcom/flurry/org/codehaus/jackson/map/MapperConfig;, "Lcom/flurry/org/codehaus/jackson/map/MapperConfig<TT;>;"
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/map/MapperConfig;->getTypeFactory()Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;

    move-result-object v1

    const/4 v0, 0x0

    check-cast v0, Lcom/flurry/org/codehaus/jackson/map/type/TypeBindings;

    invoke-virtual {v1, p1, v0}, Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;->constructType(Ljava/lang/reflect/Type;Lcom/flurry/org/codehaus/jackson/map/type/TypeBindings;)Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v0

    return-object v0
.end method

.method public abstract createUnshared(Lcom/flurry/org/codehaus/jackson/map/jsontype/SubtypeResolver;)Lcom/flurry/org/codehaus/jackson/map/MapperConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/jsontype/SubtypeResolver;",
            ")TT;"
        }
    .end annotation
.end method

.method public final findMixInClassFor(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 518
    .local p0, "this":Lcom/flurry/org/codehaus/jackson/map/MapperConfig;, "Lcom/flurry/org/codehaus/jackson/map/MapperConfig<TT;>;"
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/MapperConfig;->_mixInAnnotations:Ljava/util/HashMap;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/MapperConfig;->_mixInAnnotations:Ljava/util/HashMap;

    new-instance v1, Lcom/flurry/org/codehaus/jackson/map/type/ClassKey;

    invoke-direct {v1, p1}, Lcom/flurry/org/codehaus/jackson/map/type/ClassKey;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    goto :goto_0
.end method

.method public abstract fromAnnotations(Ljava/lang/Class;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public getAnnotationIntrospector()Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;
    .locals 1

    .prologue
    .line 383
    .local p0, "this":Lcom/flurry/org/codehaus/jackson/map/MapperConfig;, "Lcom/flurry/org/codehaus/jackson/map/MapperConfig<TT;>;"
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/MapperConfig;->_base:Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;

    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;->getAnnotationIntrospector()Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object v0

    return-object v0
.end method

.method public getClassIntrospector()Lcom/flurry/org/codehaus/jackson/map/ClassIntrospector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/flurry/org/codehaus/jackson/map/ClassIntrospector",
            "<+",
            "Lcom/flurry/org/codehaus/jackson/map/BeanDescription;",
            ">;"
        }
    .end annotation

    .prologue
    .line 373
    .local p0, "this":Lcom/flurry/org/codehaus/jackson/map/MapperConfig;, "Lcom/flurry/org/codehaus/jackson/map/MapperConfig<TT;>;"
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/MapperConfig;->_base:Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;

    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;->getClassIntrospector()Lcom/flurry/org/codehaus/jackson/map/ClassIntrospector;

    move-result-object v0

    return-object v0
.end method

.method public final getDateFormat()Ljava/text/DateFormat;
    .locals 1

    .prologue
    .line 624
    .local p0, "this":Lcom/flurry/org/codehaus/jackson/map/MapperConfig;, "Lcom/flurry/org/codehaus/jackson/map/MapperConfig<TT;>;"
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/MapperConfig;->_base:Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;

    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;->getDateFormat()Ljava/text/DateFormat;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultTyper(Lcom/flurry/org/codehaus/jackson/type/JavaType;)Lcom/flurry/org/codehaus/jackson/map/jsontype/TypeResolverBuilder;
    .locals 1
    .param p1, "baseType"    # Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/type/JavaType;",
            ")",
            "Lcom/flurry/org/codehaus/jackson/map/jsontype/TypeResolverBuilder",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 543
    .local p0, "this":Lcom/flurry/org/codehaus/jackson/map/MapperConfig;, "Lcom/flurry/org/codehaus/jackson/map/MapperConfig<TT;>;"
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/MapperConfig;->_base:Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;

    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;->getTypeResolverBuilder()Lcom/flurry/org/codehaus/jackson/map/jsontype/TypeResolverBuilder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultVisibilityChecker()Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 434
    .local p0, "this":Lcom/flurry/org/codehaus/jackson/map/MapperConfig;, "Lcom/flurry/org/codehaus/jackson/map/MapperConfig<TT;>;"
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/MapperConfig;->_base:Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;

    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;->getVisibilityChecker()Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker;

    move-result-object v0

    return-object v0
.end method

.method public final getHandlerInstantiator()Lcom/flurry/org/codehaus/jackson/map/HandlerInstantiator;
    .locals 1

    .prologue
    .line 448
    .local p0, "this":Lcom/flurry/org/codehaus/jackson/map/MapperConfig;, "Lcom/flurry/org/codehaus/jackson/map/MapperConfig<TT;>;"
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/MapperConfig;->_base:Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;

    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;->getHandlerInstantiator()Lcom/flurry/org/codehaus/jackson/map/HandlerInstantiator;

    move-result-object v0

    return-object v0
.end method

.method public final getPropertyNamingStrategy()Lcom/flurry/org/codehaus/jackson/map/PropertyNamingStrategy;
    .locals 1

    .prologue
    .line 441
    .local p0, "this":Lcom/flurry/org/codehaus/jackson/map/MapperConfig;, "Lcom/flurry/org/codehaus/jackson/map/MapperConfig<TT;>;"
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/MapperConfig;->_base:Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;

    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;->getPropertyNamingStrategy()Lcom/flurry/org/codehaus/jackson/map/PropertyNamingStrategy;

    move-result-object v0

    return-object v0
.end method

.method public final getSubtypeResolver()Lcom/flurry/org/codehaus/jackson/map/jsontype/SubtypeResolver;
    .locals 1

    .prologue
    .line 554
    .local p0, "this":Lcom/flurry/org/codehaus/jackson/map/MapperConfig;, "Lcom/flurry/org/codehaus/jackson/map/MapperConfig<TT;>;"
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/MapperConfig;->_subtypeResolver:Lcom/flurry/org/codehaus/jackson/map/jsontype/SubtypeResolver;

    if-nez v0, :cond_0

    .line 555
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/jsontype/impl/StdSubtypeResolver;

    invoke-direct {v0}, Lcom/flurry/org/codehaus/jackson/map/jsontype/impl/StdSubtypeResolver;-><init>()V

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/MapperConfig;->_subtypeResolver:Lcom/flurry/org/codehaus/jackson/map/jsontype/SubtypeResolver;

    .line 557
    :cond_0
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/MapperConfig;->_subtypeResolver:Lcom/flurry/org/codehaus/jackson/map/jsontype/SubtypeResolver;

    return-object v0
.end method

.method public final getTypeFactory()Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;
    .locals 1

    .prologue
    .line 564
    .local p0, "this":Lcom/flurry/org/codehaus/jackson/map/MapperConfig;, "Lcom/flurry/org/codehaus/jackson/map/MapperConfig<TT;>;"
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/MapperConfig;->_base:Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;

    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;->getTypeFactory()Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;

    move-result-object v0

    return-object v0
.end method

.method public final insertAnnotationIntrospector(Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;)V
    .locals 2
    .param p1, "introspector"    # Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 400
    .local p0, "this":Lcom/flurry/org/codehaus/jackson/map/MapperConfig;, "Lcom/flurry/org/codehaus/jackson/map/MapperConfig<TT;>;"
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/MapperConfig;->_base:Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;

    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/map/MapperConfig;->getAnnotationIntrospector()Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector$Pair;->create(Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;)Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;->withAnnotationIntrospector(Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;)Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/MapperConfig;->_base:Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;

    .line 402
    return-void
.end method

.method public abstract introspectClassAnnotations(Lcom/flurry/org/codehaus/jackson/type/JavaType;)Lcom/flurry/org/codehaus/jackson/map/BeanDescription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<DESC:",
            "Lcom/flurry/org/codehaus/jackson/map/BeanDescription;",
            ">(",
            "Lcom/flurry/org/codehaus/jackson/type/JavaType;",
            ")TDESC;"
        }
    .end annotation
.end method

.method public introspectClassAnnotations(Ljava/lang/Class;)Lcom/flurry/org/codehaus/jackson/map/BeanDescription;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<DESC:",
            "Lcom/flurry/org/codehaus/jackson/map/BeanDescription;",
            ">(",
            "Ljava/lang/Class",
            "<*>;)TDESC;"
        }
    .end annotation

    .prologue
    .line 634
    .local p0, "this":Lcom/flurry/org/codehaus/jackson/map/MapperConfig;, "Lcom/flurry/org/codehaus/jackson/map/MapperConfig<TT;>;"
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0, p1}, Lcom/flurry/org/codehaus/jackson/map/MapperConfig;->constructType(Ljava/lang/Class;)Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flurry/org/codehaus/jackson/map/MapperConfig;->introspectClassAnnotations(Lcom/flurry/org/codehaus/jackson/type/JavaType;)Lcom/flurry/org/codehaus/jackson/map/BeanDescription;

    move-result-object v0

    return-object v0
.end method

.method public abstract introspectDirectClassAnnotations(Lcom/flurry/org/codehaus/jackson/type/JavaType;)Lcom/flurry/org/codehaus/jackson/map/BeanDescription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<DESC:",
            "Lcom/flurry/org/codehaus/jackson/map/BeanDescription;",
            ">(",
            "Lcom/flurry/org/codehaus/jackson/type/JavaType;",
            ")TDESC;"
        }
    .end annotation
.end method

.method public introspectDirectClassAnnotations(Ljava/lang/Class;)Lcom/flurry/org/codehaus/jackson/map/BeanDescription;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<DESC:",
            "Lcom/flurry/org/codehaus/jackson/map/BeanDescription;",
            ">(",
            "Ljava/lang/Class",
            "<*>;)TDESC;"
        }
    .end annotation

    .prologue
    .line 654
    .local p0, "this":Lcom/flurry/org/codehaus/jackson/map/MapperConfig;, "Lcom/flurry/org/codehaus/jackson/map/MapperConfig<TT;>;"
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0, p1}, Lcom/flurry/org/codehaus/jackson/map/MapperConfig;->constructType(Ljava/lang/Class;)Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flurry/org/codehaus/jackson/map/MapperConfig;->introspectDirectClassAnnotations(Lcom/flurry/org/codehaus/jackson/type/JavaType;)Lcom/flurry/org/codehaus/jackson/map/BeanDescription;

    move-result-object v0

    return-object v0
.end method

.method public abstract isAnnotationProcessingEnabled()Z
.end method

.method public abstract isEnabled(Lcom/flurry/org/codehaus/jackson/map/MapperConfig$ConfigFeature;)Z
.end method

.method public final mixInCount()I
    .locals 1

    .prologue
    .line 525
    .local p0, "this":Lcom/flurry/org/codehaus/jackson/map/MapperConfig;, "Lcom/flurry/org/codehaus/jackson/map/MapperConfig<TT;>;"
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/MapperConfig;->_mixInAnnotations:Ljava/util/HashMap;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/MapperConfig;->_mixInAnnotations:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    goto :goto_0
.end method

.method public final setAnnotationIntrospector(Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;)V
    .locals 1
    .param p1, "ai"    # Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 725
    .local p0, "this":Lcom/flurry/org/codehaus/jackson/map/MapperConfig;, "Lcom/flurry/org/codehaus/jackson/map/MapperConfig<TT;>;"
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/MapperConfig;->_base:Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;

    invoke-virtual {v0, p1}, Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;->withAnnotationIntrospector(Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;)Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/MapperConfig;->_base:Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;

    .line 726
    return-void
.end method

.method public setDateFormat(Ljava/text/DateFormat;)V
    .locals 1
    .param p1, "df"    # Ljava/text/DateFormat;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 744
    .local p0, "this":Lcom/flurry/org/codehaus/jackson/map/MapperConfig;, "Lcom/flurry/org/codehaus/jackson/map/MapperConfig<TT;>;"
    if-nez p1, :cond_0

    .line 745
    sget-object p1, Lcom/flurry/org/codehaus/jackson/map/MapperConfig;->DEFAULT_DATE_FORMAT:Ljava/text/DateFormat;

    .line 747
    :cond_0
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/MapperConfig;->_base:Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;

    invoke-virtual {v0, p1}, Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;->withDateFormat(Ljava/text/DateFormat;)Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/MapperConfig;->_base:Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;

    .line 748
    return-void
.end method

.method public final setMixInAnnotations(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .line 473
    .local p0, "this":Lcom/flurry/org/codehaus/jackson/map/MapperConfig;, "Lcom/flurry/org/codehaus/jackson/map/MapperConfig<TT;>;"
    .local p1, "sourceMixins":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;Ljava/lang/Class<*>;>;"
    const/4 v2, 0x0

    .line 474
    .local v2, "mixins":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/flurry/org/codehaus/jackson/map/type/ClassKey;Ljava/lang/Class<*>;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 475
    new-instance v2, Ljava/util/HashMap;

    .end local v2    # "mixins":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/flurry/org/codehaus/jackson/map/type/ClassKey;Ljava/lang/Class<*>;>;"
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    .line 476
    .restart local v2    # "mixins":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/flurry/org/codehaus/jackson/map/type/ClassKey;Ljava/lang/Class<*>;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 477
    .local v0, "en":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Class<*>;Ljava/lang/Class<*>;>;"
    new-instance v4, Lcom/flurry/org/codehaus/jackson/map/type/ClassKey;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    invoke-direct {v4, v3}, Lcom/flurry/org/codehaus/jackson/map/type/ClassKey;-><init>(Ljava/lang/Class;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 480
    .end local v0    # "en":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Class<*>;Ljava/lang/Class<*>;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/flurry/org/codehaus/jackson/map/MapperConfig;->_mixInAnnotationsShared:Z

    .line 481
    iput-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/MapperConfig;->_mixInAnnotations:Ljava/util/HashMap;

    .line 482
    return-void
.end method

.method public abstract shouldSortPropertiesAlphabetically()Z
.end method

.method public typeIdResolverInstance(Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;Ljava/lang/Class;)Lcom/flurry/org/codehaus/jackson/map/jsontype/TypeIdResolver;
    .locals 3
    .param p1, "annotated"    # Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/flurry/org/codehaus/jackson/map/jsontype/TypeIdResolver;",
            ">;)",
            "Lcom/flurry/org/codehaus/jackson/map/jsontype/TypeIdResolver;"
        }
    .end annotation

    .prologue
    .line 697
    .local p0, "this":Lcom/flurry/org/codehaus/jackson/map/MapperConfig;, "Lcom/flurry/org/codehaus/jackson/map/MapperConfig<TT;>;"
    .local p2, "resolverClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/flurry/org/codehaus/jackson/map/jsontype/TypeIdResolver;>;"
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/map/MapperConfig;->getHandlerInstantiator()Lcom/flurry/org/codehaus/jackson/map/HandlerInstantiator;

    move-result-object v1

    .line 698
    .local v1, "hi":Lcom/flurry/org/codehaus/jackson/map/HandlerInstantiator;
    if-eqz v1, :cond_0

    .line 699
    invoke-virtual {v1, p0, p1, p2}, Lcom/flurry/org/codehaus/jackson/map/HandlerInstantiator;->typeIdResolverInstance(Lcom/flurry/org/codehaus/jackson/map/MapperConfig;Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;Ljava/lang/Class;)Lcom/flurry/org/codehaus/jackson/map/jsontype/TypeIdResolver;

    move-result-object v0

    .line 700
    .local v0, "builder":Lcom/flurry/org/codehaus/jackson/map/jsontype/TypeIdResolver;
    if-eqz v0, :cond_0

    .line 704
    .end local v0    # "builder":Lcom/flurry/org/codehaus/jackson/map/jsontype/TypeIdResolver;
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/map/MapperConfig;->canOverrideAccessModifiers()Z

    move-result v2

    invoke-static {p2, v2}, Lcom/flurry/org/codehaus/jackson/map/util/ClassUtil;->createInstance(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/flurry/org/codehaus/jackson/map/jsontype/TypeIdResolver;

    move-object v0, v2

    goto :goto_0
.end method

.method public typeResolverBuilderInstance(Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;Ljava/lang/Class;)Lcom/flurry/org/codehaus/jackson/map/jsontype/TypeResolverBuilder;
    .locals 3
    .param p1, "annotated"    # Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/flurry/org/codehaus/jackson/map/jsontype/TypeResolverBuilder",
            "<*>;>;)",
            "Lcom/flurry/org/codehaus/jackson/map/jsontype/TypeResolverBuilder",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 678
    .local p0, "this":Lcom/flurry/org/codehaus/jackson/map/MapperConfig;, "Lcom/flurry/org/codehaus/jackson/map/MapperConfig<TT;>;"
    .local p2, "builderClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/flurry/org/codehaus/jackson/map/jsontype/TypeResolverBuilder<*>;>;"
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/map/MapperConfig;->getHandlerInstantiator()Lcom/flurry/org/codehaus/jackson/map/HandlerInstantiator;

    move-result-object v1

    .line 679
    .local v1, "hi":Lcom/flurry/org/codehaus/jackson/map/HandlerInstantiator;
    if-eqz v1, :cond_0

    .line 680
    invoke-virtual {v1, p0, p1, p2}, Lcom/flurry/org/codehaus/jackson/map/HandlerInstantiator;->typeResolverBuilderInstance(Lcom/flurry/org/codehaus/jackson/map/MapperConfig;Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;Ljava/lang/Class;)Lcom/flurry/org/codehaus/jackson/map/jsontype/TypeResolverBuilder;

    move-result-object v0

    .line 681
    .local v0, "builder":Lcom/flurry/org/codehaus/jackson/map/jsontype/TypeResolverBuilder;, "Lcom/flurry/org/codehaus/jackson/map/jsontype/TypeResolverBuilder<*>;"
    if-eqz v0, :cond_0

    .line 685
    .end local v0    # "builder":Lcom/flurry/org/codehaus/jackson/map/jsontype/TypeResolverBuilder;, "Lcom/flurry/org/codehaus/jackson/map/jsontype/TypeResolverBuilder<*>;"
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/map/MapperConfig;->canOverrideAccessModifiers()Z

    move-result v2

    invoke-static {p2, v2}, Lcom/flurry/org/codehaus/jackson/map/util/ClassUtil;->createInstance(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/flurry/org/codehaus/jackson/map/jsontype/TypeResolverBuilder;

    move-object v0, v2

    goto :goto_0
.end method

.method public abstract withAnnotationIntrospector(Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;)Lcom/flurry/org/codehaus/jackson/map/MapperConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract withAppendedAnnotationIntrospector(Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;)Lcom/flurry/org/codehaus/jackson/map/MapperConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract withClassIntrospector(Lcom/flurry/org/codehaus/jackson/map/ClassIntrospector;)Lcom/flurry/org/codehaus/jackson/map/MapperConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/ClassIntrospector",
            "<+",
            "Lcom/flurry/org/codehaus/jackson/map/BeanDescription;",
            ">;)TT;"
        }
    .end annotation
.end method

.method public abstract withDateFormat(Ljava/text/DateFormat;)Lcom/flurry/org/codehaus/jackson/map/MapperConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/text/DateFormat;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract withHandlerInstantiator(Lcom/flurry/org/codehaus/jackson/map/HandlerInstantiator;)Lcom/flurry/org/codehaus/jackson/map/MapperConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/HandlerInstantiator;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract withInsertedAnnotationIntrospector(Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;)Lcom/flurry/org/codehaus/jackson/map/MapperConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract withPropertyNamingStrategy(Lcom/flurry/org/codehaus/jackson/map/PropertyNamingStrategy;)Lcom/flurry/org/codehaus/jackson/map/MapperConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/PropertyNamingStrategy;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract withSubtypeResolver(Lcom/flurry/org/codehaus/jackson/map/jsontype/SubtypeResolver;)Lcom/flurry/org/codehaus/jackson/map/MapperConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/jsontype/SubtypeResolver;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract withTypeFactory(Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;)Lcom/flurry/org/codehaus/jackson/map/MapperConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract withTypeResolverBuilder(Lcom/flurry/org/codehaus/jackson/map/jsontype/TypeResolverBuilder;)Lcom/flurry/org/codehaus/jackson/map/MapperConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/jsontype/TypeResolverBuilder",
            "<*>;)TT;"
        }
    .end annotation
.end method

.method public abstract withVisibility(Lcom/flurry/org/codehaus/jackson/annotate/JsonMethod;Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)Lcom/flurry/org/codehaus/jackson/map/MapperConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/annotate/JsonMethod;",
            "Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract withVisibilityChecker(Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker;)Lcom/flurry/org/codehaus/jackson/map/MapperConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker",
            "<*>;)TT;"
        }
    .end annotation
.end method
