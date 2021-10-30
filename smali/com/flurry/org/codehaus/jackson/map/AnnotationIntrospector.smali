.class public abstract Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;
.super Ljava/lang/Object;
.source "AnnotationIntrospector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector$Pair;,
        Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector$ReferenceProperty;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 883
    return-void
.end method

.method public static nopInstance()Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;
    .locals 1

    .prologue
    .line 95
    sget-object v0, Lcom/flurry/org/codehaus/jackson/map/introspect/NopAnnotationIntrospector;->instance:Lcom/flurry/org/codehaus/jackson/map/introspect/NopAnnotationIntrospector;

    return-object v0
.end method

.method public static pair(Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;)Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;
    .locals 1
    .param p0, "a1"    # Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;
    .param p1, "a2"    # Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    .prologue
    .line 99
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector$Pair;

    invoke-direct {v0, p0, p1}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector$Pair;-><init>(Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;)V

    return-object v0
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
    .line 120
    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public allIntrospectors(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 0
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
    .line 134
    .local p1, "result":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;>;"
    invoke-interface {p1, p0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 135
    return-object p1
.end method

.method public findAutoDetectVisibility(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker;)Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker;
    .locals 0
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
    .line 248
    .local p2, "checker":Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker;, "Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker<*>;"
    return-object p2
.end method

.method public findCachability(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/Boolean;
    .locals 1
    .param p1, "ac"    # Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;

    .prologue
    .line 172
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract findContentDeserializer(Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Class;
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
.end method

.method public findContentSerializer(Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Class;
    .locals 1
    .param p1, "am"    # Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;
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
    .line 506
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract findDeserializablePropertyName(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedField;)Ljava/lang/String;
.end method

.method public abstract findDeserializationContentType(Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;Lcom/flurry/org/codehaus/jackson/type/JavaType;Ljava/lang/String;)Ljava/lang/Class;
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
.end method

.method public abstract findDeserializationKeyType(Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;Lcom/flurry/org/codehaus/jackson/type/JavaType;Ljava/lang/String;)Ljava/lang/Class;
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
.end method

.method public abstract findDeserializationType(Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;Lcom/flurry/org/codehaus/jackson/type/JavaType;Ljava/lang/String;)Ljava/lang/Class;
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
.end method

.method public abstract findDeserializer(Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Object;
.end method

.method public abstract findEnumValue(Ljava/lang/Enum;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method public findFilterId(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/Object;
    .locals 1
    .param p1, "ac"    # Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;

    .prologue
    .line 229
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract findGettablePropertyName(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;)Ljava/lang/String;
.end method

.method public abstract findIgnoreUnknownProperties(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/Boolean;
.end method

.method public findInjectableValueId(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;)Ljava/lang/Object;
    .locals 1
    .param p1, "m"    # Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;

    .prologue
    .line 421
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract findKeyDeserializer(Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Class;
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
.end method

.method public findKeySerializer(Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Class;
    .locals 1
    .param p1, "am"    # Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;
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
    .line 492
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract findPropertiesToIgnore(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;)[Ljava/lang/String;
.end method

.method public findPropertyContentTypeResolver(Lcom/flurry/org/codehaus/jackson/map/MapperConfig;Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;Lcom/flurry/org/codehaus/jackson/type/JavaType;)Lcom/flurry/org/codehaus/jackson/map/jsontype/TypeResolverBuilder;
    .locals 1
    .param p2, "am"    # Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;
    .param p3, "containerType"    # Lcom/flurry/org/codehaus/jackson/type/JavaType;
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
    .line 321
    .local p1, "config":Lcom/flurry/org/codehaus/jackson/map/MapperConfig;, "Lcom/flurry/org/codehaus/jackson/map/MapperConfig<*>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract findPropertyNameForParam(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedParameter;)Ljava/lang/String;
.end method

.method public findPropertyTypeResolver(Lcom/flurry/org/codehaus/jackson/map/MapperConfig;Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;Lcom/flurry/org/codehaus/jackson/type/JavaType;)Lcom/flurry/org/codehaus/jackson/map/jsontype/TypeResolverBuilder;
    .locals 1
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
    .line 297
    .local p1, "config":Lcom/flurry/org/codehaus/jackson/map/MapperConfig;, "Lcom/flurry/org/codehaus/jackson/map/MapperConfig<*>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public findReferenceType(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;)Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector$ReferenceProperty;
    .locals 1
    .param p1, "member"    # Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;

    .prologue
    .line 363
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract findRootName(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/String;
.end method

.method public abstract findSerializablePropertyName(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedField;)Ljava/lang/String;
.end method

.method public findSerializationContentType(Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;Lcom/flurry/org/codehaus/jackson/type/JavaType;)Ljava/lang/Class;
    .locals 1
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
    .line 555
    const/4 v0, 0x0

    return-object v0
.end method

.method public findSerializationInclusion(Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;Lcom/flurry/org/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;)Lcom/flurry/org/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;
    .locals 0
    .param p1, "a"    # Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;
    .param p2, "defValue"    # Lcom/flurry/org/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;

    .prologue
    .line 520
    return-object p2
.end method

.method public findSerializationKeyType(Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;Lcom/flurry/org/codehaus/jackson/type/JavaType;)Ljava/lang/Class;
    .locals 1
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
    .line 543
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract findSerializationPropertyOrder(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;)[Ljava/lang/String;
.end method

.method public abstract findSerializationSortAlphabetically(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/Boolean;
.end method

.method public abstract findSerializationType(Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end method

.method public abstract findSerializationTyping(Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;)Lcom/flurry/org/codehaus/jackson/map/annotate/JsonSerialize$Typing;
.end method

.method public abstract findSerializationViews(Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;)[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;",
            ")[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end method

.method public abstract findSerializer(Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Object;
.end method

.method public abstract findSettablePropertyName(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;)Ljava/lang/String;
.end method

.method public findSubtypes(Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;)Ljava/util/List;
    .locals 1
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
    .line 336
    const/4 v0, 0x0

    return-object v0
.end method

.method public findTypeName(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/String;
    .locals 1
    .param p1, "ac"    # Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;

    .prologue
    .line 347
    const/4 v0, 0x0

    return-object v0
.end method

.method public findTypeResolver(Lcom/flurry/org/codehaus/jackson/map/MapperConfig;Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;Lcom/flurry/org/codehaus/jackson/type/JavaType;)Lcom/flurry/org/codehaus/jackson/map/jsontype/TypeResolverBuilder;
    .locals 1
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
    .line 275
    .local p1, "config":Lcom/flurry/org/codehaus/jackson/map/MapperConfig;, "Lcom/flurry/org/codehaus/jackson/map/MapperConfig<*>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public findValueInstantiator(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/Object;
    .locals 1
    .param p1, "ac"    # Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;

    .prologue
    .line 769
    const/4 v0, 0x0

    return-object v0
.end method

.method public hasAnyGetterAnnotation(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;)Z
    .locals 1
    .param p1, "am"    # Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;

    .prologue
    .line 815
    const/4 v0, 0x0

    return v0
.end method

.method public hasAnySetterAnnotation(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;)Z
    .locals 1
    .param p1, "am"    # Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;

    .prologue
    .line 800
    const/4 v0, 0x0

    return v0
.end method

.method public abstract hasAsValueAnnotation(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;)Z
.end method

.method public hasCreatorAnnotation(Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;)Z
    .locals 1
    .param p1, "a"    # Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;

    .prologue
    .line 829
    const/4 v0, 0x0

    return v0
.end method

.method public hasIgnoreMarker(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;)Z
    .locals 1
    .param p1, "m"    # Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;

    .prologue
    .line 395
    instance-of v0, p1, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;

    if-eqz v0, :cond_0

    .line 396
    check-cast p1, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;

    .end local p1    # "m":Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;
    invoke-virtual {p0, p1}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;->isIgnorableMethod(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;)Z

    move-result v0

    .line 404
    :goto_0
    return v0

    .line 398
    .restart local p1    # "m":Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;
    :cond_0
    instance-of v0, p1, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedField;

    if-eqz v0, :cond_1

    .line 399
    check-cast p1, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedField;

    .end local p1    # "m":Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;
    invoke-virtual {p0, p1}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;->isIgnorableField(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedField;)Z

    move-result v0

    goto :goto_0

    .line 401
    .restart local p1    # "m":Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;
    :cond_1
    instance-of v0, p1, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedConstructor;

    if-eqz v0, :cond_2

    .line 402
    check-cast p1, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedConstructor;

    .end local p1    # "m":Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;
    invoke-virtual {p0, p1}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;->isIgnorableConstructor(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedConstructor;)Z

    move-result v0

    goto :goto_0

    .line 404
    .restart local p1    # "m":Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract isHandled(Ljava/lang/annotation/Annotation;)Z
.end method

.method public abstract isIgnorableConstructor(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedConstructor;)Z
.end method

.method public abstract isIgnorableField(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedField;)Z
.end method

.method public abstract isIgnorableMethod(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;)Z
.end method

.method public isIgnorableType(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/Boolean;
    .locals 1
    .param p1, "ac"    # Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;

    .prologue
    .line 218
    const/4 v0, 0x0

    return-object v0
.end method

.method public shouldUnwrapProperty(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;)Ljava/lang/Boolean;
    .locals 1
    .param p1, "member"    # Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;

    .prologue
    .line 374
    const/4 v0, 0x0

    return-object v0
.end method
