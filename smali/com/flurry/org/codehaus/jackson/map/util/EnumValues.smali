.class public final Lcom/flurry/org/codehaus/jackson/map/util/EnumValues;
.super Ljava/lang/Object;
.source "EnumValues.java"


# instance fields
.field private final _values:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap",
            "<*",
            "Lcom/flurry/org/codehaus/jackson/io/SerializedString;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Enum",
            "<*>;",
            "Lcom/flurry/org/codehaus/jackson/io/SerializedString;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 21
    .local p1, "v":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Enum<*>;Lcom/flurry/org/codehaus/jackson/io/SerializedString;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/EnumMap;

    invoke-direct {v0, p1}, Ljava/util/EnumMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/util/EnumValues;->_values:Ljava/util/EnumMap;

    .line 23
    return-void
.end method

.method public static construct(Ljava/lang/Class;Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;)Lcom/flurry/org/codehaus/jackson/map/util/EnumValues;
    .locals 1
    .param p1, "intr"    # Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<",
            "Ljava/lang/Enum",
            "<*>;>;",
            "Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;",
            ")",
            "Lcom/flurry/org/codehaus/jackson/map/util/EnumValues;"
        }
    .end annotation

    .prologue
    .line 27
    .local p0, "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<Ljava/lang/Enum<*>;>;"
    invoke-static {p0, p1}, Lcom/flurry/org/codehaus/jackson/map/util/EnumValues;->constructFromName(Ljava/lang/Class;Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;)Lcom/flurry/org/codehaus/jackson/map/util/EnumValues;

    move-result-object v0

    return-object v0
.end method

.method public static constructFromName(Ljava/lang/Class;Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;)Lcom/flurry/org/codehaus/jackson/map/util/EnumValues;
    .locals 11
    .param p1, "intr"    # Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<",
            "Ljava/lang/Enum",
            "<*>;>;",
            "Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;",
            ")",
            "Lcom/flurry/org/codehaus/jackson/map/util/EnumValues;"
        }
    .end annotation

    .prologue
    .line 35
    .local p0, "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<Ljava/lang/Enum<*>;>;"
    invoke-static {p0}, Lcom/flurry/org/codehaus/jackson/map/util/ClassUtil;->findEnumType(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    .line 36
    .local v1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Enum<*>;>;"
    invoke-virtual {v1}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/Enum;

    .line 37
    .local v7, "values":[Ljava/lang/Enum;, "[Ljava/lang/Enum<*>;"
    if-eqz v7, :cond_1

    .line 39
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 40
    .local v5, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Enum<*>;Lcom/flurry/org/codehaus/jackson/io/SerializedString;>;"
    move-object v0, v7

    .local v0, "arr$":[Ljava/lang/Enum;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v2, v0, v3

    .line 41
    .local v2, "en":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    invoke-virtual {p1, v2}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;->findEnumValue(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v6

    .line 42
    .local v6, "value":Ljava/lang/String;
    new-instance v8, Lcom/flurry/org/codehaus/jackson/io/SerializedString;

    invoke-direct {v8, v6}, Lcom/flurry/org/codehaus/jackson/io/SerializedString;-><init>(Ljava/lang/String;)V

    invoke-interface {v5, v2, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 44
    .end local v2    # "en":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    .end local v6    # "value":Ljava/lang/String;
    :cond_0
    new-instance v8, Lcom/flurry/org/codehaus/jackson/map/util/EnumValues;

    invoke-direct {v8, v5}, Lcom/flurry/org/codehaus/jackson/map/util/EnumValues;-><init>(Ljava/util/Map;)V

    return-object v8

    .line 46
    .end local v0    # "arr$":[Ljava/lang/Enum;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Enum<*>;Lcom/flurry/org/codehaus/jackson/io/SerializedString;>;"
    :cond_1
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Can not determine enum constants for Class "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8
.end method

.method public static constructFromToString(Ljava/lang/Class;Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;)Lcom/flurry/org/codehaus/jackson/map/util/EnumValues;
    .locals 10
    .param p1, "intr"    # Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<",
            "Ljava/lang/Enum",
            "<*>;>;",
            "Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;",
            ")",
            "Lcom/flurry/org/codehaus/jackson/map/util/EnumValues;"
        }
    .end annotation

    .prologue
    .line 51
    .local p0, "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<Ljava/lang/Enum<*>;>;"
    invoke-static {p0}, Lcom/flurry/org/codehaus/jackson/map/util/ClassUtil;->findEnumType(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    .line 52
    .local v1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Enum<*>;>;"
    invoke-virtual {v1}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/Enum;

    .line 53
    .local v6, "values":[Ljava/lang/Enum;, "[Ljava/lang/Enum<*>;"
    if-eqz v6, :cond_1

    .line 55
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 56
    .local v5, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Enum<*>;Lcom/flurry/org/codehaus/jackson/io/SerializedString;>;"
    move-object v0, v6

    .local v0, "arr$":[Ljava/lang/Enum;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v2, v0, v3

    .line 57
    .local v2, "en":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    new-instance v7, Lcom/flurry/org/codehaus/jackson/io/SerializedString;

    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/flurry/org/codehaus/jackson/io/SerializedString;-><init>(Ljava/lang/String;)V

    invoke-interface {v5, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 59
    .end local v2    # "en":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    :cond_0
    new-instance v7, Lcom/flurry/org/codehaus/jackson/map/util/EnumValues;

    invoke-direct {v7, v5}, Lcom/flurry/org/codehaus/jackson/map/util/EnumValues;-><init>(Ljava/util/Map;)V

    return-object v7

    .line 61
    .end local v0    # "arr$":[Ljava/lang/Enum;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Enum<*>;Lcom/flurry/org/codehaus/jackson/io/SerializedString;>;"
    :cond_1
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Can not determine enum constants for Class "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7
.end method


# virtual methods
.method public serializedValueFor(Ljava/lang/Enum;)Lcom/flurry/org/codehaus/jackson/io/SerializedString;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum",
            "<*>;)",
            "Lcom/flurry/org/codehaus/jackson/io/SerializedString;"
        }
    .end annotation

    .prologue
    .line 76
    .local p1, "key":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/util/EnumValues;->_values:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/org/codehaus/jackson/io/SerializedString;

    return-object v0
.end method

.method public valueFor(Ljava/lang/Enum;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 70
    .local p1, "key":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/util/EnumValues;->_values:Ljava/util/EnumMap;

    invoke-virtual {v1, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/org/codehaus/jackson/io/SerializedString;

    .line 71
    .local v0, "sstr":Lcom/flurry/org/codehaus/jackson/io/SerializedString;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/io/SerializedString;->getValue()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/flurry/org/codehaus/jackson/io/SerializedString;",
            ">;"
        }
    .end annotation

    .prologue
    .line 80
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/util/EnumValues;->_values:Ljava/util/EnumMap;

    invoke-virtual {v0}, Ljava/util/EnumMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
