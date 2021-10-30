.class public Lcom/flurry/org/codehaus/jackson/map/deser/std/StdValueInstantiator;
.super Lcom/flurry/org/codehaus/jackson/map/deser/ValueInstantiator;
.source "StdValueInstantiator.java"


# instance fields
.field protected final _cfgEmptyStringsAsObjects:Z

.field protected _constructorArguments:[Lcom/flurry/org/codehaus/jackson/map/deser/impl/CreatorProperty;

.field protected _defaultCreator:Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;

.field protected _delegateCreator:Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;

.field protected _delegateType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

.field protected _fromBooleanCreator:Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;

.field protected _fromDoubleCreator:Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;

.field protected _fromIntCreator:Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;

.field protected _fromLongCreator:Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;

.field protected _fromStringCreator:Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;

.field protected final _valueTypeDesc:Ljava/lang/String;

.field protected _withArgsCreator:Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;


# direct methods
.method public constructor <init>(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/type/JavaType;)V
    .locals 1
    .param p1, "config"    # Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;
    .param p2, "valueType"    # Lcom/flurry/org/codehaus/jackson/type/JavaType;

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/flurry/org/codehaus/jackson/map/deser/ValueInstantiator;-><init>()V

    .line 77
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdValueInstantiator;->_cfgEmptyStringsAsObjects:Z

    .line 79
    if-nez p2, :cond_1

    const-string v0, "UNKNOWN TYPE"

    :goto_1
    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdValueInstantiator;->_valueTypeDesc:Ljava/lang/String;

    .line 80
    return-void

    .line 77
    :cond_0
    sget-object v0, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;->ACCEPT_EMPTY_STRING_AS_NULL_OBJECT:Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;

    invoke-virtual {p1, v0}, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;->isEnabled(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;)Z

    move-result v0

    goto :goto_0

    .line 79
    :cond_1
    invoke-virtual {p2}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public constructor <init>(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Ljava/lang/Class;)V
    .locals 1
    .param p1, "config"    # Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 69
    .local p2, "valueType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Lcom/flurry/org/codehaus/jackson/map/deser/ValueInstantiator;-><init>()V

    .line 70
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdValueInstantiator;->_cfgEmptyStringsAsObjects:Z

    .line 72
    if-nez p2, :cond_1

    const-string v0, "UNKNOWN TYPE"

    :goto_1
    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdValueInstantiator;->_valueTypeDesc:Ljava/lang/String;

    .line 73
    return-void

    .line 70
    :cond_0
    sget-object v0, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;->ACCEPT_EMPTY_STRING_AS_NULL_OBJECT:Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;

    invoke-virtual {p1, v0}, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;->isEnabled(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;)Z

    move-result v0

    goto :goto_0

    .line 72
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method protected constructor <init>(Lcom/flurry/org/codehaus/jackson/map/deser/std/StdValueInstantiator;)V
    .locals 1
    .param p1, "src"    # Lcom/flurry/org/codehaus/jackson/map/deser/std/StdValueInstantiator;

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/flurry/org/codehaus/jackson/map/deser/ValueInstantiator;-><init>()V

    .line 88
    iget-boolean v0, p1, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdValueInstantiator;->_cfgEmptyStringsAsObjects:Z

    iput-boolean v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdValueInstantiator;->_cfgEmptyStringsAsObjects:Z

    .line 89
    iget-object v0, p1, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdValueInstantiator;->_valueTypeDesc:Ljava/lang/String;

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdValueInstantiator;->_valueTypeDesc:Ljava/lang/String;

    .line 91
    iget-object v0, p1, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdValueInstantiator;->_defaultCreator:Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdValueInstantiator;->_defaultCreator:Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;

    .line 93
    iget-object v0, p1, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdValueInstantiator;->_constructorArguments:[Lcom/flurry/org/codehaus/jackson/map/deser/impl/CreatorProperty;

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdValueInstantiator;->_constructorArguments:[Lcom/flurry/org/codehaus/jackson/map/deser/impl/CreatorProperty;

    .line 94
    iget-object v0, p1, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdValueInstantiator;->_withArgsCreator:Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdValueInstantiator;->_withArgsCreator:Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;

    .line 96
    iget-object v0, p1, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdValueInstantiator;->_delegateType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdValueInstantiator;->_delegateType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    .line 97
    iget-object v0, p1, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdValueInstantiator;->_delegateCreator:Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdValueInstantiator;->_delegateCreator:Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;

    .line 99
    iget-object v0, p1, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdValueInstantiator;->_fromStringCreator:Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdValueInstantiator;->_fromStringCreator:Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;

    .line 100
    iget-object v0, p1, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdValueInstantiator;->_fromIntCreator:Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdValueInstantiator;->_fromIntCreator:Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;

    .line 101
    iget-object v0, p1, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdValueInstantiator;->_fromLongCreator:Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdValueInstantiator;->_fromLongCreator:Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;

    .line 102
    iget-object v0, p1, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdValueInstantiator;->_fromDoubleCreator:Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdValueInstantiator;->_fromDoubleCreator:Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;

    .line 103
    iget-object v0, p1, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdValueInstantiator;->_fromBooleanCreator:Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdValueInstantiator;->_fromBooleanCreator:Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;

    .line 104
    return-void
.end method


# virtual methods
.method protected _createFromStringFallbacks(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 365
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdValueInstantiator;->_fromBooleanCreator:Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;

    if-eqz v1, :cond_1

    .line 366
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 367
    .local v0, "str":Ljava/lang/String;
    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 368
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdValueInstantiator;->createFromBoolean(Z)Ljava/lang/Object;

    move-result-object v1

    .line 377
    .end local v0    # "str":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 370
    .restart local v0    # "str":Ljava/lang/String;
    :cond_0
    const-string v1, "false"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 371
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdValueInstantiator;->createFromBoolean(Z)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 376
    .end local v0    # "str":Ljava/lang/String;
    :cond_1
    iget-boolean v1, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdValueInstantiator;->_cfgEmptyStringsAsObjects:Z

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 377
    const/4 v1, 0x0

    goto :goto_0

    .line 379
    :cond_2
    new-instance v1, Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can not instantiate value of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdValueInstantiator;->getValueTypeDesc()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from JSON String; no single-String constructor/factory method"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public canCreateFromBoolean()Z
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdValueInstantiator;->_fromBooleanCreator:Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canCreateFromDouble()Z
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdValueInstantiator;->_fromDoubleCreator:Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canCreateFromInt()Z
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdValueInstantiator;->_fromIntCreator:Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canCreateFromLong()Z
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdValueInstantiator;->_fromLongCreator:Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canCreateFromObjectWith()Z
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdValueInstantiator;->_withArgsCreator:Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canCreateFromString()Z
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdValueInstantiator;->_fromStringCreator:Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canCreateUsingDefault()Z
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdValueInstantiator;->_defaultCreator:Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public configureFromBooleanCreator(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;)V
    .locals 0
    .param p1, "creator"    # Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdValueInstantiator;->_fromBooleanCreator:Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;

    .line 140
    return-void
.end method

.method public configureFromDoubleCreator(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;)V
    .locals 0
    .param p1, "creator"    # Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;

    .prologue
    .line 135
    iput-object p1, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdValueInstantiator;->_fromDoubleCreator:Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;

    .line 136
    return-void
.end method

.method public configureFromIntCreator(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;)V
    .locals 0
    .param p1, "creator"    # Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;

    .prologue
    .line 127
    iput-object p1, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdValueInstantiator;->_fromIntCreator:Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;

    .line 128
    return-void
.end method

.method public configureFromLongCreator(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;)V
    .locals 0
    .param p1, "creator"    # Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdValueInstantiator;->_fromLongCreator:Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;

    .line 132
    return-void
.end method

.method public configureFromObjectSettings(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;[Lcom/flurry/org/codehaus/jackson/map/deser/impl/CreatorProperty;)V
    .locals 0
    .param p1, "defaultCreator"    # Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;
    .param p2, "delegateCreator"    # Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;
    .param p3, "delegateType"    # Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .param p4, "withArgsCreator"    # Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;
    .param p5, "constructorArgs"    # [Lcom/flurry/org/codehaus/jackson/map/deser/impl/CreatorProperty;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdValueInstantiator;->_defaultCreator:Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;

    .line 116
    iput-object p2, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdValueInstantiator;->_delegateCreator:Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;

    .line 117
    iput-object p3, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdValueInstantiator;->_delegateType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    .line 118
    iput-object p4, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdValueInstantiator;->_withArgsCreator:Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;

    .line 119
    iput-object p5, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdValueInstantiator;->_constructorArguments:[Lcom/flurry/org/codehaus/jackson/map/deser/impl/CreatorProperty;

    .line 120
    return-void
.end method

.method public configureFromStringCreator(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;)V
    .locals 0
    .param p1, "creator"    # Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdValueInstantiator;->_fromStringCreator:Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;

    .line 124
    return-void
.end method

.method public createFromBoolean(Z)Ljava/lang/Object;
    .locals 4
    .param p1, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 322
    :try_start_0
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdValueInstantiator;->_fromBooleanCreator:Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;

    if-eqz v1, :cond_0

    .line 323
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdValueInstantiator;->_fromBooleanCreator:Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;->call1(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 325
    :catch_0
    move-exception v0

    .line 326
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdValueInstantiator;->wrapException(Ljava/lang/Throwable;)Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;

    move-result-object v1

    throw v1

    .line 328
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    new-instance v1, Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can not instantiate value of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdValueInstantiator;->getValueTypeDesc()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from JSON boolean value; no single-boolean/Boolean-arg constructor/factory method"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public createFromDouble(D)Ljava/lang/Object;
    .locals 5
    .param p1, "value"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 308
    :try_start_0
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdValueInstantiator;->_fromDoubleCreator:Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;

    if-eqz v1, :cond_0

    .line 309
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdValueInstantiator;->_fromDoubleCreator:Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;->call1(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 311
    :catch_0
    move-exception v0

    .line 312
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdValueInstantiator;->wrapException(Ljava/lang/Throwable;)Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;

    move-result-object v1

    throw v1

    .line 314
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    new-instance v1, Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can not instantiate value of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdValueInstantiator;->getValueTypeDesc()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from JSON floating-point number; no one-double/Double-arg constructor/factory method"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public createFromInt(I)Ljava/lang/Object;
    .locals 4
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 276
    :try_start_0
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdValueInstantiator;->_fromIntCreator:Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;

    if-eqz v1, :cond_0

    .line 277
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdValueInstantiator;->_fromIntCreator:Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;->call1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 281
    :goto_0
    return-object v1

    .line 280
    :cond_0
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdValueInstantiator;->_fromLongCreator:Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;

    if-eqz v1, :cond_1

    .line 281
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdValueInstantiator;->_fromLongCreator:Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;

    int-to-long v2, p1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;->call1(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 283
    :catch_0
    move-exception v0

    .line 284
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdValueInstantiator;->wrapException(Ljava/lang/Throwable;)Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;

    move-result-object v1

    throw v1

    .line 286
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    new-instance v1, Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can not instantiate value of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdValueInstantiator;->getValueTypeDesc()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from JSON integral number; no single-int-arg constructor/factory method"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public createFromLong(J)Ljava/lang/Object;
    .locals 5
    .param p1, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 294
    :try_start_0
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdValueInstantiator;->_fromLongCreator:Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;

    if-eqz v1, :cond_0

    .line 295
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdValueInstantiator;->_fromLongCreator:Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;->call1(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 297
    :catch_0
    move-exception v0

    .line 298
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdValueInstantiator;->wrapException(Ljava/lang/Throwable;)Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;

    move-result-object v1

    throw v1

    .line 300
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    new-instance v1, Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can not instantiate value of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdValueInstantiator;->getValueTypeDesc()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from JSON long integral number; no single-long-arg constructor/factory method"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public createFromObjectWith([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 224
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdValueInstantiator;->_withArgsCreator:Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;

    if-nez v1, :cond_0

    .line 225
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No with-args constructor for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdValueInstantiator;->getValueTypeDesc()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 228
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdValueInstantiator;->_withArgsCreator:Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;

    invoke-virtual {v1, p1}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;->call([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    return-object v1

    .line 229
    :catch_0
    move-exception v0

    .line 230
    .local v0, "e":Ljava/lang/ExceptionInInitializerError;
    invoke-virtual {p0, v0}, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdValueInstantiator;->wrapException(Ljava/lang/Throwable;)Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;

    move-result-object v1

    throw v1

    .line 231
    .end local v0    # "e":Ljava/lang/ExceptionInInitializerError;
    :catch_1
    move-exception v0

    .line 232
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdValueInstantiator;->wrapException(Ljava/lang/Throwable;)Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;

    move-result-object v1

    throw v1
.end method

.method public createFromString(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 261
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdValueInstantiator;->_fromStringCreator:Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;

    if-eqz v1, :cond_0

    .line 263
    :try_start_0
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdValueInstantiator;->_fromStringCreator:Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;

    invoke-virtual {v1, p1}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;->call1(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 268
    :goto_0
    return-object v1

    .line 264
    :catch_0
    move-exception v0

    .line 265
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdValueInstantiator;->wrapException(Ljava/lang/Throwable;)Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;

    move-result-object v1

    throw v1

    .line 268
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    invoke-virtual {p0, p1}, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdValueInstantiator;->_createFromStringFallbacks(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public createUsingDefault()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 208
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdValueInstantiator;->_defaultCreator:Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;

    if-nez v1, :cond_0

    .line 209
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No default constructor for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdValueInstantiator;->getValueTypeDesc()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 212
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdValueInstantiator;->_defaultCreator:Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;

    invoke-virtual {v1}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;->call()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    return-object v1

    .line 213
    :catch_0
    move-exception v0

    .line 214
    .local v0, "e":Ljava/lang/ExceptionInInitializerError;
    invoke-virtual {p0, v0}, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdValueInstantiator;->wrapException(Ljava/lang/Throwable;)Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;

    move-result-object v1

    throw v1

    .line 215
    .end local v0    # "e":Ljava/lang/ExceptionInInitializerError;
    :catch_1
    move-exception v0

    .line 216
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdValueInstantiator;->wrapException(Ljava/lang/Throwable;)Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;

    move-result-object v1

    throw v1
.end method

.method public createUsingDelegate(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "delegate"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 240
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdValueInstantiator;->_delegateCreator:Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;

    if-nez v1, :cond_0

    .line 241
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No delegate constructor for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdValueInstantiator;->getValueTypeDesc()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 244
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdValueInstantiator;->_delegateCreator:Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;

    invoke-virtual {v1, p1}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;->call1(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    return-object v1

    .line 245
    :catch_0
    move-exception v0

    .line 246
    .local v0, "e":Ljava/lang/ExceptionInInitializerError;
    invoke-virtual {p0, v0}, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdValueInstantiator;->wrapException(Ljava/lang/Throwable;)Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;

    move-result-object v1

    throw v1

    .line 247
    .end local v0    # "e":Ljava/lang/ExceptionInInitializerError;
    :catch_1
    move-exception v0

    .line 248
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdValueInstantiator;->wrapException(Ljava/lang/Throwable;)Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;

    move-result-object v1

    throw v1
.end method

.method public getDefaultCreator()Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdValueInstantiator;->_defaultCreator:Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;

    return-object v0
.end method

.method public getDelegateCreator()Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdValueInstantiator;->_delegateCreator:Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;

    return-object v0
.end method

.method public getDelegateType()Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdValueInstantiator;->_delegateType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    return-object v0
.end method

.method public getFromObjectArguments()[Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdValueInstantiator;->_constructorArguments:[Lcom/flurry/org/codehaus/jackson/map/deser/impl/CreatorProperty;

    return-object v0
.end method

.method public getValueTypeDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdValueInstantiator;->_valueTypeDesc:Ljava/lang/String;

    return-object v0
.end method

.method public getWithArgsCreator()Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdValueInstantiator;->_withArgsCreator:Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedWithParams;

    return-object v0
.end method

.method protected wrapException(Ljava/lang/Throwable;)Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;
    .locals 3
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 385
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 386
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    goto :goto_0

    .line 388
    :cond_0
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Instantiation of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdValueInstantiator;->getValueTypeDesc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " value failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method
