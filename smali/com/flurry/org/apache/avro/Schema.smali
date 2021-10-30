.class public abstract Lcom/flurry/org/apache/avro/Schema;
.super Ljava/lang/Object;
.source "Schema.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/org/apache/avro/Schema$4;,
        Lcom/flurry/org/apache/avro/Schema$LockableArrayList;,
        Lcom/flurry/org/apache/avro/Schema$Names;,
        Lcom/flurry/org/apache/avro/Schema$Parser;,
        Lcom/flurry/org/apache/avro/Schema$NullSchema;,
        Lcom/flurry/org/apache/avro/Schema$BooleanSchema;,
        Lcom/flurry/org/apache/avro/Schema$DoubleSchema;,
        Lcom/flurry/org/apache/avro/Schema$FloatSchema;,
        Lcom/flurry/org/apache/avro/Schema$LongSchema;,
        Lcom/flurry/org/apache/avro/Schema$IntSchema;,
        Lcom/flurry/org/apache/avro/Schema$BytesSchema;,
        Lcom/flurry/org/apache/avro/Schema$StringSchema;,
        Lcom/flurry/org/apache/avro/Schema$FixedSchema;,
        Lcom/flurry/org/apache/avro/Schema$UnionSchema;,
        Lcom/flurry/org/apache/avro/Schema$MapSchema;,
        Lcom/flurry/org/apache/avro/Schema$ArraySchema;,
        Lcom/flurry/org/apache/avro/Schema$EnumSchema;,
        Lcom/flurry/org/apache/avro/Schema$RecordSchema;,
        Lcom/flurry/org/apache/avro/Schema$SeenPair;,
        Lcom/flurry/org/apache/avro/Schema$NamedSchema;,
        Lcom/flurry/org/apache/avro/Schema$Name;,
        Lcom/flurry/org/apache/avro/Schema$Field;,
        Lcom/flurry/org/apache/avro/Schema$Props;,
        Lcom/flurry/org/apache/avro/Schema$Type;
    }
.end annotation


# static fields
.field static final FACTORY:Lcom/flurry/org/codehaus/jackson/JsonFactory;

.field private static final FIELD_RESERVED:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final MAPPER:Lcom/flurry/org/codehaus/jackson/map/ObjectMapper;

.field private static final NO_HASHCODE:I = -0x80000000

.field static final PRIMITIVES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/flurry/org/apache/avro/Schema$Type;",
            ">;"
        }
    .end annotation
.end field

.field private static final SCHEMA_RESERVED:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final SEEN_EQUALS:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/Set;",
            ">;"
        }
    .end annotation
.end field

.field private static final SEEN_HASHCODE:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/Map;",
            ">;"
        }
    .end annotation
.end field

.field private static validateNames:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field hashCode:I

.field props:Lcom/flurry/org/apache/avro/Schema$Props;

.field private final type:Lcom/flurry/org/apache/avro/Schema$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 79
    new-instance v0, Lcom/flurry/org/codehaus/jackson/JsonFactory;

    invoke-direct {v0}, Lcom/flurry/org/codehaus/jackson/JsonFactory;-><init>()V

    sput-object v0, Lcom/flurry/org/apache/avro/Schema;->FACTORY:Lcom/flurry/org/codehaus/jackson/JsonFactory;

    .line 80
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/ObjectMapper;

    sget-object v1, Lcom/flurry/org/apache/avro/Schema;->FACTORY:Lcom/flurry/org/codehaus/jackson/JsonFactory;

    invoke-direct {v0, v1}, Lcom/flurry/org/codehaus/jackson/map/ObjectMapper;-><init>(Lcom/flurry/org/codehaus/jackson/JsonFactory;)V

    sput-object v0, Lcom/flurry/org/apache/avro/Schema;->MAPPER:Lcom/flurry/org/codehaus/jackson/map/ObjectMapper;

    .line 85
    sget-object v0, Lcom/flurry/org/apache/avro/Schema;->FACTORY:Lcom/flurry/org/codehaus/jackson/JsonFactory;

    sget-object v1, Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;->ALLOW_COMMENTS:Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;

    invoke-virtual {v0, v1}, Lcom/flurry/org/codehaus/jackson/JsonFactory;->enable(Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;)Lcom/flurry/org/codehaus/jackson/JsonFactory;

    .line 86
    sget-object v0, Lcom/flurry/org/apache/avro/Schema;->FACTORY:Lcom/flurry/org/codehaus/jackson/JsonFactory;

    sget-object v1, Lcom/flurry/org/apache/avro/Schema;->MAPPER:Lcom/flurry/org/codehaus/jackson/map/ObjectMapper;

    invoke-virtual {v0, v1}, Lcom/flurry/org/codehaus/jackson/JsonFactory;->setCodec(Lcom/flurry/org/codehaus/jackson/ObjectCodec;)Lcom/flurry/org/codehaus/jackson/JsonFactory;

    .line 143
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/flurry/org/apache/avro/Schema;->SCHEMA_RESERVED:Ljava/util/Set;

    .line 145
    sget-object v0, Lcom/flurry/org/apache/avro/Schema;->SCHEMA_RESERVED:Ljava/util/Set;

    const/16 v1, 0x9

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "doc"

    aput-object v2, v1, v4

    const-string v2, "fields"

    aput-object v2, v1, v5

    const-string v2, "items"

    aput-object v2, v1, v6

    const-string v2, "name"

    aput-object v2, v1, v7

    const-string v2, "namespace"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "size"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "symbols"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "values"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "type"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 381
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/flurry/org/apache/avro/Schema;->FIELD_RESERVED:Ljava/util/Set;

    .line 383
    sget-object v0, Lcom/flurry/org/apache/avro/Schema;->FIELD_RESERVED:Ljava/util/Set;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "default"

    aput-object v2, v1, v4

    const-string v2, "doc"

    aput-object v2, v1, v5

    const-string v2, "name"

    aput-object v2, v1, v6

    const-string v2, "order"

    aput-object v2, v1, v7

    const-string v2, "type"

    aput-object v2, v1, v8

    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 584
    new-instance v0, Lcom/flurry/org/apache/avro/Schema$1;

    invoke-direct {v0}, Lcom/flurry/org/apache/avro/Schema$1;-><init>()V

    sput-object v0, Lcom/flurry/org/apache/avro/Schema;->SEEN_EQUALS:Ljava/lang/ThreadLocal;

    .line 587
    new-instance v0, Lcom/flurry/org/apache/avro/Schema$2;

    invoke-direct {v0}, Lcom/flurry/org/apache/avro/Schema$2;-><init>()V

    sput-object v0, Lcom/flurry/org/apache/avro/Schema;->SEEN_HASHCODE:Ljava/lang/ThreadLocal;

    .line 1030
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/flurry/org/apache/avro/Schema;->PRIMITIVES:Ljava/util/Map;

    .line 1032
    sget-object v0, Lcom/flurry/org/apache/avro/Schema;->PRIMITIVES:Ljava/util/Map;

    const-string v1, "string"

    sget-object v2, Lcom/flurry/org/apache/avro/Schema$Type;->STRING:Lcom/flurry/org/apache/avro/Schema$Type;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1033
    sget-object v0, Lcom/flurry/org/apache/avro/Schema;->PRIMITIVES:Ljava/util/Map;

    const-string v1, "bytes"

    sget-object v2, Lcom/flurry/org/apache/avro/Schema$Type;->BYTES:Lcom/flurry/org/apache/avro/Schema$Type;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1034
    sget-object v0, Lcom/flurry/org/apache/avro/Schema;->PRIMITIVES:Ljava/util/Map;

    const-string v1, "int"

    sget-object v2, Lcom/flurry/org/apache/avro/Schema$Type;->INT:Lcom/flurry/org/apache/avro/Schema$Type;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1035
    sget-object v0, Lcom/flurry/org/apache/avro/Schema;->PRIMITIVES:Ljava/util/Map;

    const-string v1, "long"

    sget-object v2, Lcom/flurry/org/apache/avro/Schema$Type;->LONG:Lcom/flurry/org/apache/avro/Schema$Type;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1036
    sget-object v0, Lcom/flurry/org/apache/avro/Schema;->PRIMITIVES:Ljava/util/Map;

    const-string v1, "float"

    sget-object v2, Lcom/flurry/org/apache/avro/Schema$Type;->FLOAT:Lcom/flurry/org/apache/avro/Schema$Type;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1037
    sget-object v0, Lcom/flurry/org/apache/avro/Schema;->PRIMITIVES:Ljava/util/Map;

    const-string v1, "double"

    sget-object v2, Lcom/flurry/org/apache/avro/Schema$Type;->DOUBLE:Lcom/flurry/org/apache/avro/Schema$Type;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1038
    sget-object v0, Lcom/flurry/org/apache/avro/Schema;->PRIMITIVES:Ljava/util/Map;

    const-string v1, "boolean"

    sget-object v2, Lcom/flurry/org/apache/avro/Schema$Type;->BOOLEAN:Lcom/flurry/org/apache/avro/Schema$Type;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1039
    sget-object v0, Lcom/flurry/org/apache/avro/Schema;->PRIMITIVES:Ljava/util/Map;

    const-string v1, "null"

    sget-object v2, Lcom/flurry/org/apache/avro/Schema$Type;->NULL:Lcom/flurry/org/apache/avro/Schema$Type;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1077
    new-instance v0, Lcom/flurry/org/apache/avro/Schema$3;

    invoke-direct {v0}, Lcom/flurry/org/apache/avro/Schema$3;-><init>()V

    sput-object v0, Lcom/flurry/org/apache/avro/Schema;->validateNames:Ljava/lang/ThreadLocal;

    return-void
.end method

.method constructor <init>(Lcom/flurry/org/apache/avro/Schema$Type;)V
    .locals 2
    .param p1, "type"    # Lcom/flurry/org/apache/avro/Schema$Type;

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    new-instance v0, Lcom/flurry/org/apache/avro/Schema$Props;

    sget-object v1, Lcom/flurry/org/apache/avro/Schema;->SCHEMA_RESERVED:Ljava/util/Set;

    invoke-direct {v0, v1}, Lcom/flurry/org/apache/avro/Schema$Props;-><init>(Ljava/util/Set;)V

    iput-object v0, p0, Lcom/flurry/org/apache/avro/Schema;->props:Lcom/flurry/org/apache/avro/Schema$Props;

    .line 151
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/flurry/org/apache/avro/Schema;->hashCode:I

    .line 100
    iput-object p1, p0, Lcom/flurry/org/apache/avro/Schema;->type:Lcom/flurry/org/apache/avro/Schema$Type;

    return-void
.end method

.method static synthetic access$100()Ljava/util/Set;
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lcom/flurry/org/apache/avro/Schema;->FIELD_RESERVED:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$1000()Ljava/lang/ThreadLocal;
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lcom/flurry/org/apache/avro/Schema;->SEEN_HASHCODE:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method static synthetic access$1500()Ljava/lang/ThreadLocal;
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lcom/flurry/org/apache/avro/Schema;->validateNames:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method static synthetic access$200(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 78
    invoke-static {p0}, Lcom/flurry/org/apache/avro/Schema;->validateName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/flurry/org/apache/avro/Schema;)Lcom/flurry/org/apache/avro/Schema$Type;
    .locals 1
    .param p0, "x0"    # Lcom/flurry/org/apache/avro/Schema;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/flurry/org/apache/avro/Schema;->type:Lcom/flurry/org/apache/avro/Schema$Type;

    return-object v0
.end method

