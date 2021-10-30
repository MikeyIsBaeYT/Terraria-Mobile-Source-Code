.class public abstract Lcom/flurry/org/codehaus/jackson/map/ser/std/SerializerBase;
.super Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;
.source "SerializerBase.java"

# interfaces
.implements Lcom/flurry/org/codehaus/jackson/schema/SchemaAware;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer",
        "<TT;>;",
        "Lcom/flurry/org/codehaus/jackson/schema/SchemaAware;"
    }
.end annotation


# instance fields
.field protected final _handledType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/flurry/org/codehaus/jackson/type/JavaType;)V
    .locals 1
    .param p1, "type"    # Lcom/flurry/org/codehaus/jackson/type/JavaType;

    .prologue
    .line 37
    .local p0, "this":Lcom/flurry/org/codehaus/jackson/map/ser/std/SerializerBase;, "Lcom/flurry/org/codehaus/jackson/map/ser/std/SerializerBase<TT;>;"
    invoke-direct {p0}, Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;-><init>()V

    .line 38
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ser/std/SerializerBase;->_handledType:Ljava/lang/Class;

    .line 39
    return-void
.end method

.method protected constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 29
    .local p0, "this":Lcom/flurry/org/codehaus/jackson/map/ser/std/SerializerBase;, "Lcom/flurry/org/codehaus/jackson/map/ser/std/SerializerBase<TT;>;"
    .local p1, "t":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/flurry/org/codehaus/jackson/map/ser/std/SerializerBase;->_handledType:Ljava/lang/Class;

    .line 31
    return-void
.end method

.method protected constructor <init>(Ljava/lang/Class;Z)V
    .locals 0
    .param p2, "dummy"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;Z)V"
        }
    .end annotation

    .prologue
    .line 46
    .local p0, "this":Lcom/flurry/org/codehaus/jackson/map/ser/std/SerializerBase;, "Lcom/flurry/org/codehaus/jackson/map/ser/std/SerializerBase<TT;>;"
    .local p1, "t":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/flurry/org/codehaus/jackson/map/ser/std/SerializerBase;->_handledType:Ljava/lang/Class;

    .line 48
    return-void
.end method


# virtual methods
.method protected createObjectNode()Lcom/flurry/org/codehaus/jackson/node/ObjectNode;
    .locals 1

    .prologue
    .line 68
    .local p0, "this":Lcom/flurry/org/codehaus/jackson/map/ser/std/SerializerBase;, "Lcom/flurry/org/codehaus/jackson/map/ser/std/SerializerBase<TT;>;"
    sget-object v0, Lcom/flurry/org/codehaus/jackson/node/JsonNodeFactory;->instance:Lcom/flurry/org/codehaus/jackson/node/JsonNodeFactory;

    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/node/JsonNodeFactory;->objectNode()Lcom/flurry/org/codehaus/jackson/node/ObjectNode;

    move-result-object v0

    return-object v0
.end method

