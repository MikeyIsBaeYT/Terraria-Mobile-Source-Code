.class abstract Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Impl;
.super Lcom/flurry/org/codehaus/jackson/map/MapperConfig;
.source "MapperConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/org/codehaus/jackson/map/MapperConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "Impl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<CFG::",
        "Lcom/flurry/org/codehaus/jackson/map/MapperConfig$ConfigFeature;",
        "T:",
        "Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Impl",
        "<TCFG;TT;>;>",
        "Lcom/flurry/org/codehaus/jackson/map/MapperConfig",
        "<TT;>;"
    }
.end annotation


# instance fields
.field protected _featureFlags:I


# direct methods
.method protected constructor <init>(Lcom/flurry/org/codehaus/jackson/map/ClassIntrospector;Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker;Lcom/flurry/org/codehaus/jackson/map/jsontype/SubtypeResolver;Lcom/flurry/org/codehaus/jackson/map/PropertyNamingStrategy;Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;Lcom/flurry/org/codehaus/jackson/map/HandlerInstantiator;I)V
    .locals 0
    .param p2, "ai"    # Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;
    .param p4, "str"    # Lcom/flurry/org/codehaus/jackson/map/jsontype/SubtypeResolver;
    .param p5, "pns"    # Lcom/flurry/org/codehaus/jackson/map/PropertyNamingStrategy;
    .param p6, "tf"    # Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;
    .param p7, "hi"    # Lcom/flurry/org/codehaus/jackson/map/HandlerInstantiator;
    .param p8, "defaultFeatures"    # I
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
            "I)V"
        }
    .end annotation

    .prologue
    .line 1025
    .local p0, "this":Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Impl;, "Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Impl<TCFG;TT;>;"
    .local p1, "ci":Lcom/flurry/org/codehaus/jackson/map/ClassIntrospector;, "Lcom/flurry/org/codehaus/jackson/map/ClassIntrospector<+Lcom/flurry/org/codehaus/jackson/map/BeanDescription;>;"
    .local p3, "vc":Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker;, "Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker<*>;"
    invoke-direct/range {p0 .. p7}, Lcom/flurry/org/codehaus/jackson/map/MapperConfig;-><init>(Lcom/flurry/org/codehaus/jackson/map/ClassIntrospector;Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker;Lcom/flurry/org/codehaus/jackson/map/jsontype/SubtypeResolver;Lcom/flurry/org/codehaus/jackson/map/PropertyNamingStrategy;Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;Lcom/flurry/org/codehaus/jackson/map/HandlerInstantiator;)V

    .line 1026
    iput p8, p0, Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Impl;->_featureFlags:I

    .line 1027
    return-void
.end method

.method protected constructor <init>(Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Impl;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Impl",
            "<TCFG;TT;>;)V"
        }
    .end annotation

    .prologue
    .line 1030
    .local p0, "this":Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Impl;, "Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Impl<TCFG;TT;>;"
    .local p1, "src":Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Impl;, "Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Impl<TCFG;TT;>;"
    invoke-direct {p0, p1}, Lcom/flurry/org/codehaus/jackson/map/MapperConfig;-><init>(Lcom/flurry/org/codehaus/jackson/map/MapperConfig;)V

    .line 1031
    iget v0, p1, Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Impl;->_featureFlags:I

    iput v0, p0, Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Impl;->_featureFlags:I

    .line 1032
    return-void
.end method

.method protected constructor <init>(Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Impl;I)V
    .locals 0
    .param p2, "features"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Impl",
            "<TCFG;TT;>;I)V"
        }
    .end annotation

    .prologue
    .line 1035
    .local p0, "this":Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Impl;, "Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Impl<TCFG;TT;>;"
    .local p1, "src":Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Impl;, "Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Impl<TCFG;TT;>;"
    invoke-direct {p0, p1}, Lcom/flurry/org/codehaus/jackson/map/MapperConfig;-><init>(Lcom/flurry/org/codehaus/jackson/map/MapperConfig;)V

    .line 1036
    iput p2, p0, Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Impl;->_featureFlags:I

    .line 1037
    return-void
.end method

.method protected constructor <init>(Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Impl;Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;Lcom/flurry/org/codehaus/jackson/map/jsontype/SubtypeResolver;)V
    .locals 1
    .param p2, "base"    # Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;
    .param p3, "str"    # Lcom/flurry/org/codehaus/jackson/map/jsontype/SubtypeResolver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Impl",
            "<TCFG;TT;>;",
            "Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;",
            "Lcom/flurry/org/codehaus/jackson/map/jsontype/SubtypeResolver;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1044
    .local p0, "this":Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Impl;, "Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Impl<TCFG;TT;>;"
    .local p1, "src":Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Impl;, "Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Impl<TCFG;TT;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/flurry/org/codehaus/jackson/map/MapperConfig;-><init>(Lcom/flurry/org/codehaus/jackson/map/MapperConfig;Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;Lcom/flurry/org/codehaus/jackson/map/jsontype/SubtypeResolver;)V

    .line 1045
    iget v0, p1, Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Impl;->_featureFlags:I

    iput v0, p0, Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Impl;->_featureFlags:I

    .line 1046
    return-void
