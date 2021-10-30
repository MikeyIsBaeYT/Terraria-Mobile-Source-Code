.class public Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;
.super Ljava/lang/Object;
.source "MapperConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/org/codehaus/jackson/map/MapperConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Base"
.end annotation


# instance fields
.field protected final _annotationIntrospector:Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

.field protected final _classIntrospector:Lcom/flurry/org/codehaus/jackson/map/ClassIntrospector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/org/codehaus/jackson/map/ClassIntrospector",
            "<+",
            "Lcom/flurry/org/codehaus/jackson/map/BeanDescription;",
            ">;"
        }
    .end annotation
.end field

.field protected final _dateFormat:Ljava/text/DateFormat;

.field protected final _handlerInstantiator:Lcom/flurry/org/codehaus/jackson/map/HandlerInstantiator;

.field protected final _propertyNamingStrategy:Lcom/flurry/org/codehaus/jackson/map/PropertyNamingStrategy;

.field protected final _typeFactory:Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;

.field protected final _typeResolverBuilder:Lcom/flurry/org/codehaus/jackson/map/jsontype/TypeResolverBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/org/codehaus/jackson/map/jsontype/TypeResolverBuilder",
            "<*>;"
        }
    .end annotation
.end field

.field protected final _visibilityChecker:Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/flurry/org/codehaus/jackson/map/ClassIntrospector;Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker;Lcom/flurry/org/codehaus/jackson/map/PropertyNamingStrategy;Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;Lcom/flurry/org/codehaus/jackson/map/jsontype/TypeResolverBuilder;Ljava/text/DateFormat;Lcom/flurry/org/codehaus/jackson/map/HandlerInstantiator;)V
    .locals 0
    .param p2, "ai"    # Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;
    .param p4, "pns"    # Lcom/flurry/org/codehaus/jackson/map/PropertyNamingStrategy;
    .param p5, "tf"    # Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;
    .param p7, "dateFormat"    # Ljava/text/DateFormat;
    .param p8, "hi"    # Lcom/flurry/org/codehaus/jackson/map/HandlerInstantiator;
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
            "Lcom/flurry/org/codehaus/jackson/map/PropertyNamingStrategy;",
            "Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;",
            "Lcom/flurry/org/codehaus/jackson/map/jsontype/TypeResolverBuilder",
            "<*>;",
            "Ljava/text/DateFormat;",
            "Lcom/flurry/org/codehaus/jackson/map/HandlerInstantiator;",
            ")V"
        }
    .end annotation

    .prologue
    .line 882
    .local p1, "ci":Lcom/flurry/org/codehaus/jackson/map/ClassIntrospector;, "Lcom/flurry/org/codehaus/jackson/map/ClassIntrospector<+Lcom/flurry/org/codehaus/jackson/map/BeanDescription;>;"
    .local p3, "vc":Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker;, "Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker<*>;"
    .local p6, "typer":Lcom/flurry/org/codehaus/jackson/map/jsontype/TypeResolverBuilder;, "Lcom/flurry/org/codehaus/jackson/map/jsontype/TypeResolverBuilder<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 883
    iput-object p1, p0, Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;->_classIntrospector:Lcom/flurry/org/codehaus/jackson/map/ClassIntrospector;

    .line 884
    iput-object p2, p0, Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;->_annotationIntrospector:Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    .line 885
    iput-object p3, p0, Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;->_visibilityChecker:Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker;

    .line 886
    iput-object p4, p0, Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;->_propertyNamingStrategy:Lcom/flurry/org/codehaus/jackson/map/PropertyNamingStrategy;

    .line 887
    iput-object p5, p0, Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;->_typeFactory:Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;

    .line 888
    iput-object p6, p0, Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;->_typeResolverBuilder:Lcom/flurry/org/codehaus/jackson/map/jsontype/TypeResolverBuilder;

    .line 889
    iput-object p7, p0, Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;->_dateFormat:Ljava/text/DateFormat;

    .line 890
    iput-object p8, p0, Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;->_handlerInstantiator:Lcom/flurry/org/codehaus/jackson/map/HandlerInstantiator;

    .line 891
    return-void
