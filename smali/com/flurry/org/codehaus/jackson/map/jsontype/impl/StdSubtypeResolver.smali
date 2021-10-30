.class public Lcom/flurry/org/codehaus/jackson/map/jsontype/impl/StdSubtypeResolver;
.super Lcom/flurry/org/codehaus/jackson/map/jsontype/SubtypeResolver;
.source "StdSubtypeResolver.java"


# instance fields
.field protected _registeredSubtypes:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet",
            "<",
            "Lcom/flurry/org/codehaus/jackson/map/jsontype/NamedType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/flurry/org/codehaus/jackson/map/jsontype/SubtypeResolver;-><init>()V

    return-void
.end method


# virtual methods
.method protected _collectAndResolve(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;Lcom/flurry/org/codehaus/jackson/map/jsontype/NamedType;Lcom/flurry/org/codehaus/jackson/map/MapperConfig;Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;Ljava/util/HashMap;)V
    .locals 15
    .param p1, "annotatedType"    # Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;
    .param p2, "namedType"    # Lcom/flurry/org/codehaus/jackson/map/jsontype/NamedType;
    .param p4, "ai"    # Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;",
            "Lcom/flurry/org/codehaus/jackson/map/jsontype/NamedType;",
            "Lcom/flurry/org/codehaus/jackson/map/MapperConfig",
            "<*>;",
            "Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;",
            "Ljava/util/HashMap",
            "<",
            "Lcom/flurry/org/codehaus/jackson/map/jsontype/NamedType;",
            "Lcom/flurry/org/codehaus/jackson/map/jsontype/NamedType;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 119
    .local p3, "config":Lcom/flurry/org/codehaus/jackson/map/MapperConfig;, "Lcom/flurry/org/codehaus/jackson/map/MapperConfig<*>;"
    .local p5, "collectedSubtypes":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/flurry/org/codehaus/jackson/map/jsontype/NamedType;Lcom/flurry/org/codehaus/jackson/map/jsontype/NamedType;>;"
    invoke-virtual/range {p2 .. p2}, Lcom/flurry/org/codehaus/jackson/map/jsontype/NamedType;->hasName()Z

    move-result v3

    if-nez v3, :cond_0

    .line 120
    move-object/from16 v0, p4

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;->findTypeName(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/String;

    move-result-object v10

    .line 121
    .local v10, "name":Ljava/lang/String;
    if-eqz v10, :cond_0

    .line 122
    new-instance v11, Lcom/flurry/org/codehaus/jackson/map/jsontype/NamedType;

    invoke-virtual/range {p2 .. p2}, Lcom/flurry/org/codehaus/jackson/map/jsontype/NamedType;->getType()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v11, v3, v10}, Lcom/flurry/org/codehaus/jackson/map/jsontype/NamedType;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .end local p2    # "namedType":Lcom/flurry/org/codehaus/jackson/map/jsontype/NamedType;
    .local v11, "namedType":Lcom/flurry/org/codehaus/jackson/map/jsontype/NamedType;
    move-object/from16 p2, v11

    .line 127
    .end local v10    # "name":Ljava/lang/String;
    .end local v11    # "namedType":Lcom/flurry/org/codehaus/jackson/map/jsontype/NamedType;
    .restart local p2    # "namedType":Lcom/flurry/org/codehaus/jackson/map/jsontype/NamedType;
    :cond_0
    move-object/from16 v0, p5

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 129
    invoke-virtual/range {p2 .. p2}, Lcom/flurry/org/codehaus/jackson/map/jsontype/NamedType;->hasName()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 130
    move-object/from16 v0, p5

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/flurry/org/codehaus/jackson/map/jsontype/NamedType;

    .line 131
    .local v12, "prev":Lcom/flurry/org/codehaus/jackson/map/jsontype/NamedType;
    invoke-virtual {v12}, Lcom/flurry/org/codehaus/jackson/map/jsontype/NamedType;->hasName()Z

    move-result v3

    if-nez v3, :cond_1

    .line 132
    move-object/from16 v0, p5

    move-object/from16 v1, p2

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    .end local v12    # "prev":Lcom/flurry/org/codehaus/jackson/map/jsontype/NamedType;
    :cond_1
    return-void

    .line 138
    :cond_2
    move-object/from16 v0, p5

    move-object/from16 v1, p2

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    move-object/from16 v0, p4

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;->findSubtypes(Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;)Ljava/util/List;

    move-result-object v13

    .line 140
    .local v13, "st":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/flurry/org/codehaus/jackson/map/jsontype/NamedType;>;"
    if-eqz v13, :cond_1

    invoke-interface {v13}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 141
    invoke-interface {v13}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/flurry/org/codehaus/jackson/map/jsontype/NamedType;

    .line 142
    .local v5, "subtype":Lcom/flurry/org/codehaus/jackson/map/jsontype/NamedType;
    invoke-virtual {v5}, Lcom/flurry/org/codehaus/jackson/map/jsontype/NamedType;->getType()Ljava/lang/Class;

    move-result-object v3

    move-object/from16 v0, p4

    move-object/from16 v1, p3

    invoke-static {v3, v0, v1}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;->constructWithoutSuperTypes(Ljava/lang/Class;Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;Lcom/flurry/org/codehaus/jackson/map/ClassIntrospector$MixInResolver;)Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;

    move-result-object v4

    .line 144
    .local v4, "subtypeClass":Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;
    invoke-virtual {v5}, Lcom/flurry/org/codehaus/jackson/map/jsontype/NamedType;->hasName()Z

    move-result v3

    if-nez v3, :cond_3

    .line 145
    new-instance v14, Lcom/flurry/org/codehaus/jackson/map/jsontype/NamedType;

    invoke-virtual {v5}, Lcom/flurry/org/codehaus/jackson/map/jsontype/NamedType;->getType()Ljava/lang/Class;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;->findTypeName(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v14, v3, v6}, Lcom/flurry/org/codehaus/jackson/map/jsontype/NamedType;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .end local v5    # "subtype":Lcom/flurry/org/codehaus/jackson/map/jsontype/NamedType;
    .local v14, "subtype":Lcom/flurry/org/codehaus/jackson/map/jsontype/NamedType;
    move-object v5, v14

    .end local v14    # "subtype":Lcom/flurry/org/codehaus/jackson/map/jsontype/NamedType;
    .restart local v5    # "subtype":Lcom/flurry/org/codehaus/jackson/map/jsontype/NamedType;
    :cond_3
    move-object v3, p0

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    .line 147
    invoke-virtual/range {v3 .. v8}, Lcom/flurry/org/codehaus/jackson/map/jsontype/impl/StdSubtypeResolver;->_collectAndResolve(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;Lcom/flurry/org/codehaus/jackson/map/jsontype/NamedType;Lcom/flurry/org/codehaus/jackson/map/MapperConfig;Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;Ljava/util/HashMap;)V

    goto :goto_0
