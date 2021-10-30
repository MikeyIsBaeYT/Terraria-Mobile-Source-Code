.class public abstract Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;
.super Ljava/lang/Object;
.source "SettableBeanProperty.java"

# interfaces
.implements Lcom/flurry/org/codehaus/jackson/map/BeanProperty;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty$NullProvider;,
        Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty$InnerClassProperty;,
        Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty$ManagedReferenceProperty;,
        Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty$FieldProperty;,
        Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty$SetterlessProperty;,
        Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty$MethodProperty;
    }
.end annotation


# instance fields
.field protected final _contextAnnotations:Lcom/flurry/org/codehaus/jackson/map/util/Annotations;

.field protected _managedReferenceName:Ljava/lang/String;

.field protected _nullProvider:Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty$NullProvider;

.field protected final _propName:Ljava/lang/String;

.field protected _propertyIndex:I

.field protected final _type:Lcom/flurry/org/codehaus/jackson/type/JavaType;

.field protected _valueDeserializer:Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected _valueTypeDeserializer:Lcom/flurry/org/codehaus/jackson/map/TypeDeserializer;


# direct methods
.method protected constructor <init>(Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;)V
    .locals 1
    .param p1, "src"    # Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    const/4 v0, -0x1

    iput v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;->_propertyIndex:I

    .line 113
    iget-object v0, p1, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;->_propName:Ljava/lang/String;

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;->_propName:Ljava/lang/String;

    .line 114
    iget-object v0, p1, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;->_type:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;->_type:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    .line 115
    iget-object v0, p1, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;->_contextAnnotations:Lcom/flurry/org/codehaus/jackson/map/util/Annotations;

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;->_contextAnnotations:Lcom/flurry/org/codehaus/jackson/map/util/Annotations;

    .line 116
    iget-object v0, p1, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;->_valueDeserializer:Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;->_valueDeserializer:Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;

    .line 117
    iget-object v0, p1, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;->_valueTypeDeserializer:Lcom/flurry/org/codehaus/jackson/map/TypeDeserializer;

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;->_valueTypeDeserializer:Lcom/flurry/org/codehaus/jackson/map/TypeDeserializer;

    .line 118
    iget-object v0, p1, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;->_nullProvider:Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty$NullProvider;

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;->_nullProvider:Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty$NullProvider;

    .line 119
    iget-object v0, p1, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;->_managedReferenceName:Ljava/lang/String;

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;->_managedReferenceName:Ljava/lang/String;

    .line 120
    iget v0, p1, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;->_propertyIndex:I

    iput v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;->_propertyIndex:I

    .line 121
    return-void
.end method

.method protected constructor <init>(Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;)V
    .locals 3
    .param p1, "src"    # Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;",
            "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "deser":Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer<Ljava/lang/Object;>;"
    const/4 v1, 0x0

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    const/4 v2, -0x1

    iput v2, p0, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;->_propertyIndex:I

    .line 130
    iget-object v2, p1, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;->_propName:Ljava/lang/String;

    iput-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;->_propName:Ljava/lang/String;

    .line 131
    iget-object v2, p1, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;->_type:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    iput-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;->_type:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    .line 132
    iget-object v2, p1, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;->_contextAnnotations:Lcom/flurry/org/codehaus/jackson/map/util/Annotations;

    iput-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;->_contextAnnotations:Lcom/flurry/org/codehaus/jackson/map/util/Annotations;

    .line 133
    iget-object v2, p1, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;->_valueTypeDeserializer:Lcom/flurry/org/codehaus/jackson/map/TypeDeserializer;

    iput-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;->_valueTypeDeserializer:Lcom/flurry/org/codehaus/jackson/map/TypeDeserializer;

    .line 134
    iget-object v2, p1, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;->_managedReferenceName:Ljava/lang/String;

    iput-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;->_managedReferenceName:Ljava/lang/String;

    .line 135
    iget v2, p1, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;->_propertyIndex:I

    iput v2, p0, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;->_propertyIndex:I

    .line 137
    iput-object p2, p0, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;->_valueDeserializer:Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;

    .line 138
    if-nez p2, :cond_0

    .line 139
    iput-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;->_nullProvider:Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty$NullProvider;

    .line 144
    :goto_0
    return-void

    .line 141
    :cond_0
    invoke-virtual {p2}, Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;->getNullValue()Ljava/lang/Object;

    move-result-object v0

    .line 142
    .local v0, "nvl":Ljava/lang/Object;
    if-nez v0, :cond_1

    :goto_1
    iput-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;->_nullProvider:Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty$NullProvider;

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty$NullProvider;

    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;->_type:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    invoke-direct {v1, v2, v0}, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty$NullProvider;-><init>(Lcom/flurry/org/codehaus/jackson/type/JavaType;Ljava/lang/Object;)V

    goto :goto_1