.end method


# virtual methods
.method public getAnnotationIntrospector()Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;
    .locals 1

    .prologue
    .line 965
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;->_annotationIntrospector:Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

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
    .line 961
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;->_classIntrospector:Lcom/flurry/org/codehaus/jackson/map/ClassIntrospector;

    return-object v0
.end method

.method public getDateFormat()Ljava/text/DateFormat;
    .locals 1

    .prologue
    .line 986
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;->_dateFormat:Ljava/text/DateFormat;

    return-object v0
.end method

.method public getHandlerInstantiator()Lcom/flurry/org/codehaus/jackson/map/HandlerInstantiator;
    .locals 1

    .prologue
    .line 990
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;->_handlerInstantiator:Lcom/flurry/org/codehaus/jackson/map/HandlerInstantiator;

    return-object v0
.end method

.method public getPropertyNamingStrategy()Lcom/flurry/org/codehaus/jackson/map/PropertyNamingStrategy;
    .locals 1

    .prologue
    .line 974
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;->_propertyNamingStrategy:Lcom/flurry/org/codehaus/jackson/map/PropertyNamingStrategy;

    return-object v0
.end method

.method public getTypeFactory()Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;
    .locals 1

    .prologue
    .line 978
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;->_typeFactory:Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;

    return-object v0
.end method

.method public getTypeResolverBuilder()Lcom/flurry/org/codehaus/jackson/map/jsontype/TypeResolverBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/flurry/org/codehaus/jackson/map/jsontype/TypeResolverBuilder",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 982
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;->_typeResolverBuilder:Lcom/flurry/org/codehaus/jackson/map/jsontype/TypeResolverBuilder;

    return-object v0
.end method

.method public getVisibilityChecker()Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 970
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;->_visibilityChecker:Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker;

    return-object v0
.end method

.method public withAnnotationIntrospector(Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;)Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;
    .locals 9
    .param p1, "ai"    # Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    .prologue
    .line 905
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;

    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;->_classIntrospector:Lcom/flurry/org/codehaus/jackson/map/ClassIntrospector;

    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;->_visibilityChecker:Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker;

    iget-object v4, p0, Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;->_propertyNamingStrategy:Lcom/flurry/org/codehaus/jackson/map/PropertyNamingStrategy;

    iget-object v5, p0, Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;->_typeFactory:Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;

    iget-object v6, p0, Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;->_typeResolverBuilder:Lcom/flurry/org/codehaus/jackson/map/jsontype/TypeResolverBuilder;

    iget-object v7, p0, Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;->_dateFormat:Ljava/text/DateFormat;

    iget-object v8, p0, Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;->_handlerInstantiator:Lcom/flurry/org/codehaus/jackson/map/HandlerInstantiator;

    move-object v2, p1

    invoke-direct/range {v0 .. v8}, Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;-><init>(Lcom/flurry/org/codehaus/jackson/map/ClassIntrospector;Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker;Lcom/flurry/org/codehaus/jackson/map/PropertyNamingStrategy;Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;Lcom/flurry/org/codehaus/jackson/map/jsontype/TypeResolverBuilder;Ljava/text/DateFormat;Lcom/flurry/org/codehaus/jackson/map/HandlerInstantiator;)V

    return-object v0
.end method

.method public withAppendedAnnotationIntrospector(Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;)Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;
    .locals 1
    .param p1, "ai"    # Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    .prologue
    .line 914
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;->_annotationIntrospector:Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-static {v0, p1}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector$Pair;->create(Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;)Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;->withAnnotationIntrospector(Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;)Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;

    move-result-object v0

    return-object v0
.end method

