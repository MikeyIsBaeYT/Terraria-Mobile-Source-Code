.class public final Lcom/flurry/org/codehaus/jackson/map/deser/impl/PropertyBasedCreator;
.super Ljava/lang/Object;
.source "PropertyBasedCreator.java"


# instance fields
.field protected _defaultValues:[Ljava/lang/Object;

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

.field protected final _propertiesWithInjectables:[Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;

.field protected final _valueInstantiator:Lcom/flurry/org/codehaus/jackson/map/deser/ValueInstantiator;


# direct methods
.method public constructor <init>(Lcom/flurry/org/codehaus/jackson/map/deser/ValueInstantiator;)V
    .locals 9
    .param p1, "valueInstantiator"    # Lcom/flurry/org/codehaus/jackson/map/deser/ValueInstantiator;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/flurry/org/codehaus/jackson/map/deser/impl/PropertyBasedCreator;->_valueInstantiator:Lcom/flurry/org/codehaus/jackson/map/deser/ValueInstantiator;

    .line 50
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, p0, Lcom/flurry/org/codehaus/jackson/map/deser/impl/PropertyBasedCreator;->_properties:Ljava/util/HashMap;

    .line 52
    const/4 v1, 0x0

    .line 53
    .local v1, "defValues":[Ljava/lang/Object;
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/map/deser/ValueInstantiator;->getFromObjectArguments()[Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;

    move-result-object v0

    .line 54
    .local v0, "creatorProps":[Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;
    const/4 v6, 0x0

    .line 55
    .local v6, "propertiesWithInjectables":[Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;
    const/4 v2, 0x0

    .local v2, "i":I
    array-length v4, v0

    .local v4, "len":I
    :goto_0
    if-ge v2, v4, :cond_4

    .line 56
    aget-object v5, v0, v2

    .line 57
    .local v5, "prop":Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;
    iget-object v7, p0, Lcom/flurry/org/codehaus/jackson/map/deser/impl/PropertyBasedCreator;->_properties:Ljava/util/HashMap;

    invoke-virtual {v5}, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    invoke-virtual {v5}, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;->getType()Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v7

    invoke-virtual {v7}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->isPrimitive()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 59
    if-nez v1, :cond_0

    .line 60
    new-array v1, v4, [Ljava/lang/Object;

    .line 62
    :cond_0
    invoke-virtual {v5}, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;->getType()Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v7

    invoke-virtual {v7}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v7

    invoke-static {v7}, Lcom/flurry/org/codehaus/jackson/map/util/ClassUtil;->defaultValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v1, v2

    .line 64
    :cond_1
    invoke-virtual {v5}, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;->getInjectableValueId()Ljava/lang/Object;

    move-result-object v3

    .line 65
    .local v3, "injectableValueId":Ljava/lang/Object;
    if-eqz v3, :cond_3

    .line 66
    if-nez v6, :cond_2

    .line 67
    new-array v6, v4, [Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;

    .line 69
    :cond_2
    aput-object v5, v6, v2

    .line 55
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 72
    .end local v3    # "injectableValueId":Ljava/lang/Object;
    .end local v5    # "prop":Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;
    :cond_4
    iput-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/deser/impl/PropertyBasedCreator;->_defaultValues:[Ljava/lang/Object;

    .line 73
    iput-object v6, p0, Lcom/flurry/org/codehaus/jackson/map/deser/impl/PropertyBasedCreator;->_propertiesWithInjectables:[Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;

    .line 74
    return-void
.end method


# virtual methods
.method public assignDeserializer(Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;)V
    .locals 3
    .param p1, "prop"    # Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;",
            "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 85
    .local p2, "deser":Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer<Ljava/lang/Object;>;"
    invoke-virtual {p1, p2}, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;->withValueDeserializer(Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;)Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;

    move-result-object p1

    .line 86
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/deser/impl/PropertyBasedCreator;->_properties:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    invoke-virtual {p2}, Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;->getNullValue()Ljava/lang/Object;

    move-result-object v0

    .line 88
    .local v0, "nullValue":Ljava/lang/Object;
    if-eqz v0, :cond_1

    .line 89
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/deser/impl/PropertyBasedCreator;->_defaultValues:[Ljava/lang/Object;

    if-nez v1, :cond_0

    .line 90
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/deser/impl/PropertyBasedCreator;->_properties:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/Object;

    iput-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/deser/impl/PropertyBasedCreator;->_defaultValues:[Ljava/lang/Object;

    .line 92
    :cond_0
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/deser/impl/PropertyBasedCreator;->_defaultValues:[Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;->getPropertyIndex()I

    move-result v2

    aput-object v0, v1, v2

    .line 94
    :cond_1
    return-void
.end method

.method public build(Lcom/flurry/org/codehaus/jackson/map/deser/impl/PropertyValueBuffer;)Ljava/lang/Object;
    .locals 4
    .param p1, "buffer"    # Lcom/flurry/org/codehaus/jackson/map/deser/impl/PropertyValueBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 110
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/deser/impl/PropertyBasedCreator;->_valueInstantiator:Lcom/flurry/org/codehaus/jackson/map/deser/ValueInstantiator;

    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/map/deser/impl/PropertyBasedCreator;->_defaultValues:[Ljava/lang/Object;

    invoke-virtual {p1, v3}, Lcom/flurry/org/codehaus/jackson/map/deser/impl/PropertyValueBuffer;->getParameters([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/flurry/org/codehaus/jackson/map/deser/ValueInstantiator;->createFromObjectWith([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 112
    .local v0, "bean":Ljava/lang/Object;
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/map/deser/impl/PropertyValueBuffer;->buffered()Lcom/flurry/org/codehaus/jackson/map/deser/impl/PropertyValue;

    move-result-object v1

    .local v1, "pv":Lcom/flurry/org/codehaus/jackson/map/deser/impl/PropertyValue;
    :goto_0
    if-eqz v1, :cond_0

    .line 113
    invoke-virtual {v1, v0}, Lcom/flurry/org/codehaus/jackson/map/deser/impl/PropertyValue;->assign(Ljava/lang/Object;)V

    .line 112
    iget-object v1, v1, Lcom/flurry/org/codehaus/jackson/map/deser/impl/PropertyValue;->next:Lcom/flurry/org/codehaus/jackson/map/deser/impl/PropertyValue;

    goto :goto_0

    .line 115
    :cond_0
    return-object v0
.end method

.method public findCreatorProperty(Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/impl/PropertyBasedCreator;->_properties:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;

    return-object v0
.end method

.method public getCreatorProperties()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;",
            ">;"
        }
    .end annotation

    .prologue
    .line 77
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/impl/PropertyBasedCreator;->_properties:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public startBuilding(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;)Lcom/flurry/org/codehaus/jackson/map/deser/impl/PropertyValueBuffer;
    .locals 2
    .param p1, "jp"    # Lcom/flurry/org/codehaus/jackson/JsonParser;
    .param p2, "ctxt"    # Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;

    .prologue
    .line 101
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/deser/impl/PropertyValueBuffer;

    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/deser/impl/PropertyBasedCreator;->_properties:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-direct {v0, p1, p2, v1}, Lcom/flurry/org/codehaus/jackson/map/deser/impl/PropertyValueBuffer;-><init>(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;I)V

    .line 102
    .local v0, "buffer":Lcom/flurry/org/codehaus/jackson/map/deser/impl/PropertyValueBuffer;
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/deser/impl/PropertyBasedCreator;->_propertiesWithInjectables:[Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;

    if-eqz v1, :cond_0

    .line 103
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/deser/impl/PropertyBasedCreator;->_propertiesWithInjectables:[Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;

    invoke-virtual {v0, v1}, Lcom/flurry/org/codehaus/jackson/map/deser/impl/PropertyValueBuffer;->inject([Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;)V

    .line 105
    :cond_0
    return-object v0
.end method
