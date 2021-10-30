.class final Lcom/flurry/org/codehaus/jackson/map/ser/FilteredBeanPropertyWriter$MultiView;
.super Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;
.source "FilteredBeanPropertyWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/org/codehaus/jackson/map/ser/FilteredBeanPropertyWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MultiView"
.end annotation


# instance fields
.field protected final _delegate:Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;

.field protected final _views:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;[Ljava/lang/Class;)V
    .locals 0
    .param p1, "delegate"    # Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;",
            "[",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 68
    .local p2, "views":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-direct {p0, p1}, Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;-><init>(Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;)V

    .line 69
    iput-object p1, p0, Lcom/flurry/org/codehaus/jackson/map/ser/FilteredBeanPropertyWriter$MultiView;->_delegate:Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;

    .line 70
    iput-object p2, p0, Lcom/flurry/org/codehaus/jackson/map/ser/FilteredBeanPropertyWriter$MultiView;->_views:[Ljava/lang/Class;

    .line 71
    return-void
.end method


# virtual methods
.method public serializeAsField(Ljava/lang/Object;Lcom/flurry/org/codehaus/jackson/JsonGenerator;Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;)V
    .locals 4
    .param p1, "bean"    # Ljava/lang/Object;
    .param p2, "jgen"    # Lcom/flurry/org/codehaus/jackson/JsonGenerator;
    .param p3, "prov"    # Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 82
    invoke-virtual {p3}, Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;->getSerializationView()Ljava/lang/Class;

    move-result-object v0

    .line 83
    .local v0, "activeView":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v0, :cond_2

    .line 84
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/map/ser/FilteredBeanPropertyWriter$MultiView;->_views:[Ljava/lang/Class;

    array-length v2, v3

    .line 85
    .local v2, "len":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 86
    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/map/ser/FilteredBeanPropertyWriter$MultiView;->_views:[Ljava/lang/Class;

    aget-object v3, v3, v1

    invoke-virtual {v3, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 89
    :cond_0
    if-ne v1, v2, :cond_2

    .line 94
    .end local v1    # "i":I
    .end local v2    # "len":I
    :goto_1
    return-void

    .line 85
    .restart local v1    # "i":I
    .restart local v2    # "len":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 93
    .end local v1    # "i":I
    .end local v2    # "len":I
    :cond_2
    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/map/ser/FilteredBeanPropertyWriter$MultiView;->_delegate:Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;

    invoke-virtual {v3, p1, p2, p3}, Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;->serializeAsField(Ljava/lang/Object;Lcom/flurry/org/codehaus/jackson/JsonGenerator;Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;)V

    goto :goto_1
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
    .line 75
    .local p1, "ser":Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/ser/FilteredBeanPropertyWriter$MultiView;

    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/ser/FilteredBeanPropertyWriter$MultiView;->_delegate:Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;

    invoke-virtual {v1, p1}, Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;->withSerializer(Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;)Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/ser/FilteredBeanPropertyWriter$MultiView;->_views:[Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Lcom/flurry/org/codehaus/jackson/map/ser/FilteredBeanPropertyWriter$MultiView;-><init>(Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;[Ljava/lang/Class;)V

    return-object v0
.end method
