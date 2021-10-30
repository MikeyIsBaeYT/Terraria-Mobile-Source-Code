.class public Lcom/flurry/org/codehaus/jackson/map/deser/std/StdKeyDeserializers;
.super Ljava/lang/Object;
.source "StdKeyDeserializers.java"


# instance fields
.field protected final _keyDeserializers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/flurry/org/codehaus/jackson/type/JavaType;",
            "Lcom/flurry/org/codehaus/jackson/map/KeyDeserializer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdKeyDeserializers;->_keyDeserializers:Ljava/util/HashMap;

    .line 34
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdKeyDeserializer$BoolKD;

    invoke-direct {v0}, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdKeyDeserializer$BoolKD;-><init>()V

    invoke-direct {p0, v0}, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdKeyDeserializers;->add(Lcom/flurry/org/codehaus/jackson/map/deser/std/StdKeyDeserializer;)V

    .line 35
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdKeyDeserializer$ByteKD;

    invoke-direct {v0}, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdKeyDeserializer$ByteKD;-><init>()V

    invoke-direct {p0, v0}, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdKeyDeserializers;->add(Lcom/flurry/org/codehaus/jackson/map/deser/std/StdKeyDeserializer;)V

    .line 36
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdKeyDeserializer$CharKD;

    invoke-direct {v0}, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdKeyDeserializer$CharKD;-><init>()V

    invoke-direct {p0, v0}, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdKeyDeserializers;->add(Lcom/flurry/org/codehaus/jackson/map/deser/std/StdKeyDeserializer;)V

    .line 37
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdKeyDeserializer$ShortKD;

    invoke-direct {v0}, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdKeyDeserializer$ShortKD;-><init>()V

    invoke-direct {p0, v0}, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdKeyDeserializers;->add(Lcom/flurry/org/codehaus/jackson/map/deser/std/StdKeyDeserializer;)V

    .line 38
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdKeyDeserializer$IntKD;

    invoke-direct {v0}, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdKeyDeserializer$IntKD;-><init>()V

    invoke-direct {p0, v0}, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdKeyDeserializers;->add(Lcom/flurry/org/codehaus/jackson/map/deser/std/StdKeyDeserializer;)V

    .line 39
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdKeyDeserializer$LongKD;

    invoke-direct {v0}, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdKeyDeserializer$LongKD;-><init>()V

    invoke-direct {p0, v0}, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdKeyDeserializers;->add(Lcom/flurry/org/codehaus/jackson/map/deser/std/StdKeyDeserializer;)V

    .line 40
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdKeyDeserializer$FloatKD;

    invoke-direct {v0}, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdKeyDeserializer$FloatKD;-><init>()V

    invoke-direct {p0, v0}, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdKeyDeserializers;->add(Lcom/flurry/org/codehaus/jackson/map/deser/std/StdKeyDeserializer;)V

    .line 41
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdKeyDeserializer$DoubleKD;

    invoke-direct {v0}, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdKeyDeserializer$DoubleKD;-><init>()V

    invoke-direct {p0, v0}, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdKeyDeserializers;->add(Lcom/flurry/org/codehaus/jackson/map/deser/std/StdKeyDeserializer;)V

    .line 42
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdKeyDeserializer$DateKD;

    invoke-direct {v0}, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdKeyDeserializer$DateKD;-><init>()V

    invoke-direct {p0, v0}, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdKeyDeserializers;->add(Lcom/flurry/org/codehaus/jackson/map/deser/std/StdKeyDeserializer;)V

    .line 43
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdKeyDeserializer$CalendarKD;

    invoke-direct {v0}, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdKeyDeserializer$CalendarKD;-><init>()V

    invoke-direct {p0, v0}, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdKeyDeserializers;->add(Lcom/flurry/org/codehaus/jackson/map/deser/std/StdKeyDeserializer;)V

    .line 44
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdKeyDeserializer$UuidKD;

    invoke-direct {v0}, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdKeyDeserializer$UuidKD;-><init>()V

    invoke-direct {p0, v0}, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdKeyDeserializers;->add(Lcom/flurry/org/codehaus/jackson/map/deser/std/StdKeyDeserializer;)V

    .line 45
    return-void
.end method

.method private add(Lcom/flurry/org/codehaus/jackson/map/deser/std/StdKeyDeserializer;)V
    .locals 3
    .param p1, "kdeser"    # Lcom/flurry/org/codehaus/jackson/map/deser/std/StdKeyDeserializer;

    .prologue
    .line 49
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdKeyDeserializer;->getKeyClass()Ljava/lang/Class;

    move-result-object v0

    .line 53
    .local v0, "keyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdKeyDeserializers;->_keyDeserializers:Ljava/util/HashMap;

    invoke-static {}, Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;->defaultInstance()Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;->uncheckedSimpleType(Ljava/lang/Class;)Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    return-void
.end method

