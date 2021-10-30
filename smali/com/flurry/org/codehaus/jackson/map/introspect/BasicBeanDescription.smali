.class public Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;
.super Lcom/flurry/org/codehaus/jackson/map/BeanDescription;
.source "BasicBeanDescription.java"


# instance fields
.field protected final _annotationIntrospector:Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

.field protected _anyGetterMethod:Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;

.field protected _anySetterMethod:Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;

.field protected _bindings:Lcom/flurry/org/codehaus/jackson/map/type/TypeBindings;

.field protected final _classInfo:Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;

.field protected final _config:Lcom/flurry/org/codehaus/jackson/map/MapperConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/org/codehaus/jackson/map/MapperConfig",
            "<*>;"
        }
    .end annotation
.end field

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

.field protected _injectables:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;",
            ">;"
        }
    .end annotation
.end field

.field protected _jsonValueMethod:Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;

.field protected final _properties:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/flurry/org/codehaus/jackson/map/BeanPropertyDefinition;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/flurry/org/codehaus/jackson/map/MapperConfig;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;)V
    .locals 1
    .param p2, "type"    # Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .param p3, "ac"    # Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/MapperConfig",
            "<*>;",
            "Lcom/flurry/org/codehaus/jackson/type/JavaType;",
            "Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 88
    .local p1, "config":Lcom/flurry/org/codehaus/jackson/map/MapperConfig;, "Lcom/flurry/org/codehaus/jackson/map/MapperConfig<*>;"
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;-><init>(Lcom/flurry/org/codehaus/jackson/map/MapperConfig;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;Ljava/util/List;)V

    .line 89
    return-void
.end method

.method protected constructor <init>(Lcom/flurry/org/codehaus/jackson/map/MapperConfig;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;Ljava/util/List;)V
    .locals 1
    .param p2, "type"    # Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .param p3, "ac"    # Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/MapperConfig",
            "<*>;",
            "Lcom/flurry/org/codehaus/jackson/type/JavaType;",
            "Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/org/codehaus/jackson/map/BeanPropertyDefinition;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 97
    .local p1, "config":Lcom/flurry/org/codehaus/jackson/map/MapperConfig;, "Lcom/flurry/org/codehaus/jackson/map/MapperConfig<*>;"
    .local p4, "properties":Ljava/util/List;, "Ljava/util/List<Lcom/flurry/org/codehaus/jackson/map/BeanPropertyDefinition;>;"
    invoke-direct {p0, p2}, Lcom/flurry/org/codehaus/jackson/map/BeanDescription;-><init>(Lcom/flurry/org/codehaus/jackson/type/JavaType;)V

    .line 98
    iput-object p1, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;->_config:Lcom/flurry/org/codehaus/jackson/map/MapperConfig;

    .line 99
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;->_annotationIntrospector:Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    .line 100
    iput-object p3, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;->_classInfo:Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;

    .line 101
    iput-object p4, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;->_properties:Ljava/util/List;

    .line 102
    return-void

    .line 99
    :cond_0
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/map/MapperConfig;->getAnnotationIntrospector()Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object v0

    goto :goto_0
.end method

.method public static forDeserialization(Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;)Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;
    .locals 5
    .param p0, "coll"    # Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;

    .prologue
    .line 112
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;

    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->getConfig()Lcom/flurry/org/codehaus/jackson/map/MapperConfig;

    move-result-object v1

    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->getType()Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v2

    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->getClassDef()Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;

    move-result-object v3

    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->getProperties()Ljava/util/List;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;-><init>(Lcom/flurry/org/codehaus/jackson/map/MapperConfig;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;Ljava/util/List;)V

    .line 114
    .local v0, "desc":Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->getAnySetterMethod()Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;

    move-result-object v1

    iput-object v1, v0, Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;->_anySetterMethod:Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;

    .line 115
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->getIgnoredPropertyNames()Ljava/util/Set;

    move-result-object v1

    iput-object v1, v0, Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;->_ignoredPropertyNames:Ljava/util/Set;

    .line 116
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->getIgnoredPropertyNamesForDeser()Ljava/util/Set;

    move-result-object v1

    iput-object v1, v0, Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;->_ignoredPropertyNamesForDeser:Ljava/util/Set;

    .line 117
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->getInjectables()Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;->_injectables:Ljava/util/Map;

    .line 118
    return-object v0
