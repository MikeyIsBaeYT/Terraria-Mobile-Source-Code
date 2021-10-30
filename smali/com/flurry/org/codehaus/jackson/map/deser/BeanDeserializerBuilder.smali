.class public Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerBuilder;
.super Ljava/lang/Object;
.source "BeanDeserializerBuilder.java"


# instance fields
.field protected _anySetter:Lcom/flurry/org/codehaus/jackson/map/deser/SettableAnyProperty;

.field protected _backRefProperties:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;",
            ">;"
        }
    .end annotation
.end field

.field protected final _beanDesc:Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;

.field protected _ignorableProps:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected _ignoreAllUnknown:Z

.field protected _injectables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/flurry/org/codehaus/jackson/map/deser/impl/ValueInjector;",
            ">;"
        }
    .end annotation
.end field

.field protected final _properties:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;",
            ">;"
        }
    .end annotation
.end field

.field protected _valueInstantiator:Lcom/flurry/org/codehaus/jackson/map/deser/ValueInstantiator;


# direct methods
.method protected constructor <init>(Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerBuilder;)V
    .locals 2
    .param p1, "src"    # Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerBuilder;

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerBuilder;->_properties:Ljava/util/HashMap;

    .line 101
    iget-object v0, p1, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerBuilder;->_beanDesc:Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerBuilder;->_beanDesc:Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;

    .line 102
    iget-object v0, p1, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerBuilder;->_anySetter:Lcom/flurry/org/codehaus/jackson/map/deser/SettableAnyProperty;

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerBuilder;->_anySetter:Lcom/flurry/org/codehaus/jackson/map/deser/SettableAnyProperty;

    .line 103
    iget-boolean v0, p1, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerBuilder;->_ignoreAllUnknown:Z

    iput-boolean v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerBuilder;->_ignoreAllUnknown:Z

    .line 106
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerBuilder;->_properties:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerBuilder;->_properties:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 107
    iget-object v0, p1, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerBuilder;->_backRefProperties:Ljava/util/HashMap;

    invoke-static {v0}, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerBuilder;->_copy(Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerBuilder;->_backRefProperties:Ljava/util/HashMap;

    .line 109
    iget-object v0, p1, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerBuilder;->_ignorableProps:Ljava/util/HashSet;

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerBuilder;->_ignorableProps:Ljava/util/HashSet;

    .line 110
    iget-object v0, p1, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerBuilder;->_valueInstantiator:Lcom/flurry/org/codehaus/jackson/map/deser/ValueInstantiator;

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerBuilder;->_valueInstantiator:Lcom/flurry/org/codehaus/jackson/map/deser/ValueInstantiator;

    .line 111
    return-void
.end method

.method public constructor <init>(Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;)V
    .locals 1
    .param p1, "beanDesc"    # Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerBuilder;->_properties:Ljava/util/HashMap;

    .line 90
    iput-object p1, p0, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerBuilder;->_beanDesc:Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;

    .line 91
    return-void
.end method

.method private static _copy(Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;",
            ">;)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;",
            ">;"
        }
    .end annotation

    .prologue
    .line 115
    .local p0, "src":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;>;"
    if-nez p0, :cond_0

    .line 116
    const/4 v0, 0x0

    .line 118
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    goto :goto_0
.end method


# virtual methods
.method public addBackReferenceProperty(Ljava/lang/String;Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;)V
    .locals 2
    .param p1, "referenceName"    # Ljava/lang/String;
    .param p2, "prop"    # Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;

    .prologue
    .line 155
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerBuilder;->_backRefProperties:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 156
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerBuilder;->_backRefProperties:Ljava/util/HashMap;

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerBuilder;->_backRefProperties:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerBuilder;->_properties:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    .line 161
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerBuilder;->_properties:Ljava/util/HashMap;

    invoke-virtual {p2}, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    :cond_1
    return-void
.end method

.method public addCreatorProperty(Lcom/flurry/org/codehaus/jackson/map/BeanPropertyDefinition;)V
    .locals 0
    .param p1, "propDef"    # Lcom/flurry/org/codehaus/jackson/map/BeanPropertyDefinition;

    .prologue
    .line 206
    return-void
.end method

.method public addIgnorable(Ljava/lang/String;)V
    .locals 1
    .param p1, "propName"    # Ljava/lang/String;

    .prologue
    .line 185
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerBuilder;->_ignorableProps:Ljava/util/HashSet;

    if-nez v0, :cond_0

    .line 186
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerBuilder;->_ignorableProps:Ljava/util/HashSet;

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerBuilder;->_ignorableProps:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 189
    return-void
.end method

.method public addInjectable(Ljava/lang/String;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/util/Annotations;Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;Ljava/lang/Object;)V
    .locals 7
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "propertyType"    # Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .param p3, "contextAnnotations"    # Lcom/flurry/org/codehaus/jackson/map/util/Annotations;
    .param p4, "member"    # Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;
    .param p5, "valueId"    # Ljava/lang/Object;

    .prologue
    .line 172
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerBuilder;->_injectables:Ljava/util/List;

    if-nez v0, :cond_0

    .line 173
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerBuilder;->_injectables:Ljava/util/List;

    .line 175
    :cond_0
    iget-object v6, p0, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerBuilder;->_injectables:Ljava/util/List;

    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/deser/impl/ValueInjector;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/flurry/org/codehaus/jackson/map/deser/impl/ValueInjector;-><init>(Ljava/lang/String;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/util/Annotations;Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;Ljava/lang/Object;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    return-void
.end method

.method public addOrReplaceProperty(Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;Z)V
    .locals 2
    .param p1, "prop"    # Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;
    .param p2, "allowOverride"    # Z

    .prologue
    .line 132
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerBuilder;->_properties:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    return-void
.end method

.method public addProperty(Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;)V
    .locals 4
    .param p1, "prop"    # Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;

    .prologue
    .line 142
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerBuilder;->_properties:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;

    .line 143
    .local v0, "old":Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;
    if-eqz v0, :cond_0

    if-eq v0, p1, :cond_0

    .line 144
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Duplicate property \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerBuilder;->_beanDesc:Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;

    invoke-virtual {v3}, Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;->getType()Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 146
    :cond_0
    return-void
.end method

.method public build(Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;
    .locals 10
    .param p1, "forProperty"    # Lcom/flurry/org/codehaus/jackson/map/BeanProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/BeanProperty;",
            ")",
            "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 271
    new-instance v4, Lcom/flurry/org/codehaus/jackson/map/deser/impl/BeanPropertyMap;

    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerBuilder;->_properties:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {v4, v0}, Lcom/flurry/org/codehaus/jackson/map/deser/impl/BeanPropertyMap;-><init>(Ljava/util/Collection;)V

    .line 272
    .local v4, "propertyMap":Lcom/flurry/org/codehaus/jackson/map/deser/impl/BeanPropertyMap;
    invoke-virtual {v4}, Lcom/flurry/org/codehaus/jackson/map/deser/impl/BeanPropertyMap;->assignIndexes()V

    .line 273
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializer;

    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerBuilder;->_beanDesc:Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;

    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerBuilder;->_valueInstantiator:Lcom/flurry/org/codehaus/jackson/map/deser/ValueInstantiator;

    iget-object v5, p0, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerBuilder;->_backRefProperties:Ljava/util/HashMap;

    iget-object v6, p0, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerBuilder;->_ignorableProps:Ljava/util/HashSet;

    iget-boolean v7, p0, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerBuilder;->_ignoreAllUnknown:Z

    iget-object v8, p0, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerBuilder;->_anySetter:Lcom/flurry/org/codehaus/jackson/map/deser/SettableAnyProperty;

    iget-object v9, p0, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerBuilder;->_injectables:Ljava/util/List;

    move-object v2, p1

    invoke-direct/range {v0 .. v9}, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializer;-><init>(Lcom/flurry/org/codehaus/jackson/map/BeanDescription;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;Lcom/flurry/org/codehaus/jackson/map/deser/ValueInstantiator;Lcom/flurry/org/codehaus/jackson/map/deser/impl/BeanPropertyMap;Ljava/util/Map;Ljava/util/HashSet;ZLcom/flurry/org/codehaus/jackson/map/deser/SettableAnyProperty;Ljava/util/List;)V

    return-object v0
.end method

.method public getProperties()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;",
            ">;"
        }
    .end annotation

    .prologue
    .line 244
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerBuilder;->_properties:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public getValueInstantiator()Lcom/flurry/org/codehaus/jackson/map/deser/ValueInstantiator;
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerBuilder;->_valueInstantiator:Lcom/flurry/org/codehaus/jackson/map/deser/ValueInstantiator;

    return-object v0
.end method

.method public hasProperty(Ljava/lang/String;)Z
    .locals 1
    .param p1, "propertyName"    # Ljava/lang/String;

    .prologue
    .line 248
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerBuilder;->_properties:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeProperty(Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 253
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerBuilder;->_properties:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;

    return-object v0
.end method

.method public setAnySetter(Lcom/flurry/org/codehaus/jackson/map/deser/SettableAnyProperty;)V
    .locals 2
    .param p1, "s"    # Lcom/flurry/org/codehaus/jackson/map/deser/SettableAnyProperty;

    .prologue
    .line 210
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerBuilder;->_anySetter:Lcom/flurry/org/codehaus/jackson/map/deser/SettableAnyProperty;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 211
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "_anySetter already set to non-null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 213
    :cond_0
    iput-object p1, p0, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerBuilder;->_anySetter:Lcom/flurry/org/codehaus/jackson/map/deser/SettableAnyProperty;

    .line 214
    return-void
.end method

.method public setIgnoreUnknownProperties(Z)V
    .locals 0
    .param p1, "ignore"    # Z

    .prologue
    .line 217
    iput-boolean p1, p0, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerBuilder;->_ignoreAllUnknown:Z

    .line 218
    return-void
.end method

.method public setValueInstantiator(Lcom/flurry/org/codehaus/jackson/map/deser/ValueInstantiator;)V
    .locals 0
    .param p1, "inst"    # Lcom/flurry/org/codehaus/jackson/map/deser/ValueInstantiator;

    .prologue
    .line 224
    iput-object p1, p0, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerBuilder;->_valueInstantiator:Lcom/flurry/org/codehaus/jackson/map/deser/ValueInstantiator;

    .line 225
    return-void
.end method
