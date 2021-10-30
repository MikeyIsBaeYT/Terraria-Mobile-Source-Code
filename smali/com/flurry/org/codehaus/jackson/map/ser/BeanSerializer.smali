.class public Lcom/flurry/org/codehaus/jackson/map/ser/BeanSerializer;
.super Lcom/flurry/org/codehaus/jackson/map/ser/std/BeanSerializerBase;
.source "BeanSerializer.java"


# direct methods
.method protected constructor <init>(Lcom/flurry/org/codehaus/jackson/map/ser/BeanSerializer;)V
    .locals 0
    .param p1, "src"    # Lcom/flurry/org/codehaus/jackson/map/ser/BeanSerializer;

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/flurry/org/codehaus/jackson/map/ser/std/BeanSerializerBase;-><init>(Lcom/flurry/org/codehaus/jackson/map/ser/std/BeanSerializerBase;)V

    .line 60
    return-void
.end method

.method protected constructor <init>(Lcom/flurry/org/codehaus/jackson/map/ser/std/BeanSerializerBase;)V
    .locals 0
    .param p1, "src"    # Lcom/flurry/org/codehaus/jackson/map/ser/std/BeanSerializerBase;

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/flurry/org/codehaus/jackson/map/ser/std/BeanSerializerBase;-><init>(Lcom/flurry/org/codehaus/jackson/map/ser/std/BeanSerializerBase;)V

    .line 71
    return-void
.end method

.method public constructor <init>(Lcom/flurry/org/codehaus/jackson/type/JavaType;[Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;[Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;Lcom/flurry/org/codehaus/jackson/map/ser/AnyGetterWriter;Ljava/lang/Object;)V
    .locals 0
    .param p1, "type"    # Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .param p2, "properties"    # [Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;
    .param p3, "filteredProperties"    # [Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;
    .param p4, "anyGetterWriter"    # Lcom/flurry/org/codehaus/jackson/map/ser/AnyGetterWriter;
    .param p5, "filterId"    # Ljava/lang/Object;

    .prologue
    .line 41
    invoke-direct/range {p0 .. p5}, Lcom/flurry/org/codehaus/jackson/map/ser/std/BeanSerializerBase;-><init>(Lcom/flurry/org/codehaus/jackson/type/JavaType;[Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;[Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;Lcom/flurry/org/codehaus/jackson/map/ser/AnyGetterWriter;Ljava/lang/Object;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;[Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;[Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;Lcom/flurry/org/codehaus/jackson/map/ser/AnyGetterWriter;Ljava/lang/Object;)V
    .locals 0
    .param p2, "properties"    # [Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;
    .param p3, "filteredProperties"    # [Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;
    .param p4, "anyGetterWriter"    # Lcom/flurry/org/codehaus/jackson/map/ser/AnyGetterWriter;
    .param p5, "filterId"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;[",
            "Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;",
            "[",
            "Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;",
            "Lcom/flurry/org/codehaus/jackson/map/ser/AnyGetterWriter;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 49
    .local p1, "rawType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct/range {p0 .. p5}, Lcom/flurry/org/codehaus/jackson/map/ser/std/BeanSerializerBase;-><init>(Ljava/lang/Class;[Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;[Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;Lcom/flurry/org/codehaus/jackson/map/ser/AnyGetterWriter;Ljava/lang/Object;)V

    .line 50
    return-void
.end method

.method public static createDummy(Ljava/lang/Class;)Lcom/flurry/org/codehaus/jackson/map/ser/BeanSerializer;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/flurry/org/codehaus/jackson/map/ser/BeanSerializer;"
        }
    .end annotation

    .prologue
    .local p0, "forType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v3, 0x0

    .line 85
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/ser/BeanSerializer;

    sget-object v2, Lcom/flurry/org/codehaus/jackson/map/ser/BeanSerializer;->NO_PROPS:[Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;

    move-object v1, p0

    move-object v4, v3

    move-object v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/flurry/org/codehaus/jackson/map/ser/BeanSerializer;-><init>(Ljava/lang/Class;[Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;[Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;Lcom/flurry/org/codehaus/jackson/map/ser/AnyGetterWriter;Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public final serialize(Ljava/lang/Object;Lcom/flurry/org/codehaus/jackson/JsonGenerator;Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;)V
    .locals 1
    .param p1, "bean"    # Ljava/lang/Object;
    .param p2, "jgen"    # Lcom/flurry/org/codehaus/jackson/JsonGenerator;
    .param p3, "provider"    # Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 108
    invoke-virtual {p2}, Lcom/flurry/org/codehaus/jackson/JsonGenerator;->writeStartObject()V

    .line 109
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ser/BeanSerializer;->_propertyFilterId:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 110
    invoke-virtual {p0, p1, p2, p3}, Lcom/flurry/org/codehaus/jackson/map/ser/BeanSerializer;->serializeFieldsFiltered(Ljava/lang/Object;Lcom/flurry/org/codehaus/jackson/JsonGenerator;Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;)V

    .line 114
    :goto_0
    invoke-virtual {p2}, Lcom/flurry/org/codehaus/jackson/JsonGenerator;->writeEndObject()V

    .line 115
    return-void

    .line 112
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/flurry/org/codehaus/jackson/map/ser/BeanSerializer;->serializeFields(Ljava/lang/Object;Lcom/flurry/org/codehaus/jackson/JsonGenerator;Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BeanSerializer for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/map/ser/BeanSerializer;->handledType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unwrappingSerializer()Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 90
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/ser/impl/UnwrappingBeanSerializer;

    invoke-direct {v0, p0}, Lcom/flurry/org/codehaus/jackson/map/ser/impl/UnwrappingBeanSerializer;-><init>(Lcom/flurry/org/codehaus/jackson/map/ser/std/BeanSerializerBase;)V

    return-object v0
.end method
