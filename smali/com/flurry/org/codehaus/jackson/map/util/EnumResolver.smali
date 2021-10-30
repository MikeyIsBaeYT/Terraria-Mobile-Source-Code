.class public Lcom/flurry/org/codehaus/jackson/map/util/EnumResolver;
.super Ljava/lang/Object;
.source "EnumResolver.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Enum",
        "<TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected final _enumClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field

.field protected final _enums:[Ljava/lang/Enum;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field protected final _enumsById:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/Class;[Ljava/lang/Enum;Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;[TT;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "TT;>;)V"
        }
    .end annotation

    .prologue
    .line 22
    .local p0, "this":Lcom/flurry/org/codehaus/jackson/map/util/EnumResolver;, "Lcom/flurry/org/codehaus/jackson/map/util/EnumResolver<TT;>;"
    .local p1, "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "enums":[Ljava/lang/Enum;, "[TT;"
    .local p3, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/flurry/org/codehaus/jackson/map/util/EnumResolver;->_enumClass:Ljava/lang/Class;

    .line 24
    iput-object p2, p0, Lcom/flurry/org/codehaus/jackson/map/util/EnumResolver;->_enums:[Ljava/lang/Enum;

    .line 25
    iput-object p3, p0, Lcom/flurry/org/codehaus/jackson/map/util/EnumResolver;->_enumsById:Ljava/util/HashMap;

    .line 26
    return-void
.end method

.method public static constructFor(Ljava/lang/Class;Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;)Lcom/flurry/org/codehaus/jackson/map/util/EnumResolver;
    .locals 9
    .param p1, "ai"    # Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ET:",
            "Ljava/lang/Enum",
            "<TET;>;>(",
            "Ljava/lang/Class",
            "<TET;>;",
            "Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;",
            ")",
            "Lcom/flurry/org/codehaus/jackson/map/util/EnumResolver",
            "<TET;>;"
        }
    .end annotation

    .prologue
    .line 34
    .local p0, "enumCls":Ljava/lang/Class;, "Ljava/lang/Class<TET;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Enum;

    .line 35
    .local v2, "enumValues":[Ljava/lang/Enum;, "[TET;"
    if-nez v2, :cond_0

    .line 36
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "No enum constants for class "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 38
    :cond_0
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 39
    .local v5, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;TET;>;"
    move-object v0, v2

    .local v0, "arr$":[Ljava/lang/Enum;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v1, v0, v3

    .line 40
    .local v1, "e":Ljava/lang/Enum;, "TET;"
    invoke-virtual {p1, v1}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;->findEnumValue(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 42
    .end local v1    # "e":Ljava/lang/Enum;, "TET;"
    :cond_1
    new-instance v6, Lcom/flurry/org/codehaus/jackson/map/util/EnumResolver;

    invoke-direct {v6, p0, v2, v5}, Lcom/flurry/org/codehaus/jackson/map/util/EnumResolver;-><init>(Ljava/lang/Class;[Ljava/lang/Enum;Ljava/util/HashMap;)V

    return-object v6
.end method

.method public static constructUnsafe(Ljava/lang/Class;Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;)Lcom/flurry/org/codehaus/jackson/map/util/EnumResolver;
    .locals 2
    .param p1, "ai"    # Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;",
            ")",
            "Lcom/flurry/org/codehaus/jackson/map/util/EnumResolver",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 73
    .local p0, "rawEnumCls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v0, p0

    .line 74
    .local v0, "enumCls":Ljava/lang/Class;, "Ljava/lang/Class<Ljava/lang/Enum;>;"
    invoke-static {v0, p1}, Lcom/flurry/org/codehaus/jackson/map/util/EnumResolver;->constructFor(Ljava/lang/Class;Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;)Lcom/flurry/org/codehaus/jackson/map/util/EnumResolver;

    move-result-object v1

    return-object v1
.end method

.method public static constructUnsafeUsingToString(Ljava/lang/Class;)Lcom/flurry/org/codehaus/jackson/map/util/EnumResolver;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/flurry/org/codehaus/jackson/map/util/EnumResolver",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 87
    .local p0, "rawEnumCls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v0, p0

    .line 88
    .local v0, "enumCls":Ljava/lang/Class;, "Ljava/lang/Class<Ljava/lang/Enum;>;"
    invoke-static {v0}, Lcom/flurry/org/codehaus/jackson/map/util/EnumResolver;->constructUsingToString(Ljava/lang/Class;)Lcom/flurry/org/codehaus/jackson/map/util/EnumResolver;

    move-result-object v1

    return-object v1
.end method

.method public static constructUsingToString(Ljava/lang/Class;)Lcom/flurry/org/codehaus/jackson/map/util/EnumResolver;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ET:",
            "Ljava/lang/Enum",
            "<TET;>;>(",
            "Ljava/lang/Class",
            "<TET;>;)",
            "Lcom/flurry/org/codehaus/jackson/map/util/EnumResolver",
            "<TET;>;"
        }
    .end annotation

    .prologue
    .line 53
    .local p0, "enumCls":Ljava/lang/Class;, "Ljava/lang/Class<TET;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Enum;

    .line 54
    .local v1, "enumValues":[Ljava/lang/Enum;, "[TET;"
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 56
    .local v3, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;TET;>;"
    array-length v2, v1

    .local v2, "i":I
    :goto_0
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_0

    .line 57
    aget-object v0, v1, v2

    .line 58
    .local v0, "e":Ljava/lang/Enum;, "TET;"
    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 60
    .end local v0    # "e":Ljava/lang/Enum;, "TET;"
    :cond_0
    new-instance v4, Lcom/flurry/org/codehaus/jackson/map/util/EnumResolver;

    invoke-direct {v4, p0, v1, v3}, Lcom/flurry/org/codehaus/jackson/map/util/EnumResolver;-><init>(Ljava/lang/Class;[Ljava/lang/Enum;Ljava/util/HashMap;)V

    return-object v4
.end method


# virtual methods
.method public findEnum(Ljava/lang/String;)Ljava/lang/Enum;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 93
    .local p0, "this":Lcom/flurry/org/codehaus/jackson/map/util/EnumResolver;, "Lcom/flurry/org/codehaus/jackson/map/util/EnumResolver<TT;>;"
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/util/EnumResolver;->_enumsById:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Enum;

    return-object v0
.end method

.method public getEnum(I)Ljava/lang/Enum;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 98
    .local p0, "this":Lcom/flurry/org/codehaus/jackson/map/util/EnumResolver;, "Lcom/flurry/org/codehaus/jackson/map/util/EnumResolver<TT;>;"
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/util/EnumResolver;->_enums:[Ljava/lang/Enum;

    array-length v0, v0

    if-lt p1, v0, :cond_1

    .line 99
    :cond_0
    const/4 v0, 0x0

    .line 101
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/util/EnumResolver;->_enums:[Ljava/lang/Enum;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method public getEnumClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 104
    .local p0, "this":Lcom/flurry/org/codehaus/jackson/map/util/EnumResolver;, "Lcom/flurry/org/codehaus/jackson/map/util/EnumResolver<TT;>;"
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/util/EnumResolver;->_enumClass:Ljava/lang/Class;

    return-object v0
.end method

.method public lastValidIndex()I
    .locals 1

    .prologue
    .line 106
    .local p0, "this":Lcom/flurry/org/codehaus/jackson/map/util/EnumResolver;, "Lcom/flurry/org/codehaus/jackson/map/util/EnumResolver<TT;>;"
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/util/EnumResolver;->_enums:[Ljava/lang/Enum;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method
