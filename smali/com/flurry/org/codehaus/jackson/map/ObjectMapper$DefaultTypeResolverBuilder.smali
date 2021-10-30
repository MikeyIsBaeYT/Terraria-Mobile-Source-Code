.class public Lcom/flurry/org/codehaus/jackson/map/ObjectMapper$DefaultTypeResolverBuilder;
.super Lcom/flurry/org/codehaus/jackson/map/jsontype/impl/StdTypeResolverBuilder;
.source "ObjectMapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/org/codehaus/jackson/map/ObjectMapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefaultTypeResolverBuilder"
.end annotation


# instance fields
.field protected final _appliesFor:Lcom/flurry/org/codehaus/jackson/map/ObjectMapper$DefaultTyping;


# direct methods
.method public constructor <init>(Lcom/flurry/org/codehaus/jackson/map/ObjectMapper$DefaultTyping;)V
    .locals 0
    .param p1, "t"    # Lcom/flurry/org/codehaus/jackson/map/ObjectMapper$DefaultTyping;

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/flurry/org/codehaus/jackson/map/jsontype/impl/StdTypeResolverBuilder;-><init>()V

    .line 129
    iput-object p1, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectMapper$DefaultTypeResolverBuilder;->_appliesFor:Lcom/flurry/org/codehaus/jackson/map/ObjectMapper$DefaultTyping;

    .line 130
    return-void
.end method


# virtual methods
.method public buildTypeDeserializer(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/type/JavaType;Ljava/util/Collection;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)Lcom/flurry/org/codehaus/jackson/map/TypeDeserializer;
    .locals 1
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
    .line 136
    .local p3, "subtypes":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/flurry/org/codehaus/jackson/map/jsontype/NamedType;>;"
    invoke-virtual {p0, p2}, Lcom/flurry/org/codehaus/jackson/map/ObjectMapper$DefaultTypeResolverBuilder;->useForType(Lcom/flurry/org/codehaus/jackson/type/JavaType;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Lcom/flurry/org/codehaus/jackson/map/jsontype/impl/StdTypeResolverBuilder;->buildTypeDeserializer(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/type/JavaType;Ljava/util/Collection;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)Lcom/flurry/org/codehaus/jackson/map/TypeDeserializer;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public buildTypeSerializer(Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;Lcom/flurry/org/codehaus/jackson/type/JavaType;Ljava/util/Collection;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;
    .locals 1
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
    .line 143
    .local p3, "subtypes":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/flurry/org/codehaus/jackson/map/jsontype/NamedType;>;"
    invoke-virtual {p0, p2}, Lcom/flurry/org/codehaus/jackson/map/ObjectMapper$DefaultTypeResolverBuilder;->useForType(Lcom/flurry/org/codehaus/jackson/type/JavaType;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Lcom/flurry/org/codehaus/jackson/map/jsontype/impl/StdTypeResolverBuilder;->buildTypeSerializer(Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;Lcom/flurry/org/codehaus/jackson/type/JavaType;Ljava/util/Collection;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public useForType(Lcom/flurry/org/codehaus/jackson/type/JavaType;)Z
    .locals 4
    .param p1, "t"    # Lcom/flurry/org/codehaus/jackson/type/JavaType;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 156
    sget-object v2, Lcom/flurry/org/codehaus/jackson/map/ObjectMapper$2;->$SwitchMap$org$codehaus$jackson$map$ObjectMapper$DefaultTyping:[I

    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectMapper$DefaultTypeResolverBuilder;->_appliesFor:Lcom/flurry/org/codehaus/jackson/map/ObjectMapper$DefaultTyping;

    invoke-virtual {v3}, Lcom/flurry/org/codehaus/jackson/map/ObjectMapper$DefaultTyping;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 171
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Ljava/lang/Object;

    if-ne v2, v3, :cond_5

    :cond_0
    :goto_0
    return v1

    .line 158
    :pswitch_0
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->isArrayType()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 159
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->getContentType()Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object p1

    .line 163
    :cond_1
    :pswitch_1
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Ljava/lang/Object;

    if-eq v2, v3, :cond_2

    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->isConcrete()Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    move v0, v1

    :cond_3
    move v1, v0

    goto :goto_0

    .line 165
    :pswitch_2
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->isArrayType()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 166
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->getContentType()Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object p1

    .line 168
    :cond_4
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->isFinal()Z

    move-result v2

    if-eqz v2, :cond_0

    move v1, v0

    goto :goto_0

    :cond_5
    move v1, v0

    .line 171
    goto :goto_0

    .line 156
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
