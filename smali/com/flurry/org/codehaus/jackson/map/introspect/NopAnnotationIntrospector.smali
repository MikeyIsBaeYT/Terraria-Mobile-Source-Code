.class public Lcom/flurry/org/codehaus/jackson/map/introspect/NopAnnotationIntrospector;
.super Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;
.source "NopAnnotationIntrospector.java"


# static fields
.field public static final instance:Lcom/flurry/org/codehaus/jackson/map/introspect/NopAnnotationIntrospector;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/introspect/NopAnnotationIntrospector;

    invoke-direct {v0}, Lcom/flurry/org/codehaus/jackson/map/introspect/NopAnnotationIntrospector;-><init>()V

    sput-object v0, Lcom/flurry/org/codehaus/jackson/map/introspect/NopAnnotationIntrospector;->instance:Lcom/flurry/org/codehaus/jackson/map/introspect/NopAnnotationIntrospector;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;-><init>()V

    return-void
.end method


# virtual methods
.method public findContentDeserializer(Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Class;
    .locals 1
    .param p1, "am"    # Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;",
            ")",
            "Ljava/lang/Class",
            "<",
            "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 192
    const/4 v0, 0x0

    return-object v0
.end method

.method public findDeserializablePropertyName(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedField;)Ljava/lang/String;
    .locals 1
    .param p1, "af"    # Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedField;

    .prologue
    .line 167
    const/4 v0, 0x0

    return-object v0
.end method

.method public findDeserializationContentType(Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;Lcom/flurry/org/codehaus/jackson/type/JavaType;Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .param p1, "am"    # Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;
    .param p2, "t"    # Lcom/flurry/org/codehaus/jackson/type/JavaType;
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
    .line 172
    const/4 v0, 0x0

    return-object v0
.end method

.method public findDeserializationKeyType(Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;Lcom/flurry/org/codehaus/jackson/type/JavaType;Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .param p1, "am"    # Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;
    .param p2, "t"    # Lcom/flurry/org/codehaus/jackson/type/JavaType;
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
    .line 177
    const/4 v0, 0x0

    return-object v0
.end method

.method public findDeserializationType(Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;Lcom/flurry/org/codehaus/jackson/type/JavaType;Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .param p1, "am"    # Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;
    .param p2, "t"    # Lcom/flurry/org/codehaus/jackson/type/JavaType;
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
    .line 182
    const/4 v0, 0x0

    return-object v0
.end method

.method public findDeserializer(Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Object;
    .locals 1
    .param p1, "am"    # Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;

    .prologue
    .line 186
    const/4 v0, 0x0

    return-object v0
.end method

.method public findEnumValue(Ljava/lang/Enum;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 45
    .local p1, "value":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public findGettablePropertyName(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;)Ljava/lang/String;
    .locals 1
    .param p1, "am"    # Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;

    .prologue
    .line 157
    const/4 v0, 0x0

    return-object v0
.end method

.method public findIgnoreUnknownProperties(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/Boolean;
    .locals 1
    .param p1, "ac"    # Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;

    .prologue
    .line 66
    const/4 v0, 0x0

    return-object v0
.end method

.method public findKeyDeserializer(Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Class;
    .locals 1
    .param p1, "am"    # Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;",
            ")",
            "Ljava/lang/Class",
            "<",
            "Lcom/flurry/org/codehaus/jackson/map/KeyDeserializer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 189
    const/4 v0, 0x0

    return-object v0
.end method

.method public findPropertiesToIgnore(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;)[Ljava/lang/String;
    .locals 1
    .param p1, "ac"    # Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;

    .prologue
    .line 61
    const/4 v0, 0x0

    return-object v0
.end method

.method public findPropertyNameForParam(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedParameter;)Ljava/lang/String;
    .locals 1
    .param p1, "param"    # Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedParameter;

    .prologue
    .line 197
    const/4 v0, 0x0

    return-object v0
.end method

.method public findRootName(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/String;
    .locals 1
    .param p1, "ac"    # Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;

    .prologue
    .line 56
    const/4 v0, 0x0

    return-object v0
.end method

.method public findSerializablePropertyName(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedField;)Ljava/lang/String;
    .locals 1
    .param p1, "af"    # Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedField;

    .prologue
    .line 202
    const/4 v0, 0x0

    return-object v0
.end method

.method public findSerializationPropertyOrder(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;)[Ljava/lang/String;
    .locals 1
    .param p1, "ac"    # Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;

    .prologue
    .line 141
    const/4 v0, 0x0

    return-object v0
.end method

.method public findSerializationSortAlphabetically(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/Boolean;
    .locals 1
    .param p1, "ac"    # Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;

    .prologue
    .line 146
    const/4 v0, 0x0

    return-object v0
.end method

.method public findSerializationType(Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Class;
    .locals 1
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
    .line 120
    const/4 v0, 0x0

    return-object v0
.end method

.method public findSerializationTyping(Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;)Lcom/flurry/org/codehaus/jackson/map/annotate/JsonSerialize$Typing;
    .locals 1
    .param p1, "a"    # Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;

    .prologue
    .line 125
    const/4 v0, 0x0

    return-object v0
.end method

.method public findSerializationViews(Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;)[Ljava/lang/Class;
    .locals 1
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
    .line 130
    const/4 v0, 0x0

    return-object v0
.end method

.method public findSerializer(Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Object;
    .locals 1
    .param p1, "am"    # Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;

    .prologue
    .line 115
    const/4 v0, 0x0

    return-object v0
.end method

.method public findSettablePropertyName(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;)Ljava/lang/String;
    .locals 1
    .param p1, "am"    # Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;

    .prologue
    .line 207
    const/4 v0, 0x0

    return-object v0
.end method

.method public hasAsValueAnnotation(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;)Z
    .locals 1
    .param p1, "am"    # Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;

    .prologue
    .line 162
    const/4 v0, 0x0

    return v0
.end method

.method public hasIgnoreMarker(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;)Z
    .locals 1
    .param p1, "member"    # Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;

    .prologue
    .line 77
    const/4 v0, 0x0

    return v0
.end method

.method public isHandled(Ljava/lang/annotation/Annotation;)Z
    .locals 1
    .param p1, "ann"    # Ljava/lang/annotation/Annotation;

    .prologue
    .line 34
    const/4 v0, 0x0

    return v0
.end method

.method public isIgnorableConstructor(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedConstructor;)Z
    .locals 1
    .param p1, "c"    # Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedConstructor;

    .prologue
    .line 88
    const/4 v0, 0x0

    return v0
.end method

.method public isIgnorableField(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedField;)Z
    .locals 1
    .param p1, "f"    # Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedField;

    .prologue
    .line 104
    const/4 v0, 0x0

    return v0
.end method

.method public isIgnorableMethod(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;)Z
    .locals 1
    .param p1, "m"    # Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;

    .prologue
    .line 93
    const/4 v0, 0x0

    return v0
.end method
