.class public final Lcom/flurry/org/codehaus/jackson/map/deser/SettableAnyProperty;
.super Ljava/lang/Object;
.source "SettableAnyProperty.java"


# instance fields
.field protected final _property:Lcom/flurry/org/codehaus/jackson/map/BeanProperty;

.field protected final _setter:Ljava/lang/reflect/Method;

.field protected final _type:Lcom/flurry/org/codehaus/jackson/type/JavaType;

.field protected _valueDeserializer:Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/flurry/org/codehaus/jackson/map/BeanProperty;Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;Lcom/flurry/org/codehaus/jackson/type/JavaType;)V
    .locals 1
    .param p1, "property"    # Lcom/flurry/org/codehaus/jackson/map/BeanProperty;
    .param p2, "setter"    # Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;
    .param p3, "type"    # Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/flurry/org/codehaus/jackson/map/deser/SettableAnyProperty;-><init>(Lcom/flurry/org/codehaus/jackson/map/BeanProperty;Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Lcom/flurry/org/codehaus/jackson/map/BeanProperty;Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;)V
    .locals 1
    .param p1, "property"    # Lcom/flurry/org/codehaus/jackson/map/BeanProperty;
    .param p2, "setter"    # Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;
    .param p3, "type"    # Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/BeanProperty;",
            "Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;",
            "Lcom/flurry/org/codehaus/jackson/type/JavaType;",
            "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 57
    .local p4, "valueDeser":Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer<Ljava/lang/Object;>;"
    invoke-virtual {p2}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;->getAnnotated()Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-direct {p0, p1, v0, p3, p4}, Lcom/flurry/org/codehaus/jackson/map/deser/SettableAnyProperty;-><init>(Lcom/flurry/org/codehaus/jackson/map/BeanProperty;Ljava/lang/reflect/Method;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Lcom/flurry/org/codehaus/jackson/map/BeanProperty;Ljava/lang/reflect/Method;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;)V
    .locals 0
    .param p1, "property"    # Lcom/flurry/org/codehaus/jackson/map/BeanProperty;
    .param p2, "rawSetter"    # Ljava/lang/reflect/Method;
    .param p3, "type"    # Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/BeanProperty;",
            "Ljava/lang/reflect/Method;",
            "Lcom/flurry/org/codehaus/jackson/type/JavaType;",
            "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 61
    .local p4, "valueDeser":Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer<Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/flurry/org/codehaus/jackson/map/deser/SettableAnyProperty;->_property:Lcom/flurry/org/codehaus/jackson/map/BeanProperty;

    .line 63
    iput-object p3, p0, Lcom/flurry/org/codehaus/jackson/map/deser/SettableAnyProperty;->_type:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    .line 64
    iput-object p2, p0, Lcom/flurry/org/codehaus/jackson/map/deser/SettableAnyProperty;->_setter:Ljava/lang/reflect/Method;

    .line 65
    iput-object p4, p0, Lcom/flurry/org/codehaus/jackson/map/deser/SettableAnyProperty;->_valueDeserializer:Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;

    .line 66
    return-void
.end method

.method private getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/SettableAnyProperty;->_setter:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected _throwAsIOE(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 7
    .param p1, "e"    # Ljava/lang/Exception;
    .param p2, "propName"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 147
    instance-of v4, p1, Ljava/lang/IllegalArgumentException;

    if-eqz v4, :cond_2

    .line 148
    if-nez p3, :cond_0

    const-string v0, "[NULL]"

    .line 149
    .local v0, "actType":Ljava/lang/String;
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Problem deserializing \"any\" property \'"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 150
    .local v1, "msg":Ljava/lang/StringBuilder;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\' of class "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lcom/flurry/org/codehaus/jackson/map/deser/SettableAnyProperty;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (expected type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/flurry/org/codehaus/jackson/map/deser/SettableAnyProperty;->_type:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 151
    const-string v4, "; actual type: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 153
    .local v2, "origMsg":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 154
    const-string v4, ", problem: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    :goto_1
    new-instance v4, Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v6, p1}, Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;-><init>(Ljava/lang/String;Lcom/flurry/org/codehaus/jackson/JsonLocation;Ljava/lang/Throwable;)V

    throw v4

    .line 148
    .end local v0    # "actType":Ljava/lang/String;
    .end local v1    # "msg":Ljava/lang/StringBuilder;
    .end local v2    # "origMsg":Ljava/lang/String;
    :cond_0
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 156
    .restart local v0    # "actType":Ljava/lang/String;
    .restart local v1    # "msg":Ljava/lang/StringBuilder;
    .restart local v2    # "origMsg":Ljava/lang/String;
    :cond_1
    const-string v4, " (no error message provided)"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 160
    .end local v0    # "actType":Ljava/lang/String;
    .end local v1    # "msg":Ljava/lang/StringBuilder;
    .end local v2    # "origMsg":Ljava/lang/String;
    :cond_2
    instance-of v4, p1, Ljava/io/IOException;

    if-eqz v4, :cond_3

    .line 161
    check-cast p1, Ljava/io/IOException;

    .end local p1    # "e":Ljava/lang/Exception;
    throw p1

    .line 163
    .restart local p1    # "e":Ljava/lang/Exception;
    :cond_3
    instance-of v4, p1, Ljava/lang/RuntimeException;

    if-eqz v4, :cond_4

    .line 164
    check-cast p1, Ljava/lang/RuntimeException;

    .end local p1    # "e":Ljava/lang/Exception;
    throw p1

    .line 167
    .restart local p1    # "e":Ljava/lang/Exception;
    :cond_4
    move-object v3, p1

    .line 168
    .local v3, "t":Ljava/lang/Throwable;
    :goto_2
    invoke-virtual {v3}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 169
    invoke-virtual {v3}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    goto :goto_2

    .line 171
    :cond_5
    new-instance v4, Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v6, v3}, Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;-><init>(Ljava/lang/String;Lcom/flurry/org/codehaus/jackson/JsonLocation;Ljava/lang/Throwable;)V

    throw v4
