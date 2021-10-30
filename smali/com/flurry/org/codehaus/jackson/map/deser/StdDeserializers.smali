.class Lcom/flurry/org/codehaus/jackson/map/deser/StdDeserializers;
.super Ljava/lang/Object;
.source "StdDeserializers.java"


# instance fields
.field final _deserializers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/flurry/org/codehaus/jackson/map/type/ClassKey;",
            "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer",
            "<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 8

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/flurry/org/codehaus/jackson/map/deser/StdDeserializers;->_deserializers:Ljava/util/HashMap;

    .line 34
    new-instance v3, Lcom/flurry/org/codehaus/jackson/map/deser/std/UntypedObjectDeserializer;

    invoke-direct {v3}, Lcom/flurry/org/codehaus/jackson/map/deser/std/UntypedObjectDeserializer;-><init>()V

    invoke-direct {p0, v3}, Lcom/flurry/org/codehaus/jackson/map/deser/StdDeserializers;->add(Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer;)V

    .line 37
    new-instance v2, Lcom/flurry/org/codehaus/jackson/map/deser/std/StringDeserializer;

    invoke-direct {v2}, Lcom/flurry/org/codehaus/jackson/map/deser/std/StringDeserializer;-><init>()V

    .line 38
    .local v2, "strDeser":Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer;, "Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer<*>;"
    const-class v3, Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/flurry/org/codehaus/jackson/map/deser/StdDeserializers;->add(Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer;Ljava/lang/Class;)V

    .line 39
    const-class v3, Ljava/lang/CharSequence;

    invoke-direct {p0, v2, v3}, Lcom/flurry/org/codehaus/jackson/map/deser/StdDeserializers;->add(Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer;Ljava/lang/Class;)V

    .line 40
    new-instance v3, Lcom/flurry/org/codehaus/jackson/map/deser/std/ClassDeserializer;

    invoke-direct {v3}, Lcom/flurry/org/codehaus/jackson/map/deser/std/ClassDeserializer;-><init>()V

    invoke-direct {p0, v3}, Lcom/flurry/org/codehaus/jackson/map/deser/StdDeserializers;->add(Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer;)V

    .line 43
    new-instance v3, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer$BooleanDeserializer;

    const-class v4, Ljava/lang/Boolean;

    invoke-direct {v3, v4, v5}, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer$BooleanDeserializer;-><init>(Ljava/lang/Class;Ljava/lang/Boolean;)V

    invoke-direct {p0, v3}, Lcom/flurry/org/codehaus/jackson/map/deser/StdDeserializers;->add(Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer;)V

    .line 44
    new-instance v3, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer$ByteDeserializer;

    const-class v4, Ljava/lang/Byte;

    invoke-direct {v3, v4, v5}, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer$ByteDeserializer;-><init>(Ljava/lang/Class;Ljava/lang/Byte;)V

    invoke-direct {p0, v3}, Lcom/flurry/org/codehaus/jackson/map/deser/StdDeserializers;->add(Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer;)V

    .line 45
    new-instance v3, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer$ShortDeserializer;

    const-class v4, Ljava/lang/Short;

    invoke-direct {v3, v4, v5}, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer$ShortDeserializer;-><init>(Ljava/lang/Class;Ljava/lang/Short;)V

    invoke-direct {p0, v3}, Lcom/flurry/org/codehaus/jackson/map/deser/StdDeserializers;->add(Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer;)V

    .line 46
    new-instance v3, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer$CharacterDeserializer;

    const-class v4, Ljava/lang/Character;

    invoke-direct {v3, v4, v5}, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer$CharacterDeserializer;-><init>(Ljava/lang/Class;Ljava/lang/Character;)V

    invoke-direct {p0, v3}, Lcom/flurry/org/codehaus/jackson/map/deser/StdDeserializers;->add(Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer;)V

    .line 47
    new-instance v3, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer$IntegerDeserializer;

    const-class v4, Ljava/lang/Integer;

    invoke-direct {v3, v4, v5}, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer$IntegerDeserializer;-><init>(Ljava/lang/Class;Ljava/lang/Integer;)V

    invoke-direct {p0, v3}, Lcom/flurry/org/codehaus/jackson/map/deser/StdDeserializers;->add(Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer;)V

    .line 48
    new-instance v3, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer$LongDeserializer;

    const-class v4, Ljava/lang/Long;

    invoke-direct {v3, v4, v5}, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer$LongDeserializer;-><init>(Ljava/lang/Class;Ljava/lang/Long;)V

    invoke-direct {p0, v3}, Lcom/flurry/org/codehaus/jackson/map/deser/StdDeserializers;->add(Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer;)V

    .line 49
    new-instance v3, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer$FloatDeserializer;

    const-class v4, Ljava/lang/Float;

    invoke-direct {v3, v4, v5}, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer$FloatDeserializer;-><init>(Ljava/lang/Class;Ljava/lang/Float;)V

    invoke-direct {p0, v3}, Lcom/flurry/org/codehaus/jackson/map/deser/StdDeserializers;->add(Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer;)V

    .line 50
    new-instance v3, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer$DoubleDeserializer;

    const-class v4, Ljava/lang/Double;

    invoke-direct {v3, v4, v5}, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer$DoubleDeserializer;-><init>(Ljava/lang/Class;Ljava/lang/Double;)V

    invoke-direct {p0, v3}, Lcom/flurry/org/codehaus/jackson/map/deser/StdDeserializers;->add(Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer;)V

    .line 55
    new-instance v3, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer$BooleanDeserializer;

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v3, v4, v5}, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer$BooleanDeserializer;-><init>(Ljava/lang/Class;Ljava/lang/Boolean;)V

    invoke-direct {p0, v3}, Lcom/flurry/org/codehaus/jackson/map/deser/StdDeserializers;->add(Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer;)V

    .line 56
    new-instance v3, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer$ByteDeserializer;

    sget-object v4, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer$ByteDeserializer;-><init>(Ljava/lang/Class;Ljava/lang/Byte;)V

    invoke-direct {p0, v3}, Lcom/flurry/org/codehaus/jackson/map/deser/StdDeserializers;->add(Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer;)V

    .line 57
    new-instance v3, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer$ShortDeserializer;

    sget-object v4, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v6}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer$ShortDeserializer;-><init>(Ljava/lang/Class;Ljava/lang/Short;)V

    invoke-direct {p0, v3}, Lcom/flurry/org/codehaus/jackson/map/deser/StdDeserializers;->add(Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer;)V

    .line 58
    new-instance v3, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer$CharacterDeserializer;

    sget-object v4, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer$CharacterDeserializer;-><init>(Ljava/lang/Class;Ljava/lang/Character;)V

    invoke-direct {p0, v3}, Lcom/flurry/org/codehaus/jackson/map/deser/StdDeserializers;->add(Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer;)V

    .line 59
    new-instance v3, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer$IntegerDeserializer;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer$IntegerDeserializer;-><init>(Ljava/lang/Class;Ljava/lang/Integer;)V

    invoke-direct {p0, v3}, Lcom/flurry/org/codehaus/jackson/map/deser/StdDeserializers;->add(Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer;)V

    .line 60
    new-instance v3, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer$LongDeserializer;

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer$LongDeserializer;-><init>(Ljava/lang/Class;Ljava/lang/Long;)V

    invoke-direct {p0, v3}, Lcom/flurry/org/codehaus/jackson/map/deser/StdDeserializers;->add(Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer;)V

    .line 61
    new-instance v3, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer$FloatDeserializer;

    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer$FloatDeserializer;-><init>(Ljava/lang/Class;Ljava/lang/Float;)V

    invoke-direct {p0, v3}, Lcom/flurry/org/codehaus/jackson/map/deser/StdDeserializers;->add(Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer;)V

    .line 62
    new-instance v3, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer$DoubleDeserializer;

    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer$DoubleDeserializer;-><init>(Ljava/lang/Class;Ljava/lang/Double;)V

    invoke-direct {p0, v3}, Lcom/flurry/org/codehaus/jackson/map/deser/StdDeserializers;->add(Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer;)V

    .line 65
    new-instance v3, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer$NumberDeserializer;

    invoke-direct {v3}, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer$NumberDeserializer;-><init>()V

    invoke-direct {p0, v3}, Lcom/flurry/org/codehaus/jackson/map/deser/StdDeserializers;->add(Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer;)V

    .line 66
    new-instance v3, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer$BigDecimalDeserializer;

    invoke-direct {v3}, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer$BigDecimalDeserializer;-><init>()V

    invoke-direct {p0, v3}, Lcom/flurry/org/codehaus/jackson/map/deser/StdDeserializers;->add(Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer;)V

    .line 67
    new-instance v3, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer$BigIntegerDeserializer;

    invoke-direct {v3}, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer$BigIntegerDeserializer;-><init>()V

    invoke-direct {p0, v3}, Lcom/flurry/org/codehaus/jackson/map/deser/StdDeserializers;->add(Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer;)V

    .line 69
    new-instance v3, Lcom/flurry/org/codehaus/jackson/map/deser/std/CalendarDeserializer;

    invoke-direct {v3}, Lcom/flurry/org/codehaus/jackson/map/deser/std/CalendarDeserializer;-><init>()V

    invoke-direct {p0, v3}, Lcom/flurry/org/codehaus/jackson/map/deser/StdDeserializers;->add(Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer;)V

    .line 70
    new-instance v3, Lcom/flurry/org/codehaus/jackson/map/deser/std/DateDeserializer;

    invoke-direct {v3}, Lcom/flurry/org/codehaus/jackson/map/deser/std/DateDeserializer;-><init>()V

    invoke-direct {p0, v3}, Lcom/flurry/org/codehaus/jackson/map/deser/StdDeserializers;->add(Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer;)V

    .line 74
    new-instance v3, Lcom/flurry/org/codehaus/jackson/map/deser/std/CalendarDeserializer;

    const-class v4, Ljava/util/GregorianCalendar;

    invoke-direct {v3, v4}, Lcom/flurry/org/codehaus/jackson/map/deser/std/CalendarDeserializer;-><init>(Ljava/lang/Class;)V

    const-class v4, Ljava/util/GregorianCalendar;

    invoke-direct {p0, v3, v4}, Lcom/flurry/org/codehaus/jackson/map/deser/StdDeserializers;->add(Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer;Ljava/lang/Class;)V

    .line 76
    new-instance v3, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer$SqlDateDeserializer;

    invoke-direct {v3}, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer$SqlDateDeserializer;-><init>()V

    invoke-direct {p0, v3}, Lcom/flurry/org/codehaus/jackson/map/deser/StdDeserializers;->add(Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer;)V

    .line 77
    new-instance v3, Lcom/flurry/org/codehaus/jackson/map/deser/std/TimestampDeserializer;

    invoke-direct {v3}, Lcom/flurry/org/codehaus/jackson/map/deser/std/TimestampDeserializer;-><init>()V

    invoke-direct {p0, v3}, Lcom/flurry/org/codehaus/jackson/map/deser/StdDeserializers;->add(Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer;)V

    .line 80
    invoke-static {}, Lcom/flurry/org/codehaus/jackson/map/deser/std/FromStringDeserializer;->all()Ljava/lang/Iterable;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/org/codehaus/jackson/map/deser/std/FromStringDeserializer;

    .line 81
    .local v0, "deser":Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer;, "Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer<*>;"
    invoke-direct {p0, v0}, Lcom/flurry/org/codehaus/jackson/map/deser/StdDeserializers;->add(Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer;)V

    goto :goto_0

    .line 87
    .end local v0    # "deser":Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer;, "Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer<*>;"
    :cond_0
    new-instance v3, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer$StackTraceElementDeserializer;

    invoke-direct {v3}, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer$StackTraceElementDeserializer;-><init>()V

    invoke-direct {p0, v3}, Lcom/flurry/org/codehaus/jackson/map/deser/StdDeserializers;->add(Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer;)V

    .line 91
    new-instance v3, Lcom/flurry/org/codehaus/jackson/map/deser/std/AtomicBooleanDeserializer;

    invoke-direct {v3}, Lcom/flurry/org/codehaus/jackson/map/deser/std/AtomicBooleanDeserializer;-><init>()V

    invoke-direct {p0, v3}, Lcom/flurry/org/codehaus/jackson/map/deser/StdDeserializers;->add(Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer;)V

    .line 94
    new-instance v3, Lcom/flurry/org/codehaus/jackson/map/deser/std/TokenBufferDeserializer;

    invoke-direct {v3}, Lcom/flurry/org/codehaus/jackson/map/deser/std/TokenBufferDeserializer;-><init>()V

    invoke-direct {p0, v3}, Lcom/flurry/org/codehaus/jackson/map/deser/StdDeserializers;->add(Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer;)V

    .line 95
    new-instance v3, Lcom/flurry/org/codehaus/jackson/map/deser/std/JavaTypeDeserializer;

    invoke-direct {v3}, Lcom/flurry/org/codehaus/jackson/map/deser/std/JavaTypeDeserializer;-><init>()V

    invoke-direct {p0, v3}, Lcom/flurry/org/codehaus/jackson/map/deser/StdDeserializers;->add(Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer;)V

    .line 96
    return-void