.end method

.method public collectAndResolveSubtypes(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;Lcom/flurry/org/codehaus/jackson/map/MapperConfig;Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;)Ljava/util/Collection;
    .locals 16
    .param p1, "type"    # Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;
    .param p3, "ai"    # Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;",
            "Lcom/flurry/org/codehaus/jackson/map/MapperConfig",
            "<*>;",
            "Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lcom/flurry/org/codehaus/jackson/map/jsontype/NamedType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 89
    .local p2, "config":Lcom/flurry/org/codehaus/jackson/map/MapperConfig;, "Lcom/flurry/org/codehaus/jackson/map/MapperConfig<*>;"
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 91
    .local v7, "subtypes":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/flurry/org/codehaus/jackson/map/jsontype/NamedType;Lcom/flurry/org/codehaus/jackson/map/jsontype/NamedType;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/flurry/org/codehaus/jackson/map/jsontype/impl/StdSubtypeResolver;->_registeredSubtypes:Ljava/util/LinkedHashSet;

    if-eqz v2, :cond_1

    .line 92
    invoke-virtual/range {p1 .. p1}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;->getRawType()Ljava/lang/Class;

    move-result-object v15

    .line 93
    .local v15, "rawBase":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/flurry/org/codehaus/jackson/map/jsontype/impl/StdSubtypeResolver;->_registeredSubtypes:Ljava/util/LinkedHashSet;

    invoke-virtual {v2}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/flurry/org/codehaus/jackson/map/jsontype/NamedType;

    .line 95
    .local v4, "subtype":Lcom/flurry/org/codehaus/jackson/map/jsontype/NamedType;
    invoke-virtual {v4}, Lcom/flurry/org/codehaus/jackson/map/jsontype/NamedType;->getType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 96
    invoke-virtual {v4}, Lcom/flurry/org/codehaus/jackson/map/jsontype/NamedType;->getType()Ljava/lang/Class;

    move-result-object v2

    move-object/from16 v0, p3

    move-object/from16 v1, p2

    invoke-static {v2, v0, v1}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;->constructWithoutSuperTypes(Ljava/lang/Class;Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;Lcom/flurry/org/codehaus/jackson/map/ClassIntrospector$MixInResolver;)Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;

    move-result-object v3

    .local v3, "curr":Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;
    move-object/from16 v2, p0

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    .line 97
    invoke-virtual/range {v2 .. v7}, Lcom/flurry/org/codehaus/jackson/map/jsontype/impl/StdSubtypeResolver;->_collectAndResolve(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;Lcom/flurry/org/codehaus/jackson/map/jsontype/NamedType;Lcom/flurry/org/codehaus/jackson/map/MapperConfig;Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;Ljava/util/HashMap;)V

    goto :goto_0

    .line 102
    .end local v3    # "curr":Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;
    .end local v4    # "subtype":Lcom/flurry/org/codehaus/jackson/map/jsontype/NamedType;
    .end local v14    # "i$":Ljava/util/Iterator;
    .end local v15    # "rawBase":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    new-instance v10, Lcom/flurry/org/codehaus/jackson/map/jsontype/NamedType;

    invoke-virtual/range {p1 .. p1}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;->getRawType()Ljava/lang/Class;

    move-result-object v2

    const/4 v5, 0x0

    invoke-direct {v10, v2, v5}, Lcom/flurry/org/codehaus/jackson/map/jsontype/NamedType;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .local v10, "rootType":Lcom/flurry/org/codehaus/jackson/map/jsontype/NamedType;
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move-object v13, v7

    .line 103
    invoke-virtual/range {v8 .. v13}, Lcom/flurry/org/codehaus/jackson/map/jsontype/impl/StdSubtypeResolver;->_collectAndResolve(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;Lcom/flurry/org/codehaus/jackson/map/jsontype/NamedType;Lcom/flurry/org/codehaus/jackson/map/MapperConfig;Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;Ljava/util/HashMap;)V

    .line 104
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v2
.end method