.end method

.method public final deserialize(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;
    .locals 2
    .param p1, "jp"    # Lcom/flurry/org/codehaus/jackson/JsonParser;
    .param p2, "ctxt"    # Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 116
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getCurrentToken()Lcom/flurry/org/codehaus/jackson/JsonToken;

    move-result-object v0

    .line 117
    .local v0, "t":Lcom/flurry/org/codehaus/jackson/JsonToken;
    sget-object v1, Lcom/flurry/org/codehaus/jackson/JsonToken;->VALUE_NULL:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_0

    .line 118
    const/4 v1, 0x0

    .line 120
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/deser/SettableAnyProperty;->_valueDeserializer:Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;

    invoke-virtual {v1, p1, p2}, Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;->deserialize(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public final deserializeAndSet(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .param p1, "jp"    # Lcom/flurry/org/codehaus/jackson/JsonParser;
    .param p2, "ctxt"    # Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;
    .param p3, "instance"    # Ljava/lang/Object;
    .param p4, "propName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 110
    invoke-virtual {p0, p1, p2}, Lcom/flurry/org/codehaus/jackson/map/deser/SettableAnyProperty;->deserialize(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p3, p4, v0}, Lcom/flurry/org/codehaus/jackson/map/deser/SettableAnyProperty;->set(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 111
    return-void
.end method

.method public getProperty()Lcom/flurry/org/codehaus/jackson/map/BeanProperty;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/SettableAnyProperty;->_property:Lcom/flurry/org/codehaus/jackson/map/BeanProperty;

    return-object v0
.end method

.method public getType()Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/SettableAnyProperty;->_type:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    return-object v0
.end method

.method public hasValueDeserializer()Z
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/SettableAnyProperty;->_valueDeserializer:Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final set(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4
    .param p1, "instance"    # Ljava/lang/Object;
    .param p2, "propName"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 127
    :try_start_0
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/deser/SettableAnyProperty;->_setter:Ljava/lang/reflect/Method;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 v3, 0x1

    aput-object p3, v2, v3

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    :goto_0
    return-void

    .line 128
    :catch_0
    move-exception v0

    .line 129
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0, p2, p3}, Lcom/flurry/org/codehaus/jackson/map/deser/SettableAnyProperty;->_throwAsIOE(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setValueDeserializer(Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 78
    .local p1, "deser":Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer<Ljava/lang/Object;>;"
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/SettableAnyProperty;->_valueDeserializer:Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;

    if-eqz v0, :cond_0

    .line 79
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already had assigned deserializer for SettableAnyProperty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_0
    iput-object p1, p0, Lcom/flurry/org/codehaus/jackson/map/deser/SettableAnyProperty;->_valueDeserializer:Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;

    .line 82
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[any property on class "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/flurry/org/codehaus/jackson/map/deser/SettableAnyProperty;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withValueDeserializer(Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;)Lcom/flurry/org/codehaus/jackson/map/deser/SettableAnyProperty;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/flurry/org/codehaus/jackson/map/deser/SettableAnyProperty;"
        }
    .end annotation

    .prologue
    .line 69
    .local p1, "deser":Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer<Ljava/lang/Object;>;"
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/deser/SettableAnyProperty;

    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/deser/SettableAnyProperty;->_property:Lcom/flurry/org/codehaus/jackson/map/BeanProperty;

    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/deser/SettableAnyProperty;->_setter:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/map/deser/SettableAnyProperty;->_type:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/flurry/org/codehaus/jackson/map/deser/SettableAnyProperty;-><init>(Lcom/flurry/org/codehaus/jackson/map/BeanProperty;Ljava/lang/reflect/Method;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;)V

    return-object v0
.end method
