.class final Lcom/flurry/org/codehaus/jackson/map/ser/FilteredBeanPropertyWriter$SingleView;
.super Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;
.source "FilteredBeanPropertyWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/org/codehaus/jackson/map/ser/FilteredBeanPropertyWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SingleView"
.end annotation


# instance fields
.field protected final _delegate:Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;

.field protected final _view:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;Ljava/lang/Class;)V
    .locals 0
    .param p1, "delegate"    # Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p2, "view":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, p1}, Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;-><init>(Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;)V

    .line 40
    iput-object p1, p0, Lcom/flurry/org/codehaus/jackson/map/ser/FilteredBeanPropertyWriter$SingleView;->_delegate:Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;

    .line 41
    iput-object p2, p0, Lcom/flurry/org/codehaus/jackson/map/ser/FilteredBeanPropertyWriter$SingleView;->_view:Ljava/lang/Class;

    .line 42
    return-void
.end method


# virtual methods
.method public serializeAsField(Ljava/lang/Object;Lcom/flurry/org/codehaus/jackson/JsonGenerator;Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;)V
    .locals 2
    .param p1, "bean"    # Ljava/lang/Object;
    .param p2, "jgen"    # Lcom/flurry/org/codehaus/jackson/JsonGenerator;
    .param p3, "prov"    # Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 53
    invoke-virtual {p3}, Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;->getSerializationView()Ljava/lang/Class;

    move-result-object v0

    .line 54
    .local v0, "activeView":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/ser/FilteredBeanPropertyWriter$SingleView;->_view:Ljava/lang/Class;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 55
    :cond_0
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/ser/FilteredBeanPropertyWriter$SingleView;->_delegate:Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;

    invoke-virtual {v1, p1, p2, p3}, Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;->serializeAsField(Ljava/lang/Object;Lcom/flurry/org/codehaus/jackson/JsonGenerator;Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;)V

    .line 57
    :cond_1
    return-void
.end method

.method public withSerializer(Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;)Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;"
        }
    .end annotation

    .prologue
    .line 46
    .local p1, "ser":Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/ser/FilteredBeanPropertyWriter$SingleView;

    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/ser/FilteredBeanPropertyWriter$SingleView;->_delegate:Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;

    invoke-virtual {v1, p1}, Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;->withSerializer(Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;)Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/ser/FilteredBeanPropertyWriter$SingleView;->_view:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Lcom/flurry/org/codehaus/jackson/map/ser/FilteredBeanPropertyWriter$SingleView;-><init>(Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;Ljava/lang/Class;)V

    return-object v0
.end method