.method static synthetic access$800()Ljava/lang/ThreadLocal;
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lcom/flurry/org/apache/avro/Schema;->SEEN_EQUALS:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method public static applyAliases(Lcom/flurry/org/apache/avro/Schema;Lcom/flurry/org/apache/avro/Schema;)Lcom/flurry/org/apache/avro/Schema;
    .locals 4
    .param p0, "writer"    # Lcom/flurry/org/apache/avro/Schema;
    .param p1, "reader"    # Lcom/flurry/org/apache/avro/Schema;

    .prologue
    const/4 v3, 0x1

    .line 1280
    if-ne p0, p1, :cond_1

    .line 1293
    .end local p0    # "writer":Lcom/flurry/org/apache/avro/Schema;
    :cond_0
    :goto_0
    return-object p0

    .line 1283
    .restart local p0    # "writer":Lcom/flurry/org/apache/avro/Schema;
    :cond_1
    new-instance v2, Ljava/util/IdentityHashMap;

    invoke-direct {v2, v3}, Ljava/util/IdentityHashMap;-><init>(I)V

    .line 1284
    .local v2, "seen":Ljava/util/Map;, "Ljava/util/Map<Lcom/flurry/org/apache/avro/Schema;Lcom/flurry/org/apache/avro/Schema;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v3}, Ljava/util/HashMap;-><init>(I)V

    .line 1285
    .local v0, "aliases":Ljava/util/Map;, "Ljava/util/Map<Lcom/flurry/org/apache/avro/Schema$Name;Lcom/flurry/org/apache/avro/Schema$Name;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v3}, Ljava/util/HashMap;-><init>(I)V

    .line 1287
    .local v1, "fieldAliases":Ljava/util/Map;, "Ljava/util/Map<Lcom/flurry/org/apache/avro/Schema$Name;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-static {p1, v2, v0, v1}, Lcom/flurry/org/apache/avro/Schema;->getAliases(Lcom/flurry/org/apache/avro/Schema;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    .line 1289
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v3

    if-nez v3, :cond_2

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v3

    if-eqz v3, :cond_0

    .line 1292
    :cond_2
    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 1293
    invoke-static {p0, v2, v0, v1}, Lcom/flurry/org/apache/avro/Schema;->applyAliases(Lcom/flurry/org/apache/avro/Schema;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Lcom/flurry/org/apache/avro/Schema;

    move-result-object p0

    goto :goto_0
.end method

.method private static applyAliases(Lcom/flurry/org/apache/avro/Schema;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Lcom/flurry/org/apache/avro/Schema;
    .locals 19
    .param p0, "s"    # Lcom/flurry/org/apache/avro/Schema;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/apache/avro/Schema;",
            "Ljava/util/Map",
            "<",
            "Lcom/flurry/org/apache/avro/Schema;",
            "Lcom/flurry/org/apache/avro/Schema;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Lcom/flurry/org/apache/avro/Schema$Name;",
            "Lcom/flurry/org/apache/avro/Schema$Name;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Lcom/flurry/org/apache/avro/Schema$Name;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)",
            "Lcom/flurry/org/apache/avro/Schema;"
        }
    .end annotation

    .prologue
    .line 1300
    .local p1, "seen":Ljava/util/Map;, "Ljava/util/Map<Lcom/flurry/org/apache/avro/Schema;Lcom/flurry/org/apache/avro/Schema;>;"
    .local p2, "aliases":Ljava/util/Map;, "Ljava/util/Map<Lcom/flurry/org/apache/avro/Schema$Name;Lcom/flurry/org/apache/avro/Schema$Name;>;"
    .local p3, "fieldAliases":Ljava/util/Map;, "Ljava/util/Map<Lcom/flurry/org/apache/avro/Schema$Name;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    move-object/from16 v0, p0

    instance-of v6, v0, Lcom/flurry/org/apache/avro/Schema$NamedSchema;

    if-eqz v6, :cond_2

    move-object/from16 v6, p0

    check-cast v6, Lcom/flurry/org/apache/avro/Schema$NamedSchema;

    iget-object v13, v6, Lcom/flurry/org/apache/avro/Schema$NamedSchema;->name:Lcom/flurry/org/apache/avro/Schema$Name;

    .line 1301
    .local v13, "name":Lcom/flurry/org/apache/avro/Schema$Name;
    :goto_0
    move-object/from16 v15, p0

    .line 1302
    .local v15, "result":Lcom/flurry/org/apache/avro/Schema;
    sget-object v6, Lcom/flurry/org/apache/avro/Schema$4;->$SwitchMap$org$apache$avro$Schema$Type:[I

    invoke-virtual/range {p0 .. p0}, Lcom/flurry/org/apache/avro/Schema;->getType()Lcom/flurry/org/apache/avro/Schema$Type;

    move-result-object v7

    invoke-virtual {v7}, Lcom/flurry/org/apache/avro/Schema$Type;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 1346
    :cond_0
    :goto_1
    move-object/from16 v0, p0

    if-eq v15, v0, :cond_1

    .line 1347
    iget-object v6, v15, Lcom/flurry/org/apache/avro/Schema;->props:Lcom/flurry/org/apache/avro/Schema$Props;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/flurry/org/apache/avro/Schema;->props:Lcom/flurry/org/apache/avro/Schema$Props;

    invoke-virtual {v6, v7}, Lcom/flurry/org/apache/avro/Schema$Props;->putAll(Ljava/util/Map;)V

    :cond_1
    move-object v6, v15

    .line 1348
    :goto_2
    return-object v6

    .line 1300
    .end local v13    # "name":Lcom/flurry/org/apache/avro/Schema$Name;
    .end local v15    # "result":Lcom/flurry/org/apache/avro/Schema;
    :cond_2
    const/4 v13, 0x0

    goto :goto_0

    .line 1304
    .restart local v13    # "name":Lcom/flurry/org/apache/avro/Schema$Name;
    .restart local v15    # "result":Lcom/flurry/org/apache/avro/Schema;
    :pswitch_0
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/flurry/org/apache/avro/Schema;

    goto :goto_2

    .line 1305
    :cond_3
    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1306
    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .end local v13    # "name":Lcom/flurry/org/apache/avro/Schema$Name;
    check-cast v13, Lcom/flurry/org/apache/avro/Schema$Name;

    .line 1307
    .restart local v13    # "name":Lcom/flurry/org/apache/avro/Schema$Name;
    :cond_4
    invoke-static {v13}, Lcom/flurry/org/apache/avro/Schema$Name;->access$400(Lcom/flurry/org/apache/avro/Schema$Name;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lcom/flurry/org/apache/avro/Schema;->getDoc()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/flurry/org/apache/avro/Schema;->isError()Z

    move-result v18

    move/from16 v0, v18

    invoke-static {v6, v7, v8, v0}, Lcom/flurry/org/apache/avro/Schema;->createRecord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/flurry/org/apache/avro/Schema;

    move-result-object v15

    .line 1308
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-interface {v0, v1, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1309
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 1310
    .local v14, "newFields":Ljava/util/List;, "Ljava/util/List<Lcom/flurry/org/apache/avro/Schema$Field;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/flurry/org/apache/avro/Schema;->getFields()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/flurry/org/apache/avro/Schema$Field;

    .line 1311
    .local v11, "f":Lcom/flurry/org/apache/avro/Schema$Field;
    invoke-static {v11}, Lcom/flurry/org/apache/avro/Schema$Field;->access$1600(Lcom/flurry/org/apache/avro/Schema$Field;)Lcom/flurry/org/apache/avro/Schema;

    move-result-object v6

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-static {v6, v0, v1, v2}, Lcom/flurry/org/apache/avro/Schema;->applyAliases(Lcom/flurry/org/apache/avro/Schema;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Lcom/flurry/org/apache/avro/Schema;

    move-result-object v5

    .line 1312
    .local v5, "fSchema":Lcom/flurry/org/apache/avro/Schema;
    invoke-static {v11}, Lcom/flurry/org/apache/avro/Schema$Field;->access$1700(Lcom/flurry/org/apache/avro/Schema$Field;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p3

    invoke-static {v13, v6, v0}, Lcom/flurry/org/apache/avro/Schema;->getFieldAlias(Lcom/flurry/org/apache/avro/Schema$Name;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    .line 1313
    .local v4, "fName":Ljava/lang/String;
    new-instance v3, Lcom/flurry/org/apache/avro/Schema$Field;

    invoke-static {v11}, Lcom/flurry/org/apache/avro/Schema$Field;->access$1800(Lcom/flurry/org/apache/avro/Schema$Field;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v11}, Lcom/flurry/org/apache/avro/Schema$Field;->access$1900(Lcom/flurry/org/apache/avro/Schema$Field;)Lcom/flurry/org/codehaus/jackson/JsonNode;

    move-result-object v7

    invoke-static {v11}, Lcom/flurry/org/apache/avro/Schema$Field;->access$2000(Lcom/flurry/org/apache/avro/Schema$Field;)Lcom/flurry/org/apache/avro/Schema$Field$Order;

    move-result-object v8

    invoke-direct/range {v3 .. v8}, Lcom/flurry/org/apache/avro/Schema$Field;-><init>(Ljava/lang/String;Lcom/flurry/org/apache/avro/Schema;Ljava/lang/String;Lcom/flurry/org/codehaus/jackson/JsonNode;Lcom/flurry/org/apache/avro/Schema$Field$Order;)V

    .line 1314
    .local v3, "newF":Lcom/flurry/org/apache/avro/Schema$Field;
    invoke-static {v3}, Lcom/flurry/org/apache/avro/Schema$Field;->access$1400(Lcom/flurry/org/apache/avro/Schema$Field;)Lcom/flurry/org/apache/avro/Schema$Props;

    move-result-object v6

    invoke-static {v11}, Lcom/flurry/org/apache/avro/Schema$Field;->access$1400(Lcom/flurry/org/apache/avro/Schema$Field;)Lcom/flurry/org/apache/avro/Schema$Props;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/flurry/org/apache/avro/Schema$Props;->putAll(Ljava/util/Map;)V

    .line 1315
    invoke-interface {v14, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1317
    .end local v3    # "newF":Lcom/flurry/org/apache/avro/Schema$Field;
    .end local v4    # "fName":Ljava/lang/String;
    .end local v5    # "fSchema":Lcom/flurry/org/apache/avro/Schema;
    .end local v11    # "f":Lcom/flurry/org/apache/avro/Schema$Field;
    :cond_5
    invoke-virtual {v15, v14}, Lcom/flurry/org/apache/avro/Schema;->setFields(Ljava/util/List;)V

    goto/16 :goto_1

    .line 1320
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v14    # "newFields":Ljava/util/List;, "Ljava/util/List<Lcom/flurry/org/apache/avro/Schema$Field;>;"
    :pswitch_1
    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1321
    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/flurry/org/apache/avro/Schema$Name;

    invoke-static {v6}, Lcom/flurry/org/apache/avro/Schema$Name;->access$400(Lcom/flurry/org/apache/avro/Schema$Name;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lcom/flurry/org/apache/avro/Schema;->getDoc()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/flurry/org/apache/avro/Schema;->getEnumSymbols()Ljava/util/List;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v6, v7, v8, v0}, Lcom/flurry/org/apache/avro/Schema;->createEnum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/flurry/org/apache/avro/Schema;

    move-result-object v15

    goto/16 :goto_1

    .line 1325
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/flurry/org/apache/avro/Schema;->getElementType()Lcom/flurry/org/apache/avro/Schema;

    move-result-object v6

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-static {v6, v0, v1, v2}, Lcom/flurry/org/apache/avro/Schema;->applyAliases(Lcom/flurry/org/apache/avro/Schema;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Lcom/flurry/org/apache/avro/Schema;

    move-result-object v10

    .line 1326
    .local v10, "e":Lcom/flurry/org/apache/avro/Schema;
    invoke-virtual/range {p0 .. p0}, Lcom/flurry/org/apache/avro/Schema;->getElementType()Lcom/flurry/org/apache/avro/Schema;

    move-result-object v6

    if-eq v10, v6, :cond_0

    .line 1327
    invoke-static {v10}, Lcom/flurry/org/apache/avro/Schema;->createArray(Lcom/flurry/org/apache/avro/Schema;)Lcom/flurry/org/apache/avro/Schema;

    move-result-object v15

    goto/16 :goto_1

    .line 1330
    .end local v10    # "e":Lcom/flurry/org/apache/avro/Schema;
    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Lcom/flurry/org/apache/avro/Schema;->getValueType()Lcom/flurry/org/apache/avro/Schema;

    move-result-object v6

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-static {v6, v0, v1, v2}, Lcom/flurry/org/apache/avro/Schema;->applyAliases(Lcom/flurry/org/apache/avro/Schema;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Lcom/flurry/org/apache/avro/Schema;

    move-result-object v17

    .line 1331
    .local v17, "v":Lcom/flurry/org/apache/avro/Schema;
    invoke-virtual/range {p0 .. p0}, Lcom/flurry/org/apache/avro/Schema;->getValueType()Lcom/flurry/org/apache/avro/Schema;

    move-result-object v6

    move-object/from16 v0, v17

    if-eq v0, v6, :cond_0

    .line 1332
    invoke-static/range {v17 .. v17}, Lcom/flurry/org/apache/avro/Schema;->createMap(Lcom/flurry/org/apache/avro/Schema;)Lcom/flurry/org/apache/avro/Schema;

    move-result-object v15

    goto/16 :goto_1

    .line 1335
    .end local v17    # "v":Lcom/flurry/org/apache/avro/Schema;
    :pswitch_4
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 1336
    .local v16, "types":Ljava/util/List;, "Ljava/util/List<Lcom/flurry/org/apache/avro/Schema;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/flurry/org/apache/avro/Schema;->getTypes()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .restart local v12    # "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/flurry/org/apache/avro/Schema;

    .line 1337
    .local v9, "branch":Lcom/flurry/org/apache/avro/Schema;
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-static {v9, v0, v1, v2}, Lcom/flurry/org/apache/avro/Schema;->applyAliases(Lcom/flurry/org/apache/avro/Schema;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Lcom/flurry/org/apache/avro/Schema;

    move-result-object v6

    move-object/from16 v0, v16

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 1338
    .end local v9    # "branch":Lcom/flurry/org/apache/avro/Schema;
    :cond_6
    invoke-static/range {v16 .. v16}, Lcom/flurry/org/apache/avro/Schema;->createUnion(Ljava/util/List;)Lcom/flurry/org/apache/avro/Schema;

    move-result-object v15

    .line 1339
    goto/16 :goto_1

    .line 1341
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v16    # "types":Ljava/util/List;, "Ljava/util/List<Lcom/flurry/org/apache/avro/Schema;>;"
    :pswitch_5
    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1342
    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/flurry/org/apache/avro/Schema$Name;

    invoke-static {v6}, Lcom/flurry/org/apache/avro/Schema$Name;->access$400(Lcom/flurry/org/apache/avro/Schema$Name;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lcom/flurry/org/apache/avro/Schema;->getDoc()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/flurry/org/apache/avro/Schema;->getFixedSize()I

    move-result v18

    move/from16 v0, v18

    invoke-static {v6, v7, v8, v0}, Lcom/flurry/org/apache/avro/Schema;->createFixed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/flurry/org/apache/avro/Schema;

    move-result-object v15

    goto/16 :goto_1

    .line 1302
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static create(Lcom/flurry/org/apache/avro/Schema$Type;)Lcom/flurry/org/apache/avro/Schema;
    .locals 3
    .param p0, "type"    # Lcom/flurry/org/apache/avro/Schema$Type;

    .prologue
    .line 104
    sget-object v0, Lcom/flurry/org/apache/avro/Schema$4;->$SwitchMap$org$apache$avro$Schema$Type:[I

    invoke-virtual {p0}, Lcom/flurry/org/apache/avro/Schema$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 113
    new-instance v0, Lcom/flurry/org/apache/avro/AvroRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t create a: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/flurry/org/apache/avro/AvroRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :pswitch_0
    new-instance v0, Lcom/flurry/org/apache/avro/Schema$StringSchema;

    invoke-direct {v0}, Lcom/flurry/org/apache/avro/Schema$StringSchema;-><init>()V

    .line 112
    :goto_0
    return-object v0

    .line 106
    :pswitch_1
    new-instance v0, Lcom/flurry/org/apache/avro/Schema$BytesSchema;

    invoke-direct {v0}, Lcom/flurry/org/apache/avro/Schema$BytesSchema;-><init>()V

    goto :goto_0

    .line 107
    :pswitch_2
    new-instance v0, Lcom/flurry/org/apache/avro/Schema$IntSchema;

    invoke-direct {v0}, Lcom/flurry/org/apache/avro/Schema$IntSchema;-><init>()V

    goto :goto_0

    .line 108
    :pswitch_3
    new-instance v0, Lcom/flurry/org/apache/avro/Schema$LongSchema;

    invoke-direct {v0}, Lcom/flurry/org/apache/avro/Schema$LongSchema;-><init>()V

    goto :goto_0

    .line 109
    :pswitch_4
    new-instance v0, Lcom/flurry/org/apache/avro/Schema$FloatSchema;

    invoke-direct {v0}, Lcom/flurry/org/apache/avro/Schema$FloatSchema;-><init>()V

    goto :goto_0

    .line 110
    :pswitch_5
    new-instance v0, Lcom/flurry/org/apache/avro/Schema$DoubleSchema;

    invoke-direct {v0}, Lcom/flurry/org/apache/avro/Schema$DoubleSchema;-><init>()V

    goto :goto_0

    .line 111
    :pswitch_6
    new-instance v0, Lcom/flurry/org/apache/avro/Schema$BooleanSchema;

    invoke-direct {v0}, Lcom/flurry/org/apache/avro/Schema$BooleanSchema;-><init>()V

    goto :goto_0

    .line 112
    :pswitch_7
    new-instance v0, Lcom/flurry/org/apache/avro/Schema$NullSchema;

    invoke-direct {v0}, Lcom/flurry/org/apache/avro/Schema$NullSchema;-><init>()V

    goto :goto_0

    .line 104
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public static createArray(Lcom/flurry/org/apache/avro/Schema;)Lcom/flurry/org/apache/avro/Schema;
    .locals 1
    .param p0, "elementType"    # Lcom/flurry/org/apache/avro/Schema;

    .prologue
    .line 202
    new-instance v0, Lcom/flurry/org/apache/avro/Schema$ArraySchema;

    invoke-direct {v0, p0}, Lcom/flurry/org/apache/avro/Schema$ArraySchema;-><init>(Lcom/flurry/org/apache/avro/Schema;)V

    return-object v0
.end method

.method public static createEnum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/flurry/org/apache/avro/Schema;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "doc"    # Ljava/lang/String;
    .param p2, "namespace"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/flurry/org/apache/avro/Schema;"
        }
    .end annotation

    .prologue
    .line 196
    .local p3, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Lcom/flurry/org/apache/avro/Schema$EnumSchema;

    new-instance v1, Lcom/flurry/org/apache/avro/Schema$Name;

    invoke-direct {v1, p0, p2}, Lcom/flurry/org/apache/avro/Schema$Name;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/flurry/org/apache/avro/Schema$LockableArrayList;

    invoke-direct {v2, p3}, Lcom/flurry/org/apache/avro/Schema$LockableArrayList;-><init>(Ljava/util/List;)V

    invoke-direct {v0, v1, p1, v2}, Lcom/flurry/org/apache/avro/Schema$EnumSchema;-><init>(Lcom/flurry/org/apache/avro/Schema$Name;Ljava/lang/String;Lcom/flurry/org/apache/avro/Schema$LockableArrayList;)V

    return-object v0
.end method

.method public static createFixed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/flurry/org/apache/avro/Schema;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "doc"    # Ljava/lang/String;
    .param p2, "space"    # Ljava/lang/String;
    .param p3, "size"    # I

    .prologue
    .line 218
    new-instance v0, Lcom/flurry/org/apache/avro/Schema$FixedSchema;

    new-instance v1, Lcom/flurry/org/apache/avro/Schema$Name;

    invoke-direct {v1, p0, p2}, Lcom/flurry/org/apache/avro/Schema$Name;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1, p1, p3}, Lcom/flurry/org/apache/avro/Schema$FixedSchema;-><init>(Lcom/flurry/org/apache/avro/Schema$Name;Ljava/lang/String;I)V

    return-object v0
.end method

.method public static createMap(Lcom/flurry/org/apache/avro/Schema;)Lcom/flurry/org/apache/avro/Schema;
    .locals 1
    .param p0, "valueType"    # Lcom/flurry/org/apache/avro/Schema;

    .prologue
    .line 207
    new-instance v0, Lcom/flurry/org/apache/avro/Schema$MapSchema;

    invoke-direct {v0, p0}, Lcom/flurry/org/apache/avro/Schema$MapSchema;-><init>(Lcom/flurry/org/apache/avro/Schema;)V

    return-object v0
.end method

.method public static createRecord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/flurry/org/apache/avro/Schema;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "doc"    # Ljava/lang/String;
    .param p2, "namespace"    # Ljava/lang/String;
    .param p3, "isError"    # Z

    .prologue
    .line 190
    new-instance v0, Lcom/flurry/org/apache/avro/Schema$RecordSchema;

    new-instance v1, Lcom/flurry/org/apache/avro/Schema$Name;

    invoke-direct {v1, p0, p2}, Lcom/flurry/org/apache/avro/Schema$Name;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1, p1, p3}, Lcom/flurry/org/apache/avro/Schema$RecordSchema;-><init>(Lcom/flurry/org/apache/avro/Schema$Name;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public static createRecord(Ljava/util/List;)Lcom/flurry/org/apache/avro/Schema;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/org/apache/avro/Schema$Field;",
            ">;)",
            "Lcom/flurry/org/apache/avro/Schema;"
        }
    .end annotation

    .prologue
    .local p0, "fields":Ljava/util/List;, "Ljava/util/List<Lcom/flurry/org/apache/avro/Schema$Field;>;"
    const/4 v2, 0x0

    .line 182
    const/4 v1, 0x0

    invoke-static {v2, v2, v2, v1}, Lcom/flurry/org/apache/avro/Schema;->createRecord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/flurry/org/apache/avro/Schema;

    move-result-object v0

    .line 183
    .local v0, "result":Lcom/flurry/org/apache/avro/Schema;
    invoke-virtual {v0, p0}, Lcom/flurry/org/apache/avro/Schema;->setFields(Ljava/util/List;)V

    .line 184
    return-object v0
.end method

.method public static createUnion(Ljava/util/List;)Lcom/flurry/org/apache/avro/Schema;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/org/apache/avro/Schema;",
            ">;)",
            "Lcom/flurry/org/apache/avro/Schema;"
        }
    .end annotation

    .prologue
    .line 212
    .local p0, "types":Ljava/util/List;, "Ljava/util/List<Lcom/flurry/org/apache/avro/Schema;>;"
    new-instance v0, Lcom/flurry/org/apache/avro/Schema$UnionSchema;

    new-instance v1, Lcom/flurry/org/apache/avro/Schema$LockableArrayList;

    invoke-direct {v1, p0}, Lcom/flurry/org/apache/avro/Schema$LockableArrayList;-><init>(Ljava/util/List;)V

    invoke-direct {v0, v1}, Lcom/flurry/org/apache/avro/Schema$UnionSchema;-><init>(Lcom/flurry/org/apache/avro/Schema$LockableArrayList;)V

    return-object v0
.end method

.method private static getAliases(Lcom/flurry/org/apache/avro/Schema;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V
    .locals 12
    .param p0, "schema"    # Lcom/flurry/org/apache/avro/Schema;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/apache/avro/Schema;",
            "Ljava/util/Map",
            "<",
            "Lcom/flurry/org/apache/avro/Schema;",
            "Lcom/flurry/org/apache/avro/Schema;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Lcom/flurry/org/apache/avro/Schema$Name;",
            "Lcom/flurry/org/apache/avro/Schema$Name;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Lcom/flurry/org/apache/avro/Schema$Name;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 1356
    .local p1, "seen":Ljava/util/Map;, "Ljava/util/Map<Lcom/flurry/org/apache/avro/Schema;Lcom/flurry/org/apache/avro/Schema;>;"
    .local p2, "aliases":Ljava/util/Map;, "Ljava/util/Map<Lcom/flurry/org/apache/avro/Schema$Name;Lcom/flurry/org/apache/avro/Schema$Name;>;"
    .local p3, "fieldAliases":Ljava/util/Map;, "Ljava/util/Map<Lcom/flurry/org/apache/avro/Schema$Name;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    instance-of v10, p0, Lcom/flurry/org/apache/avro/Schema$NamedSchema;

    if-eqz v10, :cond_0

    move-object v5, p0

    .line 1357
    check-cast v5, Lcom/flurry/org/apache/avro/Schema$NamedSchema;

    .line 1358
    .local v5, "namedSchema":Lcom/flurry/org/apache/avro/Schema$NamedSchema;
    iget-object v10, v5, Lcom/flurry/org/apache/avro/Schema$NamedSchema;->aliases:Ljava/util/Set;

    if-eqz v10, :cond_0

    .line 1359
    iget-object v10, v5, Lcom/flurry/org/apache/avro/Schema$NamedSchema;->aliases:Ljava/util/Set;

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/org/apache/avro/Schema$Name;

    .line 1360
    .local v0, "alias":Lcom/flurry/org/apache/avro/Schema$Name;
    iget-object v10, v5, Lcom/flurry/org/apache/avro/Schema$NamedSchema;->name:Lcom/flurry/org/apache/avro/Schema$Name;

    invoke-interface {p2, v0, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1362
    .end local v0    # "alias":Lcom/flurry/org/apache/avro/Schema$Name;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "namedSchema":Lcom/flurry/org/apache/avro/Schema$NamedSchema;
    :cond_0
    sget-object v10, Lcom/flurry/org/apache/avro/Schema$4;->$SwitchMap$org$apache$avro$Schema$Type:[I

    invoke-virtual {p0}, Lcom/flurry/org/apache/avro/Schema;->getType()Lcom/flurry/org/apache/avro/Schema$Type;

    move-result-object v11

    invoke-virtual {v11}, Lcom/flurry/org/apache/avro/Schema$Type;->ordinal()I

    move-result v11

    aget v10, v10, v11

    packed-switch v10, :pswitch_data_0

    .line 1393
    :cond_1
    :goto_1
    :pswitch_0
    return-void

    .line 1364
    :pswitch_1
    invoke-interface {p1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 1365
    invoke-interface {p1, p0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v6, p0

    .line 1366
    check-cast v6, Lcom/flurry/org/apache/avro/Schema$RecordSchema;

    .line 1367
    .local v6, "record":Lcom/flurry/org/apache/avro/Schema$RecordSchema;
    invoke-virtual {p0}, Lcom/flurry/org/apache/avro/Schema;->getFields()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flurry/org/apache/avro/Schema$Field;

    .line 1368
    .local v1, "field":Lcom/flurry/org/apache/avro/Schema$Field;
    invoke-static {v1}, Lcom/flurry/org/apache/avro/Schema$Field;->access$1300(Lcom/flurry/org/apache/avro/Schema$Field;)Ljava/util/Set;

    move-result-object v10

    if-eqz v10, :cond_3

    .line 1369
    invoke-static {v1}, Lcom/flurry/org/apache/avro/Schema$Field;->access$1300(Lcom/flurry/org/apache/avro/Schema$Field;)Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1370
    .local v2, "fieldAlias":Ljava/lang/String;
    iget-object v10, v6, Lcom/flurry/org/apache/avro/Schema$RecordSchema;->name:Lcom/flurry/org/apache/avro/Schema$Name;

    invoke-interface {p3, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map;

    .line 1371
    .local v8, "recordAliases":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v8, :cond_2

    .line 1372
    iget-object v10, v6, Lcom/flurry/org/apache/avro/Schema$RecordSchema;->name:Lcom/flurry/org/apache/avro/Schema$Name;

    new-instance v8, Ljava/util/HashMap;

    .end local v8    # "recordAliases":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .restart local v8    # "recordAliases":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p3, v10, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1374
    :cond_2
    invoke-static {v1}, Lcom/flurry/org/apache/avro/Schema$Field;->access$1700(Lcom/flurry/org/apache/avro/Schema$Field;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 1376
    .end local v2    # "fieldAlias":Ljava/lang/String;
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v8    # "recordAliases":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    invoke-static {v1}, Lcom/flurry/org/apache/avro/Schema$Field;->access$1600(Lcom/flurry/org/apache/avro/Schema$Field;)Lcom/flurry/org/apache/avro/Schema;

    move-result-object v10

    invoke-static {v10, p1, p2, p3}, Lcom/flurry/org/apache/avro/Schema;->getAliases(Lcom/flurry/org/apache/avro/Schema;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    goto :goto_2

    .line 1378
    .end local v1    # "field":Lcom/flurry/org/apache/avro/Schema$Field;
    :cond_4
    iget-object v10, v6, Lcom/flurry/org/apache/avro/Schema$RecordSchema;->aliases:Ljava/util/Set;

    if-eqz v10, :cond_1

    iget-object v10, v6, Lcom/flurry/org/apache/avro/Schema$RecordSchema;->name:Lcom/flurry/org/apache/avro/Schema$Name;

    invoke-interface {p3, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1379
    iget-object v10, v6, Lcom/flurry/org/apache/avro/Schema$RecordSchema;->aliases:Ljava/util/Set;

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/flurry/org/apache/avro/Schema$Name;

    .line 1380
    .local v7, "recordAlias":Lcom/flurry/org/apache/avro/Schema$Name;
    iget-object v10, v6, Lcom/flurry/org/apache/avro/Schema$RecordSchema;->name:Lcom/flurry/org/apache/avro/Schema$Name;

    invoke-interface {p3, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {p3, v7, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 1383
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v6    # "record":Lcom/flurry/org/apache/avro/Schema$RecordSchema;
    .end local v7    # "recordAlias":Lcom/flurry/org/apache/avro/Schema$Name;
    :pswitch_2
    invoke-virtual {p0}, Lcom/flurry/org/apache/avro/Schema;->getElementType()Lcom/flurry/org/apache/avro/Schema;

    move-result-object v10

    invoke-static {v10, p1, p2, p3}, Lcom/flurry/org/apache/avro/Schema;->getAliases(Lcom/flurry/org/apache/avro/Schema;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    goto/16 :goto_1

    .line 1386
    :pswitch_3
    invoke-virtual {p0}, Lcom/flurry/org/apache/avro/Schema;->getValueType()Lcom/flurry/org/apache/avro/Schema;

    move-result-object v10

    invoke-static {v10, p1, p2, p3}, Lcom/flurry/org/apache/avro/Schema;->getAliases(Lcom/flurry/org/apache/avro/Schema;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    goto/16 :goto_1

    .line 1389
    :pswitch_4
    invoke-virtual {p0}, Lcom/flurry/org/apache/avro/Schema;->getTypes()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "i$":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/flurry/org/apache/avro/Schema;

    .line 1390
    .local v9, "s":Lcom/flurry/org/apache/avro/Schema;
    invoke-static {v9, p1, p2, p3}, Lcom/flurry/org/apache/avro/Schema;->getAliases(Lcom/flurry/org/apache/avro/Schema;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    goto :goto_5

    .line 1362
    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private static getFieldAlias(Lcom/flurry/org/apache/avro/Schema$Name;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 2
    .param p0, "record"    # Lcom/flurry/org/apache/avro/Schema$Name;
    .param p1, "field"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/apache/avro/Schema$Name;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Lcom/flurry/org/apache/avro/Schema$Name;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1397
    .local p2, "fieldAliases":Ljava/util/Map;, "Ljava/util/Map<Lcom/flurry/org/apache/avro/Schema$Name;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface {p2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 1398
    .local v1, "recordAliases":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v1, :cond_1

    .line 1403
    .end local p1    # "field":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .line 1400
    .restart local p1    # "field":Ljava/lang/String;
    :cond_1
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1401
    .local v0, "alias":Ljava/lang/String;
    if-eqz v0, :cond_0

    move-object p1, v0

    .line 1403
    goto :goto_0
.end method

.method private static getOptionalText(Lcom/flurry/org/codehaus/jackson/JsonNode;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "container"    # Lcom/flurry/org/codehaus/jackson/JsonNode;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 1260
    invoke-virtual {p0, p1}, Lcom/flurry/org/codehaus/jackson/JsonNode;->get(Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/JsonNode;

    move-result-object v0

    .line 1261
    .local v0, "jsonNode":Lcom/flurry/org/codehaus/jackson/JsonNode;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/JsonNode;->getTextValue()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static getRequiredText(Lcom/flurry/org/codehaus/jackson/JsonNode;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "container"    # Lcom/flurry/org/codehaus/jackson/JsonNode;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "error"    # Ljava/lang/String;

    .prologue
    .line 1251
    invoke-static {p0, p1}, Lcom/flurry/org/apache/avro/Schema;->getOptionalText(Lcom/flurry/org/codehaus/jackson/JsonNode;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1252
    .local v0, "out":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1253
    new-instance v1, Lcom/flurry/org/apache/avro/SchemaParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/flurry/org/apache/avro/SchemaParseException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1255
    :cond_0
    return-object v0
.end method

.method static parse(Lcom/flurry/org/codehaus/jackson/JsonNode;Lcom/flurry/org/apache/avro/Schema$Names;)Lcom/flurry/org/apache/avro/Schema;
    .locals 39
    .param p0, "schema"    # Lcom/flurry/org/codehaus/jackson/JsonNode;
    .param p1, "names"    # Lcom/flurry/org/apache/avro/Schema$Names;

    .prologue
    .line 1102
    invoke-virtual/range {p0 .. p0}, Lcom/flurry/org/codehaus/jackson/JsonNode;->isTextual()Z

    move-result v36

    if-eqz v36, :cond_0

    .line 1103
    invoke-virtual/range {p0 .. p0}, Lcom/flurry/org/codehaus/jackson/JsonNode;->getTextValue()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, p1

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/flurry/org/apache/avro/Schema$Names;->get(Ljava/lang/Object;)Lcom/flurry/org/apache/avro/Schema;

    move-result-object v25

    .line 1104
    .local v25, "result":Lcom/flurry/org/apache/avro/Schema;
    if-nez v25, :cond_23

    .line 1105
    new-instance v36, Lcom/flurry/org/apache/avro/SchemaParseException;

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "Undefined name: "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-direct/range {v36 .. v37}, Lcom/flurry/org/apache/avro/SchemaParseException;-><init>(Ljava/lang/String;)V

    throw v36

    .line 1107
    .end local v25    # "result":Lcom/flurry/org/apache/avro/Schema;
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/flurry/org/codehaus/jackson/JsonNode;->isObject()Z

    move-result v36

    if-eqz v36, :cond_21

    .line 1109
    const-string v36, "type"

    const-string v37, "No type"

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-static {v0, v1, v2}, Lcom/flurry/org/apache/avro/Schema;->getRequiredText(Lcom/flurry/org/codehaus/jackson/JsonNode;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 1110
    .local v31, "type":Ljava/lang/String;
    const/16 v22, 0x0

    .line 1111
    .local v22, "name":Lcom/flurry/org/apache/avro/Schema$Name;
    const/16 v26, 0x0

    .line 1112
    .local v26, "savedSpace":Ljava/lang/String;
    const/4 v13, 0x0

    .line 1113
    .local v13, "doc":Ljava/lang/String;
    const-string v36, "record"

    move-object/from16 v0, v31

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-nez v36, :cond_1

    const-string v36, "error"

    move-object/from16 v0, v31

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-nez v36, :cond_1

    const-string v36, "enum"

    move-object/from16 v0, v31

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-nez v36, :cond_1

    const-string v36, "fixed"

    move-object/from16 v0, v31

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_3

    .line 1115
    :cond_1
    const-string v36, "namespace"

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-static {v0, v1}, Lcom/flurry/org/apache/avro/Schema;->getOptionalText(Lcom/flurry/org/codehaus/jackson/JsonNode;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 1116
    .local v28, "space":Ljava/lang/String;
    const-string v36, "doc"

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-static {v0, v1}, Lcom/flurry/org/apache/avro/Schema;->getOptionalText(Lcom/flurry/org/codehaus/jackson/JsonNode;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1117
    if-nez v28, :cond_2

    .line 1118
    invoke-virtual/range {p1 .. p1}, Lcom/flurry/org/apache/avro/Schema$Names;->space()Ljava/lang/String;

    move-result-object v28

    .line 1119
    :cond_2
    new-instance v22, Lcom/flurry/org/apache/avro/Schema$Name;

    .end local v22    # "name":Lcom/flurry/org/apache/avro/Schema$Name;
    const-string v36, "name"

    const-string v37, "No name in schema"

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-static {v0, v1, v2}, Lcom/flurry/org/apache/avro/Schema;->getRequiredText(Lcom/flurry/org/codehaus/jackson/JsonNode;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v22

    move-object/from16 v1, v36

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/flurry/org/apache/avro/Schema$Name;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1121
    .restart local v22    # "name":Lcom/flurry/org/apache/avro/Schema$Name;
    invoke-static/range {v22 .. v22}, Lcom/flurry/org/apache/avro/Schema$Name;->access$600(Lcom/flurry/org/apache/avro/Schema$Name;)Ljava/lang/String;

    move-result-object v36

    if-eqz v36, :cond_3

    .line 1122
    invoke-virtual/range {p1 .. p1}, Lcom/flurry/org/apache/avro/Schema$Names;->space()Ljava/lang/String;

    move-result-object v26

    .line 1123
    invoke-static/range {v22 .. v22}, Lcom/flurry/org/apache/avro/Schema$Name;->access$600(Lcom/flurry/org/apache/avro/Schema$Name;)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, p1

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/flurry/org/apache/avro/Schema$Names;->space(Ljava/lang/String;)V

    .line 1126
    .end local v28    # "space":Ljava/lang/String;
    :cond_3
    sget-object v36, Lcom/flurry/org/apache/avro/Schema;->PRIMITIVES:Ljava/util/Map;

    move-object/from16 v0, v36

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_6

    .line 1127
    sget-object v36, Lcom/flurry/org/apache/avro/Schema;->PRIMITIVES:Ljava/util/Map;

    move-object/from16 v0, v36

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Lcom/flurry/org/apache/avro/Schema$Type;

    invoke-static/range {v36 .. v36}, Lcom/flurry/org/apache/avro/Schema;->create(Lcom/flurry/org/apache/avro/Schema$Type;)Lcom/flurry/org/apache/avro/Schema;

    move-result-object v25

    .line 1199
    .restart local v25    # "result":Lcom/flurry/org/apache/avro/Schema;
    :cond_4
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/flurry/org/codehaus/jackson/JsonNode;->getFieldNames()Ljava/util/Iterator;

    move-result-object v18

    .line 1200
    .local v18, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_5
    :goto_1
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v36

    if-eqz v36, :cond_1f

    .line 1201
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    .line 1202
    .local v24, "prop":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/flurry/org/codehaus/jackson/JsonNode;->get(Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/JsonNode;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Lcom/flurry/org/codehaus/jackson/JsonNode;->getTextValue()Ljava/lang/String;

    move-result-object v34

    .line 1203
    .local v34, "value":Ljava/lang/String;
    sget-object v36, Lcom/flurry/org/apache/avro/Schema;->SCHEMA_RESERVED:Ljava/util/Set;

    move-object/from16 v0, v36

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v36

    if-nez v36, :cond_5

    if-eqz v34, :cond_5

    .line 1204
    move-object/from16 v0, v25

    move-object/from16 v1, v24

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lcom/flurry/org/apache/avro/Schema;->addProp(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1128
    .end local v18    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v24    # "prop":Ljava/lang/String;
    .end local v25    # "result":Lcom/flurry/org/apache/avro/Schema;
    .end local v34    # "value":Ljava/lang/String;
    :cond_6
    const-string v36, "record"

    move-object/from16 v0, v31

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-nez v36, :cond_7

    const-string v36, "error"

    move-object/from16 v0, v31

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_13

    .line 1129
    :cond_7
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 1130
    .local v16, "fields":Ljava/util/List;, "Ljava/util/List<Lcom/flurry/org/apache/avro/Schema$Field;>;"
    new-instance v25, Lcom/flurry/org/apache/avro/Schema$RecordSchema;

    const-string v36, "error"

    move-object/from16 v0, v31

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    move-object/from16 v0, v25

    move-object/from16 v1, v22

    move/from16 v2, v36

    invoke-direct {v0, v1, v13, v2}, Lcom/flurry/org/apache/avro/Schema$RecordSchema;-><init>(Lcom/flurry/org/apache/avro/Schema$Name;Ljava/lang/String;Z)V

    .line 1131
    .restart local v25    # "result":Lcom/flurry/org/apache/avro/Schema;
    if-eqz v22, :cond_8

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/flurry/org/apache/avro/Schema$Names;->add(Lcom/flurry/org/apache/avro/Schema;)V

    .line 1132
    :cond_8
    const-string v36, "fields"

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/flurry/org/codehaus/jackson/JsonNode;->get(Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/JsonNode;

    move-result-object v17

    .line 1133
    .local v17, "fieldsNode":Lcom/flurry/org/codehaus/jackson/JsonNode;
    if-eqz v17, :cond_9

    invoke-virtual/range {v17 .. v17}, Lcom/flurry/org/codehaus/jackson/JsonNode;->isArray()Z

    move-result v36

    if-nez v36, :cond_a

    .line 1134
    :cond_9
    new-instance v36, Lcom/flurry/org/apache/avro/SchemaParseException;

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "Record has no fields: "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-direct/range {v36 .. v37}, Lcom/flurry/org/apache/avro/SchemaParseException;-><init>(Ljava/lang/String;)V

    throw v36

    .line 1135
    :cond_a
    invoke-virtual/range {v17 .. v17}, Lcom/flurry/org/codehaus/jackson/JsonNode;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .local v19, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v36

    if-eqz v36, :cond_12

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/flurry/org/codehaus/jackson/JsonNode;

    .line 1136
    .local v14, "field":Lcom/flurry/org/codehaus/jackson/JsonNode;
    const-string v36, "name"

    const-string v37, "No field name"

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    invoke-static {v14, v0, v1}, Lcom/flurry/org/apache/avro/Schema;->getRequiredText(Lcom/flurry/org/codehaus/jackson/JsonNode;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1137
    .local v5, "fieldName":Ljava/lang/String;
    const-string v36, "doc"

    move-object/from16 v0, v36

    invoke-static {v14, v0}, Lcom/flurry/org/apache/avro/Schema;->getOptionalText(Lcom/flurry/org/codehaus/jackson/JsonNode;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1138
    .local v7, "fieldDoc":Ljava/lang/String;
    const-string v36, "type"

    move-object/from16 v0, v36

    invoke-virtual {v14, v0}, Lcom/flurry/org/codehaus/jackson/JsonNode;->get(Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/JsonNode;

    move-result-object v15

    .line 1139
    .local v15, "fieldTypeNode":Lcom/flurry/org/codehaus/jackson/JsonNode;
    if-nez v15, :cond_b

    .line 1140
    new-instance v36, Lcom/flurry/org/apache/avro/SchemaParseException;

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "No field type: "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-direct/range {v36 .. v37}, Lcom/flurry/org/apache/avro/SchemaParseException;-><init>(Ljava/lang/String;)V

    throw v36

    .line 1141
    :cond_b
    invoke-virtual {v15}, Lcom/flurry/org/codehaus/jackson/JsonNode;->isTextual()Z

    move-result v36

    if-eqz v36, :cond_c

    invoke-virtual {v15}, Lcom/flurry/org/codehaus/jackson/JsonNode;->getTextValue()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, p1

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/flurry/org/apache/avro/Schema$Names;->get(Ljava/lang/Object;)Lcom/flurry/org/apache/avro/Schema;

    move-result-object v36

    if-nez v36, :cond_c

    .line 1143
    new-instance v36, Lcom/flurry/org/apache/avro/SchemaParseException;

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v37

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, " is not a defined name."

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, " The type of the \""

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, "\" field must be"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, " a defined name or a {\"type\": ...} expression."

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-direct/range {v36 .. v37}, Lcom/flurry/org/apache/avro/SchemaParseException;-><init>(Ljava/lang/String;)V

    throw v36

    .line 1147
    :cond_c
    move-object/from16 v0, p1

    invoke-static {v15, v0}, Lcom/flurry/org/apache/avro/Schema;->parse(Lcom/flurry/org/codehaus/jackson/JsonNode;Lcom/flurry/org/apache/avro/Schema$Names;)Lcom/flurry/org/apache/avro/Schema;

    move-result-object v6

    .line 1148
    .local v6, "fieldSchema":Lcom/flurry/org/apache/avro/Schema;
    sget-object v9, Lcom/flurry/org/apache/avro/Schema$Field$Order;->ASCENDING:Lcom/flurry/org/apache/avro/Schema$Field$Order;

    .line 1149
    .local v9, "order":Lcom/flurry/org/apache/avro/Schema$Field$Order;
    const-string v36, "order"

    move-object/from16 v0, v36

    invoke-virtual {v14, v0}, Lcom/flurry/org/codehaus/jackson/JsonNode;->get(Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/JsonNode;

    move-result-object v23

    .line 1150
    .local v23, "orderNode":Lcom/flurry/org/codehaus/jackson/JsonNode;
    if-eqz v23, :cond_d

    .line 1151
    invoke-virtual/range {v23 .. v23}, Lcom/flurry/org/codehaus/jackson/JsonNode;->getTextValue()Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v36 .. v36}, Lcom/flurry/org/apache/avro/Schema$Field$Order;->valueOf(Ljava/lang/String;)Lcom/flurry/org/apache/avro/Schema$Field$Order;

    move-result-object v9

    .line 1152
    :cond_d
    const-string v36, "default"

    move-object/from16 v0, v36

    invoke-virtual {v14, v0}, Lcom/flurry/org/codehaus/jackson/JsonNode;->get(Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/JsonNode;

    move-result-object v8

    .line 1153
    .local v8, "defaultValue":Lcom/flurry/org/codehaus/jackson/JsonNode;
    if-eqz v8, :cond_f

    sget-object v36, Lcom/flurry/org/apache/avro/Schema$Type;->FLOAT:Lcom/flurry/org/apache/avro/Schema$Type;

    invoke-virtual {v6}, Lcom/flurry/org/apache/avro/Schema;->getType()Lcom/flurry/org/apache/avro/Schema$Type;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Lcom/flurry/org/apache/avro/Schema$Type;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-nez v36, :cond_e

    sget-object v36, Lcom/flurry/org/apache/avro/Schema$Type;->DOUBLE:Lcom/flurry/org/apache/avro/Schema$Type;

    invoke-virtual {v6}, Lcom/flurry/org/apache/avro/Schema;->getType()Lcom/flurry/org/apache/avro/Schema$Type;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Lcom/flurry/org/apache/avro/Schema$Type;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_f

    :cond_e
    invoke-virtual {v8}, Lcom/flurry/org/codehaus/jackson/JsonNode;->isTextual()Z

    move-result v36

    if-eqz v36, :cond_f

    .line 1157
    new-instance v12, Lcom/flurry/org/codehaus/jackson/node/DoubleNode;

    invoke-virtual {v8}, Lcom/flurry/org/codehaus/jackson/JsonNode;->getTextValue()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v36 .. v36}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v36

    move-wide/from16 v0, v36

    invoke-direct {v12, v0, v1}, Lcom/flurry/org/codehaus/jackson/node/DoubleNode;-><init>(D)V

    .end local v8    # "defaultValue":Lcom/flurry/org/codehaus/jackson/JsonNode;
    .local v12, "defaultValue":Lcom/flurry/org/codehaus/jackson/JsonNode;
    move-object v8, v12

    .line 1159
    .end local v12    # "defaultValue":Lcom/flurry/org/codehaus/jackson/JsonNode;
    .restart local v8    # "defaultValue":Lcom/flurry/org/codehaus/jackson/JsonNode;
    :cond_f
    new-instance v4, Lcom/flurry/org/apache/avro/Schema$Field;

    invoke-direct/range {v4 .. v9}, Lcom/flurry/org/apache/avro/Schema$Field;-><init>(Ljava/lang/String;Lcom/flurry/org/apache/avro/Schema;Ljava/lang/String;Lcom/flurry/org/codehaus/jackson/JsonNode;Lcom/flurry/org/apache/avro/Schema$Field$Order;)V

    .line 1161
    .local v4, "f":Lcom/flurry/org/apache/avro/Schema$Field;
    invoke-virtual {v14}, Lcom/flurry/org/codehaus/jackson/JsonNode;->getFieldNames()Ljava/util/Iterator;

    move-result-object v18

    .line 1162
    .restart local v18    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_10
    :goto_3
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v36

    if-eqz v36, :cond_11

    .line 1163
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    .line 1164
    .restart local v24    # "prop":Ljava/lang/String;
    move-object/from16 v0, v24

    invoke-virtual {v14, v0}, Lcom/flurry/org/codehaus/jackson/JsonNode;->get(Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/JsonNode;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Lcom/flurry/org/codehaus/jackson/JsonNode;->getTextValue()Ljava/lang/String;

    move-result-object v34

    .line 1165
    .restart local v34    # "value":Ljava/lang/String;
    sget-object v36, Lcom/flurry/org/apache/avro/Schema;->FIELD_RESERVED:Ljava/util/Set;

    move-object/from16 v0, v36

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v36

    if-nez v36, :cond_10

    if-eqz v34, :cond_10

    .line 1166
    move-object/from16 v0, v24

    move-object/from16 v1, v34

    invoke-virtual {v4, v0, v1}, Lcom/flurry/org/apache/avro/Schema$Field;->addProp(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 1168
    .end local v24    # "prop":Ljava/lang/String;
    .end local v34    # "value":Ljava/lang/String;
    :cond_11
    invoke-static {v14}, Lcom/flurry/org/apache/avro/Schema;->parseAliases(Lcom/flurry/org/codehaus/jackson/JsonNode;)Ljava/util/Set;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-static {v4, v0}, Lcom/flurry/org/apache/avro/Schema$Field;->access$1302(Lcom/flurry/org/apache/avro/Schema$Field;Ljava/util/Set;)Ljava/util/Set;

    .line 1169
    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 1171
    .end local v4    # "f":Lcom/flurry/org/apache/avro/Schema$Field;
    .end local v5    # "fieldName":Ljava/lang/String;
    .end local v6    # "fieldSchema":Lcom/flurry/org/apache/avro/Schema;
    .end local v7    # "fieldDoc":Ljava/lang/String;
    .end local v8    # "defaultValue":Lcom/flurry/org/codehaus/jackson/JsonNode;
    .end local v9    # "order":Lcom/flurry/org/apache/avro/Schema$Field$Order;
    .end local v14    # "field":Lcom/flurry/org/codehaus/jackson/JsonNode;
    .end local v15    # "fieldTypeNode":Lcom/flurry/org/codehaus/jackson/JsonNode;
    .end local v18    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v23    # "orderNode":Lcom/flurry/org/codehaus/jackson/JsonNode;
    :cond_12
    move-object/from16 v0, v25

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/flurry/org/apache/avro/Schema;->setFields(Ljava/util/List;)V

    goto/16 :goto_0

    .line 1172
    .end local v16    # "fields":Ljava/util/List;, "Ljava/util/List<Lcom/flurry/org/apache/avro/Schema$Field;>;"
    .end local v17    # "fieldsNode":Lcom/flurry/org/codehaus/jackson/JsonNode;
    .end local v19    # "i$":Ljava/util/Iterator;
    .end local v25    # "result":Lcom/flurry/org/apache/avro/Schema;
    :cond_13
    const-string v36, "enum"

    move-object/from16 v0, v31

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_17

    .line 1173
    const-string v36, "symbols"

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/flurry/org/codehaus/jackson/JsonNode;->get(Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/JsonNode;

    move-result-object v30

    .line 1174
    .local v30, "symbolsNode":Lcom/flurry/org/codehaus/jackson/JsonNode;
    if-eqz v30, :cond_14

    invoke-virtual/range {v30 .. v30}, Lcom/flurry/org/codehaus/jackson/JsonNode;->isArray()Z

    move-result v36

    if-nez v36, :cond_15

    .line 1175
    :cond_14
    new-instance v36, Lcom/flurry/org/apache/avro/SchemaParseException;

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "Enum has no symbols: "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-direct/range {v36 .. v37}, Lcom/flurry/org/apache/avro/SchemaParseException;-><init>(Ljava/lang/String;)V

    throw v36

    .line 1176
    :cond_15
    new-instance v29, Lcom/flurry/org/apache/avro/Schema$LockableArrayList;

    invoke-direct/range {v29 .. v29}, Lcom/flurry/org/apache/avro/Schema$LockableArrayList;-><init>()V

    .line 1177
    .local v29, "symbols":Lcom/flurry/org/apache/avro/Schema$LockableArrayList;, "Lcom/flurry/org/apache/avro/Schema$LockableArrayList<Ljava/lang/String;>;"
    invoke-virtual/range {v30 .. v30}, Lcom/flurry/org/codehaus/jackson/JsonNode;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .restart local v19    # "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v36

    if-eqz v36, :cond_16

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/flurry/org/codehaus/jackson/JsonNode;

    .line 1178
    .local v21, "n":Lcom/flurry/org/codehaus/jackson/JsonNode;
    invoke-virtual/range {v21 .. v21}, Lcom/flurry/org/codehaus/jackson/JsonNode;->getTextValue()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v29

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/flurry/org/apache/avro/Schema$LockableArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 1179
    .end local v21    # "n":Lcom/flurry/org/codehaus/jackson/JsonNode;
    :cond_16
    new-instance v25, Lcom/flurry/org/apache/avro/Schema$EnumSchema;

    move-object/from16 v0, v25

    move-object/from16 v1, v22

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v13, v2}, Lcom/flurry/org/apache/avro/Schema$EnumSchema;-><init>(Lcom/flurry/org/apache/avro/Schema$Name;Ljava/lang/String;Lcom/flurry/org/apache/avro/Schema$LockableArrayList;)V

    .line 1180
    .restart local v25    # "result":Lcom/flurry/org/apache/avro/Schema;
    if-eqz v22, :cond_4

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/flurry/org/apache/avro/Schema$Names;->add(Lcom/flurry/org/apache/avro/Schema;)V

    goto/16 :goto_0

    .line 1181
    .end local v19    # "i$":Ljava/util/Iterator;
    .end local v25    # "result":Lcom/flurry/org/apache/avro/Schema;
    .end local v29    # "symbols":Lcom/flurry/org/apache/avro/Schema$LockableArrayList;, "Lcom/flurry/org/apache/avro/Schema$LockableArrayList<Ljava/lang/String;>;"
    .end local v30    # "symbolsNode":Lcom/flurry/org/codehaus/jackson/JsonNode;
    :cond_17
    const-string v36, "array"

    move-object/from16 v0, v31

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_19

    .line 1182
    const-string v36, "items"

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/flurry/org/codehaus/jackson/JsonNode;->get(Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/JsonNode;

    move-result-object v20

    .line 1183
    .local v20, "itemsNode":Lcom/flurry/org/codehaus/jackson/JsonNode;
    if-nez v20, :cond_18

    .line 1184
    new-instance v36, Lcom/flurry/org/apache/avro/SchemaParseException;

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "Array has no items type: "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-direct/range {v36 .. v37}, Lcom/flurry/org/apache/avro/SchemaParseException;-><init>(Ljava/lang/String;)V

    throw v36

    .line 1185
    :cond_18
    new-instance v25, Lcom/flurry/org/apache/avro/Schema$ArraySchema;

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/flurry/org/apache/avro/Schema;->parse(Lcom/flurry/org/codehaus/jackson/JsonNode;Lcom/flurry/org/apache/avro/Schema$Names;)Lcom/flurry/org/apache/avro/Schema;

    move-result-object v36

    move-object/from16 v0, v25

    move-object/from16 v1, v36

    invoke-direct {v0, v1}, Lcom/flurry/org/apache/avro/Schema$ArraySchema;-><init>(Lcom/flurry/org/apache/avro/Schema;)V

    .line 1186
    .restart local v25    # "result":Lcom/flurry/org/apache/avro/Schema;
    goto/16 :goto_0

    .end local v20    # "itemsNode":Lcom/flurry/org/codehaus/jackson/JsonNode;
    .end local v25    # "result":Lcom/flurry/org/apache/avro/Schema;
    :cond_19
    const-string v36, "map"

    move-object/from16 v0, v31

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_1b

    .line 1187
    const-string v36, "values"

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/flurry/org/codehaus/jackson/JsonNode;->get(Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/JsonNode;

    move-result-object v35

    .line 1188
    .local v35, "valuesNode":Lcom/flurry/org/codehaus/jackson/JsonNode;
    if-nez v35, :cond_1a

    .line 1189
    new-instance v36, Lcom/flurry/org/apache/avro/SchemaParseException;

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "Map has no values type: "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-direct/range {v36 .. v37}, Lcom/flurry/org/apache/avro/SchemaParseException;-><init>(Ljava/lang/String;)V

    throw v36

    .line 1190
    :cond_1a
    new-instance v25, Lcom/flurry/org/apache/avro/Schema$MapSchema;

    move-object/from16 v0, v35

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/flurry/org/apache/avro/Schema;->parse(Lcom/flurry/org/codehaus/jackson/JsonNode;Lcom/flurry/org/apache/avro/Schema$Names;)Lcom/flurry/org/apache/avro/Schema;

    move-result-object v36

    move-object/from16 v0, v25

    move-object/from16 v1, v36

    invoke-direct {v0, v1}, Lcom/flurry/org/apache/avro/Schema$MapSchema;-><init>(Lcom/flurry/org/apache/avro/Schema;)V

    .line 1191
    .restart local v25    # "result":Lcom/flurry/org/apache/avro/Schema;
    goto/16 :goto_0

    .end local v25    # "result":Lcom/flurry/org/apache/avro/Schema;
    .end local v35    # "valuesNode":Lcom/flurry/org/codehaus/jackson/JsonNode;
    :cond_1b
    const-string v36, "fixed"

    move-object/from16 v0, v31

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_1e

    .line 1192
    const-string v36, "size"

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/flurry/org/codehaus/jackson/JsonNode;->get(Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/JsonNode;

    move-result-object v27

    .line 1193
    .local v27, "sizeNode":Lcom/flurry/org/codehaus/jackson/JsonNode;
    if-eqz v27, :cond_1c

    invoke-virtual/range {v27 .. v27}, Lcom/flurry/org/codehaus/jackson/JsonNode;->isInt()Z

    move-result v36

    if-nez v36, :cond_1d

    .line 1194
    :cond_1c
    new-instance v36, Lcom/flurry/org/apache/avro/SchemaParseException;

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "Invalid or no size: "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-direct/range {v36 .. v37}, Lcom/flurry/org/apache/avro/SchemaParseException;-><init>(Ljava/lang/String;)V

    throw v36

    .line 1195
    :cond_1d
    new-instance v25, Lcom/flurry/org/apache/avro/Schema$FixedSchema;

    invoke-virtual/range {v27 .. v27}, Lcom/flurry/org/codehaus/jackson/JsonNode;->getIntValue()I

    move-result v36

    move-object/from16 v0, v25

    move-object/from16 v1, v22

    move/from16 v2, v36

    invoke-direct {v0, v1, v13, v2}, Lcom/flurry/org/apache/avro/Schema$FixedSchema;-><init>(Lcom/flurry/org/apache/avro/Schema$Name;Ljava/lang/String;I)V

    .line 1196
    .restart local v25    # "result":Lcom/flurry/org/apache/avro/Schema;
    if-eqz v22, :cond_4

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/flurry/org/apache/avro/Schema$Names;->add(Lcom/flurry/org/apache/avro/Schema;)V

    goto/16 :goto_0

    .line 1198
    .end local v25    # "result":Lcom/flurry/org/apache/avro/Schema;
    .end local v27    # "sizeNode":Lcom/flurry/org/codehaus/jackson/JsonNode;
    :cond_1e
    new-instance v36, Lcom/flurry/org/apache/avro/SchemaParseException;

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "Type not supported: "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-direct/range {v36 .. v37}, Lcom/flurry/org/apache/avro/SchemaParseException;-><init>(Ljava/lang/String;)V

    throw v36

    .line 1206
    .restart local v18    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v25    # "result":Lcom/flurry/org/apache/avro/Schema;
    :cond_1f
    if-eqz v26, :cond_20

    .line 1207
    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/flurry/org/apache/avro/Schema$Names;->space(Ljava/lang/String;)V

    .line 1208
    :cond_20
    move-object/from16 v0, v25

    instance-of v0, v0, Lcom/flurry/org/apache/avro/Schema$NamedSchema;

    move/from16 v36, v0

    if-eqz v36, :cond_23

    .line 1209
    invoke-static/range {p0 .. p0}, Lcom/flurry/org/apache/avro/Schema;->parseAliases(Lcom/flurry/org/codehaus/jackson/JsonNode;)Ljava/util/Set;

    move-result-object v11

    .line 1210
    .local v11, "aliases":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v11, :cond_23

    .line 1211
    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .restart local v19    # "i$":Ljava/util/Iterator;
    :goto_5
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v36

    if-eqz v36, :cond_23

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 1212
    .local v10, "alias":Ljava/lang/String;
    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Lcom/flurry/org/apache/avro/Schema;->addAlias(Ljava/lang/String;)V

    goto :goto_5

    .line 1215
    .end local v10    # "alias":Ljava/lang/String;
    .end local v11    # "aliases":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v13    # "doc":Ljava/lang/String;
    .end local v18    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v19    # "i$":Ljava/util/Iterator;
    .end local v22    # "name":Lcom/flurry/org/apache/avro/Schema$Name;
    .end local v25    # "result":Lcom/flurry/org/apache/avro/Schema;
    .end local v26    # "savedSpace":Ljava/lang/String;
    .end local v31    # "type":Ljava/lang/String;
    :cond_21
    invoke-virtual/range {p0 .. p0}, Lcom/flurry/org/codehaus/jackson/JsonNode;->isArray()Z

    move-result v36

    if-eqz v36, :cond_24

    .line 1216
    new-instance v33, Lcom/flurry/org/apache/avro/Schema$LockableArrayList;

    invoke-virtual/range {p0 .. p0}, Lcom/flurry/org/codehaus/jackson/JsonNode;->size()I

    move-result v36

    move-object/from16 v0, v33

    move/from16 v1, v36

    invoke-direct {v0, v1}, Lcom/flurry/org/apache/avro/Schema$LockableArrayList;-><init>(I)V

    .line 1218
    .local v33, "types":Lcom/flurry/org/apache/avro/Schema$LockableArrayList;, "Lcom/flurry/org/apache/avro/Schema$LockableArrayList<Lcom/flurry/org/apache/avro/Schema;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/flurry/org/codehaus/jackson/JsonNode;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .restart local v19    # "i$":Ljava/util/Iterator;
    :goto_6
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v36

    if-eqz v36, :cond_22

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lcom/flurry/org/codehaus/jackson/JsonNode;

    .line 1219
    .local v32, "typeNode":Lcom/flurry/org/codehaus/jackson/JsonNode;
    move-object/from16 v0, v32

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/flurry/org/apache/avro/Schema;->parse(Lcom/flurry/org/codehaus/jackson/JsonNode;Lcom/flurry/org/apache/avro/Schema$Names;)Lcom/flurry/org/apache/avro/Schema;

    move-result-object v36

    move-object/from16 v0, v33

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/flurry/org/apache/avro/Schema$LockableArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 1220
    .end local v32    # "typeNode":Lcom/flurry/org/codehaus/jackson/JsonNode;
    :cond_22
    new-instance v25, Lcom/flurry/org/apache/avro/Schema$UnionSchema;

    move-object/from16 v0, v25

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Lcom/flurry/org/apache/avro/Schema$UnionSchema;-><init>(Lcom/flurry/org/apache/avro/Schema$LockableArrayList;)V

    .end local v19    # "i$":Ljava/util/Iterator;
    .end local v33    # "types":Lcom/flurry/org/apache/avro/Schema$LockableArrayList;, "Lcom/flurry/org/apache/avro/Schema$LockableArrayList<Lcom/flurry/org/apache/avro/Schema;>;"
    :cond_23
    return-object v25

    .line 1222
    :cond_24
    new-instance v36, Lcom/flurry/org/apache/avro/SchemaParseException;

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "Schema not yet supported: "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-direct/range {v36 .. v37}, Lcom/flurry/org/apache/avro/SchemaParseException;-><init>(Ljava/lang/String;)V

    throw v36
.end method

.method public static parse(Ljava/io/File;)Lcom/flurry/org/apache/avro/Schema;
    .locals 1
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 999
    new-instance v0, Lcom/flurry/org/apache/avro/Schema$Parser;

    invoke-direct {v0}, Lcom/flurry/org/apache/avro/Schema$Parser;-><init>()V

    invoke-virtual {v0, p0}, Lcom/flurry/org/apache/avro/Schema$Parser;->parse(Ljava/io/File;)Lcom/flurry/org/apache/avro/Schema;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Ljava/io/InputStream;)Lcom/flurry/org/apache/avro/Schema;
    .locals 1
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1012
    new-instance v0, Lcom/flurry/org/apache/avro/Schema$Parser;

    invoke-direct {v0}, Lcom/flurry/org/apache/avro/Schema$Parser;-><init>()V

    invoke-virtual {v0, p0}, Lcom/flurry/org/apache/avro/Schema$Parser;->parse(Ljava/io/InputStream;)Lcom/flurry/org/apache/avro/Schema;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Ljava/lang/String;)Lcom/flurry/org/apache/avro/Schema;
    .locals 1
    .param p0, "jsonSchema"    # Ljava/lang/String;

    .prologue
    .line 1019
    new-instance v0, Lcom/flurry/org/apache/avro/Schema$Parser;

    invoke-direct {v0}, Lcom/flurry/org/apache/avro/Schema$Parser;-><init>()V

    invoke-virtual {v0, p0}, Lcom/flurry/org/apache/avro/Schema$Parser;->parse(Ljava/lang/String;)Lcom/flurry/org/apache/avro/Schema;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Ljava/lang/String;Z)Lcom/flurry/org/apache/avro/Schema;
    .locals 1
    .param p0, "jsonSchema"    # Ljava/lang/String;
    .param p1, "validate"    # Z

    .prologue
    .line 1027
    new-instance v0, Lcom/flurry/org/apache/avro/Schema$Parser;

    invoke-direct {v0}, Lcom/flurry/org/apache/avro/Schema$Parser;-><init>()V

    invoke-virtual {v0, p1}, Lcom/flurry/org/apache/avro/Schema$Parser;->setValidate(Z)Lcom/flurry/org/apache/avro/Schema$Parser;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/flurry/org/apache/avro/Schema$Parser;->parse(Ljava/lang/String;)Lcom/flurry/org/apache/avro/Schema;

    move-result-object v0

    return-object v0
.end method

.method private static parseAliases(Lcom/flurry/org/codehaus/jackson/JsonNode;)Ljava/util/Set;
    .locals 7
    .param p0, "node"    # Lcom/flurry/org/codehaus/jackson/JsonNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/JsonNode;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1227
    const-string v4, "aliases"

    invoke-virtual {p0, v4}, Lcom/flurry/org/codehaus/jackson/JsonNode;->get(Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/JsonNode;

    move-result-object v2

    .line 1228
    .local v2, "aliasesNode":Lcom/flurry/org/codehaus/jackson/JsonNode;
    if-nez v2, :cond_1

    .line 1229
    const/4 v1, 0x0

    .line 1238
    :cond_0
    return-object v1

    .line 1230
    :cond_1
    invoke-virtual {v2}, Lcom/flurry/org/codehaus/jackson/JsonNode;->isArray()Z

    move-result v4

    if-nez v4, :cond_2

    .line 1231
    new-instance v4, Lcom/flurry/org/apache/avro/SchemaParseException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "aliases not an array: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/flurry/org/apache/avro/SchemaParseException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1232
    :cond_2
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 1233
    .local v1, "aliases":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {v2}, Lcom/flurry/org/codehaus/jackson/JsonNode;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/org/codehaus/jackson/JsonNode;

    .line 1234
    .local v0, "aliasNode":Lcom/flurry/org/codehaus/jackson/JsonNode;
    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/JsonNode;->isTextual()Z

    move-result v4

    if-nez v4, :cond_3

    .line 1235
    new-instance v4, Lcom/flurry/org/apache/avro/SchemaParseException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "alias not a string: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/flurry/org/apache/avro/SchemaParseException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1236
    :cond_3
    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/JsonNode;->getTextValue()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method static parseJson(Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/JsonNode;
    .locals 4
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 1266
    :try_start_0
    sget-object v1, Lcom/flurry/org/apache/avro/Schema;->MAPPER:Lcom/flurry/org/codehaus/jackson/map/ObjectMapper;

    sget-object v2, Lcom/flurry/org/apache/avro/Schema;->FACTORY:Lcom/flurry/org/codehaus/jackson/JsonFactory;

    new-instance v3, Ljava/io/StringReader;

    invoke-direct {v3, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/flurry/org/codehaus/jackson/JsonFactory;->createJsonParser(Ljava/io/Reader;)Lcom/flurry/org/codehaus/jackson/JsonParser;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/flurry/org/codehaus/jackson/map/ObjectMapper;->readTree(Lcom/flurry/org/codehaus/jackson/JsonParser;)Lcom/flurry/org/codehaus/jackson/JsonNode;
    :try_end_0
    .catch Lcom/flurry/org/codehaus/jackson/JsonParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    return-object v1

    .line 1267
    :catch_0
    move-exception v0

    .line 1268
    .local v0, "e":Lcom/flurry/org/codehaus/jackson/JsonParseException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 1269
    .end local v0    # "e":Lcom/flurry/org/codehaus/jackson/JsonParseException;
    :catch_1
    move-exception v0

    .line 1270
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static validateName(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const/16 v5, 0x5f

    .line 1085
    sget-object v4, Lcom/flurry/org/apache/avro/Schema;->validateNames:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1097
    :cond_0
    return-object p0

    .line 1086
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 1087
    .local v3, "length":I
    if-nez v3, :cond_2

    .line 1088
    new-instance v4, Lcom/flurry/org/apache/avro/SchemaParseException;

    const-string v5, "Empty name"

    invoke-direct {v4, v5}, Lcom/flurry/org/apache/avro/SchemaParseException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1089
    :cond_2
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1090
    .local v1, "first":C
    invoke-static {v1}, Ljava/lang/Character;->isLetter(C)Z

    move-result v4

    if-nez v4, :cond_3

    if-eq v1, v5, :cond_3

    .line 1091
    new-instance v4, Lcom/flurry/org/apache/avro/SchemaParseException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Illegal initial character: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/flurry/org/apache/avro/SchemaParseException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1092
    :cond_3
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 1093
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1094
    .local v0, "c":C
    invoke-static {v0}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v4

    if-nez v4, :cond_4

    if-eq v0, v5, :cond_4

    .line 1095
    new-instance v4, Lcom/flurry/org/apache/avro/SchemaParseException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Illegal character in: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/flurry/org/apache/avro/SchemaParseException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1092
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public addAlias(Ljava/lang/String;)V
    .locals 3
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 287
    new-instance v0, Lcom/flurry/org/apache/avro/AvroRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not a named type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/flurry/org/apache/avro/AvroRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized addProp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 171
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/flurry/org/apache/avro/Schema;->props:Lcom/flurry/org/apache/avro/Schema$Props;

    invoke-virtual {v0, p1, p2}, Lcom/flurry/org/apache/avro/Schema$Props;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/flurry/org/apache/avro/Schema;->hashCode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    monitor-exit p0

    return-void

    .line 171
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method computeHash()I
    .locals 2

    .prologue
    .line 373
    invoke-virtual {p0}, Lcom/flurry/org/apache/avro/Schema;->getType()Lcom/flurry/org/apache/avro/Schema$Type;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/org/apache/avro/Schema$Type;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/flurry/org/apache/avro/Schema;->props:Lcom/flurry/org/apache/avro/Schema$Props;

    invoke-virtual {v1}, Lcom/flurry/org/apache/avro/Schema$Props;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method final equalCachedHash(Lcom/flurry/org/apache/avro/Schema;)Z
    .locals 3
    .param p1, "other"    # Lcom/flurry/org/apache/avro/Schema;

    .prologue
    const/high16 v2, -0x80000000

    .line 376
    iget v0, p0, Lcom/flurry/org/apache/avro/Schema;->hashCode:I

    iget v1, p1, Lcom/flurry/org/apache/avro/Schema;->hashCode:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/flurry/org/apache/avro/Schema;->hashCode:I

    if-eq v0, v2, :cond_0

    iget v0, p1, Lcom/flurry/org/apache/avro/Schema;->hashCode:I

    if-ne v0, v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 361
    if-ne p1, p0, :cond_1

    .line 365
    :cond_0
    :goto_0
    return v1

    .line 362
    :cond_1
    instance-of v3, p1, Lcom/flurry/org/apache/avro/Schema;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 363
    check-cast v0, Lcom/flurry/org/apache/avro/Schema;

    .line 364
    .local v0, "that":Lcom/flurry/org/apache/avro/Schema;
    iget-object v3, p0, Lcom/flurry/org/apache/avro/Schema;->type:Lcom/flurry/org/apache/avro/Schema$Type;

    iget-object v4, v0, Lcom/flurry/org/apache/avro/Schema;->type:Lcom/flurry/org/apache/avro/Schema$Type;

    if-eq v3, v4, :cond_3

    move v1, v2

    goto :goto_0

    .line 365
    :cond_3
    invoke-virtual {p0, v0}, Lcom/flurry/org/apache/avro/Schema;->equalCachedHash(Lcom/flurry/org/apache/avro/Schema;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/flurry/org/apache/avro/Schema;->props:Lcom/flurry/org/apache/avro/Schema$Props;

    iget-object v4, v0, Lcom/flurry/org/apache/avro/Schema;->props:Lcom/flurry/org/apache/avro/Schema$Props;

    invoke-virtual {v3, v4}, Lcom/flurry/org/apache/avro/Schema$Props;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method fieldsToJson(Lcom/flurry/org/apache/avro/Schema$Names;Lcom/flurry/org/codehaus/jackson/JsonGenerator;)V
    .locals 3
    .param p1, "names"    # Lcom/flurry/org/apache/avro/Schema$Names;
    .param p2, "gen"    # Lcom/flurry/org/codehaus/jackson/JsonGenerator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 357
    new-instance v0, Lcom/flurry/org/apache/avro/AvroRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not a record: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/flurry/org/apache/avro/AvroRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAliases()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 292
    new-instance v0, Lcom/flurry/org/apache/avro/AvroRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not a named type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/flurry/org/apache/avro/AvroRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDoc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 271
    const/4 v0, 0x0

    return-object v0
.end method

.method public getElementType()Lcom/flurry/org/apache/avro/Schema;
    .locals 3

    .prologue
    .line 302
    new-instance v0, Lcom/flurry/org/apache/avro/AvroRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not an array: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/flurry/org/apache/avro/AvroRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getEnumOrdinal(Ljava/lang/String;)I
    .locals 3
    .param p1, "symbol"    # Ljava/lang/String;

    .prologue
    .line 256
    new-instance v0, Lcom/flurry/org/apache/avro/AvroRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not an enum: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/flurry/org/apache/avro/AvroRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getEnumSymbols()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 251
    new-instance v0, Lcom/flurry/org/apache/avro/AvroRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not an enum: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/flurry/org/apache/avro/AvroRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getField(Ljava/lang/String;)Lcom/flurry/org/apache/avro/Schema$Field;
    .locals 3
    .param p1, "fieldname"    # Ljava/lang/String;

    .prologue
    .line 230
    new-instance v0, Lcom/flurry/org/apache/avro/AvroRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not a record: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/flurry/org/apache/avro/AvroRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFields()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/org/apache/avro/Schema$Field;",
            ">;"
        }
    .end annotation

    .prologue
    .line 238
    new-instance v0, Lcom/flurry/org/apache/avro/AvroRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not a record: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/flurry/org/apache/avro/AvroRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFixedSize()I
    .locals 3

    .prologue
    .line 322
    new-instance v0, Lcom/flurry/org/apache/avro/AvroRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not fixed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/flurry/org/apache/avro/AvroRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFullName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 282
    invoke-virtual {p0}, Lcom/flurry/org/apache/avro/Schema;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIndexNamed(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 317
    new-instance v0, Lcom/flurry/org/apache/avro/AvroRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not a union: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/flurry/org/apache/avro/AvroRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/flurry/org/apache/avro/Schema;->type:Lcom/flurry/org/apache/avro/Schema$Type;

    invoke-static {v0}, Lcom/flurry/org/apache/avro/Schema$Type;->access$000(Lcom/flurry/org/apache/avro/Schema$Type;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 3

    .prologue
    .line 276
    new-instance v0, Lcom/flurry/org/apache/avro/AvroRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not a named type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/flurry/org/apache/avro/AvroRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized getProp(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 158
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/flurry/org/apache/avro/Schema;->props:Lcom/flurry/org/apache/avro/Schema$Props;

    invoke-virtual {v0, p1}, Lcom/flurry/org/apache/avro/Schema$Props;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getProps()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 177
    iget-object v0, p0, Lcom/flurry/org/apache/avro/Schema;->props:Lcom/flurry/org/apache/avro/Schema$Props;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getType()Lcom/flurry/org/apache/avro/Schema$Type;
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/flurry/org/apache/avro/Schema;->type:Lcom/flurry/org/apache/avro/Schema$Type;

    return-object v0
.end method

.method public getTypes()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/org/apache/avro/Schema;",
            ">;"
        }
    .end annotation

    .prologue
    .line 312
    new-instance v0, Lcom/flurry/org/apache/avro/AvroRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not a union: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/flurry/org/apache/avro/AvroRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getValueType()Lcom/flurry/org/apache/avro/Schema;
    .locals 3

    .prologue
    .line 307
    new-instance v0, Lcom/flurry/org/apache/avro/AvroRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not a map: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/flurry/org/apache/avro/AvroRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hasEnumSymbol(Ljava/lang/String;)Z
    .locals 3
    .param p1, "symbol"    # Ljava/lang/String;

    .prologue
    .line 261
    new-instance v0, Lcom/flurry/org/apache/avro/AvroRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not an enum: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/flurry/org/apache/avro/AvroRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 368
    iget v0, p0, Lcom/flurry/org/apache/avro/Schema;->hashCode:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_0

    .line 369
    invoke-virtual {p0}, Lcom/flurry/org/apache/avro/Schema;->computeHash()I

    move-result v0

    iput v0, p0, Lcom/flurry/org/apache/avro/Schema;->hashCode:I

    .line 370
    :cond_0
    iget v0, p0, Lcom/flurry/org/apache/avro/Schema;->hashCode:I

    return v0
.end method

.method public isError()Z
    .locals 3

    .prologue
    .line 297
    new-instance v0, Lcom/flurry/org/apache/avro/AvroRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not a record: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/flurry/org/apache/avro/AvroRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setFields(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/org/apache/avro/Schema$Field;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 246
    .local p1, "fields":Ljava/util/List;, "Ljava/util/List<Lcom/flurry/org/apache/avro/Schema$Field;>;"
    new-instance v0, Lcom/flurry/org/apache/avro/AvroRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not a record: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/flurry/org/apache/avro/AvroRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method toJson(Lcom/flurry/org/apache/avro/Schema$Names;Lcom/flurry/org/codehaus/jackson/JsonGenerator;)V
    .locals 2
    .param p1, "names"    # Lcom/flurry/org/apache/avro/Schema$Names;
    .param p2, "gen"    # Lcom/flurry/org/codehaus/jackson/JsonGenerator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 346
    iget-object v0, p0, Lcom/flurry/org/apache/avro/Schema;->props:Lcom/flurry/org/apache/avro/Schema$Props;

    invoke-virtual {v0}, Lcom/flurry/org/apache/avro/Schema$Props;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 347
    invoke-virtual {p0}, Lcom/flurry/org/apache/avro/Schema;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/flurry/org/codehaus/jackson/JsonGenerator;->writeString(Ljava/lang/String;)V

    .line 354
    :goto_0
    return-void

    .line 349
    :cond_0
    invoke-virtual {p2}, Lcom/flurry/org/codehaus/jackson/JsonGenerator;->writeStartObject()V

    .line 350
    const-string v0, "type"

    invoke-virtual {p0}, Lcom/flurry/org/apache/avro/Schema;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/flurry/org/codehaus/jackson/JsonGenerator;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    iget-object v0, p0, Lcom/flurry/org/apache/avro/Schema;->props:Lcom/flurry/org/apache/avro/Schema$Props;

    invoke-virtual {v0, p2}, Lcom/flurry/org/apache/avro/Schema$Props;->write(Lcom/flurry/org/codehaus/jackson/JsonGenerator;)V

    .line 352
    invoke-virtual {p2}, Lcom/flurry/org/codehaus/jackson/JsonGenerator;->writeEndObject()V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 327
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/flurry/org/apache/avro/Schema;->toString(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Z)Ljava/lang/String;
    .locals 4
    .param p1, "pretty"    # Z

    .prologue
    .line 334
    :try_start_0
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    .line 335
    .local v2, "writer":Ljava/io/StringWriter;
    sget-object v3, Lcom/flurry/org/apache/avro/Schema;->FACTORY:Lcom/flurry/org/codehaus/jackson/JsonFactory;

    invoke-virtual {v3, v2}, Lcom/flurry/org/codehaus/jackson/JsonFactory;->createJsonGenerator(Ljava/io/Writer;)Lcom/flurry/org/codehaus/jackson/JsonGenerator;

    move-result-object v1

    .line 336
    .local v1, "gen":Lcom/flurry/org/codehaus/jackson/JsonGenerator;
    if-eqz p1, :cond_0

    invoke-virtual {v1}, Lcom/flurry/org/codehaus/jackson/JsonGenerator;->useDefaultPrettyPrinter()Lcom/flurry/org/codehaus/jackson/JsonGenerator;

    .line 337
    :cond_0
    new-instance v3, Lcom/flurry/org/apache/avro/Schema$Names;

    invoke-direct {v3}, Lcom/flurry/org/apache/avro/Schema$Names;-><init>()V

    invoke-virtual {p0, v3, v1}, Lcom/flurry/org/apache/avro/Schema;->toJson(Lcom/flurry/org/apache/avro/Schema$Names;Lcom/flurry/org/codehaus/jackson/JsonGenerator;)V

    .line 338
    invoke-virtual {v1}, Lcom/flurry/org/codehaus/jackson/JsonGenerator;->flush()V

    .line 339
    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 340
    .end local v1    # "gen":Lcom/flurry/org/codehaus/jackson/JsonGenerator;
    .end local v2    # "writer":Ljava/io/StringWriter;
    :catch_0
    move-exception v0

    .line 341
    .local v0, "e":Ljava/io/IOException;
    new-instance v3, Lcom/flurry/org/apache/avro/AvroRuntimeException;

    invoke-direct {v3, v0}, Lcom/flurry/org/apache/avro/AvroRuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method