.end method

.method public static forOtherUse(Lcom/flurry/org/codehaus/jackson/map/MapperConfig;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;)Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;
    .locals 2
    .param p1, "type"    # Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .param p2, "ac"    # Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/MapperConfig",
            "<*>;",
            "Lcom/flurry/org/codehaus/jackson/type/JavaType;",
            "Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;",
            ")",
            "Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;"
        }
    .end annotation

    .prologue
    .line 146
    .local p0, "config":Lcom/flurry/org/codehaus/jackson/map/MapperConfig;, "Lcom/flurry/org/codehaus/jackson/map/MapperConfig<*>;"
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;-><init>(Lcom/flurry/org/codehaus/jackson/map/MapperConfig;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;Ljava/util/List;)V

    return-object v0
.end method

.method public static forSerialization(Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;)Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;
    .locals 5
    .param p0, "coll"    # Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;

    .prologue
    .line 129
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;

    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->getConfig()Lcom/flurry/org/codehaus/jackson/map/MapperConfig;

    move-result-object v1

    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->getType()Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v2

    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->getClassDef()Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;

    move-result-object v3

    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->getProperties()Ljava/util/List;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;-><init>(Lcom/flurry/org/codehaus/jackson/map/MapperConfig;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;Ljava/util/List;)V

    .line 131
    .local v0, "desc":Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->getJsonValueMethod()Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;

    move-result-object v1

    iput-object v1, v0, Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;->_jsonValueMethod:Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;

    .line 132
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->getAnyGetterMethod()Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;

    move-result-object v1

    iput-object v1, v0, Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;->_anyGetterMethod:Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;

    .line 133
    return-object v0
.end method