.method public withClassIntrospector(Lcom/flurry/org/codehaus/jackson/map/ClassIntrospector;)Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/ClassIntrospector",
            "<+",
            "Lcom/flurry/org/codehaus/jackson/map/BeanDescription;",
            ">;)",
            "Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;"
        }
    .end annotation

    .prologue
    .line 900
    .local p1, "ci":Lcom/flurry/org/codehaus/jackson/map/ClassIntrospector;, "Lcom/flurry/org/codehaus/jackson/map/ClassIntrospector<+Lcom/flurry/org/codehaus/jackson/map/BeanDescription;>;"
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;

    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;->_annotationIntrospector:Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;->_visibilityChecker:Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker;

    iget-object v4, p0, Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;->_propertyNamingStrategy:Lcom/flurry/org/codehaus/jackson/map/PropertyNamingStrategy;

    iget-object v5, p0, Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;->_typeFactory:Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;

    iget-object v6, p0, Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;->_typeResolverBuilder:Lcom/flurry/org/codehaus/jackson/map/jsontype/TypeResolverBuilder;

    iget-object v7, p0, Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;->_dateFormat:Ljava/text/DateFormat;

    iget-object v8, p0, Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;->_handlerInstantiator:Lcom/flurry/org/codehaus/jackson/map/HandlerInstantiator;

    move-object v1, p1

    invoke-direct/range {v0 .. v8}, Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;-><init>(Lcom/flurry/org/codehaus/jackson/map/ClassIntrospector;Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker;Lcom/flurry/org/codehaus/jackson/map/PropertyNamingStrategy;Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;Lcom/flurry/org/codehaus/jackson/map/jsontype/TypeResolverBuilder;Ljava/text/DateFormat;Lcom/flurry/org/codehaus/jackson/map/HandlerInstantiator;)V

    return-object v0
.end method

.method public withDateFormat(Ljava/text/DateFormat;)Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;
    .locals 9
    .param p1, "df"    # Ljava/text/DateFormat;

    .prologue
    .line 945
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;

    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;->_classIntrospector:Lcom/flurry/org/codehaus/jackson/map/ClassIntrospector;

    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;->_annotationIntrospector:Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;->_visibilityChecker:Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker;

    iget-object v4, p0, Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;->_propertyNamingStrategy:Lcom/flurry/org/codehaus/jackson/map/PropertyNamingStrategy;

    iget-object v5, p0, Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;->_typeFactory:Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;

    iget-object v6, p0, Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;->_typeResolverBuilder:Lcom/flurry/org/codehaus/jackson/map/jsontype/TypeResolverBuilder;

    iget-object v8, p0, Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;->_handlerInstantiator:Lcom/flurry/org/codehaus/jackson/map/HandlerInstantiator;

    move-object v7, p1

    invoke-direct/range {v0 .. v8}, Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;-><init>(Lcom/flurry/org/codehaus/jackson/map/ClassIntrospector;Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker;Lcom/flurry/org/codehaus/jackson/map/PropertyNamingStrategy;Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;Lcom/flurry/org/codehaus/jackson/map/jsontype/TypeResolverBuilder;Ljava/text/DateFormat;Lcom/flurry/org/codehaus/jackson/map/HandlerInstantiator;)V

    return-object v0
.end method

.method public withHandlerInstantiator(Lcom/flurry/org/codehaus/jackson/map/HandlerInstantiator;)Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;
    .locals 9
    .param p1, "hi"    # Lcom/flurry/org/codehaus/jackson/map/HandlerInstantiator;

    .prologue
    .line 950
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;

    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;->_classIntrospector:Lcom/flurry/org/codehaus/jackson/map/ClassIntrospector;

    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;->_annotationIntrospector:Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;->_visibilityChecker:Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker;

    iget-object v4, p0, Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;->_propertyNamingStrategy:Lcom/flurry/org/codehaus/jackson/map/PropertyNamingStrategy;

    iget-object v5, p0, Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;->_typeFactory:Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;

    iget-object v6, p0, Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;->_typeResolverBuilder:Lcom/flurry/org/codehaus/jackson/map/jsontype/TypeResolverBuilder;

    iget-object v7, p0, Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;->_dateFormat:Ljava/text/DateFormat;

    move-object v8, p1

    invoke-direct/range {v0 .. v8}, Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;-><init>(Lcom/flurry/org/codehaus/jackson/map/ClassIntrospector;Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker;Lcom/flurry/org/codehaus/jackson/map/PropertyNamingStrategy;Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;Lcom/flurry/org/codehaus/jackson/map/jsontype/TypeResolverBuilder;Ljava/text/DateFormat;Lcom/flurry/org/codehaus/jackson/map/HandlerInstantiator;)V

    return-object v0
