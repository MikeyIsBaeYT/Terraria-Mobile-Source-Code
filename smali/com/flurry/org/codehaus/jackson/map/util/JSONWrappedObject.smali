.class public Lcom/flurry/org/codehaus/jackson/map/util/JSONWrappedObject;
.super Ljava/lang/Object;
.source "JSONWrappedObject.java"

# interfaces
.implements Lcom/flurry/org/codehaus/jackson/map/JsonSerializableWithType;


# instance fields
.field protected final _prefix:Ljava/lang/String;

.field protected final _serializationType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

.field protected final _suffix:Ljava/lang/String;

.field protected final _value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "suffix"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;

    .prologue
    .line 51
    const/4 v0, 0x0

    check-cast v0, Lcom/flurry/org/codehaus/jackson/type/JavaType;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/flurry/org/codehaus/jackson/map/util/JSONWrappedObject;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/flurry/org/codehaus/jackson/type/JavaType;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/flurry/org/codehaus/jackson/type/JavaType;)V
    .locals 0
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "suffix"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;
    .param p4, "asType"    # Lcom/flurry/org/codehaus/jackson/type/JavaType;

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/flurry/org/codehaus/jackson/map/util/JSONWrappedObject;->_prefix:Ljava/lang/String;

    .line 57
    iput-object p2, p0, Lcom/flurry/org/codehaus/jackson/map/util/JSONWrappedObject;->_suffix:Ljava/lang/String;

    .line 58
    iput-object p3, p0, Lcom/flurry/org/codehaus/jackson/map/util/JSONWrappedObject;->_value:Ljava/lang/Object;

    .line 59
    iput-object p4, p0, Lcom/flurry/org/codehaus/jackson/map/util/JSONWrappedObject;->_serializationType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    .line 60
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "suffix"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 67
    .local p4, "rawType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/flurry/org/codehaus/jackson/map/util/JSONWrappedObject;->_prefix:Ljava/lang/String;

    .line 69
    iput-object p2, p0, Lcom/flurry/org/codehaus/jackson/map/util/JSONWrappedObject;->_suffix:Ljava/lang/String;

    .line 70
    iput-object p3, p0, Lcom/flurry/org/codehaus/jackson/map/util/JSONWrappedObject;->_value:Ljava/lang/Object;

    .line 71
    if-nez p4, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/util/JSONWrappedObject;->_serializationType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    .line 72
    return-void

    .line 71
    :cond_0
    invoke-static {}, Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;->defaultInstance()Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;->constructType(Ljava/lang/reflect/Type;)Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public getPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/util/JSONWrappedObject;->_prefix:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializationType()Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/util/JSONWrappedObject;->_serializationType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    return-object v0
.end method

.method public getSuffix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/util/JSONWrappedObject;->_suffix:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/util/JSONWrappedObject;->_value:Ljava/lang/Object;

    return-object v0
.end method

.method public serialize(Lcom/flurry/org/codehaus/jackson/JsonGenerator;Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;)V
    .locals 4
    .param p1, "jgen"    # Lcom/flurry/org/codehaus/jackson/JsonGenerator;
    .param p2, "provider"    # Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 94
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/util/JSONWrappedObject;->_prefix:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/util/JSONWrappedObject;->_prefix:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/flurry/org/codehaus/jackson/JsonGenerator;->writeRaw(Ljava/lang/String;)V

    .line 95
    :cond_0
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/util/JSONWrappedObject;->_value:Ljava/lang/Object;

    if-nez v1, :cond_2

    .line 96
    invoke-virtual {p2, p1}, Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;->defaultSerializeNull(Lcom/flurry/org/codehaus/jackson/JsonGenerator;)V

    .line 103
    :goto_0
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/util/JSONWrappedObject;->_suffix:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/util/JSONWrappedObject;->_suffix:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/flurry/org/codehaus/jackson/JsonGenerator;->writeRaw(Ljava/lang/String;)V

    .line 104
    :cond_1
    return-void

    .line 97
    :cond_2
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/util/JSONWrappedObject;->_serializationType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    if-eqz v1, :cond_3

    .line 98
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/util/JSONWrappedObject;->_serializationType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    invoke-virtual {p2, v1, v2, v3}, Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;->findTypedValueSerializer(Lcom/flurry/org/codehaus/jackson/type/JavaType;ZLcom/flurry/org/codehaus/jackson/map/BeanProperty;)Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/util/JSONWrappedObject;->_value:Ljava/lang/Object;

    invoke-virtual {v1, v2, p1, p2}, Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;->serialize(Ljava/lang/Object;Lcom/flurry/org/codehaus/jackson/JsonGenerator;Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;)V

    goto :goto_0

    .line 100
    :cond_3
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/util/JSONWrappedObject;->_value:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 101
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p2, v0, v2, v3}, Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;->findTypedValueSerializer(Ljava/lang/Class;ZLcom/flurry/org/codehaus/jackson/map/BeanProperty;)Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/util/JSONWrappedObject;->_value:Ljava/lang/Object;

    invoke-virtual {v1, v2, p1, p2}, Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;->serialize(Ljava/lang/Object;Lcom/flurry/org/codehaus/jackson/JsonGenerator;Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;)V

    goto :goto_0
.end method

.method public serializeWithType(Lcom/flurry/org/codehaus/jackson/JsonGenerator;Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;)V
    .locals 0
    .param p1, "jgen"    # Lcom/flurry/org/codehaus/jackson/JsonGenerator;
    .param p2, "provider"    # Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;
    .param p3, "typeSer"    # Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 85
    invoke-virtual {p0, p1, p2}, Lcom/flurry/org/codehaus/jackson/map/util/JSONWrappedObject;->serialize(Lcom/flurry/org/codehaus/jackson/JsonGenerator;Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;)V

    .line 86
    return-void
.end method