.end method

.method private add(Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 108
    .local p1, "stdDeser":Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer;, "Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer<*>;"
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer;->getValueClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/flurry/org/codehaus/jackson/map/deser/StdDeserializers;->add(Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer;Ljava/lang/Class;)V

    .line 109
    return-void
.end method

.method private add(Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer;Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 115
    .local p1, "stdDeser":Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer;, "Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer<*>;"
    .local p2, "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v0, p1

    .line 117
    .local v0, "deser":Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer<Ljava/lang/Object;>;"
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/deser/StdDeserializers;->_deserializers:Ljava/util/HashMap;

    new-instance v2, Lcom/flurry/org/codehaus/jackson/map/type/ClassKey;

    invoke-direct {v2, p2}, Lcom/flurry/org/codehaus/jackson/map/type/ClassKey;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    return-void
.end method

.method public static constructAll()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Lcom/flurry/org/codehaus/jackson/map/type/ClassKey;",
            "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer",
            "<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 103
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/deser/StdDeserializers;

    invoke-direct {v0}, Lcom/flurry/org/codehaus/jackson/map/deser/StdDeserializers;-><init>()V

    iget-object v0, v0, Lcom/flurry/org/codehaus/jackson/map/deser/StdDeserializers;->_deserializers:Ljava/util/HashMap;

    return-object v0
.end method
