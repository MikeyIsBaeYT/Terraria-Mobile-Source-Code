.class public abstract Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;
.super Ljava/lang/Object;
.source "DeserializationContext.java"


# instance fields
.field protected final _config:Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;

.field protected final _featureFlags:I


# direct methods
.method protected constructor <init>(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;)V
    .locals 1
    .param p1, "config"    # Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;->_config:Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;

    .line 35
    iget v0, p1, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;->_featureFlags:I

    iput v0, p0, Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;->_featureFlags:I

    .line 36
    return-void
.end method


# virtual methods
.method public abstract constructCalendar(Ljava/util/Date;)Ljava/util/Calendar;
.end method

.method public constructType(Ljava/lang/Class;)Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/flurry/org/codehaus/jackson/type/JavaType;"
        }
    .end annotation

    .prologue
    .line 98
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;->_config:Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;

    invoke-virtual {v0, p1}, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;->constructType(Ljava/lang/Class;)Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v0

    return-object v0
.end method

.method public abstract findInjectableValue(Ljava/lang/Object;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract getArrayBuilders()Lcom/flurry/org/codehaus/jackson/map/util/ArrayBuilders;
.end method

.method public getBase64Variant()Lcom/flurry/org/codehaus/jackson/Base64Variant;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;->_config:Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;

    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;->getBase64Variant()Lcom/flurry/org/codehaus/jackson/Base64Variant;

    move-result-object v0

    return-object v0
.end method

.method public getConfig()Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;->_config:Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;

    return-object v0
.end method

.method public getDeserializerProvider()Lcom/flurry/org/codehaus/jackson/map/DeserializerProvider;
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getNodeFactory()Lcom/flurry/org/codehaus/jackson/node/JsonNodeFactory;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;->_config:Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;

    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;->getNodeFactory()Lcom/flurry/org/codehaus/jackson/node/JsonNodeFactory;

    move-result-object v0

    return-object v0
.end method

.method public abstract getParser()Lcom/flurry/org/codehaus/jackson/JsonParser;
.end method

.method public getTypeFactory()Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;->_config:Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;

    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;->getTypeFactory()Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;

    move-result-object v0

    return-object v0
.end method

.method public abstract handleUnknownProperty(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;Ljava/lang/Object;Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/JsonParser;",
            "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer",
            "<*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation
.end method

.method public abstract instantiationException(Ljava/lang/Class;Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;"
        }
    .end annotation
.end method

.method public abstract instantiationException(Ljava/lang/Class;Ljava/lang/Throwable;)Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Throwable;",
            ")",
            "Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;"
        }
    .end annotation
.end method

.method public isEnabled(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;)Z
    .locals 2
    .param p1, "feat"    # Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;

    .prologue
    .line 69
    iget v0, p0, Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;->_featureFlags:I

    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;->getMask()I

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract leaseObjectBuffer()Lcom/flurry/org/codehaus/jackson/map/util/ObjectBuffer;
.end method

.method public abstract mappingException(Ljava/lang/Class;)Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;"
        }
    .end annotation
.end method

.method public abstract mappingException(Ljava/lang/Class;Lcom/flurry/org/codehaus/jackson/JsonToken;)Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/flurry/org/codehaus/jackson/JsonToken;",
            ")",
            "Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;"
        }
    .end annotation
.end method

.method public mappingException(Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 203
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;->getParser()Lcom/flurry/org/codehaus/jackson/JsonParser;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;->from(Lcom/flurry/org/codehaus/jackson/JsonParser;Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;

    move-result-object v0

    return-object v0
.end method

.method public abstract parseDate(Ljava/lang/String;)Ljava/util/Date;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public abstract returnObjectBuffer(Lcom/flurry/org/codehaus/jackson/map/util/ObjectBuffer;)V
.end method

.method public abstract unknownFieldException(Ljava/lang/Object;Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;
.end method

.method public abstract unknownTypeException(Lcom/flurry/org/codehaus/jackson/type/JavaType;Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;
.end method

.method public abstract weirdKeyException(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;"
        }
    .end annotation
.end method

.method public abstract weirdNumberException(Ljava/lang/Class;Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;"
        }
    .end annotation
.end method

.method public abstract weirdStringException(Ljava/lang/Class;Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;"
        }
    .end annotation
.end method

.method public abstract wrongTokenException(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/JsonToken;Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;
.end method
