.class public Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;
.super Ljava/lang/Object;
.source "BeanPropertyWriter.java"

# interfaces
.implements Lcom/flurry/org/codehaus/jackson/map/BeanProperty;


# instance fields
.field protected final _accessorMethod:Ljava/lang/reflect/Method;

.field protected final _cfgSerializationType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

.field protected final _contextAnnotations:Lcom/flurry/org/codehaus/jackson/map/util/Annotations;

.field protected final _declaredType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

.field protected _dynamicSerializers:Lcom/flurry/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;

.field protected final _field:Ljava/lang/reflect/Field;

.field protected _includeInViews:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field protected _internalSettings:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected final _member:Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;

.field protected final _name:Lcom/flurry/org/codehaus/jackson/io/SerializedString;

.field protected _nonTrivialBaseType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

.field protected final _serializer:Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected final _suppressNulls:Z

.field protected final _suppressableValue:Ljava/lang/Object;

.field protected _typeSerializer:Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;


# direct methods
.method public constructor <init>(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;Lcom/flurry/org/codehaus/jackson/map/util/Annotations;Lcom/flurry/org/codehaus/jackson/io/SerializedString;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;Lcom/flurry/org/codehaus/jackson/type/JavaType;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;ZLjava/lang/Object;)V
    .locals 1
    .param p1, "member"    # Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;
    .param p2, "contextAnnotations"    # Lcom/flurry/org/codehaus/jackson/map/util/Annotations;
    .param p3, "name"    # Lcom/flurry/org/codehaus/jackson/io/SerializedString;
    .param p4, "declaredType"    # Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .param p6, "typeSer"    # Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;
    .param p7, "serType"    # Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .param p8, "m"    # Ljava/lang/reflect/Method;
    .param p9, "f"    # Ljava/lang/reflect/Field;
    .param p10, "suppressNulls"    # Z
    .param p11, "suppressableValue"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;",
            "Lcom/flurry/org/codehaus/jackson/map/util/Annotations;",
            "Lcom/flurry/org/codehaus/jackson/io/SerializedString;",
            "Lcom/flurry/org/codehaus/jackson/type/JavaType;",
            "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;",
            "Lcom/flurry/org/codehaus/jackson/type/JavaType;",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/reflect/Field;",
            "Z",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 176
    .local p5, "ser":Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    iput-object p1, p0, Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;->_member:Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;

    .line 178
    iput-object p2, p0, Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;->_contextAnnotations:Lcom/flurry/org/codehaus/jackson/map/util/Annotations;

    .line 179
    iput-object p3, p0, Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;->_name:Lcom/flurry/org/codehaus/jackson/io/SerializedString;

    .line 180
    iput-object p4, p0, Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;->_declaredType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    .line 181
    iput-object p5, p0, Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;->_serializer:Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;

    .line 182
    if-nez p5, :cond_0

    invoke-static {}, Lcom/flurry/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;->emptyMap()Lcom/flurry/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;->_dynamicSerializers:Lcom/flurry/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;

    .line 183
    iput-object p6, p0, Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;->_typeSerializer:Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;

    .line 184
    iput-object p7, p0, Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;->_cfgSerializationType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    .line 185
    iput-object p8, p0, Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;->_accessorMethod:Ljava/lang/reflect/Method;

    .line 186
    iput-object p9, p0, Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;->_field:Ljava/lang/reflect/Field;

    .line 187
    iput-boolean p10, p0, Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;->_suppressNulls:Z

    .line 188
    iput-object p11, p0, Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;->_suppressableValue:Ljava/lang/Object;

    .line 189
    return-void

    .line 182
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;Lcom/flurry/org/codehaus/jackson/map/util/Annotations;Ljava/lang/String;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;Lcom/flurry/org/codehaus/jackson/type/JavaType;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;ZLjava/lang/Object;)V
    .locals 12
    .param p1, "member"    # Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;
    .param p2, "contextAnnotations"    # Lcom/flurry/org/codehaus/jackson/map/util/Annotations;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "declaredType"    # Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .param p6, "typeSer"    # Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;
    .param p7, "serType"    # Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .param p8, "m"    # Ljava/lang/reflect/Method;
    .param p9, "f"    # Ljava/lang/reflect/Field;
    .param p10, "suppressNulls"    # Z
    .param p11, "suppressableValue"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;",
            "Lcom/flurry/org/codehaus/jackson/map/util/Annotations;",
            "Ljava/lang/String;",
            "Lcom/flurry/org/codehaus/jackson/type/JavaType;",
            "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;",
            "Lcom/flurry/org/codehaus/jackson/type/JavaType;",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/reflect/Field;",
            "Z",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 167
    .local p5, "ser":Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    new-instance v3, Lcom/flurry/org/codehaus/jackson/io/SerializedString;

    invoke-direct {v3, p3}, Lcom/flurry/org/codehaus/jackson/io/SerializedString;-><init>(Ljava/lang/String;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move/from16 v10, p10

    move-object/from16 v11, p11

    invoke-direct/range {v0 .. v11}, Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;-><init>(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;Lcom/flurry/org/codehaus/jackson/map/util/Annotations;Lcom/flurry/org/codehaus/jackson/io/SerializedString;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;Lcom/flurry/org/codehaus/jackson/type/JavaType;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;ZLjava/lang/Object;)V

    .line 170
    return-void
.end method

.method protected constructor <init>(Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;)V
    .locals 1
    .param p1, "base"    # Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;

    .prologue
    .line 196
    iget-object v0, p1, Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;->_serializer:Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;

    invoke-direct {p0, p1, v0}, Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;-><init>(Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;)V

    .line 197
    return-void
.end method

.method protected constructor <init>(Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;)V
    .locals 2
    .param p1, "base"    # Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;",
            "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 203
    .local p2, "ser":Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 204
    iput-object p2, p0, Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;->_serializer:Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;

    .line 206
    iget-object v0, p1, Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;->_member:Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;->_member:Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;

    .line 207
    iget-object v0, p1, Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;->_contextAnnotations:Lcom/flurry/org/codehaus/jackson/map/util/Annotations;

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;->_contextAnnotations:Lcom/flurry/org/codehaus/jackson/map/util/Annotations;

    .line 208
    iget-object v0, p1, Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;->_declaredType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;->_declaredType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    .line 209
    iget-object v0, p1, Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;->_accessorMethod:Ljava/lang/reflect/Method;

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;->_accessorMethod:Ljava/lang/reflect/Method;

    .line 210
    iget-object v0, p1, Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;->_field:Ljava/lang/reflect/Field;

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;->_field:Ljava/lang/reflect/Field;

    .line 212
    iget-object v0, p1, Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;->_internalSettings:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 213
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p1, Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;->_internalSettings:Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;->_internalSettings:Ljava/util/HashMap;

    .line 215
    :cond_0
    iget-object v0, p1, Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;->_name:Lcom/flurry/org/codehaus/jackson/io/SerializedString;

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;->_name:Lcom/flurry/org/codehaus/jackson/io/SerializedString;

    .line 216
    iget-object v0, p1, Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;->_cfgSerializationType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;->_cfgSerializationType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    .line 217
    iget-object v0, p1, Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;->_dynamicSerializers:Lcom/flurry/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;->_dynamicSerializers:Lcom/flurry/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;

    .line 218
    iget-boolean v0, p1, Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;->_suppressNulls:Z

    iput-boolean v0, p0, Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;->_suppressNulls:Z

    .line 219
    iget-object v0, p1, Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;->_suppressableValue:Ljava/lang/Object;

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;->_suppressableValue:Ljava/lang/Object;

    .line 220
    iget-object v0, p1, Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;->_includeInViews:[Ljava/lang/Class;

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;->_includeInViews:[Ljava/lang/Class;

    .line 221
    iget-object v0, p1, Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;->_typeSerializer:Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;->_typeSerializer:Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;

    .line 222
    iget-object v0, p1, Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;->_nonTrivialBaseType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;->_nonTrivialBaseType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    .line 223
    return-void
.end method


# virtual methods
.method protected _findAndAddDynamic(Lcom/flurry/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;Ljava/lang/Class;Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;)Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;
    .locals 3
    .param p1, "map"    # Lcom/flurry/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;
    .param p3, "provider"    # Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;",
            ")",
            "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 459
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;->_nonTrivialBaseType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    if-eqz v2, :cond_1

    .line 460
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;->_nonTrivialBaseType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    invoke-virtual {p3, v2, p2}, Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;->constructSpecializedType(Lcom/flurry/org/codehaus/jackson/type/JavaType;Ljava/lang/Class;)Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v1

    .line 461
    .local v1, "t":Lcom/flurry/org/codehaus/jackson/type/JavaType;
    invoke-virtual {p1, v1, p3, p0}, Lcom/flurry/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;->findAndAddSerializer(Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)Lcom/flurry/org/codehaus/jackson/map/ser/impl/PropertySerializerMap$SerializerAndMapResult;

    move-result-object v0

    .line 466
    .end local v1    # "t":Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .local v0, "result":Lcom/flurry/org/codehaus/jackson/map/ser/impl/PropertySerializerMap$SerializerAndMapResult;
    :goto_0
    iget-object v2, v0, Lcom/flurry/org/codehaus/jackson/map/ser/impl/PropertySerializerMap$SerializerAndMapResult;->map:Lcom/flurry/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;

    if-eq p1, v2, :cond_0

    .line 467
    iget-object v2, v0, Lcom/flurry/org/codehaus/jackson/map/ser/impl/PropertySerializerMap$SerializerAndMapResult;->map:Lcom/flurry/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;

    iput-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;->_dynamicSerializers:Lcom/flurry/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;

    .line 469
    :cond_0
    iget-object v2, v0, Lcom/flurry/org/codehaus/jackson/map/ser/impl/PropertySerializerMap$SerializerAndMapResult;->serializer:Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;

    return-object v2

    .line 463
    .end local v0    # "result":Lcom/flurry/org/codehaus/jackson/map/ser/impl/PropertySerializerMap$SerializerAndMapResult;
    :cond_1
    invoke-virtual {p1, p2, p3, p0}, Lcom/flurry/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;->findAndAddSerializer(Ljava/lang/Class;Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)Lcom/flurry/org/codehaus/jackson/map/ser/impl/PropertySerializerMap$SerializerAndMapResult;

    move-result-object v0

    .restart local v0    # "result":Lcom/flurry/org/codehaus/jackson/map/ser/impl/PropertySerializerMap$SerializerAndMapResult;
    goto :goto_0
.end method

.method protected _reportSelfReference(Ljava/lang/Object;)V
    .locals 2
    .param p1, "bean"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 491
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;

    const-string v1, "Direct self-reference leading to cycle"

    invoke-direct {v0, v1}, Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "bean"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 482
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;->_accessorMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 483
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;->_accessorMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 485
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;->_field:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class",
            "<TA;>;)TA;"
        }
    .end annotation

    .prologue
    .line 288
    .local p1, "acls":Ljava/lang/Class;, "Ljava/lang/Class<TA;>;"
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;->_member:Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;

    invoke-virtual {v0, p1}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method public getContextAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class",
            "<TA;>;)TA;"
        }
    .end annotation

    .prologue
    .line 293
    .local p1, "acls":Ljava/lang/Class;, "Ljava/lang/Class<TA;>;"
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;->_contextAnnotations:Lcom/flurry/org/codehaus/jackson/map/util/Annotations;

    invoke-interface {v0, p1}, Lcom/flurry/org/codehaus/jackson/map/util/Annotations;->get(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method public getGenericPropertyType()Ljava/lang/reflect/Type;
    .locals 1

    .prologue
    .line 396
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;->_accessorMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 397
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;->_accessorMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 399
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;->_field:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v0

    goto :goto_0
.end method

.method public getInternalSetting(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 317
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;->_internalSettings:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 318
    const/4 v0, 0x0

    .line 320
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;->_internalSettings:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getMember()Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;->_member:Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;->_name:Lcom/flurry/org/codehaus/jackson/io/SerializedString;

    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/io/SerializedString;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPropertyType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 383
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;->_accessorMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 384
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;->_accessorMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    .line 386
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;->_field:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0
.end method

.method public getRawSerializationType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 378
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;->_cfgSerializationType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;->_cfgSerializationType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0
.end method

.method public getSerializationType()Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .locals 1

    .prologue
    .line 374
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;->_cfgSerializationType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    return-object v0
.end method

.method public getSerializedName()Lcom/flurry/org/codehaus/jackson/io/SerializedString;
    .locals 1

    .prologue
    .line 364
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;->_name:Lcom/flurry/org/codehaus/jackson/io/SerializedString;

    return-object v0
.end method

.method public getSerializer()Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;
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
    .line 370
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;->_serializer:Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;

    return-object v0
.end method

.method public getType()Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;->_declaredType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    return-object v0
.end method

.method public getViews()[Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 402
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;->_includeInViews:[Ljava/lang/Class;

    return-object v0
.end method

.method public hasSerializer()Z
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;->_serializer:Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeInternalSetting(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 347
    const/4 v0, 0x0

    .line 348
    .local v0, "removed":Ljava/lang/Object;
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;->_internalSettings:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    .line 349
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;->_internalSettings:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 351
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;->_internalSettings:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 352
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;->_internalSettings:Ljava/util/HashMap;

    .line 355
    .end local v0    # "removed":Ljava/lang/Object;
    :cond_0
    return-object v0
.end method

.method public serializeAsField(Ljava/lang/Object;Lcom/flurry/org/codehaus/jackson/JsonGenerator;Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;)V
    .locals 5
    .param p1, "bean"    # Ljava/lang/Object;
    .param p2, "jgen"    # Lcom/flurry/org/codehaus/jackson/JsonGenerator;
    .param p3, "prov"    # Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 418
    invoke-virtual {p0, p1}, Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 420
    .local v3, "value":Ljava/lang/Object;
    if-nez v3, :cond_1

    .line 421
    iget-boolean v4, p0, Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;->_suppressNulls:Z

    if-nez v4, :cond_0

    .line 422
    iget-object v4, p0, Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;->_name:Lcom/flurry/org/codehaus/jackson/io/SerializedString;

    invoke-virtual {p2, v4}, Lcom/flurry/org/codehaus/jackson/JsonGenerator;->writeFieldName(Lcom/flurry/org/codehaus/jackson/io/SerializedString;)V

    .line 423
    invoke-virtual {p3, p2}, Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;->defaultSerializeNull(Lcom/flurry/org/codehaus/jackson/JsonGenerator;)V

    .line 450
    :cond_0
    :goto_0
    return-void

    .line 428
    :cond_1
    if-ne v3, p1, :cond_2

    .line 429
    invoke-virtual {p0, p1}, Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;->_reportSelfReference(Ljava/lang/Object;)V

    .line 431
    :cond_2
    iget-object v4, p0, Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;->_suppressableValue:Ljava/lang/Object;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;->_suppressableValue:Ljava/lang/Object;

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 435
    :cond_3
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;->_serializer:Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;

    .line 436
    .local v2, "ser":Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    if-nez v2, :cond_4

    .line 437
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 438
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;->_dynamicSerializers:Lcom/flurry/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;

    .line 439
    .local v1, "map":Lcom/flurry/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;
    invoke-virtual {v1, v0}, Lcom/flurry/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;->serializerFor(Ljava/lang/Class;)Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;

    move-result-object v2

    .line 440
    if-nez v2, :cond_4

    .line 441
    invoke-virtual {p0, v1, v0, p3}, Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;->_findAndAddDynamic(Lcom/flurry/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;Ljava/lang/Class;Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;)Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;

    move-result-object v2

    .line 444
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "map":Lcom/flurry/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;
    :cond_4
    iget-object v4, p0, Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;->_name:Lcom/flurry/org/codehaus/jackson/io/SerializedString;

    invoke-virtual {p2, v4}, Lcom/flurry/org/codehaus/jackson/JsonGenerator;->writeFieldName(Lcom/flurry/org/codehaus/jackson/io/SerializedString;)V

    .line 445
    iget-object v4, p0, Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;->_typeSerializer:Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;

    if-nez v4, :cond_5

    .line 446
    invoke-virtual {v2, v3, p2, p3}, Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;->serialize(Ljava/lang/Object;Lcom/flurry/org/codehaus/jackson/JsonGenerator;Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;)V

    goto :goto_0

    .line 448
    :cond_5
    iget-object v4, p0, Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;->_typeSerializer:Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;

    invoke-virtual {v2, v3, p2, p3, v4}, Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;->serializeWithType(Ljava/lang/Object;Lcom/flurry/org/codehaus/jackson/JsonGenerator;Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;)V

    goto :goto_0
.end method

.method public setInternalSetting(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 332
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;->_internalSettings:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 333
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;->_internalSettings:Ljava/util/HashMap;

    .line 335
    :cond_0
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;->_internalSettings:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public setNonTrivialBaseType(Lcom/flurry/org/codehaus/jackson/type/JavaType;)V
    .locals 0
    .param p1, "t"    # Lcom/flurry/org/codehaus/jackson/type/JavaType;

    .prologue
    .line 267
    iput-object p1, p0, Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;->_nonTrivialBaseType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    .line 268
    return-void
.end method

.method public setViews([Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 257
    .local p1, "views":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    iput-object p1, p0, Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;->_includeInViews:[Ljava/lang/Class;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 497
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 498
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "property \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 499
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;->_accessorMethod:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 500
    const-string v1, "via method "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;->_accessorMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;->_accessorMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 504
    :goto_0
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;->_serializer:Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;

    if-nez v1, :cond_1

    .line 505
    const-string v1, ", no static serializer"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 509
    :goto_1
    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 510
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 502
    :cond_0
    const-string v1, "field \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;->_field:Ljava/lang/reflect/Field;

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;->_field:Ljava/lang/reflect/Field;

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 507
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", static serializer of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;->_serializer:Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public unwrappingWriter()Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;
    .locals 1

    .prologue
    .line 246
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/ser/impl/UnwrappingBeanPropertyWriter;

    invoke-direct {v0, p0}, Lcom/flurry/org/codehaus/jackson/map/ser/impl/UnwrappingBeanPropertyWriter;-><init>(Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;)V

    return-object v0
.end method

.method public withSerializer(Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;)Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;
    .locals 2
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
    .line 233
    .local p1, "ser":Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;

    if-eq v0, v1, :cond_0

    .line 234
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "BeanPropertyWriter sub-class does not override \'withSerializer()\'; needs to!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 236
    :cond_0
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;

    invoke-direct {v0, p0, p1}, Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;-><init>(Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;)V

    return-object v0
.end method
