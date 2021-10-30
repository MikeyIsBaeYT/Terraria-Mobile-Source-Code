.class public Lcom/flurry/org/codehaus/jackson/map/ser/BeanSerializerFactory;
.super Lcom/flurry/org/codehaus/jackson/map/ser/BasicSerializerFactory;
.source "BeanSerializerFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/org/codehaus/jackson/map/ser/BeanSerializerFactory$ConfigImpl;
    }
.end annotation


# static fields
.field public static final instance:Lcom/flurry/org/codehaus/jackson/map/ser/BeanSerializerFactory;


# instance fields
.field protected final _factoryConfig:Lcom/flurry/org/codehaus/jackson/map/SerializerFactory$Config;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 56
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/ser/BeanSerializerFactory;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/flurry/org/codehaus/jackson/map/ser/BeanSerializerFactory;-><init>(Lcom/flurry/org/codehaus/jackson/map/SerializerFactory$Config;)V

    sput-object v0, Lcom/flurry/org/codehaus/jackson/map/ser/BeanSerializerFactory;->instance:Lcom/flurry/org/codehaus/jackson/map/ser/BeanSerializerFactory;

    return-void
.end method

.method protected constructor <init>(Lcom/flurry/org/codehaus/jackson/map/SerializerFactory$Config;)V
    .locals 0
    .param p1, "config"    # Lcom/flurry/org/codehaus/jackson/map/SerializerFactory$Config;

    .prologue
    .line 186
    invoke-direct {p0}, Lcom/flurry/org/codehaus/jackson/map/ser/BasicSerializerFactory;-><init>()V

    .line 187
    if-nez p1, :cond_0

    .line 188
    new-instance p1, Lcom/flurry/org/codehaus/jackson/map/ser/BeanSerializerFactory$ConfigImpl;

    .end local p1    # "config":Lcom/flurry/org/codehaus/jackson/map/SerializerFactory$Config;
    invoke-direct {p1}, Lcom/flurry/org/codehaus/jackson/map/ser/BeanSerializerFactory$ConfigImpl;-><init>()V

    .line 190
    .restart local p1    # "config":Lcom/flurry/org/codehaus/jackson/map/SerializerFactory$Config;
    :cond_0
    iput-object p1, p0, Lcom/flurry/org/codehaus/jackson/map/ser/BeanSerializerFactory;->_factoryConfig:Lcom/flurry/org/codehaus/jackson/map/SerializerFactory$Config;

    .line 191
    return-void
.end method


