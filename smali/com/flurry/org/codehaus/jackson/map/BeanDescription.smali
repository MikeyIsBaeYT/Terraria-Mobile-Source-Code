.class public abstract Lcom/flurry/org/codehaus/jackson/map/BeanDescription;
.super Ljava/lang/Object;
.source "BeanDescription.java"


# instance fields
.field protected final _type:Lcom/flurry/org/codehaus/jackson/type/JavaType;


# direct methods
.method protected constructor <init>(Lcom/flurry/org/codehaus/jackson/type/JavaType;)V
    .locals 0
    .param p1, "type"    # Lcom/flurry/org/codehaus/jackson/type/JavaType;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/flurry/org/codehaus/jackson/map/BeanDescription;->_type:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    .line 47
    return-void
.end method


# virtual methods
.method public abstract bindingsForBeanType()Lcom/flurry/org/codehaus/jackson/map/type/TypeBindings;
.end method

.method public abstract findAnyGetter()Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;
.end method

.method public abstract findAnySetter()Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;
.end method

.method public abstract findDefaultConstructor()Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedConstructor;
.end method

.method public abstract findDeserializableFields(Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker;Ljava/util/Collection;)Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker",
            "<*>;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedField;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract findGetters(Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker;Ljava/util/Collection;)Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker",
            "<*>;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract findInjectables()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;",
            ">;"
        }
    .end annotation
.end method

.method public abstract findJsonValueMethod()Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;
.end method

.method public abstract findProperties()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/org/codehaus/jackson/map/BeanPropertyDefinition;",
            ">;"
        }
    .end annotation
.end method

.method public abstract findSerializableFields(Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker;Ljava/util/Collection;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker",
            "<*>;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedField;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract findSetters(Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker;)Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker",
            "<*>;)",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public getBeanClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 61
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/BeanDescription;->_type:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public abstract getClassAnnotations()Lcom/flurry/org/codehaus/jackson/map/util/Annotations;
.end method

.method public abstract getClassInfo()Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedClass;
.end method

.method public abstract getIgnoredPropertyNames()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public getType()Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/BeanDescription;->_type:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    return-object v0
.end method

.method public abstract hasKnownClassAnnotations()Z
.end method

.method public abstract resolveType(Ljava/lang/reflect/Type;)Lcom/flurry/org/codehaus/jackson/type/JavaType;
.end method
