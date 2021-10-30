.class public Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector$Pair;
.super Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;
.source "AnnotationIntrospector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Pair"
.end annotation


# instance fields
.field protected final _primary:Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

.field protected final _secondary:Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;


# direct methods
.method public constructor <init>(Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;)V
    .locals 0
    .param p1, "p"    # Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;
    .param p2, "s"    # Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    .prologue
    .line 890
    invoke-direct {p0}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;-><init>()V

    .line 891
    iput-object p1, p0, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector$Pair;->_primary:Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    .line 892
    iput-object p2, p0, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector$Pair;->_secondary:Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    .line 893
    return-void
.end method

.method public static create(Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;)Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;
    .locals 1
    .param p0, "primary"    # Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;
    .param p1, "secondary"    # Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    .prologue
    .line 905
    if-nez p0, :cond_0

    .line 911
    .end local p1    # "secondary":Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;
    :goto_0
    return-object p1

    .line 908
    .restart local p1    # "secondary":Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;
    :cond_0
    if-nez p1, :cond_1

    move-object p1, p0

    .line 909
    goto :goto_0

    .line 911
    :cond_1
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector$Pair;

    invoke-direct {v0, p0, p1}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector$Pair;-><init>(Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;)V

    move-object p1, v0

    goto :goto_0
.end method


# virtual methods
.method public allIntrospectors()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;",
            ">;"
        }
    .end annotation

    .prologue
    .line 916
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector$Pair;->allIntrospectors(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public allIntrospectors(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;",
            ">;)",
            "Ljava/util/Collection",
            "<",
            "Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;",
            ">;"
        }
    .end annotation

    .prologue
    .line 922
    .local p1, "result":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;>;"
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector$Pair;->_primary:Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;->allIntrospectors(Ljava/util/Collection;)Ljava/util/Collection;

    .line 923
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector$Pair;->_secondary:Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;->allIntrospectors(Ljava/util/Collection;)Ljava/util/Collection;

    .line 924
    return-object p1
.end method

.method public findAutoDetectVisibility(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker;)Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker;
    .locals 1
    .param p1, "ac"    # Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;",
            "Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker",
            "<*>;)",
            "Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 1018
    .local p2, "checker":Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker;, "Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker<*>;"
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector$Pair;->_secondary:Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1, p2}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;->findAutoDetectVisibility(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker;)Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker;

    move-result-object p2

    .line 1019
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector$Pair;->_primary:Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1, p2}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;->findAutoDetectVisibility(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker;)Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker;

    move-result-object v0

    return-object v0
.end method

.method public findCachability(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/Boolean;
    .locals 2
    .param p1, "ac"    # Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;

    .prologue
    .line 944
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector$Pair;->_primary:Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v1, p1}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;->findCachability(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/Boolean;

    move-result-object v0

    .line 945
    .local v0, "result":Ljava/lang/Boolean;
    if-nez v0, :cond_0

    .line 946
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector$Pair;->_secondary:Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v1, p1}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;->findCachability(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/Boolean;

    move-result-object v0

    .line 948
    :cond_0
    return-object v0
.end method

.method public findContentDeserializer(Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Class;
    .locals 2
    .param p1, "am"    # Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;",
            ")",
            "Ljava/lang/Class",
            "<+",
            "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 1353
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector$Pair;->_primary:Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v1, p1}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;->findContentDeserializer(Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Class;

    move-result-object v0

    .line 1354
    .local v0, "result":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer<*>;>;"
    if-eqz v0, :cond_0

    const-class v1, Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer$None;

    if-ne v0, v1, :cond_1

    .line 1355
    :cond_0
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector$Pair;->_secondary:Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v1, p1}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;->findContentDeserializer(Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Class;

    move-result-object v0

    .line 1357
    :cond_1
    return-object v0
.end method

.method public findContentSerializer(Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Class;
    .locals 2
    .param p1, "a"    # Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;",
            ")",
            "Ljava/lang/Class",
            "<+",
            "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 1166
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector$Pair;->_primary:Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v1, p1}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;->findContentSerializer(Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Class;

    move-result-object v0

    .line 1167
    .local v0, "result":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/flurry/org/codehaus/jackson/map/JsonSerializer<*>;>;"
    if-eqz v0, :cond_0

    const-class v1, Lcom/flurry/org/codehaus/jackson/map/JsonSerializer$None;

    if-ne v0, v1, :cond_1

    .line 1168
    :cond_0
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector$Pair;->_secondary:Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v1, p1}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;->findContentSerializer(Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Class;

    move-result-object v0

    .line 1170
    :cond_1
    return-object v0
.end method

.method public findDeserializablePropertyName(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedField;)Ljava/lang/String;
    .locals 3
    .param p1, "af"    # Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedField;

    .prologue
    .line 1448
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector$Pair;->_primary:Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v2, p1}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;->findDeserializablePropertyName(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedField;)Ljava/lang/String;

    move-result-object v0

    .line 1449
    .local v0, "result":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 1450
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector$Pair;->_secondary:Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v2, p1}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;->findDeserializablePropertyName(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedField;)Ljava/lang/String;

    move-result-object v0

    .line 1460
    :cond_0
    :goto_0
    return-object v0

    .line 1451
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    .line 1455
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector$Pair;->_secondary:Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v2, p1}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;->findDeserializablePropertyName(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedField;)Ljava/lang/String;

    move-result-object v1

    .line 1456
    .local v1, "str2":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 1457
    move-object v0, v1

    goto :goto_0