.end method

.method protected constructor <init>(Ljava/lang/String;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/TypeDeserializer;Lcom/flurry/org/codehaus/jackson/map/util/Annotations;)V
    .locals 1
    .param p1, "propName"    # Ljava/lang/String;
    .param p2, "type"    # Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .param p3, "typeDeser"    # Lcom/flurry/org/codehaus/jackson/map/TypeDeserializer;
    .param p4, "contextAnnotations"    # Lcom/flurry/org/codehaus/jackson/map/util/Annotations;

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    const/4 v0, -0x1

    iput v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;->_propertyIndex:I

    .line 96
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 97
    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;->_propName:Ljava/lang/String;

    .line 101
    :goto_0
    iput-object p2, p0, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;->_type:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    .line 102
    iput-object p4, p0, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;->_contextAnnotations:Lcom/flurry/org/codehaus/jackson/map/util/Annotations;

    .line 103
    iput-object p3, p0, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;->_valueTypeDeserializer:Lcom/flurry/org/codehaus/jackson/map/TypeDeserializer;

    .line 104
    return-void

    .line 99
    :cond_1
    sget-object v0, Lcom/flurry/org/codehaus/jackson/util/InternCache;->instance:Lcom/flurry/org/codehaus/jackson/util/InternCache;

    invoke-virtual {v0, p1}, Lcom/flurry/org/codehaus/jackson/util/InternCache;->intern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;->_propName:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method protected _throwAsIOE(Ljava/lang/Exception;)Ljava/io/IOException;
    .locals 4
    .param p1, "e"    # Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 334
    instance-of v1, p1, Ljava/io/IOException;

    if-eqz v1, :cond_0

    .line 335
    check-cast p1, Ljava/io/IOException;

    .end local p1    # "e":Ljava/lang/Exception;
    throw p1

    .line 337
    .restart local p1    # "e":Ljava/lang/Exception;
    :cond_0
    instance-of v1, p1, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_1

    .line 338
    check-cast p1, Ljava/lang/RuntimeException;

    .end local p1    # "e":Ljava/lang/Exception;
    throw p1

    .line 341
    .restart local p1    # "e":Ljava/lang/Exception;
    :cond_1
    move-object v0, p1

    .line 342
    .local v0, "th":Ljava/lang/Throwable;
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 343
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_0

    .line 345
    :cond_2
    new-instance v1, Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v0}, Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;-><init>(Ljava/lang/String;Lcom/flurry/org/codehaus/jackson/JsonLocation;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected _throwAsIOE(Ljava/lang/Exception;Ljava/lang/Object;)V
    .locals 6
    .param p1, "e"    # Ljava/lang/Exception;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 315
    instance-of v3, p1, Ljava/lang/IllegalArgumentException;

    if-eqz v3, :cond_2

    .line 316
    if-nez p2, :cond_0

    const-string v0, "[NULL]"

    .line 317
    .local v0, "actType":Ljava/lang/String;
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Problem deserializing property \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;->getPropertyName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 318
    .local v1, "msg":Ljava/lang/StringBuilder;
    const-string v3, "\' (expected type: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;->getType()Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 319
    const-string v3, "; actual type: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 321
    .local v2, "origMsg":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 322
    const-string v3, ", problem: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    :goto_1
    new-instance v3, Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5, p1}, Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;-><init>(Ljava/lang/String;Lcom/flurry/org/codehaus/jackson/JsonLocation;Ljava/lang/Throwable;)V

    throw v3

    .line 316
    .end local v0    # "actType":Ljava/lang/String;
    .end local v1    # "msg":Ljava/lang/StringBuilder;
    .end local v2    # "origMsg":Ljava/lang/String;
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 324
    .restart local v0    # "actType":Ljava/lang/String;
    .restart local v1    # "msg":Ljava/lang/StringBuilder;
    .restart local v2    # "origMsg":Ljava/lang/String;
    :cond_1
    const-string v3, " (no error message provided)"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 328
    .end local v0    # "actType":Ljava/lang/String;
    .end local v1    # "msg":Ljava/lang/StringBuilder;
    .end local v2    # "origMsg":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0, p1}, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;->_throwAsIOE(Ljava/lang/Exception;)Ljava/io/IOException;

    .line 329
    return-void
.end method

.method public assignIndex(I)V
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 172
    iget v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;->_propertyIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 173
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Property \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' already had index ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;->_propertyIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "), trying to assign "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 175
    :cond_0
    iput p1, p0, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;->_propertyIndex:I

    .line 176
    return-void
.end method

