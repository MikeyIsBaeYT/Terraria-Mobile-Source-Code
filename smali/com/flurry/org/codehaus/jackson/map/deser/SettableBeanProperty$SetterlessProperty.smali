.class public final Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty$SetterlessProperty;
.super Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;
.source "SettableBeanProperty.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SetterlessProperty"
.end annotation


# instance fields
.field protected final _annotated:Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;

.field protected final _getter:Ljava/lang/reflect/Method;


# direct methods
.method protected constructor <init>(Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty$SetterlessProperty;Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;)V
    .locals 1
    .param p1, "src"    # Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty$SetterlessProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty$SetterlessProperty;",
            "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 453
    .local p2, "deser":Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer<Ljava/lang/Object;>;"
    invoke-direct {p0, p1, p2}, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;-><init>(Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;)V

    .line 454
    iget-object v0, p1, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty$SetterlessProperty;->_annotated:Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty$SetterlessProperty;->_annotated:Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;

    .line 455
    iget-object v0, p1, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty$SetterlessProperty;->_getter:Ljava/lang/reflect/Method;

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty$SetterlessProperty;->_getter:Ljava/lang/reflect/Method;

    .line 456
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/TypeDeserializer;Lcom/flurry/org/codehaus/jackson/map/util/Annotations;Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .param p3, "typeDeser"    # Lcom/flurry/org/codehaus/jackson/map/TypeDeserializer;
    .param p4, "contextAnnotations"    # Lcom/flurry/org/codehaus/jackson/map/util/Annotations;
    .param p5, "method"    # Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;

    .prologue
    .line 447
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;-><init>(Ljava/lang/String;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/TypeDeserializer;Lcom/flurry/org/codehaus/jackson/map/util/Annotations;)V

    .line 448
    iput-object p5, p0, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty$SetterlessProperty;->_annotated:Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;

    .line 449
    invoke-virtual {p5}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;->getAnnotated()Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty$SetterlessProperty;->_getter:Ljava/lang/reflect/Method;

    .line 450
    return-void
.end method


# virtual methods
.method public final deserializeAndSet(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;)V
    .locals 6
    .param p1, "jp"    # Lcom/flurry/org/codehaus/jackson/JsonParser;
    .param p2, "ctxt"    # Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;
    .param p3, "instance"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 487
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getCurrentToken()Lcom/flurry/org/codehaus/jackson/JsonToken;

    move-result-object v1

    .line 488
    .local v1, "t":Lcom/flurry/org/codehaus/jackson/JsonToken;
    sget-object v3, Lcom/flurry/org/codehaus/jackson/JsonToken;->VALUE_NULL:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-ne v1, v3, :cond_0

    .line 512
    :goto_0
    return-void

    .line 498
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty$SetterlessProperty;->_getter:Ljava/lang/reflect/Method;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v3, p3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 508
    .local v2, "toModify":Ljava/lang/Object;
    if-nez v2, :cond_1

    .line 509
    new-instance v3, Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Problem deserializing \'setterless\' property \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty$SetterlessProperty;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\': get method returned null"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 499
    .end local v2    # "toModify":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 500
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty$SetterlessProperty;->_throwAsIOE(Ljava/lang/Exception;)Ljava/io/IOException;

    goto :goto_0

    .line 511
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "toModify":Ljava/lang/Object;
    :cond_1
    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty$SetterlessProperty;->_valueDeserializer:Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;

    invoke-virtual {v3, p1, p2, v2}, Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;->deserialize(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class",
            "<TA;>;)TA;"
        }
    .end annotation

    .prologue
    .line 471
    .local p1, "acls":Ljava/lang/Class;, "Ljava/lang/Class<TA;>;"
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty$SetterlessProperty;->_annotated:Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;

    invoke-virtual {v0, p1}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method public getMember()Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;
    .locals 1

    .prologue
    .line 474
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty$SetterlessProperty;->_annotated:Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;

    return-object v0
.end method

.method public final set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p1, "instance"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 518
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Should never call \'set\' on setterless property"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public withValueDeserializer(Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;)Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty$SetterlessProperty;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty$SetterlessProperty;"
        }
    .end annotation

    .prologue
    .line 460
    .local p1, "deser":Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer<Ljava/lang/Object;>;"
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty$SetterlessProperty;

    invoke-direct {v0, p0, p1}, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty$SetterlessProperty;-><init>(Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty$SetterlessProperty;Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;)V

    return-object v0
.end method

.method public bridge synthetic withValueDeserializer(Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;)Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;
    .locals 1
    .param p1, "x0"    # Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;

    .prologue
    .line 433
    invoke-virtual {p0, p1}, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty$SetterlessProperty;->withValueDeserializer(Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;)Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty$SetterlessProperty;

    move-result-object v0

    return-object v0
.end method