.end method

.method public findDeserializationContentType(Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;Lcom/flurry/org/codehaus/jackson/type/JavaType;Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .param p1, "am"    # Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;
    .param p2, "baseContentType"    # Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .param p3, "propName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;",
            "Lcom/flurry/org/codehaus/jackson/type/JavaType;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 1386
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector$Pair;->_primary:Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v1, p1, p2, p3}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;->findDeserializationContentType(Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;Lcom/flurry/org/codehaus/jackson/type/JavaType;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1387
    .local v0, "result":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v0, :cond_0

    .line 1388
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector$Pair;->_secondary:Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v1, p1, p2, p3}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;->findDeserializationContentType(Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;Lcom/flurry/org/codehaus/jackson/type/JavaType;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1390
    :cond_0
    return-object v0
.end method

.method public findDeserializationKeyType(Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;Lcom/flurry/org/codehaus/jackson/type/JavaType;Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .param p1, "am"    # Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;
    .param p2, "baseKeyType"    # Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .param p3, "propName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;",
            "Lcom/flurry/org/codehaus/jackson/type/JavaType;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 1375
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector$Pair;->_primary:Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v1, p1, p2, p3}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;->findDeserializationKeyType(Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;Lcom/flurry/org/codehaus/jackson/type/JavaType;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1376
    .local v0, "result":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v0, :cond_0

    .line 1377
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector$Pair;->_secondary:Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v1, p1, p2, p3}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;->findDeserializationKeyType(Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;Lcom/flurry/org/codehaus/jackson/type/JavaType;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1379
    :cond_0
    return-object v0
.end method

.method public findDeserializationType(Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;Lcom/flurry/org/codehaus/jackson/type/JavaType;Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .param p1, "am"    # Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;
    .param p2, "baseType"    # Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .param p3, "propName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;",
            "Lcom/flurry/org/codehaus/jackson/type/JavaType;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 1364
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector$Pair;->_primary:Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v1, p1, p2, p3}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;->findDeserializationType(Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;Lcom/flurry/org/codehaus/jackson/type/JavaType;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1365
    .local v0, "result":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v0, :cond_0

    .line 1366
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector$Pair;->_secondary:Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v1, p1, p2, p3}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;->findDeserializationType(Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;Lcom/flurry/org/codehaus/jackson/type/JavaType;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1368
    :cond_0
    return-object v0
.end method

.method public findDeserializer(Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Object;
    .locals 2
    .param p1, "am"    # Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;

    .prologue
    .line 1333
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector$Pair;->_primary:Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v1, p1}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;->findDeserializer(Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Object;

    move-result-object v0

    .line 1334
    .local v0, "result":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 1335
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector$Pair;->_secondary:Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v1, p1}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;->findDeserializer(Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Object;

    move-result-object v0

    .line 1337
    :cond_0
    return-object v0
.end method

.method public findEnumValue(Ljava/lang/Enum;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1301
    .local p1, "value":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector$Pair;->_primary:Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v1, p1}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;->findEnumValue(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v0

    .line 1302
    .local v0, "result":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1303
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector$Pair;->_secondary:Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v1, p1}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;->findEnumValue(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v0

    .line 1305
    :cond_0
    return-object v0
.end method

.method public findFilterId(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/Object;
    .locals 2
    .param p1, "ac"    # Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;

    .prologue
    .line 998
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector$Pair;->_primary:Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v1, p1}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;->findFilterId(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/Object;

    move-result-object v0

    .line 999
    .local v0, "id":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 1000
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector$Pair;->_secondary:Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v1, p1}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;->findFilterId(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/Object;

    move-result-object v0

    .line 1002
    :cond_0
    return-object v0
.end method

.method public findGettablePropertyName(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;)Ljava/lang/String;
    .locals 3
    .param p1, "am"    # Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;

    .prologue
    .line 1277
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector$Pair;->_primary:Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v2, p1}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;->findGettablePropertyName(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;)Ljava/lang/String;

    move-result-object v0

    .line 1278
    .local v0, "result":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 1279
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector$Pair;->_secondary:Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v2, p1}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;->findGettablePropertyName(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;)Ljava/lang/String;

    move-result-object v0

    .line 1289
    :cond_0
    :goto_0
    return-object v0

    .line 1280
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    .line 1284
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector$Pair;->_secondary:Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v2, p1}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;->findGettablePropertyName(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;)Ljava/lang/String;

    move-result-object v1

    .line 1285
    .local v1, "str2":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 1286
    move-object v0, v1

    goto :goto_0
.end method

.method public findIgnoreUnknownProperties(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/Boolean;
    .locals 2
    .param p1, "ac"    # Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;

    .prologue
    .line 978
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector$Pair;->_primary:Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v1, p1}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;->findIgnoreUnknownProperties(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/Boolean;

    move-result-object v0

    .line 979
    .local v0, "result":Ljava/lang/Boolean;
    if-nez v0, :cond_0

    .line 980
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector$Pair;->_secondary:Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v1, p1}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;->findIgnoreUnknownProperties(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/Boolean;

    move-result-object v0

    .line 982
    :cond_0
    return-object v0
.end method

.method public findInjectableValueId(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;)Ljava/lang/Object;
    .locals 2
    .param p1, "m"    # Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;

    .prologue
    .line 1109
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector$Pair;->_primary:Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v1, p1}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;->findInjectableValueId(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;)Ljava/lang/Object;

    move-result-object v0

    .line 1110
    .local v0, "value":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 1111
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector$Pair;->_secondary:Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v1, p1}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;->findInjectableValueId(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;)Ljava/lang/Object;

    move-result-object v0

    .line 1113
    :cond_0
    return-object v0
.end method

.method public findKeyDeserializer(Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Class;
    .locals 2
    .param p1, "am"    # Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;",
            ")",
            "Ljava/lang/Class",
            "<+",
            "Lcom/flurry/org/codehaus/jackson/map/KeyDeserializer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1343
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector$Pair;->_primary:Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v1, p1}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;->findKeyDeserializer(Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Class;

    move-result-object v0

    .line 1344
    .local v0, "result":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/flurry/org/codehaus/jackson/map/KeyDeserializer;>;"
    if-eqz v0, :cond_0

    const-class v1, Lcom/flurry/org/codehaus/jackson/map/KeyDeserializer$None;

    if-ne v0, v1, :cond_1

    .line 1345
    :cond_0
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector$Pair;->_secondary:Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v1, p1}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;->findKeyDeserializer(Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Class;

    move-result-object v0

    .line 1347
    :cond_1
    return-object v0
.end method

.method public findKeySerializer(Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Class;
    .locals 2
    .param p1, "a"    # Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;",
            ")",
            "Ljava/lang/Class",
            "<+",
            "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 1156
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector$Pair;->_primary:Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v1, p1}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;->findKeySerializer(Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Class;

    move-result-object v0

    .line 1157
    .local v0, "result":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/flurry/org/codehaus/jackson/map/JsonSerializer<*>;>;"
    if-eqz v0, :cond_0

    const-class v1, Lcom/flurry/org/codehaus/jackson/map/JsonSerializer$None;

    if-ne v0, v1, :cond_1

    .line 1158
    :cond_0
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector$Pair;->_secondary:Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v1, p1}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;->findKeySerializer(Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Class;

    move-result-object v0

    .line 1160
    :cond_1
    return-object v0
.end method

.method public findPropertiesToIgnore(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;)[Ljava/lang/String;
    .locals 2
    .param p1, "ac"    # Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;

    .prologue
    .line 968
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector$Pair;->_primary:Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v1, p1}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;->findPropertiesToIgnore(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;)[Ljava/lang/String;

    move-result-object v0

    .line 969
    .local v0, "result":[Ljava/lang/String;
    if-nez v0, :cond_0

    .line 970
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector$Pair;->_secondary:Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v1, p1}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;->findPropertiesToIgnore(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;)[Ljava/lang/String;

    move-result-object v0

    .line 972
    :cond_0
    return-object v0
.end method

.method public findPropertyContentTypeResolver(Lcom/flurry/org/codehaus/jackson/map/MapperConfig;Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;Lcom/flurry/org/codehaus/jackson/type/JavaType;)Lcom/flurry/org/codehaus/jackson/map/jsontype/TypeResolverBuilder;
    .locals 2
    .param p2, "am"    # Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;
    .param p3, "baseType"    # Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/MapperConfig",
            "<*>;",
            "Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;",
            "Lcom/flurry/org/codehaus/jackson/type/JavaType;",
            ")",
            "Lcom/flurry/org/codehaus/jackson/map/jsontype/TypeResolverBuilder",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 1054
    .local p1, "config":Lcom/flurry/org/codehaus/jackson/map/MapperConfig;, "Lcom/flurry/org/codehaus/jackson/map/MapperConfig<*>;"
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector$Pair;->_primary:Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v1, p1, p2, p3}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;->findPropertyContentTypeResolver(Lcom/flurry/org/codehaus/jackson/map/MapperConfig;Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;Lcom/flurry/org/codehaus/jackson/type/JavaType;)Lcom/flurry/org/codehaus/jackson/map/jsontype/TypeResolverBuilder;

    move-result-object v0

    .line 1055
    .local v0, "b":Lcom/flurry/org/codehaus/jackson/map/jsontype/TypeResolverBuilder;, "Lcom/flurry/org/codehaus/jackson/map/jsontype/TypeResolverBuilder<*>;"
    if-nez v0, :cond_0

    .line 1056
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector$Pair;->_secondary:Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v1, p1, p2, p3}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;->findPropertyContentTypeResolver(Lcom/flurry/org/codehaus/jackson/map/MapperConfig;Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;Lcom/flurry/org/codehaus/jackson/type/JavaType;)Lcom/flurry/org/codehaus/jackson/map/jsontype/TypeResolverBuilder;

    move-result-object v0

    .line 1058
    :cond_0
    return-object v0
.end method

.method public findPropertyNameForParam(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedParameter;)Ljava/lang/String;
    .locals 2
    .param p1, "param"    # Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedParameter;

    .prologue
    .line 1468
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector$Pair;->_primary:Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v1, p1}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;->findPropertyNameForParam(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedParameter;)Ljava/lang/String;

    move-result-object v0

    .line 1469
    .local v0, "result":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1470
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector$Pair;->_secondary:Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v1, p1}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;->findPropertyNameForParam(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedParameter;)Ljava/lang/String;

    move-result-object v0

    .line 1472
    :cond_0
    return-object v0
.end method

.method public findPropertyTypeResolver(Lcom/flurry/org/codehaus/jackson/map/MapperConfig;Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;Lcom/flurry/org/codehaus/jackson/type/JavaType;)Lcom/flurry/org/codehaus/jackson/map/jsontype/TypeResolverBuilder;
    .locals 2
    .param p2, "am"    # Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;
    .param p3, "baseType"    # Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/MapperConfig",
            "<*>;",
            "Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;",
            "Lcom/flurry/org/codehaus/jackson/type/JavaType;",
            ")",
            "Lcom/flurry/org/codehaus/jackson/map/jsontype/TypeResolverBuilder",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 1043
    .local p1, "config":Lcom/flurry/org/codehaus/jackson/map/MapperConfig;, "Lcom/flurry/org/codehaus/jackson/map/MapperConfig<*>;"
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector$Pair;->_primary:Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v1, p1, p2, p3}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;->findPropertyTypeResolver(Lcom/flurry/org/codehaus/jackson/map/MapperConfig;Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;Lcom/flurry/org/codehaus/jackson/type/JavaType;)Lcom/flurry/org/codehaus/jackson/map/jsontype/TypeResolverBuilder;

    move-result-object v0

    .line 1044
    .local v0, "b":Lcom/flurry/org/codehaus/jackson/map/jsontype/TypeResolverBuilder;, "Lcom/flurry/org/codehaus/jackson/map/jsontype/TypeResolverBuilder<*>;"
    if-nez v0, :cond_0

    .line 1045
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector$Pair;->_secondary:Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v1, p1, p2, p3}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;->findPropertyTypeResolver(Lcom/flurry/org/codehaus/jackson/map/MapperConfig;Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;Lcom/flurry/org/codehaus/jackson/type/JavaType;)Lcom/flurry/org/codehaus/jackson/map/jsontype/TypeResolverBuilder;

    move-result-object v0

    .line 1047
    :cond_0
    return-object v0