.method protected createSchemaNode(Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/node/ObjectNode;
    .locals 2
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 73
    .local p0, "this":Lcom/flurry/org/codehaus/jackson/map/ser/std/SerializerBase;, "Lcom/flurry/org/codehaus/jackson/map/ser/std/SerializerBase<TT;>;"
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/map/ser/std/SerializerBase;->createObjectNode()Lcom/flurry/org/codehaus/jackson/node/ObjectNode;

    move-result-object v0

    .line 74
    .local v0, "schema":Lcom/flurry/org/codehaus/jackson/node/ObjectNode;
    const-string v1, "type"

    invoke-virtual {v0, v1, p1}, Lcom/flurry/org/codehaus/jackson/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    return-object v0
.end method

.method protected createSchemaNode(Ljava/lang/String;Z)Lcom/flurry/org/codehaus/jackson/node/ObjectNode;
    .locals 3
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "isOptional"    # Z

    .prologue
    .line 80
    .local p0, "this":Lcom/flurry/org/codehaus/jackson/map/ser/std/SerializerBase;, "Lcom/flurry/org/codehaus/jackson/map/ser/std/SerializerBase<TT;>;"
    invoke-virtual {p0, p1}, Lcom/flurry/org/codehaus/jackson/map/ser/std/SerializerBase;->createSchemaNode(Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/node/ObjectNode;

    move-result-object v0

    .line 82
    .local v0, "schema":Lcom/flurry/org/codehaus/jackson/node/ObjectNode;
    if-nez p2, :cond_0

    .line 83
    const-string v2, "required"

    if-nez p2, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v2, v1}, Lcom/flurry/org/codehaus/jackson/node/ObjectNode;->put(Ljava/lang/String;Z)V

    .line 85
    :cond_0
    return-object v0

    .line 83
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSchema(Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;Ljava/lang/reflect/Type;)Lcom/flurry/org/codehaus/jackson/JsonNode;
    .locals 1
    .param p1, "provider"    # Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;
    .param p2, "typeHint"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 64
    .local p0, "this":Lcom/flurry/org/codehaus/jackson/map/ser/std/SerializerBase;, "Lcom/flurry/org/codehaus/jackson/map/ser/std/SerializerBase<TT;>;"
    const-string v0, "string"

    invoke-virtual {p0, v0}, Lcom/flurry/org/codehaus/jackson/map/ser/std/SerializerBase;->createSchemaNode(Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/node/ObjectNode;

    move-result-object v0

    return-object v0
.end method

.method public final handledType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 51
    .local p0, "this":Lcom/flurry/org/codehaus/jackson/map/ser/std/SerializerBase;, "Lcom/flurry/org/codehaus/jackson/map/ser/std/SerializerBase<TT;>;"
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ser/std/SerializerBase;->_handledType:Ljava/lang/Class;

    return-object v0
.end method

.method protected isDefaultSerializer(Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 98
    .local p0, "this":Lcom/flurry/org/codehaus/jackson/map/ser/std/SerializerBase;, "Lcom/flurry/org/codehaus/jackson/map/ser/std/SerializerBase<TT;>;"
    .local p1, "serializer":Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer<*>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/flurry/org/codehaus/jackson/map/annotate/JacksonStdImpl;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract serialize(Ljava/lang/Object;Lcom/flurry/org/codehaus/jackson/JsonGenerator;Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/flurry/org/codehaus/jackson/JsonGenerator;",
            "Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation
.end method

.method public wrapAndThrow(Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;Ljava/lang/Throwable;Ljava/lang/Object;I)V
    .locals 2
    .param p1, "provider"    # Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;
    .param p2, "t"    # Ljava/lang/Throwable;
    .param p3, "bean"    # Ljava/lang/Object;
    .param p4, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 147
    .local p0, "this":Lcom/flurry/org/codehaus/jackson/map/ser/std/SerializerBase;, "Lcom/flurry/org/codehaus/jackson/map/ser/std/SerializerBase<TT;>;"
    :goto_0
    instance-of v1, p2, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 148
    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    goto :goto_0

    .line 151
    :cond_0
    instance-of v1, p2, Ljava/lang/Error;

    if-eqz v1, :cond_1

    .line 152
    check-cast p2, Ljava/lang/Error;

    .end local p2    # "t":Ljava/lang/Throwable;
    throw p2

    .line 155
    .restart local p2    # "t":Ljava/lang/Throwable;
    :cond_1
    if-eqz p1, :cond_2

    sget-object v1, Lcom/flurry/org/codehaus/jackson/map/SerializationConfig$Feature;->WRAP_EXCEPTIONS:Lcom/flurry/org/codehaus/jackson/map/SerializationConfig$Feature;

    invoke-virtual {p1, v1}, Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;->isEnabled(Lcom/flurry/org/codehaus/jackson/map/SerializationConfig$Feature;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_2
    const/4 v0, 0x1

    .line 156
    .local v0, "wrap":Z
    :goto_1
    instance-of v1, p2, Ljava/io/IOException;

    if-eqz v1, :cond_5

    .line 157
    if-eqz v0, :cond_3

    instance-of v1, p2, Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;

    if-nez v1, :cond_6

    .line 158
    :cond_3
    check-cast p2, Ljava/io/IOException;

    .end local p2    # "t":Ljava/lang/Throwable;
    throw p2

    .line 155
    .end local v0    # "wrap":Z
    .restart local p2    # "t":Ljava/lang/Throwable;
    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    .line 160
    .restart local v0    # "wrap":Z
    :cond_5
    if-nez v0, :cond_6

    .line 161
    instance-of v1, p2, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_6

    .line 162
    check-cast p2, Ljava/lang/RuntimeException;

    .end local p2    # "t":Ljava/lang/Throwable;
    throw p2

    .line 166
    .restart local p2    # "t":Ljava/lang/Throwable;
    :cond_6
    invoke-static {p2, p3, p4}, Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;->wrapWithPath(Ljava/lang/Throwable;Ljava/lang/Object;I)Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;

    move-result-object v1

    throw v1
.end method

.method public wrapAndThrow(Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2
    .param p1, "provider"    # Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;
    .param p2, "t"    # Ljava/lang/Throwable;
    .param p3, "bean"    # Ljava/lang/Object;
    .param p4, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 121
    .local p0, "this":Lcom/flurry/org/codehaus/jackson/map/ser/std/SerializerBase;, "Lcom/flurry/org/codehaus/jackson/map/ser/std/SerializerBase<TT;>;"
    :goto_0
    instance-of v1, p2, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 122
    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    goto :goto_0

    .line 125
    :cond_0
    instance-of v1, p2, Ljava/lang/Error;

    if-eqz v1, :cond_1

    .line 126
    check-cast p2, Ljava/lang/Error;

    .end local p2    # "t":Ljava/lang/Throwable;
    throw p2

    .line 129
    .restart local p2    # "t":Ljava/lang/Throwable;
    :cond_1
    if-eqz p1, :cond_2

    sget-object v1, Lcom/flurry/org/codehaus/jackson/map/SerializationConfig$Feature;->WRAP_EXCEPTIONS:Lcom/flurry/org/codehaus/jackson/map/SerializationConfig$Feature;

    invoke-virtual {p1, v1}, Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;->isEnabled(Lcom/flurry/org/codehaus/jackson/map/SerializationConfig$Feature;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_2
    const/4 v0, 0x1

    .line 130
    .local v0, "wrap":Z
    :goto_1
    instance-of v1, p2, Ljava/io/IOException;

    if-eqz v1, :cond_5

    .line 131
    if-eqz v0, :cond_3

    instance-of v1, p2, Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;

    if-nez v1, :cond_6

    .line 132
    :cond_3
    check-cast p2, Ljava/io/IOException;

    .end local p2    # "t":Ljava/lang/Throwable;
    throw p2

    .line 129
    .end local v0    # "wrap":Z
    .restart local p2    # "t":Ljava/lang/Throwable;
    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    .line 134
    .restart local v0    # "wrap":Z
    :cond_5
    if-nez v0, :cond_6

    .line 135
    instance-of v1, p2, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_6

    .line 136
    check-cast p2, Ljava/lang/RuntimeException;

    .end local p2    # "t":Ljava/lang/Throwable;
    throw p2

    .line 140
    .restart local p2    # "t":Ljava/lang/Throwable;
    :cond_6
    invoke-static {p2, p3, p4}, Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;->wrapWithPath(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;

    move-result-object v1

    throw v1
.end method

.method public wrapAndThrow(Ljava/lang/Throwable;Ljava/lang/Object;I)V
    .locals 1
    .param p1, "t"    # Ljava/lang/Throwable;
    .param p2, "bean"    # Ljava/lang/Object;
    .param p3, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 182
    .local p0, "this":Lcom/flurry/org/codehaus/jackson/map/ser/std/SerializerBase;, "Lcom/flurry/org/codehaus/jackson/map/ser/std/SerializerBase<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/flurry/org/codehaus/jackson/map/ser/std/SerializerBase;->wrapAndThrow(Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;Ljava/lang/Throwable;Ljava/lang/Object;I)V

    .line 183
    return-void
.end method

.method public wrapAndThrow(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .param p1, "t"    # Ljava/lang/Throwable;
    .param p2, "bean"    # Ljava/lang/Object;
    .param p3, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 174
    .local p0, "this":Lcom/flurry/org/codehaus/jackson/map/ser/std/SerializerBase;, "Lcom/flurry/org/codehaus/jackson/map/ser/std/SerializerBase<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/flurry/org/codehaus/jackson/map/ser/std/SerializerBase;->wrapAndThrow(Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;)V

    .line 175
    return-void
.end method