# virtual methods
.method public _findPropertyFields(Ljava/util/Collection;Z)Ljava/util/LinkedHashMap;
    .locals 6
    .param p2, "forSerialization"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedField;",
            ">;"
        }
    .end annotation

    .prologue
    .line 543
    .local p1, "ignoredProperties":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    .line 544
    .local v4, "results":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedField;>;"
    iget-object v5, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;->_properties:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/flurry/org/codehaus/jackson/map/BeanPropertyDefinition;

    .line 545
    .local v3, "property":Lcom/flurry/org/codehaus/jackson/map/BeanPropertyDefinition;
    invoke-virtual {v3}, Lcom/flurry/org/codehaus/jackson/map/BeanPropertyDefinition;->getField()Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedField;

    move-result-object v0

    .line 546
    .local v0, "f":Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedField;
    if-eqz v0, :cond_0

    .line 547
    invoke-virtual {v3}, Lcom/flurry/org/codehaus/jackson/map/BeanPropertyDefinition;->getName()Ljava/lang/String;

    move-result-object v2

    .line 548
    .local v2, "name":Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 549
    invoke-interface {p1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 553
    :cond_1
    invoke-virtual {v4, v2, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 556
    .end local v0    # "f":Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedField;
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "property":Lcom/flurry/org/codehaus/jackson/map/BeanPropertyDefinition;
    :cond_2
    return-object v4
.end method

.method public bindingsForBeanType()Lcom/flurry/org/codehaus/jackson/map/type/TypeBindings;
    .locals 3

    .prologue
    .line 208
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;->_bindings:Lcom/flurry/org/codehaus/jackson/map/type/TypeBindings;

    if-nez v0, :cond_0

    .line 209
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/type/TypeBindings;

    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;->_config:Lcom/flurry/org/codehaus/jackson/map/MapperConfig;

    invoke-virtual {v1}, Lcom/flurry/org/codehaus/jackson/map/MapperConfig;->getTypeFactory()Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;->_type:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    invoke-direct {v0, v1, v2}, Lcom/flurry/org/codehaus/jackson/map/type/TypeBindings;-><init>(Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;Lcom/flurry/org/codehaus/jackson/type/JavaType;)V

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;->_bindings:Lcom/flurry/org/codehaus/jackson/map/type/TypeBindings;

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;->_bindings:Lcom/flurry/org/codehaus/jackson/map/type/TypeBindings;

    return-object v0
.end method

.method public findAnyGetter()Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 485
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;->_anyGetterMethod:Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;

    if-eqz v1, :cond_0

    .line 489
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;->_anyGetterMethod:Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;

    invoke-virtual {v1}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;->getRawType()Ljava/lang/Class;

    move-result-object v0

    .line 490
    .local v0, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v1, Ljava/util/Map;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 491
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid \'any-getter\' annotation on method "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;->_anyGetterMethod:Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;

    invoke-virtual {v3}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "(): return type is not instance of java.util.Map"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 494
    .end local v0    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;->_anyGetterMethod:Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;

    return-object v1
.end method

.method public findAnySetter()Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 247
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;->_anySetterMethod:Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;

    if-eqz v1, :cond_0

    .line 256
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;->_anySetterMethod:Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;->getParameterClass(I)Ljava/lang/Class;

    move-result-object v0

    .line 257
    .local v0, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v1, Ljava/lang/String;

    if-eq v0, v1, :cond_0

    const-class v1, Ljava/lang/Object;

    if-eq v0, v1, :cond_0

    .line 258
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid \'any-setter\' annotation on method "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;->_anySetterMethod:Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;

    invoke-virtual {v3}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "(): first argument not of type String or Object, but "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 261
    .end local v0    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;->_anySetterMethod:Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;

    return-object v1
.end method

.method public findBackReferenceProperties()Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;",
            ">;"
        }
    .end annotation

    .prologue
    .line 504
    const/4 v5, 0x0

    .line 505
    .local v5, "result":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;>;"
    iget-object v6, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;->_properties:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/flurry/org/codehaus/jackson/map/BeanPropertyDefinition;

    .line 506
    .local v2, "property":Lcom/flurry/org/codehaus/jackson/map/BeanPropertyDefinition;
    invoke-virtual {v2}, Lcom/flurry/org/codehaus/jackson/map/BeanPropertyDefinition;->getMutator()Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;

    move-result-object v0

    .line 507
    .local v0, "am":Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;
    if-eqz v0, :cond_0

    .line 510
    iget-object v6, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;->_annotationIntrospector:Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v6, v0}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;->findReferenceType(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;)Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector$ReferenceProperty;

    move-result-object v3

    .line 511
    .local v3, "refDef":Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector$ReferenceProperty;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector$ReferenceProperty;->isBackReference()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 512
    if-nez v5, :cond_1

    .line 513
    new-instance v5, Ljava/util/HashMap;

    .end local v5    # "result":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;>;"
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 515
    .restart local v5    # "result":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;>;"
    :cond_1
    invoke-virtual {v3}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector$ReferenceProperty;->getName()Ljava/lang/String;

    move-result-object v4

    .line 516
    .local v4, "refName":Ljava/lang/String;
    invoke-virtual {v5, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 517
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Multiple back-reference properties with name \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 521
    .end local v0    # "am":Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;
    .end local v2    # "property":Lcom/flurry/org/codehaus/jackson/map/BeanPropertyDefinition;
    .end local v3    # "refDef":Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector$ReferenceProperty;
    .end local v4    # "refName":Ljava/lang/String;
    :cond_2
    return-object v5
.end method

.method public findCreatorPropertyNames()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 429
    const/4 v6, 0x0

    .line 431
    .local v6, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v8, 0x2

    if-ge v2, v8, :cond_4

    .line 432
    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;->getConstructors()Ljava/util/List;

    move-result-object v4

    .line 434
    .local v4, "l":Ljava/util/List;, "Ljava/util/List<+Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;>;"
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;

    .line 435
    .local v1, "creator":Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;
    invoke-virtual {v1}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;->getParameterCount()I

    move-result v0

    .line 436
    .local v0, "argCount":I
    const/4 v8, 0x1

    if-lt v0, v8, :cond_0

    .line 437
    iget-object v8, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;->_annotationIntrospector:Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    const/4 v9, 0x0

    invoke-virtual {v1, v9}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;->getParameter(I)Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedParameter;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;->findPropertyNameForParam(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedParameter;)Ljava/lang/String;

    move-result-object v5

    .line 438
    .local v5, "name":Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 439
    if-nez v6, :cond_1

    .line 440
    new-instance v6, Ljava/util/ArrayList;

    .end local v6    # "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 442
    .restart local v6    # "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 443
    const/4 v7, 0x1

    .local v7, "p":I
    :goto_2
    if-ge v7, v0, :cond_0

    .line 444
    iget-object v8, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;->_annotationIntrospector:Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v1, v7}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;->getParameter(I)Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedParameter;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;->findPropertyNameForParam(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedParameter;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 443
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 432
    .end local v0    # "argCount":I
    .end local v1    # "creator":Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "l":Ljava/util/List;, "Ljava/util/List<+Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;>;"
    .end local v5    # "name":Ljava/lang/String;
    .end local v7    # "p":I
    :cond_2
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;->getFactoryMethods()Ljava/util/List;

    move-result-object v4

    goto :goto_1

    .line 431
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v4    # "l":Ljava/util/List;, "Ljava/util/List<+Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;>;"
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 448
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "l":Ljava/util/List;, "Ljava/util/List<+Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;>;"
    :cond_4
    if-nez v6, :cond_5

    .line 449
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    .line 451
    .end local v6    # "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_5
    return-object v6
.end method

.method public findDefaultConstructor()Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedConstructor;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;->_classInfo:Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;

    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;->getDefaultConstructor()Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedConstructor;

    move-result-object v0

    return-object v0
.end method

.method public findDeserializableFields(Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker;Ljava/util/Collection;)Ljava/util/LinkedHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker",
            "<*>;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedField;",
            ">;"
        }
    .end annotation

    .prologue
    .line 613
    .local p1, "visibilityChecker":Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker;, "Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker<*>;"
    .local p2, "ignoredProperties":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;->_findPropertyFields(Ljava/util/Collection;Z)Ljava/util/LinkedHashMap;

    move-result-object v0

    return-object v0
