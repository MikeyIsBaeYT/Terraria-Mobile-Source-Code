.class public Lcom/flurry/org/codehaus/jackson/map/jsontype/impl/AsExternalTypeSerializer;
.super Lcom/flurry/org/codehaus/jackson/map/jsontype/impl/TypeSerializerBase;
.source "AsExternalTypeSerializer.java"


# instance fields
.field protected final _typePropertyName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/flurry/org/codehaus/jackson/map/jsontype/TypeIdResolver;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;Ljava/lang/String;)V
    .locals 0
    .param p1, "idRes"    # Lcom/flurry/org/codehaus/jackson/map/jsontype/TypeIdResolver;
    .param p2, "property"    # Lcom/flurry/org/codehaus/jackson/map/BeanProperty;
    .param p3, "propName"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/flurry/org/codehaus/jackson/map/jsontype/impl/TypeSerializerBase;-><init>(Lcom/flurry/org/codehaus/jackson/map/jsontype/TypeIdResolver;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)V

    .line 33
    iput-object p3, p0, Lcom/flurry/org/codehaus/jackson/map/jsontype/impl/AsExternalTypeSerializer;->_typePropertyName:Ljava/lang/String;

    .line 34
    return-void
.end method


# virtual methods
.method protected final _writePrefix(Ljava/lang/Object;Lcom/flurry/org/codehaus/jackson/JsonGenerator;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "jgen"    # Lcom/flurry/org/codehaus/jackson/JsonGenerator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 114
    invoke-virtual {p2}, Lcom/flurry/org/codehaus/jackson/JsonGenerator;->writeStartObject()V

    .line 115
    return-void
.end method

.method protected final _writePrefix(Ljava/lang/Object;Lcom/flurry/org/codehaus/jackson/JsonGenerator;Ljava/lang/Class;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "jgen"    # Lcom/flurry/org/codehaus/jackson/JsonGenerator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/flurry/org/codehaus/jackson/JsonGenerator;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 120
    .local p3, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p2}, Lcom/flurry/org/codehaus/jackson/JsonGenerator;->writeStartObject()V

    .line 121
    return-void
.end method

.method protected final _writeSuffix(Ljava/lang/Object;Lcom/flurry/org/codehaus/jackson/JsonGenerator;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "jgen"    # Lcom/flurry/org/codehaus/jackson/JsonGenerator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 126
    invoke-virtual {p2}, Lcom/flurry/org/codehaus/jackson/JsonGenerator;->writeEndObject()V

    .line 127
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/jsontype/impl/AsExternalTypeSerializer;->_typePropertyName:Ljava/lang/String;

    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/jsontype/impl/AsExternalTypeSerializer;->_idResolver:Lcom/flurry/org/codehaus/jackson/map/jsontype/TypeIdResolver;

    invoke-interface {v1, p1}, Lcom/flurry/org/codehaus/jackson/map/jsontype/TypeIdResolver;->idFromValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/flurry/org/codehaus/jackson/JsonGenerator;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    return-void
.end method

.method public getPropertyName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/jsontype/impl/AsExternalTypeSerializer;->_typePropertyName:Ljava/lang/String;

    return-object v0
.end method

.method public getTypeInclusion()Lcom/flurry/org/codehaus/jackson/annotate/JsonTypeInfo$As;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/flurry/org/codehaus/jackson/annotate/JsonTypeInfo$As;->EXTERNAL_PROPERTY:Lcom/flurry/org/codehaus/jackson/annotate/JsonTypeInfo$As;

    return-object v0
.end method

.method public writeTypePrefixForArray(Ljava/lang/Object;Lcom/flurry/org/codehaus/jackson/JsonGenerator;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "jgen"    # Lcom/flurry/org/codehaus/jackson/JsonGenerator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 60
    invoke-virtual {p0, p1, p2}, Lcom/flurry/org/codehaus/jackson/map/jsontype/impl/AsExternalTypeSerializer;->_writePrefix(Ljava/lang/Object;Lcom/flurry/org/codehaus/jackson/JsonGenerator;)V

    .line 61
    return-void
.end method

.method public writeTypePrefixForArray(Ljava/lang/Object;Lcom/flurry/org/codehaus/jackson/JsonGenerator;Ljava/lang/Class;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "jgen"    # Lcom/flurry/org/codehaus/jackson/JsonGenerator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/flurry/org/codehaus/jackson/JsonGenerator;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 67
    .local p3, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0, p1, p2, p3}, Lcom/flurry/org/codehaus/jackson/map/jsontype/impl/AsExternalTypeSerializer;->_writePrefix(Ljava/lang/Object;Lcom/flurry/org/codehaus/jackson/JsonGenerator;Ljava/lang/Class;)V

    .line 68
    return-void
.end method

.method public writeTypePrefixForObject(Ljava/lang/Object;Lcom/flurry/org/codehaus/jackson/JsonGenerator;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "jgen"    # Lcom/flurry/org/codehaus/jackson/JsonGenerator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 46
    invoke-virtual {p0, p1, p2}, Lcom/flurry/org/codehaus/jackson/map/jsontype/impl/AsExternalTypeSerializer;->_writePrefix(Ljava/lang/Object;Lcom/flurry/org/codehaus/jackson/JsonGenerator;)V

    .line 47
    return-void
.end method

.method public writeTypePrefixForObject(Ljava/lang/Object;Lcom/flurry/org/codehaus/jackson/JsonGenerator;Ljava/lang/Class;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "jgen"    # Lcom/flurry/org/codehaus/jackson/JsonGenerator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/flurry/org/codehaus/jackson/JsonGenerator;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 53
    .local p3, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0, p1, p2, p3}, Lcom/flurry/org/codehaus/jackson/map/jsontype/impl/AsExternalTypeSerializer;->_writePrefix(Ljava/lang/Object;Lcom/flurry/org/codehaus/jackson/JsonGenerator;Ljava/lang/Class;)V

    .line 54
    return-void
.end method

.method public writeTypePrefixForScalar(Ljava/lang/Object;Lcom/flurry/org/codehaus/jackson/JsonGenerator;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "jgen"    # Lcom/flurry/org/codehaus/jackson/JsonGenerator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 74
    invoke-virtual {p0, p1, p2}, Lcom/flurry/org/codehaus/jackson/map/jsontype/impl/AsExternalTypeSerializer;->_writePrefix(Ljava/lang/Object;Lcom/flurry/org/codehaus/jackson/JsonGenerator;)V

    .line 75
    return-void
.end method

.method public writeTypePrefixForScalar(Ljava/lang/Object;Lcom/flurry/org/codehaus/jackson/JsonGenerator;Ljava/lang/Class;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "jgen"    # Lcom/flurry/org/codehaus/jackson/JsonGenerator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/flurry/org/codehaus/jackson/JsonGenerator;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 81
    .local p3, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0, p1, p2, p3}, Lcom/flurry/org/codehaus/jackson/map/jsontype/impl/AsExternalTypeSerializer;->_writePrefix(Ljava/lang/Object;Lcom/flurry/org/codehaus/jackson/JsonGenerator;Ljava/lang/Class;)V

    .line 82
    return-void
.end method

.method public writeTypeSuffixForArray(Ljava/lang/Object;Lcom/flurry/org/codehaus/jackson/JsonGenerator;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "jgen"    # Lcom/flurry/org/codehaus/jackson/JsonGenerator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 95
    invoke-virtual {p0, p1, p2}, Lcom/flurry/org/codehaus/jackson/map/jsontype/impl/AsExternalTypeSerializer;->_writeSuffix(Ljava/lang/Object;Lcom/flurry/org/codehaus/jackson/JsonGenerator;)V

    .line 96
    return-void
.end method

.method public writeTypeSuffixForObject(Ljava/lang/Object;Lcom/flurry/org/codehaus/jackson/JsonGenerator;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "jgen"    # Lcom/flurry/org/codehaus/jackson/JsonGenerator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 88
    invoke-virtual {p0, p1, p2}, Lcom/flurry/org/codehaus/jackson/map/jsontype/impl/AsExternalTypeSerializer;->_writeSuffix(Ljava/lang/Object;Lcom/flurry/org/codehaus/jackson/JsonGenerator;)V

    .line 89
    return-void
.end method

.method public writeTypeSuffixForScalar(Ljava/lang/Object;Lcom/flurry/org/codehaus/jackson/JsonGenerator;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "jgen"    # Lcom/flurry/org/codehaus/jackson/JsonGenerator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 102
    invoke-virtual {p0, p1, p2}, Lcom/flurry/org/codehaus/jackson/map/jsontype/impl/AsExternalTypeSerializer;->_writeSuffix(Ljava/lang/Object;Lcom/flurry/org/codehaus/jackson/JsonGenerator;)V

    .line 103
    return-void
.end method
