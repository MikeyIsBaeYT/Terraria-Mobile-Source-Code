.class public Lcom/flurry/org/codehaus/jackson/map/ser/impl/SimpleFilterProvider;
.super Lcom/flurry/org/codehaus/jackson/map/ser/FilterProvider;
.source "SimpleFilterProvider.java"


# instance fields
.field protected _cfgFailOnUnknownId:Z

.field protected _defaultFilter:Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyFilter;

.field protected final _filtersById:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyFilter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, v0}, Lcom/flurry/org/codehaus/jackson/map/ser/impl/SimpleFilterProvider;-><init>(Ljava/util/Map;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyFilter;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 48
    .local p1, "mapping":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyFilter;>;"
    invoke-direct {p0}, Lcom/flurry/org/codehaus/jackson/map/ser/FilterProvider;-><init>()V

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/org/codehaus/jackson/map/ser/impl/SimpleFilterProvider;->_cfgFailOnUnknownId:Z

    .line 49
    iput-object p1, p0, Lcom/flurry/org/codehaus/jackson/map/ser/impl/SimpleFilterProvider;->_filtersById:Ljava/util/Map;

    .line 50
    return-void
.end method


# virtual methods
.method public addFilter(Ljava/lang/String;Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyFilter;)Lcom/flurry/org/codehaus/jackson/map/ser/impl/SimpleFilterProvider;
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "filter"    # Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyFilter;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ser/impl/SimpleFilterProvider;->_filtersById:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    return-object p0
.end method

.method public findFilter(Ljava/lang/Object;)Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyFilter;
    .locals 4
    .param p1, "filterId"    # Ljava/lang/Object;

    .prologue
    .line 104
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/ser/impl/SimpleFilterProvider;->_filtersById:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyFilter;

    .line 105
    .local v0, "f":Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyFilter;
    if-nez v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ser/impl/SimpleFilterProvider;->_defaultFilter:Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyFilter;

    .line 107
    if-nez v0, :cond_0

    iget-boolean v1, p0, Lcom/flurry/org/codehaus/jackson/map/ser/impl/SimpleFilterProvider;->_cfgFailOnUnknownId:Z

    if-eqz v1, :cond_0

    .line 108
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No filter configured with id \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' (type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 112
    :cond_0
    return-object v0
.end method

.method public getDefaultFilter()Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyFilter;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ser/impl/SimpleFilterProvider;->_defaultFilter:Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyFilter;

    return-object v0
.end method

.method public removeFilter(Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyFilter;
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ser/impl/SimpleFilterProvider;->_filtersById:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyFilter;

    return-object v0
.end method

.method public setDefaultFilter(Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyFilter;)Lcom/flurry/org/codehaus/jackson/map/ser/impl/SimpleFilterProvider;
    .locals 0
    .param p1, "f"    # Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyFilter;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/flurry/org/codehaus/jackson/map/ser/impl/SimpleFilterProvider;->_defaultFilter:Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyFilter;

    .line 61
    return-object p0
.end method

.method public setFailOnUnknownId(Z)Lcom/flurry/org/codehaus/jackson/map/ser/impl/SimpleFilterProvider;
    .locals 0
    .param p1, "state"    # Z

    .prologue
    .line 75
    iput-boolean p1, p0, Lcom/flurry/org/codehaus/jackson/map/ser/impl/SimpleFilterProvider;->_cfgFailOnUnknownId:Z

    .line 76
    return-object p0
.end method

.method public willFailOnUnknownId()Z
    .locals 1

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/flurry/org/codehaus/jackson/map/ser/impl/SimpleFilterProvider;->_cfgFailOnUnknownId:Z

    return v0
.end method
