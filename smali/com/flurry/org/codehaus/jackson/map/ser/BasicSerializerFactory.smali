.class public abstract Lcom/flurry/org/codehaus/jackson/map/ser/BasicSerializerFactory;
.super Lcom/flurry/org/codehaus/jackson/map/SerializerFactory;
.source "BasicSerializerFactory.java"


# static fields
.field protected static final _arraySerializers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer",
            "<*>;>;"
        }
    .end annotation
.end field

.field protected static final _concrete:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer",
            "<*>;>;"
        }
    .end annotation
.end field

.field protected static final _concreteLazy:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer",
            "<*>;>;>;"
        }
    .end annotation
.end field


# instance fields
.field protected optionalHandlers:Lcom/flurry/org/codehaus/jackson/map/ext/OptionalHandlerFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .prologue
    .line 65
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    sput-object v8, Lcom/flurry/org/codehaus/jackson/map/ser/BasicSerializerFactory;->_concrete:Ljava/util/HashMap;

    .line 75
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    sput-object v8, Lcom/flurry/org/codehaus/jackson/map/ser/BasicSerializerFactory;->_concreteLazy:Ljava/util/HashMap;

    .line 82
    sget-object v8, Lcom/flurry/org/codehaus/jackson/map/ser/BasicSerializerFactory;->_concrete:Ljava/util/HashMap;

    const-class v9, Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lcom/flurry/org/codehaus/jackson/map/ser/std/StringSerializer;

    invoke-direct {v10}, Lcom/flurry/org/codehaus/jackson/map/ser/std/StringSerializer;-><init>()V

    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v6, Lcom/flurry/org/codehaus/jackson/map/ser/std/ToStringSerializer;->instance:Lcom/flurry/org/codehaus/jackson/map/ser/std/ToStringSerializer;

    .line 84
    .local v6, "sls":Lcom/flurry/org/codehaus/jackson/map/ser/std/ToStringSerializer;
    sget-object v8, Lcom/flurry/org/codehaus/jackson/map/ser/BasicSerializerFactory;->_concrete:Ljava/util/HashMap;

    const-class v9, Ljava/lang/StringBuffer;

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v8, Lcom/flurry/org/codehaus/jackson/map/ser/BasicSerializerFactory;->_concrete:Ljava/util/HashMap;

    const-class v9, Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v8, Lcom/flurry/org/codehaus/jackson/map/ser/BasicSerializerFactory;->_concrete:Ljava/util/HashMap;

    const-class v9, Ljava/lang/Character;

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v8, Lcom/flurry/org/codehaus/jackson/map/ser/BasicSerializerFactory;->_concrete:Ljava/util/HashMap;

    sget-object v9, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v8, Lcom/flurry/org/codehaus/jackson/map/ser/BasicSerializerFactory;->_concrete:Ljava/util/HashMap;

    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lcom/flurry/org/codehaus/jackson/map/ser/StdSerializers$BooleanSerializer;

    const/4 v11, 0x1

    invoke-direct {v10, v11}, Lcom/flurry/org/codehaus/jackson/map/ser/StdSerializers$BooleanSerializer;-><init>(Z)V

    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v8, Lcom/flurry/org/codehaus/jackson/map/ser/BasicSerializerFactory;->_concrete:Ljava/util/HashMap;

    const-class v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lcom/flurry/org/codehaus/jackson/map/ser/StdSerializers$BooleanSerializer;

    const/4 v11, 0x0

    invoke-direct {v10, v11}, Lcom/flurry/org/codehaus/jackson/map/ser/StdSerializers$BooleanSerializer;-><init>(Z)V

    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    new-instance v4, Lcom/flurry/org/codehaus/jackson/map/ser/StdSerializers$IntegerSerializer;

    invoke-direct {v4}, Lcom/flurry/org/codehaus/jackson/map/ser/StdSerializers$IntegerSerializer;-><init>()V

    .line 93
    .local v4, "intS":Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer<*>;"
    sget-object v8, Lcom/flurry/org/codehaus/jackson/map/ser/BasicSerializerFactory;->_concrete:Ljava/util/HashMap;

    const-class v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v8, Lcom/flurry/org/codehaus/jackson/map/ser/BasicSerializerFactory;->_concrete:Ljava/util/HashMap;

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v8, Lcom/flurry/org/codehaus/jackson/map/ser/BasicSerializerFactory;->_concrete:Ljava/util/HashMap;

    const-class v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lcom/flurry/org/codehaus/jackson/map/ser/StdSerializers$LongSerializer;->instance:Lcom/flurry/org/codehaus/jackson/map/ser/StdSerializers$LongSerializer;

    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v8, Lcom/flurry/org/codehaus/jackson/map/ser/BasicSerializerFactory;->_concrete:Ljava/util/HashMap;

    sget-object v9, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lcom/flurry/org/codehaus/jackson/map/ser/StdSerializers$LongSerializer;->instance:Lcom/flurry/org/codehaus/jackson/map/ser/StdSerializers$LongSerializer;

    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v8, Lcom/flurry/org/codehaus/jackson/map/ser/BasicSerializerFactory;->_concrete:Ljava/util/HashMap;

    const-class v9, Ljava/lang/Byte;

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lcom/flurry/org/codehaus/jackson/map/ser/StdSerializers$IntLikeSerializer;->instance:Lcom/flurry/org/codehaus/jackson/map/ser/StdSerializers$IntLikeSerializer;

    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v8, Lcom/flurry/org/codehaus/jackson/map/ser/BasicSerializerFactory;->_concrete:Ljava/util/HashMap;

    sget-object v9, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lcom/flurry/org/codehaus/jackson/map/ser/StdSerializers$IntLikeSerializer;->instance:Lcom/flurry/org/codehaus/jackson/map/ser/StdSerializers$IntLikeSerializer;

    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v8, Lcom/flurry/org/codehaus/jackson/map/ser/BasicSerializerFactory;->_concrete:Ljava/util/HashMap;

    const-class v9, Ljava/lang/Short;

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lcom/flurry/org/codehaus/jackson/map/ser/StdSerializers$IntLikeSerializer;->instance:Lcom/flurry/org/codehaus/jackson/map/ser/StdSerializers$IntLikeSerializer;

    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v8, Lcom/flurry/org/codehaus/jackson/map/ser/BasicSerializerFactory;->_concrete:Ljava/util/HashMap;

    sget-object v9, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lcom/flurry/org/codehaus/jackson/map/ser/StdSerializers$IntLikeSerializer;->instance:Lcom/flurry/org/codehaus/jackson/map/ser/StdSerializers$IntLikeSerializer;

    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v8, Lcom/flurry/org/codehaus/jackson/map/ser/BasicSerializerFactory;->_concrete:Ljava/util/HashMap;

    const-class v9, Ljava/lang/Float;

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lcom/flurry/org/codehaus/jackson/map/ser/StdSerializers$FloatSerializer;->instance:Lcom/flurry/org/codehaus/jackson/map/ser/StdSerializers$FloatSerializer;

    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v8, Lcom/flurry/org/codehaus/jackson/map/ser/BasicSerializerFactory;->_concrete:Ljava/util/HashMap;

    sget-object v9, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lcom/flurry/org/codehaus/jackson/map/ser/StdSerializers$FloatSerializer;->instance:Lcom/flurry/org/codehaus/jackson/map/ser/StdSerializers$FloatSerializer;

    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v8, Lcom/flurry/org/codehaus/jackson/map/ser/BasicSerializerFactory;->_concrete:Ljava/util/HashMap;

    const-class v9, Ljava/lang/Double;

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lcom/flurry/org/codehaus/jackson/map/ser/StdSerializers$DoubleSerializer;->instance:Lcom/flurry/org/codehaus/jackson/map/ser/StdSerializers$DoubleSerializer;

    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v8, Lcom/flurry/org/codehaus/jackson/map/ser/BasicSerializerFactory;->_concrete:Ljava/util/HashMap;

    sget-object v9, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lcom/flurry/org/codehaus/jackson/map/ser/StdSerializers$DoubleSerializer;->instance:Lcom/flurry/org/codehaus/jackson/map/ser/StdSerializers$DoubleSerializer;

    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    new-instance v5, Lcom/flurry/org/codehaus/jackson/map/ser/StdSerializers$NumberSerializer;

    invoke-direct {v5}, Lcom/flurry/org/codehaus/jackson/map/ser/StdSerializers$NumberSerializer;-><init>()V

    .line 110
    .local v5, "ns":Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer<*>;"
    sget-object v8, Lcom/flurry/org/codehaus/jackson/map/ser/BasicSerializerFactory;->_concrete:Ljava/util/HashMap;

    const-class v9, Ljava/math/BigInteger;

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    sget-object v8, Lcom/flurry/org/codehaus/jackson/map/ser/BasicSerializerFactory;->_concrete:Ljava/util/HashMap;

    const-class v9, Ljava/math/BigDecimal;

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    sget-object v8, Lcom/flurry/org/codehaus/jackson/map/ser/BasicSerializerFactory;->_concrete:Ljava/util/HashMap;

    const-class v9, Ljava/util/Calendar;

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lcom/flurry/org/codehaus/jackson/map/ser/std/CalendarSerializer;->instance:Lcom/flurry/org/codehaus/jackson/map/ser/std/CalendarSerializer;

    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    sget-object v1, Lcom/flurry/org/codehaus/jackson/map/ser/std/DateSerializer;->instance:Lcom/flurry/org/codehaus/jackson/map/ser/std/DateSerializer;

    .line 117
    .local v1, "dateSer":Lcom/flurry/org/codehaus/jackson/map/ser/std/DateSerializer;
    sget-object v8, Lcom/flurry/org/codehaus/jackson/map/ser/BasicSerializerFactory;->_concrete:Ljava/util/HashMap;

    const-class v9, Ljava/util/Date;

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    sget-object v8, Lcom/flurry/org/codehaus/jackson/map/ser/BasicSerializerFactory;->_concrete:Ljava/util/HashMap;

    const-class v9, Ljava/sql/Timestamp;

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    sget-object v8, Lcom/flurry/org/codehaus/jackson/map/ser/BasicSerializerFactory;->_concrete:Ljava/util/HashMap;

    const-class v9, Ljava/sql/Date;

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lcom/flurry/org/codehaus/jackson/map/ser/StdSerializers$SqlDateSerializer;

    invoke-direct {v10}, Lcom/flurry/org/codehaus/jackson/map/ser/StdSerializers$SqlDateSerializer;-><init>()V

    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    sget-object v8, Lcom/flurry/org/codehaus/jackson/map/ser/BasicSerializerFactory;->_concrete:Ljava/util/HashMap;

    const-class v9, Ljava/sql/Time;

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lcom/flurry/org/codehaus/jackson/map/ser/StdSerializers$SqlTimeSerializer;

    invoke-direct {v10}, Lcom/flurry/org/codehaus/jackson/map/ser/StdSerializers$SqlTimeSerializer;-><init>()V

    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    new-instance v8, Lcom/flurry/org/codehaus/jackson/map/ser/std/StdJdkSerializers;

    invoke-direct {v8}, Lcom/flurry/org/codehaus/jackson/map/ser/std/StdJdkSerializers;-><init>()V

    invoke-virtual {v8}, Lcom/flurry/org/codehaus/jackson/map/ser/std/StdJdkSerializers;->provide()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 125
    .local v2, "en":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Class<*>;Ljava/lang/Object;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    .line 126
    .local v7, "value":Ljava/lang/Object;
    instance-of v8, v7, Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;

    if-eqz v8, :cond_0

    .line 127
    sget-object v9, Lcom/flurry/org/codehaus/jackson/map/ser/BasicSerializerFactory;->_concrete:Ljava/util/HashMap;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Class;

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    check-cast v7, Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;

    .end local v7    # "value":Ljava/lang/Object;
    invoke-virtual {v9, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 128
    .restart local v7    # "value":Ljava/lang/Object;
    :cond_0
    instance-of v8, v7, Ljava/lang/Class;

    if-eqz v8, :cond_1

    move-object v0, v7

    .line 130
    check-cast v0, Ljava/lang/Class;

    .line 131
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/flurry/org/codehaus/jackson/map/JsonSerializer<*>;>;"
    sget-object v9, Lcom/flurry/org/codehaus/jackson/map/ser/BasicSerializerFactory;->_concreteLazy:Ljava/util/HashMap;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Class;

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 133
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/flurry/org/codehaus/jackson/map/JsonSerializer<*>;>;"
    :cond_1
    new-instance v8, Ljava/lang/IllegalStateException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Internal error: unrecognized value of type "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 139
    .end local v2    # "en":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Class<*>;Ljava/lang/Object;>;"
    .end local v7    # "value":Ljava/lang/Object;
    :cond_2
    sget-object v8, Lcom/flurry/org/codehaus/jackson/map/ser/BasicSerializerFactory;->_concreteLazy:Ljava/util/HashMap;

    const-class v9, Lcom/flurry/org/codehaus/jackson/util/TokenBuffer;

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    const-class v10, Lcom/flurry/org/codehaus/jackson/map/ser/std/TokenBufferSerializer;

    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    sput-object v8, Lcom/flurry/org/codehaus/jackson/map/ser/BasicSerializerFactory;->_arraySerializers:Ljava/util/HashMap;

    .line 146
    sget-object v8, Lcom/flurry/org/codehaus/jackson/map/ser/BasicSerializerFactory;->_arraySerializers:Ljava/util/HashMap;

    const-class v9, [Z

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lcom/flurry/org/codehaus/jackson/map/ser/std/StdArraySerializers$BooleanArraySerializer;

    invoke-direct {v10}, Lcom/flurry/org/codehaus/jackson/map/ser/std/StdArraySerializers$BooleanArraySerializer;-><init>()V

    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    sget-object v8, Lcom/flurry/org/codehaus/jackson/map/ser/BasicSerializerFactory;->_arraySerializers:Ljava/util/HashMap;

    const-class v9, [B

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lcom/flurry/org/codehaus/jackson/map/ser/std/StdArraySerializers$ByteArraySerializer;

    invoke-direct {v10}, Lcom/flurry/org/codehaus/jackson/map/ser/std/StdArraySerializers$ByteArraySerializer;-><init>()V

    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    sget-object v8, Lcom/flurry/org/codehaus/jackson/map/ser/BasicSerializerFactory;->_arraySerializers:Ljava/util/HashMap;

    const-class v9, [C

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lcom/flurry/org/codehaus/jackson/map/ser/std/StdArraySerializers$CharArraySerializer;

    invoke-direct {v10}, Lcom/flurry/org/codehaus/jackson/map/ser/std/StdArraySerializers$CharArraySerializer;-><init>()V

    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    sget-object v8, Lcom/flurry/org/codehaus/jackson/map/ser/BasicSerializerFactory;->_arraySerializers:Ljava/util/HashMap;

    const-class v9, [S

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lcom/flurry/org/codehaus/jackson/map/ser/std/StdArraySerializers$ShortArraySerializer;

    invoke-direct {v10}, Lcom/flurry/org/codehaus/jackson/map/ser/std/StdArraySerializers$ShortArraySerializer;-><init>()V

    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    sget-object v8, Lcom/flurry/org/codehaus/jackson/map/ser/BasicSerializerFactory;->_arraySerializers:Ljava/util/HashMap;

    const-class v9, [I

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lcom/flurry/org/codehaus/jackson/map/ser/std/StdArraySerializers$IntArraySerializer;

    invoke-direct {v10}, Lcom/flurry/org/codehaus/jackson/map/ser/std/StdArraySerializers$IntArraySerializer;-><init>()V

    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    sget-object v8, Lcom/flurry/org/codehaus/jackson/map/ser/BasicSerializerFactory;->_arraySerializers:Ljava/util/HashMap;

    const-class v9, [J

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lcom/flurry/org/codehaus/jackson/map/ser/std/StdArraySerializers$LongArraySerializer;

    invoke-direct {v10}, Lcom/flurry/org/codehaus/jackson/map/ser/std/StdArraySerializers$LongArraySerializer;-><init>()V

    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    sget-object v8, Lcom/flurry/org/codehaus/jackson/map/ser/BasicSerializerFactory;->_arraySerializers:Ljava/util/HashMap;

    const-class v9, [F

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lcom/flurry/org/codehaus/jackson/map/ser/std/StdArraySerializers$FloatArraySerializer;

    invoke-direct {v10}, Lcom/flurry/org/codehaus/jackson/map/ser/std/StdArraySerializers$FloatArraySerializer;-><init>()V

    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    sget-object v8, Lcom/flurry/org/codehaus/jackson/map/ser/BasicSerializerFactory;->_arraySerializers:Ljava/util/HashMap;

    const-class v9, [D

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lcom/flurry/org/codehaus/jackson/map/ser/std/StdArraySerializers$DoubleArraySerializer;

    invoke-direct {v10}, Lcom/flurry/org/codehaus/jackson/map/ser/std/StdArraySerializers$DoubleArraySerializer;-><init>()V

    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 173
    invoke-direct {p0}, Lcom/flurry/org/codehaus/jackson/map/SerializerFactory;-><init>()V

    .line 160
    sget-object v0, Lcom/flurry/org/codehaus/jackson/map/ext/OptionalHandlerFactory;->instance:Lcom/flurry/org/codehaus/jackson/map/ext/OptionalHandlerFactory;

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ser/BasicSerializerFactory;->optionalHandlers:Lcom/flurry/org/codehaus/jackson/map/ext/OptionalHandlerFactory;

    .line 173
    return-void
.end method

.method protected static findContentSerializer(Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;
    .locals 3
    .param p0, "config"    # Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;
    .param p1, "a"    # Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;
    .param p2, "property"    # Lcom/flurry/org/codehaus/jackson/map/BeanProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;",
            "Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;",
            "Lcom/flurry/org/codehaus/jackson/map/BeanProperty;",
            ")",
            "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 749
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;->getAnnotationIntrospector()Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object v0

    .line 750
    .local v0, "intr":Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;
    invoke-virtual {v0, p1}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;->findContentSerializer(Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Class;

    move-result-object v1

    .line 751
    .local v1, "serClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/flurry/org/codehaus/jackson/map/JsonSerializer<*>;>;"
    if-eqz v1, :cond_0

    const-class v2, Lcom/flurry/org/codehaus/jackson/map/JsonSerializer$None;

    if-ne v1, v2, :cond_1

    .line 752
    :cond_0
    if-eqz p2, :cond_1

    .line 753
    invoke-interface {p2}, Lcom/flurry/org/codehaus/jackson/map/BeanProperty;->getMember()Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;->findContentSerializer(Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Class;

    move-result-object v1

    .line 756
    :cond_1
    if-eqz v1, :cond_2

    const-class v2, Lcom/flurry/org/codehaus/jackson/map/JsonSerializer$None;

    if-eq v1, v2, :cond_2

    .line 757
    invoke-virtual {p0, p1, v1}, Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;->serializerInstance(Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;Ljava/lang/Class;)Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;

    move-result-object v2

    .line 759
    :goto_0
    return-object v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected static findKeySerializer(Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;
    .locals 3
    .param p0, "config"    # Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;
    .param p1, "a"    # Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;
    .param p2, "property"    # Lcom/flurry/org/codehaus/jackson/map/BeanProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;",
            "Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;",
            "Lcom/flurry/org/codehaus/jackson/map/BeanProperty;",
            ")",
            "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 733
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;->getAnnotationIntrospector()Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object v0

    .line 734
    .local v0, "intr":Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;
    invoke-virtual {v0, p1}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;->findKeySerializer(Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Class;

    move-result-object v1

    .line 735
    .local v1, "serClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/flurry/org/codehaus/jackson/map/JsonSerializer<*>;>;"
    if-eqz v1, :cond_0

    const-class v2, Lcom/flurry/org/codehaus/jackson/map/JsonSerializer$None;

    if-ne v1, v2, :cond_1

    .line 736
    :cond_0
    if-eqz p2, :cond_1

    .line 737
    invoke-interface {p2}, Lcom/flurry/org/codehaus/jackson/map/BeanProperty;->getMember()Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;->findKeySerializer(Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Class;

    move-result-object v1

    .line 740
    :cond_1
    if-eqz v1, :cond_2

    const-class v2, Lcom/flurry/org/codehaus/jackson/map/JsonSerializer$None;

    if-eq v1, v2, :cond_2

    .line 741
    invoke-virtual {p0, p1, v1}, Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;->serializerInstance(Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;Ljava/lang/Class;)Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;

    move-result-object v2

    .line 743
    :goto_0
    return-object v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected static modifySecondaryTypesByAnnotation(Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;Lcom/flurry/org/codehaus/jackson/type/JavaType;)Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .locals 8
    .param p0, "config"    # Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;
    .param p1, "a"    # Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/flurry/org/codehaus/jackson/type/JavaType;",
            ">(",
            "Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;",
            "Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;",
            "TT;)TT;"
        }
    .end annotation

    .prologue
    .line 701
    .local p2, "type":Lcom/flurry/org/codehaus/jackson/type/JavaType;, "TT;"
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;->getAnnotationIntrospector()Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object v3

    .line 703
    .local v3, "intr":Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;
    invoke-virtual {p2}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->isContainerType()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 704
    invoke-virtual {p2}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->getKeyType()Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v5

    invoke-virtual {v3, p1, v5}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;->findSerializationKeyType(Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;Lcom/flurry/org/codehaus/jackson/type/JavaType;)Ljava/lang/Class;

    move-result-object v4

    .line 705
    .local v4, "keyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v4, :cond_1

    .line 707
    instance-of v5, p2, Lcom/flurry/org/codehaus/jackson/map/type/MapType;

    if-nez v5, :cond_0

    .line 708
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Illegal key-type annotation: type "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is not a Map type"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 711
    :cond_0
    :try_start_0
    move-object v0, p2

    check-cast v0, Lcom/flurry/org/codehaus/jackson/map/type/MapType;

    move-object v5, v0

    invoke-virtual {v5, v4}, Lcom/flurry/org/codehaus/jackson/map/type/MapType;->widenKey(Ljava/lang/Class;)Lcom/flurry/org/codehaus/jackson/type/JavaType;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p2

    .line 718
    :cond_1
    invoke-virtual {p2}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->getContentType()Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v5

    invoke-virtual {v3, p1, v5}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;->findSerializationContentType(Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;Lcom/flurry/org/codehaus/jackson/type/JavaType;)Ljava/lang/Class;

    move-result-object v1

    .line 719
    .local v1, "cc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v1, :cond_2

    .line 721
    :try_start_1
    invoke-virtual {p2, v1}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->widenContentsBy(Ljava/lang/Class;)Lcom/flurry/org/codehaus/jackson/type/JavaType;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object p2

    .line 727
    .end local v1    # "cc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "keyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    return-object p2

    .line 712
    .restart local v4    # "keyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v2

    .line 713
    .local v2, "iae":Ljava/lang/IllegalArgumentException;
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to narrow key type "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " with key-type annotation ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 722
    .end local v2    # "iae":Ljava/lang/IllegalArgumentException;
    .restart local v1    # "cc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_1
    move-exception v2

    .line 723
    .restart local v2    # "iae":Ljava/lang/IllegalArgumentException;
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to narrow content type "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " with content-type annotation ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
.end method


# virtual methods
.method protected buildArraySerializer(Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;Lcom/flurry/org/codehaus/jackson/map/type/ArrayType;Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;ZLcom/flurry/org/codehaus/jackson/map/TypeSerializer;Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;)Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;
    .locals 8
    .param p1, "config"    # Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;
    .param p2, "type"    # Lcom/flurry/org/codehaus/jackson/map/type/ArrayType;
    .param p3, "beanDesc"    # Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;
    .param p4, "property"    # Lcom/flurry/org/codehaus/jackson/map/BeanProperty;
    .param p5, "staticTyping"    # Z
    .param p6, "elementTypeSerializer"    # Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;",
            "Lcom/flurry/org/codehaus/jackson/map/type/ArrayType;",
            "Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;",
            "Lcom/flurry/org/codehaus/jackson/map/BeanProperty;",
            "Z",
            "Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;",
            "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 621
    .local p7, "elementValueSerializer":Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    invoke-virtual {p2}, Lcom/flurry/org/codehaus/jackson/map/type/ArrayType;->getRawClass()Ljava/lang/Class;

    move-result-object v6

    .line 622
    .local v6, "raw":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, [Ljava/lang/String;

    if-ne v0, v6, :cond_1

    .line 623
    new-instance v7, Lcom/flurry/org/codehaus/jackson/map/ser/std/StdArraySerializers$StringArraySerializer;

    invoke-direct {v7, p4}, Lcom/flurry/org/codehaus/jackson/map/ser/std/StdArraySerializers$StringArraySerializer;-><init>(Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)V

    .line 630
    :cond_0
    :goto_0
    return-object v7

    .line 626
    :cond_1
    sget-object v0, Lcom/flurry/org/codehaus/jackson/map/ser/BasicSerializerFactory;->_arraySerializers:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;

    .line 627
    .local v7, "ser":Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer<*>;"
    if-nez v7, :cond_0

    .line 630
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/ser/std/ObjectArraySerializer;

    invoke-virtual {p2}, Lcom/flurry/org/codehaus/jackson/map/type/ArrayType;->getContentType()Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v1

    move v2, p5

    move-object v3, p6

    move-object v4, p4

    move-object v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/flurry/org/codehaus/jackson/map/ser/std/ObjectArraySerializer;-><init>(Lcom/flurry/org/codehaus/jackson/type/JavaType;ZLcom/flurry/org/codehaus/jackson/map/TypeSerializer;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;)V

    move-object v7, v0

    goto :goto_0
.end method

.method protected buildCollectionLikeSerializer(Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;Lcom/flurry/org/codehaus/jackson/map/type/CollectionLikeType;Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;ZLcom/flurry/org/codehaus/jackson/map/TypeSerializer;Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;)Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;
    .locals 9
    .param p1, "config"    # Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;
    .param p2, "type"    # Lcom/flurry/org/codehaus/jackson/map/type/CollectionLikeType;
    .param p3, "beanDesc"    # Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;
    .param p4, "property"    # Lcom/flurry/org/codehaus/jackson/map/BeanProperty;
    .param p5, "staticTyping"    # Z
    .param p6, "elementTypeSerializer"    # Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;",
            "Lcom/flurry/org/codehaus/jackson/map/type/CollectionLikeType;",
            "Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;",
            "Lcom/flurry/org/codehaus/jackson/map/BeanProperty;",
            "Z",
            "Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;",
            "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 454
    .local p7, "elementValueSerializer":Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/map/ser/BasicSerializerFactory;->customSerializers()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/org/codehaus/jackson/map/Serializers;

    .local v0, "serializers":Lcom/flurry/org/codehaus/jackson/map/Serializers;
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p6

    move-object/from16 v6, p7

    .line 455
    invoke-interface/range {v0 .. v6}, Lcom/flurry/org/codehaus/jackson/map/Serializers;->findCollectionLikeSerializer(Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;Lcom/flurry/org/codehaus/jackson/map/type/CollectionLikeType;Lcom/flurry/org/codehaus/jackson/map/BeanDescription;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;)Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;

    move-result-object v8

    .line 457
    .local v8, "ser":Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer<*>;"
    if-eqz v8, :cond_0

    .line 461
    .end local v0    # "serializers":Lcom/flurry/org/codehaus/jackson/map/Serializers;
    .end local v8    # "ser":Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer<*>;"
    :goto_0
    return-object v8

    :cond_1
    const/4 v8, 0x0

    goto :goto_0
.end method

.method protected buildCollectionSerializer(Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;Lcom/flurry/org/codehaus/jackson/map/type/CollectionType;Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;ZLcom/flurry/org/codehaus/jackson/map/TypeSerializer;Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;)Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;
    .locals 15
    .param p1, "config"    # Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;
    .param p2, "type"    # Lcom/flurry/org/codehaus/jackson/map/type/CollectionType;
    .param p3, "beanDesc"    # Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;
    .param p4, "property"    # Lcom/flurry/org/codehaus/jackson/map/BeanProperty;
    .param p5, "staticTyping"    # Z
    .param p6, "elementTypeSerializer"    # Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;",
            "Lcom/flurry/org/codehaus/jackson/map/type/CollectionType;",
            "Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;",
            "Lcom/flurry/org/codehaus/jackson/map/BeanProperty;",
            "Z",
            "Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;",
            "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 477
    .local p7, "elementValueSerializer":Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/map/ser/BasicSerializerFactory;->customSerializers()Ljava/lang/Iterable;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/flurry/org/codehaus/jackson/map/Serializers;

    .local v4, "serializers":Lcom/flurry/org/codehaus/jackson/map/Serializers;
    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    .line 478
    invoke-interface/range {v4 .. v10}, Lcom/flurry/org/codehaus/jackson/map/Serializers;->findCollectionSerializer(Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;Lcom/flurry/org/codehaus/jackson/map/type/CollectionType;Lcom/flurry/org/codehaus/jackson/map/BeanDescription;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;)Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;

    move-result-object v14

    .line 480
    .local v14, "ser":Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer<*>;"
    if-eqz v14, :cond_0

    .line 500
    .end local v4    # "serializers":Lcom/flurry/org/codehaus/jackson/map/Serializers;
    .end local v14    # "ser":Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer<*>;"
    :goto_0
    return-object v14

    .line 484
    :cond_1
    invoke-virtual/range {p2 .. p2}, Lcom/flurry/org/codehaus/jackson/map/type/CollectionType;->getRawClass()Ljava/lang/Class;

    move-result-object v13

    .line 485
    .local v13, "raw":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v5, Ljava/util/EnumSet;

    invoke-virtual {v5, v13}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 486
    invoke-virtual/range {p0 .. p7}, Lcom/flurry/org/codehaus/jackson/map/ser/BasicSerializerFactory;->buildEnumSetSerializer(Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;ZLcom/flurry/org/codehaus/jackson/map/TypeSerializer;Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;)Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;

    move-result-object v14

    goto :goto_0

    .line 489
    :cond_2
    invoke-virtual/range {p2 .. p2}, Lcom/flurry/org/codehaus/jackson/map/type/CollectionType;->getContentType()Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v11

    .line 490
    .local v11, "elementRaw":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0, v13}, Lcom/flurry/org/codehaus/jackson/map/ser/BasicSerializerFactory;->isIndexedList(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 491
    const-class v5, Ljava/lang/String;

    if-ne v11, v5, :cond_3

    .line 492
    new-instance v14, Lcom/flurry/org/codehaus/jackson/map/ser/std/IndexedStringListSerializer;

    move-object/from16 v0, p4

    invoke-direct {v14, v0}, Lcom/flurry/org/codehaus/jackson/map/ser/std/IndexedStringListSerializer;-><init>(Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)V

    goto :goto_0

    .line 494
    :cond_3
    invoke-virtual/range {p2 .. p2}, Lcom/flurry/org/codehaus/jackson/map/type/CollectionType;->getContentType()Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v5

    move/from16 v0, p5

    move-object/from16 v1, p6

    move-object/from16 v2, p4

    move-object/from16 v3, p7

    invoke-static {v5, v0, v1, v2, v3}, Lcom/flurry/org/codehaus/jackson/map/ser/std/StdContainerSerializers;->indexedListSerializer(Lcom/flurry/org/codehaus/jackson/type/JavaType;ZLcom/flurry/org/codehaus/jackson/map/TypeSerializer;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;)Lcom/flurry/org/codehaus/jackson/map/ser/std/ContainerSerializerBase;

    move-result-object v14

    goto :goto_0

    .line 497
    :cond_4
    const-class v5, Ljava/lang/String;

    if-ne v11, v5, :cond_5

    .line 498
    new-instance v14, Lcom/flurry/org/codehaus/jackson/map/ser/std/StringCollectionSerializer;

    move-object/from16 v0, p4

    invoke-direct {v14, v0}, Lcom/flurry/org/codehaus/jackson/map/ser/std/StringCollectionSerializer;-><init>(Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)V

    goto :goto_0

    .line 500
    :cond_5
    invoke-virtual/range {p2 .. p2}, Lcom/flurry/org/codehaus/jackson/map/type/CollectionType;->getContentType()Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v5

    move/from16 v0, p5

    move-object/from16 v1, p6

    move-object/from16 v2, p4

    move-object/from16 v3, p7

    invoke-static {v5, v0, v1, v2, v3}, Lcom/flurry/org/codehaus/jackson/map/ser/std/StdContainerSerializers;->collectionSerializer(Lcom/flurry/org/codehaus/jackson/type/JavaType;ZLcom/flurry/org/codehaus/jackson/map/TypeSerializer;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;)Lcom/flurry/org/codehaus/jackson/map/ser/std/ContainerSerializerBase;

    move-result-object v14

    goto :goto_0
.end method

.method public buildContainerSerializer(Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;Z)Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;
    .locals 25
    .param p1, "config"    # Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;
    .param p2, "type"    # Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .param p3, "beanDesc"    # Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;
    .param p4, "property"    # Lcom/flurry/org/codehaus/jackson/map/BeanProperty;
    .param p5, "staticTyping"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;",
            "Lcom/flurry/org/codehaus/jackson/type/JavaType;",
            "Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;",
            "Lcom/flurry/org/codehaus/jackson/map/BeanProperty;",
            "Z)",
            "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 404
    invoke-virtual/range {p2 .. p2}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->getContentType()Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v24

    .line 405
    .local v24, "elementType":Lcom/flurry/org/codehaus/jackson/type/JavaType;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v24

    move-object/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Lcom/flurry/org/codehaus/jackson/map/ser/BasicSerializerFactory;->createTypeSerializer(Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;

    move-result-object v11

    .line 408
    .local v11, "elementTypeSerializer":Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;
    if-eqz v11, :cond_1

    .line 409
    const/16 p5, 0x0

    .line 413
    :cond_0
    :goto_0
    invoke-virtual/range {p3 .. p3}, Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;->getClassInfo()Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;

    move-result-object v4

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-static {v0, v4, v1}, Lcom/flurry/org/codehaus/jackson/map/ser/BasicSerializerFactory;->findContentSerializer(Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;

    move-result-object v12

    .line 416
    .local v12, "elementValueSerializer":Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    invoke-virtual/range {p2 .. p2}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->isMapLikeType()Z

    move-result v4

    if-eqz v4, :cond_3

    move-object/from16 v6, p2

    .line 417
    check-cast v6, Lcom/flurry/org/codehaus/jackson/map/type/MapLikeType;

    .line 418
    .local v6, "mlt":Lcom/flurry/org/codehaus/jackson/map/type/MapLikeType;
    invoke-virtual/range {p3 .. p3}, Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;->getClassInfo()Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;

    move-result-object v4

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-static {v0, v4, v1}, Lcom/flurry/org/codehaus/jackson/map/ser/BasicSerializerFactory;->findKeySerializer(Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;

    move-result-object v10

    .line 419
    .local v10, "keySerializer":Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    invoke-virtual {v6}, Lcom/flurry/org/codehaus/jackson/map/type/MapLikeType;->isTrueMapType()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 420
    check-cast v6, Lcom/flurry/org/codehaus/jackson/map/type/MapType;

    .end local v6    # "mlt":Lcom/flurry/org/codehaus/jackson/map/type/MapLikeType;
    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move/from16 v9, p5

    invoke-virtual/range {v4 .. v12}, Lcom/flurry/org/codehaus/jackson/map/ser/BasicSerializerFactory;->buildMapSerializer(Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;Lcom/flurry/org/codehaus/jackson/map/type/MapType;Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;ZLcom/flurry/org/codehaus/jackson/map/JsonSerializer;Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;)Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;

    move-result-object v4

    .line 439
    .end local v10    # "keySerializer":Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    :goto_1
    return-object v4

    .line 410
    .end local v12    # "elementValueSerializer":Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    :cond_1
    if-nez p5, :cond_0

    .line 411
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-virtual {v0, v1, v2, v11, v3}, Lcom/flurry/org/codehaus/jackson/map/ser/BasicSerializerFactory;->usesStaticTyping(Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)Z

    move-result p5

    goto :goto_0

    .restart local v6    # "mlt":Lcom/flurry/org/codehaus/jackson/map/type/MapLikeType;
    .restart local v10    # "keySerializer":Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    .restart local v12    # "elementValueSerializer":Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    :cond_2
    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move/from16 v9, p5

    .line 423
    invoke-virtual/range {v4 .. v12}, Lcom/flurry/org/codehaus/jackson/map/ser/BasicSerializerFactory;->buildMapLikeSerializer(Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;Lcom/flurry/org/codehaus/jackson/map/type/MapLikeType;Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;ZLcom/flurry/org/codehaus/jackson/map/JsonSerializer;Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;)Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;

    move-result-object v4

    goto :goto_1

    .line 426
    .end local v6    # "mlt":Lcom/flurry/org/codehaus/jackson/map/type/MapLikeType;
    .end local v10    # "keySerializer":Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    :cond_3
    invoke-virtual/range {p2 .. p2}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->isCollectionLikeType()Z

    move-result v4

    if-eqz v4, :cond_5

    move-object/from16 v15, p2

    .line 427
    check-cast v15, Lcom/flurry/org/codehaus/jackson/map/type/CollectionLikeType;

    .line 428
    .local v15, "clt":Lcom/flurry/org/codehaus/jackson/map/type/CollectionLikeType;
    invoke-virtual {v15}, Lcom/flurry/org/codehaus/jackson/map/type/CollectionLikeType;->isTrueCollectionType()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 429
    check-cast v15, Lcom/flurry/org/codehaus/jackson/map/type/CollectionType;

    .end local v15    # "clt":Lcom/flurry/org/codehaus/jackson/map/type/CollectionLikeType;
    move-object/from16 v13, p0

    move-object/from16 v14, p1

    move-object/from16 v16, p3

    move-object/from16 v17, p4

    move/from16 v18, p5

    move-object/from16 v19, v11

    move-object/from16 v20, v12

    invoke-virtual/range {v13 .. v20}, Lcom/flurry/org/codehaus/jackson/map/ser/BasicSerializerFactory;->buildCollectionSerializer(Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;Lcom/flurry/org/codehaus/jackson/map/type/CollectionType;Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;ZLcom/flurry/org/codehaus/jackson/map/TypeSerializer;Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;)Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;

    move-result-object v4

    goto :goto_1

    .restart local v15    # "clt":Lcom/flurry/org/codehaus/jackson/map/type/CollectionLikeType;
    :cond_4
    move-object/from16 v13, p0

    move-object/from16 v14, p1

    move-object/from16 v16, p3

    move-object/from16 v17, p4

    move/from16 v18, p5

    move-object/from16 v19, v11

    move-object/from16 v20, v12

    .line 432
    invoke-virtual/range {v13 .. v20}, Lcom/flurry/org/codehaus/jackson/map/ser/BasicSerializerFactory;->buildCollectionLikeSerializer(Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;Lcom/flurry/org/codehaus/jackson/map/type/CollectionLikeType;Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;ZLcom/flurry/org/codehaus/jackson/map/TypeSerializer;Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;)Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;

    move-result-object v4

    goto :goto_1

    .line 435
    .end local v15    # "clt":Lcom/flurry/org/codehaus/jackson/map/type/CollectionLikeType;
    :cond_5
    invoke-virtual/range {p2 .. p2}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->isArrayType()Z

    move-result v4

    if-eqz v4, :cond_6

    move-object/from16 v18, p2

    .line 436
    check-cast v18, Lcom/flurry/org/codehaus/jackson/map/type/ArrayType;

    move-object/from16 v16, p0

    move-object/from16 v17, p1

    move-object/from16 v19, p3

    move-object/from16 v20, p4

    move/from16 v21, p5

    move-object/from16 v22, v11

    move-object/from16 v23, v12

    invoke-virtual/range {v16 .. v23}, Lcom/flurry/org/codehaus/jackson/map/ser/BasicSerializerFactory;->buildArraySerializer(Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;Lcom/flurry/org/codehaus/jackson/map/type/ArrayType;Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;ZLcom/flurry/org/codehaus/jackson/map/TypeSerializer;Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;)Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;

    move-result-object v4

    goto :goto_1

    .line 439
    :cond_6
    const/4 v4, 0x0

    goto :goto_1
.end method

.method protected buildEnumMapSerializer(Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;ZLcom/flurry/org/codehaus/jackson/map/TypeSerializer;Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;)Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;
    .locals 9
    .param p1, "config"    # Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;
    .param p2, "type"    # Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .param p3, "beanDesc"    # Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;
    .param p4, "property"    # Lcom/flurry/org/codehaus/jackson/map/BeanProperty;
    .param p5, "staticTyping"    # Z
    .param p6, "elementTypeSerializer"    # Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;",
            "Lcom/flurry/org/codehaus/jackson/type/JavaType;",
            "Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;",
            "Lcom/flurry/org/codehaus/jackson/map/BeanProperty;",
            "Z",
            "Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;",
            "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 594
    .local p7, "elementValueSerializer":Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    invoke-virtual {p2}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->getKeyType()Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v8

    .line 596
    .local v8, "keyType":Lcom/flurry/org/codehaus/jackson/type/JavaType;
    const/4 v3, 0x0

    .line 597
    .local v3, "enums":Lcom/flurry/org/codehaus/jackson/map/util/EnumValues;
    invoke-virtual {v8}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->isEnumType()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 599
    invoke-virtual {v8}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v7

    .line 600
    .local v7, "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<Ljava/lang/Enum<*>;>;"
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;->getAnnotationIntrospector()Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/flurry/org/codehaus/jackson/map/util/EnumValues;->construct(Ljava/lang/Class;Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;)Lcom/flurry/org/codehaus/jackson/map/util/EnumValues;

    move-result-object v3

    .line 602
    .end local v7    # "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<Ljava/lang/Enum<*>;>;"
    :cond_0
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/ser/std/EnumMapSerializer;

    invoke-virtual {p2}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->getContentType()Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v1

    move v2, p5

    move-object v4, p6

    move-object v5, p4

    move-object/from16 v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/flurry/org/codehaus/jackson/map/ser/std/EnumMapSerializer;-><init>(Lcom/flurry/org/codehaus/jackson/type/JavaType;ZLcom/flurry/org/codehaus/jackson/map/util/EnumValues;Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;)V

    return-object v0
.end method

.method protected buildEnumSetSerializer(Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;ZLcom/flurry/org/codehaus/jackson/map/TypeSerializer;Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;)Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;
    .locals 2
    .param p1, "config"    # Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;
    .param p2, "type"    # Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .param p3, "beanDesc"    # Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;
    .param p4, "property"    # Lcom/flurry/org/codehaus/jackson/map/BeanProperty;
    .param p5, "staticTyping"    # Z
    .param p6, "elementTypeSerializer"    # Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;",
            "Lcom/flurry/org/codehaus/jackson/type/JavaType;",
            "Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;",
            "Lcom/flurry/org/codehaus/jackson/map/BeanProperty;",
            "Z",
            "Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;",
            "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 510
    .local p7, "elementValueSerializer":Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    invoke-virtual {p2}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->getContentType()Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v0

    .line 512
    .local v0, "enumType":Lcom/flurry/org/codehaus/jackson/type/JavaType;
    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->isEnumType()Z

    move-result v1

    if-nez v1, :cond_0

    .line 513
    const/4 v0, 0x0

    .line 515
    :cond_0
    invoke-static {v0, p4}, Lcom/flurry/org/codehaus/jackson/map/ser/std/StdContainerSerializers;->enumSetSerializer(Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;

    move-result-object v1

    return-object v1
.end method

.method protected buildIterableSerializer(Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;Z)Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;
    .locals 3
    .param p1, "config"    # Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;
    .param p2, "type"    # Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .param p3, "beanDesc"    # Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;
    .param p4, "property"    # Lcom/flurry/org/codehaus/jackson/map/BeanProperty;
    .param p5, "staticTyping"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;",
            "Lcom/flurry/org/codehaus/jackson/type/JavaType;",
            "Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;",
            "Lcom/flurry/org/codehaus/jackson/map/BeanProperty;",
            "Z)",
            "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 659
    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->containedType(I)Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v0

    .line 660
    .local v0, "valueType":Lcom/flurry/org/codehaus/jackson/type/JavaType;
    if-nez v0, :cond_0

    .line 661
    invoke-static {}, Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;->unknownType()Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v0

    .line 663
    :cond_0
    invoke-virtual {p0, p1, v0, p4}, Lcom/flurry/org/codehaus/jackson/map/ser/BasicSerializerFactory;->createTypeSerializer(Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;

    move-result-object v1

    .line 664
    .local v1, "vts":Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;
    invoke-virtual {p0, p1, p3, v1, p4}, Lcom/flurry/org/codehaus/jackson/map/ser/BasicSerializerFactory;->usesStaticTyping(Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)Z

    move-result v2

    invoke-static {v0, v2, v1, p4}, Lcom/flurry/org/codehaus/jackson/map/ser/std/StdContainerSerializers;->iterableSerializer(Lcom/flurry/org/codehaus/jackson/type/JavaType;ZLcom/flurry/org/codehaus/jackson/map/TypeSerializer;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)Lcom/flurry/org/codehaus/jackson/map/ser/std/ContainerSerializerBase;

    move-result-object v2

    return-object v2
.end method

.method protected buildIteratorSerializer(Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;Z)Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;
    .locals 3
    .param p1, "config"    # Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;
    .param p2, "type"    # Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .param p3, "beanDesc"    # Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;
    .param p4, "property"    # Lcom/flurry/org/codehaus/jackson/map/BeanProperty;
    .param p5, "staticTyping"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;",
            "Lcom/flurry/org/codehaus/jackson/type/JavaType;",
            "Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;",
            "Lcom/flurry/org/codehaus/jackson/map/BeanProperty;",
            "Z)",
            "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 645
    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->containedType(I)Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v0

    .line 646
    .local v0, "valueType":Lcom/flurry/org/codehaus/jackson/type/JavaType;
    if-nez v0, :cond_0

    .line 647
    invoke-static {}, Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;->unknownType()Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v0

    .line 649
    :cond_0
    invoke-virtual {p0, p1, v0, p4}, Lcom/flurry/org/codehaus/jackson/map/ser/BasicSerializerFactory;->createTypeSerializer(Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;

    move-result-object v1

    .line 650
    .local v1, "vts":Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;
    invoke-virtual {p0, p1, p3, v1, p4}, Lcom/flurry/org/codehaus/jackson/map/ser/BasicSerializerFactory;->usesStaticTyping(Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)Z

    move-result v2

    invoke-static {v0, v2, v1, p4}, Lcom/flurry/org/codehaus/jackson/map/ser/std/StdContainerSerializers;->iteratorSerializer(Lcom/flurry/org/codehaus/jackson/type/JavaType;ZLcom/flurry/org/codehaus/jackson/map/TypeSerializer;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)Lcom/flurry/org/codehaus/jackson/map/ser/std/ContainerSerializerBase;

    move-result-object v2

    return-object v2
.end method

.method protected buildMapLikeSerializer(Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;Lcom/flurry/org/codehaus/jackson/map/type/MapLikeType;Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;ZLcom/flurry/org/codehaus/jackson/map/JsonSerializer;Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;)Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;
    .locals 10
    .param p1, "config"    # Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;
    .param p2, "type"    # Lcom/flurry/org/codehaus/jackson/map/type/MapLikeType;
    .param p3, "beanDesc"    # Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;
    .param p4, "property"    # Lcom/flurry/org/codehaus/jackson/map/BeanProperty;
    .param p5, "staticTyping"    # Z
    .param p7, "elementTypeSerializer"    # Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;",
            "Lcom/flurry/org/codehaus/jackson/map/type/MapLikeType;",
            "Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;",
            "Lcom/flurry/org/codehaus/jackson/map/BeanProperty;",
            "Z",
            "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;",
            "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 545
    .local p6, "keySerializer":Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    .local p8, "elementValueSerializer":Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/map/ser/BasicSerializerFactory;->customSerializers()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/org/codehaus/jackson/map/Serializers;

    .local v0, "serializers":Lcom/flurry/org/codehaus/jackson/map/Serializers;
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    .line 546
    invoke-interface/range {v0 .. v7}, Lcom/flurry/org/codehaus/jackson/map/Serializers;->findMapLikeSerializer(Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;Lcom/flurry/org/codehaus/jackson/map/type/MapLikeType;Lcom/flurry/org/codehaus/jackson/map/BeanDescription;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;)Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;

    move-result-object v9

    .line 548
    .local v9, "ser":Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer<*>;"
    if-eqz v9, :cond_0

    .line 552
    .end local v0    # "serializers":Lcom/flurry/org/codehaus/jackson/map/Serializers;
    .end local v9    # "ser":Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer<*>;"
    :goto_0
    return-object v9

    :cond_1
    const/4 v9, 0x0

    goto :goto_0
.end method

.method protected buildMapSerializer(Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;Lcom/flurry/org/codehaus/jackson/map/type/MapType;Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;ZLcom/flurry/org/codehaus/jackson/map/JsonSerializer;Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;)Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;
    .locals 11
    .param p1, "config"    # Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;
    .param p2, "type"    # Lcom/flurry/org/codehaus/jackson/map/type/MapType;
    .param p3, "beanDesc"    # Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;
    .param p4, "property"    # Lcom/flurry/org/codehaus/jackson/map/BeanProperty;
    .param p5, "staticTyping"    # Z
    .param p7, "elementTypeSerializer"    # Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;",
            "Lcom/flurry/org/codehaus/jackson/map/type/MapType;",
            "Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;",
            "Lcom/flurry/org/codehaus/jackson/map/BeanProperty;",
            "Z",
            "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;",
            "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 567
    .local p6, "keySerializer":Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    .local p8, "elementValueSerializer":Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/map/ser/BasicSerializerFactory;->customSerializers()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/org/codehaus/jackson/map/Serializers;

    .local v0, "serializers":Lcom/flurry/org/codehaus/jackson/map/Serializers;
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    .line 568
    invoke-interface/range {v0 .. v7}, Lcom/flurry/org/codehaus/jackson/map/Serializers;->findMapSerializer(Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;Lcom/flurry/org/codehaus/jackson/map/type/MapType;Lcom/flurry/org/codehaus/jackson/map/BeanDescription;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;)Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;

    move-result-object v10

    .line 570
    .local v10, "ser":Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer<*>;"
    if-eqz v10, :cond_0

    .line 578
    .end local v0    # "serializers":Lcom/flurry/org/codehaus/jackson/map/Serializers;
    .end local v10    # "ser":Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer<*>;"
    :goto_0
    return-object v10

    .line 574
    :cond_1
    const-class v1, Ljava/util/EnumMap;

    invoke-virtual {p2}, Lcom/flurry/org/codehaus/jackson/map/type/MapType;->getRawClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    .line 575
    invoke-virtual/range {v1 .. v8}, Lcom/flurry/org/codehaus/jackson/map/ser/BasicSerializerFactory;->buildEnumMapSerializer(Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;ZLcom/flurry/org/codehaus/jackson/map/TypeSerializer;Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;)Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;

    move-result-object v10

    goto :goto_0

    .line 578
    :cond_2
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;->getAnnotationIntrospector()Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object v1

    invoke-virtual {p3}, Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;->getClassInfo()Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;->findPropertiesToIgnore(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;)[Ljava/lang/String;

    move-result-object v1

    move-object v2, p2

    move/from16 v3, p5

    move-object/from16 v4, p7

    move-object v5, p4

    move-object/from16 v6, p6

    move-object/from16 v7, p8

    invoke-static/range {v1 .. v7}, Lcom/flurry/org/codehaus/jackson/map/ser/std/MapSerializer;->construct([Ljava/lang/String;Lcom/flurry/org/codehaus/jackson/type/JavaType;ZLcom/flurry/org/codehaus/jackson/map/TypeSerializer;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;)Lcom/flurry/org/codehaus/jackson/map/ser/std/MapSerializer;

    move-result-object v10

    goto :goto_0
.end method

.method public abstract createSerializer(Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;",
            "Lcom/flurry/org/codehaus/jackson/type/JavaType;",
            "Lcom/flurry/org/codehaus/jackson/map/BeanProperty;",
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
.end method

.method public createTypeSerializer(Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;
    .locals 6
    .param p1, "config"    # Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;
    .param p2, "baseType"    # Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .param p3, "property"    # Lcom/flurry/org/codehaus/jackson/map/BeanProperty;

    .prologue
    .line 196
    invoke-virtual {p2}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;->introspectClassAnnotations(Ljava/lang/Class;)Lcom/flurry/org/codehaus/jackson/map/BeanDescription;

    move-result-object v3

    check-cast v3, Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;

    .line 197
    .local v3, "bean":Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;
    invoke-virtual {v3}, Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;->getClassInfo()Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;

    move-result-object v0

    .line 198
    .local v0, "ac":Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;->getAnnotationIntrospector()Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object v1

    .line 199
    .local v1, "ai":Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;
    invoke-virtual {v1, p1, v0, p2}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;->findTypeResolver(Lcom/flurry/org/codehaus/jackson/map/MapperConfig;Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;Lcom/flurry/org/codehaus/jackson/type/JavaType;)Lcom/flurry/org/codehaus/jackson/map/jsontype/TypeResolverBuilder;

    move-result-object v2

    .line 203
    .local v2, "b":Lcom/flurry/org/codehaus/jackson/map/jsontype/TypeResolverBuilder;, "Lcom/flurry/org/codehaus/jackson/map/jsontype/TypeResolverBuilder<*>;"
    const/4 v4, 0x0

    .line 204
    .local v4, "subtypes":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/flurry/org/codehaus/jackson/map/jsontype/NamedType;>;"
    if-nez v2, :cond_0

    .line 205
    invoke-virtual {p1, p2}, Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;->getDefaultTyper(Lcom/flurry/org/codehaus/jackson/type/JavaType;)Lcom/flurry/org/codehaus/jackson/map/jsontype/TypeResolverBuilder;

    move-result-object v2

    .line 209
    :goto_0
    if-nez v2, :cond_1

    const/4 v5, 0x0

    :goto_1
    return-object v5

    .line 207
    :cond_0
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;->getSubtypeResolver()Lcom/flurry/org/codehaus/jackson/map/jsontype/SubtypeResolver;

    move-result-object v5

    invoke-virtual {v5, v0, p1, v1}, Lcom/flurry/org/codehaus/jackson/map/jsontype/SubtypeResolver;->collectAndResolveSubtypes(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;Lcom/flurry/org/codehaus/jackson/map/MapperConfig;Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;)Ljava/util/Collection;

    move-result-object v4

    goto :goto_0

    .line 209
    :cond_1
    invoke-interface {v2, p1, p2, v4, p3}, Lcom/flurry/org/codehaus/jackson/map/jsontype/TypeResolverBuilder;->buildTypeSerializer(Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;Lcom/flurry/org/codehaus/jackson/type/JavaType;Ljava/util/Collection;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;

    move-result-object v5

    goto :goto_1
.end method

.method protected abstract customSerializers()Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/flurry/org/codehaus/jackson/map/Serializers;",
            ">;"
        }
    .end annotation
.end method

.method public final findSerializerByAddonType(Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;Z)Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;
    .locals 2
    .param p1, "config"    # Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;
    .param p2, "javaType"    # Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .param p3, "beanDesc"    # Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;
    .param p4, "property"    # Lcom/flurry/org/codehaus/jackson/map/BeanProperty;
    .param p5, "staticTyping"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;",
            "Lcom/flurry/org/codehaus/jackson/type/JavaType;",
            "Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;",
            "Lcom/flurry/org/codehaus/jackson/map/BeanProperty;",
            "Z)",
            "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 339
    invoke-virtual {p2}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    .line 342
    .local v0, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v1, Ljava/util/Iterator;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 343
    invoke-virtual/range {p0 .. p5}, Lcom/flurry/org/codehaus/jackson/map/ser/BasicSerializerFactory;->buildIteratorSerializer(Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;Z)Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;

    move-result-object v1

    .line 351
    :goto_0
    return-object v1

    .line 345
    :cond_0
    const-class v1, Ljava/lang/Iterable;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 346
    invoke-virtual/range {p0 .. p5}, Lcom/flurry/org/codehaus/jackson/map/ser/BasicSerializerFactory;->buildIterableSerializer(Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;Z)Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;

    move-result-object v1

    goto :goto_0

    .line 348
    :cond_1
    const-class v1, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 349
    sget-object v1, Lcom/flurry/org/codehaus/jackson/map/ser/std/ToStringSerializer;->instance:Lcom/flurry/org/codehaus/jackson/map/ser/std/ToStringSerializer;

    goto :goto_0

    .line 351
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final findSerializerByLookup(Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;Z)Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;
    .locals 8
    .param p1, "type"    # Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .param p2, "config"    # Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;
    .param p3, "beanDesc"    # Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;
    .param p4, "property"    # Lcom/flurry/org/codehaus/jackson/map/BeanProperty;
    .param p5, "staticTyping"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/type/JavaType;",
            "Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;",
            "Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;",
            "Lcom/flurry/org/codehaus/jackson/map/BeanProperty;",
            "Z)",
            "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 239
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v2

    .line 240
    .local v2, "raw":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 241
    .local v0, "clsName":Ljava/lang/String;
    sget-object v5, Lcom/flurry/org/codehaus/jackson/map/ser/BasicSerializerFactory;->_concrete:Ljava/util/HashMap;

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;

    .line 242
    .local v3, "ser":Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer<*>;"
    if-eqz v3, :cond_0

    .line 254
    .end local v3    # "ser":Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer<*>;"
    :goto_0
    return-object v3

    .line 245
    .restart local v3    # "ser":Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer<*>;"
    :cond_0
    sget-object v5, Lcom/flurry/org/codehaus/jackson/map/ser/BasicSerializerFactory;->_concreteLazy:Ljava/util/HashMap;

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    .line 246
    .local v4, "serClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/flurry/org/codehaus/jackson/map/JsonSerializer<*>;>;"
    if-eqz v4, :cond_1

    .line 248
    :try_start_0
    invoke-virtual {v4}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v5

    goto :goto_0

    .line 249
    :catch_0
    move-exception v1

    .line 250
    .local v1, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to instantiate standard serializer (of type "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 254
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public final findSerializerByPrimaryType(Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;Z)Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;
    .locals 7
    .param p1, "type"    # Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .param p2, "config"    # Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;
    .param p3, "beanDesc"    # Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;
    .param p4, "property"    # Lcom/flurry/org/codehaus/jackson/map/BeanProperty;
    .param p5, "staticTyping"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/type/JavaType;",
            "Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;",
            "Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;",
            "Lcom/flurry/org/codehaus/jackson/map/BeanProperty;",
            "Z)",
            "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 270
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v2

    .line 272
    .local v2, "raw":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v6, Lcom/flurry/org/codehaus/jackson/map/JsonSerializable;

    invoke-virtual {v6, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 273
    const-class v6, Lcom/flurry/org/codehaus/jackson/map/JsonSerializableWithType;

    invoke-virtual {v6, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 274
    sget-object v3, Lcom/flurry/org/codehaus/jackson/map/ser/std/SerializableWithTypeSerializer;->instance:Lcom/flurry/org/codehaus/jackson/map/ser/std/SerializableWithTypeSerializer;

    .line 323
    :cond_0
    :goto_0
    return-object v3

    .line 276
    :cond_1
    sget-object v3, Lcom/flurry/org/codehaus/jackson/map/ser/std/SerializableSerializer;->instance:Lcom/flurry/org/codehaus/jackson/map/ser/std/SerializableSerializer;

    goto :goto_0

    .line 279
    :cond_2
    invoke-virtual {p3}, Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;->findJsonValueMethod()Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;

    move-result-object v5

    .line 280
    .local v5, "valueMethod":Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;
    if-eqz v5, :cond_4

    .line 282
    invoke-virtual {v5}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;->getAnnotated()Ljava/lang/reflect/Method;

    move-result-object v1

    .line 283
    .local v1, "m":Ljava/lang/reflect/Method;
    sget-object v6, Lcom/flurry/org/codehaus/jackson/map/SerializationConfig$Feature;->CAN_OVERRIDE_ACCESS_MODIFIERS:Lcom/flurry/org/codehaus/jackson/map/SerializationConfig$Feature;

    invoke-virtual {p2, v6}, Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;->isEnabled(Lcom/flurry/org/codehaus/jackson/map/SerializationConfig$Feature;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 284
    invoke-static {v1}, Lcom/flurry/org/codehaus/jackson/map/util/ClassUtil;->checkAndFixAccess(Ljava/lang/reflect/Member;)V

    .line 286
    :cond_3
    invoke-virtual {p0, p2, v5, p4}, Lcom/flurry/org/codehaus/jackson/map/ser/BasicSerializerFactory;->findSerializerFromAnnotation(Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;

    move-result-object v4

    .line 287
    .local v4, "ser":Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    new-instance v3, Lcom/flurry/org/codehaus/jackson/map/ser/std/JsonValueSerializer;

    invoke-direct {v3, v1, v4, p4}, Lcom/flurry/org/codehaus/jackson/map/ser/std/JsonValueSerializer;-><init>(Ljava/lang/reflect/Method;Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)V

    goto :goto_0

    .line 291
    .end local v1    # "m":Ljava/lang/reflect/Method;
    .end local v4    # "ser":Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    :cond_4
    const-class v6, Ljava/net/InetAddress;

    invoke-virtual {v6, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 292
    sget-object v3, Lcom/flurry/org/codehaus/jackson/map/ser/std/InetAddressSerializer;->instance:Lcom/flurry/org/codehaus/jackson/map/ser/std/InetAddressSerializer;

    goto :goto_0

    .line 295
    :cond_5
    const-class v6, Ljava/util/TimeZone;

    invoke-virtual {v6, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 296
    sget-object v3, Lcom/flurry/org/codehaus/jackson/map/ser/std/TimeZoneSerializer;->instance:Lcom/flurry/org/codehaus/jackson/map/ser/std/TimeZoneSerializer;

    goto :goto_0

    .line 299
    :cond_6
    const-class v6, Ljava/nio/charset/Charset;

    invoke-virtual {v6, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 300
    sget-object v3, Lcom/flurry/org/codehaus/jackson/map/ser/std/ToStringSerializer;->instance:Lcom/flurry/org/codehaus/jackson/map/ser/std/ToStringSerializer;

    goto :goto_0

    .line 304
    :cond_7
    iget-object v6, p0, Lcom/flurry/org/codehaus/jackson/map/ser/BasicSerializerFactory;->optionalHandlers:Lcom/flurry/org/codehaus/jackson/map/ext/OptionalHandlerFactory;

    invoke-virtual {v6, p2, p1}, Lcom/flurry/org/codehaus/jackson/map/ext/OptionalHandlerFactory;->findSerializer(Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;Lcom/flurry/org/codehaus/jackson/type/JavaType;)Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;

    move-result-object v3

    .line 305
    .local v3, "ser":Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer<*>;"
    if-nez v3, :cond_0

    .line 309
    const-class v6, Ljava/lang/Number;

    invoke-virtual {v6, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 310
    sget-object v3, Lcom/flurry/org/codehaus/jackson/map/ser/StdSerializers$NumberSerializer;->instance:Lcom/flurry/org/codehaus/jackson/map/ser/StdSerializers$NumberSerializer;

    goto :goto_0

    .line 312
    :cond_8
    const-class v6, Ljava/lang/Enum;

    invoke-virtual {v6, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 314
    move-object v0, v2

    .line 315
    .local v0, "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<Ljava/lang/Enum<*>;>;"
    invoke-static {v0, p2, p3}, Lcom/flurry/org/codehaus/jackson/map/ser/std/EnumSerializer;->construct(Ljava/lang/Class;Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;)Lcom/flurry/org/codehaus/jackson/map/ser/std/EnumSerializer;

    move-result-object v3

    goto :goto_0

    .line 317
    .end local v0    # "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<Ljava/lang/Enum<*>;>;"
    :cond_9
    const-class v6, Ljava/util/Calendar;

    invoke-virtual {v6, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 318
    sget-object v3, Lcom/flurry/org/codehaus/jackson/map/ser/std/CalendarSerializer;->instance:Lcom/flurry/org/codehaus/jackson/map/ser/std/CalendarSerializer;

    goto :goto_0

    .line 320
    :cond_a
    const-class v6, Ljava/util/Date;

    invoke-virtual {v6, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 321
    sget-object v3, Lcom/flurry/org/codehaus/jackson/map/ser/std/DateSerializer;->instance:Lcom/flurry/org/codehaus/jackson/map/ser/std/DateSerializer;

    goto :goto_0

    .line 323
    :cond_b
    const/4 v3, 0x0

    goto :goto_0
.end method

.method protected findSerializerFromAnnotation(Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;
    .locals 6
    .param p1, "config"    # Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;
    .param p2, "a"    # Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;
    .param p3, "property"    # Lcom/flurry/org/codehaus/jackson/map/BeanProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;",
            "Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;",
            "Lcom/flurry/org/codehaus/jackson/map/BeanProperty;",
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
    .line 366
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;->getAnnotationIntrospector()Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;->findSerializer(Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Object;

    move-result-object v2

    .line 367
    .local v2, "serDef":Ljava/lang/Object;
    if-nez v2, :cond_1

    .line 368
    const/4 v1, 0x0

    .line 391
    :cond_0
    :goto_0
    return-object v1

    .line 370
    :cond_1
    instance-of v3, v2, Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;

    if-eqz v3, :cond_2

    move-object v1, v2

    .line 371
    check-cast v1, Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;

    .line 372
    .local v1, "ser":Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    instance-of v3, v1, Lcom/flurry/org/codehaus/jackson/map/ContextualSerializer;

    if-eqz v3, :cond_0

    .line 373
    check-cast v1, Lcom/flurry/org/codehaus/jackson/map/ContextualSerializer;

    .end local v1    # "ser":Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    invoke-interface {v1, p1, p3}, Lcom/flurry/org/codehaus/jackson/map/ContextualSerializer;->createContextual(Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;

    move-result-object v1

    goto :goto_0

    .line 380
    :cond_2
    instance-of v3, v2, Ljava/lang/Class;

    if-nez v3, :cond_3

    .line 381
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AnnotationIntrospector returned value of type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; expected type JsonSerializer or Class<JsonSerializer> instead"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_3
    move-object v0, v2

    .line 383
    check-cast v0, Ljava/lang/Class;

    .line 384
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v3, Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;

    invoke-virtual {v3, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 385
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AnnotationIntrospector returned Class "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; expected Class<JsonSerializer>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 387
    :cond_4
    invoke-virtual {p1, p2, v0}, Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;->serializerInstance(Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;Ljava/lang/Class;)Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;

    move-result-object v1

    .line 388
    .restart local v1    # "ser":Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    instance-of v3, v1, Lcom/flurry/org/codehaus/jackson/map/ContextualSerializer;

    if-eqz v3, :cond_0

    .line 389
    check-cast v1, Lcom/flurry/org/codehaus/jackson/map/ContextualSerializer;

    .end local v1    # "ser":Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    invoke-interface {v1, p1, p3}, Lcom/flurry/org/codehaus/jackson/map/ContextualSerializer;->createContextual(Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;

    move-result-object v1

    goto :goto_0
.end method

.method public final getNullSerializer()Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 220
    sget-object v0, Lcom/flurry/org/codehaus/jackson/map/ser/std/NullSerializer;->instance:Lcom/flurry/org/codehaus/jackson/map/ser/std/NullSerializer;

    return-object v0
.end method

.method protected isIndexedList(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 523
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Ljava/util/RandomAccess;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method protected modifyTypeByAnnotation(Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;Lcom/flurry/org/codehaus/jackson/type/JavaType;)Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .locals 5
    .param p1, "config"    # Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;
    .param p2, "a"    # Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/flurry/org/codehaus/jackson/type/JavaType;",
            ">(",
            "Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;",
            "Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;",
            "TT;)TT;"
        }
    .end annotation

    .prologue
    .line 684
    .local p3, "type":Lcom/flurry/org/codehaus/jackson/type/JavaType;, "TT;"
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;->getAnnotationIntrospector()Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;->findSerializationType(Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Class;

    move-result-object v1

    .line 685
    .local v1, "superclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v1, :cond_0

    .line 687
    :try_start_0
    invoke-virtual {p3, v1}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->widenBy(Ljava/lang/Class;)Lcom/flurry/org/codehaus/jackson/type/JavaType;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p3

    .line 692
    :cond_0
    invoke-static {p1, p2, p3}, Lcom/flurry/org/codehaus/jackson/map/ser/BasicSerializerFactory;->modifySecondaryTypesByAnnotation(Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;Lcom/flurry/org/codehaus/jackson/type/JavaType;)Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v2

    return-object v2

    .line 688
    :catch_0
    move-exception v0

    .line 689
    .local v0, "iae":Ljava/lang/IllegalArgumentException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to widen type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " with concrete-type annotation (value "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "), method \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\': "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected usesStaticTyping(Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)Z
    .locals 7
    .param p1, "config"    # Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;
    .param p2, "beanDesc"    # Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;
    .param p3, "typeSer"    # Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;
    .param p4, "property"    # Lcom/flurry/org/codehaus/jackson/map/BeanProperty;

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 774
    if-eqz p3, :cond_1

    .line 804
    :cond_0
    :goto_0
    return v3

    .line 777
    :cond_1
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;->getAnnotationIntrospector()Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object v0

    .line 778
    .local v0, "intr":Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;
    invoke-virtual {p2}, Lcom/flurry/org/codehaus/jackson/map/introspect/BasicBeanDescription;->getClassInfo()Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;->findSerializationTyping(Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;)Lcom/flurry/org/codehaus/jackson/map/annotate/JsonSerialize$Typing;

    move-result-object v1

    .line 779
    .local v1, "t":Lcom/flurry/org/codehaus/jackson/map/annotate/JsonSerialize$Typing;
    if-eqz v1, :cond_2

    .line 780
    sget-object v5, Lcom/flurry/org/codehaus/jackson/map/annotate/JsonSerialize$Typing;->STATIC:Lcom/flurry/org/codehaus/jackson/map/annotate/JsonSerialize$Typing;

    if-ne v1, v5, :cond_3

    move v3, v4

    .line 781
    goto :goto_0

    .line 784
    :cond_2
    sget-object v5, Lcom/flurry/org/codehaus/jackson/map/SerializationConfig$Feature;->USE_STATIC_TYPING:Lcom/flurry/org/codehaus/jackson/map/SerializationConfig$Feature;

    invoke-virtual {p1, v5}, Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;->isEnabled(Lcom/flurry/org/codehaus/jackson/map/SerializationConfig$Feature;)Z

    move-result v5

    if-eqz v5, :cond_3

    move v3, v4

    .line 785
    goto :goto_0

    .line 791
    :cond_3
    if-eqz p4, :cond_0

    .line 792
    invoke-interface {p4}, Lcom/flurry/org/codehaus/jackson/map/BeanProperty;->getType()Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v2

    .line 793
    .local v2, "type":Lcom/flurry/org/codehaus/jackson/type/JavaType;
    invoke-virtual {v2}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->isContainerType()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 794
    invoke-interface {p4}, Lcom/flurry/org/codehaus/jackson/map/BeanProperty;->getMember()Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;

    move-result-object v5

    invoke-interface {p4}, Lcom/flurry/org/codehaus/jackson/map/BeanProperty;->getType()Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;->findSerializationContentType(Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;Lcom/flurry/org/codehaus/jackson/type/JavaType;)Ljava/lang/Class;

    move-result-object v5

    if-eqz v5, :cond_4

    move v3, v4

    .line 795
    goto :goto_0

    .line 797
    :cond_4
    instance-of v5, v2, Lcom/flurry/org/codehaus/jackson/map/type/MapType;

    if-eqz v5, :cond_0

    .line 798
    invoke-interface {p4}, Lcom/flurry/org/codehaus/jackson/map/BeanProperty;->getMember()Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;

    move-result-object v5

    invoke-interface {p4}, Lcom/flurry/org/codehaus/jackson/map/BeanProperty;->getType()Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;->findSerializationKeyType(Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;Lcom/flurry/org/codehaus/jackson/type/JavaType;)Ljava/lang/Class;

    move-result-object v5

    if-eqz v5, :cond_0

    move v3, v4

    .line 799
    goto :goto_0
.end method
