.class public abstract Lcom/flurry/org/codehaus/jackson/map/deser/std/FromStringDeserializer;
.super Lcom/flurry/org/codehaus/jackson/map/deser/std/StdScalarDeserializer;
.source "FromStringDeserializer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/org/codehaus/jackson/map/deser/std/FromStringDeserializer$TimeZoneDeserializer;,
        Lcom/flurry/org/codehaus/jackson/map/deser/std/FromStringDeserializer$CharsetDeserializer;,
        Lcom/flurry/org/codehaus/jackson/map/deser/std/FromStringDeserializer$InetAddressDeserializer;,
        Lcom/flurry/org/codehaus/jackson/map/deser/std/FromStringDeserializer$LocaleDeserializer;,
        Lcom/flurry/org/codehaus/jackson/map/deser/std/FromStringDeserializer$PatternDeserializer;,
        Lcom/flurry/org/codehaus/jackson/map/deser/std/FromStringDeserializer$CurrencyDeserializer;,
        Lcom/flurry/org/codehaus/jackson/map/deser/std/FromStringDeserializer$URIDeserializer;,
        Lcom/flurry/org/codehaus/jackson/map/deser/std/FromStringDeserializer$URLDeserializer;,
        Lcom/flurry/org/codehaus/jackson/map/deser/std/FromStringDeserializer$UUIDDeserializer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/flurry/org/codehaus/jackson/map/deser/std/StdScalarDeserializer",
        "<TT;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 26
    .local p0, "this":Lcom/flurry/org/codehaus/jackson/map/deser/std/FromStringDeserializer;, "Lcom/flurry/org/codehaus/jackson/map/deser/std/FromStringDeserializer<TT;>;"
    .local p1, "vc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, p1}, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdScalarDeserializer;-><init>(Ljava/lang/Class;)V

    .line 27
    return-void
.end method

.method public static all()Ljava/lang/Iterable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/flurry/org/codehaus/jackson/map/deser/std/FromStringDeserializer",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 33
    .local v0, "all":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/flurry/org/codehaus/jackson/map/deser/std/FromStringDeserializer<*>;>;"
    new-instance v1, Lcom/flurry/org/codehaus/jackson/map/deser/std/FromStringDeserializer$UUIDDeserializer;

    invoke-direct {v1}, Lcom/flurry/org/codehaus/jackson/map/deser/std/FromStringDeserializer$UUIDDeserializer;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    new-instance v1, Lcom/flurry/org/codehaus/jackson/map/deser/std/FromStringDeserializer$URLDeserializer;

    invoke-direct {v1}, Lcom/flurry/org/codehaus/jackson/map/deser/std/FromStringDeserializer$URLDeserializer;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    new-instance v1, Lcom/flurry/org/codehaus/jackson/map/deser/std/FromStringDeserializer$URIDeserializer;

    invoke-direct {v1}, Lcom/flurry/org/codehaus/jackson/map/deser/std/FromStringDeserializer$URIDeserializer;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    new-instance v1, Lcom/flurry/org/codehaus/jackson/map/deser/std/FromStringDeserializer$CurrencyDeserializer;

    invoke-direct {v1}, Lcom/flurry/org/codehaus/jackson/map/deser/std/FromStringDeserializer$CurrencyDeserializer;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    new-instance v1, Lcom/flurry/org/codehaus/jackson/map/deser/std/FromStringDeserializer$PatternDeserializer;

    invoke-direct {v1}, Lcom/flurry/org/codehaus/jackson/map/deser/std/FromStringDeserializer$PatternDeserializer;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    new-instance v1, Lcom/flurry/org/codehaus/jackson/map/deser/std/FromStringDeserializer$LocaleDeserializer;

    invoke-direct {v1}, Lcom/flurry/org/codehaus/jackson/map/deser/std/FromStringDeserializer$LocaleDeserializer;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    new-instance v1, Lcom/flurry/org/codehaus/jackson/map/deser/std/FromStringDeserializer$InetAddressDeserializer;

    invoke-direct {v1}, Lcom/flurry/org/codehaus/jackson/map/deser/std/FromStringDeserializer$InetAddressDeserializer;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    new-instance v1, Lcom/flurry/org/codehaus/jackson/map/deser/std/FromStringDeserializer$TimeZoneDeserializer;

    invoke-direct {v1}, Lcom/flurry/org/codehaus/jackson/map/deser/std/FromStringDeserializer$TimeZoneDeserializer;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    new-instance v1, Lcom/flurry/org/codehaus/jackson/map/deser/std/FromStringDeserializer$CharsetDeserializer;

    invoke-direct {v1}, Lcom/flurry/org/codehaus/jackson/map/deser/std/FromStringDeserializer$CharsetDeserializer;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    return-object v0