.end method

.method public findReferenceType(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;)Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector$ReferenceProperty;
    .locals 2
    .param p1, "member"    # Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;

    .prologue
    .line 1089
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector$Pair;->_primary:Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v1, p1}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;->findReferenceType(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;)Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector$ReferenceProperty;

    move-result-object v0

    .line 1090
    .local v0, "ref":Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector$ReferenceProperty;
    if-nez v0, :cond_0

    .line 1091
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector$Pair;->_secondary:Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v1, p1}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;->findReferenceType(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;)Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector$ReferenceProperty;

    move-result-object v0

    .line 1093
    :cond_0
    return-object v0
.end method

.method public findRootName(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/String;
    .locals 3
    .param p1, "ac"    # Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;

    .prologue
    .line 954
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector$Pair;->_primary:Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v2, p1}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;->findRootName(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/String;

    move-result-object v0

    .line 955
    .local v0, "name1":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 956
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector$Pair;->_secondary:Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v2, p1}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;->findRootName(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/String;

    move-result-object v0

    .line 962
    .end local v0    # "name1":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .line 957
    .restart local v0    # "name1":Ljava/lang/String;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_0

    .line 961
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector$Pair;->_secondary:Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v2, p1}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;->findRootName(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/String;

    move-result-object v1

    .line 962
    .local v1, "name2":Ljava/lang/String;
    if-eqz v1, :cond_0

    move-object v0, v1

    goto :goto_0
.end method

.method public findSerializablePropertyName(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedField;)Ljava/lang/String;
    .locals 3
    .param p1, "af"    # Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedField;

    .prologue
    .line 1313
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector$Pair;->_primary:Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v2, p1}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;->findSerializablePropertyName(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedField;)Ljava/lang/String;

    move-result-object v0

    .line 1314
    .local v0, "result":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 1315
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector$Pair;->_secondary:Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v2, p1}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;->findSerializablePropertyName(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedField;)Ljava/lang/String;

    move-result-object v0

    .line 1325
    :cond_0
    :goto_0
    return-object v0

    .line 1316
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    .line 1320
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector$Pair;->_secondary:Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v2, p1}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;->findSerializablePropertyName(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedField;)Ljava/lang/String;

    move-result-object v1

    .line 1321
    .local v1, "str2":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 1322
    move-object v0, v1

    goto :goto_0
