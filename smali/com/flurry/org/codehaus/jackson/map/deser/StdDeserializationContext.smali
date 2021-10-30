.class public Lcom/flurry/org/codehaus/jackson/map/deser/StdDeserializationContext;
.super Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;
.source "StdDeserializationContext.java"


# static fields
.field static final MAX_ERROR_STR_LEN:I = 0x1f4


# instance fields
.field protected _arrayBuilders:Lcom/flurry/org/codehaus/jackson/map/util/ArrayBuilders;

.field protected _dateFormat:Ljava/text/DateFormat;

.field protected final _deserProvider:Lcom/flurry/org/codehaus/jackson/map/DeserializerProvider;

.field protected final _injectableValues:Lcom/flurry/org/codehaus/jackson/map/InjectableValues;

.field protected _objectBuffer:Lcom/flurry/org/codehaus/jackson/map/util/ObjectBuffer;

.field protected _parser:Lcom/flurry/org/codehaus/jackson/JsonParser;


# direct methods
.method public constructor <init>(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializerProvider;Lcom/flurry/org/codehaus/jackson/map/InjectableValues;)V
    .locals 0
    .param p1, "config"    # Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;
    .param p2, "jp"    # Lcom/flurry/org/codehaus/jackson/JsonParser;
    .param p3, "prov"    # Lcom/flurry/org/codehaus/jackson/map/DeserializerProvider;
    .param p4, "injectableValues"    # Lcom/flurry/org/codehaus/jackson/map/InjectableValues;

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;-><init>(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;)V

    .line 69
    iput-object p2, p0, Lcom/flurry/org/codehaus/jackson/map/deser/StdDeserializationContext;->_parser:Lcom/flurry/org/codehaus/jackson/JsonParser;

    .line 70
    iput-object p3, p0, Lcom/flurry/org/codehaus/jackson/map/deser/StdDeserializationContext;->_deserProvider:Lcom/flurry/org/codehaus/jackson/map/DeserializerProvider;

    .line 71
    iput-object p4, p0, Lcom/flurry/org/codehaus/jackson/map/deser/StdDeserializationContext;->_injectableValues:Lcom/flurry/org/codehaus/jackson/map/InjectableValues;

    .line 72
    return-void
.end method