.method public static constructAll()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Lcom/flurry/org/codehaus/jackson/type/JavaType;",
            "Lcom/flurry/org/codehaus/jackson/map/KeyDeserializer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 58
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdKeyDeserializers;

    invoke-direct {v0}, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdKeyDeserializers;-><init>()V

    iget-object v0, v0, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdKeyDeserializers;->_keyDeserializers:Ljava/util/HashMap;

    return-object v0
.end method

.method public static constructEnumKeyDeserializer(Lcom/flurry/org/codehaus/jackson/map/util/EnumResolver;)Lcom/flurry/org/codehaus/jackson/map/KeyDeserializer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/util/EnumResolver",
            "<*>;)",
            "Lcom/flurry/org/codehaus/jackson/map/KeyDeserializer;"
        }
    .end annotation

    .prologue
    .line 73
    .local p0, "enumResolver":Lcom/flurry/org/codehaus/jackson/map/util/EnumResolver;, "Lcom/flurry/org/codehaus/jackson/map/util/EnumResolver<*>;"
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdKeyDeserializer$EnumKD;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdKeyDeserializer$EnumKD;-><init>(Lcom/flurry/org/codehaus/jackson/map/util/EnumResolver;Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;)V

    return-object v0
.end method

.method public static constructEnumKeyDeserializer(Lcom/flurry/org/codehaus/jackson/map/util/EnumResolver;Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;)Lcom/flurry/org/codehaus/jackson/map/KeyDeserializer;
    .locals 1
    .param p1, "factory"    # Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/util/EnumResolver",
            "<*>;",
            "Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;",
            ")",
            "Lcom/flurry/org/codehaus/jackson/map/KeyDeserializer;"
        }
    .end annotation

    .prologue
    .line 78
    .local p0, "enumResolver":Lcom/flurry/org/codehaus/jackson/map/util/EnumResolver;, "Lcom/flurry/org/codehaus/jackson/map/util/EnumResolver<*>;"
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdKeyDeserializer$EnumKD;

    invoke-direct {v0, p0, p1}, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdKeyDeserializer$EnumKD;-><init>(Lcom/flurry/org/codehaus/jackson/map/util/EnumResolver;Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;)V

    return-object v0
.end method

.method public static constructStringKeyDeserializer(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/type/JavaType;)Lcom/flurry/org/codehaus/jackson/map/KeyDeserializer;
    .locals 1
    .param p0, "config"    # Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;
    .param p1, "type"    # Lcom/flurry/org/codehaus/jackson/type/JavaType;

    .prologue
    .line 69
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdKeyDeserializer$StringKD;->forType(Ljava/lang/Class;)Lcom/flurry/org/codehaus/jackson/map/deser/std/StdKeyDeserializer$StringKD;

    move-result-object v0

    return-object v0
.end method

.method public static findStringBasedKeyDeserializer(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/type/JavaType;)Lcom/flurry/org/codehaus/jackson/map/KeyDeserializer;
    .locals 7
    .param p0, "config"    # Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;
    .param p1, "type"    # Lcom/flurry/org/codehaus/jackson/type/JavaType;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 86
    invoke-virtual {p0, p1}, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;->introspect(Lcom/flurry/org/codehaus/jackson/type/JavaType;)Lcom/flurry/org/codehaus/jackson/map/BeanDescription;

    move-result-object v0

    check-cast v0, Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;

    .line 88
    .local v0, "beanDesc":Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;
    new-array v3, v6, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {v0, v3}, Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;->findSingleArgConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 89
    .local v1, "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    if-eqz v1, :cond_1

    .line 90
    sget-object v3, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;->CAN_OVERRIDE_ACCESS_MODIFIERS:Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;

    invoke-virtual {p0, v3}, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;->isEnabled(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 91
    invoke-static {v1}, Lcom/flurry/org/codehaus/jackson/map/util/ClassUtil;->checkAndFixAccess(Ljava/lang/reflect/Member;)V

    .line 93
    :cond_0
    new-instance v3, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdKeyDeserializer$StringCtorKeyDeserializer;

    invoke-direct {v3, v1}, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdKeyDeserializer$StringCtorKeyDeserializer;-><init>(Ljava/lang/reflect/Constructor;)V

    .line 106
    :goto_0
    return-object v3

    .line 98
    :cond_1
    new-array v3, v6, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {v0, v3}, Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;->findFactoryMethod([Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 99
    .local v2, "m":Ljava/lang/reflect/Method;
    if-eqz v2, :cond_3

    .line 100
    sget-object v3, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;->CAN_OVERRIDE_ACCESS_MODIFIERS:Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;

    invoke-virtual {p0, v3}, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;->isEnabled(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 101
    invoke-static {v2}, Lcom/flurry/org/codehaus/jackson/map/util/ClassUtil;->checkAndFixAccess(Ljava/lang/reflect/Member;)V

    .line 103
    :cond_2
    new-instance v3, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdKeyDeserializer$StringFactoryKeyDeserializer;

    invoke-direct {v3, v2}, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdKeyDeserializer$StringFactoryKeyDeserializer;-><init>(Ljava/lang/reflect/Method;)V

    goto :goto_0

    .line 106
    :cond_3
    const/4 v3, 0x0

    goto :goto_0
.end method
