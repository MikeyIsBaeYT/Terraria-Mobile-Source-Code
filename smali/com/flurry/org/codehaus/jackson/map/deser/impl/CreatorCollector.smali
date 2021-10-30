.class public Lcom/flurry/org/codehaus/jackson/map/deser/impl/CreatorCollector;
.super Ljava/lang/Object;
.source "CreatorCollector.java"


# instance fields
.field final _beanDesc:Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;

.field protected _booleanCreator:Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;

.field final _canFixAccess:Z

.field protected _defaultConstructor:Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedConstructor;

.field protected _delegateCreator:Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;

.field protected _doubleCreator:Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;

.field protected _intCreator:Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;

.field protected _longCreator:Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;

.field protected _propertyBasedArgs:[Lcom/flurry/org/codehaus/jackson/map/deser/impl/CreatorProperty;

.field protected _propertyBasedCreator:Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;

.field protected _stringCreator:Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;


# direct methods
.method public constructor <init>(Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;Z)V
    .locals 1
    .param p1, "beanDesc"    # Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;
    .param p2, "canFixAccess"    # Z

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/impl/CreatorCollector;->_propertyBasedArgs:[Lcom/flurry/org/codehaus/jackson/map/deser/impl/CreatorProperty;

    .line 43
    iput-object p1, p0, Lcom/flurry/org/codehaus/jackson/map/deser/impl/CreatorCollector;->_beanDesc:Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;

    .line 44
    iput-boolean p2, p0, Lcom/flurry/org/codehaus/jackson/map/deser/impl/CreatorCollector;->_canFixAccess:Z

    .line 45
    return-void
.end method


# virtual methods
.method public addBooleanCreator(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;)V
    .locals 2
    .param p1, "creator"    # Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/impl/CreatorCollector;->_booleanCreator:Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;

    const-string v1, "boolean"

    invoke-virtual {p0, p1, v0, v1}, Lcom/flurry/org/codehaus/jackson/map/deser/impl/CreatorCollector;->verifyNonDup(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/impl/CreatorCollector;->_booleanCreator:Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;

    .line 98
    return-void
.end method

.method public addDelegatingCreator(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;)V
    .locals 2
    .param p1, "creator"    # Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/impl/CreatorCollector;->_delegateCreator:Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;

    const-string v1, "delegate"

    invoke-virtual {p0, p1, v0, v1}, Lcom/flurry/org/codehaus/jackson/map/deser/impl/CreatorCollector;->verifyNonDup(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/impl/CreatorCollector;->_delegateCreator:Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;

    .line 102
    return-void
.end method

.method public addDoubleCreator(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;)V
    .locals 2
    .param p1, "creator"    # Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/impl/CreatorCollector;->_doubleCreator:Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;

    const-string v1, "double"

    invoke-virtual {p0, p1, v0, v1}, Lcom/flurry/org/codehaus/jackson/map/deser/impl/CreatorCollector;->verifyNonDup(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/impl/CreatorCollector;->_doubleCreator:Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;

    .line 95
    return-void
.end method

.method public addIntCreator(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;)V
    .locals 2
    .param p1, "creator"    # Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/impl/CreatorCollector;->_intCreator:Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;

    const-string v1, "int"

    invoke-virtual {p0, p1, v0, v1}, Lcom/flurry/org/codehaus/jackson/map/deser/impl/CreatorCollector;->verifyNonDup(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/impl/CreatorCollector;->_intCreator:Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;

    .line 89
    return-void
.end method

.method public addLongCreator(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;)V
    .locals 2
    .param p1, "creator"    # Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/impl/CreatorCollector;->_longCreator:Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;

    const-string v1, "long"

    invoke-virtual {p0, p1, v0, v1}, Lcom/flurry/org/codehaus/jackson/map/deser/impl/CreatorCollector;->verifyNonDup(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/impl/CreatorCollector;->_longCreator:Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;

    .line 92
    return-void
.end method

.method public addPropertyCreator(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;[Lcom/flurry/org/codehaus/jackson/map/deser/impl/CreatorProperty;)V
    .locals 8
    .param p1, "creator"    # Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;
    .param p2, "properties"    # [Lcom/flurry/org/codehaus/jackson/map/deser/impl/CreatorProperty;

    .prologue
    .line 106
    iget-object v5, p0, Lcom/flurry/org/codehaus/jackson/map/deser/impl/CreatorCollector;->_propertyBasedCreator:Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;

    const-string v6, "property-based"

    invoke-virtual {p0, p1, v5, v6}, Lcom/flurry/org/codehaus/jackson/map/deser/impl/CreatorCollector;->verifyNonDup(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;

    move-result-object v5

    iput-object v5, p0, Lcom/flurry/org/codehaus/jackson/map/deser/impl/CreatorCollector;->_propertyBasedCreator:Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;

    .line 108
    array-length v5, p2

    const/4 v6, 0x1

    if-le v5, v6, :cond_1

    .line 109
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 110
    .local v3, "names":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    array-length v1, p2

    .local v1, "len":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 111
    aget-object v5, p2, v0

    invoke-virtual {v5}, Lcom/flurry/org/codehaus/jackson/map/deser/impl/CreatorProperty;->getName()Ljava/lang/String;

    move-result-object v2

    .line 112
    .local v2, "name":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 113
    .local v4, "old":Ljava/lang/Integer;
    if-eqz v4, :cond_0

    .line 114
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Duplicate creator property \""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\" (index "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " vs "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 110
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 118
    .end local v0    # "i":I
    .end local v1    # "len":I
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "names":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v4    # "old":Ljava/lang/Integer;
    :cond_1
    iput-object p2, p0, Lcom/flurry/org/codehaus/jackson/map/deser/impl/CreatorCollector;->_propertyBasedArgs:[Lcom/flurry/org/codehaus/jackson/map/deser/impl/CreatorProperty;

    .line 119
    return-void
.end method

.method public addStringCreator(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;)V
    .locals 2
    .param p1, "creator"    # Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/impl/CreatorCollector;->_stringCreator:Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;

    const-string v1, "String"

    invoke-virtual {p0, p1, v0, v1}, Lcom/flurry/org/codehaus/jackson/map/deser/impl/CreatorCollector;->verifyNonDup(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/impl/CreatorCollector;->_stringCreator:Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;

    .line 86
    return-void
.end method

.method public constructValueInstantiator(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;)Lcom/flurry/org/codehaus/jackson/map/deser/ValueInstantiator;
    .locals 7
    .param p1, "config"    # Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;

    .prologue
    .line 52
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdValueInstantiator;

    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/deser/impl/CreatorCollector;->_beanDesc:Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;

    invoke-virtual {v1}, Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;->getType()Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdValueInstantiator;-><init>(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/type/JavaType;)V

    .line 56
    .local v0, "inst":Lcom/flurry/org/codehaus/jackson/map/deser/std/StdValueInstantiator;
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/deser/impl/CreatorCollector;->_delegateCreator:Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;

    if-nez v1, :cond_0

    .line 57
    const/4 v3, 0x0

    .line 63
    .local v3, "delegateType":Lcom/flurry/org/codehaus/jackson/type/JavaType;
    :goto_0
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/deser/impl/CreatorCollector;->_defaultConstructor:Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedConstructor;

    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/deser/impl/CreatorCollector;->_delegateCreator:Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;

    iget-object v4, p0, Lcom/flurry/org/codehaus/jackson/map/deser/impl/CreatorCollector;->_propertyBasedCreator:Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;

    iget-object v5, p0, Lcom/flurry/org/codehaus/jackson/map/deser/impl/CreatorCollector;->_propertyBasedArgs:[Lcom/flurry/org/codehaus/jackson/map/deser/impl/CreatorProperty;

    invoke-virtual/range {v0 .. v5}, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdValueInstantiator;->configureFromObjectSettings(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;[Lcom/flurry/org/codehaus/jackson/map/deser/impl/CreatorProperty;)V

    .line 66
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/deser/impl/CreatorCollector;->_stringCreator:Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;

    invoke-virtual {v0, v1}, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdValueInstantiator;->configureFromStringCreator(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;)V

    .line 67
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/deser/impl/CreatorCollector;->_intCreator:Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;

    invoke-virtual {v0, v1}, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdValueInstantiator;->configureFromIntCreator(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;)V

    .line 68
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/deser/impl/CreatorCollector;->_longCreator:Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;

    invoke-virtual {v0, v1}, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdValueInstantiator;->configureFromLongCreator(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;)V

    .line 69
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/deser/impl/CreatorCollector;->_doubleCreator:Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;

    invoke-virtual {v0, v1}, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdValueInstantiator;->configureFromDoubleCreator(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;)V

    .line 70
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/deser/impl/CreatorCollector;->_booleanCreator:Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;

    invoke-virtual {v0, v1}, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdValueInstantiator;->configureFromBooleanCreator(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;)V

    .line 71
    return-object v0

    .line 59
    .end local v3    # "delegateType":Lcom/flurry/org/codehaus/jackson/type/JavaType;
    :cond_0
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/deser/impl/CreatorCollector;->_beanDesc:Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;

    invoke-virtual {v1}, Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;->bindingsForBeanType()Lcom/flurry/org/codehaus/jackson/map/type/TypeBindings;

    move-result-object v6

    .line 60
    .local v6, "bindings":Lcom/flurry/org/codehaus/jackson/map/type/TypeBindings;
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/deser/impl/CreatorCollector;->_delegateCreator:Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;->getParameterType(I)Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/flurry/org/codehaus/jackson/map/type/TypeBindings;->resolveType(Ljava/lang/reflect/Type;)Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v3

    .restart local v3    # "delegateType":Lcom/flurry/org/codehaus/jackson/type/JavaType;
    goto :goto_0
.end method

.method public setDefaultConstructor(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedConstructor;)V
    .locals 0
    .param p1, "ctor"    # Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedConstructor;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/flurry/org/codehaus/jackson/map/deser/impl/CreatorCollector;->_defaultConstructor:Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedConstructor;

    .line 82
    return-void
.end method

.method protected verifyNonDup(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;
    .locals 3
    .param p1, "newOne"    # Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;
    .param p2, "oldOne"    # Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;
    .param p3, "type"    # Ljava/lang/String;

    .prologue
    .line 130
    if-eqz p2, :cond_0

    .line 132
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 133
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Conflicting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " creators: already had "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", encountered "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 136
    :cond_0
    iget-boolean v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/impl/CreatorCollector;->_canFixAccess:Z

    if-eqz v0, :cond_1

    .line 137
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;->getAnnotated()Ljava/lang/reflect/AnnotatedElement;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Member;

    invoke-static {v0}, Lcom/flurry/org/codehaus/jackson/map/util/ClassUtil;->checkAndFixAccess(Ljava/lang/reflect/Member;)V

    .line 139
    :cond_1
    return-object p1
.end method