.end method


# virtual methods
.method protected abstract _deserialize(Ljava/lang/String;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation
.end method

.method protected _deserializeEmbedded(Ljava/lang/Object;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;
    .locals 2
    .param p1, "ob"    # Ljava/lang/Object;
    .param p2, "ctxt"    # Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 91
    .local p0, "this":Lcom/flurry/org/codehaus/jackson/map/deser/std/FromStringDeserializer;, "Lcom/flurry/org/codehaus/jackson/map/deser/std/FromStringDeserializer<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Don\'t know how to convert embedded Object of type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " into "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/FromStringDeserializer;->_valueClass:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;->mappingException(Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;

    move-result-object v0

    throw v0
.end method

.method public final deserialize(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;
    .locals 5
    .param p1, "jp"    # Lcom/flurry/org/codehaus/jackson/JsonParser;
    .param p2, "ctxt"    # Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/JsonParser;",
            "Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/flurry/org/codehaus/jackson/map/deser/std/FromStringDeserializer;, "Lcom/flurry/org/codehaus/jackson/map/deser/std/FromStringDeserializer<TT;>;"
    const/4 v1, 0x0

    .line 54
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getCurrentToken()Lcom/flurry/org/codehaus/jackson/JsonToken;

    move-result-object v3

    sget-object v4, Lcom/flurry/org/codehaus/jackson/JsonToken;->VALUE_STRING:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-ne v3, v4, :cond_2

    .line 55
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 57
    .local v2, "text":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 79
    .end local v2    # "text":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    .line 61
    .restart local v2    # "text":Ljava/lang/String;
    :cond_1
    :try_start_0
    invoke-virtual {p0, v2, p2}, Lcom/flurry/org/codehaus/jackson/map/deser/std/FromStringDeserializer;->_deserialize(Ljava/lang/String;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 62
    .local v1, "result":Ljava/lang/Object;, "TT;"
    if-nez v1, :cond_0

    .line 68
    .end local v1    # "result":Ljava/lang/Object;, "TT;"
    :goto_1
    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/FromStringDeserializer;->_valueClass:Ljava/lang/Class;

    const-string v4, "not a valid textual representation"

    invoke-virtual {p2, v3, v4}, Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;->weirdStringException(Ljava/lang/Class;Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;

    move-result-object v3

    throw v3

    .line 70
    .end local v2    # "text":Ljava/lang/String;
    :cond_2
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getCurrentToken()Lcom/flurry/org/codehaus/jackson/JsonToken;

    move-result-object v3

    sget-object v4, Lcom/flurry/org/codehaus/jackson/JsonToken;->VALUE_EMBEDDED_OBJECT:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-ne v3, v4, :cond_4

    .line 72
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getEmbeddedObject()Ljava/lang/Object;

    move-result-object v0

    .line 73
    .local v0, "ob":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 76
    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/FromStringDeserializer;->_valueClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_3

    move-object v1, v0

    .line 77
    goto :goto_0

    .line 79
    :cond_3
    invoke-virtual {p0, v0, p2}, Lcom/flurry/org/codehaus/jackson/map/deser/std/FromStringDeserializer;->_deserializeEmbedded(Ljava/lang/Object;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 81
    .end local v0    # "ob":Ljava/lang/Object;
    :cond_4
    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/FromStringDeserializer;->_valueClass:Ljava/lang/Class;

    invoke-virtual {p2, v3}, Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;->mappingException(Ljava/lang/Class;)Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;

    move-result-object v3

    throw v3

    .line 65
    .restart local v2    # "text":Ljava/lang/String;
    :catch_0
    move-exception v3

    goto :goto_1
.end method
