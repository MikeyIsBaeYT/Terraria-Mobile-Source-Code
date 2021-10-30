.class public Lcom/flurry/org/codehaus/jackson/map/deser/std/EnumDeserializer;
.super Lcom/flurry/org/codehaus/jackson/map/deser/std/StdScalarDeserializer;
.source "EnumDeserializer.java"


# annotations
.annotation runtime Lcom/flurry/org/codehaus/jackson/map/annotate/JsonCachable;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/org/codehaus/jackson/map/deser/std/EnumDeserializer$FactoryBasedDeserializer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/flurry/org/codehaus/jackson/map/deser/std/StdScalarDeserializer",
        "<",
        "Ljava/lang/Enum",
        "<*>;>;"
    }
.end annotation


# instance fields
.field protected final _resolver:Lcom/flurry/org/codehaus/jackson/map/util/EnumResolver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/org/codehaus/jackson/map/util/EnumResolver",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/flurry/org/codehaus/jackson/map/util/EnumResolver;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/util/EnumResolver",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 31
    .local p1, "res":Lcom/flurry/org/codehaus/jackson/map/util/EnumResolver;, "Lcom/flurry/org/codehaus/jackson/map/util/EnumResolver<*>;"
    const-class v0, Ljava/lang/Enum;

    invoke-direct {p0, v0}, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdScalarDeserializer;-><init>(Ljava/lang/Class;)V

    .line 32
    iput-object p1, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/EnumDeserializer;->_resolver:Lcom/flurry/org/codehaus/jackson/map/util/EnumResolver;

    .line 33
    return-void
.end method

