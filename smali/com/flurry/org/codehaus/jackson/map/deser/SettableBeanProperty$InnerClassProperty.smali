.class public final Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty$InnerClassProperty;
.super Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;
.source "SettableBeanProperty.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InnerClassProperty"
.end annotation


# instance fields
.field protected final _creator:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation
.end field

.field protected final _delegate:Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;


# direct methods
.method protected constructor <init>(Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty$InnerClassProperty;Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;)V
    .locals 1
    .param p1, "src"    # Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty$InnerClassProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty$InnerClassProperty;",
            "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 740
    .local p2, "deser":Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer<Ljava/lang/Object;>;"
    invoke-direct {p0, p1, p2}, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;-><init>(Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;)V

    .line 741
    iget-object v0, p1, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty$InnerClassProperty;->_delegate:Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;

    invoke-virtual {v0, p2}, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;->withValueDeserializer(Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;)Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty$InnerClassProperty;->_delegate:Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;

    .line 742
    iget-object v0, p1, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty$InnerClassProperty;->_creator:Ljava/lang/reflect/Constructor;

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty$InnerClassProperty;->_creator:Ljava/lang/reflect/Constructor;

    .line 743
    return-void
.end method

.method public constructor <init>(Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;Ljava/lang/reflect/Constructor;)V
    .locals 0
    .param p1, "delegate"    # Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;",
            "Ljava/lang/reflect/Constructor",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 733
    .local p2, "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    invoke-direct {p0, p1}, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;-><init>(Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;)V

    .line 734
    iput-object p1, p0, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty$InnerClassProperty;->_delegate:Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;

    .line 735
    iput-object p2, p0, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty$InnerClassProperty;->_creator:Ljava/lang/reflect/Constructor;

    .line 736
    return-void
.end method


# virtual methods
.method public deserializeAndSet(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;)V
    .locals 6
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
    .line 767
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getCurrentToken()Lcom/flurry/org/codehaus/jackson/JsonToken;

    move-result-object v1

    .line 769
    .local v1, "t":Lcom/flurry/org/codehaus/jackson/JsonToken;
    sget-object v3, Lcom/flurry/org/codehaus/jackson/JsonToken;->VALUE_NULL:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-ne v1, v3, :cond_1

    .line 770
    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty$InnerClassProperty;->_nullProvider:Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty$NullProvider;

    if-nez v3, :cond_0

    const/4 v2, 0x0

    .line 782
    :goto_0
    invoke-virtual {p0, p3, v2}, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty$InnerClassProperty;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 783
    return-void

    .line 770
    :cond_0
    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty$InnerClassProperty;->_nullProvider:Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty$NullProvider;

    invoke-virtual {v3, p2}, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty$NullProvider;->nullValue(Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    .line 771
    :cond_1
    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty$InnerClassProperty;->_valueTypeDeserializer:Lcom/flurry/org/codehaus/jackson/map/TypeDeserializer;

    if-eqz v3, :cond_2

    .line 772
    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty$InnerClassProperty;->_valueDeserializer:Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;

    iget-object v4, p0, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty$InnerClassProperty;->_valueTypeDeserializer:Lcom/flurry/org/codehaus/jackson/map/TypeDeserializer;

    invoke-virtual {v3, p1, p2, v4}, Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;->deserializeWithType(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;Lcom/flurry/org/codehaus/jackson/map/TypeDeserializer;)Ljava/lang/Object;

    move-result-object v2

    .local v2, "value":Ljava/lang/Object;
    goto :goto_0

    .line 775
    .end local v2    # "value":Ljava/lang/Object;
    :cond_2
    :try_start_0
    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty$InnerClassProperty;->_creator:Ljava/lang/reflect/Constructor;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p3, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 780
    :goto_1
    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty$InnerClassProperty;->_valueDeserializer:Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;

    invoke-virtual {v3, p1, p2, v2}, Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;->deserialize(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 776
    :catch_0
    move-exception v0

    .line 777
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to instantiate class "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty$InnerClassProperty;->_creator:Ljava/lang/reflect/Constructor;

    invoke-virtual {v4}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", problem: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/flurry/org/codehaus/jackson/map/util/ClassUtil;->unwrapAndThrowAsIAE(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 778
    const/4 v2, 0x0

    .restart local v2    # "value":Ljava/lang/Object;
    goto :goto_1
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
    .line 754
    .local p1, "acls":Ljava/lang/Class;, "Ljava/lang/Class<TA;>;"
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty$InnerClassProperty;->_delegate:Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;

    invoke-virtual {v0, p1}, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method public getMember()Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;
    .locals 1

    .prologue
    .line 757
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty$InnerClassProperty;->_delegate:Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;

    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;->getMember()Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;

    move-result-object v0

    return-object v0
.end method

.method public final set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .param p1, "instance"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 788
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty$InnerClassProperty;->_delegate:Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;

    invoke-virtual {v0, p1, p2}, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 789
    return-void
.end method

.method public withValueDeserializer(Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;)Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty$InnerClassProperty;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty$InnerClassProperty;"
        }
    .end annotation

    .prologue
    .line 747
    .local p1, "deser":Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer<Ljava/lang/Object;>;"
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty$InnerClassProperty;

    invoke-direct {v0, p0, p1}, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty$InnerClassProperty;-><init>(Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty$InnerClassProperty;Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;)V

    return-object v0
.end method

.method public bridge synthetic withValueDeserializer(Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;)Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;
    .locals 1
    .param p1, "x0"    # Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;

    .prologue
    .line 717
    invoke-virtual {p0, p1}, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty$InnerClassProperty;->withValueDeserializer(Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;)Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty$InnerClassProperty;

    move-result-object v0

    return-object v0
.end method