.end method

.method public findSerializationContentType(Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;Lcom/flurry/org/codehaus/jackson/type/JavaType;)Ljava/lang/Class;
    .locals 2
    .param p1, "am"    # Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;
    .param p2, "baseType"    # Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;",
            "Lcom/flurry/org/codehaus/jackson/type/JavaType;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 1216
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector$Pair;->_primary:Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v1, p1, p2}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;->findSerializationContentType(Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;Lcom/flurry/org/codehaus/jackson/type/JavaType;)Ljava/lang/Class;

    move-result-object v0

    .line 1217
    .local v0, "result":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v0, :cond_0

    .line 1218
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector$Pair;->_secondary:Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v1, p1, p2}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;->findSerializationContentType(Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;Lcom/flurry/org/codehaus/jackson/type/JavaType;)Ljava/lang/Class;

    move-result-object v0

    .line 1220
    :cond_0
    return-object v0
.end method

.method public findSerializationInclusion(Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;Lcom/flurry/org/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;)Lcom/flurry/org/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;
    .locals 1
    .param p1, "a"    # Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;
    .param p2, "defValue"    # Lcom/flurry/org/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;

    .prologue
    .line 1188
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector$Pair;->_secondary:Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1, p2}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;->findSerializationInclusion(Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;Lcom/flurry/org/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;)Lcom/flurry/org/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;

    move-result-object p2

    .line 1189
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector$Pair;->_primary:Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1, p2}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;->findSerializationInclusion(Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;Lcom/flurry/org/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;)Lcom/flurry/org/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;

    move-result-object p2

    .line 1190
    return-object p2