.end method

.method public withInsertedAnnotationIntrospector(Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;)Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;
    .locals 1
    .param p1, "ai"    # Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    .prologue
    .line 910
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;->_annotationIntrospector:Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-static {p1, v0}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector$Pair;->create(Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;)Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;->withAnnotationIntrospector(Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;)Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;

    move-result-object v0

    return-object v0
.end method

.method public withPropertyNamingStrategy(Lcom/flurry/org/codehaus/jackson/map/PropertyNamingStrategy;)Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;
    .locals 9
    .param p1, "pns"    # Lcom/flurry/org/codehaus/jackson/map/PropertyNamingStrategy;

    .prologue
    .line 930
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;

    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;->_classIntrospector:Lcom/flurry/org/codehaus/jackson/map/ClassIntrospector;

    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;->_annotationIntrospector:Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;->_visibilityChecker:Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker;

    iget-object v5, p0, Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;->_typeFactory:Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;

    iget-object v6, p0, Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;->_typeResolverBuilder:Lcom/flurry/org/codehaus/jackson/map/jsontype/TypeResolverBuilder;

    iget-object v7, p0, Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;->_dateFormat:Ljava/text/DateFormat;

    iget-object v8, p0, Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;->_handlerInstantiator:Lcom/flurry/org/codehaus/jackson/map/HandlerInstantiator;

    move-object v4, p1

    invoke-direct/range {v0 .. v8}, Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;-><init>(Lcom/flurry/org/codehaus/jackson/map/ClassIntrospector;Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker;Lcom/flurry/org/codehaus/jackson/map/PropertyNamingStrategy;Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;Lcom/flurry/org/codehaus/jackson/map/jsontype/TypeResolverBuilder;Ljava/text/DateFormat;Lcom/flurry/org/codehaus/jackson/map/HandlerInstantiator;)V

    return-object v0
.end method

.method public withTypeFactory(Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;)Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;
    .locals 9
    .param p1, "tf"    # Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;

    .prologue
    .line 935
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;

    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;->_classIntrospector:Lcom/flurry/org/codehaus/jackson/map/ClassIntrospector;

    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;->_annotationIntrospector:Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;->_visibilityChecker:Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker;

    iget-object v4, p0, Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;->_propertyNamingStrategy:Lcom/flurry/org/codehaus/jackson/map/PropertyNamingStrategy;

    iget-object v6, p0, Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;->_typeResolverBuilder:Lcom/flurry/org/codehaus/jackson/map/jsontype/TypeResolverBuilder;

    iget-object v7, p0, Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;->_dateFormat:Ljava/text/DateFormat;

    iget-object v8, p0, Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;->_handlerInstantiator:Lcom/flurry/org/codehaus/jackson/map/HandlerInstantiator;

    move-object v5, p1

    invoke-direct/range {v0 .. v8}, Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;-><init>(Lcom/flurry/org/codehaus/jackson/map/ClassIntrospector;Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker;Lcom/flurry/org/codehaus/jackson/map/PropertyNamingStrategy;Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;Lcom/flurry/org/codehaus/jackson/map/jsontype/TypeResolverBuilder;Ljava/text/DateFormat;Lcom/flurry/org/codehaus/jackson/map/HandlerInstantiator;)V

    return-object v0
.end method

.method public withTypeResolverBuilder(Lcom/flurry/org/codehaus/jackson/map/jsontype/TypeResolverBuilder;)Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/jsontype/TypeResolverBuilder",
            "<*>;)",
            "Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;"
        }
    .end annotation

    .prologue
    .line 940
    .local p1, "typer":Lcom/flurry/org/codehaus/jackson/map/jsontype/TypeResolverBuilder;, "Lcom/flurry/org/codehaus/jackson/map/jsontype/TypeResolverBuilder<*>;"
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;

    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;->_classIntrospector:Lcom/flurry/org/codehaus/jackson/map/ClassIntrospector;

    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;->_annotationIntrospector:Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;->_visibilityChecker:Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker;

    iget-object v4, p0, Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;->_propertyNamingStrategy:Lcom/flurry/org/codehaus/jackson/map/PropertyNamingStrategy;

    iget-object v5, p0, Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;->_typeFactory:Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;

    iget-object v7, p0, Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;->_dateFormat:Ljava/text/DateFormat;

    iget-object v8, p0, Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;->_handlerInstantiator:Lcom/flurry/org/codehaus/jackson/map/HandlerInstantiator;

    move-object v6, p1

    invoke-direct/range {v0 .. v8}, Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;-><init>(Lcom/flurry/org/codehaus/jackson/map/ClassIntrospector;Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker;Lcom/flurry/org/codehaus/jackson/map/PropertyNamingStrategy;Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;Lcom/flurry/org/codehaus/jackson/map/jsontype/TypeResolverBuilder;Ljava/text/DateFormat;Lcom/flurry/org/codehaus/jackson/map/HandlerInstantiator;)V

    return-object v0
