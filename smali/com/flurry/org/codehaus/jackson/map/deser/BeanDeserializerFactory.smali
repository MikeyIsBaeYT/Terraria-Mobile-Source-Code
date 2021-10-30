.class public Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerFactory;
.super Lcom/flurry/org/codehaus/jackson/map/deser/BasicDeserializerFactory;
.source "BeanDeserializerFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;
    }
.end annotation


# static fields
.field private static final INIT_CAUSE_PARAMS:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field public static final instance:Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerFactory;


# instance fields
.field protected final _factoryConfig:Lcom/flurry/org/codehaus/jackson/map/DeserializerFactory$Config;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 32
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Ljava/lang/Throwable;

    aput-object v2, v0, v1

    sput-object v0, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerFactory;->INIT_CAUSE_PARAMS:[Ljava/lang/Class;

    .line 227
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerFactory;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerFactory;-><init>(Lcom/flurry/org/codehaus/jackson/map/DeserializerFactory$Config;)V

    sput-object v0, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerFactory;->instance:Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 239
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerFactory;-><init>(Lcom/flurry/org/codehaus/jackson/map/DeserializerFactory$Config;)V

    .line 240
    return-void
.end method

.method public constructor <init>(Lcom/flurry/org/codehaus/jackson/map/DeserializerFactory$Config;)V
    .locals 0
    .param p1, "config"    # Lcom/flurry/org/codehaus/jackson/map/DeserializerFactory$Config;

    .prologue
    .line 245
    invoke-direct {p0}, Lcom/flurry/org/codehaus/jackson/map/deser/BasicDeserializerFactory;-><init>()V

    .line 246
    if-nez p1, :cond_0

    .line 247
    new-instance p1, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;

    .end local p1    # "config":Lcom/flurry/org/codehaus/jackson/map/DeserializerFactory$Config;
    invoke-direct {p1}, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;-><init>()V

    .line 249
    .restart local p1    # "config":Lcom/flurry/org/codehaus/jackson/map/DeserializerFactory$Config;
    :cond_0
    iput-object p1, p0, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerFactory;->_factoryConfig:Lcom/flurry/org/codehaus/jackson/map/DeserializerFactory$Config;

    .line 250
    return-void
.end method

.method private _createEnumKeyDeserializer(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)Lcom/flurry/org/codehaus/jackson/map/KeyDeserializer;
    .locals 10
    .param p1, "config"    # Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;
    .param p2, "type"    # Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .param p3, "property"    # Lcom/flurry/org/codehaus/jackson/map/BeanProperty;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 331
    invoke-virtual {p1, p2}, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;->introspect(Lcom/flurry/org/codehaus/jackson/type/JavaType;)Lcom/flurry/org/codehaus/jackson/map/BeanDescription;

    move-result-object v1

    check-cast v1, Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;

    .line 332
    .local v1, "beanDesc":Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;
    invoke-virtual {p2}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v2

    .line 333
    .local v2, "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0, v2, p1}, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerFactory;->constructEnumResolver(Ljava/lang/Class;Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;)Lcom/flurry/org/codehaus/jackson/map/util/EnumResolver;

    move-result-object v3

    .line 335
    .local v3, "enumRes":Lcom/flurry/org/codehaus/jackson/map/util/EnumResolver;, "Lcom/flurry/org/codehaus/jackson/map/util/EnumResolver<*>;"
    invoke-virtual {v1}, Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;->getFactoryMethods()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;

    .line 336
    .local v4, "factory":Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;->getAnnotationIntrospector()Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;->hasCreatorAnnotation(Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 337
    invoke-virtual {v4}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;->getParameterCount()I

    move-result v0

    .line 338
    .local v0, "argCount":I
    const/4 v7, 0x1

    if-ne v0, v7, :cond_3

    .line 339
    invoke-virtual {v4}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;->getRawType()Ljava/lang/Class;

    move-result-object v6

    .line 341
    .local v6, "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v6, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 343
    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;->getParameterType(I)Ljava/lang/reflect/Type;

    move-result-object v7

    const-class v8, Ljava/lang/String;

    if-eq v7, v8, :cond_1

    .line 344
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Parameter #0 type for factory method ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") not suitable, must be java.lang.String"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 346
    :cond_1
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;->canOverrideAccessModifiers()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 347
    invoke-virtual {v4}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;->getMember()Ljava/lang/reflect/Member;

    move-result-object v7

    invoke-static {v7}, Lcom/flurry/org/codehaus/jackson/map/util/ClassUtil;->checkAndFixAccess(Ljava/lang/reflect/Member;)V

    .line 349
    :cond_2
    invoke-static {v3, v4}, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdKeyDeserializers;->constructEnumKeyDeserializer(Lcom/flurry/org/codehaus/jackson/map/util/EnumResolver;Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;)Lcom/flurry/org/codehaus/jackson/map/KeyDeserializer;

    move-result-object v7

    .line 357
    .end local v0    # "argCount":I
    .end local v4    # "factory":Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;
    .end local v6    # "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    return-object v7

    .line 352
    .restart local v0    # "argCount":I
    .restart local v4    # "factory":Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;
    :cond_3
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unsuitable method ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") decorated with @JsonCreator (for Enum type "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 357
    .end local v0    # "argCount":I
    .end local v4    # "factory":Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;
    :cond_4
    invoke-static {v3}, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdKeyDeserializers;->constructEnumKeyDeserializer(Lcom/flurry/org/codehaus/jackson/map/util/EnumResolver;)Lcom/flurry/org/codehaus/jackson/map/KeyDeserializer;

    move-result-object v7

    goto :goto_0
.end method

.method static synthetic access$000()[Lcom/flurry/org/codehaus/jackson/map/Deserializers;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerFactory;->NO_DESERIALIZERS:[Lcom/flurry/org/codehaus/jackson/map/Deserializers;

    return-object v0
.end method


# virtual methods
.method protected _addDeserializerConstructors(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker;Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;Lcom/flurry/org/codehaus/jackson/map/deser/impl/CreatorCollector;)V
    .locals 25
    .param p1, "config"    # Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;
    .param p2, "beanDesc"    # Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;
    .param p4, "intr"    # Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;
    .param p5, "creators"    # Lcom/flurry/org/codehaus/jackson/map/deser/impl/CreatorCollector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;",
            "Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;",
            "Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker",
            "<*>;",
            "Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;",
            "Lcom/flurry/org/codehaus/jackson/map/deser/impl/CreatorCollector;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 851
    .local p3, "vchecker":Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker;, "Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker<*>;"
    invoke-virtual/range {p2 .. p2}, Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;->getConstructors()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .local v20, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedConstructor;

    .line 852
    .local v8, "ctor":Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedConstructor;
    invoke-virtual {v8}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedConstructor;->getParameterCount()I

    move-result v19

    .line 853
    .local v19, "argCount":I
    const/4 v2, 0x1

    move/from16 v0, v19

    if-lt v0, v2, :cond_0

    .line 856
    move-object/from16 v0, p4

    invoke-virtual {v0, v8}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;->hasCreatorAnnotation(Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;)Z

    move-result v9

    .line 857
    .local v9, "isCreator":Z
    move-object/from16 v0, p3

    invoke-interface {v0, v8}, Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker;->isCreatorVisible(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;)Z

    move-result v10

    .line 859
    .local v10, "isVisible":Z
    const/4 v2, 0x1

    move/from16 v0, v19

    if-ne v0, v2, :cond_1

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    .line 860
    invoke-virtual/range {v2 .. v10}, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerFactory;->_handleSingleArgumentConstructor(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker;Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;Lcom/flurry/org/codehaus/jackson/map/deser/impl/CreatorCollector;Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedConstructor;ZZ)Z

    goto :goto_0

    .line 864
    :cond_1
    if-nez v9, :cond_2

    if-eqz v10, :cond_0

    .line 871
    :cond_2
    const/16 v18, 0x0

    .line 875
    .local v18, "annotationFound":Z
    const/16 v23, 0x0

    .line 876
    .local v23, "nonAnnotatedParam":Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedParameter;
    const/16 v22, 0x0

    .line 877
    .local v22, "namedCount":I
    const/16 v21, 0x0

    .line 878
    .local v21, "injectCount":I
    move/from16 v0, v19

    new-array v0, v0, [Lcom/flurry/org/codehaus/jackson/map/deser/impl/CreatorProperty;

    move-object/from16 v24, v0

    .line 879
    .local v24, "properties":[Lcom/flurry/org/codehaus/jackson/map/deser/impl/CreatorProperty;
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_1
    move/from16 v0, v19

    if-ge v15, v0, :cond_7

    .line 880
    invoke-virtual {v8, v15}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedConstructor;->getParameter(I)Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedParameter;

    move-result-object v16

    .line 881
    .local v16, "param":Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedParameter;
    if-nez v16, :cond_4

    const/4 v14, 0x0

    .line 882
    .local v14, "name":Ljava/lang/String;
    :goto_2
    move-object/from16 v0, p4

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;->findInjectableValueId(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;)Ljava/lang/Object;

    move-result-object v17

    .line 883
    .local v17, "injectId":Ljava/lang/Object;
    if-eqz v14, :cond_5

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_5

    .line 884
    add-int/lit8 v22, v22, 0x1

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    .line 885
    invoke-virtual/range {v11 .. v17}, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerFactory;->constructCreatorProperty(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;Ljava/lang/String;ILcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedParameter;Ljava/lang/Object;)Lcom/flurry/org/codehaus/jackson/map/deser/impl/CreatorProperty;

    move-result-object v2

    aput-object v2, v24, v15

    .line 879
    :cond_3
    :goto_3
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 881
    .end local v14    # "name":Ljava/lang/String;
    .end local v17    # "injectId":Ljava/lang/Object;
    :cond_4
    move-object/from16 v0, p4

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;->findPropertyNameForParam(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedParameter;)Ljava/lang/String;

    move-result-object v14

    goto :goto_2

    .line 886
    .restart local v14    # "name":Ljava/lang/String;
    .restart local v17    # "injectId":Ljava/lang/Object;
    :cond_5
    if-eqz v17, :cond_6

    .line 887
    add-int/lit8 v21, v21, 0x1

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    .line 888
    invoke-virtual/range {v11 .. v17}, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerFactory;->constructCreatorProperty(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;Ljava/lang/String;ILcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedParameter;Ljava/lang/Object;)Lcom/flurry/org/codehaus/jackson/map/deser/impl/CreatorProperty;

    move-result-object v2

    aput-object v2, v24, v15

    goto :goto_3

    .line 889
    :cond_6
    if-nez v23, :cond_3

    .line 890
    move-object/from16 v23, v16

    goto :goto_3

    .line 895
    .end local v14    # "name":Ljava/lang/String;
    .end local v16    # "param":Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedParameter;
    .end local v17    # "injectId":Ljava/lang/Object;
    :cond_7
    if-nez v9, :cond_8

    if-gtz v22, :cond_8

    if-lez v21, :cond_9

    .line 897
    :cond_8
    add-int v2, v22, v21

    move/from16 v0, v19

    if-ne v2, v0, :cond_a

    .line 898
    move-object/from16 v0, p5

    move-object/from16 v1, v24

    invoke-virtual {v0, v8, v1}, Lcom/flurry/org/codehaus/jackson/map/deser/impl/CreatorCollector;->addPropertyCreator(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;[Lcom/flurry/org/codehaus/jackson/map/deser/impl/CreatorProperty;)V

    .line 908
    :cond_9
    if-eqz v18, :cond_0

    .line 909
    move-object/from16 v0, p5

    move-object/from16 v1, v24

    invoke-virtual {v0, v8, v1}, Lcom/flurry/org/codehaus/jackson/map/deser/impl/CreatorCollector;->addPropertyCreator(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;[Lcom/flurry/org/codehaus/jackson/map/deser/impl/CreatorProperty;)V

    goto/16 :goto_0

    .line 899
    :cond_a
    if-nez v22, :cond_b

    add-int/lit8 v2, v21, 0x1

    move/from16 v0, v19

    if-ne v2, v0, :cond_b

    .line 902
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Delegated constructor with Injectables not yet supported (see [JACKSON-712]) for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 905
    :cond_b
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Argument #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v23 .. v23}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedParameter;->getIndex()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " of constructor "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " has no property name annotation; must have name when multiple-paramater constructor annotated as Creator"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 912
    .end local v8    # "ctor":Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedConstructor;
    .end local v9    # "isCreator":Z
    .end local v10    # "isVisible":Z
    .end local v15    # "i":I
    .end local v18    # "annotationFound":Z
    .end local v19    # "argCount":I
    .end local v21    # "injectCount":I
    .end local v22    # "namedCount":I
    .end local v23    # "nonAnnotatedParam":Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedParameter;
    .end local v24    # "properties":[Lcom/flurry/org/codehaus/jackson/map/deser/impl/CreatorProperty;
    :cond_c
    return-void
.end method

.method protected _addDeserializerFactoryMethods(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker;Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;Lcom/flurry/org/codehaus/jackson/map/deser/impl/CreatorCollector;)V
    .locals 21
    .param p1, "config"    # Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;
    .param p2, "beanDesc"    # Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;
    .param p4, "intr"    # Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;
    .param p5, "creators"    # Lcom/flurry/org/codehaus/jackson/map/deser/impl/CreatorCollector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;",
            "Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;",
            "Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker",
            "<*>;",
            "Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;",
            "Lcom/flurry/org/codehaus/jackson/map/deser/impl/CreatorCollector;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 974
    .local p3, "vchecker":Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker;, "Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker<*>;"
    invoke-virtual/range {p2 .. p2}, Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;->getFactoryMethods()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;

    .line 975
    .local v8, "factory":Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;
    invoke-virtual {v8}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;->getParameterCount()I

    move-result v17

    .line 976
    .local v17, "argCount":I
    const/4 v2, 0x1

    move/from16 v0, v17

    if-lt v0, v2, :cond_0

    .line 979
    move-object/from16 v0, p4

    invoke-virtual {v0, v8}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;->hasCreatorAnnotation(Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;)Z

    move-result v9

    .line 981
    .local v9, "isCreator":Z
    const/4 v2, 0x1

    move/from16 v0, v17

    if-ne v0, v2, :cond_2

    .line 982
    const/4 v2, 0x0

    invoke-virtual {v8, v2}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;->getParameter(I)Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedParameter;

    move-result-object v15

    .line 983
    .local v15, "param":Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedParameter;
    move-object/from16 v0, p4

    invoke-virtual {v0, v15}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;->findPropertyNameForParam(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedParameter;)Ljava/lang/String;

    move-result-object v13

    .line 984
    .local v13, "name":Ljava/lang/String;
    move-object/from16 v0, p4

    invoke-virtual {v0, v15}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;->findInjectableValueId(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;)Ljava/lang/Object;

    move-result-object v19

    .line 986
    .local v19, "injectId":Ljava/lang/Object;
    if-nez v19, :cond_3

    if-eqz v13, :cond_1

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_3

    :cond_1
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    .line 987
    invoke-virtual/range {v2 .. v9}, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerFactory;->_handleSingleArgumentFactory(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker;Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;Lcom/flurry/org/codehaus/jackson/map/deser/impl/CreatorCollector;Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;Z)Z

    goto :goto_0

    .line 995
    .end local v13    # "name":Ljava/lang/String;
    .end local v15    # "param":Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedParameter;
    .end local v19    # "injectId":Ljava/lang/Object;
    :cond_2
    move-object/from16 v0, p4

    invoke-virtual {v0, v8}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;->hasCreatorAnnotation(Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1000
    :cond_3
    move/from16 v0, v17

    new-array v0, v0, [Lcom/flurry/org/codehaus/jackson/map/deser/impl/CreatorProperty;

    move-object/from16 v20, v0

    .line 1001
    .local v20, "properties":[Lcom/flurry/org/codehaus/jackson/map/deser/impl/CreatorProperty;
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_1
    move/from16 v0, v17

    if-ge v14, v0, :cond_6

    .line 1002
    invoke-virtual {v8, v14}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;->getParameter(I)Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedParameter;

    move-result-object v15

    .line 1003
    .restart local v15    # "param":Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedParameter;
    move-object/from16 v0, p4

    invoke-virtual {v0, v15}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;->findPropertyNameForParam(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedParameter;)Ljava/lang/String;

    move-result-object v13

    .line 1004
    .restart local v13    # "name":Ljava/lang/String;
    move-object/from16 v0, p4

    invoke-virtual {v0, v15}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;->findInjectableValueId(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;)Ljava/lang/Object;

    move-result-object v16

    .line 1006
    .local v16, "injectableId":Ljava/lang/Object;
    if-eqz v13, :cond_4

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_5

    :cond_4
    if-nez v16, :cond_5

    .line 1007
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Argument #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " of factory method "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " has no property name annotation; must have when multiple-paramater static method annotated as Creator"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_5
    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    .line 1009
    invoke-virtual/range {v10 .. v16}, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerFactory;->constructCreatorProperty(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;Ljava/lang/String;ILcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedParameter;Ljava/lang/Object;)Lcom/flurry/org/codehaus/jackson/map/deser/impl/CreatorProperty;

    move-result-object v2

    aput-object v2, v20, v14

    .line 1001
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 1011
    .end local v13    # "name":Ljava/lang/String;
    .end local v15    # "param":Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedParameter;
    .end local v16    # "injectableId":Ljava/lang/Object;
    :cond_6
    move-object/from16 v0, p5

    move-object/from16 v1, v20

    invoke-virtual {v0, v8, v1}, Lcom/flurry/org/codehaus/jackson/map/deser/impl/CreatorCollector;->addPropertyCreator(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;[Lcom/flurry/org/codehaus/jackson/map/deser/impl/CreatorProperty;)V

    goto/16 :goto_0

    .line 1013
    .end local v8    # "factory":Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;
    .end local v9    # "isCreator":Z
    .end local v14    # "i":I
    .end local v17    # "argCount":I
    .end local v20    # "properties":[Lcom/flurry/org/codehaus/jackson/map/deser/impl/CreatorProperty;
    :cond_7
    return-void
.end method

.method protected _findCustomArrayDeserializer(Lcom/flurry/org/codehaus/jackson/map/type/ArrayType;Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/map/DeserializerProvider;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;Lcom/flurry/org/codehaus/jackson/map/TypeDeserializer;Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;)Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;
    .locals 9
    .param p1, "type"    # Lcom/flurry/org/codehaus/jackson/map/type/ArrayType;
    .param p2, "config"    # Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;
    .param p3, "provider"    # Lcom/flurry/org/codehaus/jackson/map/DeserializerProvider;
    .param p4, "property"    # Lcom/flurry/org/codehaus/jackson/map/BeanProperty;
    .param p5, "elementTypeDeserializer"    # Lcom/flurry/org/codehaus/jackson/map/TypeDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/type/ArrayType;",
            "Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;",
            "Lcom/flurry/org/codehaus/jackson/map/DeserializerProvider;",
            "Lcom/flurry/org/codehaus/jackson/map/BeanProperty;",
            "Lcom/flurry/org/codehaus/jackson/map/TypeDeserializer;",
            "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer",
            "<*>;)",
            "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 367
    .local p6, "elementDeserializer":Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer<*>;"
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerFactory;->_factoryConfig:Lcom/flurry/org/codehaus/jackson/map/DeserializerFactory$Config;

    invoke-virtual {v1}, Lcom/flurry/org/codehaus/jackson/map/DeserializerFactory$Config;->deserializers()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/org/codehaus/jackson/map/Deserializers;

    .local v0, "d":Lcom/flurry/org/codehaus/jackson/map/Deserializers;
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 368
    invoke-interface/range {v0 .. v6}, Lcom/flurry/org/codehaus/jackson/map/Deserializers;->findArrayDeserializer(Lcom/flurry/org/codehaus/jackson/map/type/ArrayType;Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/map/DeserializerProvider;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;Lcom/flurry/org/codehaus/jackson/map/TypeDeserializer;Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;)Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;

    move-result-object v7

    .line 370
    .local v7, "deser":Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer<*>;"
    if-eqz v7, :cond_0

    .line 374
    .end local v0    # "d":Lcom/flurry/org/codehaus/jackson/map/Deserializers;
    .end local v7    # "deser":Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer<*>;"
    :goto_0
    return-object v7

    :cond_1
    const/4 v7, 0x0

    goto :goto_0
.end method

.method protected _findCustomBeanDeserializer(Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/map/DeserializerProvider;Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;
    .locals 8
    .param p1, "type"    # Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .param p2, "config"    # Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;
    .param p3, "provider"    # Lcom/flurry/org/codehaus/jackson/map/DeserializerProvider;
    .param p4, "beanDesc"    # Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;
    .param p5, "property"    # Lcom/flurry/org/codehaus/jackson/map/BeanProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/type/JavaType;",
            "Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;",
            "Lcom/flurry/org/codehaus/jackson/map/DeserializerProvider;",
            "Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;",
            "Lcom/flurry/org/codehaus/jackson/map/BeanProperty;",
            ")",
            "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer",
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
    .line 481
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerFactory;->_factoryConfig:Lcom/flurry/org/codehaus/jackson/map/DeserializerFactory$Config;

    invoke-virtual {v1}, Lcom/flurry/org/codehaus/jackson/map/DeserializerFactory$Config;->deserializers()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/org/codehaus/jackson/map/Deserializers;

    .local v0, "d":Lcom/flurry/org/codehaus/jackson/map/Deserializers;
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 482
    invoke-interface/range {v0 .. v5}, Lcom/flurry/org/codehaus/jackson/map/Deserializers;->findBeanDeserializer(Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/map/DeserializerProvider;Lcom/flurry/org/codehaus/jackson/map/BeanDescription;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;

    move-result-object v6

    .line 483
    .local v6, "deser":Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer<*>;"
    if-eqz v6, :cond_0

    .line 487
    .end local v0    # "d":Lcom/flurry/org/codehaus/jackson/map/Deserializers;
    .end local v6    # "deser":Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer<*>;"
    :goto_0
    return-object v6

    :cond_1
    const/4 v6, 0x0

    goto :goto_0
.end method

.method protected _findCustomCollectionDeserializer(Lcom/flurry/org/codehaus/jackson/map/type/CollectionType;Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/map/DeserializerProvider;Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;Lcom/flurry/org/codehaus/jackson/map/TypeDeserializer;Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;)Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;
    .locals 10
    .param p1, "type"    # Lcom/flurry/org/codehaus/jackson/map/type/CollectionType;
    .param p2, "config"    # Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;
    .param p3, "provider"    # Lcom/flurry/org/codehaus/jackson/map/DeserializerProvider;
    .param p4, "beanDesc"    # Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;
    .param p5, "property"    # Lcom/flurry/org/codehaus/jackson/map/BeanProperty;
    .param p6, "elementTypeDeserializer"    # Lcom/flurry/org/codehaus/jackson/map/TypeDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/type/CollectionType;",
            "Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;",
            "Lcom/flurry/org/codehaus/jackson/map/DeserializerProvider;",
            "Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;",
            "Lcom/flurry/org/codehaus/jackson/map/BeanProperty;",
            "Lcom/flurry/org/codehaus/jackson/map/TypeDeserializer;",
            "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer",
            "<*>;)",
            "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 384
    .local p7, "elementDeserializer":Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer<*>;"
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerFactory;->_factoryConfig:Lcom/flurry/org/codehaus/jackson/map/DeserializerFactory$Config;

    invoke-virtual {v1}, Lcom/flurry/org/codehaus/jackson/map/DeserializerFactory$Config;->deserializers()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/org/codehaus/jackson/map/Deserializers;

    .local v0, "d":Lcom/flurry/org/codehaus/jackson/map/Deserializers;
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    .line 385
    invoke-interface/range {v0 .. v7}, Lcom/flurry/org/codehaus/jackson/map/Deserializers;->findCollectionDeserializer(Lcom/flurry/org/codehaus/jackson/map/type/CollectionType;Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/map/DeserializerProvider;Lcom/flurry/org/codehaus/jackson/map/BeanDescription;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;Lcom/flurry/org/codehaus/jackson/map/TypeDeserializer;Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;)Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;

    move-result-object v8

    .line 387
    .local v8, "deser":Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer<*>;"
    if-eqz v8, :cond_0

    .line 391
    .end local v0    # "d":Lcom/flurry/org/codehaus/jackson/map/Deserializers;
    .end local v8    # "deser":Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer<*>;"
    :goto_0
    return-object v8

    :cond_1
    const/4 v8, 0x0

    goto :goto_0
.end method

.method protected _findCustomCollectionLikeDeserializer(Lcom/flurry/org/codehaus/jackson/map/type/CollectionLikeType;Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/map/DeserializerProvider;Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;Lcom/flurry/org/codehaus/jackson/map/TypeDeserializer;Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;)Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;
    .locals 10
    .param p1, "type"    # Lcom/flurry/org/codehaus/jackson/map/type/CollectionLikeType;
    .param p2, "config"    # Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;
    .param p3, "provider"    # Lcom/flurry/org/codehaus/jackson/map/DeserializerProvider;
    .param p4, "beanDesc"    # Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;
    .param p5, "property"    # Lcom/flurry/org/codehaus/jackson/map/BeanProperty;
    .param p6, "elementTypeDeserializer"    # Lcom/flurry/org/codehaus/jackson/map/TypeDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/type/CollectionLikeType;",
            "Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;",
            "Lcom/flurry/org/codehaus/jackson/map/DeserializerProvider;",
            "Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;",
            "Lcom/flurry/org/codehaus/jackson/map/BeanProperty;",
            "Lcom/flurry/org/codehaus/jackson/map/TypeDeserializer;",
            "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer",
            "<*>;)",
            "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 401
    .local p7, "elementDeserializer":Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer<*>;"
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerFactory;->_factoryConfig:Lcom/flurry/org/codehaus/jackson/map/DeserializerFactory$Config;

    invoke-virtual {v1}, Lcom/flurry/org/codehaus/jackson/map/DeserializerFactory$Config;->deserializers()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/org/codehaus/jackson/map/Deserializers;

    .local v0, "d":Lcom/flurry/org/codehaus/jackson/map/Deserializers;
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    .line 402
    invoke-interface/range {v0 .. v7}, Lcom/flurry/org/codehaus/jackson/map/Deserializers;->findCollectionLikeDeserializer(Lcom/flurry/org/codehaus/jackson/map/type/CollectionLikeType;Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/map/DeserializerProvider;Lcom/flurry/org/codehaus/jackson/map/BeanDescription;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;Lcom/flurry/org/codehaus/jackson/map/TypeDeserializer;Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;)Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;

    move-result-object v8

    .line 404
    .local v8, "deser":Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer<*>;"
    if-eqz v8, :cond_0

    .line 408
    .end local v0    # "d":Lcom/flurry/org/codehaus/jackson/map/Deserializers;
    .end local v8    # "deser":Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer<*>;"
    :goto_0
    return-object v8

    :cond_1
    const/4 v8, 0x0

    goto :goto_0
.end method

.method protected _findCustomEnumDeserializer(Ljava/lang/Class;Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;
    .locals 4
    .param p2, "config"    # Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;
    .param p3, "beanDesc"    # Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;
    .param p4, "property"    # Lcom/flurry/org/codehaus/jackson/map/BeanProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;",
            "Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;",
            "Lcom/flurry/org/codehaus/jackson/map/BeanProperty;",
            ")",
            "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 416
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerFactory;->_factoryConfig:Lcom/flurry/org/codehaus/jackson/map/DeserializerFactory$Config;

    invoke-virtual {v3}, Lcom/flurry/org/codehaus/jackson/map/DeserializerFactory$Config;->deserializers()Ljava/lang/Iterable;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/org/codehaus/jackson/map/Deserializers;

    .line 417
    .local v0, "d":Lcom/flurry/org/codehaus/jackson/map/Deserializers;
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/flurry/org/codehaus/jackson/map/Deserializers;->findEnumDeserializer(Ljava/lang/Class;Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/map/BeanDescription;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;

    move-result-object v1

    .line 418
    .local v1, "deser":Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer<*>;"
    if-eqz v1, :cond_0

    .line 422
    .end local v0    # "d":Lcom/flurry/org/codehaus/jackson/map/Deserializers;
    .end local v1    # "deser":Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer<*>;"
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected _findCustomMapDeserializer(Lcom/flurry/org/codehaus/jackson/map/type/MapType;Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/map/DeserializerProvider;Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;Lcom/flurry/org/codehaus/jackson/map/KeyDeserializer;Lcom/flurry/org/codehaus/jackson/map/TypeDeserializer;Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;)Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;
    .locals 11
    .param p1, "type"    # Lcom/flurry/org/codehaus/jackson/map/type/MapType;
    .param p2, "config"    # Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;
    .param p3, "provider"    # Lcom/flurry/org/codehaus/jackson/map/DeserializerProvider;
    .param p4, "beanDesc"    # Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;
    .param p5, "property"    # Lcom/flurry/org/codehaus/jackson/map/BeanProperty;
    .param p6, "keyDeserializer"    # Lcom/flurry/org/codehaus/jackson/map/KeyDeserializer;
    .param p7, "elementTypeDeserializer"    # Lcom/flurry/org/codehaus/jackson/map/TypeDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/type/MapType;",
            "Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;",
            "Lcom/flurry/org/codehaus/jackson/map/DeserializerProvider;",
            "Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;",
            "Lcom/flurry/org/codehaus/jackson/map/BeanProperty;",
            "Lcom/flurry/org/codehaus/jackson/map/KeyDeserializer;",
            "Lcom/flurry/org/codehaus/jackson/map/TypeDeserializer;",
            "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer",
            "<*>;)",
            "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 433
    .local p8, "elementDeserializer":Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer<*>;"
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerFactory;->_factoryConfig:Lcom/flurry/org/codehaus/jackson/map/DeserializerFactory$Config;

    invoke-virtual {v1}, Lcom/flurry/org/codehaus/jackson/map/DeserializerFactory$Config;->deserializers()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/org/codehaus/jackson/map/Deserializers;

    .local v0, "d":Lcom/flurry/org/codehaus/jackson/map/Deserializers;
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    .line 434
    invoke-interface/range {v0 .. v8}, Lcom/flurry/org/codehaus/jackson/map/Deserializers;->findMapDeserializer(Lcom/flurry/org/codehaus/jackson/map/type/MapType;Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/map/DeserializerProvider;Lcom/flurry/org/codehaus/jackson/map/BeanDescription;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;Lcom/flurry/org/codehaus/jackson/map/KeyDeserializer;Lcom/flurry/org/codehaus/jackson/map/TypeDeserializer;Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;)Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;

    move-result-object v9

    .line 436
    .local v9, "deser":Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer<*>;"
    if-eqz v9, :cond_0

    .line 440
    .end local v0    # "d":Lcom/flurry/org/codehaus/jackson/map/Deserializers;
    .end local v9    # "deser":Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer<*>;"
    :goto_0
    return-object v9

    :cond_1
    const/4 v9, 0x0

    goto :goto_0
.end method

.method protected _findCustomMapLikeDeserializer(Lcom/flurry/org/codehaus/jackson/map/type/MapLikeType;Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/map/DeserializerProvider;Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;Lcom/flurry/org/codehaus/jackson/map/KeyDeserializer;Lcom/flurry/org/codehaus/jackson/map/TypeDeserializer;Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;)Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;
    .locals 11
    .param p1, "type"    # Lcom/flurry/org/codehaus/jackson/map/type/MapLikeType;
    .param p2, "config"    # Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;
    .param p3, "provider"    # Lcom/flurry/org/codehaus/jackson/map/DeserializerProvider;
    .param p4, "beanDesc"    # Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;
    .param p5, "property"    # Lcom/flurry/org/codehaus/jackson/map/BeanProperty;
    .param p6, "keyDeserializer"    # Lcom/flurry/org/codehaus/jackson/map/KeyDeserializer;
    .param p7, "elementTypeDeserializer"    # Lcom/flurry/org/codehaus/jackson/map/TypeDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/type/MapLikeType;",
            "Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;",
            "Lcom/flurry/org/codehaus/jackson/map/DeserializerProvider;",
            "Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;",
            "Lcom/flurry/org/codehaus/jackson/map/BeanProperty;",
            "Lcom/flurry/org/codehaus/jackson/map/KeyDeserializer;",
            "Lcom/flurry/org/codehaus/jackson/map/TypeDeserializer;",
            "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer",
            "<*>;)",
            "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 451
    .local p8, "elementDeserializer":Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer<*>;"
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerFactory;->_factoryConfig:Lcom/flurry/org/codehaus/jackson/map/DeserializerFactory$Config;

    invoke-virtual {v1}, Lcom/flurry/org/codehaus/jackson/map/DeserializerFactory$Config;->deserializers()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/org/codehaus/jackson/map/Deserializers;

    .local v0, "d":Lcom/flurry/org/codehaus/jackson/map/Deserializers;
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    .line 452
    invoke-interface/range {v0 .. v8}, Lcom/flurry/org/codehaus/jackson/map/Deserializers;->findMapLikeDeserializer(Lcom/flurry/org/codehaus/jackson/map/type/MapLikeType;Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/map/DeserializerProvider;Lcom/flurry/org/codehaus/jackson/map/BeanDescription;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;Lcom/flurry/org/codehaus/jackson/map/KeyDeserializer;Lcom/flurry/org/codehaus/jackson/map/TypeDeserializer;Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;)Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;

    move-result-object v9

    .line 454
    .local v9, "deser":Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer<*>;"
    if-eqz v9, :cond_0

    .line 458
    .end local v0    # "d":Lcom/flurry/org/codehaus/jackson/map/Deserializers;
    .end local v9    # "deser":Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer<*>;"
    :goto_0
    return-object v9

    :cond_1
    const/4 v9, 0x0

    goto :goto_0
.end method

.method protected _findCustomTreeNodeDeserializer(Ljava/lang/Class;Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;
    .locals 4
    .param p2, "config"    # Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;
    .param p3, "property"    # Lcom/flurry/org/codehaus/jackson/map/BeanProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/flurry/org/codehaus/jackson/JsonNode;",
            ">;",
            "Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;",
            "Lcom/flurry/org/codehaus/jackson/map/BeanProperty;",
            ")",
            "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 466
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/flurry/org/codehaus/jackson/JsonNode;>;"
    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerFactory;->_factoryConfig:Lcom/flurry/org/codehaus/jackson/map/DeserializerFactory$Config;

    invoke-virtual {v3}, Lcom/flurry/org/codehaus/jackson/map/DeserializerFactory$Config;->deserializers()Ljava/lang/Iterable;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/org/codehaus/jackson/map/Deserializers;

    .line 467
    .local v0, "d":Lcom/flurry/org/codehaus/jackson/map/Deserializers;
    invoke-interface {v0, p1, p2, p3}, Lcom/flurry/org/codehaus/jackson/map/Deserializers;->findTreeNodeDeserializer(Ljava/lang/Class;Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;

    move-result-object v1

    .line 468
    .local v1, "deser":Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer<*>;"
    if-eqz v1, :cond_0

    .line 472
    .end local v0    # "d":Lcom/flurry/org/codehaus/jackson/map/Deserializers;
    .end local v1    # "deser":Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer<*>;"
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected _handleSingleArgumentConstructor(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker;Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;Lcom/flurry/org/codehaus/jackson/map/deser/impl/CreatorCollector;Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedConstructor;ZZ)Z
    .locals 12
    .param p1, "config"    # Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;
    .param p2, "beanDesc"    # Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;
    .param p4, "intr"    # Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;
    .param p5, "creators"    # Lcom/flurry/org/codehaus/jackson/map/deser/impl/CreatorCollector;
    .param p6, "ctor"    # Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedConstructor;
    .param p7, "isCreator"    # Z
    .param p8, "isVisible"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;",
            "Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;",
            "Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker",
            "<*>;",
            "Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;",
            "Lcom/flurry/org/codehaus/jackson/map/deser/impl/CreatorCollector;",
            "Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedConstructor;",
            "ZZ)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 921
    .local p3, "vchecker":Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker;, "Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker<*>;"
    const/4 v2, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedConstructor;->getParameter(I)Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedParameter;

    move-result-object v7

    .line 922
    .local v7, "param":Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedParameter;
    move-object/from16 v0, p4

    invoke-virtual {v0, v7}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;->findPropertyNameForParam(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedParameter;)Ljava/lang/String;

    move-result-object v5

    .line 923
    .local v5, "name":Ljava/lang/String;
    move-object/from16 v0, p4

    invoke-virtual {v0, v7}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;->findInjectableValueId(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;)Ljava/lang/Object;

    move-result-object v8

    .line 925
    .local v8, "injectId":Ljava/lang/Object;
    if-nez v8, :cond_0

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 927
    :cond_0
    const/4 v2, 0x1

    new-array v9, v2, [Lcom/flurry/org/codehaus/jackson/map/deser/impl/CreatorProperty;

    .line 928
    .local v9, "properties":[Lcom/flurry/org/codehaus/jackson/map/deser/impl/CreatorProperty;
    const/4 v11, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v2 .. v8}, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerFactory;->constructCreatorProperty(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;Ljava/lang/String;ILcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedParameter;Ljava/lang/Object;)Lcom/flurry/org/codehaus/jackson/map/deser/impl/CreatorProperty;

    move-result-object v2

    aput-object v2, v9, v11

    .line 929
    move-object/from16 v0, p5

    move-object/from16 v1, p6

    invoke-virtual {v0, v1, v9}, Lcom/flurry/org/codehaus/jackson/map/deser/impl/CreatorCollector;->addPropertyCreator(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;[Lcom/flurry/org/codehaus/jackson/map/deser/impl/CreatorProperty;)V

    .line 930
    const/4 v2, 0x1

    .line 965
    .end local v9    # "properties":[Lcom/flurry/org/codehaus/jackson/map/deser/impl/CreatorProperty;
    :goto_0
    return v2

    .line 934
    :cond_1
    const/4 v2, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedConstructor;->getParameterClass(I)Ljava/lang/Class;

    move-result-object v10

    .line 935
    .local v10, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v2, Ljava/lang/String;

    if-ne v10, v2, :cond_4

    .line 936
    if-nez p7, :cond_2

    if-eqz p8, :cond_3

    .line 937
    :cond_2
    invoke-virtual/range {p5 .. p6}, Lcom/flurry/org/codehaus/jackson/map/deser/impl/CreatorCollector;->addStringCreator(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;)V

    .line 939
    :cond_3
    const/4 v2, 0x1

    goto :goto_0

    .line 941
    :cond_4
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq v10, v2, :cond_5

    const-class v2, Ljava/lang/Integer;

    if-ne v10, v2, :cond_8

    .line 942
    :cond_5
    if-nez p7, :cond_6

    if-eqz p8, :cond_7

    .line 943
    :cond_6
    invoke-virtual/range {p5 .. p6}, Lcom/flurry/org/codehaus/jackson/map/deser/impl/CreatorCollector;->addIntCreator(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;)V

    .line 945
    :cond_7
    const/4 v2, 0x1

    goto :goto_0

    .line 947
    :cond_8
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq v10, v2, :cond_9

    const-class v2, Ljava/lang/Long;

    if-ne v10, v2, :cond_c

    .line 948
    :cond_9
    if-nez p7, :cond_a

    if-eqz p8, :cond_b

    .line 949
    :cond_a
    invoke-virtual/range {p5 .. p6}, Lcom/flurry/org/codehaus/jackson/map/deser/impl/CreatorCollector;->addLongCreator(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;)V

    .line 951
    :cond_b
    const/4 v2, 0x1

    goto :goto_0

    .line 953
    :cond_c
    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq v10, v2, :cond_d

    const-class v2, Ljava/lang/Double;

    if-ne v10, v2, :cond_10

    .line 954
    :cond_d
    if-nez p7, :cond_e

    if-eqz p8, :cond_f

    .line 955
    :cond_e
    invoke-virtual/range {p5 .. p6}, Lcom/flurry/org/codehaus/jackson/map/deser/impl/CreatorCollector;->addDoubleCreator(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;)V

    .line 957
    :cond_f
    const/4 v2, 0x1

    goto :goto_0

    .line 961
    :cond_10
    if-eqz p7, :cond_11

    .line 962
    invoke-virtual/range {p5 .. p6}, Lcom/flurry/org/codehaus/jackson/map/deser/impl/CreatorCollector;->addDelegatingCreator(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;)V

    .line 963
    const/4 v2, 0x1

    goto :goto_0

    .line 965
    :cond_11
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected _handleSingleArgumentFactory(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker;Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;Lcom/flurry/org/codehaus/jackson/map/deser/impl/CreatorCollector;Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;Z)Z
    .locals 4
    .param p1, "config"    # Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;
    .param p2, "beanDesc"    # Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;
    .param p4, "intr"    # Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;
    .param p5, "creators"    # Lcom/flurry/org/codehaus/jackson/map/deser/impl/CreatorCollector;
    .param p6, "factory"    # Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;
    .param p7, "isCreator"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;",
            "Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;",
            "Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker",
            "<*>;",
            "Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;",
            "Lcom/flurry/org/codehaus/jackson/map/deser/impl/CreatorCollector;",
            "Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;",
            "Z)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .local p3, "vchecker":Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker;, "Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker<*>;"
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1021
    invoke-virtual {p6, v2}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;->getParameterClass(I)Ljava/lang/Class;

    move-result-object v0

    .line 1023
    .local v0, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v3, Ljava/lang/String;

    if-ne v0, v3, :cond_2

    .line 1024
    if-nez p7, :cond_0

    invoke-interface {p3, p6}, Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker;->isCreatorVisible(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1025
    :cond_0
    invoke-virtual {p5, p6}, Lcom/flurry/org/codehaus/jackson/map/deser/impl/CreatorCollector;->addStringCreator(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;)V

    .line 1057
    :cond_1
    :goto_0
    return v1

    .line 1029
    :cond_2
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq v0, v3, :cond_3

    const-class v3, Ljava/lang/Integer;

    if-ne v0, v3, :cond_5

    .line 1030
    :cond_3
    if-nez p7, :cond_4

    invoke-interface {p3, p6}, Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker;->isCreatorVisible(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1031
    :cond_4
    invoke-virtual {p5, p6}, Lcom/flurry/org/codehaus/jackson/map/deser/impl/CreatorCollector;->addIntCreator(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;)V

    goto :goto_0

    .line 1035
    :cond_5
    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq v0, v3, :cond_6

    const-class v3, Ljava/lang/Long;

    if-ne v0, v3, :cond_8

    .line 1036
    :cond_6
    if-nez p7, :cond_7

    invoke-interface {p3, p6}, Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker;->isCreatorVisible(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1037
    :cond_7
    invoke-virtual {p5, p6}, Lcom/flurry/org/codehaus/jackson/map/deser/impl/CreatorCollector;->addLongCreator(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;)V

    goto :goto_0

    .line 1041
    :cond_8
    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq v0, v3, :cond_9

    const-class v3, Ljava/lang/Double;

    if-ne v0, v3, :cond_b

    .line 1042
    :cond_9
    if-nez p7, :cond_a

    invoke-interface {p3, p6}, Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker;->isCreatorVisible(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1043
    :cond_a
    invoke-virtual {p5, p6}, Lcom/flurry/org/codehaus/jackson/map/deser/impl/CreatorCollector;->addDoubleCreator(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;)V

    goto :goto_0

    .line 1047
    :cond_b
    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v0, v3, :cond_c

    const-class v3, Ljava/lang/Boolean;

    if-ne v0, v3, :cond_e

    .line 1048
    :cond_c
    if-nez p7, :cond_d

    invoke-interface {p3, p6}, Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker;->isCreatorVisible(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1049
    :cond_d
    invoke-virtual {p5, p6}, Lcom/flurry/org/codehaus/jackson/map/deser/impl/CreatorCollector;->addBooleanCreator(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;)V

    goto :goto_0

    .line 1053
    :cond_e
    invoke-virtual {p4, p6}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;->hasCreatorAnnotation(Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 1054
    invoke-virtual {p5, p6}, Lcom/flurry/org/codehaus/jackson/map/deser/impl/CreatorCollector;->addDelegatingCreator(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;)V

    goto :goto_0

    :cond_f
    move v1, v2

    .line 1057
    goto :goto_0
.end method

.method protected _mapAbstractType2(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/type/JavaType;)Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .locals 5
    .param p1, "config"    # Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;
    .param p2, "type"    # Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 646
    invoke-virtual {p2}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v1

    .line 647
    .local v1, "currClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v4, p0, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerFactory;->_factoryConfig:Lcom/flurry/org/codehaus/jackson/map/DeserializerFactory$Config;

    invoke-virtual {v4}, Lcom/flurry/org/codehaus/jackson/map/DeserializerFactory$Config;->hasAbstractTypeResolvers()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 648
    iget-object v4, p0, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerFactory;->_factoryConfig:Lcom/flurry/org/codehaus/jackson/map/DeserializerFactory$Config;

    invoke-virtual {v4}, Lcom/flurry/org/codehaus/jackson/map/DeserializerFactory$Config;->abstractTypeResolvers()Ljava/lang/Iterable;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/flurry/org/codehaus/jackson/map/AbstractTypeResolver;

    .line 649
    .local v3, "resolver":Lcom/flurry/org/codehaus/jackson/map/AbstractTypeResolver;
    invoke-virtual {v3, p1, p2}, Lcom/flurry/org/codehaus/jackson/map/AbstractTypeResolver;->findTypeMapping(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/type/JavaType;)Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v0

    .line 650
    .local v0, "concrete":Lcom/flurry/org/codehaus/jackson/type/JavaType;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v4, v1, :cond_0

    .line 655
    .end local v0    # "concrete":Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "resolver":Lcom/flurry/org/codehaus/jackson/map/AbstractTypeResolver;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected addBeanProps(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerBuilder;)V
    .locals 23
    .param p1, "config"    # Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;
    .param p2, "beanDesc"    # Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;
    .param p3, "builder"    # Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 1107
    invoke-virtual/range {p2 .. p2}, Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;->findProperties()Ljava/util/List;

    move-result-object v18

    .line 1109
    .local v18, "props":Ljava/util/List;, "Ljava/util/List<Lcom/flurry/org/codehaus/jackson/map/BeanPropertyDefinition;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;->getAnnotationIntrospector()Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object v13

    .line 1110
    .local v13, "intr":Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;
    const/4 v9, 0x0

    .line 1112
    .local v9, "ignoreAny":Z
    invoke-virtual/range {p2 .. p2}, Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;->getClassInfo()Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;->findIgnoreUnknownProperties(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/Boolean;

    move-result-object v4

    .line 1113
    .local v4, "B":Ljava/lang/Boolean;
    if-eqz v4, :cond_0

    .line 1114
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    .line 1115
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerBuilder;->setIgnoreUnknownProperties(Z)V

    .line 1119
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;->getClassInfo()Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;->findPropertiesToIgnore(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;)[Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/flurry/org/codehaus/jackson/map/util/ArrayBuilders;->arrayToSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v10

    .line 1120
    .local v10, "ignored":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 1121
    .local v16, "propName":Ljava/lang/String;
    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerBuilder;->addIgnorable(Ljava/lang/String;)V

    goto :goto_0

    .line 1123
    .end local v16    # "propName":Ljava/lang/String;
    :cond_1
    invoke-virtual/range {p2 .. p2}, Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;->findAnySetter()Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;

    move-result-object v5

    .line 1130
    .local v5, "anySetter":Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;
    if-nez v5, :cond_2

    invoke-virtual/range {p2 .. p2}, Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;->getIgnoredPropertyNames()Ljava/util/Set;

    move-result-object v11

    .line 1132
    .local v11, "ignored2":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    :goto_1
    if-eqz v11, :cond_3

    .line 1133
    invoke-interface {v11}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 1136
    .restart local v16    # "propName":Ljava/lang/String;
    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerBuilder;->addIgnorable(Ljava/lang/String;)V

    goto :goto_2

    .line 1130
    .end local v11    # "ignored2":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .end local v16    # "propName":Ljava/lang/String;
    :cond_2
    invoke-virtual/range {p2 .. p2}, Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;->getIgnoredPropertyNamesForDeser()Ljava/util/Set;

    move-result-object v11

    goto :goto_1

    .line 1140
    .restart local v11    # "ignored2":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    :cond_3
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 1143
    .local v12, "ignoredTypes":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Class<*>;Ljava/lang/Boolean;>;"
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_4
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_9

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/flurry/org/codehaus/jackson/map/BeanPropertyDefinition;

    .line 1144
    .local v17, "property":Lcom/flurry/org/codehaus/jackson/map/BeanPropertyDefinition;
    invoke-virtual/range {v17 .. v17}, Lcom/flurry/org/codehaus/jackson/map/BeanPropertyDefinition;->getName()Ljava/lang/String;

    move-result-object v14

    .line 1145
    .local v14, "name":Ljava/lang/String;
    invoke-interface {v10, v14}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_4

    .line 1152
    invoke-virtual/range {v17 .. v17}, Lcom/flurry/org/codehaus/jackson/map/BeanPropertyDefinition;->hasConstructorParameter()Z

    move-result v22

    if-eqz v22, :cond_5

    .line 1154
    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerBuilder;->addCreatorProperty(Lcom/flurry/org/codehaus/jackson/map/BeanPropertyDefinition;)V

    goto :goto_3

    .line 1158
    :cond_5
    invoke-virtual/range {v17 .. v17}, Lcom/flurry/org/codehaus/jackson/map/BeanPropertyDefinition;->hasSetter()Z

    move-result v22

    if-eqz v22, :cond_7

    .line 1159
    invoke-virtual/range {v17 .. v17}, Lcom/flurry/org/codehaus/jackson/map/BeanPropertyDefinition;->getSetter()Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;

    move-result-object v20

    .line 1161
    .local v20, "setter":Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;
    const/16 v22, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;->getParameterClass(I)Ljava/lang/Class;

    move-result-object v21

    .line 1162
    .local v21, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3, v12}, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerFactory;->isIgnorableType(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;Ljava/lang/Class;Ljava/util/Map;)Z

    move-result v22

    if-eqz v22, :cond_6

    .line 1164
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerBuilder;->addIgnorable(Ljava/lang/String;)V

    goto :goto_3

    .line 1167
    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v14, v3}, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerFactory;->constructSettableProperty(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;Ljava/lang/String;Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;)Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;

    move-result-object v15

    .line 1168
    .local v15, "prop":Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;
    if-eqz v15, :cond_4

    .line 1169
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerBuilder;->addProperty(Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;)V

    goto :goto_3

    .line 1173
    .end local v15    # "prop":Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;
    .end local v20    # "setter":Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;
    .end local v21    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_7
    invoke-virtual/range {v17 .. v17}, Lcom/flurry/org/codehaus/jackson/map/BeanPropertyDefinition;->hasField()Z

    move-result v22

    if-eqz v22, :cond_4

    .line 1174
    invoke-virtual/range {v17 .. v17}, Lcom/flurry/org/codehaus/jackson/map/BeanPropertyDefinition;->getField()Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedField;

    move-result-object v6

    .line 1176
    .local v6, "field":Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedField;
    invoke-virtual {v6}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedField;->getRawType()Ljava/lang/Class;

    move-result-object v21

    .line 1177
    .restart local v21    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3, v12}, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerFactory;->isIgnorableType(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;Ljava/lang/Class;Ljava/util/Map;)Z

    move-result v22

    if-eqz v22, :cond_8

    .line 1179
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerBuilder;->addIgnorable(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1182
    :cond_8
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v14, v6}, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerFactory;->constructSettableProperty(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;Ljava/lang/String;Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedField;)Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;

    move-result-object v15

    .line 1183
    .restart local v15    # "prop":Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;
    if-eqz v15, :cond_4

    .line 1184
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerBuilder;->addProperty(Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;)V

    goto/16 :goto_3

    .line 1189
    .end local v6    # "field":Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedField;
    .end local v14    # "name":Ljava/lang/String;
    .end local v15    # "prop":Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;
    .end local v17    # "property":Lcom/flurry/org/codehaus/jackson/map/BeanPropertyDefinition;
    .end local v21    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_9
    if-eqz v5, :cond_a

    .line 1190
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v5}, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerFactory;->constructAnySetter(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;)Lcom/flurry/org/codehaus/jackson/map/deser/SettableAnyProperty;

    move-result-object v22

    move-object/from16 v0, p3

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerBuilder;->setAnySetter(Lcom/flurry/org/codehaus/jackson/map/deser/SettableAnyProperty;)V

    .line 1199
    :cond_a
    sget-object v22, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;->USE_GETTERS_AS_SETTERS:Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;->isEnabled(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;)Z

    move-result v22

    if-eqz v22, :cond_d

    .line 1205
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_b
    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_d

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/flurry/org/codehaus/jackson/map/BeanPropertyDefinition;

    .line 1206
    .restart local v17    # "property":Lcom/flurry/org/codehaus/jackson/map/BeanPropertyDefinition;
    invoke-virtual/range {v17 .. v17}, Lcom/flurry/org/codehaus/jackson/map/BeanPropertyDefinition;->hasGetter()Z

    move-result v22

    if-eqz v22, :cond_b

    .line 1207
    invoke-virtual/range {v17 .. v17}, Lcom/flurry/org/codehaus/jackson/map/BeanPropertyDefinition;->getName()Ljava/lang/String;

    move-result-object v14

    .line 1208
    .restart local v14    # "name":Ljava/lang/String;
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerBuilder;->hasProperty(Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_b

    invoke-interface {v10, v14}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_b

    .line 1211
    invoke-virtual/range {v17 .. v17}, Lcom/flurry/org/codehaus/jackson/map/BeanPropertyDefinition;->getGetter()Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;

    move-result-object v7

    .line 1213
    .local v7, "getter":Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;
    invoke-virtual {v7}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;->getRawType()Ljava/lang/Class;

    move-result-object v19

    .line 1214
    .local v19, "rt":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v22, Ljava/util/Collection;

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v22

    if-nez v22, :cond_c

    const-class v22, Ljava/util/Map;

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v22

    if-eqz v22, :cond_b

    .line 1215
    :cond_c
    invoke-interface {v10, v14}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_b

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerBuilder;->hasProperty(Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_b

    .line 1216
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v14, v7}, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerFactory;->constructSetterlessProperty(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;Ljava/lang/String;Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;)Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;

    move-result-object v22

    move-object/from16 v0, p3

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerBuilder;->addProperty(Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;)V

    goto :goto_4

    .line 1222
    .end local v7    # "getter":Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;
    .end local v14    # "name":Ljava/lang/String;
    .end local v17    # "property":Lcom/flurry/org/codehaus/jackson/map/BeanPropertyDefinition;
    .end local v19    # "rt":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_d
    return-void
.end method

.method protected addInjectables(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerBuilder;)V
    .locals 10
    .param p1, "config"    # Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;
    .param p2, "beanDesc"    # Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;
    .param p3, "builder"    # Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 1261
    invoke-virtual {p2}, Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;->findInjectables()Ljava/util/Map;

    move-result-object v9

    .line 1262
    .local v9, "raw":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;>;"
    if-eqz v9, :cond_1

    .line 1263
    sget-object v0, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;->CAN_OVERRIDE_ACCESS_MODIFIERS:Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;

    invoke-virtual {p1, v0}, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;->isEnabled(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;)Z

    move-result v7

    .line 1264
    .local v7, "fixAccess":Z
    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 1265
    .local v6, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;

    .line 1266
    .local v4, "m":Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;
    if-eqz v7, :cond_0

    .line 1267
    invoke-virtual {v4}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;->fixAccess()V

    .line 1269
    :cond_0
    invoke-virtual {v4}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;->resolveType(Ljava/lang/reflect/Type;)Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v2

    invoke-virtual {p2}, Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;->getClassAnnotations()Lcom/flurry/org/codehaus/jackson/map/util/Annotations;

    move-result-object v3

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    move-object v0, p3

    invoke-virtual/range {v0 .. v5}, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerBuilder;->addInjectable(Ljava/lang/String;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/util/Annotations;Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;Ljava/lang/Object;)V

    goto :goto_0

    .line 1273
    .end local v4    # "m":Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;
    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;>;"
    .end local v7    # "fixAccess":Z
    .end local v8    # "i$":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method protected addReferenceProperties(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerBuilder;)V
    .locals 6
    .param p1, "config"    # Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;
    .param p2, "beanDesc"    # Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;
    .param p3, "builder"    # Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 1235
    invoke-virtual {p2}, Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;->findBackReferenceProperties()Ljava/util/Map;

    move-result-object v4

    .line 1236
    .local v4, "refs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;>;"
    if-eqz v4, :cond_1

    .line 1237
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1238
    .local v0, "en":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1239
    .local v3, "name":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;

    .line 1240
    .local v2, "m":Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;
    instance-of v5, v2, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;

    if-eqz v5, :cond_0

    .line 1241
    invoke-virtual {v2}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;->getName()Ljava/lang/String;

    move-result-object v5

    check-cast v2, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;

    .end local v2    # "m":Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;
    invoke-virtual {p0, p1, p2, v5, v2}, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerFactory;->constructSettableProperty(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;Ljava/lang/String;Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;)Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;

    move-result-object v5

    invoke-virtual {p3, v3, v5}, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerBuilder;->addBackReferenceProperty(Ljava/lang/String;Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;)V

    goto :goto_0

    .line 1244
    .restart local v2    # "m":Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;
    :cond_0
    invoke-virtual {v2}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;->getName()Ljava/lang/String;

    move-result-object v5

    check-cast v2, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedField;

    .end local v2    # "m":Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;
    invoke-virtual {p0, p1, p2, v5, v2}, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerFactory;->constructSettableProperty(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;Ljava/lang/String;Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedField;)Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;

    move-result-object v5

    invoke-virtual {p3, v3, v5}, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerBuilder;->addBackReferenceProperty(Ljava/lang/String;Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;)V

    goto :goto_0

    .line 1249
    .end local v0    # "en":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "name":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public buildBeanDeserializer(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;
    .locals 6
    .param p1, "config"    # Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;
    .param p2, "type"    # Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .param p3, "beanDesc"    # Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;
    .param p4, "property"    # Lcom/flurry/org/codehaus/jackson/map/BeanProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;",
            "Lcom/flurry/org/codehaus/jackson/type/JavaType;",
            "Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;",
            "Lcom/flurry/org/codehaus/jackson/map/BeanProperty;",
            ")",
            "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer",
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
    .line 696
    invoke-virtual {p0, p1, p3}, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerFactory;->findValueInstantiator(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;)Lcom/flurry/org/codehaus/jackson/map/deser/ValueInstantiator;

    move-result-object v4

    .line 698
    .local v4, "valueInstantiator":Lcom/flurry/org/codehaus/jackson/map/deser/ValueInstantiator;
    invoke-virtual {p2}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->isAbstract()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 699
    invoke-virtual {v4}, Lcom/flurry/org/codehaus/jackson/map/deser/ValueInstantiator;->canInstantiate()Z

    move-result v5

    if-nez v5, :cond_1

    .line 701
    new-instance v1, Lcom/flurry/org/codehaus/jackson/map/deser/AbstractDeserializer;

    invoke-direct {v1, p2}, Lcom/flurry/org/codehaus/jackson/map/deser/AbstractDeserializer;-><init>(Lcom/flurry/org/codehaus/jackson/type/JavaType;)V

    .line 726
    :cond_0
    return-object v1

    .line 704
    :cond_1
    invoke-virtual {p0, p3}, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerFactory;->constructBeanDeserializerBuilder(Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;)Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerBuilder;

    move-result-object v0

    .line 705
    .local v0, "builder":Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerBuilder;
    invoke-virtual {v0, v4}, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerBuilder;->setValueInstantiator(Lcom/flurry/org/codehaus/jackson/map/deser/ValueInstantiator;)V

    .line 707
    invoke-virtual {p0, p1, p3, v0}, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerFactory;->addBeanProps(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerBuilder;)V

    .line 709
    invoke-virtual {p0, p1, p3, v0}, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerFactory;->addReferenceProperties(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerBuilder;)V

    .line 710
    invoke-virtual {p0, p1, p3, v0}, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerFactory;->addInjectables(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerBuilder;)V

    .line 713
    iget-object v5, p0, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerFactory;->_factoryConfig:Lcom/flurry/org/codehaus/jackson/map/DeserializerFactory$Config;

    invoke-virtual {v5}, Lcom/flurry/org/codehaus/jackson/map/DeserializerFactory$Config;->hasDeserializerModifiers()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 714
    iget-object v5, p0, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerFactory;->_factoryConfig:Lcom/flurry/org/codehaus/jackson/map/DeserializerFactory$Config;

    invoke-virtual {v5}, Lcom/flurry/org/codehaus/jackson/map/DeserializerFactory$Config;->deserializerModifiers()Ljava/lang/Iterable;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerModifier;

    .line 715
    .local v3, "mod":Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerModifier;
    invoke-virtual {v3, p1, p3, v0}, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerModifier;->updateBuilder(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerBuilder;)Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerBuilder;

    move-result-object v0

    goto :goto_0

    .line 718
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "mod":Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerModifier;
    :cond_2
    invoke-virtual {v0, p4}, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerBuilder;->build(Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;

    move-result-object v1

    .line 721
    .local v1, "deserializer":Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer<*>;"
    iget-object v5, p0, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerFactory;->_factoryConfig:Lcom/flurry/org/codehaus/jackson/map/DeserializerFactory$Config;

    invoke-virtual {v5}, Lcom/flurry/org/codehaus/jackson/map/DeserializerFactory$Config;->hasDeserializerModifiers()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 722
    iget-object v5, p0, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerFactory;->_factoryConfig:Lcom/flurry/org/codehaus/jackson/map/DeserializerFactory$Config;

    invoke-virtual {v5}, Lcom/flurry/org/codehaus/jackson/map/DeserializerFactory$Config;->deserializerModifiers()Ljava/lang/Iterable;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerModifier;

    .line 723
    .restart local v3    # "mod":Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerModifier;
    invoke-virtual {v3, p1, p3, v1}, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerModifier;->modifyDeserializer(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;)Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;

    move-result-object v1

    goto :goto_1
.end method

.method public buildThrowableDeserializer(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;
    .locals 9
    .param p1, "config"    # Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;
    .param p2, "type"    # Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .param p3, "beanDesc"    # Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;
    .param p4, "property"    # Lcom/flurry/org/codehaus/jackson/map/BeanProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;",
            "Lcom/flurry/org/codehaus/jackson/type/JavaType;",
            "Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;",
            "Lcom/flurry/org/codehaus/jackson/map/BeanProperty;",
            ")",
            "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer",
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
    .line 736
    invoke-virtual {p0, p3}, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerFactory;->constructBeanDeserializerBuilder(Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;)Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerBuilder;

    move-result-object v1

    .line 737
    .local v1, "builder":Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerBuilder;
    invoke-virtual {p0, p1, p3}, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerFactory;->findValueInstantiator(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;)Lcom/flurry/org/codehaus/jackson/map/deser/ValueInstantiator;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerBuilder;->setValueInstantiator(Lcom/flurry/org/codehaus/jackson/map/deser/ValueInstantiator;)V

    .line 739
    invoke-virtual {p0, p1, p3, v1}, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerFactory;->addBeanProps(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerBuilder;)V

    .line 746
    const-string v7, "initCause"

    sget-object v8, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerFactory;->INIT_CAUSE_PARAMS:[Ljava/lang/Class;

    invoke-virtual {p3, v7, v8}, Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;->findMethod(Ljava/lang/String;[Ljava/lang/Class;)Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;

    move-result-object v0

    .line 747
    .local v0, "am":Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;
    if-eqz v0, :cond_0

    .line 748
    const-string v7, "cause"

    invoke-virtual {p0, p1, p3, v7, v0}, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerFactory;->constructSettableProperty(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;Ljava/lang/String;Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;)Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;

    move-result-object v6

    .line 749
    .local v6, "prop":Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;
    if-eqz v6, :cond_0

    .line 754
    const/4 v7, 0x1

    invoke-virtual {v1, v6, v7}, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerBuilder;->addOrReplaceProperty(Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;Z)V

    .line 759
    .end local v6    # "prop":Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;
    :cond_0
    const-string v7, "localizedMessage"

    invoke-virtual {v1, v7}, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerBuilder;->addIgnorable(Ljava/lang/String;)V

    .line 763
    const-string v7, "message"

    invoke-virtual {v1, v7}, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerBuilder;->addIgnorable(Ljava/lang/String;)V

    .line 766
    iget-object v7, p0, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerFactory;->_factoryConfig:Lcom/flurry/org/codehaus/jackson/map/DeserializerFactory$Config;

    invoke-virtual {v7}, Lcom/flurry/org/codehaus/jackson/map/DeserializerFactory$Config;->hasDeserializerModifiers()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 767
    iget-object v7, p0, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerFactory;->_factoryConfig:Lcom/flurry/org/codehaus/jackson/map/DeserializerFactory$Config;

    invoke-virtual {v7}, Lcom/flurry/org/codehaus/jackson/map/DeserializerFactory$Config;->deserializerModifiers()Ljava/lang/Iterable;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerModifier;

    .line 768
    .local v5, "mod":Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerModifier;
    invoke-virtual {v5, p1, p3, v1}, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerModifier;->updateBuilder(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerBuilder;)Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerBuilder;

    move-result-object v1

    goto :goto_0

    .line 771
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "mod":Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerModifier;
    :cond_1
    invoke-virtual {v1, p4}, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerBuilder;->build(Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;

    move-result-object v2

    .line 776
    .local v2, "deserializer":Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer<*>;"
    instance-of v7, v2, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializer;

    if-eqz v7, :cond_2

    .line 777
    new-instance v3, Lcom/flurry/org/codehaus/jackson/map/deser/std/ThrowableDeserializer;

    check-cast v2, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializer;

    .end local v2    # "deserializer":Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer<*>;"
    invoke-direct {v3, v2}, Lcom/flurry/org/codehaus/jackson/map/deser/std/ThrowableDeserializer;-><init>(Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializer;)V

    .local v3, "deserializer":Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer<*>;"
    move-object v2, v3

    .line 781
    .end local v3    # "deserializer":Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer<*>;"
    .restart local v2    # "deserializer":Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer<*>;"
    :cond_2
    iget-object v7, p0, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerFactory;->_factoryConfig:Lcom/flurry/org/codehaus/jackson/map/DeserializerFactory$Config;

    invoke-virtual {v7}, Lcom/flurry/org/codehaus/jackson/map/DeserializerFactory$Config;->hasDeserializerModifiers()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 782
    iget-object v7, p0, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerFactory;->_factoryConfig:Lcom/flurry/org/codehaus/jackson/map/DeserializerFactory$Config;

    invoke-virtual {v7}, Lcom/flurry/org/codehaus/jackson/map/DeserializerFactory$Config;->deserializerModifiers()Ljava/lang/Iterable;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerModifier;

    .line 783
    .restart local v5    # "mod":Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerModifier;
    invoke-virtual {v5, p1, p3, v2}, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerModifier;->modifyDeserializer(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;)Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;

    move-result-object v2

    goto :goto_1

    .line 786
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "mod":Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerModifier;
    :cond_3
    return-object v2
.end method

.method protected constructAnySetter(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;)Lcom/flurry/org/codehaus/jackson/map/deser/SettableAnyProperty;
    .locals 7
    .param p1, "config"    # Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;
    .param p2, "beanDesc"    # Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;
    .param p3, "setter"    # Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 1284
    sget-object v0, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;->CAN_OVERRIDE_ACCESS_MODIFIERS:Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;

    invoke-virtual {p1, v0}, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;->isEnabled(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1285
    invoke-virtual {p3}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;->fixAccess()V

    .line 1288
    :cond_0
    invoke-virtual {p2}, Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;->bindingsForBeanType()Lcom/flurry/org/codehaus/jackson/map/type/TypeBindings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p3, v1}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;->getParameterType(I)Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/org/codehaus/jackson/map/type/TypeBindings;->resolveType(Ljava/lang/reflect/Type;)Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v3

    .line 1289
    .local v3, "type":Lcom/flurry/org/codehaus/jackson/type/JavaType;
    new-instance v5, Lcom/flurry/org/codehaus/jackson/map/BeanProperty$Std;

    invoke-virtual {p3}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;->getClassAnnotations()Lcom/flurry/org/codehaus/jackson/map/util/Annotations;

    move-result-object v1

    invoke-direct {v5, v0, v3, v1, p3}, Lcom/flurry/org/codehaus/jackson/map/BeanProperty$Std;-><init>(Ljava/lang/String;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/util/Annotations;Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;)V

    .local v5, "property":Lcom/flurry/org/codehaus/jackson/map/BeanProperty$Std;
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    .line 1290
    invoke-virtual/range {v0 .. v5}, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerFactory;->resolveType(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v3

    .line 1297
    invoke-virtual {p0, p1, p3, v5}, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerFactory;->findDeserializerFromAnnotation(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;

    move-result-object v6

    .line 1298
    .local v6, "deser":Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer<Ljava/lang/Object;>;"
    if-eqz v6, :cond_1

    .line 1299
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/deser/SettableAnyProperty;

    invoke-direct {v0, v5, p3, v3, v6}, Lcom/flurry/org/codehaus/jackson/map/deser/SettableAnyProperty;-><init>(Lcom/flurry/org/codehaus/jackson/map/BeanProperty;Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;)V

    .line 1305
    :goto_0
    return-object v0

    .line 1304
    :cond_1
    invoke-virtual {v5}, Lcom/flurry/org/codehaus/jackson/map/BeanProperty$Std;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p3, v3, v0}, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerFactory;->modifyTypeByAnnotation(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;Lcom/flurry/org/codehaus/jackson/type/JavaType;Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v3

    .line 1305
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/deser/SettableAnyProperty;

    const/4 v1, 0x0

    invoke-direct {v0, v5, p3, v3, v1}, Lcom/flurry/org/codehaus/jackson/map/deser/SettableAnyProperty;-><init>(Lcom/flurry/org/codehaus/jackson/map/BeanProperty;Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;)V

    goto :goto_0
.end method

.method protected constructBeanDeserializerBuilder(Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;)Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerBuilder;
    .locals 1
    .param p1, "beanDesc"    # Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;

    .prologue
    .line 804
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerBuilder;

    invoke-direct {v0, p1}, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerBuilder;-><init>(Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;)V

    return-object v0
.end method

.method protected constructCreatorProperty(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;Ljava/lang/String;ILcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedParameter;Ljava/lang/Object;)Lcom/flurry/org/codehaus/jackson/map/deser/impl/CreatorProperty;
    .locals 19
    .param p1, "config"    # Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;
    .param p2, "beanDesc"    # Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "index"    # I
    .param p5, "param"    # Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedParameter;
    .param p6, "injectableValueId"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 1071
    invoke-virtual/range {p1 .. p1}, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;->getTypeFactory()Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;

    move-result-object v4

    invoke-virtual/range {p5 .. p5}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedParameter;->getParameterType()Ljava/lang/reflect/Type;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;->bindingsForBeanType()Lcom/flurry/org/codehaus/jackson/map/type/TypeBindings;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;->constructType(Ljava/lang/reflect/Type;Lcom/flurry/org/codehaus/jackson/map/type/TypeBindings;)Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v7

    .line 1072
    .local v7, "t0":Lcom/flurry/org/codehaus/jackson/type/JavaType;
    new-instance v9, Lcom/flurry/org/codehaus/jackson/map/BeanProperty$Std;

    invoke-virtual/range {p2 .. p2}, Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;->getClassAnnotations()Lcom/flurry/org/codehaus/jackson/map/util/Annotations;

    move-result-object v4

    move-object/from16 v0, p3

    move-object/from16 v1, p5

    invoke-direct {v9, v0, v7, v4, v1}, Lcom/flurry/org/codehaus/jackson/map/BeanProperty$Std;-><init>(Ljava/lang/String;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/util/Annotations;Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;)V

    .local v9, "property":Lcom/flurry/org/codehaus/jackson/map/BeanProperty$Std;
    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v8, p5

    .line 1073
    invoke-virtual/range {v4 .. v9}, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerFactory;->resolveType(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v12

    .line 1074
    .local v12, "type":Lcom/flurry/org/codehaus/jackson/type/JavaType;
    if-eq v12, v7, :cond_0

    .line 1075
    invoke-virtual {v9, v12}, Lcom/flurry/org/codehaus/jackson/map/BeanProperty$Std;->withType(Lcom/flurry/org/codehaus/jackson/type/JavaType;)Lcom/flurry/org/codehaus/jackson/map/BeanProperty$Std;

    move-result-object v9

    .line 1078
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p5

    invoke-virtual {v0, v1, v2, v9}, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerFactory;->findDeserializerFromAnnotation(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;

    move-result-object v18

    .line 1080
    .local v18, "deser":Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer<Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p5

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v12, v3}, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerFactory;->modifyTypeByAnnotation(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;Lcom/flurry/org/codehaus/jackson/type/JavaType;Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v12

    .line 1083
    invoke-virtual {v12}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->getTypeHandler()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/flurry/org/codehaus/jackson/map/TypeDeserializer;

    .line 1085
    .local v13, "typeDeser":Lcom/flurry/org/codehaus/jackson/map/TypeDeserializer;
    if-nez v13, :cond_1

    .line 1086
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v12, v9}, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerFactory;->findTypeDeserializer(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)Lcom/flurry/org/codehaus/jackson/map/TypeDeserializer;

    move-result-object v13

    .line 1088
    :cond_1
    new-instance v10, Lcom/flurry/org/codehaus/jackson/map/deser/impl/CreatorProperty;

    invoke-virtual/range {p2 .. p2}, Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;->getClassAnnotations()Lcom/flurry/org/codehaus/jackson/map/util/Annotations;

    move-result-object v14

    move-object/from16 v11, p3

    move-object/from16 v15, p5

    move/from16 v16, p4

    move-object/from16 v17, p6

    invoke-direct/range {v10 .. v17}, Lcom/flurry/org/codehaus/jackson/map/deser/impl/CreatorProperty;-><init>(Ljava/lang/String;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/TypeDeserializer;Lcom/flurry/org/codehaus/jackson/map/util/Annotations;Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedParameter;ILjava/lang/Object;)V

    .line 1090
    .local v10, "prop":Lcom/flurry/org/codehaus/jackson/map/deser/impl/CreatorProperty;
    if-eqz v18, :cond_2

    .line 1091
    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Lcom/flurry/org/codehaus/jackson/map/deser/impl/CreatorProperty;->withValueDeserializer(Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;)Lcom/flurry/org/codehaus/jackson/map/deser/impl/CreatorProperty;

    move-result-object v10

    .line 1093
    :cond_2
    return-object v10
.end method

.method protected constructDefaultValueInstantiator(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;)Lcom/flurry/org/codehaus/jackson/map/deser/ValueInstantiator;
    .locals 8
    .param p1, "config"    # Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;
    .param p2, "beanDesc"    # Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 817
    sget-object v0, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;->CAN_OVERRIDE_ACCESS_MODIFIERS:Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;

    invoke-virtual {p1, v0}, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;->isEnabled(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;)Z

    move-result v7

    .line 818
    .local v7, "fixAccess":Z
    new-instance v5, Lcom/flurry/org/codehaus/jackson/map/deser/impl/CreatorCollector;

    invoke-direct {v5, p2, v7}, Lcom/flurry/org/codehaus/jackson/map/deser/impl/CreatorCollector;-><init>(Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;Z)V

    .line 819
    .local v5, "creators":Lcom/flurry/org/codehaus/jackson/map/deser/impl/CreatorCollector;
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;->getAnnotationIntrospector()Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object v4

    .line 823
    .local v4, "intr":Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;
    invoke-virtual {p2}, Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;->getType()Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->isConcrete()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 824
    invoke-virtual {p2}, Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;->findDefaultConstructor()Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedConstructor;

    move-result-object v6

    .line 825
    .local v6, "defaultCtor":Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedConstructor;
    if-eqz v6, :cond_1

    .line 826
    if-eqz v7, :cond_0

    .line 827
    invoke-virtual {v6}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedConstructor;->getAnnotated()Ljava/lang/reflect/Constructor;

    move-result-object v0

    invoke-static {v0}, Lcom/flurry/org/codehaus/jackson/map/util/ClassUtil;->checkAndFixAccess(Ljava/lang/reflect/Member;)V

    .line 829
    :cond_0
    invoke-virtual {v5, v6}, Lcom/flurry/org/codehaus/jackson/map/deser/impl/CreatorCollector;->setDefaultConstructor(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedConstructor;)V

    .line 834
    .end local v6    # "defaultCtor":Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedConstructor;
    :cond_1
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;->getDefaultVisibilityChecker()Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker;

    move-result-object v3

    .line 835
    .local v3, "vchecker":Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker;, "Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker<*>;"
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;->getAnnotationIntrospector()Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object v0

    invoke-virtual {p2}, Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;->getClassInfo()Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;->findAutoDetectVisibility(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker;)Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 840
    invoke-virtual/range {v0 .. v5}, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerFactory;->_addDeserializerFactoryMethods(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker;Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;Lcom/flurry/org/codehaus/jackson/map/deser/impl/CreatorCollector;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 841
    invoke-virtual/range {v0 .. v5}, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerFactory;->_addDeserializerConstructors(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker;Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;Lcom/flurry/org/codehaus/jackson/map/deser/impl/CreatorCollector;)V

    .line 843
    invoke-virtual {v5, p1}, Lcom/flurry/org/codehaus/jackson/map/deser/impl/CreatorCollector;->constructValueInstantiator(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;)Lcom/flurry/org/codehaus/jackson/map/deser/ValueInstantiator;

    move-result-object v0

    return-object v0
.end method

.method protected constructSettableProperty(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;Ljava/lang/String;Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedField;)Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;
    .locals 18
    .param p1, "config"    # Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;
    .param p2, "beanDesc"    # Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "field"    # Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedField;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 1361
    sget-object v4, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;->CAN_OVERRIDE_ACCESS_MODIFIERS:Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;->isEnabled(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1362
    invoke-virtual/range {p4 .. p4}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedField;->fixAccess()V

    .line 1364
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;->bindingsForBeanType()Lcom/flurry/org/codehaus/jackson/map/type/TypeBindings;

    move-result-object v4

    invoke-virtual/range {p4 .. p4}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedField;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/flurry/org/codehaus/jackson/map/type/TypeBindings;->resolveType(Ljava/lang/reflect/Type;)Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v7

    .line 1365
    .local v7, "t0":Lcom/flurry/org/codehaus/jackson/type/JavaType;
    new-instance v9, Lcom/flurry/org/codehaus/jackson/map/BeanProperty$Std;

    invoke-virtual/range {p2 .. p2}, Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;->getClassAnnotations()Lcom/flurry/org/codehaus/jackson/map/util/Annotations;

    move-result-object v4

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-direct {v9, v0, v7, v4, v1}, Lcom/flurry/org/codehaus/jackson/map/BeanProperty$Std;-><init>(Ljava/lang/String;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/util/Annotations;Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;)V

    .local v9, "property":Lcom/flurry/org/codehaus/jackson/map/BeanProperty$Std;
    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v8, p4

    .line 1366
    invoke-virtual/range {v4 .. v9}, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerFactory;->resolveType(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v12

    .line 1368
    .local v12, "type":Lcom/flurry/org/codehaus/jackson/type/JavaType;
    if-eq v12, v7, :cond_1

    .line 1369
    invoke-virtual {v9, v12}, Lcom/flurry/org/codehaus/jackson/map/BeanProperty$Std;->withType(Lcom/flurry/org/codehaus/jackson/type/JavaType;)Lcom/flurry/org/codehaus/jackson/map/BeanProperty$Std;

    move-result-object v9

    .line 1374
    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v2, v9}, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerFactory;->findDeserializerFromAnnotation(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;

    move-result-object v16

    .line 1375
    .local v16, "propDeser":Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer<Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v12, v3}, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerFactory;->modifyTypeByAnnotation(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;Lcom/flurry/org/codehaus/jackson/type/JavaType;Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v12

    .line 1376
    invoke-virtual {v12}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->getTypeHandler()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/flurry/org/codehaus/jackson/map/TypeDeserializer;

    .line 1377
    .local v13, "typeDeser":Lcom/flurry/org/codehaus/jackson/map/TypeDeserializer;
    new-instance v10, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty$FieldProperty;

    invoke-virtual/range {p2 .. p2}, Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;->getClassAnnotations()Lcom/flurry/org/codehaus/jackson/map/util/Annotations;

    move-result-object v14

    move-object/from16 v11, p3

    move-object/from16 v15, p4

    invoke-direct/range {v10 .. v15}, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty$FieldProperty;-><init>(Ljava/lang/String;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/TypeDeserializer;Lcom/flurry/org/codehaus/jackson/map/util/Annotations;Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedField;)V

    .line 1379
    .local v10, "prop":Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;
    if-eqz v16, :cond_2

    .line 1380
    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;->withValueDeserializer(Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;)Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;

    move-result-object v10

    .line 1383
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;->getAnnotationIntrospector()Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object v4

    move-object/from16 v0, p4

    invoke-virtual {v4, v0}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;->findReferenceType(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;)Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector$ReferenceProperty;

    move-result-object v17

    .line 1384
    .local v17, "ref":Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector$ReferenceProperty;
    if-eqz v17, :cond_3

    invoke-virtual/range {v17 .. v17}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector$ReferenceProperty;->isManagedReference()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1385
    invoke-virtual/range {v17 .. v17}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector$ReferenceProperty;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;->setManagedReferenceName(Ljava/lang/String;)V

    .line 1387
    :cond_3
    return-object v10
.end method

.method protected constructSettableProperty(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;Ljava/lang/String;Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;)Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;
    .locals 18
    .param p1, "config"    # Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;
    .param p2, "beanDesc"    # Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "setter"    # Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 1324
    sget-object v4, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;->CAN_OVERRIDE_ACCESS_MODIFIERS:Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;->isEnabled(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1325
    invoke-virtual/range {p4 .. p4}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;->fixAccess()V

    .line 1329
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;->bindingsForBeanType()Lcom/flurry/org/codehaus/jackson/map/type/TypeBindings;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v5}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;->getParameterType(I)Ljava/lang/reflect/Type;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/flurry/org/codehaus/jackson/map/type/TypeBindings;->resolveType(Ljava/lang/reflect/Type;)Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v7

    .line 1330
    .local v7, "t0":Lcom/flurry/org/codehaus/jackson/type/JavaType;
    new-instance v9, Lcom/flurry/org/codehaus/jackson/map/BeanProperty$Std;

    invoke-virtual/range {p2 .. p2}, Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;->getClassAnnotations()Lcom/flurry/org/codehaus/jackson/map/util/Annotations;

    move-result-object v4

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-direct {v9, v0, v7, v4, v1}, Lcom/flurry/org/codehaus/jackson/map/BeanProperty$Std;-><init>(Ljava/lang/String;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/util/Annotations;Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;)V

    .local v9, "property":Lcom/flurry/org/codehaus/jackson/map/BeanProperty$Std;
    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v8, p4

    .line 1331
    invoke-virtual/range {v4 .. v9}, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerFactory;->resolveType(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v12

    .line 1333
    .local v12, "type":Lcom/flurry/org/codehaus/jackson/type/JavaType;
    if-eq v12, v7, :cond_1

    .line 1334
    invoke-virtual {v9, v12}, Lcom/flurry/org/codehaus/jackson/map/BeanProperty$Std;->withType(Lcom/flurry/org/codehaus/jackson/type/JavaType;)Lcom/flurry/org/codehaus/jackson/map/BeanProperty$Std;

    move-result-object v9

    .line 1340
    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v2, v9}, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerFactory;->findDeserializerFromAnnotation(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;

    move-result-object v16

    .line 1341
    .local v16, "propDeser":Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer<Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v12, v3}, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerFactory;->modifyTypeByAnnotation(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;Lcom/flurry/org/codehaus/jackson/type/JavaType;Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v12

    .line 1342
    invoke-virtual {v12}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->getTypeHandler()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/flurry/org/codehaus/jackson/map/TypeDeserializer;

    .line 1343
    .local v13, "typeDeser":Lcom/flurry/org/codehaus/jackson/map/TypeDeserializer;
    new-instance v10, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty$MethodProperty;

    invoke-virtual/range {p2 .. p2}, Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;->getClassAnnotations()Lcom/flurry/org/codehaus/jackson/map/util/Annotations;

    move-result-object v14

    move-object/from16 v11, p3

    move-object/from16 v15, p4

    invoke-direct/range {v10 .. v15}, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty$MethodProperty;-><init>(Ljava/lang/String;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/TypeDeserializer;Lcom/flurry/org/codehaus/jackson/map/util/Annotations;Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;)V

    .line 1345
    .local v10, "prop":Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;
    if-eqz v16, :cond_2

    .line 1346
    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;->withValueDeserializer(Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;)Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;

    move-result-object v10

    .line 1349
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;->getAnnotationIntrospector()Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object v4

    move-object/from16 v0, p4

    invoke-virtual {v4, v0}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;->findReferenceType(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;)Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector$ReferenceProperty;

    move-result-object v17

    .line 1350
    .local v17, "ref":Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector$ReferenceProperty;
    if-eqz v17, :cond_3

    invoke-virtual/range {v17 .. v17}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector$ReferenceProperty;->isManagedReference()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1351
    invoke-virtual/range {v17 .. v17}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector$ReferenceProperty;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;->setManagedReferenceName(Ljava/lang/String;)V

    .line 1353
    :cond_3
    return-object v10
.end method

.method protected constructSetterlessProperty(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;Ljava/lang/String;Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;)Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;
    .locals 8
    .param p1, "config"    # Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;
    .param p2, "beanDesc"    # Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "getter"    # Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 1402
    sget-object v1, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;->CAN_OVERRIDE_ACCESS_MODIFIERS:Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;

    invoke-virtual {p1, v1}, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;->isEnabled(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1403
    invoke-virtual {p4}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;->fixAccess()V

    .line 1406
    :cond_0
    invoke-virtual {p2}, Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;->bindingsForBeanType()Lcom/flurry/org/codehaus/jackson/map/type/TypeBindings;

    move-result-object v1

    invoke-virtual {p4, v1}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;->getType(Lcom/flurry/org/codehaus/jackson/map/type/TypeBindings;)Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v2

    .line 1410
    .local v2, "type":Lcom/flurry/org/codehaus/jackson/type/JavaType;
    new-instance v7, Lcom/flurry/org/codehaus/jackson/map/BeanProperty$Std;

    invoke-virtual {p2}, Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;->getClassAnnotations()Lcom/flurry/org/codehaus/jackson/map/util/Annotations;

    move-result-object v1

    invoke-direct {v7, p3, v2, v1, p4}, Lcom/flurry/org/codehaus/jackson/map/BeanProperty$Std;-><init>(Ljava/lang/String;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/util/Annotations;Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;)V

    .line 1412
    .local v7, "property":Lcom/flurry/org/codehaus/jackson/map/BeanProperty$Std;
    invoke-virtual {p0, p1, p4, v7}, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerFactory;->findDeserializerFromAnnotation(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;

    move-result-object v6

    .line 1413
    .local v6, "propDeser":Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer<Ljava/lang/Object;>;"
    invoke-virtual {p0, p1, p4, v2, p3}, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerFactory;->modifyTypeByAnnotation(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;Lcom/flurry/org/codehaus/jackson/type/JavaType;Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v2

    .line 1414
    invoke-virtual {v2}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->getTypeHandler()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/flurry/org/codehaus/jackson/map/TypeDeserializer;

    .line 1415
    .local v3, "typeDeser":Lcom/flurry/org/codehaus/jackson/map/TypeDeserializer;
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty$SetterlessProperty;

    invoke-virtual {p2}, Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;->getClassAnnotations()Lcom/flurry/org/codehaus/jackson/map/util/Annotations;

    move-result-object v4

    move-object v1, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty$SetterlessProperty;-><init>(Ljava/lang/String;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/TypeDeserializer;Lcom/flurry/org/codehaus/jackson/map/util/Annotations;Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;)V

    .line 1417
    .local v0, "prop":Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;
    if-eqz v6, :cond_1

    .line 1418
    invoke-virtual {v0, v6}, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;->withValueDeserializer(Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;)Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;

    move-result-object v0

    .line 1420
    :cond_1
    return-object v0
.end method

.method public createBeanDeserializer(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/map/DeserializerProvider;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;
    .locals 11
    .param p1, "config"    # Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;
    .param p2, "p"    # Lcom/flurry/org/codehaus/jackson/map/DeserializerProvider;
    .param p3, "type"    # Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .param p4, "property"    # Lcom/flurry/org/codehaus/jackson/map/BeanProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;",
            "Lcom/flurry/org/codehaus/jackson/map/DeserializerProvider;",
            "Lcom/flurry/org/codehaus/jackson/type/JavaType;",
            "Lcom/flurry/org/codehaus/jackson/map/BeanProperty;",
            ")",
            "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer",
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
    .line 582
    invoke-virtual {p3}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->isAbstract()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 583
    invoke-virtual {p0, p1, p3}, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerFactory;->mapAbstractType(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/type/JavaType;)Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object p3

    .line 587
    :cond_0
    invoke-virtual {p1, p3}, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;->introspect(Lcom/flurry/org/codehaus/jackson/type/JavaType;)Lcom/flurry/org/codehaus/jackson/map/BeanDescription;

    move-result-object v4

    check-cast v4, Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;

    .line 588
    .local v4, "beanDesc":Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;
    invoke-virtual {v4}, Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;->getClassInfo()Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p4}, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerFactory;->findDeserializerFromAnnotation(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;

    move-result-object v6

    .line 589
    .local v6, "ad":Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer<Ljava/lang/Object;>;"
    if-eqz v6, :cond_1

    .line 636
    .end local v6    # "ad":Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer<Ljava/lang/Object;>;"
    :goto_0
    return-object v6

    .line 593
    .restart local v6    # "ad":Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer<Ljava/lang/Object;>;"
    :cond_1
    invoke-virtual {v4}, Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;->getClassInfo()Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, p3, v1}, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerFactory;->modifyTypeByAnnotation(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;Lcom/flurry/org/codehaus/jackson/type/JavaType;Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v10

    .line 594
    .local v10, "newType":Lcom/flurry/org/codehaus/jackson/type/JavaType;
    invoke-virtual {v10}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p3}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_2

    .line 595
    move-object p3, v10

    .line 596
    invoke-virtual {p1, p3}, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;->introspect(Lcom/flurry/org/codehaus/jackson/type/JavaType;)Lcom/flurry/org/codehaus/jackson/map/BeanDescription;

    move-result-object v4

    .end local v4    # "beanDesc":Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;
    check-cast v4, Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;

    .restart local v4    # "beanDesc":Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;
    :cond_2
    move-object v0, p0

    move-object v1, p3

    move-object v2, p1

    move-object v3, p2

    move-object v5, p4

    .line 599
    invoke-virtual/range {v0 .. v5}, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerFactory;->_findCustomBeanDeserializer(Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/map/DeserializerProvider;Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;

    move-result-object v8

    .line 600
    .local v8, "custom":Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer<Ljava/lang/Object;>;"
    if-eqz v8, :cond_3

    move-object v6, v8

    .line 601
    goto :goto_0

    .line 607
    :cond_3
    invoke-virtual {p3}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->isThrowable()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 608
    invoke-virtual {p0, p1, p3, v4, p4}, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerFactory;->buildThrowableDeserializer(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;

    move-result-object v6

    goto :goto_0

    .line 613
    :cond_4
    invoke-virtual {p3}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->isAbstract()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 615
    invoke-virtual {p0, p1, v4}, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerFactory;->materializeAbstractType(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;)Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v7

    .line 616
    .local v7, "concreteType":Lcom/flurry/org/codehaus/jackson/type/JavaType;
    if-eqz v7, :cond_5

    .line 620
    invoke-virtual {p1, v7}, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;->introspect(Lcom/flurry/org/codehaus/jackson/type/JavaType;)Lcom/flurry/org/codehaus/jackson/map/BeanDescription;

    move-result-object v4

    .end local v4    # "beanDesc":Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;
    check-cast v4, Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;

    .line 621
    .restart local v4    # "beanDesc":Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;
    invoke-virtual {p0, p1, v7, v4, p4}, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerFactory;->buildBeanDeserializer(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;

    move-result-object v6

    goto :goto_0

    .line 626
    .end local v7    # "concreteType":Lcom/flurry/org/codehaus/jackson/type/JavaType;
    :cond_5
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerFactory;->findStdBeanDeserializer(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/map/DeserializerProvider;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;

    move-result-object v9

    .line 627
    .local v9, "deser":Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer<Ljava/lang/Object;>;"
    if-eqz v9, :cond_6

    move-object v6, v9

    .line 628
    goto :goto_0

    .line 632
    :cond_6
    invoke-virtual {p3}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerFactory;->isPotentialBeanType(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 633
    const/4 v6, 0x0

    goto :goto_0

    .line 636
    :cond_7
    invoke-virtual {p0, p1, p3, v4, p4}, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerFactory;->buildBeanDeserializer(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;

    move-result-object v6

    goto :goto_0
.end method

.method public createKeyDeserializer(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)Lcom/flurry/org/codehaus/jackson/map/KeyDeserializer;
    .locals 7
    .param p1, "config"    # Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;
    .param p2, "type"    # Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .param p3, "property"    # Lcom/flurry/org/codehaus/jackson/map/BeanProperty;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 298
    iget-object v6, p0, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerFactory;->_factoryConfig:Lcom/flurry/org/codehaus/jackson/map/DeserializerFactory$Config;

    invoke-virtual {v6}, Lcom/flurry/org/codehaus/jackson/map/DeserializerFactory$Config;->hasKeyDeserializers()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 299
    invoke-virtual {p2}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;->introspectClassAnnotations(Ljava/lang/Class;)Lcom/flurry/org/codehaus/jackson/map/BeanDescription;

    move-result-object v0

    check-cast v0, Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;

    .line 300
    .local v0, "beanDesc":Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;
    iget-object v6, p0, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerFactory;->_factoryConfig:Lcom/flurry/org/codehaus/jackson/map/DeserializerFactory$Config;

    invoke-virtual {v6}, Lcom/flurry/org/codehaus/jackson/map/DeserializerFactory$Config;->keyDeserializers()Ljava/lang/Iterable;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flurry/org/codehaus/jackson/map/KeyDeserializers;

    .line 301
    .local v1, "d":Lcom/flurry/org/codehaus/jackson/map/KeyDeserializers;
    invoke-interface {v1, p2, p1, v0, p3}, Lcom/flurry/org/codehaus/jackson/map/KeyDeserializers;->findKeyDeserializer(Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/map/BeanDescription;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)Lcom/flurry/org/codehaus/jackson/map/KeyDeserializer;

    move-result-object v2

    .line 302
    .local v2, "deser":Lcom/flurry/org/codehaus/jackson/map/KeyDeserializer;
    if-eqz v2, :cond_0

    move-object v4, v2

    .line 324
    .end local v0    # "beanDesc":Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;
    .end local v1    # "d":Lcom/flurry/org/codehaus/jackson/map/KeyDeserializers;
    .end local v2    # "deser":Lcom/flurry/org/codehaus/jackson/map/KeyDeserializer;
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    return-object v4

    .line 309
    :cond_2
    invoke-virtual {p2}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v5

    .line 310
    .local v5, "raw":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v6, Ljava/lang/String;

    if-eq v5, v6, :cond_3

    const-class v6, Ljava/lang/Object;

    if-ne v5, v6, :cond_4

    .line 311
    :cond_3
    invoke-static {p1, p2}, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdKeyDeserializers;->constructStringKeyDeserializer(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/type/JavaType;)Lcom/flurry/org/codehaus/jackson/map/KeyDeserializer;

    move-result-object v4

    goto :goto_0

    .line 314
    :cond_4
    sget-object v6, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerFactory;->_keyDeserializers:Ljava/util/HashMap;

    invoke-virtual {v6, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/flurry/org/codehaus/jackson/map/KeyDeserializer;

    .line 315
    .local v4, "kdes":Lcom/flurry/org/codehaus/jackson/map/KeyDeserializer;
    if-nez v4, :cond_1

    .line 319
    invoke-virtual {p2}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->isEnumType()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 320
    invoke-direct {p0, p1, p2, p3}, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerFactory;->_createEnumKeyDeserializer(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)Lcom/flurry/org/codehaus/jackson/map/KeyDeserializer;

    move-result-object v4

    goto :goto_0

    .line 323
    :cond_5
    invoke-static {p1, p2}, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdKeyDeserializers;->findStringBasedKeyDeserializer(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/type/JavaType;)Lcom/flurry/org/codehaus/jackson/map/KeyDeserializer;

    move-result-object v4

    .line 324
    goto :goto_0
.end method

.method public findValueInstantiator(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;)Lcom/flurry/org/codehaus/jackson/map/deser/ValueInstantiator;
    .locals 10
    .param p1, "config"    # Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;
    .param p2, "beanDesc"    # Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 534
    invoke-virtual {p2}, Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;->getClassInfo()Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;

    move-result-object v0

    .line 535
    .local v0, "ac":Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;->getAnnotationIntrospector()Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;->findValueInstantiator(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/Object;

    move-result-object v4

    .line 536
    .local v4, "instDef":Ljava/lang/Object;
    if-eqz v4, :cond_4

    .line 537
    instance-of v7, v4, Lcom/flurry/org/codehaus/jackson/map/deser/ValueInstantiator;

    if-eqz v7, :cond_1

    move-object v5, v4

    .line 538
    check-cast v5, Lcom/flurry/org/codehaus/jackson/map/deser/ValueInstantiator;

    .line 557
    .local v5, "instantiator":Lcom/flurry/org/codehaus/jackson/map/deser/ValueInstantiator;
    :goto_0
    iget-object v7, p0, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerFactory;->_factoryConfig:Lcom/flurry/org/codehaus/jackson/map/DeserializerFactory$Config;

    invoke-virtual {v7}, Lcom/flurry/org/codehaus/jackson/map/DeserializerFactory$Config;->hasValueInstantiators()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 558
    iget-object v7, p0, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerFactory;->_factoryConfig:Lcom/flurry/org/codehaus/jackson/map/DeserializerFactory$Config;

    invoke-virtual {v7}, Lcom/flurry/org/codehaus/jackson/map/DeserializerFactory$Config;->valueInstantiators()Ljava/lang/Iterable;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/flurry/org/codehaus/jackson/map/deser/ValueInstantiators;

    .line 559
    .local v6, "insts":Lcom/flurry/org/codehaus/jackson/map/deser/ValueInstantiators;
    invoke-interface {v6, p1, p2, v5}, Lcom/flurry/org/codehaus/jackson/map/deser/ValueInstantiators;->findValueInstantiator(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/map/BeanDescription;Lcom/flurry/org/codehaus/jackson/map/deser/ValueInstantiator;)Lcom/flurry/org/codehaus/jackson/map/deser/ValueInstantiator;

    move-result-object v5

    .line 561
    if-nez v5, :cond_0

    .line 562
    new-instance v7, Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Broken registered ValueInstantiators (of type "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "): returned null ValueInstantiator"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 540
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v5    # "instantiator":Lcom/flurry/org/codehaus/jackson/map/deser/ValueInstantiator;
    .end local v6    # "insts":Lcom/flurry/org/codehaus/jackson/map/deser/ValueInstantiators;
    :cond_1
    instance-of v7, v4, Ljava/lang/Class;

    if-nez v7, :cond_2

    .line 541
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid value instantiator returned for type "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": neither a Class nor ValueInstantiator"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_2
    move-object v1, v4

    .line 543
    check-cast v1, Ljava/lang/Class;

    .line 544
    .local v1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v7, Lcom/flurry/org/codehaus/jackson/map/deser/ValueInstantiator;

    invoke-virtual {v7, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 545
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid instantiator Class<?> returned for type "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " not a ValueInstantiator"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 549
    :cond_3
    move-object v3, v1

    .line 550
    .local v3, "instClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/flurry/org/codehaus/jackson/map/deser/ValueInstantiator;>;"
    invoke-virtual {p1, v0, v3}, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;->valueInstantiatorInstance(Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;Ljava/lang/Class;)Lcom/flurry/org/codehaus/jackson/map/deser/ValueInstantiator;

    move-result-object v5

    .line 551
    .restart local v5    # "instantiator":Lcom/flurry/org/codehaus/jackson/map/deser/ValueInstantiator;
    goto/16 :goto_0

    .line 553
    .end local v1    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "instClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/flurry/org/codehaus/jackson/map/deser/ValueInstantiator;>;"
    .end local v5    # "instantiator":Lcom/flurry/org/codehaus/jackson/map/deser/ValueInstantiator;
    :cond_4
    invoke-virtual {p0, p1, p2}, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerFactory;->constructDefaultValueInstantiator(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;)Lcom/flurry/org/codehaus/jackson/map/deser/ValueInstantiator;

    move-result-object v5

    .restart local v5    # "instantiator":Lcom/flurry/org/codehaus/jackson/map/deser/ValueInstantiator;
    goto/16 :goto_0

    .line 568
    :cond_5
    return-object v5
.end method

.method public final getConfig()Lcom/flurry/org/codehaus/jackson/map/DeserializerFactory$Config;
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerFactory;->_factoryConfig:Lcom/flurry/org/codehaus/jackson/map/DeserializerFactory$Config;

    return-object v0
.end method

.method protected isIgnorableType(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;Ljava/lang/Class;Ljava/util/Map;)Z
    .locals 4
    .param p1, "config"    # Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;
    .param p2, "beanDesc"    # Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;",
            "Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1463
    .local p3, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p4, "ignoredTypes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;Ljava/lang/Boolean;>;"
    invoke-interface {p4, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 1464
    .local v1, "status":Ljava/lang/Boolean;
    if-nez v1, :cond_0

    .line 1465
    invoke-virtual {p1, p3}, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;->introspectClassAnnotations(Ljava/lang/Class;)Lcom/flurry/org/codehaus/jackson/map/BeanDescription;

    move-result-object v0

    check-cast v0, Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;

    .line 1466
    .local v0, "desc":Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;->getAnnotationIntrospector()Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object v2

    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;->getClassInfo()Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;->isIgnorableType(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/Boolean;

    move-result-object v1

    .line 1468
    if-nez v1, :cond_0

    .line 1469
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 1472
    .end local v0    # "desc":Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    return v2
.end method

.method protected isPotentialBeanType(Ljava/lang/Class;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v2, 0x1

    .line 1439
    invoke-static {p1}, Lcom/flurry/org/codehaus/jackson/map/util/ClassUtil;->canBeABeanType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 1440
    .local v0, "typeStr":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1441
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can not deserialize Class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") as a Bean"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1443
    :cond_0
    invoke-static {p1}, Lcom/flurry/org/codehaus/jackson/map/util/ClassUtil;->isProxyType(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1444
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can not deserialize Proxy class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " as a Bean"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1449
    :cond_1
    invoke-static {p1, v2}, Lcom/flurry/org/codehaus/jackson/map/util/ClassUtil;->isLocalType(Ljava/lang/Class;Z)Ljava/lang/String;

    move-result-object v0

    .line 1450
    if-eqz v0, :cond_2

    .line 1451
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can not deserialize Class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") as a Bean"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1453
    :cond_2
    return v2
.end method

.method public mapAbstractType(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/type/JavaType;)Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .locals 6
    .param p1, "config"    # Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;
    .param p2, "type"    # Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 505
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerFactory;->_mapAbstractType2(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/type/JavaType;)Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v0

    .line 506
    .local v0, "next":Lcom/flurry/org/codehaus/jackson/type/JavaType;
    if-nez v0, :cond_0

    .line 507
    return-object p2

    .line 513
    :cond_0
    invoke-virtual {p2}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v2

    .line 514
    .local v2, "prevCls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v1

    .line 515
    .local v1, "nextCls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eq v2, v1, :cond_1

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 516
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid abstract type resolution from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": latter is not a subtype of former"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 518
    :cond_2
    move-object p2, v0

    .line 519
    goto :goto_0
.end method

.method protected materializeAbstractType(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;)Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .locals 5
    .param p1, "config"    # Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;
    .param p2, "beanDesc"    # Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 662
    invoke-virtual {p2}, Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;->getType()Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v0

    .line 667
    .local v0, "abstractType":Lcom/flurry/org/codehaus/jackson/type/JavaType;
    iget-object v4, p0, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerFactory;->_factoryConfig:Lcom/flurry/org/codehaus/jackson/map/DeserializerFactory$Config;

    invoke-virtual {v4}, Lcom/flurry/org/codehaus/jackson/map/DeserializerFactory$Config;->abstractTypeResolvers()Ljava/lang/Iterable;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/flurry/org/codehaus/jackson/map/AbstractTypeResolver;

    .line 668
    .local v3, "r":Lcom/flurry/org/codehaus/jackson/map/AbstractTypeResolver;
    invoke-virtual {v3, p1, v0}, Lcom/flurry/org/codehaus/jackson/map/AbstractTypeResolver;->resolveAbstractType(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/type/JavaType;)Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v1

    .line 669
    .local v1, "concrete":Lcom/flurry/org/codehaus/jackson/type/JavaType;
    if-eqz v1, :cond_0

    .line 673
    .end local v1    # "concrete":Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .end local v3    # "r":Lcom/flurry/org/codehaus/jackson/map/AbstractTypeResolver;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public withConfig(Lcom/flurry/org/codehaus/jackson/map/DeserializerFactory$Config;)Lcom/flurry/org/codehaus/jackson/map/DeserializerFactory;
    .locals 3
    .param p1, "config"    # Lcom/flurry/org/codehaus/jackson/map/DeserializerFactory$Config;

    .prologue
    .line 267
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerFactory;->_factoryConfig:Lcom/flurry/org/codehaus/jackson/map/DeserializerFactory$Config;

    if-ne v0, p1, :cond_0

    .line 282
    .end local p0    # "this":Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerFactory;
    :goto_0
    return-object p0

    .line 277
    .restart local p0    # "this":Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerFactory;
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerFactory;

    if-eq v0, v1, :cond_1

    .line 278
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Subtype of BeanDeserializerFactory ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") has not properly overridden method \'withAdditionalDeserializers\': can not instantiate subtype with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "additional deserializer definitions"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 282
    :cond_1
    new-instance p0, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerFactory;

    .end local p0    # "this":Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerFactory;
    invoke-direct {p0, p1}, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerFactory;-><init>(Lcom/flurry/org/codehaus/jackson/map/DeserializerFactory$Config;)V

    goto :goto_0
.end method
