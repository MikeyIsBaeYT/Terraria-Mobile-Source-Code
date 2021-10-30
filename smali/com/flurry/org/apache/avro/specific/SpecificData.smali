.class public Lcom/flurry/org/apache/avro/specific/SpecificData;
.super Lcom/flurry/org/apache/avro/generic/GenericData;
.source "SpecificData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/org/apache/avro/specific/SpecificData$2;,
        Lcom/flurry/org/apache/avro/specific/SpecificData$SchemaConstructable;
    }
.end annotation


# static fields
.field private static final CTOR_CACHE:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class;",
            "Ljava/lang/reflect/Constructor;",
            ">;"
        }
    .end annotation
.end field

.field private static final INSTANCE:Lcom/flurry/org/apache/avro/specific/SpecificData;

.field private static final NO_ARG:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final NO_CLASS:Ljava/lang/Class;

.field private static final NULL_SCHEMA:Lcom/flurry/org/apache/avro/Schema;

.field private static final SCHEMA_ARG:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private classCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field private final classLoader:Ljava/lang/ClassLoader;

.field private final schemaCache:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/reflect/Type;",
            "Lcom/flurry/org/apache/avro/Schema;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 41
    new-instance v0, Lcom/flurry/org/apache/avro/specific/SpecificData;

    invoke-direct {v0}, Lcom/flurry/org/apache/avro/specific/SpecificData;-><init>()V

    sput-object v0, Lcom/flurry/org/apache/avro/specific/SpecificData;->INSTANCE:Lcom/flurry/org/apache/avro/specific/SpecificData;

    .line 45
    new-array v0, v2, [Ljava/lang/Class;

    sput-object v0, Lcom/flurry/org/apache/avro/specific/SpecificData;->NO_ARG:[Ljava/lang/Class;

    .line 46
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Lcom/flurry/org/apache/avro/Schema;

    aput-object v1, v0, v2

    sput-object v0, Lcom/flurry/org/apache/avro/specific/SpecificData;->SCHEMA_ARG:[Ljava/lang/Class;

    .line 47
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/flurry/org/apache/avro/specific/SpecificData;->CTOR_CACHE:Ljava/util/Map;

    .line 80
    new-instance v0, Lcom/flurry/org/apache/avro/specific/SpecificData$1;

    invoke-direct {v0}, Lcom/flurry/org/apache/avro/specific/SpecificData$1;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/flurry/org/apache/avro/specific/SpecificData;->NO_CLASS:Ljava/lang/Class;

    .line 81
    sget-object v0, Lcom/flurry/org/apache/avro/Schema$Type;->NULL:Lcom/flurry/org/apache/avro/Schema$Type;

    invoke-static {v0}, Lcom/flurry/org/apache/avro/Schema;->create(Lcom/flurry/org/apache/avro/Schema$Type;)Lcom/flurry/org/apache/avro/Schema;

    move-result-object v0

    sput-object v0, Lcom/flurry/org/apache/avro/specific/SpecificData;->NULL_SCHEMA:Lcom/flurry/org/apache/avro/Schema;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 51
    const-class v0, Lcom/flurry/org/apache/avro/specific/SpecificData;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/flurry/org/apache/avro/specific/SpecificData;-><init>(Ljava/lang/ClassLoader;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/ClassLoader;)V
    .locals 1
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/flurry/org/apache/avro/generic/GenericData;-><init>()V

    .line 78
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/flurry/org/apache/avro/specific/SpecificData;->classCache:Ljava/util/Map;

    .line 133
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/flurry/org/apache/avro/specific/SpecificData;->schemaCache:Ljava/util/WeakHashMap;

    .line 55
    iput-object p1, p0, Lcom/flurry/org/apache/avro/specific/SpecificData;->classLoader:Ljava/lang/ClassLoader;

    .line 56
    return-void
.end method

.method public static get()Lcom/flurry/org/apache/avro/specific/SpecificData;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/flurry/org/apache/avro/specific/SpecificData;->INSTANCE:Lcom/flurry/org/apache/avro/specific/SpecificData;

    return-object v0
.end method

.method public static getClassName(Lcom/flurry/org/apache/avro/Schema;)Ljava/lang/String;
    .locals 4
    .param p0, "schema"    # Lcom/flurry/org/apache/avro/Schema;

    .prologue
    .line 125
    invoke-virtual {p0}, Lcom/flurry/org/apache/avro/Schema;->getNamespace()Ljava/lang/String;

    move-result-object v2

    .line 126
    .local v2, "namespace":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/flurry/org/apache/avro/Schema;->getName()Ljava/lang/String;

    move-result-object v1

    .line 127
    .local v1, "name":Ljava/lang/String;
    if-eqz v2, :cond_0

    const-string v3, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 130
    .end local v1    # "name":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    .line 129
    .restart local v1    # "name":Ljava/lang/String;
    :cond_1
    const-string v3, "$"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v0, ""

    .line 130
    .local v0, "dot":Ljava/lang/String;
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 129
    .end local v0    # "dot":Ljava/lang/String;
    :cond_2
    const-string v0, "."

    goto :goto_1
.end method

.method public static newInstance(Ljava/lang/Class;Lcom/flurry/org/apache/avro/Schema;)Ljava/lang/Object;
    .locals 6
    .param p0, "c"    # Ljava/lang/Class;
    .param p1, "s"    # Lcom/flurry/org/apache/avro/Schema;

    .prologue
    .line 241
    const-class v4, Lcom/flurry/org/apache/avro/specific/SpecificData$SchemaConstructable;

    invoke-virtual {v4, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    .line 244
    .local v3, "useSchema":Z
    :try_start_0
    sget-object v4, Lcom/flurry/org/apache/avro/specific/SpecificData;->CTOR_CACHE:Ljava/util/Map;

    invoke-interface {v4, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Constructor;

    .line 245
    .local v1, "meth":Ljava/lang/reflect/Constructor;
    if-nez v1, :cond_0

    .line 246
    if-eqz v3, :cond_1

    sget-object v4, Lcom/flurry/org/apache/avro/specific/SpecificData;->SCHEMA_ARG:[Ljava/lang/Class;

    :goto_0
    invoke-virtual {p0, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 247
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 248
    sget-object v4, Lcom/flurry/org/apache/avro/specific/SpecificData;->CTOR_CACHE:Ljava/util/Map;

    invoke-interface {v4, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    :cond_0
    if-eqz v3, :cond_2

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    :goto_1
    invoke-virtual {v1, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 254
    .local v2, "result":Ljava/lang/Object;
    return-object v2

    .line 246
    .end local v2    # "result":Ljava/lang/Object;
    :cond_1
    sget-object v4, Lcom/flurry/org/apache/avro/specific/SpecificData;->NO_ARG:[Ljava/lang/Class;

    goto :goto_0

    .line 250
    :cond_2
    const/4 v4, 0x0

    check-cast v4, [Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 251
    .end local v1    # "meth":Ljava/lang/reflect/Constructor;
    :catch_0
    move-exception v0

    .line 252
    .local v0, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method


# virtual methods
.method protected compare(Ljava/lang/Object;Ljava/lang/Object;Lcom/flurry/org/apache/avro/Schema;Z)I
    .locals 2
    .param p1, "o1"    # Ljava/lang/Object;
    .param p2, "o2"    # Ljava/lang/Object;
    .param p3, "s"    # Lcom/flurry/org/apache/avro/Schema;
    .param p4, "eq"    # Z

    .prologue
    .line 227
    sget-object v0, Lcom/flurry/org/apache/avro/specific/SpecificData$2;->$SwitchMap$org$apache$avro$Schema$Type:[I

    invoke-virtual {p3}, Lcom/flurry/org/apache/avro/Schema;->getType()Lcom/flurry/org/apache/avro/Schema$Type;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/org/apache/avro/Schema$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 232
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/flurry/org/apache/avro/generic/GenericData;->compare(Ljava/lang/Object;Ljava/lang/Object;Lcom/flurry/org/apache/avro/Schema;Z)I

    move-result v0

    .end local p1    # "o1":Ljava/lang/Object;
    .end local p2    # "o2":Ljava/lang/Object;
    :goto_0
    return v0

    .line 229
    .restart local p1    # "o1":Ljava/lang/Object;
    .restart local p2    # "o2":Ljava/lang/Object;
    :pswitch_0
    instance-of v0, p1, Ljava/lang/Enum;

    if-eqz v0, :cond_0

    .line 230
    check-cast p1, Ljava/lang/Enum;

    .end local p1    # "o1":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    check-cast p2, Ljava/lang/Enum;

    .end local p2    # "o2":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0

    .line 227
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public createDatumReader(Lcom/flurry/org/apache/avro/Schema;)Lcom/flurry/org/apache/avro/io/DatumReader;
    .locals 1
    .param p1, "schema"    # Lcom/flurry/org/apache/avro/Schema;

    .prologue
    .line 60
    new-instance v0, Lcom/flurry/org/apache/avro/specific/SpecificDatumReader;

    invoke-direct {v0, p1, p1, p0}, Lcom/flurry/org/apache/avro/specific/SpecificDatumReader;-><init>(Lcom/flurry/org/apache/avro/Schema;Lcom/flurry/org/apache/avro/Schema;Lcom/flurry/org/apache/avro/specific/SpecificData;)V

    return-object v0
.end method

.method public createFixed(Ljava/lang/Object;Lcom/flurry/org/apache/avro/Schema;)Ljava/lang/Object;
    .locals 2
    .param p1, "old"    # Ljava/lang/Object;
    .param p2, "schema"    # Lcom/flurry/org/apache/avro/Schema;

    .prologue
    .line 259
    invoke-static {}, Lcom/flurry/org/apache/avro/specific/SpecificData;->get()Lcom/flurry/org/apache/avro/specific/SpecificData;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/flurry/org/apache/avro/specific/SpecificData;->getClass(Lcom/flurry/org/apache/avro/Schema;)Ljava/lang/Class;

    move-result-object v0

    .line 260
    .local v0, "c":Ljava/lang/Class;
    if-nez v0, :cond_1

    invoke-super {p0, p1, p2}, Lcom/flurry/org/apache/avro/generic/GenericData;->createFixed(Ljava/lang/Object;Lcom/flurry/org/apache/avro/Schema;)Ljava/lang/Object;

    move-result-object p1

    .line 261
    .end local p1    # "old":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object p1

    .restart local p1    # "old":Ljava/lang/Object;
    :cond_1
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0, p2}, Lcom/flurry/org/apache/avro/specific/SpecificData;->newInstance(Ljava/lang/Class;Lcom/flurry/org/apache/avro/Schema;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0
.end method

.method protected createSchema(Ljava/lang/reflect/Type;Ljava/util/Map;)Lcom/flurry/org/apache/avro/Schema;
    .locals 14
    .param p1, "type"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/flurry/org/apache/avro/Schema;",
            ">;)",
            "Lcom/flurry/org/apache/avro/Schema;"
        }
    .end annotation

    .prologue
    .local p2, "names":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/flurry/org/apache/avro/Schema;>;"
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 150
    instance-of v10, p1, Ljava/lang/Class;

    if-eqz v10, :cond_0

    const-class v11, Ljava/lang/CharSequence;

    move-object v10, p1

    check-cast v10, Ljava/lang/Class;

    invoke-virtual {v11, v10}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 152
    sget-object v10, Lcom/flurry/org/apache/avro/Schema$Type;->STRING:Lcom/flurry/org/apache/avro/Schema$Type;

    invoke-static {v10}, Lcom/flurry/org/apache/avro/Schema;->create(Lcom/flurry/org/apache/avro/Schema$Type;)Lcom/flurry/org/apache/avro/Schema;

    move-result-object v8

    .line 204
    .end local p1    # "type":Ljava/lang/reflect/Type;
    :goto_0
    return-object v8

    .line 153
    .restart local p1    # "type":Ljava/lang/reflect/Type;
    :cond_0
    const-class v10, Ljava/nio/ByteBuffer;

    if-ne p1, v10, :cond_1

    .line 154
    sget-object v10, Lcom/flurry/org/apache/avro/Schema$Type;->BYTES:Lcom/flurry/org/apache/avro/Schema$Type;

    invoke-static {v10}, Lcom/flurry/org/apache/avro/Schema;->create(Lcom/flurry/org/apache/avro/Schema$Type;)Lcom/flurry/org/apache/avro/Schema;

    move-result-object v8

    goto :goto_0

    .line 155
    :cond_1
    const-class v10, Ljava/lang/Integer;

    if-eq p1, v10, :cond_2

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p1, v10, :cond_3

    .line 156
    :cond_2
    sget-object v10, Lcom/flurry/org/apache/avro/Schema$Type;->INT:Lcom/flurry/org/apache/avro/Schema$Type;

    invoke-static {v10}, Lcom/flurry/org/apache/avro/Schema;->create(Lcom/flurry/org/apache/avro/Schema$Type;)Lcom/flurry/org/apache/avro/Schema;

    move-result-object v8

    goto :goto_0

    .line 157
    :cond_3
    const-class v10, Ljava/lang/Long;

    if-eq p1, v10, :cond_4

    sget-object v10, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p1, v10, :cond_5

    .line 158
    :cond_4
    sget-object v10, Lcom/flurry/org/apache/avro/Schema$Type;->LONG:Lcom/flurry/org/apache/avro/Schema$Type;

    invoke-static {v10}, Lcom/flurry/org/apache/avro/Schema;->create(Lcom/flurry/org/apache/avro/Schema$Type;)Lcom/flurry/org/apache/avro/Schema;

    move-result-object v8

    goto :goto_0

    .line 159
    :cond_5
    const-class v10, Ljava/lang/Float;

    if-eq p1, v10, :cond_6

    sget-object v10, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p1, v10, :cond_7

    .line 160
    :cond_6
    sget-object v10, Lcom/flurry/org/apache/avro/Schema$Type;->FLOAT:Lcom/flurry/org/apache/avro/Schema$Type;

    invoke-static {v10}, Lcom/flurry/org/apache/avro/Schema;->create(Lcom/flurry/org/apache/avro/Schema$Type;)Lcom/flurry/org/apache/avro/Schema;

    move-result-object v8

    goto :goto_0

    .line 161
    :cond_7
    const-class v10, Ljava/lang/Double;

    if-eq p1, v10, :cond_8

    sget-object v10, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p1, v10, :cond_9

    .line 162
    :cond_8
    sget-object v10, Lcom/flurry/org/apache/avro/Schema$Type;->DOUBLE:Lcom/flurry/org/apache/avro/Schema$Type;

    invoke-static {v10}, Lcom/flurry/org/apache/avro/Schema;->create(Lcom/flurry/org/apache/avro/Schema$Type;)Lcom/flurry/org/apache/avro/Schema;

    move-result-object v8

    goto :goto_0

    .line 163
    :cond_9
    const-class v10, Ljava/lang/Boolean;

    if-eq p1, v10, :cond_a

    sget-object v10, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p1, v10, :cond_b

    .line 164
    :cond_a
    sget-object v10, Lcom/flurry/org/apache/avro/Schema$Type;->BOOLEAN:Lcom/flurry/org/apache/avro/Schema$Type;

    invoke-static {v10}, Lcom/flurry/org/apache/avro/Schema;->create(Lcom/flurry/org/apache/avro/Schema$Type;)Lcom/flurry/org/apache/avro/Schema;

    move-result-object v8

    goto :goto_0

    .line 165
    :cond_b
    const-class v10, Ljava/lang/Void;

    if-eq p1, v10, :cond_c

    sget-object v10, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne p1, v10, :cond_d

    .line 166
    :cond_c
    sget-object v10, Lcom/flurry/org/apache/avro/Schema$Type;->NULL:Lcom/flurry/org/apache/avro/Schema$Type;

    invoke-static {v10}, Lcom/flurry/org/apache/avro/Schema;->create(Lcom/flurry/org/apache/avro/Schema$Type;)Lcom/flurry/org/apache/avro/Schema;

    move-result-object v8

    goto :goto_0

    .line 167
    :cond_d
    instance-of v10, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v10, :cond_13

    move-object v6, p1

    .line 168
    check-cast v6, Ljava/lang/reflect/ParameterizedType;

    .line 169
    .local v6, "ptype":Ljava/lang/reflect/ParameterizedType;
    invoke-interface {v6}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v7

    check-cast v7, Ljava/lang/Class;

    .line 170
    .local v7, "raw":Ljava/lang/Class;
    invoke-interface {v6}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v5

    .line 171
    .local v5, "params":[Ljava/lang/reflect/Type;
    const-class v10, Ljava/util/Collection;

    invoke-virtual {v10, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v10

    if-eqz v10, :cond_f

    .line 172
    array-length v10, v5

    if-eq v10, v13, :cond_e

    .line 173
    new-instance v10, Lcom/flurry/org/apache/avro/AvroTypeException;

    const-string v11, "No array type specified."

    invoke-direct {v10, v11}, Lcom/flurry/org/apache/avro/AvroTypeException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 174
    :cond_e
    aget-object v10, v5, v12

    move-object/from16 v0, p2

    invoke-virtual {p0, v10, v0}, Lcom/flurry/org/apache/avro/specific/SpecificData;->createSchema(Ljava/lang/reflect/Type;Ljava/util/Map;)Lcom/flurry/org/apache/avro/Schema;

    move-result-object v10

    invoke-static {v10}, Lcom/flurry/org/apache/avro/Schema;->createArray(Lcom/flurry/org/apache/avro/Schema;)Lcom/flurry/org/apache/avro/Schema;

    move-result-object v8

    goto/16 :goto_0

    .line 175
    :cond_f
    const-class v10, Ljava/util/Map;

    invoke-virtual {v10, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v10

    if-eqz v10, :cond_12

    .line 176
    aget-object v4, v5, v12

    .line 177
    .local v4, "key":Ljava/lang/reflect/Type;
    aget-object v9, v5, v13

    .line 178
    .local v9, "value":Ljava/lang/reflect/Type;
    instance-of v10, p1, Ljava/lang/Class;

    if-eqz v10, :cond_10

    const-class v10, Ljava/lang/CharSequence;

    check-cast p1, Ljava/lang/Class;

    .end local p1    # "type":Ljava/lang/reflect/Type;
    invoke-virtual {v10, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v10

    if-nez v10, :cond_11

    .line 180
    :cond_10
    new-instance v10, Lcom/flurry/org/apache/avro/AvroTypeException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Map key class not CharSequence: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/flurry/org/apache/avro/AvroTypeException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 181
    :cond_11
    move-object/from16 v0, p2

    invoke-virtual {p0, v9, v0}, Lcom/flurry/org/apache/avro/specific/SpecificData;->createSchema(Ljava/lang/reflect/Type;Ljava/util/Map;)Lcom/flurry/org/apache/avro/Schema;

    move-result-object v10

    invoke-static {v10}, Lcom/flurry/org/apache/avro/Schema;->createMap(Lcom/flurry/org/apache/avro/Schema;)Lcom/flurry/org/apache/avro/Schema;

    move-result-object v8

    goto/16 :goto_0

    .line 183
    .end local v4    # "key":Ljava/lang/reflect/Type;
    .end local v9    # "value":Ljava/lang/reflect/Type;
    .restart local p1    # "type":Ljava/lang/reflect/Type;
    :cond_12
    move-object/from16 v0, p2

    invoke-virtual {p0, v7, v0}, Lcom/flurry/org/apache/avro/specific/SpecificData;->createSchema(Ljava/lang/reflect/Type;Ljava/util/Map;)Lcom/flurry/org/apache/avro/Schema;

    move-result-object v8

    goto/16 :goto_0

    .line 185
    .end local v5    # "params":[Ljava/lang/reflect/Type;
    .end local v6    # "ptype":Ljava/lang/reflect/ParameterizedType;
    .end local v7    # "raw":Ljava/lang/Class;
    :cond_13
    instance-of v10, p1, Ljava/lang/Class;

    if-eqz v10, :cond_15

    move-object v1, p1

    .line 186
    check-cast v1, Ljava/lang/Class;

    .line 187
    .local v1, "c":Ljava/lang/Class;
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 188
    .local v3, "fullName":Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/flurry/org/apache/avro/Schema;

    .line 189
    .local v8, "schema":Lcom/flurry/org/apache/avro/Schema;
    if-nez v8, :cond_14

    .line 191
    :try_start_0
    const-string v10, "SCHEMA$"

    invoke-virtual {v1, v10}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/flurry/org/apache/avro/Schema;

    move-object v0, v10

    check-cast v0, Lcom/flurry/org/apache/avro/Schema;

    move-object v8, v0

    .line 193
    invoke-static {v8}, Lcom/flurry/org/apache/avro/specific/SpecificData;->getClassName(Lcom/flurry/org/apache/avro/Schema;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_14

    .line 195
    invoke-virtual {v8}, Lcom/flurry/org/apache/avro/Schema;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8}, Lcom/flurry/org/apache/avro/Schema;->getNamespace()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/flurry/org/apache/avro/Schema;->parse(Ljava/lang/String;)Lcom/flurry/org/apache/avro/Schema;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v8

    .line 203
    :cond_14
    move-object/from16 v0, p2

    invoke-interface {v0, v3, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 198
    :catch_0
    move-exception v2

    .line 199
    .local v2, "e":Ljava/lang/NoSuchFieldException;
    new-instance v10, Lcom/flurry/org/apache/avro/AvroRuntimeException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Not a Specific class: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/flurry/org/apache/avro/AvroRuntimeException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 200
    .end local v2    # "e":Ljava/lang/NoSuchFieldException;
    :catch_1
    move-exception v2

    .line 201
    .local v2, "e":Ljava/lang/IllegalAccessException;
    new-instance v10, Lcom/flurry/org/apache/avro/AvroRuntimeException;

    invoke-direct {v10, v2}, Lcom/flurry/org/apache/avro/AvroRuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v10

    .line 206
    .end local v1    # "c":Ljava/lang/Class;
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    .end local v3    # "fullName":Ljava/lang/String;
    .end local v8    # "schema":Lcom/flurry/org/apache/avro/Schema;
    :cond_15
    new-instance v10, Lcom/flurry/org/apache/avro/AvroTypeException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unknown type: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/flurry/org/apache/avro/AvroTypeException;-><init>(Ljava/lang/String;)V

    throw v10
.end method

.method public getClass(Lcom/flurry/org/apache/avro/Schema;)Ljava/lang/Class;
    .locals 8
    .param p1, "schema"    # Lcom/flurry/org/apache/avro/Schema;

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 85
    sget-object v6, Lcom/flurry/org/apache/avro/specific/SpecificData$2;->$SwitchMap$org$apache$avro$Schema$Type:[I

    invoke-virtual {p1}, Lcom/flurry/org/apache/avro/Schema;->getType()Lcom/flurry/org/apache/avro/Schema$Type;

    move-result-object v7

    invoke-virtual {v7}, Lcom/flurry/org/apache/avro/Schema$Type;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 119
    new-instance v4, Lcom/flurry/org/apache/avro/AvroRuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/flurry/org/apache/avro/AvroRuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 89
    :pswitch_0
    invoke-virtual {p1}, Lcom/flurry/org/apache/avro/Schema;->getFullName()Ljava/lang/String;

    move-result-object v2

    .line 90
    .local v2, "name":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 118
    .end local v2    # "name":Ljava/lang/String;
    :goto_0
    return-object v4

    .line 91
    .restart local v2    # "name":Ljava/lang/String;
    :cond_0
    iget-object v5, p0, Lcom/flurry/org/apache/avro/specific/SpecificData;->classCache:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 92
    .local v0, "c":Ljava/lang/Class;
    if-nez v0, :cond_1

    .line 94
    :try_start_0
    iget-object v5, p0, Lcom/flurry/org/apache/avro/specific/SpecificData;->classLoader:Ljava/lang/ClassLoader;

    invoke-static {p1}, Lcom/flurry/org/apache/avro/specific/SpecificData;->getClassName(Lcom/flurry/org/apache/avro/Schema;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 98
    :goto_1
    iget-object v5, p0, Lcom/flurry/org/apache/avro/specific/SpecificData;->classCache:Ljava/util/Map;

    invoke-interface {v5, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    :cond_1
    sget-object v5, Lcom/flurry/org/apache/avro/specific/SpecificData;->NO_CLASS:Ljava/lang/Class;

    if-ne v0, v5, :cond_2

    move-object v0, v4

    .end local v0    # "c":Ljava/lang/Class;
    :cond_2
    move-object v4, v0

    goto :goto_0

    .line 95
    .restart local v0    # "c":Ljava/lang/Class;
    :catch_0
    move-exception v1

    .line 96
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    sget-object v0, Lcom/flurry/org/apache/avro/specific/SpecificData;->NO_CLASS:Ljava/lang/Class;

    goto :goto_1

    .line 101
    .end local v0    # "c":Ljava/lang/Class;
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    .end local v2    # "name":Ljava/lang/String;
    :pswitch_1
    const-class v4, Ljava/util/List;

    goto :goto_0

    .line 102
    :pswitch_2
    const-class v4, Ljava/util/Map;

    goto :goto_0

    .line 104
    :pswitch_3
    invoke-virtual {p1}, Lcom/flurry/org/apache/avro/Schema;->getTypes()Ljava/util/List;

    move-result-object v3

    .line 105
    .local v3, "types":Ljava/util/List;, "Ljava/util/List<Lcom/flurry/org/apache/avro/Schema;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    const/4 v6, 0x2

    if-ne v4, v6, :cond_4

    sget-object v4, Lcom/flurry/org/apache/avro/specific/SpecificData;->NULL_SCHEMA:Lcom/flurry/org/apache/avro/Schema;

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 106
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/flurry/org/apache/avro/Schema;

    sget-object v6, Lcom/flurry/org/apache/avro/specific/SpecificData;->NULL_SCHEMA:Lcom/flurry/org/apache/avro/Schema;

    invoke-virtual {v4, v6}, Lcom/flurry/org/apache/avro/Schema;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x1

    :goto_2
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/flurry/org/apache/avro/Schema;

    invoke-virtual {p0, v4}, Lcom/flurry/org/apache/avro/specific/SpecificData;->getClass(Lcom/flurry/org/apache/avro/Schema;)Ljava/lang/Class;

    move-result-object v4

    goto :goto_0

    :cond_3
    move v4, v5

    goto :goto_2

    .line 107
    :cond_4
    const-class v4, Ljava/lang/Object;

    goto :goto_0

    .line 109
    .end local v3    # "types":Ljava/util/List;, "Ljava/util/List<Lcom/flurry/org/apache/avro/Schema;>;"
    :pswitch_4
    const-string v4, "String"

    const-string v5, "avro.java.string"

    invoke-virtual {p1, v5}, Lcom/flurry/org/apache/avro/Schema;->getProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 110
    const-class v4, Ljava/lang/String;

    goto :goto_0

    .line 111
    :cond_5
    const-class v4, Ljava/lang/CharSequence;

    goto :goto_0

    .line 112
    :pswitch_5
    const-class v4, Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 113
    :pswitch_6
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    goto :goto_0

    .line 114
    :pswitch_7
    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    goto :goto_0

    .line 115
    :pswitch_8
    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    goto :goto_0

    .line 116
    :pswitch_9
    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    goto :goto_0

    .line 117
    :pswitch_a
    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    goto/16 :goto_0

    .line 118
    :pswitch_b
    sget-object v4, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    goto/16 :goto_0

    .line 85
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method protected getEnumSchema(Ljava/lang/Object;)Lcom/flurry/org/apache/avro/Schema;
    .locals 1
    .param p1, "datum"    # Ljava/lang/Object;

    .prologue
    .line 73
    instance-of v0, p1, Ljava/lang/Enum;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flurry/org/apache/avro/specific/SpecificData;->getSchema(Ljava/lang/reflect/Type;)Lcom/flurry/org/apache/avro/Schema;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lcom/flurry/org/apache/avro/generic/GenericData;->getEnumSchema(Ljava/lang/Object;)Lcom/flurry/org/apache/avro/Schema;

    move-result-object v0

    goto :goto_0
.end method

.method public getProtocol(Ljava/lang/Class;)Lcom/flurry/org/apache/avro/Protocol;
    .locals 6
    .param p1, "iface"    # Ljava/lang/Class;

    .prologue
    .line 212
    :try_start_0
    const-string v3, "PROTOCOL"

    invoke-virtual {p1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/flurry/org/apache/avro/Protocol;

    move-object v0, v3

    check-cast v0, Lcom/flurry/org/apache/avro/Protocol;

    move-object v2, v0

    .line 213
    .local v2, "p":Lcom/flurry/org/apache/avro/Protocol;
    invoke-virtual {v2}, Lcom/flurry/org/apache/avro/Protocol;->getNamespace()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 215
    invoke-virtual {v2}, Lcom/flurry/org/apache/avro/Protocol;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/flurry/org/apache/avro/Protocol;->getNamespace()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/flurry/org/apache/avro/Protocol;->parse(Ljava/lang/String;)Lcom/flurry/org/apache/avro/Protocol;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 217
    :cond_0
    return-object v2

    .line 218
    .end local v2    # "p":Lcom/flurry/org/apache/avro/Protocol;
    :catch_0
    move-exception v1

    .line 219
    .local v1, "e":Ljava/lang/NoSuchFieldException;
    new-instance v3, Lcom/flurry/org/apache/avro/AvroRuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Not a Specific protocol: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/flurry/org/apache/avro/AvroRuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 220
    .end local v1    # "e":Ljava/lang/NoSuchFieldException;
    :catch_1
    move-exception v1

    .line 221
    .local v1, "e":Ljava/lang/IllegalAccessException;
    new-instance v3, Lcom/flurry/org/apache/avro/AvroRuntimeException;

    invoke-direct {v3, v1}, Lcom/flurry/org/apache/avro/AvroRuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public getSchema(Ljava/lang/reflect/Type;)Lcom/flurry/org/apache/avro/Schema;
    .locals 2
    .param p1, "type"    # Ljava/lang/reflect/Type;

    .prologue
    .line 138
    iget-object v1, p0, Lcom/flurry/org/apache/avro/specific/SpecificData;->schemaCache:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/org/apache/avro/Schema;

    .line 139
    .local v0, "schema":Lcom/flurry/org/apache/avro/Schema;
    if-nez v0, :cond_0

    .line 140
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {p0, p1, v1}, Lcom/flurry/org/apache/avro/specific/SpecificData;->createSchema(Ljava/lang/reflect/Type;Ljava/util/Map;)Lcom/flurry/org/apache/avro/Schema;

    move-result-object v0

    .line 141
    iget-object v1, p0, Lcom/flurry/org/apache/avro/specific/SpecificData;->schemaCache:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    :cond_0
    return-object v0
.end method

.method protected isEnum(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "datum"    # Ljava/lang/Object;

    .prologue
    .line 68
    instance-of v0, p1, Ljava/lang/Enum;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lcom/flurry/org/apache/avro/generic/GenericData;->isEnum(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public newRecord(Ljava/lang/Object;Lcom/flurry/org/apache/avro/Schema;)Ljava/lang/Object;
    .locals 2
    .param p1, "old"    # Ljava/lang/Object;
    .param p2, "schema"    # Lcom/flurry/org/apache/avro/Schema;

    .prologue
    .line 266
    invoke-static {}, Lcom/flurry/org/apache/avro/specific/SpecificData;->get()Lcom/flurry/org/apache/avro/specific/SpecificData;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/flurry/org/apache/avro/specific/SpecificData;->getClass(Lcom/flurry/org/apache/avro/Schema;)Ljava/lang/Class;

    move-result-object v0

    .line 267
    .local v0, "c":Ljava/lang/Class;
    if-nez v0, :cond_1

    invoke-super {p0, p1, p2}, Lcom/flurry/org/apache/avro/generic/GenericData;->newRecord(Ljava/lang/Object;Lcom/flurry/org/apache/avro/Schema;)Ljava/lang/Object;

    move-result-object p1

    .line 268
    .end local p1    # "old":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object p1

    .restart local p1    # "old":Ljava/lang/Object;
    :cond_1
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0, p2}, Lcom/flurry/org/apache/avro/specific/SpecificData;->newInstance(Ljava/lang/Class;Lcom/flurry/org/apache/avro/Schema;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0
.end method