.method public collectAndResolveSubtypes(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;Lcom/flurry/org/codehaus/jackson/map/MapperConfig;Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;)Ljava/util/Collection;
    .locals 20
    .param p1, "property"    # Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;
    .param p3, "ai"    # Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;",
            "Lcom/flurry/org/codehaus/jackson/map/MapperConfig",
            "<*>;",
            "Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lcom/flurry/org/codehaus/jackson/map/jsontype/NamedType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 56
    .local p2, "config":Lcom/flurry/org/codehaus/jackson/map/MapperConfig;, "Lcom/flurry/org/codehaus/jackson/map/MapperConfig<*>;"
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 58
    .local v7, "collected":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/flurry/org/codehaus/jackson/map/jsontype/NamedType;Lcom/flurry/org/codehaus/jackson/map/jsontype/NamedType;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/flurry/org/codehaus/jackson/map/jsontype/impl/StdSubtypeResolver;->_registeredSubtypes:Ljava/util/LinkedHashSet;

    if-eqz v2, :cond_1

    .line 59
    invoke-virtual/range {p1 .. p1}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;->getRawType()Ljava/lang/Class;

    move-result-object v18

    .line 60
    .local v18, "rawBase":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/flurry/org/codehaus/jackson/map/jsontype/impl/StdSubtypeResolver;->_registeredSubtypes:Ljava/util/LinkedHashSet;

    invoke-virtual {v2}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/flurry/org/codehaus/jackson/map/jsontype/NamedType;

    .line 62
    .local v4, "subtype":Lcom/flurry/org/codehaus/jackson/map/jsontype/NamedType;
    invoke-virtual {v4}, Lcom/flurry/org/codehaus/jackson/map/jsontype/NamedType;->getType()Ljava/lang/Class;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 63
    invoke-virtual {v4}, Lcom/flurry/org/codehaus/jackson/map/jsontype/NamedType;->getType()Ljava/lang/Class;

    move-result-object v2

    move-object/from16 v0, p3

    move-object/from16 v1, p2

    invoke-static {v2, v0, v1}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;->constructWithoutSuperTypes(Ljava/lang/Class;Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;Lcom/flurry/org/codehaus/jackson/map/ClassIntrospector$MixInResolver;)Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;

    move-result-object v3

    .local v3, "curr":Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;
    move-object/from16 v2, p0

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    .line 64
    invoke-virtual/range {v2 .. v7}, Lcom/flurry/org/codehaus/jackson/map/jsontype/impl/StdSubtypeResolver;->_collectAndResolve(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;Lcom/flurry/org/codehaus/jackson/map/jsontype/NamedType;Lcom/flurry/org/codehaus/jackson/map/MapperConfig;Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;Ljava/util/HashMap;)V

    goto :goto_0

    .line 70
    .end local v3    # "curr":Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;
    .end local v4    # "subtype":Lcom/flurry/org/codehaus/jackson/map/jsontype/NamedType;
    .end local v17    # "i$":Ljava/util/Iterator;
    .end local v18    # "rawBase":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    move-object/from16 v0, p3

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;->findSubtypes(Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;)Ljava/util/List;

    move-result-object v19

    .line 71
    .local v19, "st":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/flurry/org/codehaus/jackson/map/jsontype/NamedType;>;"
    if-eqz v19, :cond_2

    .line 72
    invoke-interface/range {v19 .. v19}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .restart local v17    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/flurry/org/codehaus/jackson/map/jsontype/NamedType;

    .line 73
    .local v10, "nt":Lcom/flurry/org/codehaus/jackson/map/jsontype/NamedType;
    invoke-virtual {v10}, Lcom/flurry/org/codehaus/jackson/map/jsontype/NamedType;->getType()Ljava/lang/Class;

    move-result-object v2

    move-object/from16 v0, p3

    move-object/from16 v1, p2

    invoke-static {v2, v0, v1}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;->constructWithoutSuperTypes(Ljava/lang/Class;Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;Lcom/flurry/org/codehaus/jackson/map/ClassIntrospector$MixInResolver;)Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;

    move-result-object v9

    .local v9, "ac":Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;
    move-object/from16 v8, p0

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move-object v13, v7

    .line 74
    invoke-virtual/range {v8 .. v13}, Lcom/flurry/org/codehaus/jackson/map/jsontype/impl/StdSubtypeResolver;->_collectAndResolve(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;Lcom/flurry/org/codehaus/jackson/map/jsontype/NamedType;Lcom/flurry/org/codehaus/jackson/map/MapperConfig;Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;Ljava/util/HashMap;)V

    goto :goto_1

    .line 77
    .end local v9    # "ac":Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;
    .end local v10    # "nt":Lcom/flurry/org/codehaus/jackson/map/jsontype/NamedType;
    .end local v17    # "i$":Ljava/util/Iterator;
    :cond_2
    new-instance v13, Lcom/flurry/org/codehaus/jackson/map/jsontype/NamedType;

    invoke-virtual/range {p1 .. p1}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;->getRawType()Ljava/lang/Class;

    move-result-object v2

    const/4 v5, 0x0

    invoke-direct {v13, v2, v5}, Lcom/flurry/org/codehaus/jackson/map/jsontype/NamedType;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 78
    .local v13, "rootType":Lcom/flurry/org/codehaus/jackson/map/jsontype/NamedType;
    invoke-virtual/range {p1 .. p1}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;->getRawType()Ljava/lang/Class;

    move-result-object v2

    move-object/from16 v0, p3

    move-object/from16 v1, p2

    invoke-static {v2, v0, v1}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;->constructWithoutSuperTypes(Ljava/lang/Class;Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;Lcom/flurry/org/codehaus/jackson/map/ClassIntrospector$MixInResolver;)Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;

    move-result-object v9

    .restart local v9    # "ac":Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;
    move-object/from16 v11, p0

    move-object v12, v9

    move-object/from16 v14, p2

    move-object/from16 v15, p3

    move-object/from16 v16, v7

    .line 81
    invoke-virtual/range {v11 .. v16}, Lcom/flurry/org/codehaus/jackson/map/jsontype/impl/StdSubtypeResolver;->_collectAndResolve(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;Lcom/flurry/org/codehaus/jackson/map/jsontype/NamedType;Lcom/flurry/org/codehaus/jackson/map/MapperConfig;Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;Ljava/util/HashMap;)V

    .line 82
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v2
.end method