.end method

.method public findSerializationKeyType(Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;Lcom/flurry/org/codehaus/jackson/type/JavaType;)Ljava/lang/Class;
    .locals 2
    .param p1, "am"    # Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;
    .param p2, "baseType"    # Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;",
            "Lcom/flurry/org/codehaus/jackson/type/JavaType;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 1206
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector$Pair;->_primary:Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v1, p1, p2}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;->findSerializationKeyType(Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;Lcom/flurry/org/codehaus/jackson/type/JavaType;)Ljava/lang/Class;

    move-result-object v0

    .line 1207
    .local v0, "result":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v0, :cond_0

    .line 1208
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector$Pair;->_secondary:Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v1, p1, p2}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;->findSerializationKeyType(Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;Lcom/flurry/org/codehaus/jackson/type/JavaType;)Ljava/lang/Class;

    move-result-object v0

    .line 1210
    :cond_0
    return-object v0
.end method

.method public findSerializationPropertyOrder(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;)[Ljava/lang/String;
    .locals 2
    .param p1, "ac"    # Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;

    .prologue
    .line 1251
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector$Pair;->_primary:Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v1, p1}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;->findSerializationPropertyOrder(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;)[Ljava/lang/String;

    move-result-object v0

    .line 1252
    .local v0, "result":[Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1253
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector$Pair;->_secondary:Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v1, p1}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;->findSerializationPropertyOrder(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;)[Ljava/lang/String;

    move-result-object v0

    .line 1255
    :cond_0
    return-object v0
.end method

.method public findSerializationSortAlphabetically(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/Boolean;
    .locals 2
    .param p1, "ac"    # Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;

    .prologue
    .line 1265
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector$Pair;->_primary:Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v1, p1}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;->findSerializationSortAlphabetically(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/Boolean;

    move-result-object v0

    .line 1266
    .local v0, "result":Ljava/lang/Boolean;
    if-nez v0, :cond_0

    .line 1267
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector$Pair;->_secondary:Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v1, p1}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;->findSerializationSortAlphabetically(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/Boolean;

    move-result-object v0

    .line 1269
    :cond_0
    return-object v0
.end method

.method public findSerializationType(Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Class;
    .locals 2
    .param p1, "a"    # Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 1196
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector$Pair;->_primary:Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v1, p1}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;->findSerializationType(Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Class;

    move-result-object v0

    .line 1197
    .local v0, "result":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v0, :cond_0

    .line 1198
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector$Pair;->_secondary:Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v1, p1}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;->findSerializationType(Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Class;

    move-result-object v0

    .line 1200
    :cond_0
    return-object v0
.end method

.method public findSerializationTyping(Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;)Lcom/flurry/org/codehaus/jackson/map/annotate/JsonSerialize$Typing;
    .locals 2
    .param p1, "a"    # Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;

    .prologue
    .line 1226
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector$Pair;->_primary:Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v1, p1}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;->findSerializationTyping(Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;)Lcom/flurry/org/codehaus/jackson/map/annotate/JsonSerialize$Typing;

    move-result-object v0

    .line 1227
    .local v0, "result":Lcom/flurry/org/codehaus/jackson/map/annotate/JsonSerialize$Typing;
    if-nez v0, :cond_0

    .line 1228
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector$Pair;->_secondary:Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v1, p1}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;->findSerializationTyping(Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;)Lcom/flurry/org/codehaus/jackson/map/annotate/JsonSerialize$Typing;

    move-result-object v0

    .line 1230
    :cond_0
    return-object v0
.end method

.method public findSerializationViews(Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;)[Ljava/lang/Class;
    .locals 2
    .param p1, "a"    # Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;",
            ")[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 1240
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector$Pair;->_primary:Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v1, p1}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;->findSerializationViews(Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;)[Ljava/lang/Class;

    move-result-object v0

    .line 1241
    .local v0, "result":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    if-nez v0, :cond_0

    .line 1242
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector$Pair;->_secondary:Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v1, p1}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;->findSerializationViews(Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;)[Ljava/lang/Class;

    move-result-object v0

    .line 1244
    :cond_0
    return-object v0
.end method

.method public findSerializer(Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Object;
    .locals 2
    .param p1, "am"    # Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;

    .prologue
    .line 1146
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector$Pair;->_primary:Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v1, p1}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;->findSerializer(Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Object;

    move-result-object v0

    .line 1147
    .local v0, "result":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 1148
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector$Pair;->_secondary:Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v1, p1}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;->findSerializer(Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Object;

    move-result-object v0

    .line 1150
    :cond_0
    return-object v0
.end method

.method public findSettablePropertyName(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;)Ljava/lang/String;
    .locals 3
    .param p1, "am"    # Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;

    .prologue
    .line 1410
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector$Pair;->_primary:Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v2, p1}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;->findSettablePropertyName(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;)Ljava/lang/String;

    move-result-object v0

    .line 1411
    .local v0, "result":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 1412
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector$Pair;->_secondary:Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v2, p1}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;->findSettablePropertyName(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;)Ljava/lang/String;

    move-result-object v0

    .line 1422
    :cond_0
    :goto_0
    return-object v0

    .line 1413
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    .line 1417
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector$Pair;->_secondary:Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v2, p1}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;->findSettablePropertyName(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;)Ljava/lang/String;

    move-result-object v1

    .line 1418
    .local v1, "str2":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 1419
    move-object v0, v1

    goto :goto_0
.end method

.method public findSubtypes(Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;)Ljava/util/List;
    .locals 5
    .param p1, "a"    # Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/org/codehaus/jackson/map/jsontype/NamedType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1064
    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector$Pair;->_primary:Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v3, p1}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;->findSubtypes(Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;)Ljava/util/List;

    move-result-object v1

    .line 1065
    .local v1, "types1":Ljava/util/List;, "Ljava/util/List<Lcom/flurry/org/codehaus/jackson/map/jsontype/NamedType;>;"
    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector$Pair;->_secondary:Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v3, p1}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;->findSubtypes(Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;)Ljava/util/List;

    move-result-object v2

    .line 1066
    .local v2, "types2":Ljava/util/List;, "Ljava/util/List<Lcom/flurry/org/codehaus/jackson/map/jsontype/NamedType;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move-object v0, v2

    .line 1071
    :goto_0
    return-object v0

    .line 1067
    :cond_1
    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    move-object v0, v1

    goto :goto_0

    .line 1068
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1069
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/flurry/org/codehaus/jackson/map/jsontype/NamedType;>;"
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1070
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public findTypeName(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/String;
    .locals 2
    .param p1, "ac"    # Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;

    .prologue
    .line 1077
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector$Pair;->_primary:Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v1, p1}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;->findTypeName(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/String;

    move-result-object v0

    .line 1078
    .local v0, "name":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 1079
    :cond_0
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector$Pair;->_secondary:Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v1, p1}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;->findTypeName(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/String;

    move-result-object v0

    .line 1081
    :cond_1
    return-object v0
.end method

.method public findTypeResolver(Lcom/flurry/org/codehaus/jackson/map/MapperConfig;Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;Lcom/flurry/org/codehaus/jackson/type/JavaType;)Lcom/flurry/org/codehaus/jackson/map/jsontype/TypeResolverBuilder;
    .locals 2
    .param p2, "ac"    # Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;
    .param p3, "baseType"    # Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/MapperConfig",
            "<*>;",
            "Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;",
            "Lcom/flurry/org/codehaus/jackson/type/JavaType;",
            ")",
            "Lcom/flurry/org/codehaus/jackson/map/jsontype/TypeResolverBuilder",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 1032
    .local p1, "config":Lcom/flurry/org/codehaus/jackson/map/MapperConfig;, "Lcom/flurry/org/codehaus/jackson/map/MapperConfig<*>;"
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector$Pair;->_primary:Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v1, p1, p2, p3}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;->findTypeResolver(Lcom/flurry/org/codehaus/jackson/map/MapperConfig;Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;Lcom/flurry/org/codehaus/jackson/type/JavaType;)Lcom/flurry/org/codehaus/jackson/map/jsontype/TypeResolverBuilder;

    move-result-object v0

    .line 1033
    .local v0, "b":Lcom/flurry/org/codehaus/jackson/map/jsontype/TypeResolverBuilder;, "Lcom/flurry/org/codehaus/jackson/map/jsontype/TypeResolverBuilder<*>;"
    if-nez v0, :cond_0

    .line 1034
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector$Pair;->_secondary:Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v1, p1, p2, p3}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;->findTypeResolver(Lcom/flurry/org/codehaus/jackson/map/MapperConfig;Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;Lcom/flurry/org/codehaus/jackson/type/JavaType;)Lcom/flurry/org/codehaus/jackson/map/jsontype/TypeResolverBuilder;

    move-result-object v0

    .line 1036
    :cond_0
    return-object v0
