.class public abstract Lcom/flurry/org/codehaus/jackson/map/ser/std/StaticListSerializerBase;
.super Lcom/flurry/org/codehaus/jackson/map/ser/std/SerializerBase;
.source "StaticListSerializerBase.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Ljava/util/Collection",
        "<*>;>",
        "Lcom/flurry/org/codehaus/jackson/map/ser/std/SerializerBase",
        "<TT;>;"
    }
.end annotation


# instance fields
.field protected final _property:Lcom/flurry/org/codehaus/jackson/map/BeanProperty;


# direct methods
.method protected constructor <init>(Ljava/lang/Class;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)V
    .locals 1
    .param p2, "property"    # Lcom/flurry/org/codehaus/jackson/map/BeanProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/flurry/org/codehaus/jackson/map/BeanProperty;",
            ")V"
        }
    .end annotation

    .prologue
    .line 27
    .local p0, "this":Lcom/flurry/org/codehaus/jackson/map/ser/std/StaticListSerializerBase;, "Lcom/flurry/org/codehaus/jackson/map/ser/std/StaticListSerializerBase<TT;>;"
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/flurry/org/codehaus/jackson/map/ser/std/SerializerBase;-><init>(Ljava/lang/Class;Z)V

    .line 28
    iput-object p2, p0, Lcom/flurry/org/codehaus/jackson/map/ser/std/StaticListSerializerBase;->_property:Lcom/flurry/org/codehaus/jackson/map/BeanProperty;

    .line 29
    return-void
.end method


# virtual methods
.method protected abstract contentSchema()Lcom/flurry/org/codehaus/jackson/JsonNode;
.end method

.method public getSchema(Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;Ljava/lang/reflect/Type;)Lcom/flurry/org/codehaus/jackson/JsonNode;
    .locals 3
    .param p1, "provider"    # Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;
    .param p2, "typeHint"    # Ljava/lang/reflect/Type;

    .prologue
    .line 34
    .local p0, "this":Lcom/flurry/org/codehaus/jackson/map/ser/std/StaticListSerializerBase;, "Lcom/flurry/org/codehaus/jackson/map/ser/std/StaticListSerializerBase<TT;>;"
    const-string v1, "array"

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/flurry/org/codehaus/jackson/map/ser/std/StaticListSerializerBase;->createSchemaNode(Ljava/lang/String;Z)Lcom/flurry/org/codehaus/jackson/node/ObjectNode;

    move-result-object v0

    .line 35
    .local v0, "o":Lcom/flurry/org/codehaus/jackson/node/ObjectNode;
    const-string v1, "items"

    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/map/ser/std/StaticListSerializerBase;->contentSchema()Lcom/flurry/org/codehaus/jackson/JsonNode;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/flurry/org/codehaus/jackson/node/ObjectNode;->put(Ljava/lang/String;Lcom/flurry/org/codehaus/jackson/JsonNode;)Lcom/flurry/org/codehaus/jackson/JsonNode;

    .line 36
    return-object v0
.end method
