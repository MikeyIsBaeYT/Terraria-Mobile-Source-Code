.class public abstract Lcom/flurry/org/codehaus/jackson/map/DeserializerFactory;
.super Ljava/lang/Object;
.source "DeserializerFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/org/codehaus/jackson/map/DeserializerFactory$Config;
    }
.end annotation


# static fields
.field protected static final NO_DESERIALIZERS:[Lcom/flurry/org/codehaus/jackson/map/Deserializers;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/flurry/org/codehaus/jackson/map/Deserializers;

    sput-object v0, Lcom/flurry/org/codehaus/jackson/map/DeserializerFactory;->NO_DESERIALIZERS:[Lcom/flurry/org/codehaus/jackson/map/Deserializers;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    return-void
.end method


# virtual methods
.method public abstract createArrayDeserializer(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/map/DeserializerProvider;Lcom/flurry/org/codehaus/jackson/map/type/ArrayType;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;",
            "Lcom/flurry/org/codehaus/jackson/map/DeserializerProvider;",
            "Lcom/flurry/org/codehaus/jackson/map/type/ArrayType;",
            "Lcom/flurry/org/codehaus/jackson/map/BeanProperty;",
            ")",
            "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation
.end method

.method public abstract createBeanDeserializer(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/map/DeserializerProvider;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;",
            "Lcom/flurry/org/codehaus/jackson/map/DeserializerProvider;",
            "Lcom/flurry/org/codehaus/jackson/type/JavaType;",
            "Lcom/flurry/org/codehaus/jackson/map/BeanProperty;",
            ")",
            "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation
.end method

.method public abstract createCollectionDeserializer(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/map/DeserializerProvider;Lcom/flurry/org/codehaus/jackson/map/type/CollectionType;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;",
            "Lcom/flurry/org/codehaus/jackson/map/DeserializerProvider;",
            "Lcom/flurry/org/codehaus/jackson/map/type/CollectionType;",
            "Lcom/flurry/org/codehaus/jackson/map/BeanProperty;",
            ")",
            "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation
.end method

.method public abstract createCollectionLikeDeserializer(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/map/DeserializerProvider;Lcom/flurry/org/codehaus/jackson/map/type/CollectionLikeType;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;",
            "Lcom/flurry/org/codehaus/jackson/map/DeserializerProvider;",
            "Lcom/flurry/org/codehaus/jackson/map/type/CollectionLikeType;",
            "Lcom/flurry/org/codehaus/jackson/map/BeanProperty;",
            ")",
            "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation
.end method

.method public abstract createEnumDeserializer(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/map/DeserializerProvider;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;",
            "Lcom/flurry/org/codehaus/jackson/map/DeserializerProvider;",
            "Lcom/flurry/org/codehaus/jackson/type/JavaType;",
            "Lcom/flurry/org/codehaus/jackson/map/BeanProperty;",
            ")",
            "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation
.end method

.method public createKeyDeserializer(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)Lcom/flurry/org/codehaus/jackson/map/KeyDeserializer;
    .locals 1
    .param p1, "config"    # Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;
    .param p2, "type"    # Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .param p3, "property"    # Lcom/flurry/org/codehaus/jackson/map/BeanProperty;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 327
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract createMapDeserializer(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/map/DeserializerProvider;Lcom/flurry/org/codehaus/jackson/map/type/MapType;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;",
            "Lcom/flurry/org/codehaus/jackson/map/DeserializerProvider;",
            "Lcom/flurry/org/codehaus/jackson/map/type/MapType;",
            "Lcom/flurry/org/codehaus/jackson/map/BeanProperty;",
            ")",
            "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation
.end method

.method public abstract createMapLikeDeserializer(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/map/DeserializerProvider;Lcom/flurry/org/codehaus/jackson/map/type/MapLikeType;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;",
            "Lcom/flurry/org/codehaus/jackson/map/DeserializerProvider;",
            "Lcom/flurry/org/codehaus/jackson/map/type/MapLikeType;",
            "Lcom/flurry/org/codehaus/jackson/map/BeanProperty;",
            ")",
            "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation
.end method

.method public abstract createTreeDeserializer(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/map/DeserializerProvider;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;",
            "Lcom/flurry/org/codehaus/jackson/map/DeserializerProvider;",
            "Lcom/flurry/org/codehaus/jackson/type/JavaType;",
            "Lcom/flurry/org/codehaus/jackson/map/BeanProperty;",
            ")",
            "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation
.end method

.method public findTypeDeserializer(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)Lcom/flurry/org/codehaus/jackson/map/TypeDeserializer;
    .locals 1
    .param p1, "config"    # Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;
    .param p2, "baseType"    # Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .param p3, "property"    # Lcom/flurry/org/codehaus/jackson/map/BeanProperty;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 350
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract findValueInstantiator(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;)Lcom/flurry/org/codehaus/jackson/map/deser/ValueInstantiator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation
.end method

.method public abstract getConfig()Lcom/flurry/org/codehaus/jackson/map/DeserializerFactory$Config;
.end method

.method public abstract mapAbstractType(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/type/JavaType;)Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation
.end method

.method public final withAbstractTypeResolver(Lcom/flurry/org/codehaus/jackson/map/AbstractTypeResolver;)Lcom/flurry/org/codehaus/jackson/map/DeserializerFactory;
    .locals 1
    .param p1, "resolver"    # Lcom/flurry/org/codehaus/jackson/map/AbstractTypeResolver;

    .prologue
    .line 207
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/map/DeserializerFactory;->getConfig()Lcom/flurry/org/codehaus/jackson/map/DeserializerFactory$Config;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/flurry/org/codehaus/jackson/map/DeserializerFactory$Config;->withAbstractTypeResolver(Lcom/flurry/org/codehaus/jackson/map/AbstractTypeResolver;)Lcom/flurry/org/codehaus/jackson/map/DeserializerFactory$Config;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flurry/org/codehaus/jackson/map/DeserializerFactory;->withConfig(Lcom/flurry/org/codehaus/jackson/map/DeserializerFactory$Config;)Lcom/flurry/org/codehaus/jackson/map/DeserializerFactory;

    move-result-object v0

    return-object v0
.end method

.method public final withAdditionalDeserializers(Lcom/flurry/org/codehaus/jackson/map/Deserializers;)Lcom/flurry/org/codehaus/jackson/map/DeserializerFactory;
    .locals 1
    .param p1, "additional"    # Lcom/flurry/org/codehaus/jackson/map/Deserializers;

    .prologue
    .line 177
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/map/DeserializerFactory;->getConfig()Lcom/flurry/org/codehaus/jackson/map/DeserializerFactory$Config;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/flurry/org/codehaus/jackson/map/DeserializerFactory$Config;->withAdditionalDeserializers(Lcom/flurry/org/codehaus/jackson/map/Deserializers;)Lcom/flurry/org/codehaus/jackson/map/DeserializerFactory$Config;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flurry/org/codehaus/jackson/map/DeserializerFactory;->withConfig(Lcom/flurry/org/codehaus/jackson/map/DeserializerFactory$Config;)Lcom/flurry/org/codehaus/jackson/map/DeserializerFactory;

    move-result-object v0

    return-object v0
.end method

.method public final withAdditionalKeyDeserializers(Lcom/flurry/org/codehaus/jackson/map/KeyDeserializers;)Lcom/flurry/org/codehaus/jackson/map/DeserializerFactory;
    .locals 1
    .param p1, "additional"    # Lcom/flurry/org/codehaus/jackson/map/KeyDeserializers;

    .prologue
    .line 187
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/map/DeserializerFactory;->getConfig()Lcom/flurry/org/codehaus/jackson/map/DeserializerFactory$Config;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/flurry/org/codehaus/jackson/map/DeserializerFactory$Config;->withAdditionalKeyDeserializers(Lcom/flurry/org/codehaus/jackson/map/KeyDeserializers;)Lcom/flurry/org/codehaus/jackson/map/DeserializerFactory$Config;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flurry/org/codehaus/jackson/map/DeserializerFactory;->withConfig(Lcom/flurry/org/codehaus/jackson/map/DeserializerFactory$Config;)Lcom/flurry/org/codehaus/jackson/map/DeserializerFactory;

    move-result-object v0

    return-object v0
.end method

.method public abstract withConfig(Lcom/flurry/org/codehaus/jackson/map/DeserializerFactory$Config;)Lcom/flurry/org/codehaus/jackson/map/DeserializerFactory;
.end method

.method public final withDeserializerModifier(Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerModifier;)Lcom/flurry/org/codehaus/jackson/map/DeserializerFactory;
    .locals 1
    .param p1, "modifier"    # Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerModifier;

    .prologue
    .line 197
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/map/DeserializerFactory;->getConfig()Lcom/flurry/org/codehaus/jackson/map/DeserializerFactory$Config;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/flurry/org/codehaus/jackson/map/DeserializerFactory$Config;->withDeserializerModifier(Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerModifier;)Lcom/flurry/org/codehaus/jackson/map/DeserializerFactory$Config;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flurry/org/codehaus/jackson/map/DeserializerFactory;->withConfig(Lcom/flurry/org/codehaus/jackson/map/DeserializerFactory$Config;)Lcom/flurry/org/codehaus/jackson/map/DeserializerFactory;

    move-result-object v0

    return-object v0
.end method

.method public final withValueInstantiators(Lcom/flurry/org/codehaus/jackson/map/deser/ValueInstantiators;)Lcom/flurry/org/codehaus/jackson/map/DeserializerFactory;
    .locals 1
    .param p1, "instantiators"    # Lcom/flurry/org/codehaus/jackson/map/deser/ValueInstantiators;

    .prologue
    .line 217
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/map/DeserializerFactory;->getConfig()Lcom/flurry/org/codehaus/jackson/map/DeserializerFactory$Config;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/flurry/org/codehaus/jackson/map/DeserializerFactory$Config;->withValueInstantiators(Lcom/flurry/org/codehaus/jackson/map/deser/ValueInstantiators;)Lcom/flurry/org/codehaus/jackson/map/DeserializerFactory$Config;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flurry/org/codehaus/jackson/map/DeserializerFactory;->withConfig(Lcom/flurry/org/codehaus/jackson/map/DeserializerFactory$Config;)Lcom/flurry/org/codehaus/jackson/map/DeserializerFactory;

    move-result-object v0

    return-object v0
.end method
