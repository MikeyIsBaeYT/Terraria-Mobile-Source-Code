.class public Lcom/flurry/org/codehaus/jackson/map/jsontype/impl/StdTypeResolverBuilder;
.super Ljava/lang/Object;
.source "StdTypeResolverBuilder.java"

# interfaces
.implements Lcom/flurry/org/codehaus/jackson/map/jsontype/TypeResolverBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/org/codehaus/jackson/map/jsontype/impl/StdTypeResolverBuilder$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/flurry/org/codehaus/jackson/map/jsontype/TypeResolverBuilder",
        "<",
        "Lcom/flurry/org/codehaus/jackson/map/jsontype/impl/StdTypeResolverBuilder;",
        ">;"
    }
.end annotation


# instance fields
.field protected _customIdResolver:Lcom/flurry/org/codehaus/jackson/map/jsontype/TypeIdResolver;

.field protected _defaultImpl:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field protected _idType:Lcom/flurry/org/codehaus/jackson/annotate/JsonTypeInfo$Id;

.field protected _includeAs:Lcom/flurry/org/codehaus/jackson/annotate/JsonTypeInfo$As;

.field protected _typeProperty:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static noTypeInfoBuilder()Lcom/flurry/org/codehaus/jackson/map/jsontype/impl/StdTypeResolverBuilder;
    .locals 3

    .prologue
    .line 58
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/jsontype/impl/StdTypeResolverBuilder;

    invoke-direct {v0}, Lcom/flurry/org/codehaus/jackson/map/jsontype/impl/StdTypeResolverBuilder;-><init>()V

    sget-object v1, Lcom/flurry/org/codehaus/jackson/annotate/JsonTypeInfo$Id;->NONE:Lcom/flurry/org/codehaus/jackson/annotate/JsonTypeInfo$Id;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/flurry/org/codehaus/jackson/map/jsontype/impl/StdTypeResolverBuilder;->init(Lcom/flurry/org/codehaus/jackson/annotate/JsonTypeInfo$Id;Lcom/flurry/org/codehaus/jackson/map/jsontype/TypeIdResolver;)Lcom/flurry/org/codehaus/jackson/map/jsontype/impl/StdTypeResolverBuilder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public buildTypeDeserializer(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/type/JavaType;Ljava/util/Collection;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)Lcom/flurry/org/codehaus/jackson/map/TypeDeserializer;
    .locals 6
    .param p1, "config"    # Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;
    .param p2, "baseType"    # Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .param p4, "property"    # Lcom/flurry/org/codehaus/jackson/map/BeanProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;",
            "Lcom/flurry/org/codehaus/jackson/type/JavaType;",
            "Ljava/util/Collection",
            "<",
            "Lcom/flurry/org/codehaus/jackson/map/jsontype/NamedType;",
            ">;",
            "Lcom/flurry/org/codehaus/jackson/map/BeanProperty;",
            ")",
            "Lcom/flurry/org/codehaus/jackson/map/TypeDeserializer;"
        }
    .end annotation

    .prologue
    .line 100
    .local p3, "subtypes":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/flurry/org/codehaus/jackson/map/jsontype/NamedType;>;"
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/jsontype/impl/StdTypeResolverBuilder;->_idType:Lcom/flurry/org/codehaus/jackson/annotate/JsonTypeInfo$Id;

    sget-object v1, Lcom/flurry/org/codehaus/jackson/annotate/JsonTypeInfo$Id;->NONE:Lcom/flurry/org/codehaus/jackson/annotate/JsonTypeInfo$Id;

    if-ne v0, v1, :cond_0

    .line 101
    const/4 v0, 0x0

    .line 116
    :goto_0
    return-object v0

    .line 104
    :cond_0
    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/flurry/org/codehaus/jackson/map/jsontype/impl/StdTypeResolverBuilder;->idResolver(Lcom/flurry/org/codehaus/jackson/map/MapperConfig;Lcom/flurry/org/codehaus/jackson/type/JavaType;Ljava/util/Collection;ZZ)Lcom/flurry/org/codehaus/jackson/map/jsontype/TypeIdResolver;

    move-result-object v2

    .line 107
    .local v2, "idRes":Lcom/flurry/org/codehaus/jackson/map/jsontype/TypeIdResolver;
    sget-object v0, Lcom/flurry/org/codehaus/jackson/map/jsontype/impl/StdTypeResolverBuilder$1;->$SwitchMap$org$codehaus$jackson$annotate$JsonTypeInfo$As:[I

    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/jsontype/impl/StdTypeResolverBuilder;->_includeAs:Lcom/flurry/org/codehaus/jackson/annotate/JsonTypeInfo$As;

    invoke-virtual {v1}, Lcom/flurry/org/codehaus/jackson/annotate/JsonTypeInfo$As;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 119
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Do not know how to construct standard type serializer for inclusion type: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/map/jsontype/impl/StdTypeResolverBuilder;->_includeAs:Lcom/flurry/org/codehaus/jackson/annotate/JsonTypeInfo$As;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    :pswitch_0
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/jsontype/impl/AsArrayTypeDeserializer;

    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/jsontype/impl/StdTypeResolverBuilder;->_defaultImpl:Ljava/lang/Class;

    invoke-direct {v0, p2, v2, p4, v1}, Lcom/flurry/org/codehaus/jackson/map/jsontype/impl/AsArrayTypeDeserializer;-><init>(Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/jsontype/TypeIdResolver;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;Ljava/lang/Class;)V

    goto :goto_0

    .line 111
    :pswitch_1
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/jsontype/impl/AsPropertyTypeDeserializer;

    iget-object v4, p0, Lcom/flurry/org/codehaus/jackson/map/jsontype/impl/StdTypeResolverBuilder;->_defaultImpl:Ljava/lang/Class;

    iget-object v5, p0, Lcom/flurry/org/codehaus/jackson/map/jsontype/impl/StdTypeResolverBuilder;->_typeProperty:Ljava/lang/String;

    move-object v1, p2

    move-object v3, p4

    invoke-direct/range {v0 .. v5}, Lcom/flurry/org/codehaus/jackson/map/jsontype/impl/AsPropertyTypeDeserializer;-><init>(Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/jsontype/TypeIdResolver;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_0

    .line 114
    :pswitch_2
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/jsontype/impl/AsWrapperTypeDeserializer;

    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/jsontype/impl/StdTypeResolverBuilder;->_defaultImpl:Ljava/lang/Class;

    invoke-direct {v0, p2, v2, p4, v1}, Lcom/flurry/org/codehaus/jackson/map/jsontype/impl/AsWrapperTypeDeserializer;-><init>(Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/jsontype/TypeIdResolver;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;Ljava/lang/Class;)V

    goto :goto_0

    .line 116
    :pswitch_3
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/jsontype/impl/AsExternalTypeDeserializer;

    iget-object v4, p0, Lcom/flurry/org/codehaus/jackson/map/jsontype/impl/StdTypeResolverBuilder;->_defaultImpl:Ljava/lang/Class;

    iget-object v5, p0, Lcom/flurry/org/codehaus/jackson/map/jsontype/impl/StdTypeResolverBuilder;->_typeProperty:Ljava/lang/String;

    move-object v1, p2

    move-object v3, p4

    invoke-direct/range {v0 .. v5}, Lcom/flurry/org/codehaus/jackson/map/jsontype/impl/AsExternalTypeDeserializer;-><init>(Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/jsontype/TypeIdResolver;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_0

    .line 107
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public buildTypeSerializer(Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;Lcom/flurry/org/codehaus/jackson/type/JavaType;Ljava/util/Collection;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;
    .locals 7
    .param p1, "config"    # Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;
    .param p2, "baseType"    # Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .param p4, "property"    # Lcom/flurry/org/codehaus/jackson/map/BeanProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;",
            "Lcom/flurry/org/codehaus/jackson/type/JavaType;",
            "Ljava/util/Collection",
            "<",
            "Lcom/flurry/org/codehaus/jackson/map/jsontype/NamedType;",
            ">;",
            "Lcom/flurry/org/codehaus/jackson/map/BeanProperty;",
            ")",
            "Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;"
        }
    .end annotation

    .prologue
    .line 79
    .local p3, "subtypes":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/flurry/org/codehaus/jackson/map/jsontype/NamedType;>;"
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/jsontype/impl/StdTypeResolverBuilder;->_idType:Lcom/flurry/org/codehaus/jackson/annotate/JsonTypeInfo$Id;

    sget-object v1, Lcom/flurry/org/codehaus/jackson/annotate/JsonTypeInfo$Id;->NONE:Lcom/flurry/org/codehaus/jackson/annotate/JsonTypeInfo$Id;

    if-ne v0, v1, :cond_0

    .line 80
    const/4 v0, 0x0

    .line 91
    :goto_0
    return-object v0

    .line 82
    :cond_0
    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/flurry/org/codehaus/jackson/map/jsontype/impl/StdTypeResolverBuilder;->idResolver(Lcom/flurry/org/codehaus/jackson/map/MapperConfig;Lcom/flurry/org/codehaus/jackson/type/JavaType;Ljava/util/Collection;ZZ)Lcom/flurry/org/codehaus/jackson/map/jsontype/TypeIdResolver;

    move-result-object v6

    .line 83
    .local v6, "idRes":Lcom/flurry/org/codehaus/jackson/map/jsontype/TypeIdResolver;
    sget-object v0, Lcom/flurry/org/codehaus/jackson/map/jsontype/impl/StdTypeResolverBuilder$1;->$SwitchMap$org$codehaus$jackson$annotate$JsonTypeInfo$As:[I

    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/jsontype/impl/StdTypeResolverBuilder;->_includeAs:Lcom/flurry/org/codehaus/jackson/annotate/JsonTypeInfo$As;

    invoke-virtual {v1}, Lcom/flurry/org/codehaus/jackson/annotate/JsonTypeInfo$As;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 93
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Do not know how to construct standard type serializer for inclusion type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/jsontype/impl/StdTypeResolverBuilder;->_includeAs:Lcom/flurry/org/codehaus/jackson/annotate/JsonTypeInfo$As;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    :pswitch_0
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/jsontype/impl/AsArrayTypeSerializer;

    invoke-direct {v0, v6, p4}, Lcom/flurry/org/codehaus/jackson/map/jsontype/impl/AsArrayTypeSerializer;-><init>(Lcom/flurry/org/codehaus/jackson/map/jsontype/TypeIdResolver;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)V

    goto :goto_0

    .line 87
    :pswitch_1
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/jsontype/impl/AsPropertyTypeSerializer;

    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/jsontype/impl/StdTypeResolverBuilder;->_typeProperty:Ljava/lang/String;

    invoke-direct {v0, v6, p4, v1}, Lcom/flurry/org/codehaus/jackson/map/jsontype/impl/AsPropertyTypeSerializer;-><init>(Lcom/flurry/org/codehaus/jackson/map/jsontype/TypeIdResolver;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;Ljava/lang/String;)V

    goto :goto_0

    .line 89
    :pswitch_2
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/jsontype/impl/AsWrapperTypeSerializer;

    invoke-direct {v0, v6, p4}, Lcom/flurry/org/codehaus/jackson/map/jsontype/impl/AsWrapperTypeSerializer;-><init>(Lcom/flurry/org/codehaus/jackson/map/jsontype/TypeIdResolver;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)V

    goto :goto_0

    .line 91
    :pswitch_3
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/jsontype/impl/AsExternalTypeSerializer;

    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/jsontype/impl/StdTypeResolverBuilder;->_typeProperty:Ljava/lang/String;

    invoke-direct {v0, v6, p4, v1}, Lcom/flurry/org/codehaus/jackson/map/jsontype/impl/AsExternalTypeSerializer;-><init>(Lcom/flurry/org/codehaus/jackson/map/jsontype/TypeIdResolver;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;Ljava/lang/String;)V

    goto :goto_0

    .line 83
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public bridge synthetic defaultImpl(Ljava/lang/Class;)Lcom/flurry/org/codehaus/jackson/map/jsontype/TypeResolverBuilder;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Class;

    .prologue
    .line 18
    invoke-virtual {p0, p1}, Lcom/flurry/org/codehaus/jackson/map/jsontype/impl/StdTypeResolverBuilder;->defaultImpl(Ljava/lang/Class;)Lcom/flurry/org/codehaus/jackson/map/jsontype/impl/StdTypeResolverBuilder;

    move-result-object v0

    return-object v0
.end method

.method public defaultImpl(Ljava/lang/Class;)Lcom/flurry/org/codehaus/jackson/map/jsontype/impl/StdTypeResolverBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/flurry/org/codehaus/jackson/map/jsontype/impl/StdTypeResolverBuilder;"
        }
    .end annotation

    .prologue
    .line 155
    .local p1, "defaultImpl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iput-object p1, p0, Lcom/flurry/org/codehaus/jackson/map/jsontype/impl/StdTypeResolverBuilder;->_defaultImpl:Ljava/lang/Class;

    .line 156
    return-object p0
.end method

.method public getDefaultImpl()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 46
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/jsontype/impl/StdTypeResolverBuilder;->_defaultImpl:Ljava/lang/Class;

    return-object v0
.end method

.method public getTypeProperty()Ljava/lang/String;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/jsontype/impl/StdTypeResolverBuilder;->_typeProperty:Ljava/lang/String;

    return-object v0
.end method

.method protected idResolver(Lcom/flurry/org/codehaus/jackson/map/MapperConfig;Lcom/flurry/org/codehaus/jackson/type/JavaType;Ljava/util/Collection;ZZ)Lcom/flurry/org/codehaus/jackson/map/jsontype/TypeIdResolver;
    .locals 3
    .param p2, "baseType"    # Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .param p4, "forSer"    # Z
    .param p5, "forDeser"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/MapperConfig",
            "<*>;",
            "Lcom/flurry/org/codehaus/jackson/type/JavaType;",
            "Ljava/util/Collection",
            "<",
            "Lcom/flurry/org/codehaus/jackson/map/jsontype/NamedType;",
            ">;ZZ)",
            "Lcom/flurry/org/codehaus/jackson/map/jsontype/TypeIdResolver;"
        }
    .end annotation

    .prologue
    .line 183
    .local p1, "config":Lcom/flurry/org/codehaus/jackson/map/MapperConfig;, "Lcom/flurry/org/codehaus/jackson/map/MapperConfig<*>;"
    .local p3, "subtypes":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/flurry/org/codehaus/jackson/map/jsontype/NamedType;>;"
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/jsontype/impl/StdTypeResolverBuilder;->_customIdResolver:Lcom/flurry/org/codehaus/jackson/map/jsontype/TypeIdResolver;

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/jsontype/impl/StdTypeResolverBuilder;->_customIdResolver:Lcom/flurry/org/codehaus/jackson/map/jsontype/TypeIdResolver;

    .line 197
    :goto_0
    return-object v0

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/jsontype/impl/StdTypeResolverBuilder;->_idType:Lcom/flurry/org/codehaus/jackson/annotate/JsonTypeInfo$Id;

    if-nez v0, :cond_1

    .line 187
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can not build, \'init()\' not yet called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 189
    :cond_1
    sget-object v0, Lcom/flurry/org/codehaus/jackson/map/jsontype/impl/StdTypeResolverBuilder$1;->$SwitchMap$org$codehaus$jackson$annotate$JsonTypeInfo$Id:[I

    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/jsontype/impl/StdTypeResolverBuilder;->_idType:Lcom/flurry/org/codehaus/jackson/annotate/JsonTypeInfo$Id;

    invoke-virtual {v1}, Lcom/flurry/org/codehaus/jackson/annotate/JsonTypeInfo$Id;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 200
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Do not know how to construct standard type id resolver for idType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/jsontype/impl/StdTypeResolverBuilder;->_idType:Lcom/flurry/org/codehaus/jackson/annotate/JsonTypeInfo$Id;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 191
    :pswitch_0
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/jsontype/impl/ClassNameIdResolver;

    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/map/MapperConfig;->getTypeFactory()Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Lcom/flurry/org/codehaus/jackson/map/jsontype/impl/ClassNameIdResolver;-><init>(Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;)V

    goto :goto_0

    .line 193
    :pswitch_1
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/jsontype/impl/MinimalClassNameIdResolver;

    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/map/MapperConfig;->getTypeFactory()Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Lcom/flurry/org/codehaus/jackson/map/jsontype/impl/MinimalClassNameIdResolver;-><init>(Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;)V

    goto :goto_0

    .line 195
    :pswitch_2
    invoke-static {p1, p2, p3, p4, p5}, Lcom/flurry/org/codehaus/jackson/map/jsontype/impl/TypeNameIdResolver;->construct(Lcom/flurry/org/codehaus/jackson/map/MapperConfig;Lcom/flurry/org/codehaus/jackson/type/JavaType;Ljava/util/Collection;ZZ)Lcom/flurry/org/codehaus/jackson/map/jsontype/impl/TypeNameIdResolver;

    move-result-object v0

    goto :goto_0

    .line 197
    :pswitch_3
    const/4 v0, 0x0

    goto :goto_0

    .line 189
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public bridge synthetic inclusion(Lcom/flurry/org/codehaus/jackson/annotate/JsonTypeInfo$As;)Lcom/flurry/org/codehaus/jackson/map/jsontype/TypeResolverBuilder;
    .locals 1
    .param p1, "x0"    # Lcom/flurry/org/codehaus/jackson/annotate/JsonTypeInfo$As;

    .prologue
    .line 18
    invoke-virtual {p0, p1}, Lcom/flurry/org/codehaus/jackson/map/jsontype/impl/StdTypeResolverBuilder;->inclusion(Lcom/flurry/org/codehaus/jackson/annotate/JsonTypeInfo$As;)Lcom/flurry/org/codehaus/jackson/map/jsontype/impl/StdTypeResolverBuilder;

    move-result-object v0

    return-object v0
.end method

.method public inclusion(Lcom/flurry/org/codehaus/jackson/annotate/JsonTypeInfo$As;)Lcom/flurry/org/codehaus/jackson/map/jsontype/impl/StdTypeResolverBuilder;
    .locals 2
    .param p1, "includeAs"    # Lcom/flurry/org/codehaus/jackson/annotate/JsonTypeInfo$As;

    .prologue
    .line 130
    if-nez p1, :cond_0

    .line 131
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "includeAs can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 133
    :cond_0
    iput-object p1, p0, Lcom/flurry/org/codehaus/jackson/map/jsontype/impl/StdTypeResolverBuilder;->_includeAs:Lcom/flurry/org/codehaus/jackson/annotate/JsonTypeInfo$As;

    .line 134
    return-object p0
.end method

.method public bridge synthetic init(Lcom/flurry/org/codehaus/jackson/annotate/JsonTypeInfo$Id;Lcom/flurry/org/codehaus/jackson/map/jsontype/TypeIdResolver;)Lcom/flurry/org/codehaus/jackson/map/jsontype/TypeResolverBuilder;
    .locals 1
    .param p1, "x0"    # Lcom/flurry/org/codehaus/jackson/annotate/JsonTypeInfo$Id;
    .param p2, "x1"    # Lcom/flurry/org/codehaus/jackson/map/jsontype/TypeIdResolver;

    .prologue
    .line 18
    invoke-virtual {p0, p1, p2}, Lcom/flurry/org/codehaus/jackson/map/jsontype/impl/StdTypeResolverBuilder;->init(Lcom/flurry/org/codehaus/jackson/annotate/JsonTypeInfo$Id;Lcom/flurry/org/codehaus/jackson/map/jsontype/TypeIdResolver;)Lcom/flurry/org/codehaus/jackson/map/jsontype/impl/StdTypeResolverBuilder;

    move-result-object v0

    return-object v0
.end method

.method public init(Lcom/flurry/org/codehaus/jackson/annotate/JsonTypeInfo$Id;Lcom/flurry/org/codehaus/jackson/map/jsontype/TypeIdResolver;)Lcom/flurry/org/codehaus/jackson/map/jsontype/impl/StdTypeResolverBuilder;
    .locals 2
    .param p1, "idType"    # Lcom/flurry/org/codehaus/jackson/annotate/JsonTypeInfo$Id;
    .param p2, "idRes"    # Lcom/flurry/org/codehaus/jackson/map/jsontype/TypeIdResolver;

    .prologue
    .line 65
    if-nez p1, :cond_0

    .line 66
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "idType can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_0
    iput-object p1, p0, Lcom/flurry/org/codehaus/jackson/map/jsontype/impl/StdTypeResolverBuilder;->_idType:Lcom/flurry/org/codehaus/jackson/annotate/JsonTypeInfo$Id;

    .line 69
    iput-object p2, p0, Lcom/flurry/org/codehaus/jackson/map/jsontype/impl/StdTypeResolverBuilder;->_customIdResolver:Lcom/flurry/org/codehaus/jackson/map/jsontype/TypeIdResolver;

    .line 71
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/annotate/JsonTypeInfo$Id;->getDefaultPropertyName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/jsontype/impl/StdTypeResolverBuilder;->_typeProperty:Ljava/lang/String;

    .line 72
    return-object p0
.end method

.method public bridge synthetic typeProperty(Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/map/jsontype/TypeResolverBuilder;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 18
    invoke-virtual {p0, p1}, Lcom/flurry/org/codehaus/jackson/map/jsontype/impl/StdTypeResolverBuilder;->typeProperty(Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/map/jsontype/impl/StdTypeResolverBuilder;

    move-result-object v0

    return-object v0
.end method

.method public typeProperty(Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/map/jsontype/impl/StdTypeResolverBuilder;
    .locals 1
    .param p1, "typeIdPropName"    # Ljava/lang/String;

    .prologue
    .line 145
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/jsontype/impl/StdTypeResolverBuilder;->_idType:Lcom/flurry/org/codehaus/jackson/annotate/JsonTypeInfo$Id;

    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/annotate/JsonTypeInfo$Id;->getDefaultPropertyName()Ljava/lang/String;

    move-result-object p1

    .line 148
    :cond_1
    iput-object p1, p0, Lcom/flurry/org/codehaus/jackson/map/jsontype/impl/StdTypeResolverBuilder;->_typeProperty:Ljava/lang/String;

    .line 149
    return-object p0
.end method
