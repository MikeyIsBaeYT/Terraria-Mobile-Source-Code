.class public Lcom/flurry/org/apache/avro/reflect/ReflectData;
.super Lcom/flurry/org/apache/avro/specific/SpecificData;
.source "ReflectData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/org/apache/avro/reflect/ReflectData$1;,
        Lcom/flurry/org/apache/avro/reflect/ReflectData$AllowNull;
    }
.end annotation


# static fields
.field private static final BYTES_CLASS:Ljava/lang/Class;

.field static final CLASS_PROP:Ljava/lang/String; = "java-class"

.field static final ELEMENT_PROP:Ljava/lang/String; = "java-element-class"

.field private static final FIELD_CACHE:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Field;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final INSTANCE:Lcom/flurry/org/apache/avro/reflect/ReflectData;

.field private static final THROWABLE_MESSAGE:Lcom/flurry/org/apache/avro/Schema;


# instance fields
.field private final paranamer:Lcom/thoughtworks/paranamer/Paranamer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 75
    new-instance v0, Lcom/flurry/org/apache/avro/reflect/ReflectData;

    invoke-direct {v0}, Lcom/flurry/org/apache/avro/reflect/ReflectData;-><init>()V

    sput-object v0, Lcom/flurry/org/apache/avro/reflect/ReflectData;->INSTANCE:Lcom/flurry/org/apache/avro/reflect/ReflectData;

    .line 157
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/flurry/org/apache/avro/reflect/ReflectData;->FIELD_CACHE:Ljava/util/Map;

    .line 202
    const/4 v0, 0x0

    new-array v0, v0, [B

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/flurry/org/apache/avro/reflect/ReflectData;->BYTES_CLASS:Ljava/lang/Class;

    .line 332
    sget-object v0, Lcom/flurry/org/apache/avro/Schema$Type;->STRING:Lcom/flurry/org/apache/avro/Schema$Type;

    invoke-static {v0}, Lcom/flurry/org/apache/avro/Schema;->create(Lcom/flurry/org/apache/avro/Schema$Type;)Lcom/flurry/org/apache/avro/Schema;

    move-result-object v0

    invoke-static {v0}, Lcom/flurry/org/apache/avro/reflect/ReflectData;->makeNullable(Lcom/flurry/org/apache/avro/Schema;)Lcom/flurry/org/apache/avro/Schema;

    move-result-object v0

    sput-object v0, Lcom/flurry/org/apache/avro/reflect/ReflectData;->THROWABLE_MESSAGE:Lcom/flurry/org/apache/avro/Schema;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/flurry/org/apache/avro/specific/SpecificData;-><init>()V

    .line 415
    new-instance v0, Lcom/thoughtworks/paranamer/CachingParanamer;

    invoke-direct {v0}, Lcom/thoughtworks/paranamer/CachingParanamer;-><init>()V

    iput-object v0, p0, Lcom/flurry/org/apache/avro/reflect/ReflectData;->paranamer:Lcom/thoughtworks/paranamer/Paranamer;

    .line 77
    return-void
.end method

.method private static findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 5
    .param p0, "original"    # Ljava/lang/Class;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 177
    move-object v0, p0

    .line 180
    .local v0, "c":Ljava/lang/Class;
    :cond_0
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 181
    .local v1, "f":Ljava/lang/reflect/Field;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    return-object v1

    .line 183
    .end local v1    # "f":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v2

    .line 184
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 185
    if-nez v0, :cond_0

    .line 186
    new-instance v2, Lcom/flurry/org/apache/avro/AvroRuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No field named "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " in: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/flurry/org/apache/avro/AvroRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static get()Lcom/flurry/org/apache/avro/reflect/ReflectData;
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lcom/flurry/org/apache/avro/reflect/ReflectData;->INSTANCE:Lcom/flurry/org/apache/avro/reflect/ReflectData;

    return-object v0
.end method

.method private getAnnotatedUnion(Lcom/flurry/org/apache/avro/reflect/Union;Ljava/util/Map;)Lcom/flurry/org/apache/avro/Schema;
    .locals 6
    .param p1, "union"    # Lcom/flurry/org/apache/avro/reflect/Union;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/apache/avro/reflect/Union;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/flurry/org/apache/avro/Schema;",
            ">;)",
            "Lcom/flurry/org/apache/avro/Schema;"
        }
    .end annotation

    .prologue
    .line 348
    .local p2, "names":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/flurry/org/apache/avro/Schema;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 349
    .local v2, "branches":Ljava/util/List;, "Ljava/util/List<Lcom/flurry/org/apache/avro/Schema;>;"
    invoke-interface {p1}, Lcom/flurry/org/apache/avro/reflect/Union;->value()[Ljava/lang/Class;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/Class;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 350
    .local v1, "branch":Ljava/lang/Class;
    invoke-virtual {p0, v1, p2}, Lcom/flurry/org/apache/avro/reflect/ReflectData;->createSchema(Ljava/lang/reflect/Type;Ljava/util/Map;)Lcom/flurry/org/apache/avro/Schema;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 349
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 351
    .end local v1    # "branch":Ljava/lang/Class;
    :cond_0
    invoke-static {v2}, Lcom/flurry/org/apache/avro/Schema;->createUnion(Ljava/util/List;)Lcom/flurry/org/apache/avro/Schema;

    move-result-object v5

    return-object v5
.end method

.method static getClassProp(Lcom/flurry/org/apache/avro/Schema;Ljava/lang/String;)Ljava/lang/Class;
    .locals 3
    .param p0, "schema"    # Lcom/flurry/org/apache/avro/Schema;
    .param p1, "prop"    # Ljava/lang/String;

    .prologue
    .line 193
    invoke-virtual {p0, p1}, Lcom/flurry/org/apache/avro/Schema;->getProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 194
    .local v1, "name":Ljava/lang/String;
    if-nez v1, :cond_0

    const/4 v2, 0x0

    .line 196
    :goto_0
    return-object v2

    :cond_0
    :try_start_0
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 197
    :catch_0
    move-exception v0

    .line 198
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    new-instance v2, Lcom/flurry/org/apache/avro/AvroRuntimeException;

    invoke-direct {v2, v0}, Lcom/flurry/org/apache/avro/AvroRuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private static getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 3
    .param p0, "c"    # Ljava/lang/Class;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 163
    sget-object v2, Lcom/flurry/org/apache/avro/reflect/ReflectData;->FIELD_CACHE:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 164
    .local v1, "fields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/reflect/Field;>;"
    if-nez v1, :cond_0

    .line 165
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    .end local v1    # "fields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/reflect/Field;>;"
    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 166
    .restart local v1    # "fields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/reflect/Field;>;"
    sget-object v2, Lcom/flurry/org/apache/avro/reflect/ReflectData;->FIELD_CACHE:Ljava/util/Map;

    invoke-interface {v2, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    :cond_0
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Field;

    .line 169
    .local v0, "f":Ljava/lang/reflect/Field;
    if-nez v0, :cond_1

    .line 170
    invoke-static {p0, p1}, Lcom/flurry/org/apache/avro/reflect/ReflectData;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 171
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    :cond_1
    return-object v0
.end method

.method private getFields(Ljava/lang/Class;)Ljava/util/Collection;
    .locals 9
    .param p1, "recordClass"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation

    .prologue
    .line 363
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    .line 364
    .local v3, "fields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/reflect/Field;>;"
    move-object v1, p1

    .line 366
    .local v1, "c":Ljava/lang/Class;
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {v1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "java."

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 375
    :goto_0
    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    return-object v6

    .line 369
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/reflect/Field;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_1
    if-ge v4, v5, :cond_3

    aget-object v2, v0, v4

    .line 370
    .local v2, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v6

    and-int/lit16 v6, v6, 0x88

    if-nez v6, :cond_2

    .line 371
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 372
    new-instance v6, Lcom/flurry/org/apache/avro/AvroTypeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " contains two fields named: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/flurry/org/apache/avro/AvroTypeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 369
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 373
    .end local v2    # "field":Ljava/lang/reflect/Field;
    :cond_3
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    .line 374
    if-nez v1, :cond_0

    goto :goto_0
.end method

.method private getMessage(Ljava/lang/reflect/Method;Lcom/flurry/org/apache/avro/Protocol;Ljava/util/Map;)Lcom/flurry/org/apache/avro/Protocol$Message;
    .locals 23
    .param p1, "method"    # Ljava/lang/reflect/Method;
    .param p2, "protocol"    # Lcom/flurry/org/apache/avro/Protocol;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            "Lcom/flurry/org/apache/avro/Protocol;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/flurry/org/apache/avro/Schema;",
            ">;)",
            "Lcom/flurry/org/apache/avro/Protocol$Message;"
        }
    .end annotation

    .prologue
    .line 419
    .local p3, "names":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/flurry/org/apache/avro/Schema;>;"
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 420
    .local v13, "fields":Ljava/util/List;, "Ljava/util/List<Lcom/flurry/org/apache/avro/Schema$Field;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/flurry/org/apache/avro/reflect/ReflectData;->paranamer:Lcom/thoughtworks/paranamer/Paranamer;

    move-object/from16 v0, p1

    invoke-interface {v3, v0}, Lcom/thoughtworks/paranamer/Paranamer;->lookupParameterNames(Ljava/lang/reflect/AccessibleObject;)[Ljava/lang/String;

    move-result-object v19

    .line 421
    .local v19, "paramNames":[Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v21

    .line 422
    .local v21, "paramTypes":[Ljava/lang/reflect/Type;
    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Method;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v9

    .line 423
    .local v9, "annotations":[[Ljava/lang/annotation/Annotation;
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_0
    move-object/from16 v0, v21

    array-length v3, v0

    if-ge v14, v3, :cond_4

    .line 424
    aget-object v3, v21, v14

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v3, v1}, Lcom/flurry/org/apache/avro/reflect/ReflectData;->getSchema(Ljava/lang/reflect/Type;Ljava/util/Map;)Lcom/flurry/org/apache/avro/Schema;

    move-result-object v20

    .line 425
    .local v20, "paramSchema":Lcom/flurry/org/apache/avro/Schema;
    const/16 v16, 0x0

    .local v16, "j":I
    :goto_1
    aget-object v3, v9, v14

    array-length v3, v3

    move/from16 v0, v16

    if-ge v0, v3, :cond_2

    .line 426
    aget-object v3, v9, v14

    aget-object v3, v3, v16

    instance-of v3, v3, Lcom/flurry/org/apache/avro/reflect/Union;

    if-eqz v3, :cond_1

    .line 427
    aget-object v3, v9, v14

    aget-object v3, v3, v16

    check-cast v3, Lcom/flurry/org/apache/avro/reflect/Union;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v3, v1}, Lcom/flurry/org/apache/avro/reflect/ReflectData;->getAnnotatedUnion(Lcom/flurry/org/apache/avro/reflect/Union;Ljava/util/Map;)Lcom/flurry/org/apache/avro/Schema;

    move-result-object v20

    .line 425
    :cond_0
    :goto_2
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 428
    :cond_1
    aget-object v3, v9, v14

    aget-object v3, v3, v16

    instance-of v3, v3, Lcom/flurry/org/apache/avro/reflect/Nullable;

    if-eqz v3, :cond_0

    .line 429
    invoke-static/range {v20 .. v20}, Lcom/flurry/org/apache/avro/reflect/ReflectData;->makeNullable(Lcom/flurry/org/apache/avro/Schema;)Lcom/flurry/org/apache/avro/Schema;

    move-result-object v20

    goto :goto_2

    .line 430
    :cond_2
    move-object/from16 v0, v19

    array-length v3, v0

    move-object/from16 v0, v21

    array-length v4, v0

    if-ne v3, v4, :cond_3

    aget-object v18, v19, v14

    .line 433
    .local v18, "paramName":Ljava/lang/String;
    :goto_3
    new-instance v3, Lcom/flurry/org/apache/avro/Schema$Field;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-direct {v3, v0, v1, v4, v5}, Lcom/flurry/org/apache/avro/Schema$Field;-><init>(Ljava/lang/String;Lcom/flurry/org/apache/avro/Schema;Ljava/lang/String;Lcom/flurry/org/codehaus/jackson/JsonNode;)V

    invoke-interface {v13, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 423
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 430
    .end local v18    # "paramName":Ljava/lang/String;
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v20 .. v20}, Lcom/flurry/org/apache/avro/Schema;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    goto :goto_3

    .line 436
    .end local v16    # "j":I
    .end local v20    # "paramSchema":Lcom/flurry/org/apache/avro/Schema;
    :cond_4
    invoke-static {v13}, Lcom/flurry/org/apache/avro/Schema;->createRecord(Ljava/util/List;)Lcom/flurry/org/apache/avro/Schema;

    move-result-object v6

    .line 438
    .local v6, "request":Lcom/flurry/org/apache/avro/Schema;
    const-class v3, Lcom/flurry/org/apache/avro/reflect/Union;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v22

    check-cast v22, Lcom/flurry/org/apache/avro/reflect/Union;

    .line 439
    .local v22, "union":Lcom/flurry/org/apache/avro/reflect/Union;
    if-nez v22, :cond_7

    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v3, v1}, Lcom/flurry/org/apache/avro/reflect/ReflectData;->getSchema(Ljava/lang/reflect/Type;Ljava/util/Map;)Lcom/flurry/org/apache/avro/Schema;

    move-result-object v7

    .line 442
    .local v7, "response":Lcom/flurry/org/apache/avro/Schema;
    :goto_4
    const-class v3, Lcom/flurry/org/apache/avro/reflect/Nullable;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 443
    invoke-static {v7}, Lcom/flurry/org/apache/avro/reflect/ReflectData;->makeNullable(Lcom/flurry/org/apache/avro/Schema;)Lcom/flurry/org/apache/avro/Schema;

    move-result-object v7

    .line 445
    :cond_5
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 446
    .local v12, "errs":Ljava/util/List;, "Ljava/util/List<Lcom/flurry/org/apache/avro/Schema;>;"
    sget-object v3, Lcom/flurry/org/apache/avro/Protocol;->SYSTEM_ERROR:Lcom/flurry/org/apache/avro/Schema;

    invoke-interface {v12, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 447
    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Method;->getGenericExceptionTypes()[Ljava/lang/reflect/Type;

    move-result-object v10

    .local v10, "arr$":[Ljava/lang/reflect/Type;
    array-length v0, v10

    move/from16 v17, v0

    .local v17, "len$":I
    const/4 v15, 0x0

    .local v15, "i$":I
    :goto_5
    move/from16 v0, v17

    if-ge v15, v0, :cond_8

    aget-object v11, v10, v15

    .line 448
    .local v11, "err":Ljava/lang/reflect/Type;
    const-class v3, Lcom/flurry/org/apache/avro/AvroRemoteException;

    if-eq v11, v3, :cond_6

    .line 449
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v11, v1}, Lcom/flurry/org/apache/avro/reflect/ReflectData;->getSchema(Ljava/lang/reflect/Type;Ljava/util/Map;)Lcom/flurry/org/apache/avro/Schema;

    move-result-object v3

    invoke-interface {v12, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 447
    :cond_6
    add-int/lit8 v15, v15, 0x1

    goto :goto_5

    .line 439
    .end local v7    # "response":Lcom/flurry/org/apache/avro/Schema;
    .end local v10    # "arr$":[Ljava/lang/reflect/Type;
    .end local v11    # "err":Ljava/lang/reflect/Type;
    .end local v12    # "errs":Ljava/util/List;, "Ljava/util/List<Lcom/flurry/org/apache/avro/Schema;>;"
    .end local v15    # "i$":I
    .end local v17    # "len$":I
    :cond_7
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/flurry/org/apache/avro/reflect/ReflectData;->getAnnotatedUnion(Lcom/flurry/org/apache/avro/reflect/Union;Ljava/util/Map;)Lcom/flurry/org/apache/avro/Schema;

    move-result-object v7

    goto :goto_4

    .line 450
    .restart local v7    # "response":Lcom/flurry/org/apache/avro/Schema;
    .restart local v10    # "arr$":[Ljava/lang/reflect/Type;
    .restart local v12    # "errs":Ljava/util/List;, "Ljava/util/List<Lcom/flurry/org/apache/avro/Schema;>;"
    .restart local v15    # "i$":I
    .restart local v17    # "len$":I
    :cond_8
    invoke-static {v12}, Lcom/flurry/org/apache/avro/Schema;->createUnion(Ljava/util/List;)Lcom/flurry/org/apache/avro/Schema;

    move-result-object v8

    .line 452
    .local v8, "errors":Lcom/flurry/org/apache/avro/Schema;
    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v3, p2

    invoke-virtual/range {v3 .. v8}, Lcom/flurry/org/apache/avro/Protocol;->createMessage(Ljava/lang/String;Ljava/lang/String;Lcom/flurry/org/apache/avro/Schema;Lcom/flurry/org/apache/avro/Schema;Lcom/flurry/org/apache/avro/Schema;)Lcom/flurry/org/apache/avro/Protocol$Message;

    move-result-object v3

    return-object v3
.end method

.method private getSchema(Ljava/lang/reflect/Type;Ljava/util/Map;)Lcom/flurry/org/apache/avro/Schema;
    .locals 4
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
    .line 457
    .local p2, "names":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/flurry/org/apache/avro/Schema;>;"
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/flurry/org/apache/avro/reflect/ReflectData;->createSchema(Ljava/lang/reflect/Type;Ljava/util/Map;)Lcom/flurry/org/apache/avro/Schema;
    :try_end_0
    .catch Lcom/flurry/org/apache/avro/AvroTypeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 458
    :catch_0
    move-exception v0

    .line 459
    .local v0, "e":Lcom/flurry/org/apache/avro/AvroTypeException;
    new-instance v1, Lcom/flurry/org/apache/avro/AvroTypeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error getting schema for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/flurry/org/apache/avro/AvroTypeException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/flurry/org/apache/avro/AvroTypeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static makeNullable(Lcom/flurry/org/apache/avro/Schema;)Lcom/flurry/org/apache/avro/Schema;
    .locals 3
    .param p0, "schema"    # Lcom/flurry/org/apache/avro/Schema;

    .prologue
    .line 356
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/flurry/org/apache/avro/Schema;

    const/4 v1, 0x0

    sget-object v2, Lcom/flurry/org/apache/avro/Schema$Type;->NULL:Lcom/flurry/org/apache/avro/Schema$Type;

    invoke-static {v2}, Lcom/flurry/org/apache/avro/Schema;->create(Lcom/flurry/org/apache/avro/Schema$Type;)Lcom/flurry/org/apache/avro/Schema;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/flurry/org/apache/avro/Schema;->createUnion(Ljava/util/List;)Lcom/flurry/org/apache/avro/Schema;

    move-result-object v0

    return-object v0
.end method

.method private setElement(Lcom/flurry/org/apache/avro/Schema;Ljava/lang/reflect/Type;)V
    .locals 4
    .param p1, "schema"    # Lcom/flurry/org/apache/avro/Schema;
    .param p2, "element"    # Ljava/lang/reflect/Type;

    .prologue
    .line 339
    instance-of v2, p2, Ljava/lang/Class;

    if-nez v2, :cond_1

    .line 344
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v0, p2

    .line 340
    check-cast v0, Ljava/lang/Class;

    .line 341
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v2, Lcom/flurry/org/apache/avro/reflect/Union;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lcom/flurry/org/apache/avro/reflect/Union;

    .line 342
    .local v1, "union":Lcom/flurry/org/apache/avro/reflect/Union;
    if-eqz v1, :cond_0

    .line 343
    const-string v2, "java-element-class"

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/flurry/org/apache/avro/Schema;->addProp(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected compare(Ljava/lang/Object;Ljava/lang/Object;Lcom/flurry/org/apache/avro/Schema;Z)I
    .locals 13
    .param p1, "o1"    # Ljava/lang/Object;
    .param p2, "o2"    # Ljava/lang/Object;
    .param p3, "s"    # Lcom/flurry/org/apache/avro/Schema;
    .param p4, "equals"    # Z

    .prologue
    .line 466
    sget-object v2, Lcom/flurry/org/apache/avro/reflect/ReflectData$1;->$SwitchMap$org$apache$avro$Schema$Type:[I

    invoke-virtual/range {p3 .. p3}, Lcom/flurry/org/apache/avro/Schema;->getType()Lcom/flurry/org/apache/avro/Schema$Type;

    move-result-object v3

    invoke-virtual {v3}, Lcom/flurry/org/apache/avro/Schema$Type;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 488
    :cond_0
    :pswitch_0
    invoke-super/range {p0 .. p4}, Lcom/flurry/org/apache/avro/specific/SpecificData;->compare(Ljava/lang/Object;Ljava/lang/Object;Lcom/flurry/org/apache/avro/Schema;Z)I

    move-result v7

    .end local p1    # "o1":Ljava/lang/Object;
    .end local p2    # "o2":Ljava/lang/Object;
    :cond_1
    :goto_0
    return v7

    .line 468
    .restart local p1    # "o1":Ljava/lang/Object;
    .restart local p2    # "o2":Ljava/lang/Object;
    :pswitch_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 470
    invoke-virtual/range {p3 .. p3}, Lcom/flurry/org/apache/avro/Schema;->getElementType()Lcom/flurry/org/apache/avro/Schema;

    move-result-object v8

    .line 471
    .local v8, "elementType":Lcom/flurry/org/apache/avro/Schema;
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v11

    .line 472
    .local v11, "l1":I
    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v12

    .line 473
    .local v12, "l2":I
    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 474
    .local v10, "l":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    if-ge v9, v10, :cond_2

    .line 475
    invoke-static {p1, v9}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p2, v9}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    move/from16 v0, p4

    invoke-virtual {p0, v2, v3, v8, v0}, Lcom/flurry/org/apache/avro/reflect/ReflectData;->compare(Ljava/lang/Object;Ljava/lang/Object;Lcom/flurry/org/apache/avro/Schema;Z)I

    move-result v7

    .line 478
    .local v7, "compare":I
    if-nez v7, :cond_1

    .line 474
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 480
    .end local v7    # "compare":I
    :cond_2
    sub-int v7, v11, v12

    goto :goto_0

    .line 482
    .end local v8    # "elementType":Lcom/flurry/org/apache/avro/Schema;
    .end local v9    # "i":I
    .end local v10    # "l":I
    .end local v11    # "l1":I
    .end local v12    # "l2":I
    :pswitch_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 484
    check-cast p1, [B

    .end local p1    # "o1":Ljava/lang/Object;
    move-object v1, p1

    check-cast v1, [B

    .line 485
    .local v1, "b1":[B
    check-cast p2, [B

    .end local p2    # "o2":Ljava/lang/Object;
    move-object v4, p2

    check-cast v4, [B

    .line 486
    .local v4, "b2":[B
    const/4 v2, 0x0

    array-length v3, v1

    const/4 v5, 0x0

    array-length v6, v4

    invoke-static/range {v1 .. v6}, Lcom/flurry/org/apache/avro/io/BinaryData;->compareBytes([BII[BII)I

    move-result v7

    goto :goto_0

    .line 466
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public createDatumReader(Lcom/flurry/org/apache/avro/Schema;)Lcom/flurry/org/apache/avro/io/DatumReader;
    .locals 1
    .param p1, "schema"    # Lcom/flurry/org/apache/avro/Schema;

    .prologue
    .line 84
    new-instance v0, Lcom/flurry/org/apache/avro/reflect/ReflectDatumReader;

    invoke-direct {v0, p1, p1, p0}, Lcom/flurry/org/apache/avro/reflect/ReflectDatumReader;-><init>(Lcom/flurry/org/apache/avro/Schema;Lcom/flurry/org/apache/avro/Schema;Lcom/flurry/org/apache/avro/reflect/ReflectData;)V

    return-object v0
.end method

.method protected createFieldSchema(Ljava/lang/reflect/Field;Ljava/util/Map;)Lcom/flurry/org/apache/avro/Schema;
    .locals 2
    .param p1, "field"    # Ljava/lang/reflect/Field;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Field;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/flurry/org/apache/avro/Schema;",
            ">;)",
            "Lcom/flurry/org/apache/avro/Schema;"
        }
    .end annotation

    .prologue
    .line 380
    .local p2, "names":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/flurry/org/apache/avro/Schema;>;"
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/flurry/org/apache/avro/reflect/ReflectData;->createSchema(Ljava/lang/reflect/Type;Ljava/util/Map;)Lcom/flurry/org/apache/avro/Schema;

    move-result-object v0

    .line 381
    .local v0, "schema":Lcom/flurry/org/apache/avro/Schema;
    const-class v1, Lcom/flurry/org/apache/avro/reflect/Nullable;

    invoke-virtual {p1, v1}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 382
    invoke-static {v0}, Lcom/flurry/org/apache/avro/reflect/ReflectData;->makeNullable(Lcom/flurry/org/apache/avro/Schema;)Lcom/flurry/org/apache/avro/Schema;

    move-result-object v0

    .line 383
    :cond_0
    return-object v0
.end method

.method protected createSchema(Ljava/lang/reflect/Type;Ljava/util/Map;)Lcom/flurry/org/apache/avro/Schema;
    .locals 33
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
    .line 226
    .local p2, "names":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/flurry/org/apache/avro/Schema;>;"
    move-object/from16 v0, p1

    instance-of v0, v0, Ljava/lang/reflect/GenericArrayType;

    move/from16 v28, v0

    if-eqz v28, :cond_1

    .line 227
    check-cast p1, Ljava/lang/reflect/GenericArrayType;

    .end local p1    # "type":Ljava/lang/reflect/Type;
    invoke-interface/range {p1 .. p1}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v5

    .line 228
    .local v5, "component":Ljava/lang/reflect/Type;
    sget-object v28, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v28

    if-ne v5, v0, :cond_0

    .line 229
    sget-object v28, Lcom/flurry/org/apache/avro/Schema$Type;->BYTES:Lcom/flurry/org/apache/avro/Schema$Type;

    invoke-static/range {v28 .. v28}, Lcom/flurry/org/apache/avro/Schema;->create(Lcom/flurry/org/apache/avro/Schema$Type;)Lcom/flurry/org/apache/avro/Schema;

    move-result-object v21

    .line 329
    .end local v5    # "component":Ljava/lang/reflect/Type;
    :goto_0
    return-object v21

    .line 230
    .restart local v5    # "component":Ljava/lang/reflect/Type;
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v5, v1}, Lcom/flurry/org/apache/avro/reflect/ReflectData;->createSchema(Ljava/lang/reflect/Type;Ljava/util/Map;)Lcom/flurry/org/apache/avro/Schema;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/flurry/org/apache/avro/Schema;->createArray(Lcom/flurry/org/apache/avro/Schema;)Lcom/flurry/org/apache/avro/Schema;

    move-result-object v21

    .line 231
    .local v21, "result":Lcom/flurry/org/apache/avro/Schema;
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v5}, Lcom/flurry/org/apache/avro/reflect/ReflectData;->setElement(Lcom/flurry/org/apache/avro/Schema;Ljava/lang/reflect/Type;)V

    goto :goto_0

    .line 233
    .end local v5    # "component":Ljava/lang/reflect/Type;
    .end local v21    # "result":Lcom/flurry/org/apache/avro/Schema;
    .restart local p1    # "type":Ljava/lang/reflect/Type;
    :cond_1
    move-object/from16 v0, p1

    instance-of v0, v0, Ljava/lang/reflect/ParameterizedType;

    move/from16 v28, v0

    if-eqz v28, :cond_5

    move-object/from16 v19, p1

    .line 234
    check-cast v19, Ljava/lang/reflect/ParameterizedType;

    .line 235
    .local v19, "ptype":Ljava/lang/reflect/ParameterizedType;
    invoke-interface/range {v19 .. v19}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v20

    check-cast v20, Ljava/lang/Class;

    .line 236
    .local v20, "raw":Ljava/lang/Class;
    invoke-interface/range {v19 .. v19}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v18

    .line 237
    .local v18, "params":[Ljava/lang/reflect/Type;
    const-class v28, Ljava/util/Map;

    move-object/from16 v0, v28

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v28

    if-eqz v28, :cond_3

    .line 238
    const/16 v28, 0x0

    aget-object v16, v18, v28

    .line 239
    .local v16, "key":Ljava/lang/reflect/Type;
    const/16 v28, 0x1

    aget-object v27, v18, v28

    .line 240
    .local v27, "value":Ljava/lang/reflect/Type;
    const-class v28, Ljava/lang/String;

    move-object/from16 v0, v16

    move-object/from16 v1, v28

    if-eq v0, v1, :cond_2

    .line 241
    new-instance v28, Lcom/flurry/org/apache/avro/AvroTypeException;

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Map key class not String: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-direct/range {v28 .. v29}, Lcom/flurry/org/apache/avro/AvroTypeException;-><init>(Ljava/lang/String;)V

    throw v28

    .line 242
    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/flurry/org/apache/avro/reflect/ReflectData;->createSchema(Ljava/lang/reflect/Type;Ljava/util/Map;)Lcom/flurry/org/apache/avro/Schema;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/flurry/org/apache/avro/Schema;->createMap(Lcom/flurry/org/apache/avro/Schema;)Lcom/flurry/org/apache/avro/Schema;

    move-result-object v21

    goto :goto_0

    .line 243
    .end local v16    # "key":Ljava/lang/reflect/Type;
    .end local v27    # "value":Ljava/lang/reflect/Type;
    :cond_3
    const-class v28, Ljava/util/Collection;

    move-object/from16 v0, v28

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v28

    if-eqz v28, :cond_1e

    .line 244
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v28, v0

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_4

    .line 245
    new-instance v28, Lcom/flurry/org/apache/avro/AvroTypeException;

    const-string v29, "No array type specified."

    invoke-direct/range {v28 .. v29}, Lcom/flurry/org/apache/avro/AvroTypeException;-><init>(Ljava/lang/String;)V

    throw v28

    .line 246
    :cond_4
    const/16 v28, 0x0

    aget-object v28, v18, v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/flurry/org/apache/avro/reflect/ReflectData;->createSchema(Ljava/lang/reflect/Type;Ljava/util/Map;)Lcom/flurry/org/apache/avro/Schema;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/flurry/org/apache/avro/Schema;->createArray(Lcom/flurry/org/apache/avro/Schema;)Lcom/flurry/org/apache/avro/Schema;

    move-result-object v22

    .line 247
    .local v22, "schema":Lcom/flurry/org/apache/avro/Schema;
    const-string v28, "java-class"

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v22

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/flurry/org/apache/avro/Schema;->addProp(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v21, v22

    .line 248
    goto/16 :goto_0

    .line 250
    .end local v18    # "params":[Ljava/lang/reflect/Type;
    .end local v19    # "ptype":Ljava/lang/reflect/ParameterizedType;
    .end local v20    # "raw":Ljava/lang/Class;
    .end local v22    # "schema":Lcom/flurry/org/apache/avro/Schema;
    :cond_5
    const-class v28, Ljava/lang/Byte;

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    if-eq v0, v1, :cond_6

    sget-object v28, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    if-ne v0, v1, :cond_7

    .line 251
    :cond_6
    sget-object v28, Lcom/flurry/org/apache/avro/Schema$Type;->INT:Lcom/flurry/org/apache/avro/Schema$Type;

    invoke-static/range {v28 .. v28}, Lcom/flurry/org/apache/avro/Schema;->create(Lcom/flurry/org/apache/avro/Schema$Type;)Lcom/flurry/org/apache/avro/Schema;

    move-result-object v21

    .line 252
    .restart local v21    # "result":Lcom/flurry/org/apache/avro/Schema;
    const-string v28, "java-class"

    const-class v29, Ljava/lang/Byte;

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/flurry/org/apache/avro/Schema;->addProp(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 254
    .end local v21    # "result":Lcom/flurry/org/apache/avro/Schema;
    :cond_7
    const-class v28, Ljava/lang/Short;

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    if-eq v0, v1, :cond_8

    sget-object v28, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    if-ne v0, v1, :cond_9

    .line 255
    :cond_8
    sget-object v28, Lcom/flurry/org/apache/avro/Schema$Type;->INT:Lcom/flurry/org/apache/avro/Schema$Type;

    invoke-static/range {v28 .. v28}, Lcom/flurry/org/apache/avro/Schema;->create(Lcom/flurry/org/apache/avro/Schema$Type;)Lcom/flurry/org/apache/avro/Schema;

    move-result-object v21

    .line 256
    .restart local v21    # "result":Lcom/flurry/org/apache/avro/Schema;
    const-string v28, "java-class"

    const-class v29, Ljava/lang/Short;

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/flurry/org/apache/avro/Schema;->addProp(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 258
    .end local v21    # "result":Lcom/flurry/org/apache/avro/Schema;
    :cond_9
    move-object/from16 v0, p1

    instance-of v0, v0, Ljava/lang/Class;

    move/from16 v28, v0

    if-eqz v28, :cond_1e

    move-object/from16 v4, p1

    .line 259
    check-cast v4, Ljava/lang/Class;

    .line 260
    .local v4, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v4}, Ljava/lang/Class;->isPrimitive()Z

    move-result v28

    if-nez v28, :cond_a

    const-class v28, Ljava/lang/Number;

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v28

    if-nez v28, :cond_a

    const-class v28, Ljava/lang/Void;

    move-object/from16 v0, v28

    if-eq v4, v0, :cond_a

    const-class v28, Ljava/lang/Boolean;

    move-object/from16 v0, v28

    if-ne v4, v0, :cond_b

    .line 262
    :cond_a
    invoke-super/range {p0 .. p2}, Lcom/flurry/org/apache/avro/specific/SpecificData;->createSchema(Ljava/lang/reflect/Type;Ljava/util/Map;)Lcom/flurry/org/apache/avro/Schema;

    move-result-object v21

    goto/16 :goto_0

    .line 263
    :cond_b
    invoke-virtual {v4}, Ljava/lang/Class;->isArray()Z

    move-result v28

    if-eqz v28, :cond_d

    .line 264
    invoke-virtual {v4}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v5

    .line 265
    .local v5, "component":Ljava/lang/Class;
    sget-object v28, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v28

    if-ne v5, v0, :cond_c

    .line 266
    sget-object v28, Lcom/flurry/org/apache/avro/Schema$Type;->BYTES:Lcom/flurry/org/apache/avro/Schema$Type;

    invoke-static/range {v28 .. v28}, Lcom/flurry/org/apache/avro/Schema;->create(Lcom/flurry/org/apache/avro/Schema$Type;)Lcom/flurry/org/apache/avro/Schema;

    move-result-object v21

    goto/16 :goto_0

    .line 267
    :cond_c
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v5, v1}, Lcom/flurry/org/apache/avro/reflect/ReflectData;->createSchema(Ljava/lang/reflect/Type;Ljava/util/Map;)Lcom/flurry/org/apache/avro/Schema;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/flurry/org/apache/avro/Schema;->createArray(Lcom/flurry/org/apache/avro/Schema;)Lcom/flurry/org/apache/avro/Schema;

    move-result-object v21

    .line 268
    .restart local v21    # "result":Lcom/flurry/org/apache/avro/Schema;
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v5}, Lcom/flurry/org/apache/avro/reflect/ReflectData;->setElement(Lcom/flurry/org/apache/avro/Schema;Ljava/lang/reflect/Type;)V

    goto/16 :goto_0

    .line 271
    .end local v5    # "component":Ljava/lang/Class;
    .end local v21    # "result":Lcom/flurry/org/apache/avro/Schema;
    :cond_d
    const-class v28, Ljava/lang/CharSequence;

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v28

    if-eqz v28, :cond_e

    .line 272
    sget-object v28, Lcom/flurry/org/apache/avro/Schema$Type;->STRING:Lcom/flurry/org/apache/avro/Schema$Type;

    invoke-static/range {v28 .. v28}, Lcom/flurry/org/apache/avro/Schema;->create(Lcom/flurry/org/apache/avro/Schema$Type;)Lcom/flurry/org/apache/avro/Schema;

    move-result-object v21

    goto/16 :goto_0

    .line 273
    :cond_e
    const-class v28, Ljava/nio/ByteBuffer;

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v28

    if-eqz v28, :cond_f

    .line 274
    sget-object v28, Lcom/flurry/org/apache/avro/Schema$Type;->BYTES:Lcom/flurry/org/apache/avro/Schema$Type;

    invoke-static/range {v28 .. v28}, Lcom/flurry/org/apache/avro/Schema;->create(Lcom/flurry/org/apache/avro/Schema$Type;)Lcom/flurry/org/apache/avro/Schema;

    move-result-object v21

    goto/16 :goto_0

    .line 275
    :cond_f
    const-class v28, Ljava/util/Collection;

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v28

    if-eqz v28, :cond_10

    .line 276
    new-instance v28, Lcom/flurry/org/apache/avro/AvroRuntimeException;

    const-string v29, "Can\'t find element type of Collection"

    invoke-direct/range {v28 .. v29}, Lcom/flurry/org/apache/avro/AvroRuntimeException;-><init>(Ljava/lang/String;)V

    throw v28

    .line 277
    :cond_10
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v13

    .line 278
    .local v13, "fullName":Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/flurry/org/apache/avro/Schema;

    .line 279
    .restart local v22    # "schema":Lcom/flurry/org/apache/avro/Schema;
    if-nez v22, :cond_16

    .line 280
    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v17

    .line 281
    .local v17, "name":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v28

    if-nez v28, :cond_12

    const-string v24, ""

    .line 282
    .local v24, "space":Ljava/lang/String;
    :goto_1
    invoke-virtual {v4}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v28

    if-eqz v28, :cond_11

    .line 283
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "$"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 284
    :cond_11
    const-class v28, Lcom/flurry/org/apache/avro/reflect/Union;

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v26

    check-cast v26, Lcom/flurry/org/apache/avro/reflect/Union;

    .line 285
    .local v26, "union":Lcom/flurry/org/apache/avro/reflect/Union;
    if-eqz v26, :cond_13

    .line 286
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/flurry/org/apache/avro/reflect/ReflectData;->getAnnotatedUnion(Lcom/flurry/org/apache/avro/reflect/Union;Ljava/util/Map;)Lcom/flurry/org/apache/avro/Schema;

    move-result-object v21

    goto/16 :goto_0

    .line 281
    .end local v24    # "space":Ljava/lang/String;
    .end local v26    # "union":Lcom/flurry/org/apache/avro/reflect/Union;
    :cond_12
    invoke-virtual {v4}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v24

    goto :goto_1

    .line 287
    .restart local v24    # "space":Ljava/lang/String;
    .restart local v26    # "union":Lcom/flurry/org/apache/avro/reflect/Union;
    :cond_13
    const-class v28, Lcom/flurry/org/apache/avro/reflect/Stringable;

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v28

    if-eqz v28, :cond_14

    .line 288
    sget-object v28, Lcom/flurry/org/apache/avro/Schema$Type;->STRING:Lcom/flurry/org/apache/avro/Schema$Type;

    invoke-static/range {v28 .. v28}, Lcom/flurry/org/apache/avro/Schema;->create(Lcom/flurry/org/apache/avro/Schema$Type;)Lcom/flurry/org/apache/avro/Schema;

    move-result-object v21

    .line 289
    .restart local v21    # "result":Lcom/flurry/org/apache/avro/Schema;
    const-string v28, "java-class"

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/flurry/org/apache/avro/Schema;->addProp(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 291
    .end local v21    # "result":Lcom/flurry/org/apache/avro/Schema;
    :cond_14
    invoke-virtual {v4}, Ljava/lang/Class;->isEnum()Z

    move-result v28

    if-eqz v28, :cond_17

    .line 292
    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    .line 293
    .local v25, "symbols":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v4}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v28

    check-cast v28, [Ljava/lang/Enum;

    move-object/from16 v6, v28

    check-cast v6, [Ljava/lang/Enum;

    .line 294
    .local v6, "constants":[Ljava/lang/Enum;
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_2
    array-length v0, v6

    move/from16 v28, v0

    move/from16 v0, v28

    if-ge v14, v0, :cond_15

    .line 295
    aget-object v28, v6, v14

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 294
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 296
    :cond_15
    const/16 v28, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v28

    move-object/from16 v2, v24

    move-object/from16 v3, v25

    invoke-static {v0, v1, v2, v3}, Lcom/flurry/org/apache/avro/Schema;->createEnum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/flurry/org/apache/avro/Schema;

    move-result-object v22

    .line 325
    .end local v6    # "constants":[Ljava/lang/Enum;
    .end local v14    # "i":I
    .end local v25    # "symbols":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_3
    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-interface {v0, v13, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .end local v17    # "name":Ljava/lang/String;
    .end local v24    # "space":Ljava/lang/String;
    .end local v26    # "union":Lcom/flurry/org/apache/avro/reflect/Union;
    :cond_16
    move-object/from16 v21, v22

    .line 327
    goto/16 :goto_0

    .line 297
    .restart local v17    # "name":Ljava/lang/String;
    .restart local v24    # "space":Ljava/lang/String;
    .restart local v26    # "union":Lcom/flurry/org/apache/avro/reflect/Union;
    :cond_17
    const-class v28, Lcom/flurry/org/apache/avro/generic/GenericFixed;

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v28

    if-eqz v28, :cond_18

    .line 298
    const-class v28, Lcom/flurry/org/apache/avro/specific/FixedSize;

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v28

    check-cast v28, Lcom/flurry/org/apache/avro/specific/FixedSize;

    invoke-interface/range {v28 .. v28}, Lcom/flurry/org/apache/avro/specific/FixedSize;->value()I

    move-result v23

    .line 299
    .local v23, "size":I
    const/16 v28, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v28

    move-object/from16 v2, v24

    move/from16 v3, v23

    invoke-static {v0, v1, v2, v3}, Lcom/flurry/org/apache/avro/Schema;->createFixed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/flurry/org/apache/avro/Schema;

    move-result-object v22

    .line 300
    goto :goto_3

    .end local v23    # "size":I
    :cond_18
    const-class v28, Lcom/flurry/org/apache/avro/generic/IndexedRecord;

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v28

    if-eqz v28, :cond_19

    .line 301
    invoke-super/range {p0 .. p2}, Lcom/flurry/org/apache/avro/specific/SpecificData;->createSchema(Ljava/lang/reflect/Type;Ljava/util/Map;)Lcom/flurry/org/apache/avro/Schema;

    move-result-object v21

    goto/16 :goto_0

    .line 303
    :cond_19
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 304
    .local v12, "fields":Ljava/util/List;, "Ljava/util/List<Lcom/flurry/org/apache/avro/Schema$Field;>;"
    const-class v28, Ljava/lang/Throwable;

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v9

    .line 305
    .local v9, "error":Z
    const/16 v28, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v28

    move-object/from16 v2, v24

    invoke-static {v0, v1, v2, v9}, Lcom/flurry/org/apache/avro/Schema;->createRecord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/flurry/org/apache/avro/Schema;

    move-result-object v22

    .line 306
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/flurry/org/apache/avro/reflect/ReflectData;->getFields(Ljava/lang/Class;)Ljava/util/Collection;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, "i$":Ljava/util/Iterator;
    :cond_1a
    :goto_4
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_1c

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/reflect/Field;

    .line 308
    .local v10, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v28

    move/from16 v0, v28

    and-int/lit16 v0, v0, 0x88

    move/from16 v28, v0

    if-nez v28, :cond_1a

    .line 309
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v10, v1}, Lcom/flurry/org/apache/avro/reflect/ReflectData;->createFieldSchema(Ljava/lang/reflect/Field;Ljava/util/Map;)Lcom/flurry/org/apache/avro/Schema;

    move-result-object v11

    .line 310
    .local v11, "fieldSchema":Lcom/flurry/org/apache/avro/Schema;
    const/4 v8, 0x0

    .line 311
    .local v8, "defaultValue":Lcom/flurry/org/codehaus/jackson/JsonNode;
    invoke-virtual {v11}, Lcom/flurry/org/apache/avro/Schema;->getType()Lcom/flurry/org/apache/avro/Schema$Type;

    move-result-object v28

    sget-object v29, Lcom/flurry/org/apache/avro/Schema$Type;->UNION:Lcom/flurry/org/apache/avro/Schema$Type;

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    if-ne v0, v1, :cond_1b

    .line 312
    invoke-virtual {v11}, Lcom/flurry/org/apache/avro/Schema;->getTypes()Ljava/util/List;

    move-result-object v28

    const/16 v29, 0x0

    invoke-interface/range {v28 .. v29}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/flurry/org/apache/avro/Schema;

    .line 313
    .local v7, "defaultType":Lcom/flurry/org/apache/avro/Schema;
    invoke-virtual {v7}, Lcom/flurry/org/apache/avro/Schema;->getType()Lcom/flurry/org/apache/avro/Schema$Type;

    move-result-object v28

    sget-object v29, Lcom/flurry/org/apache/avro/Schema$Type;->NULL:Lcom/flurry/org/apache/avro/Schema$Type;

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    if-ne v0, v1, :cond_1b

    .line 314
    invoke-static {}, Lcom/flurry/org/codehaus/jackson/node/NullNode;->getInstance()Lcom/flurry/org/codehaus/jackson/node/NullNode;

    move-result-object v8

    .line 317
    .end local v7    # "defaultType":Lcom/flurry/org/apache/avro/Schema;
    :cond_1b
    new-instance v28, Lcom/flurry/org/apache/avro/Schema$Field;

    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v29

    const/16 v30, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-direct {v0, v1, v11, v2, v8}, Lcom/flurry/org/apache/avro/Schema$Field;-><init>(Ljava/lang/String;Lcom/flurry/org/apache/avro/Schema;Ljava/lang/String;Lcom/flurry/org/codehaus/jackson/JsonNode;)V

    move-object/from16 v0, v28

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 320
    .end local v8    # "defaultValue":Lcom/flurry/org/codehaus/jackson/JsonNode;
    .end local v10    # "field":Ljava/lang/reflect/Field;
    .end local v11    # "fieldSchema":Lcom/flurry/org/apache/avro/Schema;
    :cond_1c
    if-eqz v9, :cond_1d

    .line 321
    new-instance v28, Lcom/flurry/org/apache/avro/Schema$Field;

    const-string v29, "detailMessage"

    sget-object v30, Lcom/flurry/org/apache/avro/reflect/ReflectData;->THROWABLE_MESSAGE:Lcom/flurry/org/apache/avro/Schema;

    const/16 v31, 0x0

    const/16 v32, 0x0

    invoke-direct/range {v28 .. v32}, Lcom/flurry/org/apache/avro/Schema$Field;-><init>(Ljava/lang/String;Lcom/flurry/org/apache/avro/Schema;Ljava/lang/String;Lcom/flurry/org/codehaus/jackson/JsonNode;)V

    move-object/from16 v0, v28

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 323
    :cond_1d
    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Lcom/flurry/org/apache/avro/Schema;->setFields(Ljava/util/List;)V

    goto/16 :goto_3

    .line 329
    .end local v4    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v9    # "error":Z
    .end local v12    # "fields":Ljava/util/List;, "Ljava/util/List<Lcom/flurry/org/apache/avro/Schema$Field;>;"
    .end local v13    # "fullName":Ljava/lang/String;
    .end local v15    # "i$":Ljava/util/Iterator;
    .end local v17    # "name":Ljava/lang/String;
    .end local v22    # "schema":Lcom/flurry/org/apache/avro/Schema;
    .end local v24    # "space":Ljava/lang/String;
    .end local v26    # "union":Lcom/flurry/org/apache/avro/reflect/Union;
    :cond_1e
    invoke-super/range {p0 .. p2}, Lcom/flurry/org/apache/avro/specific/SpecificData;->createSchema(Ljava/lang/reflect/Type;Ljava/util/Map;)Lcom/flurry/org/apache/avro/Schema;

    move-result-object v21

    goto/16 :goto_0
.end method

.method public getClass(Lcom/flurry/org/apache/avro/Schema;)Ljava/lang/Class;
    .locals 4
    .param p1, "schema"    # Lcom/flurry/org/apache/avro/Schema;

    .prologue
    .line 206
    sget-object v2, Lcom/flurry/org/apache/avro/reflect/ReflectData$1;->$SwitchMap$org$apache$avro$Schema$Type:[I

    invoke-virtual {p1}, Lcom/flurry/org/apache/avro/Schema;->getType()Lcom/flurry/org/apache/avro/Schema$Type;

    move-result-object v3

    invoke-virtual {v3}, Lcom/flurry/org/apache/avro/Schema$Type;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 219
    :cond_0
    invoke-super {p0, p1}, Lcom/flurry/org/apache/avro/specific/SpecificData;->getClass(Lcom/flurry/org/apache/avro/Schema;)Ljava/lang/Class;

    move-result-object v0

    :cond_1
    :goto_0
    return-object v0

    .line 208
    :pswitch_0
    const-string v2, "java-class"

    invoke-static {p1, v2}, Lcom/flurry/org/apache/avro/reflect/ReflectData;->getClassProp(Lcom/flurry/org/apache/avro/Schema;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 209
    .local v0, "collectionClass":Ljava/lang/Class;
    if-nez v0, :cond_1

    .line 211
    invoke-virtual {p1}, Lcom/flurry/org/apache/avro/Schema;->getElementType()Lcom/flurry/org/apache/avro/Schema;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/flurry/org/apache/avro/reflect/ReflectData;->getClass(Lcom/flurry/org/apache/avro/Schema;)Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    .line 212
    .end local v0    # "collectionClass":Ljava/lang/Class;
    :pswitch_1
    const-class v0, Ljava/lang/String;

    goto :goto_0

    .line 213
    :pswitch_2
    sget-object v0, Lcom/flurry/org/apache/avro/reflect/ReflectData;->BYTES_CLASS:Ljava/lang/Class;

    goto :goto_0

    .line 215
    :pswitch_3
    const-string v2, "java-class"

    invoke-virtual {p1, v2}, Lcom/flurry/org/apache/avro/Schema;->getProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 216
    .local v1, "intClass":Ljava/lang/String;
    const-class v2, Ljava/lang/Byte;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    goto :goto_0

    .line 217
    :cond_2
    const-class v2, Ljava/lang/Short;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    goto :goto_0

    .line 206
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getField(Ljava/lang/Object;Ljava/lang/String;I)Ljava/lang/Object;
    .locals 2
    .param p1, "record"    # Ljava/lang/Object;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "position"    # I

    .prologue
    .line 102
    instance-of v1, p1, Lcom/flurry/org/apache/avro/generic/IndexedRecord;

    if-eqz v1, :cond_0

    .line 103
    invoke-super {p0, p1, p2, p3}, Lcom/flurry/org/apache/avro/specific/SpecificData;->getField(Ljava/lang/Object;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v1

    .line 105
    :goto_0
    return-object v1

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/flurry/org/apache/avro/reflect/ReflectData;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 106
    :catch_0
    move-exception v0

    .line 107
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v1, Lcom/flurry/org/apache/avro/AvroRuntimeException;

    invoke-direct {v1, v0}, Lcom/flurry/org/apache/avro/AvroRuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getProtocol(Ljava/lang/Class;)Lcom/flurry/org/apache/avro/Protocol;
    .locals 12
    .param p1, "iface"    # Ljava/lang/Class;

    .prologue
    .line 393
    new-instance v7, Lcom/flurry/org/apache/avro/Protocol;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v9

    if-nez v9, :cond_0

    const-string v9, ""

    :goto_0
    invoke-direct {v7, v10, v9}, Lcom/flurry/org/apache/avro/Protocol;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    .local v7, "protocol":Lcom/flurry/org/apache/avro/Protocol;
    new-instance v6, Ljava/util/LinkedHashMap;

    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    .line 397
    .local v6, "names":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/flurry/org/apache/avro/Schema;>;"
    invoke-virtual {v7}, Lcom/flurry/org/apache/avro/Protocol;->getMessages()Ljava/util/Map;

    move-result-object v3

    .line 398
    .local v3, "messages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/flurry/org/apache/avro/Protocol$Message;>;"
    invoke-virtual {p1}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/reflect/Method;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_3

    aget-object v4, v0, v1

    .line 399
    .local v4, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v9

    and-int/lit8 v9, v9, 0x8

    if-nez v9, :cond_2

    .line 400
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    .line 401
    .local v5, "name":Ljava/lang/String;
    invoke-interface {v3, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 402
    new-instance v9, Lcom/flurry/org/apache/avro/AvroTypeException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Two methods with same name: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/flurry/org/apache/avro/AvroTypeException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 393
    .end local v0    # "arr$":[Ljava/lang/reflect/Method;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "messages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/flurry/org/apache/avro/Protocol$Message;>;"
    .end local v4    # "method":Ljava/lang/reflect/Method;
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "names":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/flurry/org/apache/avro/Schema;>;"
    .end local v7    # "protocol":Lcom/flurry/org/apache/avro/Protocol;
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    .line 403
    .restart local v0    # "arr$":[Ljava/lang/reflect/Method;
    .restart local v1    # "i$":I
    .restart local v2    # "len$":I
    .restart local v3    # "messages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/flurry/org/apache/avro/Protocol$Message;>;"
    .restart local v4    # "method":Ljava/lang/reflect/Method;
    .restart local v5    # "name":Ljava/lang/String;
    .restart local v6    # "names":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/flurry/org/apache/avro/Schema;>;"
    .restart local v7    # "protocol":Lcom/flurry/org/apache/avro/Protocol;
    :cond_1
    invoke-direct {p0, v4, v7, v6}, Lcom/flurry/org/apache/avro/reflect/ReflectData;->getMessage(Ljava/lang/reflect/Method;Lcom/flurry/org/apache/avro/Protocol;Ljava/util/Map;)Lcom/flurry/org/apache/avro/Protocol$Message;

    move-result-object v9

    invoke-interface {v3, v5, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    .end local v5    # "name":Ljava/lang/String;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 407
    .end local v4    # "method":Ljava/lang/reflect/Method;
    :cond_3
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 408
    .local v8, "types":Ljava/util/List;, "Ljava/util/List<Lcom/flurry/org/apache/avro/Schema;>;"
    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 409
    invoke-static {v8}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 410
    invoke-virtual {v7, v8}, Lcom/flurry/org/apache/avro/Protocol;->setTypes(Ljava/util/Collection;)V

    .line 412
    return-object v7
.end method

.method protected getRecordSchema(Ljava/lang/Object;)Lcom/flurry/org/apache/avro/Schema;
    .locals 1
    .param p1, "record"    # Ljava/lang/Object;

    .prologue
    .line 135
    instance-of v0, p1, Lcom/flurry/org/apache/avro/generic/GenericContainer;

    if-eqz v0, :cond_0

    .line 136
    invoke-super {p0, p1}, Lcom/flurry/org/apache/avro/specific/SpecificData;->getRecordSchema(Ljava/lang/Object;)Lcom/flurry/org/apache/avro/Schema;

    move-result-object v0

    .line 137
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flurry/org/apache/avro/reflect/ReflectData;->getSchema(Ljava/lang/reflect/Type;)Lcom/flurry/org/apache/avro/Schema;

    move-result-object v0

    goto :goto_0
.end method

.method protected isArray(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "datum"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 121
    if-nez p1, :cond_1

    .line 122
    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v1, p1, Ljava/util/Collection;

    if-nez v1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected isBytes(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "datum"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 127
    if-nez p1, :cond_1

    move v1, v2

    .line 130
    :cond_0
    :goto_0
    return v1

    .line 128
    :cond_1
    invoke-super {p0, p1}, Lcom/flurry/org/apache/avro/specific/SpecificData;->isBytes(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 129
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 130
    .local v0, "c":Ljava/lang/Class;
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v3

    sget-object v4, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-eq v3, v4, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method protected isRecord(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "datum"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 113
    if-nez p1, :cond_1

    .line 116
    :cond_0
    :goto_0
    return v1

    .line 114
    :cond_1
    invoke-super {p0, p1}, Lcom/flurry/org/apache/avro/specific/SpecificData;->isRecord(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v1, v0

    goto :goto_0

    .line 115
    :cond_2
    instance-of v2, p1, Ljava/util/Collection;

    if-nez v2, :cond_0

    .line 116
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/flurry/org/apache/avro/reflect/ReflectData;->getSchema(Ljava/lang/reflect/Type;)Lcom/flurry/org/apache/avro/Schema;

    move-result-object v2

    invoke-virtual {v2}, Lcom/flurry/org/apache/avro/Schema;->getType()Lcom/flurry/org/apache/avro/Schema$Type;

    move-result-object v2

    sget-object v3, Lcom/flurry/org/apache/avro/Schema$Type;->RECORD:Lcom/flurry/org/apache/avro/Schema$Type;

    if-ne v2, v3, :cond_3

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public setField(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 2
    .param p1, "record"    # Ljava/lang/Object;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "position"    # I
    .param p4, "o"    # Ljava/lang/Object;

    .prologue
    .line 89
    instance-of v1, p1, Lcom/flurry/org/apache/avro/generic/IndexedRecord;

    if-eqz v1, :cond_0

    .line 90
    invoke-super {p0, p1, p2, p3, p4}, Lcom/flurry/org/apache/avro/specific/SpecificData;->setField(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Object;)V

    .line 98
    :goto_0
    return-void

    .line 94
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/flurry/org/apache/avro/reflect/ReflectData;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, p1, p4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 95
    :catch_0
    move-exception v0

    .line 96
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v1, Lcom/flurry/org/apache/avro/AvroRuntimeException;

    invoke-direct {v1, v0}, Lcom/flurry/org/apache/avro/AvroRuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public validate(Lcom/flurry/org/apache/avro/Schema;Ljava/lang/Object;)Z
    .locals 4
    .param p1, "schema"    # Lcom/flurry/org/apache/avro/Schema;
    .param p2, "datum"    # Ljava/lang/Object;

    .prologue
    .line 142
    sget-object v2, Lcom/flurry/org/apache/avro/reflect/ReflectData$1;->$SwitchMap$org$apache$avro$Schema$Type:[I

    invoke-virtual {p1}, Lcom/flurry/org/apache/avro/Schema;->getType()Lcom/flurry/org/apache/avro/Schema$Type;

    move-result-object v3

    invoke-virtual {v3}, Lcom/flurry/org/apache/avro/Schema$Type;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 153
    invoke-super {p0, p1, p2}, Lcom/flurry/org/apache/avro/specific/SpecificData;->validate(Lcom/flurry/org/apache/avro/Schema;Ljava/lang/Object;)Z

    move-result v2

    :goto_0
    return v2

    .line 144
    :pswitch_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-nez v2, :cond_0

    .line 145
    invoke-super {p0, p1, p2}, Lcom/flurry/org/apache/avro/specific/SpecificData;->validate(Lcom/flurry/org/apache/avro/Schema;Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0

    .line 146
    :cond_0
    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    .line 147
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 148
    invoke-virtual {p1}, Lcom/flurry/org/apache/avro/Schema;->getElementType()Lcom/flurry/org/apache/avro/Schema;

    move-result-object v2

    invoke-static {p2, v0}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/flurry/org/apache/avro/reflect/ReflectData;->validate(Lcom/flurry/org/apache/avro/Schema;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 150
    const/4 v2, 0x0

    goto :goto_0

    .line 147
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 151
    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    .line 142
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