# virtual methods
.method protected _constructWriter(Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;Lcom/flurry/org/codehaus/jackson/map/type/TypeBindings;Lcom/flurry/org/codehaus/jackson/map/ser/PropertyBuilder;ZLjava/lang/String;Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;)Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;
    .locals 13
    .param p1, "config"    # Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;
    .param p2, "typeContext"    # Lcom/flurry/org/codehaus/jackson/map/type/TypeBindings;
    .param p3, "pb"    # Lcom/flurry/org/codehaus/jackson/map/ser/PropertyBuilder;
    .param p4, "staticTyping"    # Z
    .param p5, "name"    # Ljava/lang/String;
    .param p6, "accessor"    # Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 757
    sget-object v2, Lcom/flurry/org/codehaus/jackson/map/SerializationConfig$Feature;->CAN_OVERRIDE_ACCESS_MODIFIERS:Lcom/flurry/org/codehaus/jackson/map/SerializationConfig$Feature;

    invoke-virtual {p1, v2}, Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;->isEnabled(Lcom/flurry/org/codehaus/jackson/map/SerializationConfig$Feature;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 758
    invoke-virtual/range {p6 .. p6}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;->fixAccess()V

    .line 760
    :cond_0
    move-object/from16 v0, p6

    invoke-virtual {v0, p2}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;->getType(Lcom/flurry/org/codehaus/jackson/map/type/TypeBindings;)Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v4

    .line 761
    .local v4, "type":Lcom/flurry/org/codehaus/jackson/type/JavaType;
    new-instance v12, Lcom/flurry/org/codehaus/jackson/map/BeanProperty$Std;

    invoke-virtual/range {p3 .. p3}, Lcom/flurry/org/codehaus/jackson/map/ser/PropertyBuilder;->getClassAnnotations()Lcom/flurry/org/codehaus/jackson/map/util/Annotations;

    move-result-object v2

    move-object/from16 v0, p5

    move-object/from16 v1, p6

    invoke-direct {v12, v0, v4, v2, v1}, Lcom/flurry/org/codehaus/jackson/map/BeanProperty$Std;-><init>(Ljava/lang/String;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/util/Annotations;Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;)V

    .line 764
    .local v12, "property":Lcom/flurry/org/codehaus/jackson/map/BeanProperty$Std;
    move-object/from16 v0, p6

    invoke-virtual {p0, p1, v0, v12}, Lcom/flurry/org/codehaus/jackson/map/ser/BeanSerializerFactory;->findSerializerFromAnnotation(Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;

    move-result-object v5

    .line 766
    .local v5, "annotatedSerializer":Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    const/4 v7, 0x0

    .line 767
    .local v7, "contentTypeSer":Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;
    invoke-virtual {v4}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lcom/flurry/org/codehaus/jackson/map/util/ClassUtil;->isCollectionMapOrArray(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 768
    move-object/from16 v0, p6

    invoke-virtual {p0, v4, p1, v0, v12}, Lcom/flurry/org/codehaus/jackson/map/ser/BeanSerializerFactory;->findPropertyContentTypeSerializer(Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;

    move-result-object v7

    .line 772
    :cond_1
    move-object/from16 v0, p6

    invoke-virtual {p0, v4, p1, v0, v12}, Lcom/flurry/org/codehaus/jackson/map/ser/BeanSerializerFactory;->findPropertyTypeSerializer(Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;

    move-result-object v6

    .local v6, "typeSer":Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;
    move-object/from16 v2, p3

    move-object/from16 v3, p5

    move-object/from16 v8, p6

    move/from16 v9, p4

    .line 773
    invoke-virtual/range {v2 .. v9}, Lcom/flurry/org/codehaus/jackson/map/ser/PropertyBuilder;->buildWriter(Ljava/lang/String;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;Z)Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;

    move-result-object v11

    .line 776
    .local v11, "pbw":Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;->getAnnotationIntrospector()Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object v10

    .line 777
    .local v10, "intr":Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;
    move-object/from16 v0, p6

    invoke-virtual {v10, v0}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;->findSerializationViews(Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;)[Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v11, v2}, Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;->setViews([Ljava/lang/Class;)V

    .line 778
    return-object v11
.end method

.method protected constructBeanSerializer(Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;
    .locals 19
    .param p1, "config"    # Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;
    .param p2, "beanDesc"    # Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;
    .param p3, "property"    # Lcom/flurry/org/codehaus/jackson/map/BeanProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;",
            "Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;",
            "Lcom/flurry/org/codehaus/jackson/map/BeanProperty;",
            ")",
            "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 423
    invoke-virtual/range {p2 .. p2}, Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;->getBeanClass()Ljava/lang/Class;

    move-result-object v4

    const-class v8, Ljava/lang/Object;

    if-ne v4, v8, :cond_0

    .line 424
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v8, "Can not create bean serializer for Object.class"

    invoke-direct {v4, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 427
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/flurry/org/codehaus/jackson/map/ser/BeanSerializerFactory;->constructBeanSerializerBuilder(Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;)Lcom/flurry/org/codehaus/jackson/map/ser/BeanSerializerBuilder;

    move-result-object v12

    .line 430
    .local v12, "builder":Lcom/flurry/org/codehaus/jackson/map/ser/BeanSerializerBuilder;
    invoke-virtual/range {p0 .. p2}, Lcom/flurry/org/codehaus/jackson/map/ser/BeanSerializerFactory;->findBeanProperties(Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;)Ljava/util/List;

    move-result-object v16

    .line 432
    .local v16, "props":Ljava/util/List;, "Ljava/util/List<Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;>;"
    if-nez v16, :cond_1

    .line 433
    new-instance v16, Ljava/util/ArrayList;

    .end local v16    # "props":Ljava/util/List;, "Ljava/util/List<Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;>;"
    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 436
    .restart local v16    # "props":Ljava/util/List;, "Ljava/util/List<Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;>;"
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/flurry/org/codehaus/jackson/map/ser/BeanSerializerFactory;->_factoryConfig:Lcom/flurry/org/codehaus/jackson/map/SerializerFactory$Config;

    invoke-virtual {v4}, Lcom/flurry/org/codehaus/jackson/map/SerializerFactory$Config;->hasSerializerModifiers()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 437
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/flurry/org/codehaus/jackson/map/ser/BeanSerializerFactory;->_factoryConfig:Lcom/flurry/org/codehaus/jackson/map/SerializerFactory$Config;

    invoke-virtual {v4}, Lcom/flurry/org/codehaus/jackson/map/SerializerFactory$Config;->serializerModifiers()Ljava/lang/Iterable;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/flurry/org/codehaus/jackson/map/ser/BeanSerializerModifier;

    .line 438
    .local v15, "mod":Lcom/flurry/org/codehaus/jackson/map/ser/BeanSerializerModifier;
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v16

    invoke-virtual {v15, v0, v1, v2}, Lcom/flurry/org/codehaus/jackson/map/ser/BeanSerializerModifier;->changeProperties(Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;Ljava/util/List;)Ljava/util/List;

    move-result-object v16

    goto :goto_0

    .line 443
    .end local v13    # "i$":Ljava/util/Iterator;
    .end local v15    # "mod":Lcom/flurry/org/codehaus/jackson/map/ser/BeanSerializerModifier;
    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v16

    invoke-virtual {v0, v1, v2, v3}, Lcom/flurry/org/codehaus/jackson/map/ser/BeanSerializerFactory;->filterBeanProperties(Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;Ljava/util/List;)Ljava/util/List;

    move-result-object v16

    .line 445
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v16

    invoke-virtual {v0, v1, v2, v3}, Lcom/flurry/org/codehaus/jackson/map/ser/BeanSerializerFactory;->sortBeanProperties(Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;Ljava/util/List;)Ljava/util/List;

    move-result-object v16

    .line 448
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/flurry/org/codehaus/jackson/map/ser/BeanSerializerFactory;->_factoryConfig:Lcom/flurry/org/codehaus/jackson/map/SerializerFactory$Config;

    invoke-virtual {v4}, Lcom/flurry/org/codehaus/jackson/map/SerializerFactory$Config;->hasSerializerModifiers()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 449
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/flurry/org/codehaus/jackson/map/ser/BeanSerializerFactory;->_factoryConfig:Lcom/flurry/org/codehaus/jackson/map/SerializerFactory$Config;

    invoke-virtual {v4}, Lcom/flurry/org/codehaus/jackson/map/SerializerFactory$Config;->serializerModifiers()Ljava/lang/Iterable;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .restart local v13    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/flurry/org/codehaus/jackson/map/ser/BeanSerializerModifier;

    .line 450
    .restart local v15    # "mod":Lcom/flurry/org/codehaus/jackson/map/ser/BeanSerializerModifier;
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v16

    invoke-virtual {v15, v0, v1, v2}, Lcom/flurry/org/codehaus/jackson/map/ser/BeanSerializerModifier;->orderProperties(Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;Ljava/util/List;)Ljava/util/List;

    move-result-object v16

    goto :goto_1

    .line 454
    .end local v13    # "i$":Ljava/util/Iterator;
    .end local v15    # "mod":Lcom/flurry/org/codehaus/jackson/map/ser/BeanSerializerModifier;
    :cond_3
    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/flurry/org/codehaus/jackson/map/ser/BeanSerializerBuilder;->setProperties(Ljava/util/List;)V

    .line 455
    invoke-virtual/range {p0 .. p2}, Lcom/flurry/org/codehaus/jackson/map/ser/BeanSerializerFactory;->findFilterId(Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v12, v4}, Lcom/flurry/org/codehaus/jackson/map/ser/BeanSerializerBuilder;->setFilterId(Ljava/lang/Object;)V

    .line 457
    invoke-virtual/range {p2 .. p2}, Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;->findAnyGetter()Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;

    move-result-object v11

    .line 458
    .local v11, "anyGetter":Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;
    if-eqz v11, :cond_5

    .line 459
    sget-object v4, Lcom/flurry/org/codehaus/jackson/map/SerializationConfig$Feature;->CAN_OVERRIDE_ACCESS_MODIFIERS:Lcom/flurry/org/codehaus/jackson/map/SerializationConfig$Feature;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;->isEnabled(Lcom/flurry/org/codehaus/jackson/map/SerializationConfig$Feature;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 460
    invoke-virtual {v11}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;->fixAccess()V

    .line 462
    :cond_4
    invoke-virtual/range {p2 .. p2}, Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;->bindingsForBeanType()Lcom/flurry/org/codehaus/jackson/map/type/TypeBindings;

    move-result-object v4

    invoke-virtual {v11, v4}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;->getType(Lcom/flurry/org/codehaus/jackson/map/type/TypeBindings;)Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v5

    .line 464
    .local v5, "type":Lcom/flurry/org/codehaus/jackson/type/JavaType;
    sget-object v4, Lcom/flurry/org/codehaus/jackson/map/SerializationConfig$Feature;->USE_STATIC_TYPING:Lcom/flurry/org/codehaus/jackson/map/SerializationConfig$Feature;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;->isEnabled(Lcom/flurry/org/codehaus/jackson/map/SerializationConfig$Feature;)Z

    move-result v6

    .line 465
    .local v6, "staticTyping":Z
    invoke-virtual {v5}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->getContentType()Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v18

    .line 466
    .local v18, "valueType":Lcom/flurry/org/codehaus/jackson/type/JavaType;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/flurry/org/codehaus/jackson/map/ser/BeanSerializerFactory;->createTypeSerializer(Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;

    move-result-object v7

    .line 468
    .local v7, "typeSer":Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;
    const/4 v4, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v8, p3

    invoke-static/range {v4 .. v10}, Lcom/flurry/org/codehaus/jackson/map/ser/std/MapSerializer;->construct([Ljava/lang/String;Lcom/flurry/org/codehaus/jackson/type/JavaType;ZLcom/flurry/org/codehaus/jackson/map/TypeSerializer;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;)Lcom/flurry/org/codehaus/jackson/map/ser/std/MapSerializer;

    move-result-object v14

    .line 470
    .local v14, "mapSer":Lcom/flurry/org/codehaus/jackson/map/ser/std/MapSerializer;
    new-instance v4, Lcom/flurry/org/codehaus/jackson/map/ser/AnyGetterWriter;

    invoke-direct {v4, v11, v14}, Lcom/flurry/org/codehaus/jackson/map/ser/AnyGetterWriter;-><init>(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;Lcom/flurry/org/codehaus/jackson/map/ser/std/MapSerializer;)V

    invoke-virtual {v12, v4}, Lcom/flurry/org/codehaus/jackson/map/ser/BeanSerializerBuilder;->setAnyGetter(Lcom/flurry/org/codehaus/jackson/map/ser/AnyGetterWriter;)V

    .line 473
    .end local v5    # "type":Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .end local v6    # "staticTyping":Z
    .end local v7    # "typeSer":Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;
    .end local v14    # "mapSer":Lcom/flurry/org/codehaus/jackson/map/ser/std/MapSerializer;
    .end local v18    # "valueType":Lcom/flurry/org/codehaus/jackson/type/JavaType;
    :cond_5
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v12}, Lcom/flurry/org/codehaus/jackson/map/ser/BeanSerializerFactory;->processViews(Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;Lcom/flurry/org/codehaus/jackson/map/ser/BeanSerializerBuilder;)V

    .line 475
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/flurry/org/codehaus/jackson/map/ser/BeanSerializerFactory;->_factoryConfig:Lcom/flurry/org/codehaus/jackson/map/SerializerFactory$Config;

    invoke-virtual {v4}, Lcom/flurry/org/codehaus/jackson/map/SerializerFactory$Config;->hasSerializerModifiers()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 476
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/flurry/org/codehaus/jackson/map/ser/BeanSerializerFactory;->_factoryConfig:Lcom/flurry/org/codehaus/jackson/map/SerializerFactory$Config;

    invoke-virtual {v4}, Lcom/flurry/org/codehaus/jackson/map/SerializerFactory$Config;->serializerModifiers()Ljava/lang/Iterable;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .restart local v13    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/flurry/org/codehaus/jackson/map/ser/BeanSerializerModifier;

    .line 477
    .restart local v15    # "mod":Lcom/flurry/org/codehaus/jackson/map/ser/BeanSerializerModifier;
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v15, v0, v1, v12}, Lcom/flurry/org/codehaus/jackson/map/ser/BeanSerializerModifier;->updateBuilder(Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;Lcom/flurry/org/codehaus/jackson/map/ser/BeanSerializerBuilder;)Lcom/flurry/org/codehaus/jackson/map/ser/BeanSerializerBuilder;

    move-result-object v12

    goto :goto_2

    .line 480
    .end local v13    # "i$":Ljava/util/Iterator;
    .end local v15    # "mod":Lcom/flurry/org/codehaus/jackson/map/ser/BeanSerializerModifier;
    :cond_6
    invoke-virtual {v12}, Lcom/flurry/org/codehaus/jackson/map/ser/BeanSerializerBuilder;->build()Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;

    move-result-object v17

    .line 485
    .local v17, "ser":Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    if-nez v17, :cond_7

    .line 490
    invoke-virtual/range {p2 .. p2}, Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;->hasKnownClassAnnotations()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 491
    invoke-virtual {v12}, Lcom/flurry/org/codehaus/jackson/map/ser/BeanSerializerBuilder;->createDummy()Lcom/flurry/org/codehaus/jackson/map/ser/BeanSerializer;

    move-result-object v17

    .line 494
    .end local v17    # "ser":Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    :cond_7
    return-object v17
.end method

.method protected constructBeanSerializerBuilder(Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;)Lcom/flurry/org/codehaus/jackson/map/ser/BeanSerializerBuilder;
    .locals 1
    .param p1, "beanDesc"    # Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;

    .prologue
    .line 514
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/ser/BeanSerializerBuilder;

    invoke-direct {v0, p1}, Lcom/flurry/org/codehaus/jackson/map/ser/BeanSerializerBuilder;-><init>(Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;)V

    return-object v0
.end method

.method protected constructFilteredBeanWriter(Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;[Ljava/lang/Class;)Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;
    .locals 1
    .param p1, "writer"    # Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;"
        }
    .end annotation

    .prologue
    .line 504
    .local p2, "inViews":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-static {p1, p2}, Lcom/flurry/org/codehaus/jackson/map/ser/FilteredBeanPropertyWriter;->constructViewBased(Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;[Ljava/lang/Class;)Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;

    move-result-object v0

    return-object v0
.end method

.method protected constructPropertyBuilder(Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;)Lcom/flurry/org/codehaus/jackson/map/ser/PropertyBuilder;
    .locals 1
    .param p1, "config"    # Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;
    .param p2, "beanDesc"    # Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;

    .prologue
    .line 510
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/ser/PropertyBuilder;

    invoke-direct {v0, p1, p2}, Lcom/flurry/org/codehaus/jackson/map/ser/PropertyBuilder;-><init>(Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;)V

    return-object v0
.end method

.method public createKeySerializer(Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;
    .locals 5
    .param p1, "config"    # Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;
    .param p2, "type"    # Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .param p3, "property"    # Lcom/flurry/org/codehaus/jackson/map/BeanProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;",
            "Lcom/flurry/org/codehaus/jackson/type/JavaType;",
            "Lcom/flurry/org/codehaus/jackson/map/BeanProperty;",
            ")",
            "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 305
    iget-object v4, p0, Lcom/flurry/org/codehaus/jackson/map/ser/BeanSerializerFactory;->_factoryConfig:Lcom/flurry/org/codehaus/jackson/map/SerializerFactory$Config;

    invoke-virtual {v4}, Lcom/flurry/org/codehaus/jackson/map/SerializerFactory$Config;->hasKeySerializers()Z

    move-result v4

    if-nez v4, :cond_1

    .line 306
    const/4 v2, 0x0

    .line 320
    :cond_0
    :goto_0
    return-object v2

    .line 310
    :cond_1
    invoke-virtual {p2}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;->introspectClassAnnotations(Ljava/lang/Class;)Lcom/flurry/org/codehaus/jackson/map/BeanDescription;

    move-result-object v0

    check-cast v0, Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;

    .line 311
    .local v0, "beanDesc":Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;
    const/4 v2, 0x0

    .line 314
    .local v2, "ser":Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer<*>;"
    iget-object v4, p0, Lcom/flurry/org/codehaus/jackson/map/ser/BeanSerializerFactory;->_factoryConfig:Lcom/flurry/org/codehaus/jackson/map/SerializerFactory$Config;

    invoke-virtual {v4}, Lcom/flurry/org/codehaus/jackson/map/SerializerFactory$Config;->keySerializers()Ljava/lang/Iterable;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/flurry/org/codehaus/jackson/map/Serializers;

    .line 315
    .local v3, "serializers":Lcom/flurry/org/codehaus/jackson/map/Serializers;
    invoke-interface {v3, p1, p2, v0, p3}, Lcom/flurry/org/codehaus/jackson/map/Serializers;->findSerializer(Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/BeanDescription;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;

    move-result-object v2

    .line 316
    if-eqz v2, :cond_2

    goto :goto_0
.end method

.method public createSerializer(Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;
    .locals 18
    .param p1, "config"    # Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;
    .param p2, "origType"    # Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .param p3, "property"    # Lcom/flurry/org/codehaus/jackson/map/BeanProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;",
            "Lcom/flurry/org/codehaus/jackson/type/JavaType;",
            "Lcom/flurry/org/codehaus/jackson/map/BeanProperty;",
            ")",
            "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 251
    invoke-virtual/range {p1 .. p2}, Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;->introspect(Lcom/flurry/org/codehaus/jackson/type/JavaType;)Lcom/flurry/org/codehaus/jackson/map/BeanDescription;

    move-result-object v6

    check-cast v6, Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;

    .line 252
    .local v6, "beanDesc":Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;
    invoke-virtual {v6}, Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;->getClassInfo()Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v3, v2}, Lcom/flurry/org/codehaus/jackson/map/ser/BeanSerializerFactory;->findSerializerFromAnnotation(Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;

    move-result-object v16

    .line 253
    .local v16, "ser":Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer<*>;"
    if-eqz v16, :cond_0

    move-object/from16 v3, v16

    .line 296
    :goto_0
    return-object v3

    .line 258
    :cond_0
    invoke-virtual {v6}, Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;->getClassInfo()Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v3, v2}, Lcom/flurry/org/codehaus/jackson/map/ser/BeanSerializerFactory;->modifyTypeByAnnotation(Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;Lcom/flurry/org/codehaus/jackson/type/JavaType;)Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v5

    .line 260
    .local v5, "type":Lcom/flurry/org/codehaus/jackson/type/JavaType;
    move-object/from16 v0, p2

    if-eq v5, v0, :cond_1

    const/4 v8, 0x1

    .line 263
    .local v8, "staticTyping":Z
    :goto_1
    invoke-virtual/range {p2 .. p2}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->isContainerType()Z

    move-result v3

    if-eqz v3, :cond_2

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v7, p3

    .line 264
    invoke-virtual/range {v3 .. v8}, Lcom/flurry/org/codehaus/jackson/map/ser/BeanSerializerFactory;->buildContainerSerializer(Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;Z)Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;

    move-result-object v3

    goto :goto_0

    .line 260
    .end local v8    # "staticTyping":Z
    :cond_1
    const/4 v8, 0x0

    goto :goto_1

    .line 268
    .restart local v8    # "staticTyping":Z
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/flurry/org/codehaus/jackson/map/ser/BeanSerializerFactory;->_factoryConfig:Lcom/flurry/org/codehaus/jackson/map/SerializerFactory$Config;

    invoke-virtual {v3}, Lcom/flurry/org/codehaus/jackson/map/SerializerFactory$Config;->serializers()Ljava/lang/Iterable;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/flurry/org/codehaus/jackson/map/Serializers;

    .line 269
    .local v17, "serializers":Lcom/flurry/org/codehaus/jackson/map/Serializers;
    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-interface {v0, v1, v5, v6, v2}, Lcom/flurry/org/codehaus/jackson/map/Serializers;->findSerializer(Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/BeanDescription;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;

    move-result-object v16

    .line 270
    if-eqz v16, :cond_3

    move-object/from16 v3, v16

    .line 271
    goto :goto_0

    .end local v17    # "serializers":Lcom/flurry/org/codehaus/jackson/map/Serializers;
    :cond_4
    move-object/from16 v9, p0

    move-object v10, v5

    move-object/from16 v11, p1

    move-object v12, v6

    move-object/from16 v13, p3

    move v14, v8

    .line 279
    invoke-virtual/range {v9 .. v14}, Lcom/flurry/org/codehaus/jackson/map/ser/BeanSerializerFactory;->findSerializerByLookup(Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;Z)Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;

    move-result-object v16

    .line 280
    if-nez v16, :cond_5

    move-object/from16 v9, p0

    move-object v10, v5

    move-object/from16 v11, p1

    move-object v12, v6

    move-object/from16 v13, p3

    move v14, v8

    .line 281
    invoke-virtual/range {v9 .. v14}, Lcom/flurry/org/codehaus/jackson/map/ser/BeanSerializerFactory;->findSerializerByPrimaryType(Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;Z)Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;

    move-result-object v16

    .line 282
    if-nez v16, :cond_5

    .line 287
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v5, v6, v2}, Lcom/flurry/org/codehaus/jackson/map/ser/BeanSerializerFactory;->findBeanSerializer(Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;

    move-result-object v16

    .line 291
    if-nez v16, :cond_5

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v7, p3

    .line 292
    invoke-virtual/range {v3 .. v8}, Lcom/flurry/org/codehaus/jackson/map/ser/BeanSerializerFactory;->findSerializerByAddonType(Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;Z)Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;

    move-result-object v16

    :cond_5
    move-object/from16 v3, v16

    .line 296
    goto/16 :goto_0
.end method

.method protected customSerializers()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/flurry/org/codehaus/jackson/map/Serializers;",
            ">;"
        }
    .end annotation

    .prologue
    .line 225
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ser/BeanSerializerFactory;->_factoryConfig:Lcom/flurry/org/codehaus/jackson/map/SerializerFactory$Config;

    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/map/SerializerFactory$Config;->serializers()Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method protected filterBeanProperties(Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;Ljava/util/List;)Ljava/util/List;
    .locals 6
    .param p1, "config"    # Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;
    .param p2, "beanDesc"    # Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;",
            "Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 607
    .local p3, "props":Ljava/util/List;, "Ljava/util/List<Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;>;"
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;->getAnnotationIntrospector()Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object v3

    .line 608
    .local v3, "intr":Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;
    invoke-virtual {p2}, Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;->getClassInfo()Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;

    move-result-object v0

    .line 609
    .local v0, "ac":Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;
    invoke-virtual {v3, v0}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;->findPropertiesToIgnore(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;)[Ljava/lang/String;

    move-result-object v1

    .line 610
    .local v1, "ignored":[Ljava/lang/String;
    if-eqz v1, :cond_1

    array-length v5, v1

    if-lez v5, :cond_1

    .line 611
    invoke-static {v1}, Lcom/flurry/org/codehaus/jackson/map/util/ArrayBuilders;->arrayToSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v2

    .line 612
    .local v2, "ignoredSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 613
    .local v4, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;>;"
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 614
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;

    invoke-virtual {v5}, Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 615
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 619
    .end local v2    # "ignoredSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v4    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;>;"
    :cond_1
    return-object p3
.end method

.method protected findBeanProperties(Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;)Ljava/util/List;
    .locals 17
    .param p1, "config"    # Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;
    .param p2, "beanDesc"    # Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;",
            "Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 554
    invoke-virtual/range {p2 .. p2}, Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;->findProperties()Ljava/util/List;

    move-result-object v14

    .line 555
    .local v14, "properties":Ljava/util/List;, "Ljava/util/List<Lcom/flurry/org/codehaus/jackson/map/BeanPropertyDefinition;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;->getAnnotationIntrospector()Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object v12

    .line 558
    .local v12, "intr":Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v14}, Lcom/flurry/org/codehaus/jackson/map/ser/BeanSerializerFactory;->removeIgnorableTypes(Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;Ljava/util/List;)V

    .line 561
    sget-object v3, Lcom/flurry/org/codehaus/jackson/map/SerializationConfig$Feature;->REQUIRE_SETTERS_FOR_GETTERS:Lcom/flurry/org/codehaus/jackson/map/SerializationConfig$Feature;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;->isEnabled(Lcom/flurry/org/codehaus/jackson/map/SerializationConfig$Feature;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 562
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v14}, Lcom/flurry/org/codehaus/jackson/map/ser/BeanSerializerFactory;->removeSetterlessGetters(Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;Ljava/util/List;)V

    .line 566
    :cond_0
    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 567
    const/16 v16, 0x0

    .line 591
    :cond_1
    return-object v16

    .line 571
    :cond_2
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/flurry/org/codehaus/jackson/map/ser/BeanSerializerFactory;->usesStaticTyping(Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)Z

    move-result v7

    .line 572
    .local v7, "staticTyping":Z
    invoke-virtual/range {p0 .. p2}, Lcom/flurry/org/codehaus/jackson/map/ser/BeanSerializerFactory;->constructPropertyBuilder(Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;)Lcom/flurry/org/codehaus/jackson/map/ser/PropertyBuilder;

    move-result-object v6

    .line 574
    .local v6, "pb":Lcom/flurry/org/codehaus/jackson/map/ser/PropertyBuilder;
    new-instance v16, Ljava/util/ArrayList;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v3

    move-object/from16 v0, v16

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 575
    .local v16, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;>;"
    invoke-virtual/range {p2 .. p2}, Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;->bindingsForBeanType()Lcom/flurry/org/codehaus/jackson/map/type/TypeBindings;

    move-result-object v5

    .line 577
    .local v5, "typeBind":Lcom/flurry/org/codehaus/jackson/map/type/TypeBindings;
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/flurry/org/codehaus/jackson/map/BeanPropertyDefinition;

    .line 578
    .local v15, "property":Lcom/flurry/org/codehaus/jackson/map/BeanPropertyDefinition;
    invoke-virtual {v15}, Lcom/flurry/org/codehaus/jackson/map/BeanPropertyDefinition;->getAccessor()Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;

    move-result-object v10

    .line 580
    .local v10, "accessor":Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;
    invoke-virtual {v12, v10}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;->findReferenceType(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;)Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector$ReferenceProperty;

    move-result-object v13

    .line 581
    .local v13, "prop":Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector$ReferenceProperty;
    if-eqz v13, :cond_4

    invoke-virtual {v13}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector$ReferenceProperty;->isBackReference()Z

    move-result v3

    if-nez v3, :cond_3

    .line 584
    :cond_4
    invoke-virtual {v15}, Lcom/flurry/org/codehaus/jackson/map/BeanPropertyDefinition;->getName()Ljava/lang/String;

    move-result-object v8

    .line 585
    .local v8, "name":Ljava/lang/String;
    instance-of v3, v10, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;

    if-eqz v3, :cond_5

    move-object v9, v10

    .line 586
    check-cast v9, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-virtual/range {v3 .. v9}, Lcom/flurry/org/codehaus/jackson/map/ser/BeanSerializerFactory;->_constructWriter(Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;Lcom/flurry/org/codehaus/jackson/map/type/TypeBindings;Lcom/flurry/org/codehaus/jackson/map/ser/PropertyBuilder;ZLjava/lang/String;Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;)Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    move-object v9, v10

    .line 588
    check-cast v9, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedField;

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-virtual/range {v3 .. v9}, Lcom/flurry/org/codehaus/jackson/map/ser/BeanSerializerFactory;->_constructWriter(Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;Lcom/flurry/org/codehaus/jackson/map/type/TypeBindings;Lcom/flurry/org/codehaus/jackson/map/ser/PropertyBuilder;ZLjava/lang/String;Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;)Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public findBeanSerializer(Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;
    .locals 4
    .param p1, "config"    # Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;
    .param p2, "type"    # Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .param p3, "beanDesc"    # Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;
    .param p4, "property"    # Lcom/flurry/org/codehaus/jackson/map/BeanProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;",
            "Lcom/flurry/org/codehaus/jackson/type/JavaType;",
            "Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;",
            "Lcom/flurry/org/codehaus/jackson/map/BeanProperty;",
            ")",
            "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 340
    invoke-virtual {p2}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/flurry/org/codehaus/jackson/map/ser/BeanSerializerFactory;->isPotentialBeanType(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 341
    const/4 v2, 0x0

    .line 350
    :cond_0
    return-object v2

    .line 343
    :cond_1
    invoke-virtual {p0, p1, p3, p4}, Lcom/flurry/org/codehaus/jackson/map/ser/BeanSerializerFactory;->constructBeanSerializer(Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;

    move-result-object v2

    .line 345
    .local v2, "serializer":Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/map/ser/BeanSerializerFactory;->_factoryConfig:Lcom/flurry/org/codehaus/jackson/map/SerializerFactory$Config;

    invoke-virtual {v3}, Lcom/flurry/org/codehaus/jackson/map/SerializerFactory$Config;->hasSerializerModifiers()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 346
    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/map/ser/BeanSerializerFactory;->_factoryConfig:Lcom/flurry/org/codehaus/jackson/map/SerializerFactory$Config;

    invoke-virtual {v3}, Lcom/flurry/org/codehaus/jackson/map/SerializerFactory$Config;->serializerModifiers()Ljava/lang/Iterable;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flurry/org/codehaus/jackson/map/ser/BeanSerializerModifier;

    .line 347
    .local v1, "mod":Lcom/flurry/org/codehaus/jackson/map/ser/BeanSerializerModifier;
    invoke-virtual {v1, p1, p3, v2}, Lcom/flurry/org/codehaus/jackson/map/ser/BeanSerializerModifier;->modifySerializer(Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;)Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;

    move-result-object v2

    goto :goto_0
.end method

.method protected findFilterId(Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;)Ljava/lang/Object;
    .locals 2
    .param p1, "config"    # Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;
    .param p2, "beanDesc"    # Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;

    .prologue
    .line 525
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;->getAnnotationIntrospector()Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object v0

    invoke-virtual {p2}, Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;->getClassInfo()Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;->findFilterId(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public findPropertyContentTypeSerializer(Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;
    .locals 5
    .param p1, "containerType"    # Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .param p2, "config"    # Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;
    .param p3, "accessor"    # Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;
    .param p4, "property"    # Lcom/flurry/org/codehaus/jackson/map/BeanProperty;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 395
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->getContentType()Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v2

    .line 396
    .local v2, "contentType":Lcom/flurry/org/codehaus/jackson/type/JavaType;
    invoke-virtual {p2}, Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;->getAnnotationIntrospector()Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object v0

    .line 397
    .local v0, "ai":Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;
    invoke-virtual {v0, p2, p3, p1}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;->findPropertyContentTypeResolver(Lcom/flurry/org/codehaus/jackson/map/MapperConfig;Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;Lcom/flurry/org/codehaus/jackson/type/JavaType;)Lcom/flurry/org/codehaus/jackson/map/jsontype/TypeResolverBuilder;

    move-result-object v1

    .line 399
    .local v1, "b":Lcom/flurry/org/codehaus/jackson/map/jsontype/TypeResolverBuilder;, "Lcom/flurry/org/codehaus/jackson/map/jsontype/TypeResolverBuilder<*>;"
    if-nez v1, :cond_0

    .line 400
    invoke-virtual {p0, p2, v2, p4}, Lcom/flurry/org/codehaus/jackson/map/ser/BeanSerializerFactory;->createTypeSerializer(Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;

    move-result-object v4

    .line 403
    :goto_0
    return-object v4

    .line 402
    :cond_0
    invoke-virtual {p2}, Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;->getSubtypeResolver()Lcom/flurry/org/codehaus/jackson/map/jsontype/SubtypeResolver;

    move-result-object v4

    invoke-virtual {v4, p3, p2, v0}, Lcom/flurry/org/codehaus/jackson/map/jsontype/SubtypeResolver;->collectAndResolveSubtypes(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;Lcom/flurry/org/codehaus/jackson/map/MapperConfig;Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;)Ljava/util/Collection;

    move-result-object v3

    .line 403
    .local v3, "subtypes":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/flurry/org/codehaus/jackson/map/jsontype/NamedType;>;"
    invoke-interface {v1, p2, v2, v3, p4}, Lcom/flurry/org/codehaus/jackson/map/jsontype/TypeResolverBuilder;->buildTypeSerializer(Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;Lcom/flurry/org/codehaus/jackson/type/JavaType;Ljava/util/Collection;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;

    move-result-object v4

    goto :goto_0
.end method

.method public findPropertyTypeSerializer(Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;
    .locals 4
    .param p1, "baseType"    # Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .param p2, "config"    # Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;
    .param p3, "accessor"    # Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;
    .param p4, "property"    # Lcom/flurry/org/codehaus/jackson/map/BeanProperty;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 369
    invoke-virtual {p2}, Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;->getAnnotationIntrospector()Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object v0

    .line 370
    .local v0, "ai":Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;
    invoke-virtual {v0, p2, p3, p1}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;->findPropertyTypeResolver(Lcom/flurry/org/codehaus/jackson/map/MapperConfig;Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;Lcom/flurry/org/codehaus/jackson/type/JavaType;)Lcom/flurry/org/codehaus/jackson/map/jsontype/TypeResolverBuilder;

    move-result-object v1

    .line 372
    .local v1, "b":Lcom/flurry/org/codehaus/jackson/map/jsontype/TypeResolverBuilder;, "Lcom/flurry/org/codehaus/jackson/map/jsontype/TypeResolverBuilder<*>;"
    if-nez v1, :cond_0

    .line 373
    invoke-virtual {p0, p2, p1, p4}, Lcom/flurry/org/codehaus/jackson/map/ser/BeanSerializerFactory;->createTypeSerializer(Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;

    move-result-object v3

    .line 376
    :goto_0
    return-object v3

    .line 375
    :cond_0
    invoke-virtual {p2}, Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;->getSubtypeResolver()Lcom/flurry/org/codehaus/jackson/map/jsontype/SubtypeResolver;

    move-result-object v3

    invoke-virtual {v3, p3, p2, v0}, Lcom/flurry/org/codehaus/jackson/map/jsontype/SubtypeResolver;->collectAndResolveSubtypes(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;Lcom/flurry/org/codehaus/jackson/map/MapperConfig;Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;)Ljava/util/Collection;

    move-result-object v2

    .line 376
    .local v2, "subtypes":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/flurry/org/codehaus/jackson/map/jsontype/NamedType;>;"
    invoke-interface {v1, p2, p1, v2, p4}, Lcom/flurry/org/codehaus/jackson/map/jsontype/TypeResolverBuilder;->buildTypeSerializer(Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;Lcom/flurry/org/codehaus/jackson/type/JavaType;Ljava/util/Collection;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;

    move-result-object v3

    goto :goto_0
.end method

.method public getConfig()Lcom/flurry/org/codehaus/jackson/map/SerializerFactory$Config;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ser/BeanSerializerFactory;->_factoryConfig:Lcom/flurry/org/codehaus/jackson/map/SerializerFactory$Config;

    return-object v0
.end method

.method protected isPotentialBeanType(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 544
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p1}, Lcom/flurry/org/codehaus/jackson/map/util/ClassUtil;->canBeABeanType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/flurry/org/codehaus/jackson/map/util/ClassUtil;->isProxyType(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected processViews(Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;Lcom/flurry/org/codehaus/jackson/map/ser/BeanSerializerBuilder;)V
    .locals 9
    .param p1, "config"    # Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;
    .param p2, "builder"    # Lcom/flurry/org/codehaus/jackson/map/ser/BeanSerializerBuilder;

    .prologue
    .line 663
    invoke-virtual {p2}, Lcom/flurry/org/codehaus/jackson/map/ser/BeanSerializerBuilder;->getProperties()Ljava/util/List;

    move-result-object v5

    .line 664
    .local v5, "props":Ljava/util/List;, "Ljava/util/List<Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;>;"
    sget-object v8, Lcom/flurry/org/codehaus/jackson/map/SerializationConfig$Feature;->DEFAULT_VIEW_INCLUSION:Lcom/flurry/org/codehaus/jackson/map/SerializationConfig$Feature;

    invoke-virtual {p1, v8}, Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;->isEnabled(Lcom/flurry/org/codehaus/jackson/map/SerializationConfig$Feature;)Z

    move-result v3

    .line 665
    .local v3, "includeByDefault":Z
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    .line 666
    .local v4, "propCount":I
    const/4 v7, 0x0

    .line 667
    .local v7, "viewsFound":I
    new-array v1, v4, [Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;

    .line 669
    .local v1, "filtered":[Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_2

    .line 670
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;

    .line 671
    .local v0, "bpw":Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;
    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;->getViews()[Ljava/lang/Class;

    move-result-object v6

    .line 672
    .local v6, "views":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    if-nez v6, :cond_1

    .line 673
    if-eqz v3, :cond_0

    .line 674
    aput-object v0, v1, v2

    .line 669
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 677
    :cond_1
    add-int/lit8 v7, v7, 0x1

    .line 678
    invoke-virtual {p0, v0, v6}, Lcom/flurry/org/codehaus/jackson/map/ser/BeanSerializerFactory;->constructFilteredBeanWriter(Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;[Ljava/lang/Class;)Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;

    move-result-object v8

    aput-object v8, v1, v2

    goto :goto_1

    .line 682
    .end local v0    # "bpw":Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;
    .end local v6    # "views":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_2
    if-eqz v3, :cond_3

    if-nez v7, :cond_3

    .line 686
    :goto_2
    return-void

    .line 685
    :cond_3
    invoke-virtual {p2, v1}, Lcom/flurry/org/codehaus/jackson/map/ser/BeanSerializerBuilder;->setFilteredProperties([Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;)V

    goto :goto_2
.end method

.method protected removeIgnorableTypes(Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;Ljava/util/List;)V
    .locals 10
    .param p1, "config"    # Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;
    .param p2, "beanDesc"    # Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;",
            "Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/org/codehaus/jackson/map/BeanPropertyDefinition;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 696
    .local p3, "properties":Ljava/util/List;, "Ljava/util/List<Lcom/flurry/org/codehaus/jackson/map/BeanPropertyDefinition;>;"
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;->getAnnotationIntrospector()Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object v4

    .line 697
    .local v4, "intr":Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 698
    .local v3, "ignores":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Class<*>;Ljava/lang/Boolean;>;"
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 699
    .local v5, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/flurry/org/codehaus/jackson/map/BeanPropertyDefinition;>;"
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 700
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/flurry/org/codehaus/jackson/map/BeanPropertyDefinition;

    .line 701
    .local v6, "property":Lcom/flurry/org/codehaus/jackson/map/BeanPropertyDefinition;
    invoke-virtual {v6}, Lcom/flurry/org/codehaus/jackson/map/BeanPropertyDefinition;->getAccessor()Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;

    move-result-object v1

    .line 702
    .local v1, "accessor":Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;
    if-nez v1, :cond_1

    .line 703
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 706
    :cond_1
    invoke-virtual {v1}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;->getRawType()Ljava/lang/Class;

    move-result-object v8

    .line 707
    .local v8, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v3, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    .line 708
    .local v7, "result":Ljava/lang/Boolean;
    if-nez v7, :cond_3

    .line 709
    invoke-virtual {p1, v8}, Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;->introspectClassAnnotations(Ljava/lang/Class;)Lcom/flurry/org/codehaus/jackson/map/BeanDescription;

    move-result-object v2

    check-cast v2, Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;

    .line 710
    .local v2, "desc":Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;
    invoke-virtual {v2}, Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;->getClassInfo()Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;

    move-result-object v0

    .line 711
    .local v0, "ac":Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;
    invoke-virtual {v4, v0}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;->isIgnorableType(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/Boolean;

    move-result-object v7

    .line 713
    if-nez v7, :cond_2

    .line 714
    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 716
    :cond_2
    invoke-virtual {v3, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 719
    .end local v0    # "ac":Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;
    .end local v2    # "desc":Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;
    :cond_3
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 720
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 723
    .end local v1    # "accessor":Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;
    .end local v6    # "property":Lcom/flurry/org/codehaus/jackson/map/BeanPropertyDefinition;
    .end local v7    # "result":Ljava/lang/Boolean;
    .end local v8    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_4
    return-void
.end method

.method protected removeSetterlessGetters(Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;Ljava/util/List;)V
    .locals 3
    .param p1, "config"    # Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;
    .param p2, "beanDesc"    # Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;",
            "Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/org/codehaus/jackson/map/BeanPropertyDefinition;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 734
    .local p3, "properties":Ljava/util/List;, "Ljava/util/List<Lcom/flurry/org/codehaus/jackson/map/BeanPropertyDefinition;>;"
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 735
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/flurry/org/codehaus/jackson/map/BeanPropertyDefinition;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 736
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flurry/org/codehaus/jackson/map/BeanPropertyDefinition;

    .line 737
    .local v1, "property":Lcom/flurry/org/codehaus/jackson/map/BeanPropertyDefinition;
    invoke-virtual {v1}, Lcom/flurry/org/codehaus/jackson/map/BeanPropertyDefinition;->couldDeserialize()Z

    move-result v2

    if-nez v2, :cond_0

    .line 738
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 741
    .end local v1    # "property":Lcom/flurry/org/codehaus/jackson/map/BeanPropertyDefinition;
    :cond_1
    return-void
.end method

.method protected sortBeanProperties(Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p1, "config"    # Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;
    .param p2, "beanDesc"    # Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;",
            "Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 645
    .local p3, "props":Ljava/util/List;, "Ljava/util/List<Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;>;"
    return-object p3
.end method

.method public withConfig(Lcom/flurry/org/codehaus/jackson/map/SerializerFactory$Config;)Lcom/flurry/org/codehaus/jackson/map/SerializerFactory;
    .locals 3
    .param p1, "config"    # Lcom/flurry/org/codehaus/jackson/map/SerializerFactory$Config;

    .prologue
    .line 206
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ser/BeanSerializerFactory;->_factoryConfig:Lcom/flurry/org/codehaus/jackson/map/SerializerFactory$Config;

    if-ne v0, p1, :cond_0

    .line 220
    .end local p0    # "this":Lcom/flurry/org/codehaus/jackson/map/ser/BeanSerializerFactory;
    :goto_0
    return-object p0

    .line 215
    .restart local p0    # "this":Lcom/flurry/org/codehaus/jackson/map/ser/BeanSerializerFactory;
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/flurry/org/codehaus/jackson/map/ser/BeanSerializerFactory;

    if-eq v0, v1, :cond_1

    .line 216
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Subtype of BeanSerializerFactory ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") has not properly overridden method \'withAdditionalSerializers\': can not instantiate subtype with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "additional serializer definitions"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 220
    :cond_1
    new-instance p0, Lcom/flurry/org/codehaus/jackson/map/ser/BeanSerializerFactory;

    .end local p0    # "this":Lcom/flurry/org/codehaus/jackson/map/ser/BeanSerializerFactory;
    invoke-direct {p0, p1}, Lcom/flurry/org/codehaus/jackson/map/ser/BeanSerializerFactory;-><init>(Lcom/flurry/org/codehaus/jackson/map/SerializerFactory$Config;)V

    goto :goto_0
.end method