.method public final deserialize(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;
    .locals 3
    .param p1, "jp"    # Lcom/flurry/org/codehaus/jackson/JsonParser;
    .param p2, "ctxt"    # Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 292
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getCurrentToken()Lcom/flurry/org/codehaus/jackson/JsonToken;

    move-result-object v0

    .line 293
    .local v0, "t":Lcom/flurry/org/codehaus/jackson/JsonToken;
    sget-object v1, Lcom/flurry/org/codehaus/jackson/JsonToken;->VALUE_NULL:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_1

    .line 294
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;->_nullProvider:Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty$NullProvider;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 299
    :goto_0
    return-object v1

    .line 294
    :cond_0
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;->_nullProvider:Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty$NullProvider;

    invoke-virtual {v1, p2}, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty$NullProvider;->nullValue(Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 296
    :cond_1
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;->_valueTypeDeserializer:Lcom/flurry/org/codehaus/jackson/map/TypeDeserializer;

    if-eqz v1, :cond_2

    .line 297
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;->_valueDeserializer:Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;

    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;->_valueTypeDeserializer:Lcom/flurry/org/codehaus/jackson/map/TypeDeserializer;

    invoke-virtual {v1, p1, p2, v2}, Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;->deserializeWithType(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;Lcom/flurry/org/codehaus/jackson/map/TypeDeserializer;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 299
    :cond_2
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;->_valueDeserializer:Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;

    invoke-virtual {v1, p1, p2}, Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;->deserialize(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public abstract deserializeAndSet(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation
.end method

.method public abstract getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class",
            "<TA;>;)TA;"
        }
    .end annotation
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
    .line 198
    .local p1, "acls":Ljava/lang/Class;, "Ljava/lang/Class<TA;>;"
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;->_contextAnnotations:Lcom/flurry/org/codehaus/jackson/map/util/Annotations;

    invoke-interface {v0, p1}, Lcom/flurry/org/codehaus/jackson/map/util/Annotations;->get(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method protected final getDeclaringClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 208
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;->getMember()Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public getInjectableValueId()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 259
    const/4 v0, 0x0

    return-object v0
.end method

.method public getManagedReferenceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;->_managedReferenceName:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getMember()Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;->_propName:Ljava/lang/String;

    return-object v0
.end method

.method public getPropertyIndex()I
    .locals 1

    .prologue
    .line 245
    iget v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;->_propertyIndex:I

    return v0
.end method

.method public getPropertyName()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 215
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;->_propName:Ljava/lang/String;

    return-object v0
.end method

.method public getProperytIndex()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 251
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;->getPropertyIndex()I

    move-result v0

    return v0
.end method

.method public getType()Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;->_type:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    return-object v0
.end method

.method public getValueDeserializer()Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 229
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;->_valueDeserializer:Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;

    return-object v0
.end method

.method public getValueTypeDeserializer()Lcom/flurry/org/codehaus/jackson/map/TypeDeserializer;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;->_valueTypeDeserializer:Lcom/flurry/org/codehaus/jackson/map/TypeDeserializer;

    return-object v0
.end method

.method public hasValueDeserializer()Z
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;->_valueDeserializer:Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasValueTypeDeserializer()Z
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;->_valueTypeDeserializer:Lcom/flurry/org/codehaus/jackson/map/TypeDeserializer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract set(Ljava/lang/Object;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public setManagedReferenceName(Ljava/lang/String;)V
    .locals 0
    .param p1, "n"    # Ljava/lang/String;

    .prologue
    .line 163
    iput-object p1, p0, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;->_managedReferenceName:Ljava/lang/String;

    .line 164
    return-void
.end method

.method public setValueDeserializer(Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 149
    .local p1, "deser":Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer<Ljava/lang/Object;>;"
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;->_valueDeserializer:Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;

    if-eqz v1, :cond_0

    .line 150
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Already had assigned deserializer for property \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' (class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 152
    :cond_0
    iput-object p1, p0, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;->_valueDeserializer:Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;

    .line 153
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;->_valueDeserializer:Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;

    invoke-virtual {v1}, Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;->getNullValue()Ljava/lang/Object;

    move-result-object v0

    .line 154
    .local v0, "nvl":Ljava/lang/Object;
    if-nez v0, :cond_1

    const/4 v1, 0x0

    :goto_0
    iput-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;->_nullProvider:Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty$NullProvider;

    .line 155
    return-void

    .line 154
    :cond_1
    new-instance v1, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty$NullProvider;

    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;->_type:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    invoke-direct {v1, v2, v0}, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty$NullProvider;-><init>(Lcom/flurry/org/codehaus/jackson/type/JavaType;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 348
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[property \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\']"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract withValueDeserializer(Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;)Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;"
        }
    .end annotation
.end method
