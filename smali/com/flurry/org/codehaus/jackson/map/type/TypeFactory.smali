.class public final Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;
.super Ljava/lang/Object;
.source "TypeFactory.java"


# static fields
.field private static final NO_TYPES:[Lcom/flurry/org/codehaus/jackson/type/JavaType;

.field public static final instance:Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field protected _cachedArrayListType:Lcom/flurry/org/codehaus/jackson/map/type/HierarchicType;

.field protected _cachedHashMapType:Lcom/flurry/org/codehaus/jackson/map/type/HierarchicType;

.field protected final _modifiers:[Lcom/flurry/org/codehaus/jackson/map/type/TypeModifier;

.field protected final _parser:Lcom/flurry/org/codehaus/jackson/map/type/TypeParser;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;

    invoke-direct {v0}, Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;-><init>()V

    sput-object v0, Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;->instance:Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;

    .line 53
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/flurry/org/codehaus/jackson/type/JavaType;

    sput-object v0, Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;->NO_TYPES:[Lcom/flurry/org/codehaus/jackson/type/JavaType;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/type/TypeParser;

    invoke-direct {v0, p0}, Lcom/flurry/org/codehaus/jackson/map/type/TypeParser;-><init>(Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;)V

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;->_parser:Lcom/flurry/org/codehaus/jackson/map/type/TypeParser;

    .line 95
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;->_modifiers:[Lcom/flurry/org/codehaus/jackson/map/type/TypeModifier;

    .line 96
    return-void
.end method

.method protected constructor <init>(Lcom/flurry/org/codehaus/jackson/map/type/TypeParser;[Lcom/flurry/org/codehaus/jackson/map/type/TypeModifier;)V
    .locals 0
    .param p1, "p"    # Lcom/flurry/org/codehaus/jackson/map/type/TypeParser;
    .param p2, "mods"    # [Lcom/flurry/org/codehaus/jackson/map/type/TypeModifier;

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput-object p1, p0, Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;->_parser:Lcom/flurry/org/codehaus/jackson/map/type/TypeParser;

    .line 100
    iput-object p2, p0, Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;->_modifiers:[Lcom/flurry/org/codehaus/jackson/map/type/TypeModifier;

    .line 101
    return-void
.end method

.method private _collectionType(Ljava/lang/Class;)Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/flurry/org/codehaus/jackson/type/JavaType;"
        }
    .end annotation

    .prologue
    .line 1009
    .local p1, "rawClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v1, Ljava/util/Collection;

    invoke-virtual {p0, p1, v1}, Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;->findTypeParameters(Ljava/lang/Class;Ljava/lang/Class;)[Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v0

    .line 1011
    .local v0, "typeParams":[Lcom/flurry/org/codehaus/jackson/type/JavaType;
    if-nez v0, :cond_0

    .line 1012
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;->_unknownType()Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/flurry/org/codehaus/jackson/map/type/CollectionType;->construct(Ljava/lang/Class;Lcom/flurry/org/codehaus/jackson/type/JavaType;)Lcom/flurry/org/codehaus/jackson/map/type/CollectionType;

    move-result-object v1

    .line 1018
    :goto_0
    return-object v1

    .line 1015
    :cond_0
    array-length v1, v0

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 1016
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Strange Collection type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": can not determine type parameters"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1018
    :cond_1
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {p1, v1}, Lcom/flurry/org/codehaus/jackson/map/type/CollectionType;->construct(Ljava/lang/Class;Lcom/flurry/org/codehaus/jackson/type/JavaType;)Lcom/flurry/org/codehaus/jackson/map/type/CollectionType;

    move-result-object v1

    goto :goto_0
.end method

.method private _mapType(Ljava/lang/Class;)Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/flurry/org/codehaus/jackson/type/JavaType;"
        }
    .end annotation

    .prologue
    .line 995
    .local p1, "rawClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v1, Ljava/util/Map;

    invoke-virtual {p0, p1, v1}, Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;->findTypeParameters(Ljava/lang/Class;Ljava/lang/Class;)[Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v0

    .line 997
    .local v0, "typeParams":[Lcom/flurry/org/codehaus/jackson/type/JavaType;
    if-nez v0, :cond_0

    .line 998
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;->_unknownType()Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v1

    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;->_unknownType()Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcom/flurry/org/codehaus/jackson/map/type/MapType;->construct(Ljava/lang/Class;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/type/JavaType;)Lcom/flurry/org/codehaus/jackson/map/type/MapType;

    move-result-object v1

    .line 1004
    :goto_0
    return-object v1

    .line 1001
    :cond_0
    array-length v1, v0

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    .line 1002
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Strange Map type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": can not determine type parameters"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1004
    :cond_1
    const/4 v1, 0x0

    aget-object v1, v0, v1

    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-static {p1, v1, v2}, Lcom/flurry/org/codehaus/jackson/map/type/MapType;->construct(Ljava/lang/Class;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/type/JavaType;)Lcom/flurry/org/codehaus/jackson/map/type/MapType;

    move-result-object v1

    goto :goto_0
.end method

.method public static arrayType(Lcom/flurry/org/codehaus/jackson/type/JavaType;)Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .locals 1
    .param p0, "elementType"    # Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 183
    sget-object v0, Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;->instance:Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;

    invoke-virtual {v0, p0}, Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;->constructArrayType(Lcom/flurry/org/codehaus/jackson/type/JavaType;)Lcom/flurry/org/codehaus/jackson/map/type/ArrayType;

    move-result-object v0

    return-object v0
.end method

.method public static arrayType(Ljava/lang/Class;)Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/flurry/org/codehaus/jackson/type/JavaType;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 178
    .local p0, "elementType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;->instance:Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;

    sget-object v1, Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;->instance:Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;

    invoke-virtual {v1, p0}, Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;->constructType(Ljava/lang/reflect/Type;)Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;->constructArrayType(Lcom/flurry/org/codehaus/jackson/type/JavaType;)Lcom/flurry/org/codehaus/jackson/map/type/ArrayType;

    move-result-object v0

    return-object v0
.end method

.method public static collectionType(Ljava/lang/Class;Lcom/flurry/org/codehaus/jackson/type/JavaType;)Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .locals 1
    .param p1, "elementType"    # Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/util/Collection;",
            ">;",
            "Lcom/flurry/org/codehaus/jackson/type/JavaType;",
            ")",
            "Lcom/flurry/org/codehaus/jackson/type/JavaType;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 193
    .local p0, "collectionType":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/util/Collection;>;"
    sget-object v0, Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;->instance:Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;

    invoke-virtual {v0, p0, p1}, Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;->constructCollectionType(Ljava/lang/Class;Lcom/flurry/org/codehaus/jackson/type/JavaType;)Lcom/flurry/org/codehaus/jackson/map/type/CollectionType;

    move-result-object v0

    return-object v0
.end method

.method public static collectionType(Ljava/lang/Class;Ljava/lang/Class;)Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/util/Collection;",
            ">;",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/flurry/org/codehaus/jackson/type/JavaType;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 188
    .local p0, "collectionType":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/util/Collection;>;"
    .local p1, "elementType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;->instance:Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;

    sget-object v1, Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;->instance:Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;

    invoke-virtual {v1, p1}, Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;->constructType(Ljava/lang/reflect/Type;)Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;->constructCollectionType(Ljava/lang/Class;Lcom/flurry/org/codehaus/jackson/type/JavaType;)Lcom/flurry/org/codehaus/jackson/map/type/CollectionType;

    move-result-object v0

    return-object v0
.end method

.method public static defaultInstance()Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;
    .locals 1

    .prologue
    .line 118
    sget-object v0, Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;->instance:Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;

    return-object v0
.end method

.method public static fastSimpleType(Ljava/lang/Class;)Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/flurry/org/codehaus/jackson/type/JavaType;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 228
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;->instance:Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;

    invoke-virtual {v0, p0}, Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;->uncheckedSimpleType(Ljava/lang/Class;)Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v0

    return-object v0
.end method

.method public static findParameterTypes(Lcom/flurry/org/codehaus/jackson/type/JavaType;Ljava/lang/Class;)[Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .locals 1
    .param p0, "type"    # Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/type/JavaType;",
            "Ljava/lang/Class",
            "<*>;)[",
            "Lcom/flurry/org/codehaus/jackson/type/JavaType;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 243
    .local p1, "expType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;->instance:Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;

    invoke-virtual {v0, p0, p1}, Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;->findTypeParameters(Lcom/flurry/org/codehaus/jackson/type/JavaType;Ljava/lang/Class;)[Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v0

    return-object v0
.end method

.method public static findParameterTypes(Ljava/lang/Class;Ljava/lang/Class;)[Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)[",
            "Lcom/flurry/org/codehaus/jackson/type/JavaType;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 233
    .local p0, "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "expType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;->instance:Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;

    invoke-virtual {v0, p0, p1}, Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;->findTypeParameters(Ljava/lang/Class;Ljava/lang/Class;)[Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v0

    return-object v0
.end method

.method public static findParameterTypes(Ljava/lang/Class;Ljava/lang/Class;Lcom/flurry/org/codehaus/jackson/map/type/TypeBindings;)[Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .locals 1
    .param p2, "bindings"    # Lcom/flurry/org/codehaus/jackson/map/type/TypeBindings;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/flurry/org/codehaus/jackson/map/type/TypeBindings;",
            ")[",
            "Lcom/flurry/org/codehaus/jackson/type/JavaType;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 238
    .local p0, "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "expType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;->instance:Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;

    invoke-virtual {v0, p0, p1, p2}, Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;->findTypeParameters(Ljava/lang/Class;Ljava/lang/Class;Lcom/flurry/org/codehaus/jackson/map/type/TypeBindings;)[Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v0

    return-object v0
.end method

.method public static fromCanonical(Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .locals 1
    .param p0, "canonical"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 218
    sget-object v0, Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;->instance:Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;

    invoke-virtual {v0, p0}, Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;->constructFromCanonical(Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v0

    return-object v0
.end method

.method public static fromClass(Ljava/lang/Class;)Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/flurry/org/codehaus/jackson/type/JavaType;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 266
    .local p0, "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;->instance:Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;->_fromClass(Ljava/lang/Class;Lcom/flurry/org/codehaus/jackson/map/type/TypeBindings;)Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v0

    return-object v0
.end method

.method public static fromType(Ljava/lang/reflect/Type;)Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .locals 2
    .param p0, "type"    # Ljava/lang/reflect/Type;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 293
    sget-object v0, Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;->instance:Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;->_constructType(Ljava/lang/reflect/Type;Lcom/flurry/org/codehaus/jackson/map/type/TypeBindings;)Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v0

    return-object v0
.end method

.method public static fromTypeReference(Lcom/flurry/org/codehaus/jackson/type/TypeReference;)Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/type/TypeReference",
            "<*>;)",
            "Lcom/flurry/org/codehaus/jackson/type/JavaType;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 280
    .local p0, "ref":Lcom/flurry/org/codehaus/jackson/type/TypeReference;, "Lcom/flurry/org/codehaus/jackson/type/TypeReference<*>;"
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/type/TypeReference;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v0}, Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;->type(Ljava/lang/reflect/Type;)Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v0

    return-object v0
.end method

.method public static mapType(Ljava/lang/Class;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/type/JavaType;)Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .locals 1
    .param p1, "keyType"    # Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .param p2, "valueType"    # Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/util/Map;",
            ">;",
            "Lcom/flurry/org/codehaus/jackson/type/JavaType;",
            "Lcom/flurry/org/codehaus/jackson/type/JavaType;",
            ")",
            "Lcom/flurry/org/codehaus/jackson/type/JavaType;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 204
    .local p0, "mapType":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/util/Map;>;"
    sget-object v0, Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;->instance:Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;

    invoke-virtual {v0, p0, p1, p2}, Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;->constructMapType(Ljava/lang/Class;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/type/JavaType;)Lcom/flurry/org/codehaus/jackson/map/type/MapType;

    move-result-object v0

    return-object v0
.end method

.method public static mapType(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/util/Map;",
            ">;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/flurry/org/codehaus/jackson/type/JavaType;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 199
    .local p0, "mapClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/util/Map;>;"
    .local p1, "keyType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "valueType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;->instance:Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;

    invoke-static {p1}, Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;->type(Ljava/lang/reflect/Type;)Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v1

    sget-object v2, Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;->instance:Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;

    invoke-virtual {v2, p2}, Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;->constructType(Ljava/lang/reflect/Type;)Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v2

    invoke-virtual {v0, p0, v1, v2}, Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;->constructMapType(Ljava/lang/Class;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/type/JavaType;)Lcom/flurry/org/codehaus/jackson/map/type/MapType;

    move-result-object v0

    return-object v0
.end method

.method public static varargs parametricType(Ljava/lang/Class;[Lcom/flurry/org/codehaus/jackson/type/JavaType;)Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .locals 1
    .param p1, "parameterTypes"    # [Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;[",
            "Lcom/flurry/org/codehaus/jackson/type/JavaType;",
            ")",
            "Lcom/flurry/org/codehaus/jackson/type/JavaType;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 214
    .local p0, "parametrized":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;->instance:Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;

    invoke-virtual {v0, p0, p1}, Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;->constructParametricType(Ljava/lang/Class;[Lcom/flurry/org/codehaus/jackson/type/JavaType;)Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v0

    return-object v0
.end method

.method public static varargs parametricType(Ljava/lang/Class;[Ljava/lang/Class;)Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/flurry/org/codehaus/jackson/type/JavaType;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 209
    .local p0, "parametrized":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "parameterClasses":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    sget-object v0, Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;->instance:Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;

    invoke-virtual {v0, p0, p1}, Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;->constructParametricType(Ljava/lang/Class;[Ljava/lang/Class;)Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v0

    return-object v0
.end method

.method public static rawClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;
    .locals 1
    .param p0, "t"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 138
    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 139
    check-cast p0, Ljava/lang/Class;

    .line 142
    .end local p0    # "t":Ljava/lang/reflect/Type;
    :goto_0
    return-object p0

    .restart local p0    # "t":Ljava/lang/reflect/Type;
    :cond_0
    invoke-static {}, Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;->defaultInstance()Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;->constructType(Ljava/lang/reflect/Type;)Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object p0

    goto :goto_0
.end method

.method public static specialize(Lcom/flurry/org/codehaus/jackson/type/JavaType;Ljava/lang/Class;)Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .locals 1
    .param p0, "baseType"    # Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/type/JavaType;",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/flurry/org/codehaus/jackson/type/JavaType;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 223
    .local p1, "subclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;->instance:Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;

    invoke-virtual {v0, p0, p1}, Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;->constructSpecializedType(Lcom/flurry/org/codehaus/jackson/type/JavaType;Ljava/lang/Class;)Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v0

    return-object v0
.end method

.method public static type(Lcom/flurry/org/codehaus/jackson/type/TypeReference;)Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/type/TypeReference",
            "<*>;)",
            "Lcom/flurry/org/codehaus/jackson/type/JavaType;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 173
    .local p0, "ref":Lcom/flurry/org/codehaus/jackson/type/TypeReference;, "Lcom/flurry/org/codehaus/jackson/type/TypeReference<*>;"
    sget-object v0, Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;->instance:Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;

    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/type/TypeReference;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;->constructType(Ljava/lang/reflect/Type;)Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v0

    return-object v0
.end method

.method public static type(Ljava/lang/reflect/Type;)Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .locals 2
    .param p0, "t"    # Ljava/lang/reflect/Type;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 153
    sget-object v0, Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;->instance:Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;->_constructType(Ljava/lang/reflect/Type;Lcom/flurry/org/codehaus/jackson/map/type/TypeBindings;)Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v0

    return-object v0
.end method

.method public static type(Ljava/lang/reflect/Type;Lcom/flurry/org/codehaus/jackson/map/type/TypeBindings;)Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .locals 1
    .param p0, "type"    # Ljava/lang/reflect/Type;
    .param p1, "bindings"    # Lcom/flurry/org/codehaus/jackson/map/type/TypeBindings;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 168
    sget-object v0, Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;->instance:Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;

    invoke-virtual {v0, p0, p1}, Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;->_constructType(Ljava/lang/reflect/Type;Lcom/flurry/org/codehaus/jackson/map/type/TypeBindings;)Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v0

    return-object v0
.end method

.method public static type(Ljava/lang/reflect/Type;Lcom/flurry/org/codehaus/jackson/type/JavaType;)Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .locals 1
    .param p0, "type"    # Ljava/lang/reflect/Type;
    .param p1, "context"    # Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 163
    sget-object v0, Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;->instance:Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;

    invoke-virtual {v0, p0, p1}, Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;->constructType(Ljava/lang/reflect/Type;Lcom/flurry/org/codehaus/jackson/type/JavaType;)Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v0

    return-object v0
.end method

.method public static type(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .locals 1
    .param p0, "type"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/flurry/org/codehaus/jackson/type/JavaType;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 158
    .local p1, "context":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;->instance:Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;

    invoke-virtual {v0, p0, p1}, Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;->constructType(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v0

    return-object v0
.end method

.method public static unknownType()Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .locals 1

    .prologue
    .line 134
    invoke-static {}, Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;->defaultInstance()Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;->_unknownType()Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected declared-synchronized _arrayListSuperInterfaceChain(Lcom/flurry/org/codehaus/jackson/map/type/HierarchicType;)Lcom/flurry/org/codehaus/jackson/map/type/HierarchicType;
    .locals 3
    .param p1, "current"    # Lcom/flurry/org/codehaus/jackson/map/type/HierarchicType;

    .prologue
    .line 1155
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;->_cachedArrayListType:Lcom/flurry/org/codehaus/jackson/map/type/HierarchicType;

    if-nez v2, :cond_0

    .line 1156
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/map/type/HierarchicType;->deepCloneWithoutSubtype()Lcom/flurry/org/codehaus/jackson/map/type/HierarchicType;

    move-result-object v0

    .line 1157
    .local v0, "base":Lcom/flurry/org/codehaus/jackson/map/type/HierarchicType;
    const-class v2, Ljava/util/List;

    invoke-virtual {p0, v0, v2}, Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;->_doFindSuperInterfaceChain(Lcom/flurry/org/codehaus/jackson/map/type/HierarchicType;Ljava/lang/Class;)Lcom/flurry/org/codehaus/jackson/map/type/HierarchicType;

    .line 1158
    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/map/type/HierarchicType;->getSuperType()Lcom/flurry/org/codehaus/jackson/map/type/HierarchicType;

    move-result-object v2

    iput-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;->_cachedArrayListType:Lcom/flurry/org/codehaus/jackson/map/type/HierarchicType;

    .line 1160
    .end local v0    # "base":Lcom/flurry/org/codehaus/jackson/map/type/HierarchicType;
    :cond_0
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;->_cachedArrayListType:Lcom/flurry/org/codehaus/jackson/map/type/HierarchicType;

    invoke-virtual {v2}, Lcom/flurry/org/codehaus/jackson/map/type/HierarchicType;->deepCloneWithoutSubtype()Lcom/flurry/org/codehaus/jackson/map/type/HierarchicType;

    move-result-object v1

    .line 1161
    .local v1, "t":Lcom/flurry/org/codehaus/jackson/map/type/HierarchicType;
    invoke-virtual {p1, v1}, Lcom/flurry/org/codehaus/jackson/map/type/HierarchicType;->setSuperType(Lcom/flurry/org/codehaus/jackson/map/type/HierarchicType;)V

    .line 1162
    invoke-virtual {v1, p1}, Lcom/flurry/org/codehaus/jackson/map/type/HierarchicType;->setSubType(Lcom/flurry/org/codehaus/jackson/map/type/HierarchicType;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1163
    monitor-exit p0

    return-object p1

    .line 1155
    .end local v1    # "t":Lcom/flurry/org/codehaus/jackson/map/type/HierarchicType;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public _constructType(Ljava/lang/reflect/Type;Lcom/flurry/org/codehaus/jackson/map/type/TypeBindings;)Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .locals 9
    .param p1, "type"    # Ljava/lang/reflect/Type;
    .param p2, "context"    # Lcom/flurry/org/codehaus/jackson/map/type/TypeBindings;

    .prologue
    .line 475
    instance-of v6, p1, Ljava/lang/Class;

    if-eqz v6, :cond_1

    move-object v1, p1

    .line 476
    check-cast v1, Ljava/lang/Class;

    .line 480
    .local v1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez p2, :cond_0

    .line 481
    new-instance p2, Lcom/flurry/org/codehaus/jackson/map/type/TypeBindings;

    .end local p2    # "context":Lcom/flurry/org/codehaus/jackson/map/type/TypeBindings;
    invoke-direct {p2, p0, v1}, Lcom/flurry/org/codehaus/jackson/map/type/TypeBindings;-><init>(Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;Ljava/lang/Class;)V

    .line 483
    .restart local p2    # "context":Lcom/flurry/org/codehaus/jackson/map/type/TypeBindings;
    :cond_0
    invoke-virtual {p0, v1, p2}, Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;->_fromClass(Ljava/lang/Class;Lcom/flurry/org/codehaus/jackson/map/type/TypeBindings;)Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v5

    .line 505
    .end local v1    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v5, "resultType":Lcom/flurry/org/codehaus/jackson/type/JavaType;
    :goto_0
    iget-object v6, p0, Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;->_modifiers:[Lcom/flurry/org/codehaus/jackson/map/type/TypeModifier;

    if-eqz v6, :cond_6

    invoke-virtual {v5}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->isContainerType()Z

    move-result v6

    if-nez v6, :cond_6

    .line 506
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;->_modifiers:[Lcom/flurry/org/codehaus/jackson/map/type/TypeModifier;

    .local v0, "arr$":[Lcom/flurry/org/codehaus/jackson/map/type/TypeModifier;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_6

    aget-object v4, v0, v2

    .line 507
    .local v4, "mod":Lcom/flurry/org/codehaus/jackson/map/type/TypeModifier;
    invoke-virtual {v4, v5, p1, p2, p0}, Lcom/flurry/org/codehaus/jackson/map/type/TypeModifier;->modifyType(Lcom/flurry/org/codehaus/jackson/type/JavaType;Ljava/lang/reflect/Type;Lcom/flurry/org/codehaus/jackson/map/type/TypeBindings;Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;)Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v5

    .line 506
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 486
    .end local v0    # "arr$":[Lcom/flurry/org/codehaus/jackson/map/type/TypeModifier;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "mod":Lcom/flurry/org/codehaus/jackson/map/type/TypeModifier;
    .end local v5    # "resultType":Lcom/flurry/org/codehaus/jackson/type/JavaType;
    :cond_1
    instance-of v6, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v6, :cond_2

    move-object v6, p1

    .line 487
    check-cast v6, Ljava/lang/reflect/ParameterizedType;

    invoke-virtual {p0, v6, p2}, Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;->_fromParamType(Ljava/lang/reflect/ParameterizedType;Lcom/flurry/org/codehaus/jackson/map/type/TypeBindings;)Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v5

    .restart local v5    # "resultType":Lcom/flurry/org/codehaus/jackson/type/JavaType;
    goto :goto_0

    .line 489
    .end local v5    # "resultType":Lcom/flurry/org/codehaus/jackson/type/JavaType;
    :cond_2
    instance-of v6, p1, Ljava/lang/reflect/GenericArrayType;

    if-eqz v6, :cond_3

    move-object v6, p1

    .line 490
    check-cast v6, Ljava/lang/reflect/GenericArrayType;

    invoke-virtual {p0, v6, p2}, Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;->_fromArrayType(Ljava/lang/reflect/GenericArrayType;Lcom/flurry/org/codehaus/jackson/map/type/TypeBindings;)Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v5

    .restart local v5    # "resultType":Lcom/flurry/org/codehaus/jackson/type/JavaType;
    goto :goto_0

    .line 492
    .end local v5    # "resultType":Lcom/flurry/org/codehaus/jackson/type/JavaType;
    :cond_3
    instance-of v6, p1, Ljava/lang/reflect/TypeVariable;

    if-eqz v6, :cond_4

    move-object v6, p1

    .line 493
    check-cast v6, Ljava/lang/reflect/TypeVariable;

    invoke-virtual {p0, v6, p2}, Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;->_fromVariable(Ljava/lang/reflect/TypeVariable;Lcom/flurry/org/codehaus/jackson/map/type/TypeBindings;)Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v5

    .restart local v5    # "resultType":Lcom/flurry/org/codehaus/jackson/type/JavaType;
    goto :goto_0

    .line 495
    .end local v5    # "resultType":Lcom/flurry/org/codehaus/jackson/type/JavaType;
    :cond_4
    instance-of v6, p1, Ljava/lang/reflect/WildcardType;

    if-eqz v6, :cond_5

    move-object v6, p1

    .line 496
    check-cast v6, Ljava/lang/reflect/WildcardType;

    invoke-virtual {p0, v6, p2}, Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;->_fromWildcard(Ljava/lang/reflect/WildcardType;Lcom/flurry/org/codehaus/jackson/map/type/TypeBindings;)Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v5

    .restart local v5    # "resultType":Lcom/flurry/org/codehaus/jackson/type/JavaType;
    goto :goto_0

    .line 499
    .end local v5    # "resultType":Lcom/flurry/org/codehaus/jackson/type/JavaType;
    :cond_5
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unrecognized Type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 510
    .restart local v5    # "resultType":Lcom/flurry/org/codehaus/jackson/type/JavaType;
    :cond_6
    return-object v5
.end method

.method protected _doFindSuperInterfaceChain(Lcom/flurry/org/codehaus/jackson/map/type/HierarchicType;Ljava/lang/Class;)Lcom/flurry/org/codehaus/jackson/map/type/HierarchicType;
    .locals 7
    .param p1, "current"    # Lcom/flurry/org/codehaus/jackson/map/type/HierarchicType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/type/HierarchicType;",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/flurry/org/codehaus/jackson/map/type/HierarchicType;"
        }
    .end annotation

    .prologue
    .line 1113
    .local p2, "target":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/map/type/HierarchicType;->getRawClass()Ljava/lang/Class;

    move-result-object v5

    .line 1114
    .local v5, "raw":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v5}, Ljava/lang/Class;->getGenericInterfaces()[Ljava/lang/reflect/Type;

    move-result-object v4

    .line 1117
    .local v4, "parents":[Ljava/lang/reflect/Type;
    if-eqz v4, :cond_1

    .line 1118
    move-object v0, v4

    .local v0, "arr$":[Ljava/lang/reflect/Type;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 1119
    .local v3, "parent":Ljava/lang/reflect/Type;
    invoke-virtual {p0, v3, p2}, Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;->_findSuperInterfaceChain(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/flurry/org/codehaus/jackson/map/type/HierarchicType;

    move-result-object v6

    .line 1120
    .local v6, "sup":Lcom/flurry/org/codehaus/jackson/map/type/HierarchicType;
    if-eqz v6, :cond_0

    .line 1121
    invoke-virtual {v6, p1}, Lcom/flurry/org/codehaus/jackson/map/type/HierarchicType;->setSubType(Lcom/flurry/org/codehaus/jackson/map/type/HierarchicType;)V

    .line 1122
    invoke-virtual {p1, v6}, Lcom/flurry/org/codehaus/jackson/map/type/HierarchicType;->setSuperType(Lcom/flurry/org/codehaus/jackson/map/type/HierarchicType;)V

    .line 1137
    .end local v0    # "arr$":[Ljava/lang/reflect/Type;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v6    # "sup":Lcom/flurry/org/codehaus/jackson/map/type/HierarchicType;
    .end local p1    # "current":Lcom/flurry/org/codehaus/jackson/map/type/HierarchicType;
    :goto_1
    return-object p1

    .line 1118
    .restart local v0    # "arr$":[Ljava/lang/reflect/Type;
    .restart local v1    # "i$":I
    .restart local v2    # "len$":I
    .restart local v6    # "sup":Lcom/flurry/org/codehaus/jackson/map/type/HierarchicType;
    .restart local p1    # "current":Lcom/flurry/org/codehaus/jackson/map/type/HierarchicType;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1128
    .end local v0    # "arr$":[Ljava/lang/reflect/Type;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "parent":Ljava/lang/reflect/Type;
    .end local v6    # "sup":Lcom/flurry/org/codehaus/jackson/map/type/HierarchicType;
    :cond_1
    invoke-virtual {v5}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v3

    .line 1129
    .restart local v3    # "parent":Ljava/lang/reflect/Type;
    if-eqz v3, :cond_2

    .line 1130
    invoke-virtual {p0, v3, p2}, Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;->_findSuperInterfaceChain(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/flurry/org/codehaus/jackson/map/type/HierarchicType;

    move-result-object v6

    .line 1131
    .restart local v6    # "sup":Lcom/flurry/org/codehaus/jackson/map/type/HierarchicType;
    if-eqz v6, :cond_2

    .line 1132
    invoke-virtual {v6, p1}, Lcom/flurry/org/codehaus/jackson/map/type/HierarchicType;->setSubType(Lcom/flurry/org/codehaus/jackson/map/type/HierarchicType;)V

    .line 1133
    invoke-virtual {p1, v6}, Lcom/flurry/org/codehaus/jackson/map/type/HierarchicType;->setSuperType(Lcom/flurry/org/codehaus/jackson/map/type/HierarchicType;)V

    goto :goto_1

    .line 1137
    .end local v6    # "sup":Lcom/flurry/org/codehaus/jackson/map/type/HierarchicType;
    :cond_2
    const/4 p1, 0x0

    goto :goto_1
.end method

.method protected _findSuperClassChain(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/flurry/org/codehaus/jackson/map/type/HierarchicType;
    .locals 4
    .param p1, "currentType"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/flurry/org/codehaus/jackson/map/type/HierarchicType;"
        }
    .end annotation

    .prologue
    .line 1069
    .local p2, "target":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/type/HierarchicType;

    invoke-direct {v0, p1}, Lcom/flurry/org/codehaus/jackson/map/type/HierarchicType;-><init>(Ljava/lang/reflect/Type;)V

    .line 1070
    .local v0, "current":Lcom/flurry/org/codehaus/jackson/map/type/HierarchicType;
    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/map/type/HierarchicType;->getRawClass()Ljava/lang/Class;

    move-result-object v2

    .line 1071
    .local v2, "raw":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-ne v2, p2, :cond_0

    .line 1084
    .end local v0    # "current":Lcom/flurry/org/codehaus/jackson/map/type/HierarchicType;
    :goto_0
    return-object v0

    .line 1075
    .restart local v0    # "current":Lcom/flurry/org/codehaus/jackson/map/type/HierarchicType;
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 1076
    .local v1, "parent":Ljava/lang/reflect/Type;
    if-eqz v1, :cond_1

    .line 1077
    invoke-virtual {p0, v1, p2}, Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;->_findSuperClassChain(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/flurry/org/codehaus/jackson/map/type/HierarchicType;

    move-result-object v3

    .line 1078
    .local v3, "sup":Lcom/flurry/org/codehaus/jackson/map/type/HierarchicType;
    if-eqz v3, :cond_1

    .line 1079
    invoke-virtual {v3, v0}, Lcom/flurry/org/codehaus/jackson/map/type/HierarchicType;->setSubType(Lcom/flurry/org/codehaus/jackson/map/type/HierarchicType;)V

    .line 1080
    invoke-virtual {v0, v3}, Lcom/flurry/org/codehaus/jackson/map/type/HierarchicType;->setSuperType(Lcom/flurry/org/codehaus/jackson/map/type/HierarchicType;)V

    goto :goto_0

    .line 1084
    .end local v3    # "sup":Lcom/flurry/org/codehaus/jackson/map/type/HierarchicType;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected _findSuperInterfaceChain(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/flurry/org/codehaus/jackson/map/type/HierarchicType;
    .locals 3
    .param p1, "currentType"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/flurry/org/codehaus/jackson/map/type/HierarchicType;"
        }
    .end annotation

    .prologue
    .line 1089
    .local p2, "target":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/type/HierarchicType;

    invoke-direct {v0, p1}, Lcom/flurry/org/codehaus/jackson/map/type/HierarchicType;-><init>(Ljava/lang/reflect/Type;)V

    .line 1090
    .local v0, "current":Lcom/flurry/org/codehaus/jackson/map/type/HierarchicType;
    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/map/type/HierarchicType;->getRawClass()Ljava/lang/Class;

    move-result-object v1

    .line 1091
    .local v1, "raw":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-ne v1, p2, :cond_0

    .line 1092
    new-instance v2, Lcom/flurry/org/codehaus/jackson/map/type/HierarchicType;

    invoke-direct {v2, p1}, Lcom/flurry/org/codehaus/jackson/map/type/HierarchicType;-><init>(Ljava/lang/reflect/Type;)V

    .line 1108
    :goto_0
    return-object v2

    .line 1098
    :cond_0
    const-class v2, Ljava/util/HashMap;

    if-ne v1, v2, :cond_1

    .line 1099
    const-class v2, Ljava/util/Map;

    if-ne p2, v2, :cond_1

    .line 1100
    invoke-virtual {p0, v0}, Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;->_hashMapSuperInterfaceChain(Lcom/flurry/org/codehaus/jackson/map/type/HierarchicType;)Lcom/flurry/org/codehaus/jackson/map/type/HierarchicType;

    move-result-object v2

    goto :goto_0

    .line 1103
    :cond_1
    const-class v2, Ljava/util/ArrayList;

    if-ne v1, v2, :cond_2

    .line 1104
    const-class v2, Ljava/util/List;

    if-ne p2, v2, :cond_2

    .line 1105
    invoke-virtual {p0, v0}, Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;->_arrayListSuperInterfaceChain(Lcom/flurry/org/codehaus/jackson/map/type/HierarchicType;)Lcom/flurry/org/codehaus/jackson/map/type/HierarchicType;

    move-result-object v2

    goto :goto_0

    .line 1108
    :cond_2
    invoke-virtual {p0, v0, p2}, Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;->_doFindSuperInterfaceChain(Lcom/flurry/org/codehaus/jackson/map/type/HierarchicType;Ljava/lang/Class;)Lcom/flurry/org/codehaus/jackson/map/type/HierarchicType;

    move-result-object v2

    goto :goto_0
.end method

.method protected _findSuperTypeChain(Ljava/lang/Class;Ljava/lang/Class;)Lcom/flurry/org/codehaus/jackson/map/type/HierarchicType;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/flurry/org/codehaus/jackson/map/type/HierarchicType;"
        }
    .end annotation

    .prologue
    .line 1061
    .local p1, "subtype":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "supertype":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p2}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1062
    invoke-virtual {p0, p1, p2}, Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;->_findSuperInterfaceChain(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/flurry/org/codehaus/jackson/map/type/HierarchicType;

    move-result-object v0

    .line 1064
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;->_findSuperClassChain(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/flurry/org/codehaus/jackson/map/type/HierarchicType;

    move-result-object v0

    goto :goto_0
.end method

.method protected _fromArrayType(Ljava/lang/reflect/GenericArrayType;Lcom/flurry/org/codehaus/jackson/map/type/TypeBindings;)Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .locals 3
    .param p1, "type"    # Ljava/lang/reflect/GenericArrayType;
    .param p2, "context"    # Lcom/flurry/org/codehaus/jackson/map/type/TypeBindings;

    .prologue
    const/4 v2, 0x0

    .line 935
    invoke-interface {p1}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;->_constructType(Ljava/lang/reflect/Type;Lcom/flurry/org/codehaus/jackson/map/type/TypeBindings;)Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v0

    .line 936
    .local v0, "compType":Lcom/flurry/org/codehaus/jackson/type/JavaType;
    invoke-static {v0, v2, v2}, Lcom/flurry/org/codehaus/jackson/map/type/ArrayType;->construct(Lcom/flurry/org/codehaus/jackson/type/JavaType;Ljava/lang/Object;Ljava/lang/Object;)Lcom/flurry/org/codehaus/jackson/map/type/ArrayType;

    move-result-object v1

    return-object v1
.end method

.method protected _fromClass(Ljava/lang/Class;Lcom/flurry/org/codehaus/jackson/map/type/TypeBindings;)Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .locals 2
    .param p2, "context"    # Lcom/flurry/org/codehaus/jackson/map/type/TypeBindings;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/flurry/org/codehaus/jackson/map/type/TypeBindings;",
            ")",
            "Lcom/flurry/org/codehaus/jackson/type/JavaType;"
        }
    .end annotation

    .prologue
    .local p1, "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .line 821
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 822
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;->_constructType(Ljava/lang/reflect/Type;Lcom/flurry/org/codehaus/jackson/map/type/TypeBindings;)Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v0

    invoke-static {v0, v1, v1}, Lcom/flurry/org/codehaus/jackson/map/type/ArrayType;->construct(Lcom/flurry/org/codehaus/jackson/type/JavaType;Ljava/lang/Object;Ljava/lang/Object;)Lcom/flurry/org/codehaus/jackson/map/type/ArrayType;

    move-result-object v0

    .line 840
    :goto_0
    return-object v0

    .line 827
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->isEnum()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 828
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/type/SimpleType;

    invoke-direct {v0, p1}, Lcom/flurry/org/codehaus/jackson/map/type/SimpleType;-><init>(Ljava/lang/Class;)V

    goto :goto_0

    .line 834
    :cond_1
    const-class v0, Ljava/util/Map;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 835
    invoke-direct {p0, p1}, Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;->_mapType(Ljava/lang/Class;)Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v0

    goto :goto_0

    .line 837
    :cond_2
    const-class v0, Ljava/util/Collection;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 838
    invoke-direct {p0, p1}, Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;->_collectionType(Ljava/lang/Class;)Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v0

    goto :goto_0

    .line 840
    :cond_3
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/type/SimpleType;

    invoke-direct {v0, p1}, Lcom/flurry/org/codehaus/jackson/map/type/SimpleType;-><init>(Ljava/lang/Class;)V

    goto :goto_0
.end method

.method protected _fromParamType(Ljava/lang/reflect/ParameterizedType;Lcom/flurry/org/codehaus/jackson/map/type/TypeBindings;)Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .locals 12
    .param p1, "type"    # Ljava/lang/reflect/ParameterizedType;
    .param p2, "context"    # Lcom/flurry/org/codehaus/jackson/map/type/TypeBindings;

    .prologue
    const/4 v11, 0x1

    const/4 v8, 0x0

    .line 894
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v6

    check-cast v6, Ljava/lang/Class;

    .line 895
    .local v6, "rawType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    .line 896
    .local v0, "args":[Ljava/lang/reflect/Type;
    if-nez v0, :cond_1

    move v4, v8

    .line 900
    .local v4, "paramCount":I
    :goto_0
    if-nez v4, :cond_2

    .line 901
    sget-object v5, Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;->NO_TYPES:[Lcom/flurry/org/codehaus/jackson/type/JavaType;

    .line 910
    .local v5, "pt":[Lcom/flurry/org/codehaus/jackson/type/JavaType;
    :cond_0
    const-class v9, Ljava/util/Map;

    invoke-virtual {v9, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 911
    invoke-virtual {p0, v6, v5}, Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;->constructSimpleType(Ljava/lang/Class;[Lcom/flurry/org/codehaus/jackson/type/JavaType;)Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v7

    .line 912
    .local v7, "subtype":Lcom/flurry/org/codehaus/jackson/type/JavaType;
    const-class v9, Ljava/util/Map;

    invoke-virtual {p0, v7, v9}, Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;->findTypeParameters(Lcom/flurry/org/codehaus/jackson/type/JavaType;Ljava/lang/Class;)[Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v3

    .line 913
    .local v3, "mapParams":[Lcom/flurry/org/codehaus/jackson/type/JavaType;
    array-length v9, v3

    const/4 v10, 0x2

    if-eq v9, v10, :cond_3

    .line 914
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Could not find 2 type parameters for Map class "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " (found "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    array-length v10, v3

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 896
    .end local v3    # "mapParams":[Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .end local v4    # "paramCount":I
    .end local v5    # "pt":[Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .end local v7    # "subtype":Lcom/flurry/org/codehaus/jackson/type/JavaType;
    :cond_1
    array-length v4, v0

    goto :goto_0

    .line 903
    .restart local v4    # "paramCount":I
    :cond_2
    new-array v5, v4, [Lcom/flurry/org/codehaus/jackson/type/JavaType;

    .line 904
    .restart local v5    # "pt":[Lcom/flurry/org/codehaus/jackson/type/JavaType;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v4, :cond_0

    .line 905
    aget-object v9, v0, v2

    invoke-virtual {p0, v9, p2}, Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;->_constructType(Ljava/lang/reflect/Type;Lcom/flurry/org/codehaus/jackson/map/type/TypeBindings;)Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v9

    aput-object v9, v5, v2

    .line 904
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 916
    .end local v2    # "i":I
    .restart local v3    # "mapParams":[Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .restart local v7    # "subtype":Lcom/flurry/org/codehaus/jackson/type/JavaType;
    :cond_3
    aget-object v8, v3, v8

    aget-object v9, v3, v11

    invoke-static {v6, v8, v9}, Lcom/flurry/org/codehaus/jackson/map/type/MapType;->construct(Ljava/lang/Class;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/type/JavaType;)Lcom/flurry/org/codehaus/jackson/map/type/MapType;

    move-result-object v8

    .line 929
    .end local v3    # "mapParams":[Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .end local v7    # "subtype":Lcom/flurry/org/codehaus/jackson/type/JavaType;
    :goto_2
    return-object v8

    .line 918
    :cond_4
    const-class v9, Ljava/util/Collection;

    invoke-virtual {v9, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 919
    invoke-virtual {p0, v6, v5}, Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;->constructSimpleType(Ljava/lang/Class;[Lcom/flurry/org/codehaus/jackson/type/JavaType;)Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v7

    .line 920
    .restart local v7    # "subtype":Lcom/flurry/org/codehaus/jackson/type/JavaType;
    const-class v9, Ljava/util/Collection;

    invoke-virtual {p0, v7, v9}, Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;->findTypeParameters(Lcom/flurry/org/codehaus/jackson/type/JavaType;Ljava/lang/Class;)[Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v1

    .line 921
    .local v1, "collectionParams":[Lcom/flurry/org/codehaus/jackson/type/JavaType;
    array-length v9, v1

    if-eq v9, v11, :cond_5

    .line 922
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Could not find 1 type parameter for Collection class "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " (found "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    array-length v10, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 924
    :cond_5
    aget-object v8, v1, v8

    invoke-static {v6, v8}, Lcom/flurry/org/codehaus/jackson/map/type/CollectionType;->construct(Ljava/lang/Class;Lcom/flurry/org/codehaus/jackson/type/JavaType;)Lcom/flurry/org/codehaus/jackson/map/type/CollectionType;

    move-result-object v8

    goto :goto_2

    .line 926
    .end local v1    # "collectionParams":[Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .end local v7    # "subtype":Lcom/flurry/org/codehaus/jackson/type/JavaType;
    :cond_6
    if-nez v4, :cond_7

    .line 927
    new-instance v8, Lcom/flurry/org/codehaus/jackson/map/type/SimpleType;

    invoke-direct {v8, v6}, Lcom/flurry/org/codehaus/jackson/map/type/SimpleType;-><init>(Ljava/lang/Class;)V

    goto :goto_2

    .line 929
    :cond_7
    invoke-virtual {p0, v6, v5}, Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;->constructSimpleType(Ljava/lang/Class;[Lcom/flurry/org/codehaus/jackson/type/JavaType;)Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v8

    goto :goto_2
.end method

.method protected _fromParameterizedClass(Ljava/lang/Class;Ljava/util/List;)Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/org/codehaus/jackson/type/JavaType;",
            ">;)",
            "Lcom/flurry/org/codehaus/jackson/type/JavaType;"
        }
    .end annotation

    .prologue
    .local p1, "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "paramTypes":Ljava/util/List;, "Ljava/util/List<Lcom/flurry/org/codehaus/jackson/type/JavaType;>;"
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 849
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 850
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0, v3, v4}, Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;->_constructType(Ljava/lang/reflect/Type;Lcom/flurry/org/codehaus/jackson/map/type/TypeBindings;)Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v3

    invoke-static {v3, v4, v4}, Lcom/flurry/org/codehaus/jackson/map/type/ArrayType;->construct(Lcom/flurry/org/codehaus/jackson/type/JavaType;Ljava/lang/Object;Ljava/lang/Object;)Lcom/flurry/org/codehaus/jackson/map/type/ArrayType;

    move-result-object v3

    .line 876
    :goto_0
    return-object v3

    .line 852
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->isEnum()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 853
    new-instance v3, Lcom/flurry/org/codehaus/jackson/map/type/SimpleType;

    invoke-direct {v3, p1}, Lcom/flurry/org/codehaus/jackson/map/type/SimpleType;-><init>(Ljava/lang/Class;)V

    goto :goto_0

    .line 855
    :cond_1
    const-class v3, Ljava/util/Map;

    invoke-virtual {v3, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 858
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 859
    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flurry/org/codehaus/jackson/type/JavaType;

    .line 860
    .local v1, "keyType":Lcom/flurry/org/codehaus/jackson/type/JavaType;
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x2

    if-lt v3, v4, :cond_2

    invoke-interface {p2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-object v0, v3

    .line 862
    .local v0, "contentType":Lcom/flurry/org/codehaus/jackson/type/JavaType;
    :goto_1
    invoke-static {p1, v1, v0}, Lcom/flurry/org/codehaus/jackson/map/type/MapType;->construct(Ljava/lang/Class;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/type/JavaType;)Lcom/flurry/org/codehaus/jackson/map/type/MapType;

    move-result-object v3

    goto :goto_0

    .line 860
    .end local v0    # "contentType":Lcom/flurry/org/codehaus/jackson/type/JavaType;
    :cond_2
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;->_unknownType()Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v0

    goto :goto_1

    .line 864
    .end local v1    # "keyType":Lcom/flurry/org/codehaus/jackson/type/JavaType;
    :cond_3
    invoke-direct {p0, p1}, Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;->_mapType(Ljava/lang/Class;)Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v3

    goto :goto_0

    .line 866
    :cond_4
    const-class v3, Ljava/util/Collection;

    invoke-virtual {v3, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 867
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-lt v3, v6, :cond_5

    .line 868
    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/flurry/org/codehaus/jackson/type/JavaType;

    invoke-static {p1, v3}, Lcom/flurry/org/codehaus/jackson/map/type/CollectionType;->construct(Ljava/lang/Class;Lcom/flurry/org/codehaus/jackson/type/JavaType;)Lcom/flurry/org/codehaus/jackson/map/type/CollectionType;

    move-result-object v3

    goto :goto_0

    .line 870
    :cond_5
    invoke-direct {p0, p1}, Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;->_collectionType(Ljava/lang/Class;)Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v3

    goto :goto_0

    .line 872
    :cond_6
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_7

    .line 873
    new-instance v3, Lcom/flurry/org/codehaus/jackson/map/type/SimpleType;

    invoke-direct {v3, p1}, Lcom/flurry/org/codehaus/jackson/map/type/SimpleType;-><init>(Ljava/lang/Class;)V

    goto :goto_0

    .line 875
    :cond_7
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Lcom/flurry/org/codehaus/jackson/type/JavaType;

    invoke-interface {p2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/flurry/org/codehaus/jackson/type/JavaType;

    .line 876
    .local v2, "pt":[Lcom/flurry/org/codehaus/jackson/type/JavaType;
    invoke-virtual {p0, p1, v2}, Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;->constructSimpleType(Ljava/lang/Class;[Lcom/flurry/org/codehaus/jackson/type/JavaType;)Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v3

    goto :goto_0
.end method

.method protected _fromVariable(Ljava/lang/reflect/TypeVariable;Lcom/flurry/org/codehaus/jackson/map/type/TypeBindings;)Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .locals 4
    .param p2, "context"    # Lcom/flurry/org/codehaus/jackson/map/type/TypeBindings;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;",
            "Lcom/flurry/org/codehaus/jackson/map/type/TypeBindings;",
            ")",
            "Lcom/flurry/org/codehaus/jackson/type/JavaType;"
        }
    .end annotation

    .prologue
    .line 945
    .local p1, "type":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    if-nez p2, :cond_1

    .line 946
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;->_unknownType()Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v0

    .line 977
    :cond_0
    :goto_0
    return-object v0

    .line 950
    :cond_1
    invoke-interface {p1}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v2

    .line 951
    .local v2, "name":Ljava/lang/String;
    invoke-virtual {p2, v2}, Lcom/flurry/org/codehaus/jackson/map/type/TypeBindings;->findType(Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v0

    .line 952
    .local v0, "actualType":Lcom/flurry/org/codehaus/jackson/type/JavaType;
    if-nez v0, :cond_0

    .line 961
    invoke-interface {p1}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    move-result-object v1

    .line 976
    .local v1, "bounds":[Ljava/lang/reflect/Type;
    invoke-virtual {p2, v2}, Lcom/flurry/org/codehaus/jackson/map/type/TypeBindings;->_addPlaceholder(Ljava/lang/String;)V

    .line 977
    const/4 v3, 0x0

    aget-object v3, v1, v3

    invoke-virtual {p0, v3, p2}, Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;->_constructType(Ljava/lang/reflect/Type;Lcom/flurry/org/codehaus/jackson/map/type/TypeBindings;)Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v0

    goto :goto_0
.end method

.method protected _fromWildcard(Ljava/lang/reflect/WildcardType;Lcom/flurry/org/codehaus/jackson/map/type/TypeBindings;)Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .locals 2
    .param p1, "type"    # Ljava/lang/reflect/WildcardType;
    .param p2, "context"    # Lcom/flurry/org/codehaus/jackson/map/type/TypeBindings;

    .prologue
    .line 990
    invoke-interface {p1}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p0, v0, p2}, Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;->_constructType(Ljava/lang/reflect/Type;Lcom/flurry/org/codehaus/jackson/map/type/TypeBindings;)Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v0

    return-object v0
.end method

.method protected declared-synchronized _hashMapSuperInterfaceChain(Lcom/flurry/org/codehaus/jackson/map/type/HierarchicType;)Lcom/flurry/org/codehaus/jackson/map/type/HierarchicType;
    .locals 3
    .param p1, "current"    # Lcom/flurry/org/codehaus/jackson/map/type/HierarchicType;

    .prologue
    .line 1142
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;->_cachedHashMapType:Lcom/flurry/org/codehaus/jackson/map/type/HierarchicType;

    if-nez v2, :cond_0

    .line 1143
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/map/type/HierarchicType;->deepCloneWithoutSubtype()Lcom/flurry/org/codehaus/jackson/map/type/HierarchicType;

    move-result-object v0

    .line 1144
    .local v0, "base":Lcom/flurry/org/codehaus/jackson/map/type/HierarchicType;
    const-class v2, Ljava/util/Map;

    invoke-virtual {p0, v0, v2}, Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;->_doFindSuperInterfaceChain(Lcom/flurry/org/codehaus/jackson/map/type/HierarchicType;Ljava/lang/Class;)Lcom/flurry/org/codehaus/jackson/map/type/HierarchicType;

    .line 1145
    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/map/type/HierarchicType;->getSuperType()Lcom/flurry/org/codehaus/jackson/map/type/HierarchicType;

    move-result-object v2

    iput-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;->_cachedHashMapType:Lcom/flurry/org/codehaus/jackson/map/type/HierarchicType;

    .line 1147
    .end local v0    # "base":Lcom/flurry/org/codehaus/jackson/map/type/HierarchicType;
    :cond_0
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;->_cachedHashMapType:Lcom/flurry/org/codehaus/jackson/map/type/HierarchicType;

    invoke-virtual {v2}, Lcom/flurry/org/codehaus/jackson/map/type/HierarchicType;->deepCloneWithoutSubtype()Lcom/flurry/org/codehaus/jackson/map/type/HierarchicType;

    move-result-object v1

    .line 1148
    .local v1, "t":Lcom/flurry/org/codehaus/jackson/map/type/HierarchicType;
    invoke-virtual {p1, v1}, Lcom/flurry/org/codehaus/jackson/map/type/HierarchicType;->setSuperType(Lcom/flurry/org/codehaus/jackson/map/type/HierarchicType;)V

    .line 1149
    invoke-virtual {v1, p1}, Lcom/flurry/org/codehaus/jackson/map/type/HierarchicType;->setSubType(Lcom/flurry/org/codehaus/jackson/map/type/HierarchicType;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1150
    monitor-exit p0

    return-object p1

    .line 1142
    .end local v1    # "t":Lcom/flurry/org/codehaus/jackson/map/type/HierarchicType;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method protected _resolveVariableViaSubTypes(Lcom/flurry/org/codehaus/jackson/map/type/HierarchicType;Ljava/lang/String;Lcom/flurry/org/codehaus/jackson/map/type/TypeBindings;)Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .locals 7
    .param p1, "leafType"    # Lcom/flurry/org/codehaus/jackson/map/type/HierarchicType;
    .param p2, "variableName"    # Ljava/lang/String;
    .param p3, "bindings"    # Lcom/flurry/org/codehaus/jackson/map/type/TypeBindings;

    .prologue
    .line 1024
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/map/type/HierarchicType;->isGeneric()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1025
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/map/type/HierarchicType;->getRawClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v4

    .line 1026
    .local v4, "typeVariables":[Ljava/lang/reflect/TypeVariable;, "[Ljava/lang/reflect/TypeVariable<*>;"
    const/4 v0, 0x0

    .local v0, "i":I
    array-length v1, v4

    .local v1, "len":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 1027
    aget-object v2, v4, v0

    .line 1028
    .local v2, "tv":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    invoke-interface {v2}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1030
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/map/type/HierarchicType;->asGeneric()Ljava/lang/reflect/ParameterizedType;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v5

    aget-object v3, v5, v0

    .line 1031
    .local v3, "type":Ljava/lang/reflect/Type;
    instance-of v5, v3, Ljava/lang/reflect/TypeVariable;

    if-eqz v5, :cond_0

    .line 1032
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/map/type/HierarchicType;->getSubType()Lcom/flurry/org/codehaus/jackson/map/type/HierarchicType;

    move-result-object v5

    check-cast v3, Ljava/lang/reflect/TypeVariable;

    .end local v3    # "type":Ljava/lang/reflect/Type;
    invoke-interface {v3}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6, p3}, Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;->_resolveVariableViaSubTypes(Lcom/flurry/org/codehaus/jackson/map/type/HierarchicType;Ljava/lang/String;Lcom/flurry/org/codehaus/jackson/map/type/TypeBindings;)Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v5

    .line 1039
    .end local v0    # "i":I
    .end local v1    # "len":I
    .end local v2    # "tv":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    .end local v4    # "typeVariables":[Ljava/lang/reflect/TypeVariable;, "[Ljava/lang/reflect/TypeVariable<*>;"
    :goto_1
    return-object v5

    .line 1035
    .restart local v0    # "i":I
    .restart local v1    # "len":I
    .restart local v2    # "tv":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    .restart local v3    # "type":Ljava/lang/reflect/Type;
    .restart local v4    # "typeVariables":[Ljava/lang/reflect/TypeVariable;, "[Ljava/lang/reflect/TypeVariable<*>;"
    :cond_0
    invoke-virtual {p0, v3, p3}, Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;->_constructType(Ljava/lang/reflect/Type;Lcom/flurry/org/codehaus/jackson/map/type/TypeBindings;)Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v5

    goto :goto_1

    .line 1026
    .end local v3    # "type":Ljava/lang/reflect/Type;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1039
    .end local v0    # "i":I
    .end local v1    # "len":I
    .end local v2    # "tv":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    .end local v4    # "typeVariables":[Ljava/lang/reflect/TypeVariable;, "[Ljava/lang/reflect/TypeVariable<*>;"
    :cond_2
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;->_unknownType()Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v5

    goto :goto_1
.end method

.method protected _unknownType()Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .locals 2

    .prologue
    .line 1043
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/type/SimpleType;

    const-class v1, Ljava/lang/Object;

    invoke-direct {v0, v1}, Lcom/flurry/org/codehaus/jackson/map/type/SimpleType;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method public constructArrayType(Lcom/flurry/org/codehaus/jackson/type/JavaType;)Lcom/flurry/org/codehaus/jackson/map/type/ArrayType;
    .locals 1
    .param p1, "elementType"    # Lcom/flurry/org/codehaus/jackson/type/JavaType;

    .prologue
    const/4 v0, 0x0

    .line 536
    invoke-static {p1, v0, v0}, Lcom/flurry/org/codehaus/jackson/map/type/ArrayType;->construct(Lcom/flurry/org/codehaus/jackson/type/JavaType;Ljava/lang/Object;Ljava/lang/Object;)Lcom/flurry/org/codehaus/jackson/map/type/ArrayType;

    move-result-object v0

    return-object v0
.end method

.method public constructArrayType(Ljava/lang/Class;)Lcom/flurry/org/codehaus/jackson/map/type/ArrayType;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/flurry/org/codehaus/jackson/map/type/ArrayType;"
        }
    .end annotation

    .prologue
    .local p1, "elementType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .line 526
    invoke-virtual {p0, p1, v1}, Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;->_constructType(Ljava/lang/reflect/Type;Lcom/flurry/org/codehaus/jackson/map/type/TypeBindings;)Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v0

    invoke-static {v0, v1, v1}, Lcom/flurry/org/codehaus/jackson/map/type/ArrayType;->construct(Lcom/flurry/org/codehaus/jackson/type/JavaType;Ljava/lang/Object;Ljava/lang/Object;)Lcom/flurry/org/codehaus/jackson/map/type/ArrayType;

    move-result-object v0

    return-object v0
.end method

.method public constructCollectionLikeType(Ljava/lang/Class;Lcom/flurry/org/codehaus/jackson/type/JavaType;)Lcom/flurry/org/codehaus/jackson/map/type/CollectionLikeType;
    .locals 1
    .param p2, "elementType"    # Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/flurry/org/codehaus/jackson/type/JavaType;",
            ")",
            "Lcom/flurry/org/codehaus/jackson/map/type/CollectionLikeType;"
        }
    .end annotation

    .prologue
    .line 580
    .local p1, "collectionClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p1, p2}, Lcom/flurry/org/codehaus/jackson/map/type/CollectionLikeType;->construct(Ljava/lang/Class;Lcom/flurry/org/codehaus/jackson/type/JavaType;)Lcom/flurry/org/codehaus/jackson/map/type/CollectionLikeType;

    move-result-object v0

    return-object v0
.end method

.method public constructCollectionLikeType(Ljava/lang/Class;Ljava/lang/Class;)Lcom/flurry/org/codehaus/jackson/map/type/CollectionLikeType;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/flurry/org/codehaus/jackson/map/type/CollectionLikeType;"
        }
    .end annotation

    .prologue
    .line 568
    .local p1, "collectionClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "elementClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0, p2}, Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;->constructType(Ljava/lang/reflect/Type;)Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/flurry/org/codehaus/jackson/map/type/CollectionLikeType;->construct(Ljava/lang/Class;Lcom/flurry/org/codehaus/jackson/type/JavaType;)Lcom/flurry/org/codehaus/jackson/map/type/CollectionLikeType;

    move-result-object v0

    return-object v0
.end method

.method public constructCollectionType(Ljava/lang/Class;Lcom/flurry/org/codehaus/jackson/type/JavaType;)Lcom/flurry/org/codehaus/jackson/map/type/CollectionType;
    .locals 1
    .param p2, "elementType"    # Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/util/Collection;",
            ">;",
            "Lcom/flurry/org/codehaus/jackson/type/JavaType;",
            ")",
            "Lcom/flurry/org/codehaus/jackson/map/type/CollectionType;"
        }
    .end annotation

    .prologue
    .line 556
    .local p1, "collectionClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/util/Collection;>;"
    invoke-static {p1, p2}, Lcom/flurry/org/codehaus/jackson/map/type/CollectionType;->construct(Ljava/lang/Class;Lcom/flurry/org/codehaus/jackson/type/JavaType;)Lcom/flurry/org/codehaus/jackson/map/type/CollectionType;

    move-result-object v0

    return-object v0
.end method

.method public constructCollectionType(Ljava/lang/Class;Ljava/lang/Class;)Lcom/flurry/org/codehaus/jackson/map/type/CollectionType;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/util/Collection;",
            ">;",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/flurry/org/codehaus/jackson/map/type/CollectionType;"
        }
    .end annotation

    .prologue
    .line 546
    .local p1, "collectionClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/util/Collection;>;"
    .local p2, "elementClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0, p2}, Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;->constructType(Ljava/lang/reflect/Type;)Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/flurry/org/codehaus/jackson/map/type/CollectionType;->construct(Ljava/lang/Class;Lcom/flurry/org/codehaus/jackson/type/JavaType;)Lcom/flurry/org/codehaus/jackson/map/type/CollectionType;

    move-result-object v0

    return-object v0
.end method

.method public constructFromCanonical(Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .locals 1
    .param p1, "canonical"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 354
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;->_parser:Lcom/flurry/org/codehaus/jackson/map/type/TypeParser;

    invoke-virtual {v0, p1}, Lcom/flurry/org/codehaus/jackson/map/type/TypeParser;->parse(Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v0

    return-object v0
.end method

.method public constructMapLikeType(Ljava/lang/Class;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/type/JavaType;)Lcom/flurry/org/codehaus/jackson/map/type/MapLikeType;
    .locals 1
    .param p2, "keyType"    # Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .param p3, "valueType"    # Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/flurry/org/codehaus/jackson/type/JavaType;",
            "Lcom/flurry/org/codehaus/jackson/type/JavaType;",
            ")",
            "Lcom/flurry/org/codehaus/jackson/map/type/MapLikeType;"
        }
    .end annotation

    .prologue
    .line 616
    .local p1, "mapClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p1, p2, p3}, Lcom/flurry/org/codehaus/jackson/map/type/MapLikeType;->construct(Ljava/lang/Class;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/type/JavaType;)Lcom/flurry/org/codehaus/jackson/map/type/MapLikeType;

    move-result-object v0

    return-object v0
.end method

.method public constructMapLikeType(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Lcom/flurry/org/codehaus/jackson/map/type/MapLikeType;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/flurry/org/codehaus/jackson/map/type/MapLikeType;"
        }
    .end annotation

    .prologue
    .line 628
    .local p1, "mapClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "keyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p3, "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0, p2}, Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;->constructType(Ljava/lang/reflect/Type;)Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v0

    invoke-virtual {p0, p3}, Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;->constructType(Ljava/lang/reflect/Type;)Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/flurry/org/codehaus/jackson/map/type/MapType;->construct(Ljava/lang/Class;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/type/JavaType;)Lcom/flurry/org/codehaus/jackson/map/type/MapType;

    move-result-object v0

    return-object v0
.end method

.method public constructMapType(Ljava/lang/Class;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/type/JavaType;)Lcom/flurry/org/codehaus/jackson/map/type/MapType;
    .locals 1
    .param p2, "keyType"    # Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .param p3, "valueType"    # Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/util/Map;",
            ">;",
            "Lcom/flurry/org/codehaus/jackson/type/JavaType;",
            "Lcom/flurry/org/codehaus/jackson/type/JavaType;",
            ")",
            "Lcom/flurry/org/codehaus/jackson/map/type/MapType;"
        }
    .end annotation

    .prologue
    .line 592
    .local p1, "mapClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/util/Map;>;"
    invoke-static {p1, p2, p3}, Lcom/flurry/org/codehaus/jackson/map/type/MapType;->construct(Ljava/lang/Class;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/type/JavaType;)Lcom/flurry/org/codehaus/jackson/map/type/MapType;

    move-result-object v0

    return-object v0
.end method

.method public constructMapType(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Lcom/flurry/org/codehaus/jackson/map/type/MapType;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/util/Map;",
            ">;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/flurry/org/codehaus/jackson/map/type/MapType;"
        }
    .end annotation

    .prologue
    .line 604
    .local p1, "mapClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/util/Map;>;"
    .local p2, "keyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p3, "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0, p2}, Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;->constructType(Ljava/lang/reflect/Type;)Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v0

    invoke-virtual {p0, p3}, Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;->constructType(Ljava/lang/reflect/Type;)Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/flurry/org/codehaus/jackson/map/type/MapType;->construct(Ljava/lang/Class;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/type/JavaType;)Lcom/flurry/org/codehaus/jackson/map/type/MapType;

    move-result-object v0

    return-object v0
.end method

.method public varargs constructParametricType(Ljava/lang/Class;[Lcom/flurry/org/codehaus/jackson/type/JavaType;)Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .locals 5
    .param p2, "parameterTypes"    # [Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;[",
            "Lcom/flurry/org/codehaus/jackson/type/JavaType;",
            ")",
            "Lcom/flurry/org/codehaus/jackson/type/JavaType;"
        }
    .end annotation

    .prologue
    .local p1, "parametrized":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 709
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 711
    array-length v1, p2

    if-eq v1, v4, :cond_0

    .line 712
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Need exactly 1 parameter type for arrays ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 714
    :cond_0
    aget-object v1, p2, v3

    invoke-virtual {p0, v1}, Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;->constructArrayType(Lcom/flurry/org/codehaus/jackson/type/JavaType;)Lcom/flurry/org/codehaus/jackson/map/type/ArrayType;

    move-result-object v0

    .line 730
    .local v0, "resultType":Lcom/flurry/org/codehaus/jackson/type/JavaType;
    :goto_0
    return-object v0

    .line 716
    .end local v0    # "resultType":Lcom/flurry/org/codehaus/jackson/type/JavaType;
    :cond_1
    const-class v1, Ljava/util/Map;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 717
    array-length v1, p2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    .line 718
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Need exactly 2 parameter types for Map types ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 720
    :cond_2
    aget-object v1, p2, v3

    aget-object v2, p2, v4

    invoke-virtual {p0, p1, v1, v2}, Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;->constructMapType(Ljava/lang/Class;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/type/JavaType;)Lcom/flurry/org/codehaus/jackson/map/type/MapType;

    move-result-object v0

    .restart local v0    # "resultType":Lcom/flurry/org/codehaus/jackson/type/JavaType;
    goto :goto_0

    .line 722
    .end local v0    # "resultType":Lcom/flurry/org/codehaus/jackson/type/JavaType;
    :cond_3
    const-class v1, Ljava/util/Collection;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 723
    array-length v1, p2

    if-eq v1, v4, :cond_4

    .line 724
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Need exactly 1 parameter type for Collection types ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 726
    :cond_4
    aget-object v1, p2, v3

    invoke-virtual {p0, p1, v1}, Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;->constructCollectionType(Ljava/lang/Class;Lcom/flurry/org/codehaus/jackson/type/JavaType;)Lcom/flurry/org/codehaus/jackson/map/type/CollectionType;

    move-result-object v0

    .restart local v0    # "resultType":Lcom/flurry/org/codehaus/jackson/type/JavaType;
    goto :goto_0

    .line 728
    .end local v0    # "resultType":Lcom/flurry/org/codehaus/jackson/type/JavaType;
    :cond_5
    invoke-virtual {p0, p1, p2}, Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;->constructSimpleType(Ljava/lang/Class;[Lcom/flurry/org/codehaus/jackson/type/JavaType;)Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v0

    .restart local v0    # "resultType":Lcom/flurry/org/codehaus/jackson/type/JavaType;
    goto :goto_0
.end method

.method public varargs constructParametricType(Ljava/lang/Class;[Ljava/lang/Class;)Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/flurry/org/codehaus/jackson/type/JavaType;"
        }
    .end annotation

    .prologue
    .line 681
    .local p1, "parametrized":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "parameterClasses":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v1, p2

    .line 682
    .local v1, "len":I
    new-array v2, v1, [Lcom/flurry/org/codehaus/jackson/type/JavaType;

    .line 683
    .local v2, "pt":[Lcom/flurry/org/codehaus/jackson/type/JavaType;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 684
    aget-object v3, p2, v0

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;->_fromClass(Ljava/lang/Class;Lcom/flurry/org/codehaus/jackson/map/type/TypeBindings;)Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v3

    aput-object v3, v2, v0

    .line 683
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 686
    :cond_0
    invoke-virtual {p0, p1, v2}, Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;->constructParametricType(Ljava/lang/Class;[Lcom/flurry/org/codehaus/jackson/type/JavaType;)Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v3

    return-object v3
.end method

.method public constructRawCollectionLikeType(Ljava/lang/Class;)Lcom/flurry/org/codehaus/jackson/map/type/CollectionLikeType;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/flurry/org/codehaus/jackson/map/type/CollectionLikeType;"
        }
    .end annotation

    .prologue
    .line 771
    .local p1, "collectionClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {}, Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;->unknownType()Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/flurry/org/codehaus/jackson/map/type/CollectionLikeType;->construct(Ljava/lang/Class;Lcom/flurry/org/codehaus/jackson/type/JavaType;)Lcom/flurry/org/codehaus/jackson/map/type/CollectionLikeType;

    move-result-object v0

    return-object v0
.end method

.method public constructRawCollectionType(Ljava/lang/Class;)Lcom/flurry/org/codehaus/jackson/map/type/CollectionType;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/util/Collection;",
            ">;)",
            "Lcom/flurry/org/codehaus/jackson/map/type/CollectionType;"
        }
    .end annotation

    .prologue
    .line 754
    .local p1, "collectionClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/util/Collection;>;"
    invoke-static {}, Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;->unknownType()Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/flurry/org/codehaus/jackson/map/type/CollectionType;->construct(Ljava/lang/Class;Lcom/flurry/org/codehaus/jackson/type/JavaType;)Lcom/flurry/org/codehaus/jackson/map/type/CollectionType;

    move-result-object v0

    return-object v0
.end method

.method public constructRawMapLikeType(Ljava/lang/Class;)Lcom/flurry/org/codehaus/jackson/map/type/MapLikeType;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/flurry/org/codehaus/jackson/map/type/MapLikeType;"
        }
    .end annotation

    .prologue
    .line 805
    .local p1, "mapClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {}, Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;->unknownType()Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v0

    invoke-static {}, Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;->unknownType()Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/flurry/org/codehaus/jackson/map/type/MapLikeType;->construct(Ljava/lang/Class;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/type/JavaType;)Lcom/flurry/org/codehaus/jackson/map/type/MapLikeType;

    move-result-object v0

    return-object v0
.end method

.method public constructRawMapType(Ljava/lang/Class;)Lcom/flurry/org/codehaus/jackson/map/type/MapType;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/util/Map;",
            ">;)",
            "Lcom/flurry/org/codehaus/jackson/map/type/MapType;"
        }
    .end annotation

    .prologue
    .line 788
    .local p1, "mapClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/util/Map;>;"
    invoke-static {}, Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;->unknownType()Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v0

    invoke-static {}, Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;->unknownType()Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/flurry/org/codehaus/jackson/map/type/MapType;->construct(Ljava/lang/Class;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/type/JavaType;)Lcom/flurry/org/codehaus/jackson/map/type/MapType;

    move-result-object v0

    return-object v0
.end method

.method public constructSimpleType(Ljava/lang/Class;[Lcom/flurry/org/codehaus/jackson/type/JavaType;)Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .locals 9
    .param p2, "parameterTypes"    # [Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;[",
            "Lcom/flurry/org/codehaus/jackson/type/JavaType;",
            ")",
            "Lcom/flurry/org/codehaus/jackson/type/JavaType;"
        }
    .end annotation

    .prologue
    .local p1, "rawType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v4, 0x0

    .line 639
    invoke-virtual {p1}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v8

    .line 640
    .local v8, "typeVars":[Ljava/lang/reflect/TypeVariable;, "[Ljava/lang/reflect/TypeVariable<*>;"
    array-length v1, v8

    array-length v3, p2

    if-eq v1, v3, :cond_0

    .line 641
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Parameter type mismatch for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": expected "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, v8

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " parameters, was given "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, p2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 644
    :cond_0
    array-length v1, v8

    new-array v2, v1, [Ljava/lang/String;

    .line 645
    .local v2, "names":[Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, "i":I
    array-length v7, v8

    .local v7, "len":I
    :goto_0
    if-ge v6, v7, :cond_1

    .line 646
    aget-object v1, v8, v6

    invoke-interface {v1}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v6

    .line 645
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 648
    :cond_1
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/type/SimpleType;

    move-object v1, p1

    move-object v3, p2

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/flurry/org/codehaus/jackson/map/type/SimpleType;-><init>(Ljava/lang/Class;[Ljava/lang/String;[Lcom/flurry/org/codehaus/jackson/type/JavaType;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 649
    .local v0, "resultType":Lcom/flurry/org/codehaus/jackson/type/JavaType;
    return-object v0
.end method

.method public constructSpecializedType(Lcom/flurry/org/codehaus/jackson/type/JavaType;Ljava/lang/Class;)Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .locals 5
    .param p1, "baseType"    # Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/type/JavaType;",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/flurry/org/codehaus/jackson/type/JavaType;"
        }
    .end annotation

    .prologue
    .line 312
    .local p2, "subclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    instance-of v2, p1, Lcom/flurry/org/codehaus/jackson/map/type/SimpleType;

    if-eqz v2, :cond_4

    .line 314
    invoke-virtual {p2}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-nez v2, :cond_0

    const-class v2, Ljava/util/Map;

    invoke-virtual {v2, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_0

    const-class v2, Ljava/util/Collection;

    invoke-virtual {v2, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 318
    :cond_0
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 319
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Class "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " not subtype of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 322
    :cond_1
    new-instance v2, Lcom/flurry/org/codehaus/jackson/map/type/TypeBindings;

    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/flurry/org/codehaus/jackson/map/type/TypeBindings;-><init>(Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;Ljava/lang/Class;)V

    invoke-virtual {p0, p2, v2}, Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;->_fromClass(Ljava/lang/Class;Lcom/flurry/org/codehaus/jackson/map/type/TypeBindings;)Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v1

    .line 324
    .local v1, "subtype":Lcom/flurry/org/codehaus/jackson/type/JavaType;
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->getValueHandler()Ljava/lang/Object;

    move-result-object v0

    .line 325
    .local v0, "h":Ljava/lang/Object;
    if-eqz v0, :cond_2

    .line 327
    invoke-virtual {v1, v0}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->withValueHandler(Ljava/lang/Object;)Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v1

    .line 329
    :cond_2
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->getTypeHandler()Ljava/lang/Object;

    move-result-object v0

    .line 330
    if-eqz v0, :cond_3

    .line 331
    invoke-virtual {v1, v0}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->withTypeHandler(Ljava/lang/Object;)Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v1

    .line 337
    .end local v0    # "h":Ljava/lang/Object;
    .end local v1    # "subtype":Lcom/flurry/org/codehaus/jackson/type/JavaType;
    :cond_3
    :goto_0
    return-object v1

    :cond_4
    invoke-virtual {p1, p2}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->narrowBy(Ljava/lang/Class;)Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v1

    goto :goto_0
.end method

.method public constructType(Lcom/flurry/org/codehaus/jackson/type/TypeReference;)Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/type/TypeReference",
            "<*>;)",
            "Lcom/flurry/org/codehaus/jackson/type/JavaType;"
        }
    .end annotation

    .prologue
    .line 452
    .local p1, "typeRef":Lcom/flurry/org/codehaus/jackson/type/TypeReference;, "Lcom/flurry/org/codehaus/jackson/type/TypeReference<*>;"
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/type/TypeReference;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;->_constructType(Ljava/lang/reflect/Type;Lcom/flurry/org/codehaus/jackson/map/type/TypeBindings;)Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v0

    return-object v0
.end method

.method public constructType(Ljava/lang/reflect/Type;)Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .locals 1
    .param p1, "type"    # Ljava/lang/reflect/Type;

    .prologue
    .line 444
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;->_constructType(Ljava/lang/reflect/Type;Lcom/flurry/org/codehaus/jackson/map/type/TypeBindings;)Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v0

    return-object v0
.end method

.method public constructType(Ljava/lang/reflect/Type;Lcom/flurry/org/codehaus/jackson/map/type/TypeBindings;)Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .locals 1
    .param p1, "type"    # Ljava/lang/reflect/Type;
    .param p2, "bindings"    # Lcom/flurry/org/codehaus/jackson/map/type/TypeBindings;

    .prologue
    .line 448
    invoke-virtual {p0, p1, p2}, Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;->_constructType(Ljava/lang/reflect/Type;Lcom/flurry/org/codehaus/jackson/map/type/TypeBindings;)Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v0

    return-object v0
.end method

.method public constructType(Ljava/lang/reflect/Type;Lcom/flurry/org/codehaus/jackson/type/JavaType;)Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .locals 2
    .param p1, "type"    # Ljava/lang/reflect/Type;
    .param p2, "context"    # Lcom/flurry/org/codehaus/jackson/type/JavaType;

    .prologue
    .line 461
    if-nez p2, :cond_0

    const/4 v0, 0x0

    .line 462
    .local v0, "b":Lcom/flurry/org/codehaus/jackson/map/type/TypeBindings;
    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;->_constructType(Ljava/lang/reflect/Type;Lcom/flurry/org/codehaus/jackson/map/type/TypeBindings;)Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v1

    return-object v1

    .line 461
    .end local v0    # "b":Lcom/flurry/org/codehaus/jackson/map/type/TypeBindings;
    :cond_0
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/type/TypeBindings;

    invoke-direct {v0, p0, p2}, Lcom/flurry/org/codehaus/jackson/map/type/TypeBindings;-><init>(Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;Lcom/flurry/org/codehaus/jackson/type/JavaType;)V

    goto :goto_0
.end method

.method public constructType(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .locals 2
    .param p1, "type"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/flurry/org/codehaus/jackson/type/JavaType;"
        }
    .end annotation

    .prologue
    .line 456
    .local p2, "context":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez p2, :cond_0

    const/4 v0, 0x0

    .line 457
    .local v0, "b":Lcom/flurry/org/codehaus/jackson/map/type/TypeBindings;
    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;->_constructType(Ljava/lang/reflect/Type;Lcom/flurry/org/codehaus/jackson/map/type/TypeBindings;)Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v1

    return-object v1

    .line 456
    .end local v0    # "b":Lcom/flurry/org/codehaus/jackson/map/type/TypeBindings;
    :cond_0
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/type/TypeBindings;

    invoke-direct {v0, p0, p2}, Lcom/flurry/org/codehaus/jackson/map/type/TypeBindings;-><init>(Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;Ljava/lang/Class;)V

    goto :goto_0
.end method

.method public findTypeParameters(Lcom/flurry/org/codehaus/jackson/type/JavaType;Ljava/lang/Class;)[Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .locals 5
    .param p1, "type"    # Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/type/JavaType;",
            "Ljava/lang/Class",
            "<*>;)[",
            "Lcom/flurry/org/codehaus/jackson/type/JavaType;"
        }
    .end annotation

    .prologue
    .line 378
    .local p2, "expType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v2

    .line 379
    .local v2, "raw":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-ne v2, p2, :cond_2

    .line 381
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->containedTypeCount()I

    move-result v0

    .line 382
    .local v0, "count":I
    if-nez v0, :cond_1

    const/4 v3, 0x0

    .line 395
    .end local v0    # "count":I
    :cond_0
    :goto_0
    return-object v3

    .line 383
    .restart local v0    # "count":I
    :cond_1
    new-array v3, v0, [Lcom/flurry/org/codehaus/jackson/type/JavaType;

    .line 384
    .local v3, "result":[Lcom/flurry/org/codehaus/jackson/type/JavaType;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_0

    .line 385
    invoke-virtual {p1, v1}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->containedType(I)Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v4

    aput-object v4, v3, v1

    .line 384
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 395
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v3    # "result":[Lcom/flurry/org/codehaus/jackson/type/JavaType;
    :cond_2
    new-instance v4, Lcom/flurry/org/codehaus/jackson/map/type/TypeBindings;

    invoke-direct {v4, p0, p1}, Lcom/flurry/org/codehaus/jackson/map/type/TypeBindings;-><init>(Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;Lcom/flurry/org/codehaus/jackson/type/JavaType;)V

    invoke-virtual {p0, v2, p2, v4}, Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;->findTypeParameters(Ljava/lang/Class;Ljava/lang/Class;Lcom/flurry/org/codehaus/jackson/map/type/TypeBindings;)[Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v3

    goto :goto_0
.end method

.method public findTypeParameters(Ljava/lang/Class;Ljava/lang/Class;)[Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)[",
            "Lcom/flurry/org/codehaus/jackson/type/JavaType;"
        }
    .end annotation

    .prologue
    .line 399
    .local p1, "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "expType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/type/TypeBindings;

    invoke-direct {v0, p0, p1}, Lcom/flurry/org/codehaus/jackson/map/type/TypeBindings;-><init>(Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;Ljava/lang/Class;)V

    invoke-virtual {p0, p1, p2, v0}, Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;->findTypeParameters(Ljava/lang/Class;Ljava/lang/Class;Lcom/flurry/org/codehaus/jackson/map/type/TypeBindings;)[Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v0

    return-object v0
.end method

.method public findTypeParameters(Ljava/lang/Class;Ljava/lang/Class;Lcom/flurry/org/codehaus/jackson/map/type/TypeBindings;)[Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .locals 15
    .param p3, "bindings"    # Lcom/flurry/org/codehaus/jackson/map/type/TypeBindings;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/flurry/org/codehaus/jackson/map/type/TypeBindings;",
            ")[",
            "Lcom/flurry/org/codehaus/jackson/type/JavaType;"
        }
    .end annotation

    .prologue
    .line 405
    .local p1, "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "expType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual/range {p0 .. p2}, Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;->_findSuperTypeChain(Ljava/lang/Class;Ljava/lang/Class;)Lcom/flurry/org/codehaus/jackson/map/type/HierarchicType;

    move-result-object v8

    .line 407
    .local v8, "subType":Lcom/flurry/org/codehaus/jackson/map/type/HierarchicType;
    if-nez v8, :cond_0

    .line 408
    new-instance v12, Ljava/lang/IllegalArgumentException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Class "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " is not a subtype of "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 411
    :cond_0
    move-object v9, v8

    .line 412
    .local v9, "superType":Lcom/flurry/org/codehaus/jackson/map/type/HierarchicType;
    :goto_0
    invoke-virtual {v9}, Lcom/flurry/org/codehaus/jackson/map/type/HierarchicType;->getSuperType()Lcom/flurry/org/codehaus/jackson/map/type/HierarchicType;

    move-result-object v12

    if-eqz v12, :cond_2

    .line 413
    invoke-virtual {v9}, Lcom/flurry/org/codehaus/jackson/map/type/HierarchicType;->getSuperType()Lcom/flurry/org/codehaus/jackson/map/type/HierarchicType;

    move-result-object v9

    .line 414
    invoke-virtual {v9}, Lcom/flurry/org/codehaus/jackson/map/type/HierarchicType;->getRawClass()Ljava/lang/Class;

    move-result-object v7

    .line 415
    .local v7, "raw":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v5, Lcom/flurry/org/codehaus/jackson/map/type/TypeBindings;

    invoke-direct {v5, p0, v7}, Lcom/flurry/org/codehaus/jackson/map/type/TypeBindings;-><init>(Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;Ljava/lang/Class;)V

    .line 416
    .local v5, "newBindings":Lcom/flurry/org/codehaus/jackson/map/type/TypeBindings;
    invoke-virtual {v9}, Lcom/flurry/org/codehaus/jackson/map/type/HierarchicType;->isGeneric()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 417
    invoke-virtual {v9}, Lcom/flurry/org/codehaus/jackson/map/type/HierarchicType;->asGeneric()Ljava/lang/reflect/ParameterizedType;

    move-result-object v6

    .line 418
    .local v6, "pt":Ljava/lang/reflect/ParameterizedType;
    invoke-interface {v6}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    .line 419
    .local v1, "actualTypes":[Ljava/lang/reflect/Type;
    invoke-virtual {v7}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v11

    .line 420
    .local v11, "vars":[Ljava/lang/reflect/TypeVariable;, "[Ljava/lang/reflect/TypeVariable<*>;"
    array-length v3, v1

    .line 421
    .local v3, "len":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v3, :cond_1

    .line 422
    aget-object v12, v11, v2

    invoke-interface {v12}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v4

    .line 423
    .local v4, "name":Ljava/lang/String;
    sget-object v12, Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;->instance:Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;

    aget-object v13, v1, v2

    move-object/from16 v0, p3

    invoke-virtual {v12, v13, v0}, Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;->_constructType(Ljava/lang/reflect/Type;Lcom/flurry/org/codehaus/jackson/map/type/TypeBindings;)Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v10

    .line 424
    .local v10, "type":Lcom/flurry/org/codehaus/jackson/type/JavaType;
    invoke-virtual {v5, v4, v10}, Lcom/flurry/org/codehaus/jackson/map/type/TypeBindings;->addBinding(Ljava/lang/String;Lcom/flurry/org/codehaus/jackson/type/JavaType;)V

    .line 421
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 427
    .end local v1    # "actualTypes":[Ljava/lang/reflect/Type;
    .end local v2    # "i":I
    .end local v3    # "len":I
    .end local v4    # "name":Ljava/lang/String;
    .end local v6    # "pt":Ljava/lang/reflect/ParameterizedType;
    .end local v10    # "type":Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .end local v11    # "vars":[Ljava/lang/reflect/TypeVariable;, "[Ljava/lang/reflect/TypeVariable<*>;"
    :cond_1
    move-object/from16 p3, v5

    .line 428
    goto :goto_0

    .line 431
    .end local v5    # "newBindings":Lcom/flurry/org/codehaus/jackson/map/type/TypeBindings;
    .end local v7    # "raw":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    invoke-virtual {v9}, Lcom/flurry/org/codehaus/jackson/map/type/HierarchicType;->isGeneric()Z

    move-result v12

    if-nez v12, :cond_3

    .line 432
    const/4 v12, 0x0

    .line 434
    :goto_2
    return-object v12

    :cond_3
    invoke-virtual/range {p3 .. p3}, Lcom/flurry/org/codehaus/jackson/map/type/TypeBindings;->typesAsArray()[Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v12

    goto :goto_2
.end method

.method public uncheckedSimpleType(Ljava/lang/Class;)Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/flurry/org/codehaus/jackson/type/JavaType;"
        }
    .end annotation

    .prologue
    .line 662
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/type/SimpleType;

    invoke-direct {v0, p1}, Lcom/flurry/org/codehaus/jackson/map/type/SimpleType;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method public withModifier(Lcom/flurry/org/codehaus/jackson/map/type/TypeModifier;)Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;
    .locals 4
    .param p1, "mod"    # Lcom/flurry/org/codehaus/jackson/map/type/TypeModifier;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;->_modifiers:[Lcom/flurry/org/codehaus/jackson/map/type/TypeModifier;

    if-nez v0, :cond_0

    .line 106
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;

    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;->_parser:Lcom/flurry/org/codehaus/jackson/map/type/TypeParser;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/flurry/org/codehaus/jackson/map/type/TypeModifier;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {v0, v1, v2}, Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;-><init>(Lcom/flurry/org/codehaus/jackson/map/type/TypeParser;[Lcom/flurry/org/codehaus/jackson/map/type/TypeModifier;)V

    .line 108
    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;

    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;->_parser:Lcom/flurry/org/codehaus/jackson/map/type/TypeParser;

    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;->_modifiers:[Lcom/flurry/org/codehaus/jackson/map/type/TypeModifier;

    invoke-static {v0, p1}, Lcom/flurry/org/codehaus/jackson/map/util/ArrayBuilders;->insertInListNoDup([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/flurry/org/codehaus/jackson/map/type/TypeModifier;

    invoke-direct {v1, v2, v0}, Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;-><init>(Lcom/flurry/org/codehaus/jackson/map/type/TypeParser;[Lcom/flurry/org/codehaus/jackson/map/type/TypeModifier;)V

    move-object v0, v1

    goto :goto_0
.end method