.end method

.method public findValueInstantiator(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/Object;
    .locals 2
    .param p1, "ac"    # Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;

    .prologue
    .line 1398
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector$Pair;->_primary:Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v1, p1}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;->findValueInstantiator(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/Object;

    move-result-object v0

    .line 1399
    .local v0, "result":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 1400
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector$Pair;->_secondary:Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v1, p1}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;->findValueInstantiator(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/Object;

    move-result-object v0

    .line 1402
    :cond_0
    return-object v0
.end method

.method public hasAnyGetterAnnotation(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;)Z
    .locals 1
    .param p1, "am"    # Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;

    .prologue
    .line 1434
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector$Pair;->_primary:Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;->hasAnyGetterAnnotation(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector$Pair;->_secondary:Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;->hasAnyGetterAnnotation(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;)Z

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

.method public hasAnySetterAnnotation(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;)Z
    .locals 1
    .param p1, "am"    # Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;

    .prologue
    .line 1428
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector$Pair;->_primary:Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;->hasAnySetterAnnotation(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector$Pair;->_secondary:Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;->hasAnySetterAnnotation(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;)Z

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

.method public hasAsValueAnnotation(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;)Z
    .locals 1
    .param p1, "am"    # Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;

    .prologue
    .line 1295
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector$Pair;->_primary:Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;->hasAsValueAnnotation(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector$Pair;->_secondary:Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;->hasAsValueAnnotation(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;)Z

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

.method public hasCreatorAnnotation(Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;)Z
    .locals 1
    .param p1, "a"    # Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;

    .prologue
    .line 1440
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector$Pair;->_primary:Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;->hasCreatorAnnotation(Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector$Pair;->_secondary:Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;->hasCreatorAnnotation(Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;)Z

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

.method public hasIgnoreMarker(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;)Z
    .locals 1
    .param p1, "m"    # Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;

    .prologue
    .line 1118
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector$Pair;->_primary:Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;->hasIgnoreMarker(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector$Pair;->_secondary:Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;->hasIgnoreMarker(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;)Z

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

.method public isHandled(Ljava/lang/annotation/Annotation;)Z
    .locals 1
    .param p1, "ann"    # Ljava/lang/annotation/Annotation;

    .prologue
    .line 932
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector$Pair;->_primary:Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;->isHandled(Ljava/lang/annotation/Annotation;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector$Pair;->_secondary:Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;->isHandled(Ljava/lang/annotation/Annotation;)Z

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

.method public isIgnorableConstructor(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedConstructor;)Z
    .locals 1
    .param p1, "c"    # Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedConstructor;

    .prologue
    .line 1130
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector$Pair;->_primary:Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;->isIgnorableConstructor(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedConstructor;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector$Pair;->_secondary:Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;->isIgnorableConstructor(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedConstructor;)Z

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

.method public isIgnorableField(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedField;)Z
    .locals 1
    .param p1, "f"    # Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedField;

    .prologue
    .line 1138
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector$Pair;->_primary:Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;->isIgnorableField(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedField;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector$Pair;->_secondary:Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;->isIgnorableField(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedField;)Z

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

.method public isIgnorableMethod(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;)Z
    .locals 1
    .param p1, "m"    # Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;

    .prologue
    .line 1125
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector$Pair;->_primary:Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;->isIgnorableMethod(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector$Pair;->_secondary:Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;->isIgnorableMethod(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;)Z

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

.method public isIgnorableType(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/Boolean;
    .locals 2
    .param p1, "ac"    # Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;

    .prologue
    .line 988
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector$Pair;->_primary:Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v1, p1}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;->isIgnorableType(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/Boolean;

    move-result-object v0

    .line 989
    .local v0, "result":Ljava/lang/Boolean;
    if-nez v0, :cond_0

    .line 990
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector$Pair;->_secondary:Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v1, p1}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;->isIgnorableType(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/Boolean;

    move-result-object v0

    .line 992
    :cond_0
    return-object v0
.end method

.method public shouldUnwrapProperty(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;)Ljava/lang/Boolean;
    .locals 2
    .param p1, "member"    # Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;

    .prologue
    .line 1099
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector$Pair;->_primary:Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v1, p1}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;->shouldUnwrapProperty(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;)Ljava/lang/Boolean;

    move-result-object v0

    .line 1100
    .local v0, "value":Ljava/lang/Boolean;
    if-nez v0, :cond_0

    .line 1101
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector$Pair;->_secondary:Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v1, p1}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;->shouldUnwrapProperty(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;)Ljava/lang/Boolean;

    move-result-object v0

    .line 1103
    :cond_0
    return-object v0
.end method
