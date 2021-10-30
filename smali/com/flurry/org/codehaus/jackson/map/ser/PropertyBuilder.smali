.class public Lcom/flurry/org/codehaus/jackson/map/ser/PropertyBuilder;
.super Ljava/lang/Object;
.source "PropertyBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/org/codehaus/jackson/map/ser/PropertyBuilder$1;,
        Lcom/flurry/org/codehaus/jackson/map/ser/PropertyBuilder$EmptyStringChecker;,
        Lcom/flurry/org/codehaus/jackson/map/ser/PropertyBuilder$EmptyArrayChecker;,
        Lcom/flurry/org/codehaus/jackson/map/ser/PropertyBuilder$EmptyMapChecker;,
        Lcom/flurry/org/codehaus/jackson/map/ser/PropertyBuilder$EmptyCollectionChecker;
    }
.end annotation


# instance fields
.field protected final _annotationIntrospector:Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

.field protected final _beanDesc:Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;

.field protected final _config:Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;

.field protected _defaultBean:Ljava/lang/Object;

.field protected final _outputProps:Lcom/flurry/org/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;


# direct methods
.method public constructor <init>(Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;)V
    .locals 1
    .param p1, "config"    # Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;
    .param p2, "beanDesc"    # Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/flurry/org/codehaus/jackson/map/ser/PropertyBuilder;->_config:Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;

    .line 40
    iput-object p2, p0, Lcom/flurry/org/codehaus/jackson/map/ser/PropertyBuilder;->_beanDesc:Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;

    .line 41
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;->getSerializationInclusion()Lcom/flurry/org/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;->findSerializationInclusion(Lcom/flurry/org/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;)Lcom/flurry/org/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ser/PropertyBuilder;->_outputProps:Lcom/flurry/org/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;

    .line 42
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ser/PropertyBuilder;->_config:Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;

    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;->getAnnotationIntrospector()Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ser/PropertyBuilder;->_annotationIntrospector:Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    .line 43
    return-void
.end method


