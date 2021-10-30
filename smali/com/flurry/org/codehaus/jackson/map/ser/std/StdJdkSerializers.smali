.class public Lcom/flurry/org/codehaus/jackson/map/ser/std/StdJdkSerializers;
.super Ljava/lang/Object;
.source "StdJdkSerializers.java"

# interfaces
.implements Lcom/flurry/org/codehaus/jackson/map/util/Provider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/org/codehaus/jackson/map/ser/std/StdJdkSerializers$ClassSerializer;,
        Lcom/flurry/org/codehaus/jackson/map/ser/std/StdJdkSerializers$FileSerializer;,
        Lcom/flurry/org/codehaus/jackson/map/ser/std/StdJdkSerializers$AtomicReferenceSerializer;,
        Lcom/flurry/org/codehaus/jackson/map/ser/std/StdJdkSerializers$AtomicLongSerializer;,
        Lcom/flurry/org/codehaus/jackson/map/ser/std/StdJdkSerializers$AtomicIntegerSerializer;,
        Lcom/flurry/org/codehaus/jackson/map/ser/std/StdJdkSerializers$AtomicBooleanSerializer;
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
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    return-void
.end method


# virtual methods
.method public provide()Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 33
    .local v0, "sers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Class<*>;Ljava/lang/Object;>;"
    sget-object v1, Lcom/flurry/org/codehaus/jackson/map/ser/std/ToStringSerializer;->instance:Lcom/flurry/org/codehaus/jackson/map/ser/std/ToStringSerializer;

    .line 35
    .local v1, "sls":Lcom/flurry/org/codehaus/jackson/map/ser/std/ToStringSerializer;
    const-class v2, Ljava/net/URL;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    const-class v2, Ljava/net/URI;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    const-class v2, Ljava/util/Currency;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    const-class v2, Ljava/util/UUID;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    const-class v2, Ljava/util/regex/Pattern;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    const-class v2, Ljava/util/Locale;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    const-class v2, Ljava/util/Locale;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    const-class v2, Ljava/util/concurrent/atomic/AtomicReference;

    const-class v3, Lcom/flurry/org/codehaus/jackson/map/ser/std/StdJdkSerializers$AtomicReferenceSerializer;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    const-class v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const-class v3, Lcom/flurry/org/codehaus/jackson/map/ser/std/StdJdkSerializers$AtomicBooleanSerializer;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    const-class v2, Ljava/util/concurrent/atomic/AtomicInteger;

    const-class v3, Lcom/flurry/org/codehaus/jackson/map/ser/std/StdJdkSerializers$AtomicIntegerSerializer;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    const-class v2, Ljava/util/concurrent/atomic/AtomicLong;

    const-class v3, Lcom/flurry/org/codehaus/jackson/map/ser/std/StdJdkSerializers$AtomicLongSerializer;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    const-class v2, Ljava/io/File;

    const-class v3, Lcom/flurry/org/codehaus/jackson/map/ser/std/StdJdkSerializers$FileSerializer;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    const-class v2, Ljava/lang/Class;

    const-class v3, Lcom/flurry/org/codehaus/jackson/map/ser/std/StdJdkSerializers$ClassSerializer;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const-class v3, Lcom/flurry/org/codehaus/jackson/map/ser/std/NullSerializer;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    return-object v2
.end method
