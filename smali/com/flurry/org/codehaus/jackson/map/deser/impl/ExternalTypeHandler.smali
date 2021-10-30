.class public Lcom/flurry/org/codehaus/jackson/map/deser/impl/ExternalTypeHandler;
.super Ljava/lang/Object;
.source "ExternalTypeHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/org/codehaus/jackson/map/deser/impl/ExternalTypeHandler$ExtTypedProperty;,
        Lcom/flurry/org/codehaus/jackson/map/deser/impl/ExternalTypeHandler$Builder;
    }
.end annotation


# instance fields
.field private final _nameToPropertyIndex:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final _properties:[Lcom/flurry/org/codehaus/jackson/map/deser/impl/ExternalTypeHandler$ExtTypedProperty;

.field private final _tokens:[Lcom/flurry/org/codehaus/jackson/util/TokenBuffer;

.field private final _typeIds:[Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lcom/flurry/org/codehaus/jackson/map/deser/impl/ExternalTypeHandler;)V
    .locals 2
    .param p1, "h"    # Lcom/flurry/org/codehaus/jackson/map/deser/impl/ExternalTypeHandler;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iget-object v1, p1, Lcom/flurry/org/codehaus/jackson/map/deser/impl/ExternalTypeHandler;->_properties:[Lcom/flurry/org/codehaus/jackson/map/deser/impl/ExternalTypeHandler$ExtTypedProperty;

    iput-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/deser/impl/ExternalTypeHandler;->_properties:[Lcom/flurry/org/codehaus/jackson/map/deser/impl/ExternalTypeHandler$ExtTypedProperty;

    .line 42
    iget-object v1, p1, Lcom/flurry/org/codehaus/jackson/map/deser/impl/ExternalTypeHandler;->_nameToPropertyIndex:Ljava/util/HashMap;

    iput-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/deser/impl/ExternalTypeHandler;->_nameToPropertyIndex:Ljava/util/HashMap;

    .line 43
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/deser/impl/ExternalTypeHandler;->_properties:[Lcom/flurry/org/codehaus/jackson/map/deser/impl/ExternalTypeHandler$ExtTypedProperty;

    array-length v0, v1

    .line 44
    .local v0, "len":I
    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/deser/impl/ExternalTypeHandler;->_typeIds:[Ljava/lang/String;

    .line 45
    new-array v1, v0, [Lcom/flurry/org/codehaus/jackson/util/TokenBuffer;

    iput-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/deser/impl/ExternalTypeHandler;->_tokens:[Lcom/flurry/org/codehaus/jackson/util/TokenBuffer;

    .line 46
    return-void
.end method

.method protected constructor <init>([Lcom/flurry/org/codehaus/jackson/map/deser/impl/ExternalTypeHandler$ExtTypedProperty;Ljava/util/HashMap;[Ljava/lang/String;[Lcom/flurry/org/codehaus/jackson/util/TokenBuffer;)V
    .locals 0
    .param p1, "properties"    # [Lcom/flurry/org/codehaus/jackson/map/deser/impl/ExternalTypeHandler$ExtTypedProperty;
    .param p3, "typeIds"    # [Ljava/lang/String;
    .param p4, "tokens"    # [Lcom/flurry/org/codehaus/jackson/util/TokenBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/flurry/org/codehaus/jackson/map/deser/impl/ExternalTypeHandler$ExtTypedProperty;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;[",
            "Ljava/lang/String;",
            "[",
            "Lcom/flurry/org/codehaus/jackson/util/TokenBuffer;",
            ")V"
        }
    .end annotation

    .prologue
    .line 32
    .local p2, "nameToPropertyIndex":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/flurry/org/codehaus/jackson/map/deser/impl/ExternalTypeHandler;->_properties:[Lcom/flurry/org/codehaus/jackson/map/deser/impl/ExternalTypeHandler$ExtTypedProperty;

    .line 34
    iput-object p2, p0, Lcom/flurry/org/codehaus/jackson/map/deser/impl/ExternalTypeHandler;->_nameToPropertyIndex:Ljava/util/HashMap;

    .line 35
    iput-object p3, p0, Lcom/flurry/org/codehaus/jackson/map/deser/impl/ExternalTypeHandler;->_typeIds:[Ljava/lang/String;

    .line 36
    iput-object p4, p0, Lcom/flurry/org/codehaus/jackson/map/deser/impl/ExternalTypeHandler;->_tokens:[Lcom/flurry/org/codehaus/jackson/util/TokenBuffer;

    .line 37
    return-void
.end method


# virtual methods
.method protected final _deserialize(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;I)V
    .locals 3
    .param p1, "jp"    # Lcom/flurry/org/codehaus/jackson/JsonParser;
    .param p2, "ctxt"    # Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;
    .param p3, "bean"    # Ljava/lang/Object;
    .param p4, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 114
    new-instance v0, Lcom/flurry/org/codehaus/jackson/util/TokenBuffer;

    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getCodec()Lcom/flurry/org/codehaus/jackson/ObjectCodec;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/flurry/org/codehaus/jackson/util/TokenBuffer;-><init>(Lcom/flurry/org/codehaus/jackson/ObjectCodec;)V

    .line 115
    .local v0, "merged":Lcom/flurry/org/codehaus/jackson/util/TokenBuffer;
    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/util/TokenBuffer;->writeStartArray()V

    .line 116
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/deser/impl/ExternalTypeHandler;->_typeIds:[Ljava/lang/String;

    aget-object v2, v2, p4

    invoke-virtual {v0, v2}, Lcom/flurry/org/codehaus/jackson/util/TokenBuffer;->writeString(Ljava/lang/String;)V

    .line 117
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/deser/impl/ExternalTypeHandler;->_tokens:[Lcom/flurry/org/codehaus/jackson/util/TokenBuffer;

    aget-object v2, v2, p4

    invoke-virtual {v2, p1}, Lcom/flurry/org/codehaus/jackson/util/TokenBuffer;->asParser(Lcom/flurry/org/codehaus/jackson/JsonParser;)Lcom/flurry/org/codehaus/jackson/JsonParser;

    move-result-object v1

    .line 118
    .local v1, "p2":Lcom/flurry/org/codehaus/jackson/JsonParser;
    invoke-virtual {v1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->nextToken()Lcom/flurry/org/codehaus/jackson/JsonToken;

    .line 119
    invoke-virtual {v0, v1}, Lcom/flurry/org/codehaus/jackson/util/TokenBuffer;->copyCurrentStructure(Lcom/flurry/org/codehaus/jackson/JsonParser;)V

    .line 120
    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/util/TokenBuffer;->writeEndArray()V

    .line 122
    invoke-virtual {v0, p1}, Lcom/flurry/org/codehaus/jackson/util/TokenBuffer;->asParser(Lcom/flurry/org/codehaus/jackson/JsonParser;)Lcom/flurry/org/codehaus/jackson/JsonParser;

    move-result-object v1

    .line 123
    invoke-virtual {v1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->nextToken()Lcom/flurry/org/codehaus/jackson/JsonToken;

    .line 124
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/deser/impl/ExternalTypeHandler;->_properties:[Lcom/flurry/org/codehaus/jackson/map/deser/impl/ExternalTypeHandler$ExtTypedProperty;

    aget-object v2, v2, p4

    invoke-virtual {v2}, Lcom/flurry/org/codehaus/jackson/map/deser/impl/ExternalTypeHandler$ExtTypedProperty;->getProperty()Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;

    move-result-object v2

    invoke-virtual {v2, v1, p2, p3}, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;->deserializeAndSet(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;)V

    .line 125
    return-void
.end method

.method public complete(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p1, "jp"    # Lcom/flurry/org/codehaus/jackson/JsonParser;
    .param p2, "ctxt"    # Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;
    .param p3, "bean"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 91
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/map/deser/impl/ExternalTypeHandler;->_properties:[Lcom/flurry/org/codehaus/jackson/map/deser/impl/ExternalTypeHandler$ExtTypedProperty;

    array-length v1, v3

    .local v1, "len":I
    :goto_0
    if-ge v0, v1, :cond_3

    .line 92
    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/map/deser/impl/ExternalTypeHandler;->_typeIds:[Ljava/lang/String;

    aget-object v3, v3, v0

    if-nez v3, :cond_1

    .line 94
    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/map/deser/impl/ExternalTypeHandler;->_tokens:[Lcom/flurry/org/codehaus/jackson/util/TokenBuffer;

    aget-object v3, v3, v0

    if-nez v3, :cond_0

    .line 91
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 98
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Missing external type id property \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/flurry/org/codehaus/jackson/map/deser/impl/ExternalTypeHandler;->_properties:[Lcom/flurry/org/codehaus/jackson/map/deser/impl/ExternalTypeHandler$ExtTypedProperty;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lcom/flurry/org/codehaus/jackson/map/deser/impl/ExternalTypeHandler$ExtTypedProperty;->getTypePropertyName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;->mappingException(Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;

    move-result-object v3

    throw v3

    .line 99
    :cond_1
    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/map/deser/impl/ExternalTypeHandler;->_tokens:[Lcom/flurry/org/codehaus/jackson/util/TokenBuffer;

    aget-object v3, v3, v0

    if-nez v3, :cond_2

    .line 100
    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/map/deser/impl/ExternalTypeHandler;->_properties:[Lcom/flurry/org/codehaus/jackson/map/deser/impl/ExternalTypeHandler$ExtTypedProperty;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/flurry/org/codehaus/jackson/map/deser/impl/ExternalTypeHandler$ExtTypedProperty;->getProperty()Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;

    move-result-object v2

    .line 101
    .local v2, "prop":Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Missing property \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' for external type id \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/flurry/org/codehaus/jackson/map/deser/impl/ExternalTypeHandler;->_properties:[Lcom/flurry/org/codehaus/jackson/map/deser/impl/ExternalTypeHandler$ExtTypedProperty;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lcom/flurry/org/codehaus/jackson/map/deser/impl/ExternalTypeHandler$ExtTypedProperty;->getTypePropertyName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;->mappingException(Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;

    move-result-object v3

    throw v3

    .line 103
    .end local v2    # "prop":Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;
    :cond_2
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/flurry/org/codehaus/jackson/map/deser/impl/ExternalTypeHandler;->_deserialize(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;I)V

    goto :goto_1

    .line 105
    :cond_3
    return-object p3
.end method

.method public handleToken(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 9
    .param p1, "jp"    # Lcom/flurry/org/codehaus/jackson/JsonParser;
    .param p2, "ctxt"    # Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;
    .param p3, "propName"    # Ljava/lang/String;
    .param p4, "bean"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 59
    iget-object v6, p0, Lcom/flurry/org/codehaus/jackson/map/deser/impl/ExternalTypeHandler;->_nameToPropertyIndex:Ljava/util/HashMap;

    invoke-virtual {v6, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 60
    .local v0, "I":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 85
    :goto_0
    return v1

    .line 63
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 64
    .local v2, "index":I
    iget-object v6, p0, Lcom/flurry/org/codehaus/jackson/map/deser/impl/ExternalTypeHandler;->_properties:[Lcom/flurry/org/codehaus/jackson/map/deser/impl/ExternalTypeHandler$ExtTypedProperty;

    aget-object v3, v6, v2

    .line 66
    .local v3, "prop":Lcom/flurry/org/codehaus/jackson/map/deser/impl/ExternalTypeHandler$ExtTypedProperty;
    invoke-virtual {v3, p3}, Lcom/flurry/org/codehaus/jackson/map/deser/impl/ExternalTypeHandler$ExtTypedProperty;->hasTypePropertyName(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 67
    iget-object v6, p0, Lcom/flurry/org/codehaus/jackson/map/deser/impl/ExternalTypeHandler;->_typeIds:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    .line 68
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->skipChildren()Lcom/flurry/org/codehaus/jackson/JsonParser;

    .line 69
    if-eqz p4, :cond_1

    iget-object v6, p0, Lcom/flurry/org/codehaus/jackson/map/deser/impl/ExternalTypeHandler;->_tokens:[Lcom/flurry/org/codehaus/jackson/util/TokenBuffer;

    aget-object v6, v6, v2

    if-eqz v6, :cond_1

    move v1, v5

    .line 79
    .local v1, "canDeserialize":Z
    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    .line 80
    invoke-virtual {p0, p1, p2, p4, v2}, Lcom/flurry/org/codehaus/jackson/map/deser/impl/ExternalTypeHandler;->_deserialize(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;I)V

    .line 82
    iget-object v6, p0, Lcom/flurry/org/codehaus/jackson/map/deser/impl/ExternalTypeHandler;->_typeIds:[Ljava/lang/String;

    aput-object v8, v6, v2

    .line 83
    iget-object v6, p0, Lcom/flurry/org/codehaus/jackson/map/deser/impl/ExternalTypeHandler;->_tokens:[Lcom/flurry/org/codehaus/jackson/util/TokenBuffer;

    aput-object v8, v6, v2

    :cond_2
    move v1, v5

    .line 85
    goto :goto_0

    .line 71
    .end local v1    # "canDeserialize":Z
    :cond_3
    new-instance v4, Lcom/flurry/org/codehaus/jackson/util/TokenBuffer;

    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getCodec()Lcom/flurry/org/codehaus/jackson/ObjectCodec;

    move-result-object v6

    invoke-direct {v4, v6}, Lcom/flurry/org/codehaus/jackson/util/TokenBuffer;-><init>(Lcom/flurry/org/codehaus/jackson/ObjectCodec;)V

    .line 72
    .local v4, "tokens":Lcom/flurry/org/codehaus/jackson/util/TokenBuffer;
    invoke-virtual {v4, p1}, Lcom/flurry/org/codehaus/jackson/util/TokenBuffer;->copyCurrentStructure(Lcom/flurry/org/codehaus/jackson/JsonParser;)V

    .line 73
    iget-object v6, p0, Lcom/flurry/org/codehaus/jackson/map/deser/impl/ExternalTypeHandler;->_tokens:[Lcom/flurry/org/codehaus/jackson/util/TokenBuffer;

    aput-object v4, v6, v2

    .line 74
    if-eqz p4, :cond_4

    iget-object v6, p0, Lcom/flurry/org/codehaus/jackson/map/deser/impl/ExternalTypeHandler;->_typeIds:[Ljava/lang/String;

    aget-object v6, v6, v2

    if-eqz v6, :cond_4

    move v1, v5

    .restart local v1    # "canDeserialize":Z
    :cond_4
    goto :goto_1
.end method

.method public start()Lcom/flurry/org/codehaus/jackson/map/deser/impl/ExternalTypeHandler;
    .locals 1

    .prologue
    .line 49
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/deser/impl/ExternalTypeHandler;

    invoke-direct {v0, p0}, Lcom/flurry/org/codehaus/jackson/map/deser/impl/ExternalTypeHandler;-><init>(Lcom/flurry/org/codehaus/jackson/map/deser/impl/ExternalTypeHandler;)V

    return-object v0
.end method