# virtual methods
.method protected _calcName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 304
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 305
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/flurry/org/codehaus/jackson/map/deser/StdDeserializationContext;->_calcName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 307
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected _desc(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "desc"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0x1f4

    .line 321
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v2, :cond_0

    .line 322
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]...["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit16 v1, v1, -0x1f4

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 324
    :cond_0
    return-object p1
.end method

.method protected _valueDesc()Ljava/lang/String;
    .locals 2

    .prologue
    .line 313
    :try_start_0
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/deser/StdDeserializationContext;->_parser:Lcom/flurry/org/codehaus/jackson/JsonParser;

    invoke-virtual {v1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/flurry/org/codehaus/jackson/map/deser/StdDeserializationContext;->_desc(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 315
    :goto_0
    return-object v1

    .line 314
    :catch_0
    move-exception v0

    .line 315
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "[N/A]"

    goto :goto_0
.end method

.method public constructCalendar(Ljava/util/Date;)Ljava/util/Calendar;
    .locals 1
    .param p1, "d"    # Ljava/util/Date;

    .prologue
    .line 168
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 169
    .local v0, "c":Ljava/util/Calendar;
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 170
    return-object v0
.end method

.method protected determineClassName(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "instance"    # Ljava/lang/Object;

    .prologue
    .line 293
    invoke-static {p1}, Lcom/flurry/org/codehaus/jackson/map/util/ClassUtil;->getClassDescription(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public findInjectableValue(Ljava/lang/Object;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "valueId"    # Ljava/lang/Object;
    .param p2, "forProperty"    # Lcom/flurry/org/codehaus/jackson/map/BeanProperty;
    .param p3, "beanInstance"    # Ljava/lang/Object;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/StdDeserializationContext;->_injectableValues:Lcom/flurry/org/codehaus/jackson/map/InjectableValues;

    if-nez v0, :cond_0

    .line 101
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No \'injectableValues\' configured, can not inject value with id ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/StdDeserializationContext;->_injectableValues:Lcom/flurry/org/codehaus/jackson/map/InjectableValues;

    invoke-virtual {v0, p1, p0, p2, p3}, Lcom/flurry/org/codehaus/jackson/map/InjectableValues;->findInjectableValue(Ljava/lang/Object;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getArrayBuilders()Lcom/flurry/org/codehaus/jackson/map/util/ArrayBuilders;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/StdDeserializationContext;->_arrayBuilders:Lcom/flurry/org/codehaus/jackson/map/util/ArrayBuilders;

    if-nez v0, :cond_0

    .line 140
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/util/ArrayBuilders;

    invoke-direct {v0}, Lcom/flurry/org/codehaus/jackson/map/util/ArrayBuilders;-><init>()V

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/StdDeserializationContext;->_arrayBuilders:Lcom/flurry/org/codehaus/jackson/map/util/ArrayBuilders;

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/StdDeserializationContext;->_arrayBuilders:Lcom/flurry/org/codehaus/jackson/map/util/ArrayBuilders;

    return-object v0
.end method

.method protected getDateFormat()Ljava/text/DateFormat;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/StdDeserializationContext;->_dateFormat:Ljava/text/DateFormat;

    if-nez v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/StdDeserializationContext;->_config:Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;

    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;->getDateFormat()Ljava/text/DateFormat;

    move-result-object v0

    invoke-virtual {v0}, Ljava/text/DateFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/DateFormat;

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/StdDeserializationContext;->_dateFormat:Ljava/text/DateFormat;

    .line 288
    :cond_0
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/StdDeserializationContext;->_dateFormat:Ljava/text/DateFormat;

    return-object v0
.end method

.method public getDeserializerProvider()Lcom/flurry/org/codehaus/jackson/map/DeserializerProvider;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/StdDeserializationContext;->_deserProvider:Lcom/flurry/org/codehaus/jackson/map/DeserializerProvider;

    return-object v0
.end method

.method public getParser()Lcom/flurry/org/codehaus/jackson/JsonParser;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/StdDeserializationContext;->_parser:Lcom/flurry/org/codehaus/jackson/JsonParser;

    return-object v0
.end method

.method public handleUnknownProperty(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;Ljava/lang/Object;Ljava/lang/String;)Z
    .locals 3
    .param p1, "jp"    # Lcom/flurry/org/codehaus/jackson/JsonParser;
    .param p3, "instanceOrClass"    # Ljava/lang/Object;
    .param p4, "propName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/JsonParser;",
            "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer",
            "<*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 188
    .local p2, "deser":Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer<*>;"
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/deser/StdDeserializationContext;->_config:Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;

    invoke-virtual {v2}, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;->getProblemHandlers()Lcom/flurry/org/codehaus/jackson/map/util/LinkedNode;

    move-result-object v0

    .line 189
    .local v0, "h":Lcom/flurry/org/codehaus/jackson/map/util/LinkedNode;, "Lcom/flurry/org/codehaus/jackson/map/util/LinkedNode<Lcom/flurry/org/codehaus/jackson/map/DeserializationProblemHandler;>;"
    if-eqz v0, :cond_2

    .line 193
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/deser/StdDeserializationContext;->_parser:Lcom/flurry/org/codehaus/jackson/JsonParser;

    .line 194
    .local v1, "oldParser":Lcom/flurry/org/codehaus/jackson/JsonParser;
    iput-object p1, p0, Lcom/flurry/org/codehaus/jackson/map/deser/StdDeserializationContext;->_parser:Lcom/flurry/org/codehaus/jackson/JsonParser;

    .line 196
    :goto_0
    if-eqz v0, :cond_1

    .line 198
    :try_start_0
    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/map/util/LinkedNode;->value()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/flurry/org/codehaus/jackson/map/DeserializationProblemHandler;

    invoke-virtual {v2, p0, p2, p3, p4}, Lcom/flurry/org/codehaus/jackson/map/DeserializationProblemHandler;->handleUnknownProperty(Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;Ljava/lang/Object;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    .line 199
    const/4 v2, 0x1

    .line 204
    iput-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/deser/StdDeserializationContext;->_parser:Lcom/flurry/org/codehaus/jackson/JsonParser;

    .line 207
    .end local v1    # "oldParser":Lcom/flurry/org/codehaus/jackson/JsonParser;
    :goto_1
    return v2

    .line 201
    .restart local v1    # "oldParser":Lcom/flurry/org/codehaus/jackson/JsonParser;
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/map/util/LinkedNode;->next()Lcom/flurry/org/codehaus/jackson/map/util/LinkedNode;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 204
    :cond_1
    iput-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/deser/StdDeserializationContext;->_parser:Lcom/flurry/org/codehaus/jackson/JsonParser;

    .line 207
    .end local v1    # "oldParser":Lcom/flurry/org/codehaus/jackson/JsonParser;
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 204
    .restart local v1    # "oldParser":Lcom/flurry/org/codehaus/jackson/JsonParser;
    :catchall_0
    move-exception v2

    iput-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/deser/StdDeserializationContext;->_parser:Lcom/flurry/org/codehaus/jackson/JsonParser;

    throw v2
.end method

.method public instantiationException(Ljava/lang/Class;Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;
    .locals 3
    .param p2, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;"
        }
    .end annotation

    .prologue
    .line 233
    .local p1, "instClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/StdDeserializationContext;->_parser:Lcom/flurry/org/codehaus/jackson/JsonParser;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not construct instance of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", problem: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;->from(Lcom/flurry/org/codehaus/jackson/JsonParser;Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;

    move-result-object v0

    return-object v0
.end method

.method public instantiationException(Ljava/lang/Class;Ljava/lang/Throwable;)Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;
    .locals 3
    .param p2, "t"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Throwable;",
            ")",
            "Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;"
        }
    .end annotation

    .prologue
    .line 225
    .local p1, "instClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/StdDeserializationContext;->_parser:Lcom/flurry/org/codehaus/jackson/JsonParser;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not construct instance of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", problem: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;->from(Lcom/flurry/org/codehaus/jackson/JsonParser;Ljava/lang/String;Ljava/lang/Throwable;)Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;

    move-result-object v0

    return-object v0
.end method

.method public final leaseObjectBuffer()Lcom/flurry/org/codehaus/jackson/map/util/ObjectBuffer;
    .locals 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/StdDeserializationContext;->_objectBuffer:Lcom/flurry/org/codehaus/jackson/map/util/ObjectBuffer;

    .line 116
    .local v0, "buf":Lcom/flurry/org/codehaus/jackson/map/util/ObjectBuffer;
    if-nez v0, :cond_0

    .line 117
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/util/ObjectBuffer;

    .end local v0    # "buf":Lcom/flurry/org/codehaus/jackson/map/util/ObjectBuffer;
    invoke-direct {v0}, Lcom/flurry/org/codehaus/jackson/map/util/ObjectBuffer;-><init>()V

    .line 121
    .restart local v0    # "buf":Lcom/flurry/org/codehaus/jackson/map/util/ObjectBuffer;
    :goto_0
    return-object v0

    .line 119
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/deser/StdDeserializationContext;->_objectBuffer:Lcom/flurry/org/codehaus/jackson/map/util/ObjectBuffer;

    goto :goto_0
.end method

.method public mappingException(Ljava/lang/Class;)Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;"
        }
    .end annotation

    .prologue
    .line 212
    .local p1, "targetClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/StdDeserializationContext;->_parser:Lcom/flurry/org/codehaus/jackson/JsonParser;

    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getCurrentToken()Lcom/flurry/org/codehaus/jackson/JsonToken;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/flurry/org/codehaus/jackson/map/deser/StdDeserializationContext;->mappingException(Ljava/lang/Class;Lcom/flurry/org/codehaus/jackson/JsonToken;)Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;

    move-result-object v0

    return-object v0
.end method

.method public mappingException(Ljava/lang/Class;Lcom/flurry/org/codehaus/jackson/JsonToken;)Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;
    .locals 4
    .param p2, "token"    # Lcom/flurry/org/codehaus/jackson/JsonToken;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/flurry/org/codehaus/jackson/JsonToken;",
            ")",
            "Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;"
        }
    .end annotation

    .prologue
    .line 218
    .local p1, "targetClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0, p1}, Lcom/flurry/org/codehaus/jackson/map/deser/StdDeserializationContext;->_calcName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 219
    .local v0, "clsName":Ljava/lang/String;
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/deser/StdDeserializationContext;->_parser:Lcom/flurry/org/codehaus/jackson/JsonParser;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can not deserialize instance of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " out of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " token"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;->from(Lcom/flurry/org/codehaus/jackson/JsonParser;Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;

    move-result-object v1

    return-object v1
.end method

.method public parseDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 3
    .param p1, "dateStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 156
    :try_start_0
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/map/deser/StdDeserializationContext;->getDateFormat()Ljava/text/DateFormat;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 157
    :catch_0
    move-exception v0

    .line 158
    .local v0, "pex":Ljava/text/ParseException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final returnObjectBuffer(Lcom/flurry/org/codehaus/jackson/map/util/ObjectBuffer;)V
    .locals 2
    .param p1, "buf"    # Lcom/flurry/org/codehaus/jackson/map/util/ObjectBuffer;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/StdDeserializationContext;->_objectBuffer:Lcom/flurry/org/codehaus/jackson/map/util/ObjectBuffer;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/map/util/ObjectBuffer;->initialCapacity()I

    move-result v0

    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/deser/StdDeserializationContext;->_objectBuffer:Lcom/flurry/org/codehaus/jackson/map/util/ObjectBuffer;

    invoke-virtual {v1}, Lcom/flurry/org/codehaus/jackson/map/util/ObjectBuffer;->initialCapacity()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 132
    :cond_0
    iput-object p1, p0, Lcom/flurry/org/codehaus/jackson/map/deser/StdDeserializationContext;->_objectBuffer:Lcom/flurry/org/codehaus/jackson/map/util/ObjectBuffer;

    .line 134
    :cond_1
    return-void
.end method

.method public unknownFieldException(Ljava/lang/Object;Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;
    .locals 1
    .param p1, "instanceOrClass"    # Ljava/lang/Object;
    .param p2, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 267
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/StdDeserializationContext;->_parser:Lcom/flurry/org/codehaus/jackson/JsonParser;

    invoke-static {v0, p1, p2}, Lcom/flurry/org/codehaus/jackson/map/exc/UnrecognizedPropertyException;->from(Lcom/flurry/org/codehaus/jackson/JsonParser;Ljava/lang/Object;Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/map/exc/UnrecognizedPropertyException;

    move-result-object v0

    return-object v0
.end method

.method public unknownTypeException(Lcom/flurry/org/codehaus/jackson/type/JavaType;Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;
    .locals 3
    .param p1, "type"    # Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .param p2, "id"    # Ljava/lang/String;

    .prologue
    .line 273
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/StdDeserializationContext;->_parser:Lcom/flurry/org/codehaus/jackson/JsonParser;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not resolve type id \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' into a subtype of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;->from(Lcom/flurry/org/codehaus/jackson/JsonParser;Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;

    move-result-object v0

    return-object v0
.end method

.method public weirdKeyException(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;
    .locals 3
    .param p2, "keyValue"    # Ljava/lang/String;
    .param p3, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;"
        }
    .end annotation

    .prologue
    .line 255
    .local p1, "keyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/StdDeserializationContext;->_parser:Lcom/flurry/org/codehaus/jackson/JsonParser;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not construct Map key of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from String \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, p2}, Lcom/flurry/org/codehaus/jackson/map/deser/StdDeserializationContext;->_desc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;->from(Lcom/flurry/org/codehaus/jackson/JsonParser;Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;

    move-result-object v0

    return-object v0
.end method

.method public weirdNumberException(Ljava/lang/Class;Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;
    .locals 3
    .param p2, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;"
        }
    .end annotation

    .prologue
    .line 249
    .local p1, "instClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/StdDeserializationContext;->_parser:Lcom/flurry/org/codehaus/jackson/JsonParser;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not construct instance of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from number value ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/map/deser/StdDeserializationContext;->_valueDesc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;->from(Lcom/flurry/org/codehaus/jackson/JsonParser;Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;

    move-result-object v0

    return-object v0
.end method

.method public weirdStringException(Ljava/lang/Class;Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;
    .locals 3
    .param p2, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;"
        }
    .end annotation

    .prologue
    .line 243
    .local p1, "instClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/StdDeserializationContext;->_parser:Lcom/flurry/org/codehaus/jackson/JsonParser;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not construct instance of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from String value \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/map/deser/StdDeserializationContext;->_valueDesc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\': "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;->from(Lcom/flurry/org/codehaus/jackson/JsonParser;Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;

    move-result-object v0

    return-object v0
.end method

.method public wrongTokenException(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/JsonToken;Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;
    .locals 2
    .param p1, "jp"    # Lcom/flurry/org/codehaus/jackson/JsonParser;
    .param p2, "expToken"    # Lcom/flurry/org/codehaus/jackson/JsonToken;
    .param p3, "msg"    # Ljava/lang/String;

    .prologue
    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected token ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getCurrentToken()Lcom/flurry/org/codehaus/jackson/JsonToken;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "), expected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;->from(Lcom/flurry/org/codehaus/jackson/JsonParser;Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;

    move-result-object v0

    return-object v0
.end method
