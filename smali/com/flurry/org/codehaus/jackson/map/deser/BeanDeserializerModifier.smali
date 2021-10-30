.class public abstract Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerModifier;
.super Ljava/lang/Object;
.source "BeanDeserializerModifier.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public modifyDeserializer(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;)Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;
    .locals 0
    .param p1, "config"    # Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;
    .param p2, "beanDesc"    # Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;",
            "Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;",
            "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer",
            "<*>;)",
            "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 56
    .local p3, "deserializer":Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer<*>;"
    return-object p3
.end method

.method public updateBuilder(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerBuilder;)Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerBuilder;
    .locals 0
    .param p1, "config"    # Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;
    .param p2, "beanDesc"    # Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;
    .param p3, "builder"    # Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerBuilder;

    .prologue
    .line 43
    return-object p3
.end method
