.class public abstract Lcom/flurry/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;
.super Ljava/lang/Object;
.source "PropertySerializerMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/org/codehaus/jackson/map/ser/impl/PropertySerializerMap$Multi;,
        Lcom/flurry/org/codehaus/jackson/map/ser/impl/PropertySerializerMap$Double;,
        Lcom/flurry/org/codehaus/jackson/map/ser/impl/PropertySerializerMap$Single;,
        Lcom/flurry/org/codehaus/jackson/map/ser/impl/PropertySerializerMap$Empty;,
        Lcom/flurry/org/codehaus/jackson/map/ser/impl/PropertySerializerMap$TypeAndSerializer;,
        Lcom/flurry/org/codehaus/jackson/map/ser/impl/PropertySerializerMap$SerializerAndMapResult;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    return-void
.end method

.method public static emptyMap()Lcom/flurry/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/flurry/org/codehaus/jackson/map/ser/impl/PropertySerializerMap$Empty;->instance:Lcom/flurry/org/codehaus/jackson/map/ser/impl/PropertySerializerMap$Empty;

    return-object v0
.end method


# virtual methods
.method public final findAndAddSerializer(Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)Lcom/flurry/org/codehaus/jackson/map/ser/impl/PropertySerializerMap$SerializerAndMapResult;
    .locals 3
    .param p1, "type"    # Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .param p2, "provider"    # Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;
    .param p3, "property"    # Lcom/flurry/org/codehaus/jackson/map/BeanProperty;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 47
    invoke-virtual {p2, p1, p3}, Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;->findValueSerializer(Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;

    move-result-object v0

    .line 48
    .local v0, "serializer":Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    new-instance v1, Lcom/flurry/org/codehaus/jackson/map/ser/impl/PropertySerializerMap$SerializerAndMapResult;

    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0, v2, v0}, Lcom/flurry/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;->newWith(Ljava/lang/Class;Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;)Lcom/flurry/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/flurry/org/codehaus/jackson/map/ser/impl/PropertySerializerMap$SerializerAndMapResult;-><init>(Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;Lcom/flurry/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;)V

    return-object v1
.end method

.method public final findAndAddSerializer(Ljava/lang/Class;Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)Lcom/flurry/org/codehaus/jackson/map/ser/impl/PropertySerializerMap$SerializerAndMapResult;
    .locals 3
    .param p2, "provider"    # Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;
    .param p3, "property"    # Lcom/flurry/org/codehaus/jackson/map/BeanProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;",
            "Lcom/flurry/org/codehaus/jackson/map/BeanProperty;",
            ")",
            "Lcom/flurry/org/codehaus/jackson/map/ser/impl/PropertySerializerMap$SerializerAndMapResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 39
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p2, p1, p3}, Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;->findValueSerializer(Ljava/lang/Class;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;

    move-result-object v0

    .line 40
    .local v0, "serializer":Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    new-instance v1, Lcom/flurry/org/codehaus/jackson/map/ser/impl/PropertySerializerMap$SerializerAndMapResult;

    invoke-virtual {p0, p1, v0}, Lcom/flurry/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;->newWith(Ljava/lang/Class;Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;)Lcom/flurry/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/flurry/org/codehaus/jackson/map/ser/impl/PropertySerializerMap$SerializerAndMapResult;-><init>(Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;Lcom/flurry/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;)V

    return-object v1
.end method

.method public abstract newWith(Ljava/lang/Class;Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;)Lcom/flurry/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/flurry/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;"
        }
    .end annotation
.end method

.method public abstract serializerFor(Ljava/lang/Class;)Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method