.end method

.method static collectFeatureDefaults(Ljava/lang/Class;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F:",
            "Ljava/lang/Enum",
            "<TF;>;:",
            "Lcom/flurry/org/codehaus/jackson/map/MapperConfig$ConfigFeature;",
            ">(",
            "Ljava/lang/Class",
            "<TF;>;)I"
        }
    .end annotation

    .prologue
    .line 1054
    .local p0, "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<TF;>;"
    const/4 v1, 0x0

    .line 1055
    .local v1, "flags":I
    invoke-virtual {p0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Enum;

    .local v0, "arr$":[Ljava/lang/Enum;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v4, v0, v2

    .local v4, "value":Ljava/lang/Enum;, "TF;"
    move-object v5, v4

    .line 1056
    check-cast v5, Lcom/flurry/org/codehaus/jackson/map/MapperConfig$ConfigFeature;

    invoke-interface {v5}, Lcom/flurry/org/codehaus/jackson/map/MapperConfig$ConfigFeature;->enabledByDefault()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1057
    check-cast v4, Lcom/flurry/org/codehaus/jackson/map/MapperConfig$ConfigFeature;

    .end local v4    # "value":Ljava/lang/Enum;, "TF;"
    invoke-interface {v4}, Lcom/flurry/org/codehaus/jackson/map/MapperConfig$ConfigFeature;->getMask()I

    move-result v5

    or-int/2addr v1, v5

    .line 1055
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1060
    :cond_1
    return v1
.end method


# virtual methods
.method public disable(Lcom/flurry/org/codehaus/jackson/map/MapperConfig$ConfigFeature;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TCFG;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1132
    .local p0, "this":Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Impl;, "Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Impl<TCFG;TT;>;"
    .local p1, "f":Lcom/flurry/org/codehaus/jackson/map/MapperConfig$ConfigFeature;, "TCFG;"
    iget v0, p0, Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Impl;->_featureFlags:I

    invoke-interface {p1}, Lcom/flurry/org/codehaus/jackson/map/MapperConfig$ConfigFeature;->getMask()I

    move-result v1

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Impl;->_featureFlags:I

    .line 1133
    return-void
.end method

.method public enable(Lcom/flurry/org/codehaus/jackson/map/MapperConfig$ConfigFeature;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TCFG;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1120
    .local p0, "this":Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Impl;, "Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Impl<TCFG;TT;>;"
    .local p1, "f":Lcom/flurry/org/codehaus/jackson/map/MapperConfig$ConfigFeature;, "TCFG;"
    iget v0, p0, Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Impl;->_featureFlags:I

    invoke-interface {p1}, Lcom/flurry/org/codehaus/jackson/map/MapperConfig$ConfigFeature;->getMask()I

    move-result v1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Impl;->_featureFlags:I

    .line 1121
    return-void
.end method

.method public isEnabled(Lcom/flurry/org/codehaus/jackson/map/MapperConfig$ConfigFeature;)Z
    .locals 2
    .param p1, "f"    # Lcom/flurry/org/codehaus/jackson/map/MapperConfig$ConfigFeature;

    .prologue
    .line 1102
    .local p0, "this":Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Impl;, "Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Impl<TCFG;TT;>;"
    iget v0, p0, Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Impl;->_featureFlags:I

    invoke-interface {p1}, Lcom/flurry/org/codehaus/jackson/map/MapperConfig$ConfigFeature;->getMask()I

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

.method public set(Lcom/flurry/org/codehaus/jackson/map/MapperConfig$ConfigFeature;Z)V
    .locals 0
    .param p2, "state"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TCFG;Z)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1147
    .local p0, "this":Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Impl;, "Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Impl<TCFG;TT;>;"
    .local p1, "f":Lcom/flurry/org/codehaus/jackson/map/MapperConfig$ConfigFeature;, "TCFG;"
    if-eqz p2, :cond_0

    .line 1148
    invoke-virtual {p0, p1}, Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Impl;->enable(Lcom/flurry/org/codehaus/jackson/map/MapperConfig$ConfigFeature;)V

    .line 1152
    :goto_0
    return-void

    .line 1150
    :cond_0
    invoke-virtual {p0, p1}, Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Impl;->disable(Lcom/flurry/org/codehaus/jackson/map/MapperConfig$ConfigFeature;)V

    goto :goto_0
.end method

.method public varargs abstract with([Lcom/flurry/org/codehaus/jackson/map/MapperConfig$ConfigFeature;)Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Impl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TCFG;)TT;"
        }
    .end annotation
.end method

.method public varargs abstract without([Lcom/flurry/org/codehaus/jackson/map/MapperConfig$ConfigFeature;)Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Impl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TCFG;)TT;"
        }
    .end annotation
.end method
