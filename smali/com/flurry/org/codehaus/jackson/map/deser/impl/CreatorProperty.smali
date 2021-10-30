.class public Lcom/flurry/org/codehaus/jackson/map/deser/impl/CreatorProperty;
.super Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;
.source "CreatorProperty.java"


# instance fields
.field protected final _annotated:Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedParameter;

.field protected final _injectableValueId:Ljava/lang/Object;


# direct methods
.method protected constructor <init>(Lcom/flurry/org/codehaus/jackson/map/deser/impl/CreatorProperty;Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;)V
    .locals 1
    .param p1, "src"    # Lcom/flurry/org/codehaus/jackson/map/deser/impl/CreatorProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/deser/impl/CreatorProperty;",
            "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 72
    .local p2, "deser":Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer<Ljava/lang/Object;>;"
    invoke-direct {p0, p1, p2}, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;-><init>(Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;)V

    .line 73
    iget-object v0, p1, Lcom/flurry/org/codehaus/jackson/map/deser/impl/CreatorProperty;->_annotated:Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedParameter;

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/impl/CreatorProperty;->_annotated:Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedParameter;

    .line 74
    iget-object v0, p1, Lcom/flurry/org/codehaus/jackson/map/deser/impl/CreatorProperty;->_injectableValueId:Ljava/lang/Object;

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/impl/CreatorProperty;->_injectableValueId:Ljava/lang/Object;

    .line 75
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/TypeDeserializer;Lcom/flurry/org/codehaus/jackson/map/util/Annotations;Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedParameter;ILjava/lang/Object;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .param p3, "typeDeser"    # Lcom/flurry/org/codehaus/jackson/map/TypeDeserializer;
    .param p4, "contextAnnotations"    # Lcom/flurry/org/codehaus/jackson/map/util/Annotations;
    .param p5, "param"    # Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedParameter;
    .param p6, "index"    # I
    .param p7, "injectableValueId"    # Ljava/lang/Object;

    .prologue
    .line 65
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;-><init>(Ljava/lang/String;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/TypeDeserializer;Lcom/flurry/org/codehaus/jackson/map/util/Annotations;)V

    .line 66
    iput-object p5, p0, Lcom/flurry/org/codehaus/jackson/map/deser/impl/CreatorProperty;->_annotated:Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedParameter;

    .line 67
    iput p6, p0, Lcom/flurry/org/codehaus/jackson/map/deser/impl/CreatorProperty;->_propertyIndex:I

    .line 68
    iput-object p7, p0, Lcom/flurry/org/codehaus/jackson/map/deser/impl/CreatorProperty;->_injectableValueId:Ljava/lang/Object;

    .line 69
    return-void
.end method


# virtual methods
.method public deserializeAndSet(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;)V
    .locals 1
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
    .line 135
    invoke-virtual {p0, p1, p2}, Lcom/flurry/org/codehaus/jackson/map/deser/impl/CreatorProperty;->deserialize(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p3, v0}, Lcom/flurry/org/codehaus/jackson/map/deser/impl/CreatorProperty;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 136
    return-void
.end method

.method public findInjectableValue(Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "context"    # Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;
    .param p2, "beanInstance"    # Ljava/lang/Object;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/impl/CreatorProperty;->_injectableValueId:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 91
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Property \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/map/deser/impl/CreatorProperty;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' (type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") has no injectable value id configured"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/impl/CreatorProperty;->_injectableValueId:Ljava/lang/Object;

    invoke-virtual {p1, v0, p0, p2}, Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;->findInjectableValue(Ljava/lang/Object;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
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
    .line 116
    .local p1, "acls":Ljava/lang/Class;, "Ljava/lang/Class<TA;>;"
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/impl/CreatorProperty;->_annotated:Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedParameter;

    if-nez v0, :cond_0

    .line 117
    const/4 v0, 0x0

    .line 119
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/impl/CreatorProperty;->_annotated:Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedParameter;

    invoke-virtual {v0, p1}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedParameter;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    goto :goto_0
.end method

.method public getInjectableValueId()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/impl/CreatorProperty;->_injectableValueId:Ljava/lang/Object;

    return-object v0
.end method

.method public getMember()Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/impl/CreatorProperty;->_annotated:Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedParameter;

    return-object v0
.end method

.method public inject(Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;)V
    .locals 1
    .param p1, "context"    # Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;
    .param p2, "beanInstance"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 105
    invoke-virtual {p0, p1, p2}, Lcom/flurry/org/codehaus/jackson/map/deser/impl/CreatorProperty;->findInjectableValue(Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lcom/flurry/org/codehaus/jackson/map/deser/impl/CreatorProperty;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 106
    return-void
.end method

.method public set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "instance"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 146
    return-void
.end method

.method public bridge synthetic withValueDeserializer(Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;)Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;
    .locals 1
    .param p1, "x0"    # Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;

    .prologue
    .line 32
    invoke-virtual {p0, p1}, Lcom/flurry/org/codehaus/jackson/map/deser/impl/CreatorProperty;->withValueDeserializer(Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;)Lcom/flurry/org/codehaus/jackson/map/deser/impl/CreatorProperty;

    move-result-object v0

    return-object v0
.end method

.method public withValueDeserializer(Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;)Lcom/flurry/org/codehaus/jackson/map/deser/impl/CreatorProperty;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/flurry/org/codehaus/jackson/map/deser/impl/CreatorProperty;"
        }
    .end annotation

    .prologue
    .line 79
    .local p1, "deser":Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer<Ljava/lang/Object;>;"
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/deser/impl/CreatorProperty;

    invoke-direct {v0, p0, p1}, Lcom/flurry/org/codehaus/jackson/map/deser/impl/CreatorProperty;-><init>(Lcom/flurry/org/codehaus/jackson/map/deser/impl/CreatorProperty;Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;)V

    return-object v0
.end method
