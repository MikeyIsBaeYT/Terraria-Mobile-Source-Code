.class public Lcom/flurry/org/codehaus/jackson/map/ext/JodaSerializers;
.super Ljava/lang/Object;
.source "JodaSerializers.java"

# interfaces
.implements Lcom/flurry/org/codehaus/jackson/map/util/Provider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/org/codehaus/jackson/map/ext/JodaSerializers$DateMidnightSerializer;,
        Lcom/flurry/org/codehaus/jackson/map/ext/JodaSerializers$LocalDateSerializer;,
        Lcom/flurry/org/codehaus/jackson/map/ext/JodaSerializers$LocalDateTimeSerializer;,
        Lcom/flurry/org/codehaus/jackson/map/ext/JodaSerializers$DateTimeSerializer;,
        Lcom/flurry/org/codehaus/jackson/map/ext/JodaSerializers$JodaSerializer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/flurry/org/codehaus/jackson/map/util/Provider",
        "<",
        "Ljava/util/Map$Entry",
        "<",
        "Ljava/lang/Class",
        "<*>;",
        "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer",
        "<*>;>;>;"
    }
.end annotation


# static fields
.field static final _serializers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/flurry/org/codehaus/jackson/map/ext/JodaSerializers;->_serializers:Ljava/util/HashMap;

    .line 31
    sget-object v0, Lcom/flurry/org/codehaus/jackson/map/ext/JodaSerializers;->_serializers:Ljava/util/HashMap;

    const-class v1, Lorg/joda/time/DateTime;

    new-instance v2, Lcom/flurry/org/codehaus/jackson/map/ext/JodaSerializers$DateTimeSerializer;

    invoke-direct {v2}, Lcom/flurry/org/codehaus/jackson/map/ext/JodaSerializers$DateTimeSerializer;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    sget-object v0, Lcom/flurry/org/codehaus/jackson/map/ext/JodaSerializers;->_serializers:Ljava/util/HashMap;

    const-class v1, Lorg/joda/time/LocalDateTime;

    new-instance v2, Lcom/flurry/org/codehaus/jackson/map/ext/JodaSerializers$LocalDateTimeSerializer;

    invoke-direct {v2}, Lcom/flurry/org/codehaus/jackson/map/ext/JodaSerializers$LocalDateTimeSerializer;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    sget-object v0, Lcom/flurry/org/codehaus/jackson/map/ext/JodaSerializers;->_serializers:Ljava/util/HashMap;

    const-class v1, Lorg/joda/time/LocalDate;

    new-instance v2, Lcom/flurry/org/codehaus/jackson/map/ext/JodaSerializers$LocalDateSerializer;

    invoke-direct {v2}, Lcom/flurry/org/codehaus/jackson/map/ext/JodaSerializers$LocalDateSerializer;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    sget-object v0, Lcom/flurry/org/codehaus/jackson/map/ext/JodaSerializers;->_serializers:Ljava/util/HashMap;

    const-class v1, Lorg/joda/time/DateMidnight;

    new-instance v2, Lcom/flurry/org/codehaus/jackson/map/ext/JodaSerializers$DateMidnightSerializer;

    invoke-direct {v2}, Lcom/flurry/org/codehaus/jackson/map/ext/JodaSerializers$DateMidnightSerializer;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    sget-object v0, Lcom/flurry/org/codehaus/jackson/map/ext/JodaSerializers;->_serializers:Ljava/util/HashMap;

    const-class v1, Lorg/joda/time/Period;

    sget-object v2, Lcom/flurry/org/codehaus/jackson/map/ser/std/ToStringSerializer;->instance:Lcom/flurry/org/codehaus/jackson/map/ser/std/ToStringSerializer;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public provide()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer",
            "<*>;>;>;"
        }
    .end annotation

    .prologue
    .line 43
    sget-object v0, Lcom/flurry/org/codehaus/jackson/map/ext/JodaSerializers;->_serializers:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
