.class public Lcom/flurry/org/codehaus/jackson/map/module/SimpleKeyDeserializers;
.super Ljava/lang/Object;
.source "SimpleKeyDeserializers.java"

# interfaces
.implements Lcom/flurry/org/codehaus/jackson/map/KeyDeserializers;


# instance fields
.field protected _classMappings:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/flurry/org/codehaus/jackson/map/type/ClassKey;",
            "Lcom/flurry/org/codehaus/jackson/map/KeyDeserializer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/module/SimpleKeyDeserializers;->_classMappings:Ljava/util/HashMap;

    .line 33
    return-void
.end method


# virtual methods
.method public addDeserializer(Ljava/lang/Class;Lcom/flurry/org/codehaus/jackson/map/KeyDeserializer;)Lcom/flurry/org/codehaus/jackson/map/module/SimpleKeyDeserializers;
    .locals 2
    .param p2, "deser"    # Lcom/flurry/org/codehaus/jackson/map/KeyDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/flurry/org/codehaus/jackson/map/KeyDeserializer;",
            ")",
            "Lcom/flurry/org/codehaus/jackson/map/module/SimpleKeyDeserializers;"
        }
    .end annotation

    .prologue
    .line 37
    .local p1, "forClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/module/SimpleKeyDeserializers;->_classMappings:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/module/SimpleKeyDeserializers;->_classMappings:Ljava/util/HashMap;

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/module/SimpleKeyDeserializers;->_classMappings:Ljava/util/HashMap;

    new-instance v1, Lcom/flurry/org/codehaus/jackson/map/type/ClassKey;

    invoke-direct {v1, p1}, Lcom/flurry/org/codehaus/jackson/map/type/ClassKey;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    return-object p0
.end method

.method public findKeyDeserializer(Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/map/BeanDescription;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)Lcom/flurry/org/codehaus/jackson/map/KeyDeserializer;
    .locals 3
    .param p1, "type"    # Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .param p2, "config"    # Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;
    .param p3, "beanDesc"    # Lcom/flurry/org/codehaus/jackson/map/BeanDescription;
    .param p4, "property"    # Lcom/flurry/org/codehaus/jackson/map/BeanProperty;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/module/SimpleKeyDeserializers;->_classMappings:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 55
    const/4 v0, 0x0

    .line 57
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/module/SimpleKeyDeserializers;->_classMappings:Ljava/util/HashMap;

    new-instance v1, Lcom/flurry/org/codehaus/jackson/map/type/ClassKey;

    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/flurry/org/codehaus/jackson/map/type/ClassKey;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/org/codehaus/jackson/map/KeyDeserializer;

    goto :goto_0
.end method