# virtual methods
.method protected _throwWrapped(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "e"    # Ljava/lang/Exception;
    .param p2, "propName"    # Ljava/lang/String;
    .param p3, "defaultBean"    # Ljava/lang/Object;

    .prologue
    .line 308
    move-object v0, p1

    .line 309
    .local v0, "t":Ljava/lang/Throwable;
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 310
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_0

    .line 312
    :cond_0
    instance-of v1, v0, Ljava/lang/Error;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/Error;

    .end local v0    # "t":Ljava/lang/Throwable;
    throw v0

    .line 313
    .restart local v0    # "t":Ljava/lang/Throwable;
    :cond_1
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_2

    check-cast v0, Ljava/lang/RuntimeException;

    .end local v0    # "t":Ljava/lang/Throwable;
    throw v0

    .line 314
    .restart local v0    # "t":Ljava/lang/Throwable;
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to get property \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' of default "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " instance"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected buildWriter(Ljava/lang/String;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;Z)Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;
    .locals 19
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "declaredType"    # Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .param p4, "typeSer"    # Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;
    .param p5, "contentTypeSer"    # Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;
    .param p6, "am"    # Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;
    .param p7, "defaultUseStaticTyping"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/flurry/org/codehaus/jackson/type/JavaType;",
            "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;",
            "Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;",
            "Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;",
            "Z)",
            "Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;"
        }
    .end annotation

    .prologue
    .line 67
    .local p3, "ser":Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    move-object/from16 v0, p6

    instance-of v5, v0, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedField;

    if-eqz v5, :cond_1

    .line 68
    const/4 v12, 0x0

    .local v12, "m":Ljava/lang/reflect/Method;
    move-object/from16 v5, p6

    .line 69
    check-cast v5, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedField;

    invoke-virtual {v5}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedField;->getAnnotated()Ljava/lang/reflect/Field;

    move-result-object v13

    .line 76
    .local v13, "f":Ljava/lang/reflect/Field;
    :goto_0
    move-object/from16 v0, p0

    move-object/from16 v1, p6

    move/from16 v2, p7

    move-object/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/flurry/org/codehaus/jackson/map/ser/PropertyBuilder;->findSerializationType(Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;ZLcom/flurry/org/codehaus/jackson/type/JavaType;)Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v11

    .line 79
    .local v11, "serializationType":Lcom/flurry/org/codehaus/jackson/type/JavaType;
    if-eqz p5, :cond_3

    .line 84
    if-nez v11, :cond_0

    .line 86
    move-object/from16 v11, p2

    .line 88
    :cond_0
    invoke-virtual {v11}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->getContentType()Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v16

    .line 93
    .local v16, "ct":Lcom/flurry/org/codehaus/jackson/type/JavaType;
    if-nez v16, :cond_2

    .line 94
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Problem trying to create BeanPropertyWriter for property \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' (of type "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/flurry/org/codehaus/jackson/map/ser/PropertyBuilder;->_beanDesc:Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;

    invoke-virtual {v7}, Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;->getType()Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "); serialization type "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " has no content"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .end local v11    # "serializationType":Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .end local v12    # "m":Ljava/lang/reflect/Method;
    .end local v13    # "f":Ljava/lang/reflect/Field;
    .end local v16    # "ct":Lcom/flurry/org/codehaus/jackson/type/JavaType;
    :cond_1
    move-object/from16 v5, p6

    .line 71
    check-cast v5, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;

    invoke-virtual {v5}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;->getAnnotated()Ljava/lang/reflect/Method;

    move-result-object v12

    .line 72
    .restart local v12    # "m":Ljava/lang/reflect/Method;
    const/4 v13, 0x0

    .restart local v13    # "f":Ljava/lang/reflect/Field;
    goto :goto_0

    .line 97
    .restart local v11    # "serializationType":Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .restart local v16    # "ct":Lcom/flurry/org/codehaus/jackson/type/JavaType;
    :cond_2
    move-object/from16 v0, p5

    invoke-virtual {v11, v0}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->withContentTypeHandler(Ljava/lang/Object;)Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v11

    .line 98
    invoke-virtual {v11}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->getContentType()Lcom/flurry/org/codehaus/jackson/type/JavaType;

    .line 101
    .end local v16    # "ct":Lcom/flurry/org/codehaus/jackson/type/JavaType;
    :cond_3
    const/4 v15, 0x0

    .line 102
    .local v15, "valueToSuppress":Ljava/lang/Object;
    const/4 v14, 0x0

    .line 104
    .local v14, "suppressNulls":Z
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/flurry/org/codehaus/jackson/map/ser/PropertyBuilder;->_annotationIntrospector:Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/flurry/org/codehaus/jackson/map/ser/PropertyBuilder;->_outputProps:Lcom/flurry/org/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;

    move-object/from16 v0, p6

    invoke-virtual {v5, v0, v6}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;->findSerializationInclusion(Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;Lcom/flurry/org/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;)Lcom/flurry/org/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;

    move-result-object v17

    .line 106
    .local v17, "methodProps":Lcom/flurry/org/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;
    if-eqz v17, :cond_4

    .line 107
    sget-object v5, Lcom/flurry/org/codehaus/jackson/map/ser/PropertyBuilder$1;->$SwitchMap$org$codehaus$jackson$map$annotate$JsonSerialize$Inclusion:[I

    invoke-virtual/range {v17 .. v17}, Lcom/flurry/org/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 137
    .end local v15    # "valueToSuppress":Ljava/lang/Object;
    :cond_4
    :goto_1
    new-instance v4, Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/flurry/org/codehaus/jackson/map/ser/PropertyBuilder;->_beanDesc:Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;

    invoke-virtual {v5}, Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;->getClassAnnotations()Lcom/flurry/org/codehaus/jackson/map/util/Annotations;

    move-result-object v6

    move-object/from16 v5, p6

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    invoke-direct/range {v4 .. v15}, Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;-><init>(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;Lcom/flurry/org/codehaus/jackson/map/util/Annotations;Ljava/lang/String;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;Lcom/flurry/org/codehaus/jackson/type/JavaType;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;ZLjava/lang/Object;)V

    .line 141
    .local v4, "bpw":Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/flurry/org/codehaus/jackson/map/ser/PropertyBuilder;->_annotationIntrospector:Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    move-object/from16 v0, p6

    invoke-virtual {v5, v0}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;->shouldUnwrapProperty(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;)Ljava/lang/Boolean;

    move-result-object v18

    .line 142
    .local v18, "unwrapped":Ljava/lang/Boolean;
    if-eqz v18, :cond_5

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 143
    invoke-virtual {v4}, Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;->unwrappingWriter()Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;

    move-result-object v4

    .line 145
    :cond_5
    return-object v4

    .line 109
    .end local v4    # "bpw":Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;
    .end local v18    # "unwrapped":Ljava/lang/Boolean;
    .restart local v15    # "valueToSuppress":Ljava/lang/Object;
    :pswitch_0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v12, v13}, Lcom/flurry/org/codehaus/jackson/map/ser/PropertyBuilder;->getDefaultValue(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v15

    .line 110
    if-nez v15, :cond_6

    .line 111
    const/4 v14, 0x1

    goto :goto_1

    .line 114
    :cond_6
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->isArray()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 115
    invoke-static {v15}, Lcom/flurry/org/codehaus/jackson/map/util/Comparators;->getArrayComparator(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    goto :goto_1

    .line 121
    :pswitch_1
    const/4 v14, 0x1

    .line 123
    invoke-virtual/range {p0 .. p2}, Lcom/flurry/org/codehaus/jackson/map/ser/PropertyBuilder;->getEmptyValueChecker(Ljava/lang/String;Lcom/flurry/org/codehaus/jackson/type/JavaType;)Ljava/lang/Object;

    move-result-object v15

    .line 124
    goto :goto_1

    .line 126
    :pswitch_2
    const/4 v14, 0x1

    .line 130
    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->isContainerType()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 131
    invoke-virtual/range {p0 .. p2}, Lcom/flurry/org/codehaus/jackson/map/ser/PropertyBuilder;->getContainerValueChecker(Ljava/lang/String;Lcom/flurry/org/codehaus/jackson/type/JavaType;)Ljava/lang/Object;

    move-result-object v15

    goto :goto_1

    .line 107
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected findSerializationType(Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;ZLcom/flurry/org/codehaus/jackson/type/JavaType;)Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .locals 7
    .param p1, "a"    # Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;
    .param p2, "useStaticTyping"    # Z
    .param p3, "declaredType"    # Lcom/flurry/org/codehaus/jackson/type/JavaType;

    .prologue
    .line 163
    iget-object v4, p0, Lcom/flurry/org/codehaus/jackson/map/ser/PropertyBuilder;->_annotationIntrospector:Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v4, p1}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;->findSerializationType(Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Class;

    move-result-object v2

    .line 164
    .local v2, "serClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v2, :cond_0

    .line 166
    invoke-virtual {p3}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    .line 167
    .local v0, "rawDeclared":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 168
    invoke-virtual {p3, v2}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->widenBy(Ljava/lang/Class;)Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object p3

    .line 185
    :goto_0
    const/4 p2, 0x1

    .line 188
    .end local v0    # "rawDeclared":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    iget-object v4, p0, Lcom/flurry/org/codehaus/jackson/map/ser/PropertyBuilder;->_config:Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;

    invoke-static {v4, p1, p3}, Lcom/flurry/org/codehaus/jackson/map/ser/BeanSerializerFactory;->modifySecondaryTypesByAnnotation(Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;Lcom/flurry/org/codehaus/jackson/type/JavaType;)Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v1

    .line 189
    .local v1, "secondary":Lcom/flurry/org/codehaus/jackson/type/JavaType;
    if-eq v1, p3, :cond_1

    .line 190
    const/4 p2, 0x1

    .line 191
    move-object p3, v1

    .line 197
    :cond_1
    if-nez p2, :cond_2

    .line 198
    iget-object v4, p0, Lcom/flurry/org/codehaus/jackson/map/ser/PropertyBuilder;->_annotationIntrospector:Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v4, p1}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;->findSerializationTyping(Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;)Lcom/flurry/org/codehaus/jackson/map/annotate/JsonSerialize$Typing;

    move-result-object v3

    .line 199
    .local v3, "typing":Lcom/flurry/org/codehaus/jackson/map/annotate/JsonSerialize$Typing;
    if-eqz v3, :cond_2

    .line 200
    sget-object v4, Lcom/flurry/org/codehaus/jackson/map/annotate/JsonSerialize$Typing;->STATIC:Lcom/flurry/org/codehaus/jackson/map/annotate/JsonSerialize$Typing;

    if-ne v3, v4, :cond_5

    const/4 p2, 0x1

    .line 203
    .end local v3    # "typing":Lcom/flurry/org/codehaus/jackson/map/annotate/JsonSerialize$Typing;
    :cond_2
    :goto_1
    if-eqz p2, :cond_6

    .end local p3    # "declaredType":Lcom/flurry/org/codehaus/jackson/type/JavaType;
    :goto_2
    return-object p3

    .line 176
    .end local v1    # "secondary":Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .restart local v0    # "rawDeclared":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local p3    # "declaredType":Lcom/flurry/org/codehaus/jackson/type/JavaType;
    :cond_3
    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 177
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Illegal concrete-type annotation for method \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\': class "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " not a super-type of (declared) class "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 183
    :cond_4
    iget-object v4, p0, Lcom/flurry/org/codehaus/jackson/map/ser/PropertyBuilder;->_config:Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;

    invoke-virtual {v4, p3, v2}, Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;->constructSpecializedType(Lcom/flurry/org/codehaus/jackson/type/JavaType;Ljava/lang/Class;)Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object p3

    goto :goto_0

    .line 200
    .end local v0    # "rawDeclared":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v1    # "secondary":Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .restart local v3    # "typing":Lcom/flurry/org/codehaus/jackson/map/annotate/JsonSerialize$Typing;
    :cond_5
    const/4 p2, 0x0

    goto :goto_1

    .line 203
    .end local v3    # "typing":Lcom/flurry/org/codehaus/jackson/map/annotate/JsonSerialize$Typing;
    :cond_6
    const/4 p3, 0x0

    goto :goto_2
.end method

.method public getClassAnnotations()Lcom/flurry/org/codehaus/jackson/map/util/Annotations;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ser/PropertyBuilder;->_beanDesc:Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;

    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;->getClassAnnotations()Lcom/flurry/org/codehaus/jackson/map/util/Annotations;

    move-result-object v0

    return-object v0
.end method

.method protected getContainerValueChecker(Ljava/lang/String;Lcom/flurry/org/codehaus/jackson/type/JavaType;)Ljava/lang/Object;
    .locals 2
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "propertyType"    # Lcom/flurry/org/codehaus/jackson/type/JavaType;

    .prologue
    .line 256
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ser/PropertyBuilder;->_config:Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;

    sget-object v1, Lcom/flurry/org/codehaus/jackson/map/SerializationConfig$Feature;->WRITE_EMPTY_JSON_ARRAYS:Lcom/flurry/org/codehaus/jackson/map/SerializationConfig$Feature;

    invoke-virtual {v0, v1}, Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;->isEnabled(Lcom/flurry/org/codehaus/jackson/map/SerializationConfig$Feature;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 257
    invoke-virtual {p2}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->isArrayType()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 258
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/ser/PropertyBuilder$EmptyArrayChecker;

    invoke-direct {v0}, Lcom/flurry/org/codehaus/jackson/map/ser/PropertyBuilder$EmptyArrayChecker;-><init>()V

    .line 264
    :goto_0
    return-object v0

    .line 260
    :cond_0
    const-class v0, Ljava/util/Collection;

    invoke-virtual {p2}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 261
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/ser/PropertyBuilder$EmptyCollectionChecker;

    invoke-direct {v0}, Lcom/flurry/org/codehaus/jackson/map/ser/PropertyBuilder$EmptyCollectionChecker;-><init>()V

    goto :goto_0

    .line 264
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getDefaultBean()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 214
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/ser/PropertyBuilder;->_defaultBean:Ljava/lang/Object;

    if-nez v1, :cond_0

    .line 218
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/ser/PropertyBuilder;->_beanDesc:Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;

    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/ser/PropertyBuilder;->_config:Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;

    sget-object v3, Lcom/flurry/org/codehaus/jackson/map/SerializationConfig$Feature;->CAN_OVERRIDE_ACCESS_MODIFIERS:Lcom/flurry/org/codehaus/jackson/map/SerializationConfig$Feature;

    invoke-virtual {v2, v3}, Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;->isEnabled(Lcom/flurry/org/codehaus/jackson/map/SerializationConfig$Feature;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;->instantiateBean(Z)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/ser/PropertyBuilder;->_defaultBean:Ljava/lang/Object;

    .line 219
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/ser/PropertyBuilder;->_defaultBean:Ljava/lang/Object;

    if-nez v1, :cond_0

    .line 220
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/ser/PropertyBuilder;->_beanDesc:Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;

    invoke-virtual {v1}, Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;->getClassInfo()Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;->getAnnotated()Ljava/lang/Class;

    move-result-object v0

    .line 221
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " has no default constructor; can not instantiate default bean value to support \'properties=JsonSerialize.Inclusion.NON_DEFAULT\' annotation"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 224
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/ser/PropertyBuilder;->_defaultBean:Ljava/lang/Object;

    return-object v1
.end method

.method protected getDefaultValue(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;)Ljava/lang/Object;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "m"    # Ljava/lang/reflect/Method;
    .param p3, "f"    # Ljava/lang/reflect/Field;

    .prologue
    .line 229
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/map/ser/PropertyBuilder;->getDefaultBean()Ljava/lang/Object;

    move-result-object v0

    .line 231
    .local v0, "defaultBean":Ljava/lang/Object;
    if-eqz p2, :cond_0

    .line 232
    const/4 v2, 0x0

    :try_start_0
    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p2, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 236
    :goto_0
    return-object v2

    .line 234
    :cond_0
    invoke-virtual {p3, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 235
    :catch_0
    move-exception v1

    .line 236
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v1, p1, v0}, Lcom/flurry/org/codehaus/jackson/map/ser/PropertyBuilder;->_throwWrapped(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0
.end method

.method protected getEmptyValueChecker(Ljava/lang/String;Lcom/flurry/org/codehaus/jackson/type/JavaType;)Ljava/lang/Object;
    .locals 2
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "propertyType"    # Lcom/flurry/org/codehaus/jackson/type/JavaType;

    .prologue
    .line 284
    invoke-virtual {p2}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    .line 285
    .local v0, "rawType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v1, Ljava/lang/String;

    if-ne v0, v1, :cond_0

    .line 286
    new-instance v1, Lcom/flurry/org/codehaus/jackson/map/ser/PropertyBuilder$EmptyStringChecker;

    invoke-direct {v1}, Lcom/flurry/org/codehaus/jackson/map/ser/PropertyBuilder$EmptyStringChecker;-><init>()V

    .line 297
    :goto_0
    return-object v1

    .line 288
    :cond_0
    invoke-virtual {p2}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->isArrayType()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 289
    new-instance v1, Lcom/flurry/org/codehaus/jackson/map/ser/PropertyBuilder$EmptyArrayChecker;

    invoke-direct {v1}, Lcom/flurry/org/codehaus/jackson/map/ser/PropertyBuilder$EmptyArrayChecker;-><init>()V

    goto :goto_0

    .line 291
    :cond_1
    const-class v1, Ljava/util/Collection;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 292
    new-instance v1, Lcom/flurry/org/codehaus/jackson/map/ser/PropertyBuilder$EmptyCollectionChecker;

    invoke-direct {v1}, Lcom/flurry/org/codehaus/jackson/map/ser/PropertyBuilder$EmptyCollectionChecker;-><init>()V

    goto :goto_0

    .line 294
    :cond_2
    const-class v1, Ljava/util/Map;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 295
    new-instance v1, Lcom/flurry/org/codehaus/jackson/map/ser/PropertyBuilder$EmptyMapChecker;

    invoke-direct {v1}, Lcom/flurry/org/codehaus/jackson/map/ser/PropertyBuilder$EmptyMapChecker;-><init>()V

    goto :goto_0

    .line 297
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method