.method public varargs registerSubtypes([Lcom/flurry/org/codehaus/jackson/map/jsontype/NamedType;)V
    .locals 5
    .param p1, "types"    # [Lcom/flurry/org/codehaus/jackson/map/jsontype/NamedType;

    .prologue
    .line 29
    iget-object v4, p0, Lcom/flurry/org/codehaus/jackson/map/jsontype/impl/StdSubtypeResolver;->_registeredSubtypes:Ljava/util/LinkedHashSet;

    if-nez v4, :cond_0

    .line 30
    new-instance v4, Ljava/util/LinkedHashSet;

    invoke-direct {v4}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v4, p0, Lcom/flurry/org/codehaus/jackson/map/jsontype/impl/StdSubtypeResolver;->_registeredSubtypes:Ljava/util/LinkedHashSet;

    .line 32
    :cond_0
    move-object v0, p1

    .local v0, "arr$":[Lcom/flurry/org/codehaus/jackson/map/jsontype/NamedType;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 33
    .local v3, "type":Lcom/flurry/org/codehaus/jackson/map/jsontype/NamedType;
    iget-object v4, p0, Lcom/flurry/org/codehaus/jackson/map/jsontype/impl/StdSubtypeResolver;->_registeredSubtypes:Ljava/util/LinkedHashSet;

    invoke-virtual {v4, v3}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 32
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 35
    .end local v3    # "type":Lcom/flurry/org/codehaus/jackson/map/jsontype/NamedType;
    :cond_1
    return-void
.end method

.method public varargs registerSubtypes([Ljava/lang/Class;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p1, "classes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v3, p1

    new-array v2, v3, [Lcom/flurry/org/codehaus/jackson/map/jsontype/NamedType;

    .line 41
    .local v2, "types":[Lcom/flurry/org/codehaus/jackson/map/jsontype/NamedType;
    const/4 v0, 0x0

    .local v0, "i":I
    array-length v1, p1

    .local v1, "len":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 42
    new-instance v3, Lcom/flurry/org/codehaus/jackson/map/jsontype/NamedType;

    aget-object v4, p1, v0

    invoke-direct {v3, v4}, Lcom/flurry/org/codehaus/jackson/map/jsontype/NamedType;-><init>(Ljava/lang/Class;)V

    aput-object v3, v2, v0

    .line 41
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 44
    :cond_0
    invoke-virtual {p0, v2}, Lcom/flurry/org/codehaus/jackson/map/jsontype/impl/StdSubtypeResolver;->registerSubtypes([Lcom/flurry/org/codehaus/jackson/map/jsontype/NamedType;)V

    .line 45
    return-void
.end method