.end method

.method public varargs findFactoryMethod([Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .prologue
    .line 379
    .local p1, "expArgTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    iget-object v7, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;->_classInfo:Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;

    invoke-virtual {v7}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;->getStaticMethods()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;

    .line 380
    .local v1, "am":Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;
    invoke-virtual {p0, v1}, Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;->isFactoryMethod(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 382
    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;->getParameterClass(I)Ljava/lang/Class;

    move-result-object v0

    .line 383
    .local v0, "actualArgType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v2, p1

    .local v2, "arr$":[Ljava/lang/Class;
    array-length v6, v2

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v6, :cond_0

    aget-object v3, v2, v5

    .line 385
    .local v3, "expArgType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 386
    invoke-virtual {v1}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;->getAnnotated()Ljava/lang/reflect/Method;

    move-result-object v7

    .line 391
    .end local v0    # "actualArgType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "am":Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;
    .end local v2    # "arr$":[Ljava/lang/Class;
    .end local v3    # "expArgType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    :goto_1
    return-object v7

    .line 383
    .restart local v0    # "actualArgType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v1    # "am":Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;
    .restart local v2    # "arr$":[Ljava/lang/Class;
    .restart local v3    # "expArgType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v5    # "i$":I
    .restart local v6    # "len$":I
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 391
    .end local v0    # "actualArgType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "am":Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;
    .end local v2    # "arr$":[Ljava/lang/Class;
    .end local v3    # "expArgType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    :cond_2
    const/4 v7, 0x0

    goto :goto_1
.end method

.method public findGetters(Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker;Ljava/util/Collection;)Ljava/util/LinkedHashMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker",
            "<*>;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;",
            ">;"
        }
    .end annotation

    .prologue
    .line 570
    .local p1, "visibilityChecker":Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker;, "Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker<*>;"
    .local p2, "ignoredProperties":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    .line 571
    .local v4, "results":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;>;"
    iget-object v5, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;->_properties:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/flurry/org/codehaus/jackson/map/BeanPropertyDefinition;

    .line 572
    .local v3, "property":Lcom/flurry/org/codehaus/jackson/map/BeanPropertyDefinition;
    invoke-virtual {v3}, Lcom/flurry/org/codehaus/jackson/map/BeanPropertyDefinition;->getGetter()Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;

    move-result-object v1

    .line 573
    .local v1, "m":Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;
    if-eqz v1, :cond_0

    .line 574
    invoke-virtual {v3}, Lcom/flurry/org/codehaus/jackson/map/BeanPropertyDefinition;->getName()Ljava/lang/String;

    move-result-object v2

    .line 575
    .local v2, "name":Ljava/lang/String;
    if-eqz p2, :cond_1

    .line 576
    invoke-interface {p2, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 580
    :cond_1
    invoke-virtual {v4, v2, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 583
    .end local v1    # "m":Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "property":Lcom/flurry/org/codehaus/jackson/map/BeanPropertyDefinition;
    :cond_2
    return-object v4
.end method

.method public findInjectables()Ljava/util/Map;
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
    .line 267
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;->_injectables:Ljava/util/Map;

    return-object v0
.end method

.method public findJsonValueMethod()Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;->_jsonValueMethod:Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;

    return-object v0
.end method

.method public findMethod(Ljava/lang/String;[Ljava/lang/Class;)Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;"
        }
    .end annotation

    .prologue
    .line 283
    .local p2, "paramTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;->_classInfo:Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;

    invoke-virtual {v0, p1, p2}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;->findMethod(Ljava/lang/String;[Ljava/lang/Class;)Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;

    move-result-object v0

    return-object v0
.end method

.method public findProperties()Ljava/util/List;
    .locals 1
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
    .line 164
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;->_properties:Ljava/util/List;

    return-object v0
.end method

.method public findSerializableFields(Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker;Ljava/util/Collection;)Ljava/util/LinkedHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker",
            "<*>;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedField;",
            ">;"
        }
    .end annotation

    .prologue
    .line 605
    .local p1, "visibilityChecker":Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker;, "Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker<*>;"
    .local p2, "ignoredProperties":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, p2, v0}, Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;->_findPropertyFields(Ljava/util/Collection;Z)Ljava/util/LinkedHashMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic findSerializableFields(Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker;Ljava/util/Collection;)Ljava/util/Map;
    .locals 1
    .param p1, "x0"    # Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker;
    .param p2, "x1"    # Ljava/util/Collection;

    .prologue
    .line 18
    invoke-virtual {p0, p1, p2}, Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;->findSerializableFields(Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker;Ljava/util/Collection;)Ljava/util/LinkedHashMap;

    move-result-object v0

    return-object v0
.end method

.method public findSerializationInclusion(Lcom/flurry/org/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;)Lcom/flurry/org/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;
    .locals 2
    .param p1, "defValue"    # Lcom/flurry/org/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;

    .prologue
    .line 468
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;->_annotationIntrospector:Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    if-nez v0, :cond_0

    .line 471
    .end local p1    # "defValue":Lcom/flurry/org/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;
    :goto_0
    return-object p1

    .restart local p1    # "defValue":Lcom/flurry/org/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;
    :cond_0
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;->_annotationIntrospector:Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;->_classInfo:Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;

    invoke-virtual {v0, v1, p1}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;->findSerializationInclusion(Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;Lcom/flurry/org/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;)Lcom/flurry/org/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;

    move-result-object p1

    goto :goto_0
.end method

.method public findSetters(Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker;)Ljava/util/LinkedHashMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker",
            "<*>;)",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;",
            ">;"
        }
    .end annotation

    .prologue
    .line 590
    .local p1, "visibilityChecker":Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker;, "Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker<*>;"
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    .line 591
    .local v3, "results":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;>;"
    iget-object v4, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;->_properties:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/flurry/org/codehaus/jackson/map/BeanPropertyDefinition;

    .line 592
    .local v2, "property":Lcom/flurry/org/codehaus/jackson/map/BeanPropertyDefinition;
    invoke-virtual {v2}, Lcom/flurry/org/codehaus/jackson/map/BeanPropertyDefinition;->getSetter()Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;

    move-result-object v1

    .line 593
    .local v1, "m":Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;
    if-eqz v1, :cond_0

    .line 594
    invoke-virtual {v2}, Lcom/flurry/org/codehaus/jackson/map/BeanPropertyDefinition;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 597
    .end local v1    # "m":Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;
    .end local v2    # "property":Lcom/flurry/org/codehaus/jackson/map/BeanPropertyDefinition;
    :cond_1
    return-object v3
.end method

.method public varargs findSingleArgConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 350
    .local p1, "argTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    iget-object v7, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;->_classInfo:Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;

    invoke-virtual {v7}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;->getConstructors()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedConstructor;

    .line 355
    .local v0, "ac":Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedConstructor;
    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedConstructor;->getParameterCount()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_0

    .line 356
    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedConstructor;->getParameterClass(I)Ljava/lang/Class;

    move-result-object v1

    .line 357
    .local v1, "actArg":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v2, p1

    .local v2, "arr$":[Ljava/lang/Class;
    array-length v6, v2

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v6, :cond_0

    aget-object v3, v2, v5

    .line 358
    .local v3, "expArg":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-ne v3, v1, :cond_1

    .line 359
    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedConstructor;->getAnnotated()Ljava/lang/reflect/Constructor;

    move-result-object v7

    .line 364
    .end local v0    # "ac":Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedConstructor;
    .end local v1    # "actArg":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "arr$":[Ljava/lang/Class;
    .end local v3    # "expArg":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    :goto_1
    return-object v7

    .line 357
    .restart local v0    # "ac":Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedConstructor;
    .restart local v1    # "actArg":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v2    # "arr$":[Ljava/lang/Class;
    .restart local v3    # "expArg":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v5    # "i$":I
    .restart local v6    # "len$":I
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 364
    .end local v0    # "ac":Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedConstructor;
    .end local v1    # "actArg":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "arr$":[Ljava/lang/Class;
    .end local v3    # "expArg":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    :cond_2
    const/4 v7, 0x0

    goto :goto_1
.end method

.method public getClassAnnotations()Lcom/flurry/org/codehaus/jackson/map/util/Annotations;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;->_classInfo:Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;

    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;->getAnnotations()Lcom/flurry/org/codehaus/jackson/map/util/Annotations;

    move-result-object v0

    return-object v0
.end method

.method public getClassInfo()Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;->_classInfo:Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;

    return-object v0
.end method

.method public getConstructors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedConstructor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 272
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;->_classInfo:Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;

    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;->getConstructors()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFactoryMethods()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;",
            ">;"
        }
    .end annotation

    .prologue
    .line 329
    iget-object v4, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;->_classInfo:Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;

    invoke-virtual {v4}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;->getStaticMethods()Ljava/util/List;

    move-result-object v1

    .line 330
    .local v1, "candidates":Ljava/util/List;, "Ljava/util/List<Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 339
    .end local v1    # "candidates":Ljava/util/List;, "Ljava/util/List<Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;>;"
    :goto_0
    return-object v1

    .line 333
    .restart local v1    # "candidates":Ljava/util/List;, "Ljava/util/List<Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;>;"
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 334
    .local v3, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;

    .line 335
    .local v0, "am":Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;
    invoke-virtual {p0, v0}, Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;->isFactoryMethod(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 336
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .end local v0    # "am":Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;
    :cond_2
    move-object v1, v3

    .line 339
    goto :goto_0
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
    .line 181
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;->_ignoredPropertyNames:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 182
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    .line 184
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;->_ignoredPropertyNames:Ljava/util/Set;

    goto :goto_0
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
    .line 188
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;->_ignoredPropertyNamesForDeser:Ljava/util/Set;

    return-object v0
.end method

.method public hasKnownClassAnnotations()Z
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;->_classInfo:Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;

    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;->hasAnnotations()Z

    move-result v0

    return v0
.end method

.method public instantiateBean(Z)Ljava/lang/Object;
    .locals 6
    .param p1, "fixAccess"    # Z

    .prologue
    .line 300
    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;->_classInfo:Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;

    invoke-virtual {v3}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;->getDefaultConstructor()Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedConstructor;

    move-result-object v0

    .line 301
    .local v0, "ac":Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedConstructor;
    if-nez v0, :cond_0

    .line 302
    const/4 v3, 0x0

    .line 308
    :goto_0
    return-object v3

    .line 304
    :cond_0
    if-eqz p1, :cond_1

    .line 305
    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedConstructor;->fixAccess()V

    .line 308
    :cond_1
    :try_start_0
    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedConstructor;->getAnnotated()Ljava/lang/reflect/Constructor;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 309
    :catch_0
    move-exception v1

    .line 310
    .local v1, "e":Ljava/lang/Exception;
    move-object v2, v1

    .line 311
    .local v2, "t":Ljava/lang/Throwable;
    :goto_1
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 312
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    goto :goto_1

    .line 314
    :cond_2
    instance-of v3, v2, Ljava/lang/Error;

    if-eqz v3, :cond_3

    check-cast v2, Ljava/lang/Error;

    .end local v2    # "t":Ljava/lang/Throwable;
    throw v2

    .line 315
    .restart local v2    # "t":Ljava/lang/Throwable;
    :cond_3
    instance-of v3, v2, Ljava/lang/RuntimeException;

    if-eqz v3, :cond_4

    check-cast v2, Ljava/lang/RuntimeException;

    .end local v2    # "t":Ljava/lang/Throwable;
    throw v2

    .line 316
    .restart local v2    # "t":Ljava/lang/Throwable;
    :cond_4
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to instantiate bean of type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;->_classInfo:Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;

    invoke-virtual {v5}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;->getAnnotated()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method protected isFactoryMethod(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;)Z
    .locals 5
    .param p1, "am"    # Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 400
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;->getRawType()Ljava/lang/Class;

    move-result-object v0

    .line 401
    .local v0, "rt":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;->getBeanClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 415
    :cond_0
    :goto_0
    return v1

    .line 409
    :cond_1
    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;->_annotationIntrospector:Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v3, p1}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;->hasCreatorAnnotation(Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v1, v2

    .line 410
    goto :goto_0

    .line 412
    :cond_2
    const-string v3, "valueOf"

    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    .line 413
    goto :goto_0
.end method

.method public resolveType(Ljava/lang/reflect/Type;)Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .locals 1
    .param p1, "jdkType"    # Ljava/lang/reflect/Type;

    .prologue
    .line 216
    if-nez p1, :cond_0

    .line 217
    const/4 v0, 0x0

    .line 219
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;->bindingsForBeanType()Lcom/flurry/org/codehaus/jackson/map/type/TypeBindings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/flurry/org/codehaus/jackson/map/type/TypeBindings;->resolveType(Ljava/lang/reflect/Type;)Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v0

    goto :goto_0
.end method
