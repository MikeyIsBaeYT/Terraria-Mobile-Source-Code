.class public Lcom/flurry/org/codehaus/jackson/map/deser/std/AtomicReferenceDeserializer;
.super Lcom/flurry/org/codehaus/jackson/map/deser/std/StdScalarDeserializer;
.source "AtomicReferenceDeserializer.java"

# interfaces
.implements Lcom/flurry/org/codehaus/jackson/map/ResolvableDeserializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/flurry/org/codehaus/jackson/map/deser/std/StdScalarDeserializer",
        "<",
        "Ljava/util/concurrent/atomic/AtomicReference",
        "<*>;>;",
        "Lcom/flurry/org/codehaus/jackson/map/ResolvableDeserializer;"
    }
.end annotation


# instance fields
.field protected final _property:Lcom/flurry/org/codehaus/jackson/map/BeanProperty;

.field protected final _referencedType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

.field protected _valueDeserializer:Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)V
    .locals 1
    .param p1, "referencedType"    # Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .param p2, "property"    # Lcom/flurry/org/codehaus/jackson/map/BeanProperty;

    .prologue
    .line 29
    const-class v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p0, v0}, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdScalarDeserializer;-><init>(Ljava/lang/Class;)V

    .line 30
    iput-object p1, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/AtomicReferenceDeserializer;->_referencedType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    .line 31
    iput-object p2, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/AtomicReferenceDeserializer;->_property:Lcom/flurry/org/codehaus/jackson/map/BeanProperty;

    .line 32
    return-void
.end method


# virtual methods
.method public bridge synthetic deserialize(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lcom/flurry/org/codehaus/jackson/JsonParser;
    .param p2, "x1"    # Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 11
    invoke-virtual {p0, p1, p2}, Lcom/flurry/org/codehaus/jackson/map/deser/std/AtomicReferenceDeserializer;->deserialize(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    return-object v0
.end method

.method public deserialize(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 2
    .param p1, "jp"    # Lcom/flurry/org/codehaus/jackson/JsonParser;
    .param p2, "ctxt"    # Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/JsonParser;",
            "Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;",
            ")",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 38
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/AtomicReferenceDeserializer;->_valueDeserializer:Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;

    invoke-virtual {v1, p1, p2}, Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;->deserialize(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public resolve(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/map/DeserializerProvider;)V
    .locals 2
    .param p1, "config"    # Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;
    .param p2, "provider"    # Lcom/flurry/org/codehaus/jackson/map/DeserializerProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 45
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/AtomicReferenceDeserializer;->_referencedType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/AtomicReferenceDeserializer;->_property:Lcom/flurry/org/codehaus/jackson/map/BeanProperty;

    invoke-virtual {p2, p1, v0, v1}, Lcom/flurry/org/codehaus/jackson/map/DeserializerProvider;->findValueDeserializer(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/AtomicReferenceDeserializer;->_valueDeserializer:Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;

    .line 46
    return-void
.end method