.end method

.method public withVisibility(Lcom/flurry/org/codehaus/jackson/annotate/JsonMethod;Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;
    .locals 9
    .param p1, "forMethod"    # Lcom/flurry/org/codehaus/jackson/annotate/JsonMethod;
    .param p2, "visibility"    # Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    .prologue
    .line 923
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;

    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;->_classIntrospector:Lcom/flurry/org/codehaus/jackson/map/ClassIntrospector;

    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;->_annotationIntrospector:Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;->_visibilityChecker:Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker;

    invoke-interface {v3, p1, p2}, Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker;->withVisibility(Lcom/flurry/org/codehaus/jackson/annotate/JsonMethod;Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker;

    move-result-object v3

    iget-object v4, p0, Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;->_propertyNamingStrategy:Lcom/flurry/org/codehaus/jackson/map/PropertyNamingStrategy;

    iget-object v5, p0, Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;->_typeFactory:Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;

    iget-object v6, p0, Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;->_typeResolverBuilder:Lcom/flurry/org/codehaus/jackson/map/jsontype/TypeResolverBuilder;

    iget-object v7, p0, Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;->_dateFormat:Ljava/text/DateFormat;

    iget-object v8, p0, Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;->_handlerInstantiator:Lcom/flurry/org/codehaus/jackson/map/HandlerInstantiator;

    invoke-direct/range {v0 .. v8}, Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;-><init>(Lcom/flurry/org/codehaus/jackson/map/ClassIntrospector;Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker;Lcom/flurry/org/codehaus/jackson/map/PropertyNamingStrategy;Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;Lcom/flurry/org/codehaus/jackson/map/jsontype/TypeResolverBuilder;Ljava/text/DateFormat;Lcom/flurry/org/codehaus/jackson/map/HandlerInstantiator;)V

    return-object v0
.end method

.method public withVisibilityChecker(Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker;)Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker",
            "<*>;)",
            "Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;"
        }
    .end annotation

    .prologue
    .line 918
    .local p1, "vc":Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker;, "Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker<*>;"
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;

    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;->_classIntrospector:Lcom/flurry/org/codehaus/jackson/map/ClassIntrospector;

    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;->_annotationIntrospector:Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    iget-object v4, p0, Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;->_propertyNamingStrategy:Lcom/flurry/org/codehaus/jackson/map/PropertyNamingStrategy;

    iget-object v5, p0, Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;->_typeFactory:Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;

    iget-object v6, p0, Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;->_typeResolverBuilder:Lcom/flurry/org/codehaus/jackson/map/jsontype/TypeResolverBuilder;

    iget-object v7, p0, Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;->_dateFormat:Ljava/text/DateFormat;

    iget-object v8, p0, Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;->_handlerInstantiator:Lcom/flurry/org/codehaus/jackson/map/HandlerInstantiator;

    move-object v3, p1

    invoke-direct/range {v0 .. v8}, Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;-><init>(Lcom/flurry/org/codehaus/jackson/map/ClassIntrospector;Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker;Lcom/flurry/org/codehaus/jackson/map/PropertyNamingStrategy;Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;Lcom/flurry/org/codehaus/jackson/map/jsontype/TypeResolverBuilder;Ljava/text/DateFormat;Lcom/flurry/org/codehaus/jackson/map/HandlerInstantiator;)V

    return-object v0
.end method
