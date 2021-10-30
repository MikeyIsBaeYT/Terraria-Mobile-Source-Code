.class Lcom/flurry/org/codehaus/jackson/map/ObjectMapper$1;
.super Ljava/lang/Object;
.source "ObjectMapper.java"

# interfaces
.implements Lcom/flurry/org/codehaus/jackson/map/Module$SetupContext;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/org/codehaus/jackson/map/ObjectMapper;->registerModule(Lcom/flurry/org/codehaus/jackson/map/Module;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flurry/org/codehaus/jackson/map/ObjectMapper;

.field final synthetic val$mapper:Lcom/flurry/org/codehaus/jackson/map/ObjectMapper;


# direct methods
.method constructor <init>(Lcom/flurry/org/codehaus/jackson/map/ObjectMapper;Lcom/flurry/org/codehaus/jackson/map/ObjectMapper;)V
    .locals 0

    .prologue
    .line 455
    iput-object p1, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectMapper$1;->this$0:Lcom/flurry/org/codehaus/jackson/map/ObjectMapper;

    iput-object p2, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectMapper$1;->val$mapper:Lcom/flurry/org/codehaus/jackson/map/ObjectMapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addAbstractTypeResolver(Lcom/flurry/org/codehaus/jackson/map/AbstractTypeResolver;)V
    .locals 2
    .param p1, "resolver"    # Lcom/flurry/org/codehaus/jackson/map/AbstractTypeResolver;

    .prologue
    .line 529
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectMapper$1;->val$mapper:Lcom/flurry/org/codehaus/jackson/map/ObjectMapper;

    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectMapper$1;->val$mapper:Lcom/flurry/org/codehaus/jackson/map/ObjectMapper;

    iget-object v1, v1, Lcom/flurry/org/codehaus/jackson/map/ObjectMapper;->_deserializerProvider:Lcom/flurry/org/codehaus/jackson/map/DeserializerProvider;

    invoke-virtual {v1, p1}, Lcom/flurry/org/codehaus/jackson/map/DeserializerProvider;->withAbstractTypeResolver(Lcom/flurry/org/codehaus/jackson/map/AbstractTypeResolver;)Lcom/flurry/org/codehaus/jackson/map/DeserializerProvider;

    move-result-object v1

    iput-object v1, v0, Lcom/flurry/org/codehaus/jackson/map/ObjectMapper;->_deserializerProvider:Lcom/flurry/org/codehaus/jackson/map/DeserializerProvider;

    .line 530
    return-void
.end method

.method public addBeanDeserializerModifier(Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerModifier;)V
    .locals 2
    .param p1, "modifier"    # Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerModifier;

    .prologue
    .line 522
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectMapper$1;->val$mapper:Lcom/flurry/org/codehaus/jackson/map/ObjectMapper;

    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectMapper$1;->val$mapper:Lcom/flurry/org/codehaus/jackson/map/ObjectMapper;

    iget-object v1, v1, Lcom/flurry/org/codehaus/jackson/map/ObjectMapper;->_deserializerProvider:Lcom/flurry/org/codehaus/jackson/map/DeserializerProvider;

    invoke-virtual {v1, p1}, Lcom/flurry/org/codehaus/jackson/map/DeserializerProvider;->withDeserializerModifier(Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerModifier;)Lcom/flurry/org/codehaus/jackson/map/DeserializerProvider;

    move-result-object v1

    iput-object v1, v0, Lcom/flurry/org/codehaus/jackson/map/ObjectMapper;->_deserializerProvider:Lcom/flurry/org/codehaus/jackson/map/DeserializerProvider;

    .line 523
    return-void
.end method

.method public addBeanSerializerModifier(Lcom/flurry/org/codehaus/jackson/map/ser/BeanSerializerModifier;)V
    .locals 2
    .param p1, "modifier"    # Lcom/flurry/org/codehaus/jackson/map/ser/BeanSerializerModifier;

    .prologue
    .line 517
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectMapper$1;->val$mapper:Lcom/flurry/org/codehaus/jackson/map/ObjectMapper;

    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectMapper$1;->val$mapper:Lcom/flurry/org/codehaus/jackson/map/ObjectMapper;

    iget-object v1, v1, Lcom/flurry/org/codehaus/jackson/map/ObjectMapper;->_serializerFactory:Lcom/flurry/org/codehaus/jackson/map/SerializerFactory;

    invoke-virtual {v1, p1}, Lcom/flurry/org/codehaus/jackson/map/SerializerFactory;->withSerializerModifier(Lcom/flurry/org/codehaus/jackson/map/ser/BeanSerializerModifier;)Lcom/flurry/org/codehaus/jackson/map/SerializerFactory;

    move-result-object v1

    iput-object v1, v0, Lcom/flurry/org/codehaus/jackson/map/ObjectMapper;->_serializerFactory:Lcom/flurry/org/codehaus/jackson/map/SerializerFactory;

    .line 518
    return-void
.end method

.method public addDeserializers(Lcom/flurry/org/codehaus/jackson/map/Deserializers;)V
    .locals 2
    .param p1, "d"    # Lcom/flurry/org/codehaus/jackson/map/Deserializers;

    .prologue
    .line 497
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectMapper$1;->val$mapper:Lcom/flurry/org/codehaus/jackson/map/ObjectMapper;

    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectMapper$1;->val$mapper:Lcom/flurry/org/codehaus/jackson/map/ObjectMapper;

    iget-object v1, v1, Lcom/flurry/org/codehaus/jackson/map/ObjectMapper;->_deserializerProvider:Lcom/flurry/org/codehaus/jackson/map/DeserializerProvider;

    invoke-virtual {v1, p1}, Lcom/flurry/org/codehaus/jackson/map/DeserializerProvider;->withAdditionalDeserializers(Lcom/flurry/org/codehaus/jackson/map/Deserializers;)Lcom/flurry/org/codehaus/jackson/map/DeserializerProvider;

    move-result-object v1

    iput-object v1, v0, Lcom/flurry/org/codehaus/jackson/map/ObjectMapper;->_deserializerProvider:Lcom/flurry/org/codehaus/jackson/map/DeserializerProvider;

    .line 498
    return-void
.end method

.method public addKeyDeserializers(Lcom/flurry/org/codehaus/jackson/map/KeyDeserializers;)V
    .locals 2
    .param p1, "d"    # Lcom/flurry/org/codehaus/jackson/map/KeyDeserializers;

    .prologue
    .line 502
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectMapper$1;->val$mapper:Lcom/flurry/org/codehaus/jackson/map/ObjectMapper;

    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectMapper$1;->val$mapper:Lcom/flurry/org/codehaus/jackson/map/ObjectMapper;

    iget-object v1, v1, Lcom/flurry/org/codehaus/jackson/map/ObjectMapper;->_deserializerProvider:Lcom/flurry/org/codehaus/jackson/map/DeserializerProvider;

    invoke-virtual {v1, p1}, Lcom/flurry/org/codehaus/jackson/map/DeserializerProvider;->withAdditionalKeyDeserializers(Lcom/flurry/org/codehaus/jackson/map/KeyDeserializers;)Lcom/flurry/org/codehaus/jackson/map/DeserializerProvider;

    move-result-object v1

    iput-object v1, v0, Lcom/flurry/org/codehaus/jackson/map/ObjectMapper;->_deserializerProvider:Lcom/flurry/org/codehaus/jackson/map/DeserializerProvider;

    .line 503
    return-void
.end method

.method public addKeySerializers(Lcom/flurry/org/codehaus/jackson/map/Serializers;)V
    .locals 2
    .param p1, "s"    # Lcom/flurry/org/codehaus/jackson/map/Serializers;

    .prologue
    .line 512
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectMapper$1;->val$mapper:Lcom/flurry/org/codehaus/jackson/map/ObjectMapper;

    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectMapper$1;->val$mapper:Lcom/flurry/org/codehaus/jackson/map/ObjectMapper;

    iget-object v1, v1, Lcom/flurry/org/codehaus/jackson/map/ObjectMapper;->_serializerFactory:Lcom/flurry/org/codehaus/jackson/map/SerializerFactory;

    invoke-virtual {v1, p1}, Lcom/flurry/org/codehaus/jackson/map/SerializerFactory;->withAdditionalKeySerializers(Lcom/flurry/org/codehaus/jackson/map/Serializers;)Lcom/flurry/org/codehaus/jackson/map/SerializerFactory;

    move-result-object v1

    iput-object v1, v0, Lcom/flurry/org/codehaus/jackson/map/ObjectMapper;->_serializerFactory:Lcom/flurry/org/codehaus/jackson/map/SerializerFactory;

    .line 513
    return-void
.end method

.method public addSerializers(Lcom/flurry/org/codehaus/jackson/map/Serializers;)V
    .locals 2
    .param p1, "s"    # Lcom/flurry/org/codehaus/jackson/map/Serializers;

    .prologue
    .line 507
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectMapper$1;->val$mapper:Lcom/flurry/org/codehaus/jackson/map/ObjectMapper;

    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectMapper$1;->val$mapper:Lcom/flurry/org/codehaus/jackson/map/ObjectMapper;

    iget-object v1, v1, Lcom/flurry/org/codehaus/jackson/map/ObjectMapper;->_serializerFactory:Lcom/flurry/org/codehaus/jackson/map/SerializerFactory;

    invoke-virtual {v1, p1}, Lcom/flurry/org/codehaus/jackson/map/SerializerFactory;->withAdditionalSerializers(Lcom/flurry/org/codehaus/jackson/map/Serializers;)Lcom/flurry/org/codehaus/jackson/map/SerializerFactory;

    move-result-object v1

    iput-object v1, v0, Lcom/flurry/org/codehaus/jackson/map/ObjectMapper;->_serializerFactory:Lcom/flurry/org/codehaus/jackson/map/SerializerFactory;

    .line 508
    return-void
.end method

.method public addTypeModifier(Lcom/flurry/org/codehaus/jackson/map/type/TypeModifier;)V
    .locals 2
    .param p1, "modifier"    # Lcom/flurry/org/codehaus/jackson/map/type/TypeModifier;

    .prologue
    .line 534
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectMapper$1;->val$mapper:Lcom/flurry/org/codehaus/jackson/map/ObjectMapper;

    iget-object v0, v1, Lcom/flurry/org/codehaus/jackson/map/ObjectMapper;->_typeFactory:Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;

    .line 535
    .local v0, "f":Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;
    invoke-virtual {v0, p1}, Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;->withModifier(Lcom/flurry/org/codehaus/jackson/map/type/TypeModifier;)Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;

    move-result-object v0

    .line 536
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectMapper$1;->val$mapper:Lcom/flurry/org/codehaus/jackson/map/ObjectMapper;

    invoke-virtual {v1, v0}, Lcom/flurry/org/codehaus/jackson/map/ObjectMapper;->setTypeFactory(Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;)Lcom/flurry/org/codehaus/jackson/map/ObjectMapper;

    .line 537
    return-void
.end method

.method public addValueInstantiators(Lcom/flurry/org/codehaus/jackson/map/deser/ValueInstantiators;)V
    .locals 2
    .param p1, "instantiators"    # Lcom/flurry/org/codehaus/jackson/map/deser/ValueInstantiators;

    .prologue
    .line 541
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectMapper$1;->val$mapper:Lcom/flurry/org/codehaus/jackson/map/ObjectMapper;

    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectMapper$1;->val$mapper:Lcom/flurry/org/codehaus/jackson/map/ObjectMapper;

    iget-object v1, v1, Lcom/flurry/org/codehaus/jackson/map/ObjectMapper;->_deserializerProvider:Lcom/flurry/org/codehaus/jackson/map/DeserializerProvider;

    invoke-virtual {v1, p1}, Lcom/flurry/org/codehaus/jackson/map/DeserializerProvider;->withValueInstantiators(Lcom/flurry/org/codehaus/jackson/map/deser/ValueInstantiators;)Lcom/flurry/org/codehaus/jackson/map/DeserializerProvider;

    move-result-object v1

    iput-object v1, v0, Lcom/flurry/org/codehaus/jackson/map/ObjectMapper;->_deserializerProvider:Lcom/flurry/org/codehaus/jackson/map/DeserializerProvider;

    .line 542
    return-void
.end method

.method public appendAnnotationIntrospector(Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;)V
    .locals 2
    .param p1, "ai"    # Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    .prologue
    .line 552
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectMapper$1;->val$mapper:Lcom/flurry/org/codehaus/jackson/map/ObjectMapper;

    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectMapper$1;->val$mapper:Lcom/flurry/org/codehaus/jackson/map/ObjectMapper;

    iget-object v1, v1, Lcom/flurry/org/codehaus/jackson/map/ObjectMapper;->_deserializationConfig:Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;

    invoke-virtual {v1, p1}, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;->withAppendedAnnotationIntrospector(Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;)Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;

    move-result-object v1

    iput-object v1, v0, Lcom/flurry/org/codehaus/jackson/map/ObjectMapper;->_deserializationConfig:Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;

    .line 553
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectMapper$1;->val$mapper:Lcom/flurry/org/codehaus/jackson/map/ObjectMapper;

    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectMapper$1;->val$mapper:Lcom/flurry/org/codehaus/jackson/map/ObjectMapper;

    iget-object v1, v1, Lcom/flurry/org/codehaus/jackson/map/ObjectMapper;->_serializationConfig:Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;

    invoke-virtual {v1, p1}, Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;->withAppendedAnnotationIntrospector(Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;)Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;

    move-result-object v1

    iput-object v1, v0, Lcom/flurry/org/codehaus/jackson/map/ObjectMapper;->_serializationConfig:Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;

    .line 554
    return-void
.end method

.method public getDeserializationConfig()Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;
    .locals 1

    .prologue
    .line 465
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectMapper$1;->val$mapper:Lcom/flurry/org/codehaus/jackson/map/ObjectMapper;

    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/map/ObjectMapper;->getDeserializationConfig()Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;

    move-result-object v0

    return-object v0
.end method

.method public getMapperVersion()Lcom/flurry/org/codehaus/jackson/Version;
    .locals 1

    .prologue
    .line 460
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectMapper$1;->this$0:Lcom/flurry/org/codehaus/jackson/map/ObjectMapper;

    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/map/ObjectMapper;->version()Lcom/flurry/org/codehaus/jackson/Version;

    move-result-object v0

    return-object v0
.end method

.method public getSerializationConfig()Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;
    .locals 1

    .prologue
    .line 470
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectMapper$1;->val$mapper:Lcom/flurry/org/codehaus/jackson/map/ObjectMapper;

    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/map/ObjectMapper;->getSerializationConfig()Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;

    move-result-object v0

    return-object v0
.end method

.method public insertAnnotationIntrospector(Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;)V
    .locals 2
    .param p1, "ai"    # Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    .prologue
    .line 546
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectMapper$1;->val$mapper:Lcom/flurry/org/codehaus/jackson/map/ObjectMapper;

    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectMapper$1;->val$mapper:Lcom/flurry/org/codehaus/jackson/map/ObjectMapper;

    iget-object v1, v1, Lcom/flurry/org/codehaus/jackson/map/ObjectMapper;->_deserializationConfig:Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;

    invoke-virtual {v1, p1}, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;->withInsertedAnnotationIntrospector(Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;)Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;

    move-result-object v1

    iput-object v1, v0, Lcom/flurry/org/codehaus/jackson/map/ObjectMapper;->_deserializationConfig:Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;

    .line 547
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectMapper$1;->val$mapper:Lcom/flurry/org/codehaus/jackson/map/ObjectMapper;

    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectMapper$1;->val$mapper:Lcom/flurry/org/codehaus/jackson/map/ObjectMapper;

    iget-object v1, v1, Lcom/flurry/org/codehaus/jackson/map/ObjectMapper;->_serializationConfig:Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;

    invoke-virtual {v1, p1}, Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;->withInsertedAnnotationIntrospector(Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;)Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;

    move-result-object v1

    iput-object v1, v0, Lcom/flurry/org/codehaus/jackson/map/ObjectMapper;->_serializationConfig:Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;

    .line 548
    return-void
.end method

.method public isEnabled(Lcom/flurry/org/codehaus/jackson/JsonGenerator$Feature;)Z
    .locals 1
    .param p1, "f"    # Lcom/flurry/org/codehaus/jackson/JsonGenerator$Feature;

    .prologue
    .line 490
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectMapper$1;->val$mapper:Lcom/flurry/org/codehaus/jackson/map/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/flurry/org/codehaus/jackson/map/ObjectMapper;->isEnabled(Lcom/flurry/org/codehaus/jackson/JsonGenerator$Feature;)Z

    move-result v0

    return v0
.end method

.method public isEnabled(Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;)Z
    .locals 1
    .param p1, "f"    # Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;

    .prologue
    .line 485
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectMapper$1;->val$mapper:Lcom/flurry/org/codehaus/jackson/map/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/flurry/org/codehaus/jackson/map/ObjectMapper;->isEnabled(Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;)Z

    move-result v0

    return v0
.end method

.method public isEnabled(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;)Z
    .locals 1
    .param p1, "f"    # Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;

    .prologue
    .line 475
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectMapper$1;->val$mapper:Lcom/flurry/org/codehaus/jackson/map/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/flurry/org/codehaus/jackson/map/ObjectMapper;->isEnabled(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;)Z

    move-result v0

    return v0
.end method

.method public isEnabled(Lcom/flurry/org/codehaus/jackson/map/SerializationConfig$Feature;)Z
    .locals 1
    .param p1, "f"    # Lcom/flurry/org/codehaus/jackson/map/SerializationConfig$Feature;

    .prologue
    .line 480
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectMapper$1;->val$mapper:Lcom/flurry/org/codehaus/jackson/map/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/flurry/org/codehaus/jackson/map/ObjectMapper;->isEnabled(Lcom/flurry/org/codehaus/jackson/map/SerializationConfig$Feature;)Z

    move-result v0

    return v0
.end method

.method public setMixInAnnotations(Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 558
    .local p1, "target":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "mixinSource":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectMapper$1;->val$mapper:Lcom/flurry/org/codehaus/jackson/map/ObjectMapper;

    iget-object v0, v0, Lcom/flurry/org/codehaus/jackson/map/ObjectMapper;->_deserializationConfig:Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;

    invoke-virtual {v0, p1, p2}, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;->addMixInAnnotations(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 559
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectMapper$1;->val$mapper:Lcom/flurry/org/codehaus/jackson/map/ObjectMapper;

    iget-object v0, v0, Lcom/flurry/org/codehaus/jackson/map/ObjectMapper;->_serializationConfig:Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;

    invoke-virtual {v0, p1, p2}, Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;->addMixInAnnotations(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 560
    return-void
.end method
