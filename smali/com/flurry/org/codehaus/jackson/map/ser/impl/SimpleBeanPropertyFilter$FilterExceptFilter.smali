.class public Lcom/flurry/org/codehaus/jackson/map/ser/impl/SimpleBeanPropertyFilter$FilterExceptFilter;
.super Lcom/flurry/org/codehaus/jackson/map/ser/impl/SimpleBeanPropertyFilter;
.source "SimpleBeanPropertyFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/org/codehaus/jackson/map/ser/impl/SimpleBeanPropertyFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FilterExceptFilter"
.end annotation


# instance fields
.field protected final _propertiesToInclude:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 68
    .local p1, "properties":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/flurry/org/codehaus/jackson/map/ser/impl/SimpleBeanPropertyFilter;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/flurry/org/codehaus/jackson/map/ser/impl/SimpleBeanPropertyFilter$FilterExceptFilter;->_propertiesToInclude:Ljava/util/Set;

    .line 70
    return-void
.end method


# virtual methods
.method public serializeAsField(Ljava/lang/Object;Lcom/flurry/org/codehaus/jackson/JsonGenerator;Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;)V
    .locals 2
    .param p1, "bean"    # Ljava/lang/Object;
    .param p2, "jgen"    # Lcom/flurry/org/codehaus/jackson/JsonGenerator;
    .param p3, "provider"    # Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;
    .param p4, "writer"    # Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 77
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ser/impl/SimpleBeanPropertyFilter$FilterExceptFilter;->_propertiesToInclude:Ljava/util/Set;

    invoke-virtual {p4}, Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {p4, p1, p2, p3}, Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;->serializeAsField(Ljava/lang/Object;Lcom/flurry/org/codehaus/jackson/JsonGenerator;Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;)V

    .line 80
    :cond_0
    return-void
.end method
