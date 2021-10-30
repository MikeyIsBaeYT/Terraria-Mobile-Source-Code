.class public abstract Lcom/flurry/org/codehaus/jackson/map/ClassIntrospector;
.super Ljava/lang/Object;
.source "ClassIntrospector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/org/codehaus/jackson/map/ClassIntrospector$MixInResolver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/flurry/org/codehaus/jackson/map/BeanDescription;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 34
    .local p0, "this":Lcom/flurry/org/codehaus/jackson/map/ClassIntrospector;, "Lcom/flurry/org/codehaus/jackson/map/ClassIntrospector<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract forClassAnnotations(Lcom/flurry/org/codehaus/jackson/map/MapperConfig;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/ClassIntrospector$MixInResolver;)Lcom/flurry/org/codehaus/jackson/map/BeanDescription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/MapperConfig",
            "<*>;",
            "Lcom/flurry/org/codehaus/jackson/type/JavaType;",
            "Lcom/flurry/org/codehaus/jackson/map/ClassIntrospector$MixInResolver;",
            ")TT;"
        }
    .end annotation
.end method

.method public forClassAnnotations(Lcom/flurry/org/codehaus/jackson/map/MapperConfig;Ljava/lang/Class;Lcom/flurry/org/codehaus/jackson/map/ClassIntrospector$MixInResolver;)Lcom/flurry/org/codehaus/jackson/map/BeanDescription;
    .locals 1
    .param p3, "r"    # Lcom/flurry/org/codehaus/jackson/map/ClassIntrospector$MixInResolver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/MapperConfig",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/flurry/org/codehaus/jackson/map/ClassIntrospector$MixInResolver;",
            ")TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 99
    .local p0, "this":Lcom/flurry/org/codehaus/jackson/map/ClassIntrospector;, "Lcom/flurry/org/codehaus/jackson/map/ClassIntrospector<TT;>;"
    .local p1, "cfg":Lcom/flurry/org/codehaus/jackson/map/MapperConfig;, "Lcom/flurry/org/codehaus/jackson/map/MapperConfig<*>;"
    .local p2, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1, p2}, Lcom/flurry/org/codehaus/jackson/map/MapperConfig;->constructType(Ljava/lang/Class;)Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3}, Lcom/flurry/org/codehaus/jackson/map/ClassIntrospector;->forClassAnnotations(Lcom/flurry/org/codehaus/jackson/map/MapperConfig;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/ClassIntrospector$MixInResolver;)Lcom/flurry/org/codehaus/jackson/map/BeanDescription;

    move-result-object v0

    return-object v0
.end method

.method public abstract forCreation(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/ClassIntrospector$MixInResolver;)Lcom/flurry/org/codehaus/jackson/map/BeanDescription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;",
            "Lcom/flurry/org/codehaus/jackson/type/JavaType;",
            "Lcom/flurry/org/codehaus/jackson/map/ClassIntrospector$MixInResolver;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract forDeserialization(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/ClassIntrospector$MixInResolver;)Lcom/flurry/org/codehaus/jackson/map/BeanDescription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;",
            "Lcom/flurry/org/codehaus/jackson/type/JavaType;",
            "Lcom/flurry/org/codehaus/jackson/map/ClassIntrospector$MixInResolver;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract forDirectClassAnnotations(Lcom/flurry/org/codehaus/jackson/map/MapperConfig;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/ClassIntrospector$MixInResolver;)Lcom/flurry/org/codehaus/jackson/map/BeanDescription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/MapperConfig",
            "<*>;",
            "Lcom/flurry/org/codehaus/jackson/type/JavaType;",
            "Lcom/flurry/org/codehaus/jackson/map/ClassIntrospector$MixInResolver;",
            ")TT;"
        }
    .end annotation
.end method

.method public forDirectClassAnnotations(Lcom/flurry/org/codehaus/jackson/map/MapperConfig;Ljava/lang/Class;Lcom/flurry/org/codehaus/jackson/map/ClassIntrospector$MixInResolver;)Lcom/flurry/org/codehaus/jackson/map/BeanDescription;
    .locals 1
    .param p3, "r"    # Lcom/flurry/org/codehaus/jackson/map/ClassIntrospector$MixInResolver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/MapperConfig",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/flurry/org/codehaus/jackson/map/ClassIntrospector$MixInResolver;",
            ")TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 114
    .local p0, "this":Lcom/flurry/org/codehaus/jackson/map/ClassIntrospector;, "Lcom/flurry/org/codehaus/jackson/map/ClassIntrospector<TT;>;"
    .local p1, "cfg":Lcom/flurry/org/codehaus/jackson/map/MapperConfig;, "Lcom/flurry/org/codehaus/jackson/map/MapperConfig<*>;"
    .local p2, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1, p2}, Lcom/flurry/org/codehaus/jackson/map/MapperConfig;->constructType(Ljava/lang/Class;)Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3}, Lcom/flurry/org/codehaus/jackson/map/ClassIntrospector;->forDirectClassAnnotations(Lcom/flurry/org/codehaus/jackson/map/MapperConfig;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/ClassIntrospector$MixInResolver;)Lcom/flurry/org/codehaus/jackson/map/BeanDescription;

    move-result-object v0

    return-object v0
.end method

.method public abstract forSerialization(Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/ClassIntrospector$MixInResolver;)Lcom/flurry/org/codehaus/jackson/map/BeanDescription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;",
            "Lcom/flurry/org/codehaus/jackson/type/JavaType;",
            "Lcom/flurry/org/codehaus/jackson/map/ClassIntrospector$MixInResolver;",
            ")TT;"
        }
    .end annotation
.end method
