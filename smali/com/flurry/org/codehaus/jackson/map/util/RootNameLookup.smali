.class public Lcom/flurry/org/codehaus/jackson/map/util/RootNameLookup;
.super Ljava/lang/Object;
.source "RootNameLookup.java"


# instance fields
.field protected _rootNames:Lcom/flurry/org/codehaus/jackson/map/util/LRUMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/org/codehaus/jackson/map/util/LRUMap",
            "<",
            "Lcom/flurry/org/codehaus/jackson/map/type/ClassKey;",
            "Lcom/flurry/org/codehaus/jackson/io/SerializedString;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public findRootName(Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/MapperConfig;)Lcom/flurry/org/codehaus/jackson/io/SerializedString;
    .locals 1
    .param p1, "rootType"    # Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/type/JavaType;",
            "Lcom/flurry/org/codehaus/jackson/map/MapperConfig",
            "<*>;)",
            "Lcom/flurry/org/codehaus/jackson/io/SerializedString;"
        }
    .end annotation

    .prologue
    .line 26
    .local p2, "config":Lcom/flurry/org/codehaus/jackson/map/MapperConfig;, "Lcom/flurry/org/codehaus/jackson/map/MapperConfig<*>;"
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/flurry/org/codehaus/jackson/map/util/RootNameLookup;->findRootName(Ljava/lang/Class;Lcom/flurry/org/codehaus/jackson/map/MapperConfig;)Lcom/flurry/org/codehaus/jackson/io/SerializedString;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized findRootName(Ljava/lang/Class;Lcom/flurry/org/codehaus/jackson/map/MapperConfig;)Lcom/flurry/org/codehaus/jackson/io/SerializedString;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/flurry/org/codehaus/jackson/map/MapperConfig",
            "<*>;)",
            "Lcom/flurry/org/codehaus/jackson/io/SerializedString;"
        }
    .end annotation

    .prologue
    .line 31
    .local p1, "rootType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "config":Lcom/flurry/org/codehaus/jackson/map/MapperConfig;, "Lcom/flurry/org/codehaus/jackson/map/MapperConfig<*>;"
    monitor-enter p0

    :try_start_0
    new-instance v3, Lcom/flurry/org/codehaus/jackson/map/type/ClassKey;

    invoke-direct {v3, p1}, Lcom/flurry/org/codehaus/jackson/map/type/ClassKey;-><init>(Ljava/lang/Class;)V

    .line 33
    .local v3, "key":Lcom/flurry/org/codehaus/jackson/map/type/ClassKey;
    iget-object v6, p0, Lcom/flurry/org/codehaus/jackson/map/util/RootNameLookup;->_rootNames:Lcom/flurry/org/codehaus/jackson/map/util/LRUMap;

    if-nez v6, :cond_2

    .line 34
    new-instance v6, Lcom/flurry/org/codehaus/jackson/map/util/LRUMap;

    const/16 v7, 0x14

    const/16 v8, 0xc8

    invoke-direct {v6, v7, v8}, Lcom/flurry/org/codehaus/jackson/map/util/LRUMap;-><init>(II)V

    iput-object v6, p0, Lcom/flurry/org/codehaus/jackson/map/util/RootNameLookup;->_rootNames:Lcom/flurry/org/codehaus/jackson/map/util/LRUMap;

    .line 41
    :cond_0
    invoke-virtual {p2, p1}, Lcom/flurry/org/codehaus/jackson/map/MapperConfig;->introspectClassAnnotations(Ljava/lang/Class;)Lcom/flurry/org/codehaus/jackson/map/BeanDescription;

    move-result-object v1

    check-cast v1, Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;

    .line 42
    .local v1, "beanDesc":Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;
    invoke-virtual {p2}, Lcom/flurry/org/codehaus/jackson/map/MapperConfig;->getAnnotationIntrospector()Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object v2

    .line 43
    .local v2, "intr":Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;
    invoke-virtual {v1}, Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;->getClassInfo()Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;

    move-result-object v0

    .line 44
    .local v0, "ac":Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;
    invoke-virtual {v2, v0}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;->findRootName(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/String;

    move-result-object v5

    .line 46
    .local v5, "nameStr":Ljava/lang/String;
    if-nez v5, :cond_1

    .line 48
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    .line 50
    :cond_1
    new-instance v4, Lcom/flurry/org/codehaus/jackson/io/SerializedString;

    invoke-direct {v4, v5}, Lcom/flurry/org/codehaus/jackson/io/SerializedString;-><init>(Ljava/lang/String;)V

    .line 51
    .local v4, "name":Lcom/flurry/org/codehaus/jackson/io/SerializedString;
    iget-object v6, p0, Lcom/flurry/org/codehaus/jackson/map/util/RootNameLookup;->_rootNames:Lcom/flurry/org/codehaus/jackson/map/util/LRUMap;

    invoke-virtual {v6, v3, v4}, Lcom/flurry/org/codehaus/jackson/map/util/LRUMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    .end local v0    # "ac":Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;
    .end local v1    # "beanDesc":Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;
    .end local v2    # "intr":Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;
    .end local v5    # "nameStr":Ljava/lang/String;
    :goto_0
    monitor-exit p0

    return-object v4

    .line 36
    .end local v4    # "name":Lcom/flurry/org/codehaus/jackson/io/SerializedString;
    :cond_2
    :try_start_1
    iget-object v6, p0, Lcom/flurry/org/codehaus/jackson/map/util/RootNameLookup;->_rootNames:Lcom/flurry/org/codehaus/jackson/map/util/LRUMap;

    invoke-virtual {v6, v3}, Lcom/flurry/org/codehaus/jackson/map/util/LRUMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/flurry/org/codehaus/jackson/io/SerializedString;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    .restart local v4    # "name":Lcom/flurry/org/codehaus/jackson/io/SerializedString;
    if-eqz v4, :cond_0

    goto :goto_0

    .line 31
    .end local v3    # "key":Lcom/flurry/org/codehaus/jackson/map/type/ClassKey;
    .end local v4    # "name":Lcom/flurry/org/codehaus/jackson/io/SerializedString;
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6
.end method
