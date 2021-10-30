.class public Lcom/flurry/org/codehaus/jackson/map/ser/BeanSerializerBuilder;
.super Ljava/lang/Object;
.source "BeanSerializerBuilder.java"


# static fields
.field private static final NO_PROPERTIES:[Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;


# instance fields
.field protected _anyGetter:Lcom/flurry/org/codehaus/jackson/map/ser/AnyGetterWriter;

.field protected final _beanDesc:Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;

.field protected _filterId:Ljava/lang/Object;

.field protected _filteredProperties:[Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;

.field protected _properties:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;

    sput-object v0, Lcom/flurry/org/codehaus/jackson/map/ser/BeanSerializerBuilder;->NO_PROPERTIES:[Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;

    return-void
.end method

.method public constructor <init>(Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;)V
    .locals 0
    .param p1, "beanDesc"    # Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/flurry/org/codehaus/jackson/map/ser/BeanSerializerBuilder;->_beanDesc:Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;

    .line 64
    return-void
.end method

.method protected constructor <init>(Lcom/flurry/org/codehaus/jackson/map/ser/BeanSerializerBuilder;)V
    .locals 1
    .param p1, "src"    # Lcom/flurry/org/codehaus/jackson/map/ser/BeanSerializerBuilder;

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iget-object v0, p1, Lcom/flurry/org/codehaus/jackson/map/ser/BeanSerializerBuilder;->_beanDesc:Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ser/BeanSerializerBuilder;->_beanDesc:Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;

    .line 71
    iget-object v0, p1, Lcom/flurry/org/codehaus/jackson/map/ser/BeanSerializerBuilder;->_properties:Ljava/util/List;

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ser/BeanSerializerBuilder;->_properties:Ljava/util/List;

    .line 72
    iget-object v0, p1, Lcom/flurry/org/codehaus/jackson/map/ser/BeanSerializerBuilder;->_filteredProperties:[Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ser/BeanSerializerBuilder;->_filteredProperties:[Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;

    .line 73
    iget-object v0, p1, Lcom/flurry/org/codehaus/jackson/map/ser/BeanSerializerBuilder;->_anyGetter:Lcom/flurry/org/codehaus/jackson/map/ser/AnyGetterWriter;

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ser/BeanSerializerBuilder;->_anyGetter:Lcom/flurry/org/codehaus/jackson/map/ser/AnyGetterWriter;

    .line 74
    iget-object v0, p1, Lcom/flurry/org/codehaus/jackson/map/ser/BeanSerializerBuilder;->_filterId:Ljava/lang/Object;

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ser/BeanSerializerBuilder;->_filterId:Ljava/lang/Object;

    .line 75
    return-void
.end method


# virtual methods
.method public build()Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 119
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ser/BeanSerializerBuilder;->_properties:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ser/BeanSerializerBuilder;->_properties:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ser/BeanSerializerBuilder;->_anyGetter:Lcom/flurry/org/codehaus/jackson/map/ser/AnyGetterWriter;

    if-nez v0, :cond_1

    .line 121
    const/4 v0, 0x0

    .line 128
    :goto_0
    return-object v0

    .line 123
    :cond_1
    sget-object v2, Lcom/flurry/org/codehaus/jackson/map/ser/BeanSerializerBuilder;->NO_PROPERTIES:[Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;

    .line 128
    .local v2, "properties":[Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;
    :goto_1
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/ser/BeanSerializer;

    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/ser/BeanSerializerBuilder;->_beanDesc:Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;

    invoke-virtual {v1}, Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;->getType()Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v1

    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/map/ser/BeanSerializerBuilder;->_filteredProperties:[Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;

    iget-object v4, p0, Lcom/flurry/org/codehaus/jackson/map/ser/BeanSerializerBuilder;->_anyGetter:Lcom/flurry/org/codehaus/jackson/map/ser/AnyGetterWriter;

    iget-object v5, p0, Lcom/flurry/org/codehaus/jackson/map/ser/BeanSerializerBuilder;->_filterId:Ljava/lang/Object;

    invoke-direct/range {v0 .. v5}, Lcom/flurry/org/codehaus/jackson/map/ser/BeanSerializer;-><init>(Lcom/flurry/org/codehaus/jackson/type/JavaType;[Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;[Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;Lcom/flurry/org/codehaus/jackson/map/ser/AnyGetterWriter;Ljava/lang/Object;)V

    goto :goto_0

    .line 125
    .end local v2    # "properties":[Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;
    :cond_2
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ser/BeanSerializerBuilder;->_properties:Ljava/util/List;

    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/ser/BeanSerializerBuilder;->_properties:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;

    .restart local v2    # "properties":[Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;
    goto :goto_1
.end method

.method public createDummy()Lcom/flurry/org/codehaus/jackson/map/ser/BeanSerializer;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ser/BeanSerializerBuilder;->_beanDesc:Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;

    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;->getBeanClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/flurry/org/codehaus/jackson/map/ser/BeanSerializer;->createDummy(Ljava/lang/Class;)Lcom/flurry/org/codehaus/jackson/map/ser/BeanSerializer;

    move-result-object v0

    return-object v0
.end method

.method public getBeanDescription()Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ser/BeanSerializerBuilder;->_beanDesc:Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;

    return-object v0
.end method

.method public getFilteredProperties()[Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ser/BeanSerializerBuilder;->_filteredProperties:[Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;

    return-object v0
.end method

.method public getProperties()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 78
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ser/BeanSerializerBuilder;->_properties:Ljava/util/List;

    return-object v0
.end method

.method public hasProperties()Z
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ser/BeanSerializerBuilder;->_properties:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ser/BeanSerializerBuilder;->_properties:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAnyGetter(Lcom/flurry/org/codehaus/jackson/map/ser/AnyGetterWriter;)V
    .locals 0
    .param p1, "anyGetter"    # Lcom/flurry/org/codehaus/jackson/map/ser/AnyGetterWriter;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/flurry/org/codehaus/jackson/map/ser/BeanSerializerBuilder;->_anyGetter:Lcom/flurry/org/codehaus/jackson/map/ser/AnyGetterWriter;

    .line 98
    return-void
.end method

.method public setFilterId(Ljava/lang/Object;)V
    .locals 0
    .param p1, "filterId"    # Ljava/lang/Object;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/flurry/org/codehaus/jackson/map/ser/BeanSerializerBuilder;->_filterId:Ljava/lang/Object;

    .line 102
    return-void
.end method

.method public setFilteredProperties([Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;)V
    .locals 0
    .param p1, "properties"    # [Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/flurry/org/codehaus/jackson/map/ser/BeanSerializerBuilder;->_filteredProperties:[Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;

    .line 94
    return-void
.end method

.method public setProperties(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 89
    .local p1, "properties":Ljava/util/List;, "Ljava/util/List<Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;>;"
    iput-object p1, p0, Lcom/flurry/org/codehaus/jackson/map/ser/BeanSerializerBuilder;->_properties:Ljava/util/List;

    .line 90
    return-void
.end method
