.class public Lcom/flurry/org/codehaus/jackson/map/deser/MapDeserializer;
.super Lcom/flurry/org/codehaus/jackson/map/deser/std/MapDeserializer;
.source "MapDeserializer.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method protected constructor <init>(Lcom/flurry/org/codehaus/jackson/map/deser/MapDeserializer;)V
    .locals 0
    .param p1, "src"    # Lcom/flurry/org/codehaus/jackson/map/deser/MapDeserializer;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/flurry/org/codehaus/jackson/map/deser/std/MapDeserializer;-><init>(Lcom/flurry/org/codehaus/jackson/map/deser/std/MapDeserializer;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/deser/ValueInstantiator;Lcom/flurry/org/codehaus/jackson/map/KeyDeserializer;Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;Lcom/flurry/org/codehaus/jackson/map/TypeDeserializer;)V
    .locals 0
    .param p1, "mapType"    # Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .param p2, "valueInstantiator"    # Lcom/flurry/org/codehaus/jackson/map/deser/ValueInstantiator;
    .param p3, "keyDeser"    # Lcom/flurry/org/codehaus/jackson/map/KeyDeserializer;
    .param p5, "valueTypeDeser"    # Lcom/flurry/org/codehaus/jackson/map/TypeDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/type/JavaType;",
            "Lcom/flurry/org/codehaus/jackson/map/deser/ValueInstantiator;",
            "Lcom/flurry/org/codehaus/jackson/map/KeyDeserializer;",
            "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/flurry/org/codehaus/jackson/map/TypeDeserializer;",
            ")V"
        }
    .end annotation

    .prologue
    .line 32
    .local p4, "valueDeser":Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer<Ljava/lang/Object;>;"
    invoke-direct/range {p0 .. p5}, Lcom/flurry/org/codehaus/jackson/map/deser/std/MapDeserializer;-><init>(Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/deser/ValueInstantiator;Lcom/flurry/org/codehaus/jackson/map/KeyDeserializer;Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;Lcom/flurry/org/codehaus/jackson/map/TypeDeserializer;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Lcom/flurry/org/codehaus/jackson/type/JavaType;Ljava/lang/reflect/Constructor;Lcom/flurry/org/codehaus/jackson/map/KeyDeserializer;Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;Lcom/flurry/org/codehaus/jackson/map/TypeDeserializer;)V
    .locals 0
    .param p1, "mapType"    # Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .param p3, "keyDeser"    # Lcom/flurry/org/codehaus/jackson/map/KeyDeserializer;
    .param p5, "valueTypeDeser"    # Lcom/flurry/org/codehaus/jackson/map/TypeDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/type/JavaType;",
            "Ljava/lang/reflect/Constructor",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;>;",
            "Lcom/flurry/org/codehaus/jackson/map/KeyDeserializer;",
            "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/flurry/org/codehaus/jackson/map/TypeDeserializer;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 25
    .local p2, "defCtor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;>;"
    .local p4, "valueDeser":Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer<Ljava/lang/Object;>;"
    invoke-direct/range {p0 .. p5}, Lcom/flurry/org/codehaus/jackson/map/deser/std/MapDeserializer;-><init>(Lcom/flurry/org/codehaus/jackson/type/JavaType;Ljava/lang/reflect/Constructor;Lcom/flurry/org/codehaus/jackson/map/KeyDeserializer;Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;Lcom/flurry/org/codehaus/jackson/map/TypeDeserializer;)V

    .line 26
    return-void
.end method
