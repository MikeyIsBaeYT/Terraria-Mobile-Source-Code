.class public Lcom/flurry/org/codehaus/jackson/map/ser/std/StdKeySerializers;
.super Ljava/lang/Object;
.source "StdKeySerializers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/org/codehaus/jackson/map/ser/std/StdKeySerializers$CalendarKeySerializer;,
        Lcom/flurry/org/codehaus/jackson/map/ser/std/StdKeySerializers$DateKeySerializer;,
        Lcom/flurry/org/codehaus/jackson/map/ser/std/StdKeySerializers$StringKeySerializer;
    }
.end annotation


# static fields
.field protected static final DEFAULT_KEY_SERIALIZER:Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected static final DEFAULT_STRING_SERIALIZER:Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/ser/std/StdKeySerializer;

    invoke-direct {v0}, Lcom/flurry/org/codehaus/jackson/map/ser/std/StdKeySerializer;-><init>()V

    sput-object v0, Lcom/flurry/org/codehaus/jackson/map/ser/std/StdKeySerializers;->DEFAULT_KEY_SERIALIZER:Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;

    .line 18
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/ser/std/StdKeySerializers$StringKeySerializer;

    invoke-direct {v0}, Lcom/flurry/org/codehaus/jackson/map/ser/std/StdKeySerializers$StringKeySerializer;-><init>()V

    sput-object v0, Lcom/flurry/org/codehaus/jackson/map/ser/std/StdKeySerializers;->DEFAULT_STRING_SERIALIZER:Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getStdKeySerializer(Lcom/flurry/org/codehaus/jackson/type/JavaType;)Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;
    .locals 2
    .param p0, "keyType"    # Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/type/JavaType;",
            ")",
            "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 26
    if-nez p0, :cond_0

    .line 27
    sget-object v1, Lcom/flurry/org/codehaus/jackson/map/ser/std/StdKeySerializers;->DEFAULT_KEY_SERIALIZER:Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;

    .line 44
    :goto_0
    return-object v1

    .line 29
    :cond_0
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    .line 30
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v1, Ljava/lang/String;

    if-ne v0, v1, :cond_1

    .line 31
    sget-object v1, Lcom/flurry/org/codehaus/jackson/map/ser/std/StdKeySerializers;->DEFAULT_STRING_SERIALIZER:Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;

    goto :goto_0

    .line 33
    :cond_1
    const-class v1, Ljava/lang/Object;

    if-ne v0, v1, :cond_2

    .line 34
    sget-object v1, Lcom/flurry/org/codehaus/jackson/map/ser/std/StdKeySerializers;->DEFAULT_KEY_SERIALIZER:Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;

    goto :goto_0

    .line 37
    :cond_2
    const-class v1, Ljava/util/Date;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 38
    sget-object v1, Lcom/flurry/org/codehaus/jackson/map/ser/std/StdKeySerializers$DateKeySerializer;->instance:Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;

    goto :goto_0

    .line 40
    :cond_3
    const-class v1, Ljava/util/Calendar;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 41
    sget-object v1, Lcom/flurry/org/codehaus/jackson/map/ser/std/StdKeySerializers$CalendarKeySerializer;->instance:Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;

    goto :goto_0

    .line 44
    :cond_4
    sget-object v1, Lcom/flurry/org/codehaus/jackson/map/ser/std/StdKeySerializers;->DEFAULT_KEY_SERIALIZER:Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;

    goto :goto_0
.end method
