.class public Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;
.super Lcom/flurry/org/codehaus/jackson/map/DeserializerFactory$Config;
.source "BeanDeserializerFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfigImpl"
.end annotation


# static fields
.field protected static final NO_ABSTRACT_TYPE_RESOLVERS:[Lcom/flurry/org/codehaus/jackson/map/AbstractTypeResolver;

.field protected static final NO_KEY_DESERIALIZERS:[Lcom/flurry/org/codehaus/jackson/map/KeyDeserializers;

.field protected static final NO_MODIFIERS:[Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerModifier;

.field protected static final NO_VALUE_INSTANTIATORS:[Lcom/flurry/org/codehaus/jackson/map/deser/ValueInstantiators;


# instance fields
.field protected final _abstractTypeResolvers:[Lcom/flurry/org/codehaus/jackson/map/AbstractTypeResolver;

.field protected final _additionalDeserializers:[Lcom/flurry/org/codehaus/jackson/map/Deserializers;

.field protected final _additionalKeyDeserializers:[Lcom/flurry/org/codehaus/jackson/map/KeyDeserializers;

.field protected final _modifiers:[Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerModifier;

.field protected final _valueInstantiators:[Lcom/flurry/org/codehaus/jackson/map/deser/ValueInstantiators;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 47
    new-array v0, v1, [Lcom/flurry/org/codehaus/jackson/map/KeyDeserializers;

    sput-object v0, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;->NO_KEY_DESERIALIZERS:[Lcom/flurry/org/codehaus/jackson/map/KeyDeserializers;

    .line 48
    new-array v0, v1, [Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerModifier;

    sput-object v0, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;->NO_MODIFIERS:[Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerModifier;

    .line 49
    new-array v0, v1, [Lcom/flurry/org/codehaus/jackson/map/AbstractTypeResolver;

    sput-object v0, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;->NO_ABSTRACT_TYPE_RESOLVERS:[Lcom/flurry/org/codehaus/jackson/map/AbstractTypeResolver;

    .line 50
    new-array v0, v1, [Lcom/flurry/org/codehaus/jackson/map/deser/ValueInstantiators;

    sput-object v0, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;->NO_VALUE_INSTANTIATORS:[Lcom/flurry/org/codehaus/jackson/map/deser/ValueInstantiators;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 99
    move-object v0, p0

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    move-object v5, v1

    invoke-direct/range {v0 .. v5}, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;-><init>([Lcom/flurry/org/codehaus/jackson/map/Deserializers;[Lcom/flurry/org/codehaus/jackson/map/KeyDeserializers;[Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerModifier;[Lcom/flurry/org/codehaus/jackson/map/AbstractTypeResolver;[Lcom/flurry/org/codehaus/jackson/map/deser/ValueInstantiators;)V

    .line 100
    return-void
.end method

.method protected constructor <init>([Lcom/flurry/org/codehaus/jackson/map/Deserializers;[Lcom/flurry/org/codehaus/jackson/map/KeyDeserializers;[Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerModifier;[Lcom/flurry/org/codehaus/jackson/map/AbstractTypeResolver;[Lcom/flurry/org/codehaus/jackson/map/deser/ValueInstantiators;)V
    .locals 0
    .param p1, "allAdditionalDeserializers"    # [Lcom/flurry/org/codehaus/jackson/map/Deserializers;
    .param p2, "allAdditionalKeyDeserializers"    # [Lcom/flurry/org/codehaus/jackson/map/KeyDeserializers;
    .param p3, "modifiers"    # [Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerModifier;
    .param p4, "atr"    # [Lcom/flurry/org/codehaus/jackson/map/AbstractTypeResolver;
    .param p5, "vi"    # [Lcom/flurry/org/codehaus/jackson/map/deser/ValueInstantiators;

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/flurry/org/codehaus/jackson/map/DeserializerFactory$Config;-><init>()V

    .line 112
    if-nez p1, :cond_0

    invoke-static {}, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerFactory;->access$000()[Lcom/flurry/org/codehaus/jackson/map/Deserializers;

    move-result-object p1

    .end local p1    # "allAdditionalDeserializers":[Lcom/flurry/org/codehaus/jackson/map/Deserializers;
    :cond_0
    iput-object p1, p0, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;->_additionalDeserializers:[Lcom/flurry/org/codehaus/jackson/map/Deserializers;

    .line 114
    if-nez p2, :cond_1

    sget-object p2, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;->NO_KEY_DESERIALIZERS:[Lcom/flurry/org/codehaus/jackson/map/KeyDeserializers;

    .end local p2    # "allAdditionalKeyDeserializers":[Lcom/flurry/org/codehaus/jackson/map/KeyDeserializers;
    :cond_1
    iput-object p2, p0, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;->_additionalKeyDeserializers:[Lcom/flurry/org/codehaus/jackson/map/KeyDeserializers;

    .line 116
    if-nez p3, :cond_2

    sget-object p3, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;->NO_MODIFIERS:[Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerModifier;

    .end local p3    # "modifiers":[Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerModifier;
    :cond_2
    iput-object p3, p0, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;->_modifiers:[Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerModifier;

    .line 117
    if-nez p4, :cond_3

    sget-object p4, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;->NO_ABSTRACT_TYPE_RESOLVERS:[Lcom/flurry/org/codehaus/jackson/map/AbstractTypeResolver;

    .end local p4    # "atr":[Lcom/flurry/org/codehaus/jackson/map/AbstractTypeResolver;
    :cond_3
    iput-object p4, p0, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;->_abstractTypeResolvers:[Lcom/flurry/org/codehaus/jackson/map/AbstractTypeResolver;

    .line 118
    if-nez p5, :cond_4

    sget-object p5, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;->NO_VALUE_INSTANTIATORS:[Lcom/flurry/org/codehaus/jackson/map/deser/ValueInstantiators;

    .end local p5    # "vi":[Lcom/flurry/org/codehaus/jackson/map/deser/ValueInstantiators;
    :cond_4
    iput-object p5, p0, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;->_valueInstantiators:[Lcom/flurry/org/codehaus/jackson/map/deser/ValueInstantiators;

    .line 119
    return-void
.end method


# virtual methods
.method public abstractTypeResolvers()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/flurry/org/codehaus/jackson/map/AbstractTypeResolver;",
            ">;"
        }
    .end annotation

    .prologue
    .line 208
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;->_abstractTypeResolvers:[Lcom/flurry/org/codehaus/jackson/map/AbstractTypeResolver;

    invoke-static {v0}, Lcom/flurry/org/codehaus/jackson/map/util/ArrayBuilders;->arrayAsIterable([Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public deserializerModifiers()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerModifier;",
            ">;"
        }
    .end annotation

    .prologue
    .line 203
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;->_modifiers:[Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerModifier;

    invoke-static {v0}, Lcom/flurry/org/codehaus/jackson/map/util/ArrayBuilders;->arrayAsIterable([Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public deserializers()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/flurry/org/codehaus/jackson/map/Deserializers;",
            ">;"
        }
    .end annotation

    .prologue
    .line 193
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;->_additionalDeserializers:[Lcom/flurry/org/codehaus/jackson/map/Deserializers;

    invoke-static {v0}, Lcom/flurry/org/codehaus/jackson/map/util/ArrayBuilders;->arrayAsIterable([Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public hasAbstractTypeResolvers()Z
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;->_abstractTypeResolvers:[Lcom/flurry/org/codehaus/jackson/map/AbstractTypeResolver;

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasDeserializerModifiers()Z
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;->_modifiers:[Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerModifier;

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasDeserializers()Z
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;->_additionalDeserializers:[Lcom/flurry/org/codehaus/jackson/map/Deserializers;

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasKeyDeserializers()Z
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;->_additionalKeyDeserializers:[Lcom/flurry/org/codehaus/jackson/map/KeyDeserializers;

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasValueInstantiators()Z
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;->_valueInstantiators:[Lcom/flurry/org/codehaus/jackson/map/deser/ValueInstantiators;

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public keyDeserializers()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/flurry/org/codehaus/jackson/map/KeyDeserializers;",
            ">;"
        }
    .end annotation

    .prologue
    .line 198
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;->_additionalKeyDeserializers:[Lcom/flurry/org/codehaus/jackson/map/KeyDeserializers;

    invoke-static {v0}, Lcom/flurry/org/codehaus/jackson/map/util/ArrayBuilders;->arrayAsIterable([Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public valueInstantiators()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/flurry/org/codehaus/jackson/map/deser/ValueInstantiators;",
            ">;"
        }
    .end annotation

    .prologue
    .line 213
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;->_valueInstantiators:[Lcom/flurry/org/codehaus/jackson/map/deser/ValueInstantiators;

    invoke-static {v0}, Lcom/flurry/org/codehaus/jackson/map/util/ArrayBuilders;->arrayAsIterable([Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public withAbstractTypeResolver(Lcom/flurry/org/codehaus/jackson/map/AbstractTypeResolver;)Lcom/flurry/org/codehaus/jackson/map/DeserializerFactory$Config;
    .locals 6
    .param p1, "resolver"    # Lcom/flurry/org/codehaus/jackson/map/AbstractTypeResolver;

    .prologue
    .line 157
    if-nez p1, :cond_0

    .line 158
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can not pass null resolver"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;->_abstractTypeResolvers:[Lcom/flurry/org/codehaus/jackson/map/AbstractTypeResolver;

    invoke-static {v0, p1}, Lcom/flurry/org/codehaus/jackson/map/util/ArrayBuilders;->insertInListNoDup([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/flurry/org/codehaus/jackson/map/AbstractTypeResolver;

    .line 161
    .local v4, "all":[Lcom/flurry/org/codehaus/jackson/map/AbstractTypeResolver;
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;

    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;->_additionalDeserializers:[Lcom/flurry/org/codehaus/jackson/map/Deserializers;

    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;->_additionalKeyDeserializers:[Lcom/flurry/org/codehaus/jackson/map/KeyDeserializers;

    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;->_modifiers:[Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerModifier;

    iget-object v5, p0, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;->_valueInstantiators:[Lcom/flurry/org/codehaus/jackson/map/deser/ValueInstantiators;

    invoke-direct/range {v0 .. v5}, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;-><init>([Lcom/flurry/org/codehaus/jackson/map/Deserializers;[Lcom/flurry/org/codehaus/jackson/map/KeyDeserializers;[Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerModifier;[Lcom/flurry/org/codehaus/jackson/map/AbstractTypeResolver;[Lcom/flurry/org/codehaus/jackson/map/deser/ValueInstantiators;)V

    return-object v0
.end method

.method public withAdditionalDeserializers(Lcom/flurry/org/codehaus/jackson/map/Deserializers;)Lcom/flurry/org/codehaus/jackson/map/DeserializerFactory$Config;
    .locals 6
    .param p1, "additional"    # Lcom/flurry/org/codehaus/jackson/map/Deserializers;

    .prologue
    .line 124
    if-nez p1, :cond_0

    .line 125
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Can not pass null Deserializers"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;->_additionalDeserializers:[Lcom/flurry/org/codehaus/jackson/map/Deserializers;

    invoke-static {v0, p1}, Lcom/flurry/org/codehaus/jackson/map/util/ArrayBuilders;->insertInListNoDup([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/flurry/org/codehaus/jackson/map/Deserializers;

    .line 128
    .local v1, "all":[Lcom/flurry/org/codehaus/jackson/map/Deserializers;
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;

    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;->_additionalKeyDeserializers:[Lcom/flurry/org/codehaus/jackson/map/KeyDeserializers;

    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;->_modifiers:[Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerModifier;

    iget-object v4, p0, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;->_abstractTypeResolvers:[Lcom/flurry/org/codehaus/jackson/map/AbstractTypeResolver;

    iget-object v5, p0, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;->_valueInstantiators:[Lcom/flurry/org/codehaus/jackson/map/deser/ValueInstantiators;

    invoke-direct/range {v0 .. v5}, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;-><init>([Lcom/flurry/org/codehaus/jackson/map/Deserializers;[Lcom/flurry/org/codehaus/jackson/map/KeyDeserializers;[Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerModifier;[Lcom/flurry/org/codehaus/jackson/map/AbstractTypeResolver;[Lcom/flurry/org/codehaus/jackson/map/deser/ValueInstantiators;)V

    return-object v0
.end method

.method public withAdditionalKeyDeserializers(Lcom/flurry/org/codehaus/jackson/map/KeyDeserializers;)Lcom/flurry/org/codehaus/jackson/map/DeserializerFactory$Config;
    .locals 6
    .param p1, "additional"    # Lcom/flurry/org/codehaus/jackson/map/KeyDeserializers;

    .prologue
    .line 135
    if-nez p1, :cond_0

    .line 136
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can not pass null KeyDeserializers"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;->_additionalKeyDeserializers:[Lcom/flurry/org/codehaus/jackson/map/KeyDeserializers;

    invoke-static {v0, p1}, Lcom/flurry/org/codehaus/jackson/map/util/ArrayBuilders;->insertInListNoDup([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/flurry/org/codehaus/jackson/map/KeyDeserializers;

    .line 139
    .local v2, "all":[Lcom/flurry/org/codehaus/jackson/map/KeyDeserializers;
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;

    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;->_additionalDeserializers:[Lcom/flurry/org/codehaus/jackson/map/Deserializers;

    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;->_modifiers:[Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerModifier;

    iget-object v4, p0, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;->_abstractTypeResolvers:[Lcom/flurry/org/codehaus/jackson/map/AbstractTypeResolver;

    iget-object v5, p0, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;->_valueInstantiators:[Lcom/flurry/org/codehaus/jackson/map/deser/ValueInstantiators;

    invoke-direct/range {v0 .. v5}, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;-><init>([Lcom/flurry/org/codehaus/jackson/map/Deserializers;[Lcom/flurry/org/codehaus/jackson/map/KeyDeserializers;[Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerModifier;[Lcom/flurry/org/codehaus/jackson/map/AbstractTypeResolver;[Lcom/flurry/org/codehaus/jackson/map/deser/ValueInstantiators;)V

    return-object v0
.end method

.method public withDeserializerModifier(Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerModifier;)Lcom/flurry/org/codehaus/jackson/map/DeserializerFactory$Config;
    .locals 6
    .param p1, "modifier"    # Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerModifier;

    .prologue
    .line 146
    if-nez p1, :cond_0

    .line 147
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can not pass null modifier"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;->_modifiers:[Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerModifier;

    invoke-static {v0, p1}, Lcom/flurry/org/codehaus/jackson/map/util/ArrayBuilders;->insertInListNoDup([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerModifier;

    .line 150
    .local v3, "all":[Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerModifier;
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;

    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;->_additionalDeserializers:[Lcom/flurry/org/codehaus/jackson/map/Deserializers;

    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;->_additionalKeyDeserializers:[Lcom/flurry/org/codehaus/jackson/map/KeyDeserializers;

    iget-object v4, p0, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;->_abstractTypeResolvers:[Lcom/flurry/org/codehaus/jackson/map/AbstractTypeResolver;

    iget-object v5, p0, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;->_valueInstantiators:[Lcom/flurry/org/codehaus/jackson/map/deser/ValueInstantiators;

    invoke-direct/range {v0 .. v5}, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;-><init>([Lcom/flurry/org/codehaus/jackson/map/Deserializers;[Lcom/flurry/org/codehaus/jackson/map/KeyDeserializers;[Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerModifier;[Lcom/flurry/org/codehaus/jackson/map/AbstractTypeResolver;[Lcom/flurry/org/codehaus/jackson/map/deser/ValueInstantiators;)V

    return-object v0
.end method

.method public withValueInstantiators(Lcom/flurry/org/codehaus/jackson/map/deser/ValueInstantiators;)Lcom/flurry/org/codehaus/jackson/map/DeserializerFactory$Config;
    .locals 6
    .param p1, "instantiators"    # Lcom/flurry/org/codehaus/jackson/map/deser/ValueInstantiators;

    .prologue
    .line 168
    if-nez p1, :cond_0

    .line 169
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can not pass null resolver"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;->_valueInstantiators:[Lcom/flurry/org/codehaus/jackson/map/deser/ValueInstantiators;

    invoke-static {v0, p1}, Lcom/flurry/org/codehaus/jackson/map/util/ArrayBuilders;->insertInListNoDup([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/flurry/org/codehaus/jackson/map/deser/ValueInstantiators;

    .line 172
    .local v5, "all":[Lcom/flurry/org/codehaus/jackson/map/deser/ValueInstantiators;
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;

    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;->_additionalDeserializers:[Lcom/flurry/org/codehaus/jackson/map/Deserializers;

    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;->_additionalKeyDeserializers:[Lcom/flurry/org/codehaus/jackson/map/KeyDeserializers;

    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;->_modifiers:[Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerModifier;

    iget-object v4, p0, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;->_abstractTypeResolvers:[Lcom/flurry/org/codehaus/jackson/map/AbstractTypeResolver;

    invoke-direct/range {v0 .. v5}, Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;-><init>([Lcom/flurry/org/codehaus/jackson/map/Deserializers;[Lcom/flurry/org/codehaus/jackson/map/KeyDeserializers;[Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerModifier;[Lcom/flurry/org/codehaus/jackson/map/AbstractTypeResolver;[Lcom/flurry/org/codehaus/jackson/map/deser/ValueInstantiators;)V

    return-object v0
.end method
