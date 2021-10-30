.class public abstract Lcom/flurry/org/codehaus/jackson/map/DeserializerProvider;
.super Ljava/lang/Object;
.source "DeserializerProvider.java"


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract cachedDeserializersCount()I
.end method

.method public abstract findExpectedRootName(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/type/JavaType;)Lcom/flurry/org/codehaus/jackson/io/SerializedString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation
.end method

.method public abstract findKeyDeserializer(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)Lcom/flurry/org/codehaus/jackson/map/KeyDeserializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation
.end method

.method public abstract findTypedValueDeserializer(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;",
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

.method public abstract findValueDeserializer(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;",
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

.method public abstract flushCachedDeserializers()V
.end method

.method public abstract hasValueDeserializerFor(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/type/JavaType;)Z
.end method

.method public abstract mapAbstractType(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/type/JavaType;)Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation
.end method

.method public abstract withAbstractTypeResolver(Lcom/flurry/org/codehaus/jackson/map/AbstractTypeResolver;)Lcom/flurry/org/codehaus/jackson/map/DeserializerProvider;
.end method

.method public abstract withAdditionalDeserializers(Lcom/flurry/org/codehaus/jackson/map/Deserializers;)Lcom/flurry/org/codehaus/jackson/map/DeserializerProvider;
.end method

.method public abstract withAdditionalKeyDeserializers(Lcom/flurry/org/codehaus/jackson/map/KeyDeserializers;)Lcom/flurry/org/codehaus/jackson/map/DeserializerProvider;
.end method

.method public abstract withDeserializerModifier(Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerModifier;)Lcom/flurry/org/codehaus/jackson/map/DeserializerProvider;
.end method

.method public abstract withFactory(Lcom/flurry/org/codehaus/jackson/map/DeserializerFactory;)Lcom/flurry/org/codehaus/jackson/map/DeserializerProvider;
.end method

.method public abstract withValueInstantiators(Lcom/flurry/org/codehaus/jackson/map/deser/ValueInstantiators;)Lcom/flurry/org/codehaus/jackson/map/DeserializerProvider;
.end method
