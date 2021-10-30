.class public abstract Lcom/flurry/org/codehaus/jackson/map/ser/impl/SimpleBeanPropertyFilter;
.super Ljava/lang/Object;
.source "SimpleBeanPropertyFilter.java"

# interfaces
.implements Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyFilter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/org/codehaus/jackson/map/ser/impl/SimpleBeanPropertyFilter$SerializeExceptFilter;,
        Lcom/flurry/org/codehaus/jackson/map/ser/impl/SimpleBeanPropertyFilter$FilterExceptFilter;
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static filterOutAllExcept(Ljava/util/Set;)Lcom/flurry/org/codehaus/jackson/map/ser/impl/SimpleBeanPropertyFilter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/flurry/org/codehaus/jackson/map/ser/impl/SimpleBeanPropertyFilter;"
        }
    .end annotation

    .prologue
    .line 31
    .local p0, "properties":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/ser/impl/SimpleBeanPropertyFilter$FilterExceptFilter;

    invoke-direct {v0, p0}, Lcom/flurry/org/codehaus/jackson/map/ser/impl/SimpleBeanPropertyFilter$FilterExceptFilter;-><init>(Ljava/util/Set;)V

    return-object v0
.end method

.method public static varargs filterOutAllExcept([Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/map/ser/impl/SimpleBeanPropertyFilter;
    .locals 2
    .param p0, "propertyArray"    # [Ljava/lang/String;

    .prologue
    .line 35
    new-instance v0, Ljava/util/HashSet;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 36
    .local v0, "properties":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-static {v0, p0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 37
    new-instance v1, Lcom/flurry/org/codehaus/jackson/map/ser/impl/SimpleBeanPropertyFilter$FilterExceptFilter;

    invoke-direct {v1, v0}, Lcom/flurry/org/codehaus/jackson/map/ser/impl/SimpleBeanPropertyFilter$FilterExceptFilter;-><init>(Ljava/util/Set;)V

    return-object v1
.end method

.method public static serializeAllExcept(Ljava/util/Set;)Lcom/flurry/org/codehaus/jackson/map/ser/impl/SimpleBeanPropertyFilter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/flurry/org/codehaus/jackson/map/ser/impl/SimpleBeanPropertyFilter;"
        }
    .end annotation

    .prologue
    .line 41
    .local p0, "properties":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/ser/impl/SimpleBeanPropertyFilter$SerializeExceptFilter;

    invoke-direct {v0, p0}, Lcom/flurry/org/codehaus/jackson/map/ser/impl/SimpleBeanPropertyFilter$SerializeExceptFilter;-><init>(Ljava/util/Set;)V

    return-object v0
.end method

.method public static varargs serializeAllExcept([Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/map/ser/impl/SimpleBeanPropertyFilter;
    .locals 2
    .param p0, "propertyArray"    # [Ljava/lang/String;

    .prologue
    .line 45
    new-instance v0, Ljava/util/HashSet;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 46
    .local v0, "properties":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-static {v0, p0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 47
    new-instance v1, Lcom/flurry/org/codehaus/jackson/map/ser/impl/SimpleBeanPropertyFilter$SerializeExceptFilter;

    invoke-direct {v1, v0}, Lcom/flurry/org/codehaus/jackson/map/ser/impl/SimpleBeanPropertyFilter$SerializeExceptFilter;-><init>(Ljava/util/Set;)V

    return-object v1
.end method
