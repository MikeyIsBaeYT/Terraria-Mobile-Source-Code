.class public abstract Lcom/flurry/org/codehaus/jackson/map/SerializerFactory;
.super Ljava/lang/Object;
.source "SerializerFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/org/codehaus/jackson/map/SerializerFactory$Config;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method


# virtual methods
.method public abstract createKeySerializer(Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;",
            "Lcom/flurry/org/codehaus/jackson/type/JavaType;",
            "Lcom/flurry/org/codehaus/jackson/map/BeanProperty;",
            ")",
            "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer",
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

.method public abstract createSerializer(Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;",
            "Lcom/flurry/org/codehaus/jackson/type/JavaType;",
            "Lcom/flurry/org/codehaus/jackson/map/BeanProperty;",
            ")",
            "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer",
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

.method public final createSerializer(Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;)Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;
    .locals 2
    .param p1, "type"    # Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .param p2, "config"    # Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/type/JavaType;",
            "Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;",
            ")",
            "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 176
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p2, p1, v1}, Lcom/flurry/org/codehaus/jackson/map/SerializerFactory;->createSerializer(Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;
    :try_end_0
    .catch Lcom/flurry/org/codehaus/jackson/map/JsonMappingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 177
    :catch_0
    move-exception v0

    .line 178
    .local v0, "e":Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;
    new-instance v1, Lcom/flurry/org/codehaus/jackson/map/RuntimeJsonMappingException;

    invoke-direct {v1, v0}, Lcom/flurry/org/codehaus/jackson/map/RuntimeJsonMappingException;-><init>(Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;)V

    throw v1
.end method

.method public abstract createTypeSerializer(Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation
.end method

.method public final createTypeSerializer(Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;)Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;
    .locals 2
    .param p1, "baseType"    # Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .param p2, "config"    # Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 193
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p2, p1, v1}, Lcom/flurry/org/codehaus/jackson/map/SerializerFactory;->createTypeSerializer(Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;
    :try_end_0
    .catch Lcom/flurry/org/codehaus/jackson/map/JsonMappingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 194
    :catch_0
    move-exception v0

    .line 195
    .local v0, "e":Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public abstract getConfig()Lcom/flurry/org/codehaus/jackson/map/SerializerFactory$Config;
.end method

.method public final withAdditionalKeySerializers(Lcom/flurry/org/codehaus/jackson/map/Serializers;)Lcom/flurry/org/codehaus/jackson/map/SerializerFactory;
    .locals 1
    .param p1, "additional"    # Lcom/flurry/org/codehaus/jackson/map/Serializers;

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/map/SerializerFactory;->getConfig()Lcom/flurry/org/codehaus/jackson/map/SerializerFactory$Config;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/flurry/org/codehaus/jackson/map/SerializerFactory$Config;->withAdditionalKeySerializers(Lcom/flurry/org/codehaus/jackson/map/Serializers;)Lcom/flurry/org/codehaus/jackson/map/SerializerFactory$Config;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flurry/org/codehaus/jackson/map/SerializerFactory;->withConfig(Lcom/flurry/org/codehaus/jackson/map/SerializerFactory$Config;)Lcom/flurry/org/codehaus/jackson/map/SerializerFactory;

    move-result-object v0

    return-object v0
.end method

.method public final withAdditionalSerializers(Lcom/flurry/org/codehaus/jackson/map/Serializers;)Lcom/flurry/org/codehaus/jackson/map/SerializerFactory;
    .locals 1
    .param p1, "additional"    # Lcom/flurry/org/codehaus/jackson/map/Serializers;

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/map/SerializerFactory;->getConfig()Lcom/flurry/org/codehaus/jackson/map/SerializerFactory$Config;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/flurry/org/codehaus/jackson/map/SerializerFactory$Config;->withAdditionalSerializers(Lcom/flurry/org/codehaus/jackson/map/Serializers;)Lcom/flurry/org/codehaus/jackson/map/SerializerFactory$Config;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flurry/org/codehaus/jackson/map/SerializerFactory;->withConfig(Lcom/flurry/org/codehaus/jackson/map/SerializerFactory$Config;)Lcom/flurry/org/codehaus/jackson/map/SerializerFactory;

    move-result-object v0

    return-object v0
.end method

.method public abstract withConfig(Lcom/flurry/org/codehaus/jackson/map/SerializerFactory$Config;)Lcom/flurry/org/codehaus/jackson/map/SerializerFactory;
.end method

.method public final withSerializerModifier(Lcom/flurry/org/codehaus/jackson/map/ser/BeanSerializerModifier;)Lcom/flurry/org/codehaus/jackson/map/SerializerFactory;
    .locals 1
    .param p1, "modifier"    # Lcom/flurry/org/codehaus/jackson/map/ser/BeanSerializerModifier;

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/map/SerializerFactory;->getConfig()Lcom/flurry/org/codehaus/jackson/map/SerializerFactory$Config;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/flurry/org/codehaus/jackson/map/SerializerFactory$Config;->withSerializerModifier(Lcom/flurry/org/codehaus/jackson/map/ser/BeanSerializerModifier;)Lcom/flurry/org/codehaus/jackson/map/SerializerFactory$Config;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flurry/org/codehaus/jackson/map/SerializerFactory;->withConfig(Lcom/flurry/org/codehaus/jackson/map/SerializerFactory$Config;)Lcom/flurry/org/codehaus/jackson/map/SerializerFactory;

    move-result-object v0

    return-object v0
.end method
