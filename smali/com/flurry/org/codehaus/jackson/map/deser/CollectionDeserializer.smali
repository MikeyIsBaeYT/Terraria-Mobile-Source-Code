.class public Lcom/flurry/org/codehaus/jackson/map/deser/CollectionDeserializer;
.super Lcom/flurry/org/codehaus/jackson/map/deser/std/CollectionDeserializer;
.source "CollectionDeserializer.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method protected constructor <init>(Lcom/flurry/org/codehaus/jackson/map/deser/CollectionDeserializer;)V
    .locals 0
    .param p1, "src"    # Lcom/flurry/org/codehaus/jackson/map/deser/CollectionDeserializer;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/flurry/org/codehaus/jackson/map/deser/std/CollectionDeserializer;-><init>(Lcom/flurry/org/codehaus/jackson/map/deser/std/CollectionDeserializer;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;Lcom/flurry/org/codehaus/jackson/map/TypeDeserializer;Lcom/flurry/org/codehaus/jackson/map/deser/ValueInstantiator;)V
    .locals 0
    .param p1, "collectionType"    # Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .param p3, "valueTypeDeser"    # Lcom/flurry/org/codehaus/jackson/map/TypeDeserializer;
    .param p4, "valueInstantiator"    # Lcom/flurry/org/codehaus/jackson/map/deser/ValueInstantiator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/type/JavaType;",
            "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/flurry/org/codehaus/jackson/map/TypeDeserializer;",
            "Lcom/flurry/org/codehaus/jackson/map/deser/ValueInstantiator;",
            ")V"
        }
    .end annotation

    .prologue
    .line 34
    .local p2, "valueDeser":Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer<Ljava/lang/Object;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/flurry/org/codehaus/jackson/map/deser/std/CollectionDeserializer;-><init>(Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;Lcom/flurry/org/codehaus/jackson/map/TypeDeserializer;Lcom/flurry/org/codehaus/jackson/map/deser/ValueInstantiator;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;Lcom/flurry/org/codehaus/jackson/map/TypeDeserializer;Ljava/lang/reflect/Constructor;)V
    .locals 0
    .param p1, "collectionType"    # Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .param p3, "valueTypeDeser"    # Lcom/flurry/org/codehaus/jackson/map/TypeDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/type/JavaType;",
            "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/flurry/org/codehaus/jackson/map/TypeDeserializer;",
            "Ljava/lang/reflect/Constructor",
            "<",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 25
    .local p2, "valueDeser":Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer<Ljava/lang/Object;>;"
    .local p4, "defCtor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Ljava/util/Collection<Ljava/lang/Object;>;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/flurry/org/codehaus/jackson/map/deser/std/CollectionDeserializer;-><init>(Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;Lcom/flurry/org/codehaus/jackson/map/TypeDeserializer;Ljava/lang/reflect/Constructor;)V

    .line 26
    return-void
.end method
