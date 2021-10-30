.class public Lcom/flurry/org/codehaus/jackson/map/util/JSONPObject;
.super Ljava/lang/Object;
.source "JSONPObject.java"

# interfaces
.implements Lcom/flurry/org/codehaus/jackson/map/JsonSerializableWithType;


# instance fields
.field protected final _function:Ljava/lang/String;

.field protected final _serializationType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

.field protected final _value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "function"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 42
    const/4 v0, 0x0

    check-cast v0, Lcom/flurry/org/codehaus/jackson/type/JavaType;

    invoke-direct {p0, p1, p2, v0}, Lcom/flurry/org/codehaus/jackson/map/util/JSONPObject;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/flurry/org/codehaus/jackson/type/JavaType;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;Lcom/flurry/org/codehaus/jackson/type/JavaType;)V
    .locals 0
    .param p1, "function"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "asType"    # Lcom/flurry/org/codehaus/jackson/type/JavaType;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/flurry/org/codehaus/jackson/map/util/JSONPObject;->_function:Ljava/lang/String;

    .line 48
    iput-object p2, p0, Lcom/flurry/org/codehaus/jackson/map/util/JSONPObject;->_value:Ljava/lang/Object;

    .line 49
    iput-object p3, p0, Lcom/flurry/org/codehaus/jackson/map/util/JSONPObject;->_serializationType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    .line 50
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V
    .locals 1
    .param p1, "function"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 57
    .local p3, "rawType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/flurry/org/codehaus/jackson/map/util/JSONPObject;->_function:Ljava/lang/String;

    .line 59
    iput-object p2, p0, Lcom/flurry/org/codehaus/jackson/map/util/JSONPObject;->_value:Ljava/lang/Object;

    .line 60
    if-nez p3, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/util/JSONPObject;->_serializationType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    .line 61
    return-void

    .line 60
    :cond_0
    invoke-static {}, Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;->defaultInstance()Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;->constructType(Ljava/lang/reflect/Type;)Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public getFunction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/util/JSONPObject;->_function:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializationType()Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/util/JSONPObject;->_serializationType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/util/JSONPObject;->_value:Ljava/lang/Object;

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

    .line 83
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/util/JSONPObject;->_function:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/flurry/org/codehaus/jackson/JsonGenerator;->writeRaw(Ljava/lang/String;)V

    .line 84
    const/16 v1, 0x28

    invoke-virtual {p1, v1}, Lcom/flurry/org/codehaus/jackson/JsonGenerator;->writeRaw(C)V

    .line 85
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/util/JSONPObject;->_value:Ljava/lang/Object;

    if-nez v1, :cond_0

    .line 86
    invoke-virtual {p2, p1}, Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;->defaultSerializeNull(Lcom/flurry/org/codehaus/jackson/JsonGenerator;)V

    .line 93
    :goto_0
    const/16 v1, 0x29

    invoke-virtual {p1, v1}, Lcom/flurry/org/codehaus/jackson/JsonGenerator;->writeRaw(C)V

    .line 94
    return-void

    .line 87
    :cond_0
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/util/JSONPObject;->_serializationType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    if-eqz v1, :cond_1

    .line 88
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/util/JSONPObject;->_serializationType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    invoke-virtual {p2, v1, v2, v3}, Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;->findTypedValueSerializer(Lcom/flurry/org/codehaus/jackson/type/JavaType;ZLcom/flurry/org/codehaus/jackson/map/BeanProperty;)Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/util/JSONPObject;->_value:Ljava/lang/Object;

    invoke-virtual {v1, v2, p1, p2}, Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;->serialize(Ljava/lang/Object;Lcom/flurry/org/codehaus/jackson/JsonGenerator;Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;)V

    goto :goto_0

    .line 90
    :cond_1
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/util/JSONPObject;->_value:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 91
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p2, v0, v2, v3}, Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;->findTypedValueSerializer(Ljava/lang/Class;ZLcom/flurry/org/codehaus/jackson/map/BeanProperty;)Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/util/JSONPObject;->_value:Ljava/lang/Object;

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
    .line 74
    invoke-virtual {p0, p1, p2}, Lcom/flurry/org/codehaus/jackson/map/util/JSONPObject;->serialize(Lcom/flurry/org/codehaus/jackson/JsonGenerator;Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;)V

    .line 75
    return-void
.end method