.method public static deserializerForCreator(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Ljava/lang/Class;Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;)Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;
    .locals 3
    .param p0, "config"    # Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;
    .param p2, "factory"    # Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;",
            ")",
            "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 48
    .local p1, "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;->getParameterType(I)Ljava/lang/reflect/Type;

    move-result-object v0

    const-class v1, Ljava/lang/String;

    if-eq v0, v1, :cond_0

    .line 49
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Parameter #0 type for factory method ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") not suitable, must be java.lang.String"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_0
    sget-object v0, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;->CAN_OVERRIDE_ACCESS_MODIFIERS:Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;

    invoke-virtual {p0, v0}, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;->isEnabled(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 52
    invoke-virtual {p2}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;->getMember()Ljava/lang/reflect/Member;

    move-result-object v0

    invoke-static {v0}, Lcom/flurry/org/codehaus/jackson/map/util/ClassUtil;->checkAndFixAccess(Ljava/lang/reflect/Member;)V

    .line 54
    :cond_1
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/deser/std/EnumDeserializer$FactoryBasedDeserializer;

    invoke-direct {v0, p1, p2}, Lcom/flurry/org/codehaus/jackson/map/deser/std/EnumDeserializer$FactoryBasedDeserializer;-><init>(Ljava/lang/Class;Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;)V

    return-object v0
.end method


# virtual methods
.method public deserialize(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Enum;
    .locals 8
    .param p1, "jp"    # Lcom/flurry/org/codehaus/jackson/JsonParser;
    .param p2, "ctxt"    # Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/JsonParser;",
            "Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;",
            ")",
            "Ljava/lang/Enum",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 67
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getCurrentToken()Lcom/flurry/org/codehaus/jackson/JsonToken;

    move-result-object v0

    .line 70
    .local v0, "curr":Lcom/flurry/org/codehaus/jackson/JsonToken;
    sget-object v5, Lcom/flurry/org/codehaus/jackson/JsonToken;->VALUE_STRING:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-eq v0, v5, :cond_0

    sget-object v5, Lcom/flurry/org/codehaus/jackson/JsonToken;->FIELD_NAME:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-ne v0, v5, :cond_2

    .line 71
    :cond_0
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v2

    .line 72
    .local v2, "name":Ljava/lang/String;
    iget-object v5, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/EnumDeserializer;->_resolver:Lcom/flurry/org/codehaus/jackson/map/util/EnumResolver;

    invoke-virtual {v5, v2}, Lcom/flurry/org/codehaus/jackson/map/util/EnumResolver;->findEnum(Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v3

    .line 73
    .local v3, "result":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    if-nez v3, :cond_1

    .line 74
    iget-object v5, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/EnumDeserializer;->_resolver:Lcom/flurry/org/codehaus/jackson/map/util/EnumResolver;

    invoke-virtual {v5}, Lcom/flurry/org/codehaus/jackson/map/util/EnumResolver;->getEnumClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "value not one of declared Enum instance names"

    invoke-virtual {p2, v5, v6}, Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;->weirdStringException(Ljava/lang/Class;Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;

    move-result-object v5

    throw v5

    :cond_1
    move-object v4, v3

    .line 92
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "result":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    .local v4, "result":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    :goto_0
    return-object v4

    .line 79
    .end local v4    # "result":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    :cond_2
    sget-object v5, Lcom/flurry/org/codehaus/jackson/JsonToken;->VALUE_NUMBER_INT:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-ne v0, v5, :cond_5

    .line 83
    sget-object v5, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;->FAIL_ON_NUMBERS_FOR_ENUMS:Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;

    invoke-virtual {p2, v5}, Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;->isEnabled(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 84
    const-string v5, "Not allowed to deserialize Enum value out of JSON number (disable DeserializationConfig.Feature.FAIL_ON_NUMBERS_FOR_ENUMS to allow)"

    invoke-virtual {p2, v5}, Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;->mappingException(Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;

    move-result-object v5

    throw v5

    .line 87
    :cond_3
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getIntValue()I

    move-result v1

    .line 88
    .local v1, "index":I
    iget-object v5, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/EnumDeserializer;->_resolver:Lcom/flurry/org/codehaus/jackson/map/util/EnumResolver;

    invoke-virtual {v5, v1}, Lcom/flurry/org/codehaus/jackson/map/util/EnumResolver;->getEnum(I)Ljava/lang/Enum;

    move-result-object v3

    .line 89
    .restart local v3    # "result":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    if-nez v3, :cond_4

    .line 90
    iget-object v5, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/EnumDeserializer;->_resolver:Lcom/flurry/org/codehaus/jackson/map/util/EnumResolver;

    invoke-virtual {v5}, Lcom/flurry/org/codehaus/jackson/map/util/EnumResolver;->getEnumClass()Ljava/lang/Class;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "index value outside legal index range [0.."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/EnumDeserializer;->_resolver:Lcom/flurry/org/codehaus/jackson/map/util/EnumResolver;

    invoke-virtual {v7}, Lcom/flurry/org/codehaus/jackson/map/util/EnumResolver;->lastValidIndex()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;->weirdNumberException(Ljava/lang/Class;Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;

    move-result-object v5

    throw v5

    :cond_4
    move-object v4, v3

    .line 92
    .end local v3    # "result":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    .restart local v4    # "result":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    goto :goto_0

    .line 94
    .end local v1    # "index":I
    .end local v4    # "result":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    :cond_5
    iget-object v5, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/EnumDeserializer;->_resolver:Lcom/flurry/org/codehaus/jackson/map/util/EnumResolver;

    invoke-virtual {v5}, Lcom/flurry/org/codehaus/jackson/map/util/EnumResolver;->getEnumClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {p2, v5}, Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;->mappingException(Ljava/lang/Class;)Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;

    move-result-object v5

    throw v5
.end method

.method public bridge synthetic deserialize(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lcom/flurry/org/codehaus/jackson/JsonParser;
    .param p2, "x1"    # Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 23
    invoke-virtual {p0, p1, p2}, Lcom/flurry/org/codehaus/jackson/map/deser/std/EnumDeserializer;->deserialize(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Enum;

    move-result-object v0

    return-object v0
.end method
